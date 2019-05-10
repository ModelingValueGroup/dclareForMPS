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
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Entry;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Concurrent;
import org.modelingvalue.collections.util.ContextThread;
import org.modelingvalue.collections.util.ContextThread.ContextPool;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.TriConsumer;
import org.modelingvalue.dclare.mps.DRule.DObserverTransaction;
import org.modelingvalue.dclare.mps.NonCheckingObserver.NonCheckingTransaction;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.ImperativeTransaction;
import org.modelingvalue.transactions.LeafTransaction;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Priority;
import org.modelingvalue.transactions.Setable;
import org.modelingvalue.transactions.State;
import org.modelingvalue.transactions.TransactionList;
import org.modelingvalue.transactions.Universe;
import org.modelingvalue.transactions.UniverseTransaction;

import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.language.LanguageRuntime;

public class DClareMPS implements TriConsumer<State, State, Boolean>, Universe {

    protected static final boolean                                                              TRACE         = Boolean.getBoolean("DCLARE_TRACE");

    protected static final String                                                               DCLARE        = "---------> DCLARE ";

    private final ThreadLocal<Boolean>                                                          COMMITTING    = new ThreadLocal<Boolean>() {
                                                                                                                  @Override
                                                                                                                  protected Boolean initialValue() {
                                                                                                                      return false;
                                                                                                                  }

                                                                                                              };

    public final static Observed<DClareMPS, Set<SLanguage>>                                     ALL_LANGUAGES = Observed.of("ALL_LANGAUGES", Set.of());

    public final static Constant<SLanguage, Set<IRuleSet>>                                      RULE_SETS     = Constant.of("RULE_SETS", Set.of(), language -> {
                                                                                                                  LanguageRuntime rtLang = registry().getLanguage(language);
                                                                                                                  IRuleAspect aspect = rtLang != null ? rtLang.getAspect(IRuleAspect.class) : null;
                                                                                                                  return aspect != null ? Collection.of(aspect.getRuleSets()).toSet() : Set.of();
                                                                                                              });

    private final static Constant<DClareMPS, DRepository>                                       REPOSITORY    = Constant.of("REPOSITORY", true, d -> DRepository.of(d.project.getRepository()));

    private final ContextPool                                                                   thePool       = ContextThread.createPool();
    protected final Thread                                                                      waitForEndThread;
    protected final UniverseTransaction                                                         universeTransaction;
    protected final Project                                                                     project;
    private final StartStopHandler                                                              startStopHandler;
    private ImperativeTransaction                                                               imperativeTransaction;
    private boolean                                                                             running;
    protected final Concurrent<TransactionList<DRule.DObserver<?>, DObserverTransaction>>       dObserverTransactions;
    protected final Concurrent<TransactionList<NonCheckingObserver<?>, NonCheckingTransaction>> nonCheckingTransactions;

    protected DClareMPS(Project project, State prevState, int maxTotalNrOfChanges, int maxNrOfChanges, int maxNrOfObserved, int maxNrOfObservers, StartStopHandler startStopHandler) {
        this.project = project;
        this.startStopHandler = startStopHandler;
        if (TRACE) {
            System.err.println(DCLARE + "START " + this);
        }
        universeTransaction = new UniverseTransaction(this, thePool, prevState, 100, maxTotalNrOfChanges, maxNrOfChanges, maxNrOfObserved, maxNrOfObservers, 4, null) {

            @Override
            public void startOpposite() {
                if (TRACE) {
                    System.err.println(DCLARE + "START OPPOSITE " + this);
                }
            }

            @Override
            public void startPriority(Priority prio) {
                if (TRACE) {
                    System.err.println(DCLARE + "START PRIORITY " + prio + "  " + this);
                }
            }

            @Override
            public void endPriority(Priority prio) {
                if (TRACE) {
                    System.err.println(DCLARE + "END PRIORITY   " + prio + "  " + this);
                }
            }

        };
        this.dObserverTransactions = Concurrent.of(() -> new TransactionList<>(universeTransaction));
        this.nonCheckingTransactions = Concurrent.of(() -> new TransactionList<>(universeTransaction));
        waitForEndThread = new Thread(() -> {
            State result = universeTransaction.emptyState();
            try {
                result = universeTransaction.waitForEnd();
                thePool.shutdownNow();
            } catch (Throwable t) {
                stop();
                thePool.shutdownNow();
                throw t;
            } finally {
                if (TRACE) {
                    System.err.println(DCLARE + "END   " + this);
                    for (@SuppressWarnings("rawtypes")
                    Entry<Setable, Integer> e : result.count()) {
                        System.err.println(DCLARE + "COUNT " + e.getKey() + " = " + e.getValue());
                    }
                }
            }
        });
        waitForEndThread.setDaemon(true);
        waitForEndThread.start();
        universeTransaction.put("activate", () -> {
            if (TRACE) {
                System.err.println(DCLARE + "ACTIVATE " + this);
            }
            getRepository().setActive();
        });
    }

    @Override
    public void init() {
        imperativeTransaction = universeTransaction.addIntegration("MPSNative", this, r -> {
            if (imperativeTransaction != null && !COMMITTING.get()) {
                if (!running) {
                    running = true;
                    command(() -> startStopHandler.start(project));
                }
                command(r);
            }
        });
        if (TRACE) {
            System.err.println(DCLARE + "INIT " + this);
        }
        getRepository();
        Universe.super.init();
    }

