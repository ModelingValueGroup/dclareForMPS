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

import javax.swing.SwingUtilities;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.project.Project;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.DefaultMap;
import org.modelingvalue.collections.Entry;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.QualifiedSet;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Concurrent;
import org.modelingvalue.collections.util.ContextThread;
import org.modelingvalue.collections.util.ContextThread.ContextPool;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.TriConsumer;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.dclare.mps.DRule.DObserver;
import org.modelingvalue.dclare.mps.DRule.DObserverTransaction;
import org.modelingvalue.dclare.mps.NonCheckingObserver.NonCheckingTransaction;
import org.modelingvalue.transactions.Action;
import org.modelingvalue.transactions.ConsistencyError;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.EmptyMandatoryException;
import org.modelingvalue.transactions.ImperativeTransaction;
import org.modelingvalue.transactions.LeafTransaction;
import org.modelingvalue.transactions.Mutable;
import org.modelingvalue.transactions.MutableClass;
import org.modelingvalue.transactions.NonDeterministicException;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.OutOfScopeException;
import org.modelingvalue.transactions.Priority;
import org.modelingvalue.transactions.ReferencedOrphanException;
import org.modelingvalue.transactions.ReusableTransaction;
import org.modelingvalue.transactions.Setable;
import org.modelingvalue.transactions.State;
import org.modelingvalue.transactions.ThrowableError;
import org.modelingvalue.transactions.TooManyChangesException;
import org.modelingvalue.transactions.TooManyObservedException;
import org.modelingvalue.transactions.TooManyObserversException;
import org.modelingvalue.transactions.TransactionException;
import org.modelingvalue.transactions.Universe;
import org.modelingvalue.transactions.UniverseTransaction;

import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.language.LanguageRuntime;

public class DClareMPS implements TriConsumer<State, State, Boolean>, Universe {

    private static final Set<DMessageType>                                                                    MESSAGE_TYPES        = Collection.of(DMessageType.values()).toSet();

    private static final QualifiedSet<Triple<DObject<?>, DFeature<?>, String>, DMessage>                      MESSAGE_QSET         = QualifiedSet.of(m -> Triple.of(m.context(), m.feature(), m.id()));

    protected static final Map<DMessageType, QualifiedSet<Triple<DObject<?>, DFeature<?>, String>, DMessage>> MESSAGE_QSET_MAP     = MESSAGE_TYPES.sequential().toMap(t -> Entry.of(t, MESSAGE_QSET));

    private static final MutableClass                                                                         UNIVERSE_CLASS       = new MutableClass() {
                                                                                                                                       @Override
                                                                                                                                       public Collection<? extends Observer<?>> dObservers() {
                                                                                                                                           return Collection.of();
                                                                                                                                       }

                                                                                                                                       @Override
                                                                                                                                       public Collection<? extends Setable<? extends Mutable, ?>> dContainers() {
                                                                                                                                           return Collection.of(REPOSITORY_CONTAINER);
                                                                                                                                       }

                                                                                                                                       @Override
                                                                                                                                       public Collection<? extends Constant<? extends Mutable, ?>> dConstants() {
                                                                                                                                           return Collection.of();
                                                                                                                                       }

                                                                                                                                       @Override
                                                                                                                                       public Collection<? extends Setable<? extends Mutable, ?>> dSetables() {
                                                                                                                                           return Collection.of();
                                                                                                                                       }
                                                                                                                                   };

    protected static final boolean                                                                            TRACE                = Boolean.getBoolean("DCLARE_TRACE");

    protected static final String                                                                             DCLARE               = "---------> DCLARE ";

    private final ThreadLocal<Boolean>                                                                        COMMITTING           = new ThreadLocal<Boolean>() {
                                                                                                                                       @Override
                                                                                                                                       protected Boolean initialValue() {
                                                                                                                                           return false;
                                                                                                                                       }

                                                                                                                                   };

    public final static Observed<DClareMPS, Set<SLanguage>>                                                   ALL_LANGUAGES        = NonCheckingObserved.of("ALL_LANGAUGES", Set.of());

