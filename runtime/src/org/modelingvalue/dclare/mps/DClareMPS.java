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
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.project.Project;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.TriConsumer;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.Getable;
import org.modelingvalue.transactions.Imperative;
import org.modelingvalue.transactions.Leaf;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Root;
import org.modelingvalue.transactions.Setable;
import org.modelingvalue.transactions.State;

import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.language.LanguageRuntime;

public class DClareMPS implements TriConsumer<State, State, Boolean> {

    static final Setable<DClareMPS, Boolean>                   TRACE         = Setable.of("TRACE", false);

    private final ThreadLocal<Boolean>                         COMMITTING    = new ThreadLocal<Boolean>() {
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

    public final Getable<SClassObject, DClassObject>           DCLASS_OBJECT = Constant.of(Pair.of(this, "DCLASS_OBJECT"), c -> new DClassObject(this, c));

    public final Getable<SRepository, DRepository>             DREPOSITORY   = Constant.of(Pair.of(this, "DREPOSITORY"), r -> new DRepository(this, r));
    public final Getable<SModule, DModule>                     DMODULE       = Constant.of(Pair.of(this, "DMODULE"), m -> new DModule(this, m));
    public final Getable<SModel, DModel>                       DMODEL        = Constant.of(Pair.of(this, "DMODEL"), m -> new DModel(this, m));
    public final Getable<SNode, DNode>                         DNODE         = Constant.of(Pair.of(this, "DNODE"), n -> new DNode(this, n));

    protected final Thread                                     waitForEndThread;
    protected final Root                                       root;
    protected final Project                                    project;
    private DRepository                                        repository;
    private Imperative                                         imperative;

    protected DClareMPS(Project project, int maxTotalNrOfChanges, int maxNrOfChanges) {
        this.project = project;
        root = Root.of(this, 100, maxTotalNrOfChanges, maxNrOfChanges, 10);
        waitForEndThread = new Thread(() -> {
            try {
                root.waitForEnd();
            } catch (Throwable t) {
                t.printStackTrace();
                throw t;
            } finally {
                stop();
            }
        });
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

    public static <T> T get(Supplier<T> supplier) {
        return ((DClareMPS) Leaf.getCurrent().root().getId()).run(supplier);
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
        if (imperative == null) {
            System.err.println("DCLARE START " + project.getName());
            root.put("startDclareMPS", () -> repository.activate(null, root));
        }
    }

    public void stop() {
        if (imperative != null) {
            System.err.println("DCLARE STOP " + project.getName());
            imperative = null;
            root.put("stopDclareMPS", () -> repository.stop());
            root.stop();
        }
    }

    public boolean isRunning() {
        return imperative != null;
    }

    private void start(SLanguage language) {
        LanguageRegistry registry = LanguageRegistry.getInstance(repository.original());
        LanguageRuntime rtLang = registry.getLanguage(language);
        IRuleAspect aspect = rtLang != null ? rtLang.getAspect(IRuleAspect.class) : null;
        RULE_SETS.set(language, aspect != null ? Collection.of(aspect.getRuleSets()).toSet() : Set.of());
    }

    public void onLoaded() {
        schedule(() -> {
            LanguageRegistry registry = LanguageRegistry.getInstance(repository.original());
            for (SLanguage language : ALL_LANGUAGES.get(this)) {
                LanguageRuntime rtLang = registry.getLanguage(language);
                IRuleAspect aspect = rtLang != null ? rtLang.getAspect(IRuleAspect.class) : null;
                RULE_SETS.set(language, aspect != null ? Collection.of(aspect.getRuleSets()).toSet() : Set.of());
            }
        });
    }

    public void setTrace(boolean trace) {
        schedule(() -> TRACE.set(this, trace));
    }
}
