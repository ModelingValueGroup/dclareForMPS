//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018 Modeling Value Group B.V. (http://modelingvalue.org)                                             ~
//                                                                                                                     ~
// Licensed under the GNU Lesser General Public License v3.0 (the "License"). You may not use this file except in      ~
// compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0  ~
// Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on ~
// an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the  ~
// specific language governing permissions and limitations under the License.                                          ~
//                                                                                                                     ~
// Contributors:                                                                                                       ~
//     Wim Bast, Carel Bast, Tom Brus, Arjan Kok, Ronald Krijgsheld                                                    ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.project.Project;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.TriConsumer;
import org.modelingvalue.transactions.Imperative;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Root;
import org.modelingvalue.transactions.Setable;
import org.modelingvalue.transactions.State;

import com.intellij.openapi.application.ApplicationManager;

import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.classloading.DeployListener;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.smodel.language.LanguageRegistry;

public class DClareMPS implements TriConsumer<State, State, Boolean>, DeployListener {

    public static final Setable<DClareMPS, Boolean>            TRACE         = Setable.of("TRACE", false);

    private static final ThreadLocal<Boolean>                  COMMITTING    = new ThreadLocal<Boolean>() {
                                                                                 @Override
                                                                                 protected Boolean initialValue() {
                                                                                     return false;
                                                                                 }

                                                                             };

    protected static final Observed<DClareMPS, Set<SLanguage>> ALL_LANGUAGES = Observed.of("ALL_LANGAUGES", Set.of(), (tx, o, b, a) -> {
                                                                                 Setable.<Set<SLanguage>, SLanguage> diff(Set.of(), b, a, x -> o.start(x), x -> {
                                                                                                                                                          });
                                                                             });

    protected static final Observed<SLanguage, Set<IRuleSet>>  RULE_SETS     = Observed.of("RULE_SETS", Set.of());

    protected static final Observed<DClareMPS, Set<DType>>     TYPES         = Observed.of("TYPES", Set.of(), (tx, o, b, a) -> {
                                                                                 Setable.<Set<DType>, DType> diff(Set.of(), b, a, x -> x.start(tx.root()), x -> x.stop(tx.root()));
                                                                             });

    protected final Thread                                     waitForEndThread;
    protected final Root                                       root;
    protected final Project                                    project;
    protected final ClassLoaderManager                         classLoaderManager;

    private DRepository                                        repository;
    private Imperative                                         imperative;

    public DClareMPS(Project project) {
        this.project = project;
        classLoaderManager = ApplicationManager.getApplication().getComponent(MPSCoreComponents.class).getClassLoaderManager();
        classLoaderManager.addListener(this);
        root = Root.of(this, 100);
        waitForEndThread = new Thread(() -> root.waitForEnd());
        waitForEndThread.setDaemon(true);
        waitForEndThread.start();
        root.put("init", () -> {
            imperative = root.addIntegration("MPSNative", this, r -> {
                if (imperative != null && !COMMITTING.get()) {
                    project.getModelAccess().executeCommandInEDT(r);
                }
            });
            repository = DRepository.of(DClareMPS.this, project.getRepository());
        });
    }

    @Override
    public int hashCode() {
        return project.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof DClareMPS && project.equals(((DClareMPS) obj).project);
    }

    public void schedule(Runnable action) {
        if (imperative != null) {
            imperative.schedule(action);
        }
    }

    @SuppressWarnings("unchecked")
    public <R> R run(Supplier<R> supplier) {
        BlockingQueue<Supplier<R>> wait = new LinkedBlockingQueue<>(1);
        schedule(() -> {
            try {
                Object[] r = new Object[1];
                try {
                    r[0] = supplier.get();
                } finally {
                    wait.put(() -> (R) r[0]);
                }
            } catch (InterruptedException e) {
                throw new Error(e);
            }
        });
        try {
            return wait.take().get();
        } catch (InterruptedException e) {
            throw new Error(e);
        }
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    private final Map<Pair<DObject, DObserved>, Pair<Object, Object>>[] deferred = new Map[]{Map.of()};

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public void accept(State pre, State post, Boolean last) {
        if (imperative != null) {
            COMMITTING.set(true);
            try {
                pre.diff(post, o -> o instanceof DObject, p -> p instanceof DObserved).forEach(e0 -> {
                    DObject dObject = (DObject) e0.getKey();
                    e0.getValue().forEach(e1 -> {
                        DObserved mpsObserved = (DObserved) e1.getKey();
                        if (mpsObserved.isDeferred()) {
                            Pair<DObject, DObserved> slot = Pair.of(dObject, mpsObserved);
                            Pair<Object, Object> old = deferred[0].get(slot);
                            deferred[0] = deferred[0].put(slot, old != null ? Pair.of(old.a(), e1.getValue().b()) : Pair.of(e1.getValue().a(), e1.getValue().b()));
                        } else {
                            mpsObserved.toMPS(dObject, e1.getValue().a(), e1.getValue().b());
                        }
                    });
                });
                if (last) {
                    deferred[0].forEach(e -> e.getKey().b().toMPS(e.getKey().a(), e.getValue().a(), e.getValue().b()));
                    deferred[0] = Map.of();
                }
            } finally {
                COMMITTING.set(false);
            }
        }
    }

    public void start() {
        System.err.println("DCLARE START");
        root.put("startDclareMPS", () -> repository.activate(null, root));
    }

    public void stop() {
        System.err.println("DCLARE STOP");
        imperative = null;
        root.put("stopDclareMPS", () -> repository.stop());
        root.stop();
        root.waitForEnd();
    }

    private void start(SLanguage language) {
        LanguageRegistry registry = LanguageRegistry.getInstance(repository.original());
        IRuleAspect aspect = registry.getLanguage(language).getAspect(IRuleAspect.class);
        RULE_SETS.set(language, aspect != null ? Collection.of(aspect.getRuleSets()).toSet() : Set.of());
    }

    @Override
    public void onLoaded(java.util.Set<ReloadableModule> arg0, ProgressMonitor arg1) {
        schedule(() -> {
            LanguageRegistry registry = LanguageRegistry.getInstance(repository.original());
            for (SLanguage language : ALL_LANGUAGES.get(this)) {
                IRuleAspect aspect = registry.getLanguage(language).getAspect(IRuleAspect.class);
                RULE_SETS.set(language, aspect != null ? Collection.of(aspect.getRuleSets()).toSet() : Set.of());
            }
        });
    }

    @Override
    public void onUnloaded(java.util.Set<ReloadableModule> arg0, ProgressMonitor arg1) {
    }

    public void setTrace(boolean trace) {
        schedule(() -> TRACE.set(this, trace));
    }
}