    public final static Constant<SLanguage, Set<IRuleSet>>                                                    RULE_SETS            = Constant.of("RULE_SETS", Set.of(), language -> {
                                                                                                                                       LanguageRuntime rtLang = registry().getLanguage(language);
                                                                                                                                       IRuleAspect aspect = rtLang != null ? rtLang.getAspect(IRuleAspect.class) : null;
                                                                                                                                       return aspect != null ? Collection.of(aspect.getRuleSets()).toSet() : Set.of();
                                                                                                                                   });

    private final static Setable<DClareMPS, DRepository>                                                      REPOSITORY_CONTAINER = Setable.of("REPOSITORY_CONTAINER", null, true);

    private final ContextPool                                                                                 thePool              = ContextThread.createPool();
    protected final Thread                                                                                    waitForEndThread;
    private final UniverseTransaction                                                                         universeTransaction;
    protected final Project                                                                                   project;
    private final StartStopHandler                                                                            startStopHandler;
    private ImperativeTransaction                                                                             imperativeTransaction;
    private boolean                                                                                           running;
    protected final Concurrent<ReusableTransaction<DRule.DObserver<?>, DObserverTransaction>>                 dObserverTransactions;
    protected final Concurrent<ReusableTransaction<NonCheckingObserver<?>, NonCheckingTransaction>>           nonCheckingTransactions;
    protected Map<DMessageType, QualifiedSet<Triple<DObject<?>, DFeature<?>, String>, DMessage>>              messages             = MESSAGE_QSET_MAP;
    private final DclareForMPSEngine                                                                          engine;
    private final DRepository                                                                                 dRepository;

    protected DClareMPS(DclareForMPSEngine engine, Project project, State prevState, int maxTotalNrOfChanges, int maxNrOfChanges, int maxNrOfObserved, int maxNrOfObservers, StartStopHandler startStopHandler) {
        this.project = project;
        this.engine = engine;
        this.startStopHandler = startStopHandler;
        this.dRepository = new DRepository(project.getRepository());
        if (TRACE) {
            System.err.println(DCLARE + "START " + this);
        }
        universeTransaction = new UniverseTransaction(this, thePool, prevState, 100, maxTotalNrOfChanges, maxNrOfChanges, maxNrOfObserved, maxNrOfObservers, 4, null) {

            @Override
            public void startOpposite() {
                if (TRACE) {
                    System.err.println(DCLARE + "    START OPPOSITE " + this);
                }
            }

            @Override
            public void startPriority(Priority prio) {
                if (TRACE) {
                    System.err.println(DCLARE + "    START PRIORITY " + prio + "  " + this);
                }
            }

            @Override
            public void endPriority(Priority prio) {
                if (TRACE) {
                    System.err.println(DCLARE + "    END PRIORITY   " + prio + "  " + this);
                }
            }

            @Override
            public void start(Action<Universe> action) {
                if (TRACE) {
                    System.err.println(DCLARE + "START ACTION " + action + "  " + this);
                }
            }

            @Override
            public void end(Action<Universe> action) {
                if (TRACE) {
                    System.err.println(DCLARE + "END ACTION   " + action + "  " + this);
                }
            }

            @Override
            protected void handleException(Throwable t) {
                addMessage(t);
            }

            @Override
            protected void clearOrphans(Universe universe) {
                if (imperativeTransaction != null) {
                    super.clearOrphans(universe);
                }
            }

            @Override
            protected void checkConsistency(State pre, State post) {
                if (imperativeTransaction != null) {
                    super.checkConsistency(pre, post);
                }
            }

            @SuppressWarnings("rawtypes")
            @Override
            protected void checkOrphanState(Entry<Object, Pair<DefaultMap<Setable, Object>, DefaultMap<Setable, Object>>> e0) {
            }

        };
        this.dObserverTransactions = Concurrent.of(() -> new ReusableTransaction<>(universeTransaction));
        this.nonCheckingTransactions = Concurrent.of(() -> new ReusableTransaction<>(universeTransaction));
        waitForEndThread = new Thread(() -> {
            State result = universeTransaction.emptyState();
            try {
                result = universeTransaction.waitForEnd();
                thePool.shutdownNow();
            } catch (Throwable t) {
                engine.stopEngine();
                thePool.shutdownNow();
                throw t;
            } finally {
                if (TRACE) {
                    System.err.println(DCLARE + "END   " + this);
                    for (@SuppressWarnings("rawtypes")
                    Entry<Setable, Integer> e : result.count()) {
                        System.err.println(DCLARE + "    COUNT " + e.getKey() + " = " + e.getValue());
                    }
                }
            }
        });
        waitForEndThread.setDaemon(true);
        waitForEndThread.start();
    }