    @Override
    public int hashCode() {
        return project.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof DClareMPS && project.equals(((DClareMPS) obj).project);
    }

    public void handleMPSChange(Runnable action) {
        if (imperativeTransaction != null) {
            imperativeTransaction.schedule(action);
        } else {
            universeTransaction.put(action, () -> {
                if (imperativeTransaction != null) {
                    imperativeTransaction.schedule(action);
                } else {
                    read(action);
                }
            }, Priority.preDepth);
        }
    }

    public void command(Runnable runnable) {
        project.getModelAccess().executeCommandInEDT(runnable);
    }

    public void read(Runnable runnable) {
        project.getModelAccess().runReadAction(runnable);
    }

    public void write(Runnable runnable) {
        project.getModelAccess().runWriteAction(runnable);
    }

    @SuppressWarnings("unchecked")
    public <R> R command(Supplier<R> supplier) {
        BlockingQueue<Object> queue = new LinkedBlockingQueue<>(1);
        project.getModelAccess().executeCommandInEDT(() -> {
            try {
                try {
                    queue.put(supplier.get());
                } catch (InterruptedException e) {
                    throw e;
                } catch (Throwable t) {
                    queue.put(t);
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        });
        try {
            Object result = queue.take();
            if (result instanceof Throwable) {
                throw new Error((Throwable) result);
            } else {
                return (R) result;
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    @SuppressWarnings("unchecked")
    public <R> R read(Supplier<R> supplier) {
        R[] result = (R[]) new Object[1];
        project.getModelAccess().runReadAction(() -> result[0] = supplier.get());
        return result[0];
    }

    @SuppressWarnings("unchecked")
    public <R> R write(Supplier<R> supplier) {
        R[] result = (R[]) new Object[1];
        project.getModelAccess().runWriteAction(() -> result[0] = supplier.get());
        return result[0];
    }

    public static DClareMPS instance() {
        return (DClareMPS) LeafTransaction.getCurrent().universeTransaction().mutable();
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    private final Map<Pair<DObject, DObserved>, Pair<Object, Object>>[] deferred = new Map[]{Map.of()};

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public void accept(State pre, State post, Boolean last) {
        if (imperativeTransaction != null) {
            if (TRACE) {
                System.err.println(DCLARE + "START COMMIT " + this);
            }
            COMMITTING.set(true);
            try {
                pre.diff(post, o -> o instanceof DObject, p -> p instanceof DObserved).forEach(e0 -> {
                    DObject dObject = (DObject) e0.getKey();
                    e0.getValue().forEach(e1 -> {
                        DObserved mpsObserved = (DObserved) e1.getKey();
                        if (!mpsObserved.isDeferred()) {
                            mpsObserved.toMPS(dObject, e1.getValue().a(), e1.getValue().b(), true);
                        }
                    });
                });
                pre.diff(post, o -> o instanceof DObject, p -> p instanceof DObserved).forEach(e0 -> {
                    DObject dObject = (DObject) e0.getKey();
                    e0.getValue().forEach(e1 -> {
                        DObserved mpsObserved = (DObserved) e1.getKey();
                        if (mpsObserved.isDeferred()) {
                            Pair<DObject, DObserved> slot = Pair.of(dObject, mpsObserved);
                            Pair<Object, Object> old = deferred[0].get(slot);
                            deferred[0] = deferred[0].put(slot, old != null ? Pair.of(old.a(), e1.getValue().b()) : Pair.of(e1.getValue().a(), e1.getValue().b()));
                        } else {
                            mpsObserved.toMPS(dObject, e1.getValue().a(), e1.getValue().b(), false);
                        }
                    });
                });
                if (last) {
                    deferred[0].forEach(e -> e.getKey().b().toMPS(e.getKey().a(), e.getValue().a(), e.getValue().b(), true));
                    deferred[0].forEach(e -> e.getKey().b().toMPS(e.getKey().a(), e.getValue().a(), e.getValue().b(), false));
                    deferred[0] = Map.of();
                    running = false;
                    startStopHandler.stop(project, new Getter() {
                        @Override
                        public <R> R get(Supplier<R> supplier) {
                            return post.get(supplier);
                        }
                    }, getRepository());
                }
            } finally {
                COMMITTING.set(false);
                if (TRACE) {
                    System.err.println(DCLARE + "END COMMIT " + this);
                }
            }
        }
    }

    public void stop() {
        if (imperativeTransaction != null) {
            imperativeTransaction.stop();
            imperativeTransaction = null;
            universeTransaction.kill();
            universeTransaction.preState().run(() -> getRepository().stop(this));
        }
    }

    public DRepository getRepository() {
        return REPOSITORY.get(this);
    }

    public boolean isRunning() {
        return imperativeTransaction != null;
    }

    private static LanguageRegistry registry() {
        return LanguageRegistry.getInstance(instance().getRepository().original());
    }

    public static <T> T pre(Supplier<T> supplier) {
        DRule.EMPTY_ATTRIBUTE.set(true);
        return LeafTransaction.getCurrent().universeTransaction().preState().get(supplier);
    }

    public UniverseTransaction universeTransaction() {
        return universeTransaction;
    }

    @Override
    public Collection<? extends Observer<?>> dObservers() {
        return Collection.of();
    }

}