    @Override
    public void init() {
        Universe.super.init();
        imperativeTransaction = universeTransaction.addImperative("$MPS_NATIVE", this, r -> {
            if (imperativeTransaction != null && !COMMITTING.get()) {
                if (!running) {
                    running = true;
                    command(() -> this.startStopHandler.start(project));
                }
                command(r);
            }
        });
        REPOSITORY_CONTAINER.set(this, getRepository());
    }

    @SuppressWarnings("rawtypes")
    protected void addMessage(Throwable throwable) {
        universeTransaction().currentState().run(() -> {
            DObject object = getRepository();
            DFeature feature = DRepository.EXCEPTIONS;
            Throwable t = throwable;
            while (t instanceof TransactionException) {
                if (((TransactionException) t).getTransactionClass() instanceof DObserver) {
                    feature = ((DObserver) ((TransactionException) t).getTransactionClass()).rule();
                }
                if (((TransactionException) t).getTransactionClass() instanceof DObject) {
                    object = (DObject) ((TransactionException) t).getTransactionClass();
                }
                t = t.getCause();
            }
            if (t instanceof ConsistencyError) {
                addMessage((ConsistencyError) t);
            } else {
                addThrowableMessage(object, feature, t);
            }
        });
        engine.stopEngine();
    }

    @SuppressWarnings("rawtypes")
    private void addMessage(ConsistencyError t) {
        DObject object = t.getObject() instanceof DObject ? (DObject) t.getObject() : getRepository();
        DFeature feature = t.getFeature() instanceof DRule.DObserver ? ((DRule.DObserver) t.getFeature()).rule() : //
                t.getFeature() instanceof DFeature ? (DFeature) t.getFeature() : DRepository.EXCEPTIONS;
        if (t instanceof OutOfScopeException) {
            addOutOfScopeExceptionMessage(object, feature, (OutOfScopeException) t);
        } else if (t instanceof NonDeterministicException) {
            addNonDeterministicExceptionMessage(object, feature, (NonDeterministicException) t);
        } else if (t instanceof EmptyMandatoryException) {
            addEmptyMandatoryExceptionMessage(object, feature, (EmptyMandatoryException) t);
        } else if (t instanceof ReferencedOrphanException) {
            addReferencedOrphanExceptionMessage(object, feature, (ReferencedOrphanException) t);
        } else if (t instanceof TooManyChangesException) {
            addTooManyChangesExceptionMessage(object, feature, (TooManyChangesException) t);
        } else if (t instanceof TooManyObservedException) {
            addTooManyObservedExceptionMessage(object, feature, (TooManyObservedException) t);
        } else if (t instanceof TooManyObserversException) {
            addTooManyObserversExceptionMessage(object, feature, (TooManyObserversException) t);
        } else if (t instanceof ThrowableError) {
            addThrowableMessage(object, feature, t.getCause());
        } else {
            addThrowableMessage(object, feature, t);
        }
    }

    @SuppressWarnings("rawtypes")
    private void addTooManyChangesExceptionMessage(DObject context, DFeature feature, TooManyChangesException tmce) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "TOO_MANY_CHANGES", "Too many changes, running " + feature + " changes=" + tmce.getNrOfChanges());
        tmce.getLast().trace(message, (m, r) -> {
            m.addSubMessage(new DMessage((DObject) r.mutable(), ((DRule.DObserver) r.observer()).rule(), DMessageType.error, " ", //
                    "run: " + r.mutable() + "." + ((DRule.DObserver) r.observer()).rule() + " nr: " + r.nrOfChanges()));
        }, (m, r, s) -> {
            m.addSubMessage(new DMessage((DObject) s.mutable(), (DObserved) s.observed(), DMessageType.error, " ", //
                    "read: " + s.mutable() + "." + s.observed() + "=" + r.read().get(s)));
        }, (m, w, s) -> {
            m.subMessages().last().addSubMessage(new DMessage((DObject) s.mutable(), (DObserved) s.observed(), DMessageType.error, " ", //
                    "write: " + s.mutable() + "." + s.observed() + "=" + w.written().get(s)));
        }, m -> m.subMessages().last(), tmce.getState().universeTransaction().maxNrOfChanges());
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private void addTooManyObservedExceptionMessage(DObject context, DFeature feature, TooManyObservedException tmse) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "TOO_MANY_OBSERVED", tmse.getSimpleMessage());
        for (Entry<Observed, Set<Mutable>> e : tmse.getObserved()) {
            if (e.getKey() instanceof DObserved) {
                DObserved observed = (DObserved) e.getKey();
                for (Mutable o : e.getValue()) {
                    if (o.resolve(context) instanceof DObject) {
                        message.addSubMessage(new DMessage((DObject) o.resolve(context), observed, DMessageType.error, " ", "Observed: " + observed));
                    }
                }
            }
        }
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private void addTooManyObserversExceptionMessage(DObject context, DFeature feature, TooManyObserversException tmse) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "TOO_MANY_OBSERVERS", tmse.getSimpleMessage());
        for (Entry<Observer, Set<Mutable>> e : tmse.getObservers()) {
            if (e.getKey() instanceof DRule.DObserver) {
                DRule rule = ((DRule.DObserver) e.getKey()).rule();
                for (Mutable o : e.getValue()) {
                    if (o.resolve(context) instanceof DObject) {
                        message.addSubMessage(new DMessage((DObject) o.resolve(context), rule, DMessageType.error, " ", "Rule: " + rule));
                    }
                }
            }
        }
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private void addReferencedOrphanExceptionMessage(DObject context, DFeature feature, ReferencedOrphanException roe) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "REFERENCED_ORPHAN", roe.getMessage());
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private void addEmptyMandatoryExceptionMessage(DObject context, DFeature feature, EmptyMandatoryException eme) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "EMPTY_MANDATORY", eme.getMessage());
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private void addNonDeterministicExceptionMessage(DObject context, DFeature feature, NonDeterministicException nde) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "NON_DETERMINISTIC", nde.getMessage());
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private void addOutOfScopeExceptionMessage(DObject context, DFeature feature, OutOfScopeException oose) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "OUT_OF_SCOPE", oose.getMessage());
        addMessage(message);
    }

    private @SuppressWarnings("rawtypes") void addThrowableMessage(DObject context, DFeature feature, Throwable t) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "EXCEPTION", t);
        for (StackTraceElement ste : t.getStackTrace()) {
            message.addSubMessage(new DMessage(context, feature, DMessageType.error, " ", ste));
        }
        addMessage(message);
    }

    private void addMessage(DMessage message) {
        messages = messages.put(message.type(), messages.get(message.type()).add(message));
    }

    public QualifiedSet<Triple<DObject<?>, DFeature<?>, String>, DMessage> getMessages(DMessageType type) {
        return messages.get(type);
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

    public void invokeLater(Runnable runnable) {
        SwingUtilities.invokeLater(runnable);
    }

    public void command(Runnable runnable) {
        project.getModelAccess().executeCommandInEDT(() -> {
            try {
                runnable.run();
            } catch (Throwable t) {
                addMessage(t);
            }
        });
    }

    public void read(Runnable runnable) {
        project.getModelAccess().runReadAction(() -> {
            try {
                runnable.run();
            } catch (Throwable t) {
                addMessage(t);
            }
        });
    }

    public void write(Runnable runnable) {
        project.getModelAccess().runWriteAction(() -> {
            try {
                runnable.run();
            } catch (Throwable t) {
                addMessage(t);
            }
        });
    }

    @SuppressWarnings("unchecked")
    public <R> R command(Supplier<R> supplier) {
        BlockingQueue<Object> queue = new LinkedBlockingQueue<>(1);
        command(() -> {
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
        read(() -> {
            result[0] = supplier.get();
        });
        return result[0];
    }

    @SuppressWarnings("unchecked")
    public <R> R write(Supplier<R> supplier) {
        R[] result = (R[]) new Object[1];
        write(() -> {
            result[0] = supplier.get();
        });
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
                System.err.println(DCLARE + "    START COMMIT " + this);
            }
            COMMITTING.set(true);
            try {
                pre.diff(post, o -> o instanceof DObject && post.get((DObject) o, Mutable.D_PARENT_CONTAINING) != null, p -> p instanceof DObserved).forEach(e0 -> {
                    DObject dObject = (DObject) e0.getKey();
                    e0.getValue().forEach(e1 -> {
                        DObserved mpsObserved = (DObserved) e1.getKey();
                        if (!mpsObserved.isDeferred()) {
                            mpsObserved.toMPS(post, dObject, e1.getValue().a(), e1.getValue().b(), true);
                        }
                    });
                });
                pre.diff(post, o -> o instanceof DObject && post.get((DObject) o, Mutable.D_PARENT_CONTAINING) != null, p -> p instanceof DObserved).forEach(e0 -> {
                    DObject dObject = (DObject) e0.getKey();
                    e0.getValue().forEach(e1 -> {
                        DObserved mpsObserved = (DObserved) e1.getKey();
                        if (mpsObserved.isDeferred()) {
                            Pair<DObject, DObserved> slot = Pair.of(dObject, mpsObserved);
                            Pair<Object, Object> old = deferred[0].get(slot);
                            deferred[0] = deferred[0].put(slot, old != null ? Pair.of(old.a(), e1.getValue().b()) : Pair.of(e1.getValue().a(), e1.getValue().b()));
                        } else {
                            mpsObserved.toMPS(post, dObject, e1.getValue().a(), e1.getValue().b(), false);
                        }
                    });
                });
                if (last) {
                    deferred[0].forEach(e -> e.getKey().b().toMPS(post, e.getKey().a(), e.getValue().a(), e.getValue().b(), true));
                    deferred[0].forEach(e -> e.getKey().b().toMPS(post, e.getKey().a(), e.getValue().a(), e.getValue().b(), false));
                    deferred[0] = Map.of();
                    running = false;
                    startStopHandler.stop(project, new Getter() {
                        @Override
                        public <R> R get(Supplier<R> supplier) {
                            return post.get(supplier);
                        }
                    }, this);
                }
            } finally {
                COMMITTING.set(false);
                if (TRACE) {
                    System.err.println(DCLARE + "    END COMMIT " + this);
                }
            }
        }
    }

    protected void stop() {
        if (imperativeTransaction != null) {
            State state = universeTransaction.preState();
            project.getModelAccess().executeCommandInEDT(() -> startStopHandler.off(project, new Getter() {
                @Override
                public <R> R get(Supplier<R> supplier) {
                    return state.get(supplier);
                }
            }, this));
            ImperativeTransaction it = imperativeTransaction;
            invokeLater(() -> it.stop());
            imperativeTransaction = null;
            universeTransaction.kill();
            state.run(() -> getRepository().stop(this));
        }
    }

    public DRepository getRepository() {
        return dRepository;
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
    public MutableClass dClass() {
        return UNIVERSE_CLASS;
    }

    @Override
    public Collection<? extends Observer<?>> dMutableObservers() {
        return Set.of();
    }

}
