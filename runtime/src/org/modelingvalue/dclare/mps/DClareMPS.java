//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2021 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
//                                                                                                                     ~
// Licensed under the GNU Lesser General Public License v3.0 (the 'License'). You may not use this file except in      ~
// compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0  ~
// Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on ~
// an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the  ~
// specific language governing permissions and limitations under the License.                                          ~
//                                                                                                                     ~
// Maintainers:                                                                                                        ~
//     Wim Bast, Tom Brus, Ronald Krijgsheld                                                                           ~
// Contributors:                                                                                                       ~
//     Arjan Kok, Carel Bast                                                                                           ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.Supplier;
import java.util.stream.Collectors;

import javax.swing.SwingUtilities;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.util.Consumer;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
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
import org.modelingvalue.dclare.Action;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.ImperativeTransaction;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.MutableClass;
import org.modelingvalue.dclare.NonCheckingObserved;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.ReusableTransaction;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.SetableModifier;
import org.modelingvalue.dclare.State;
import org.modelingvalue.dclare.Universe;
import org.modelingvalue.dclare.UniverseStatistics;
import org.modelingvalue.dclare.UniverseTransaction;
import org.modelingvalue.dclare.ex.ConsistencyError;
import org.modelingvalue.dclare.ex.EmptyMandatoryException;
import org.modelingvalue.dclare.ex.NonDeterministicException;
import org.modelingvalue.dclare.ex.OutOfScopeException;
import org.modelingvalue.dclare.ex.ReferencedOrphanException;
import org.modelingvalue.dclare.ex.ThrowableError;
import org.modelingvalue.dclare.ex.TooManyChangesException;
import org.modelingvalue.dclare.ex.TooManyObservedException;
import org.modelingvalue.dclare.ex.TooManyObserversException;
import org.modelingvalue.dclare.ex.TransactionException;
import org.modelingvalue.dclare.mps.DRule.DObserver;
import org.modelingvalue.dclare.mps.DRule.DObserverTransaction;
import org.modelingvalue.dclare.mps.DclareModelCheckerBuilder.RootItemsToCheck;
import org.modelingvalue.dclare.sync.NetUtils;

import jetbrains.mps.checkers.AbstractNodeCheckerInEditor;
import jetbrains.mps.checkers.IAbstractChecker;
import jetbrains.mps.checkers.IChecker;
import jetbrains.mps.checkers.ICheckingPostprocessor;
import jetbrains.mps.checkers.LanguageErrorsCollector;
import jetbrains.mps.checkers.ModelCheckerBuilder;
import jetbrains.mps.checkers.ModelCheckerBuilder.ItemsToCheck;
import jetbrains.mps.checkers.ModelCheckerBuilder.ModelsExtractorImpl;
import jetbrains.mps.editor.runtime.LanguageEditorChecker;
import jetbrains.mps.errors.CheckerRegistry;
import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.errors.item.IssueKindReportItem.CheckerCategory;
import jetbrains.mps.errors.item.ModelReportItem;
import jetbrains.mps.errors.item.ModuleReportItem;
import jetbrains.mps.errors.item.NodeReportItem;
import jetbrains.mps.errors.item.ReportItem;
import jetbrains.mps.nodeEditor.Highlighter;
import jetbrains.mps.progress.EmptyProgressMonitor;
import jetbrains.mps.project.ProjectBase;
import jetbrains.mps.project.ProjectRepository;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.language.LanguageRuntime;

public class DClareMPS implements TriConsumer<State, State, Boolean>, Universe {

    protected static Setable<DClareMPS, Map<String, DAttribute<?, ?>>>                                  ATTRIBUTE_MAP        = Setable.of("ATTRIBUTE_MAP", Map.of());

    protected static Setable<DClareMPS, Map<String, SStructClass>>                                      STRUCT_CLASS_MAP     = Setable.of("STRUCT_CLASS_MAP", Map.of());

    private static final CopyOnWriteArrayList<DClareMPS>                                                ALL                  = new CopyOnWriteArrayList<>();

    private static final Set<DMessageType>                                                              MESSAGE_TYPES        = Collection.of(DMessageType.values()).toSet();

    private static final QualifiedSet<Triple<DObject, DFeature, String>, DMessage>                      MESSAGE_QSET         = QualifiedSet.of(m -> Triple.of(m.context(), m.feature(), m.id()));

    protected static final Map<DMessageType, QualifiedSet<Triple<DObject, DFeature, String>, DMessage>> MESSAGE_QSET_MAP     = MESSAGE_TYPES.sequential().toMap(t -> Entry.of(t, MESSAGE_QSET));

    private static final MutableClass                                                                   UNIVERSE_CLASS       = new MutableClass() {
                                                                                                                                 @Override
                                                                                                                                 public Collection<? extends Observer<?>> dObservers() {
                                                                                                                                     return Collection.of();
                                                                                                                                 }

                                                                                                                                 @Override
                                                                                                                                 public Collection<? extends Setable<? extends Mutable, ?>> dSetables() {
                                                                                                                                     return SETABLES;
                                                                                                                                 }
                                                                                                                             };

    protected static final boolean                                                                      TRACE                = Boolean.getBoolean("DCLARE_TRACE");

    protected static final String                                                                       DCLARE               = "---------> DCLARE ";

    private final ThreadLocal<Boolean>                                                                  COMMITTING           = ThreadLocal.withInitial(() -> false);

    public final static Observed<DClareMPS, Set<SLanguage>>                                             ALL_LANGUAGES        = NonCheckingObserved.of("ALL_LANGAUGES", Set.of(), (tx, d, o, n) -> {
                                                                                                                                 Setable.<Set<SLanguage>, SLanguage> diff(o, n,                                                                                                    //
                                                                                                                                         a -> DClareMPS.RULE_SETS.get(a).forEachOrdered(                                                                                           //
                                                                                                                                                 rs -> {
                                                                                                                                                     rs.getAllAttributes().forEach(attr -> ATTRIBUTE_MAP.set(d, Map::put, Entry.<String, DAttribute<?, ?>> of(attr.id(), attr)));
                                                                                                                                                     rs.getAllStructClasses().forEach(strc -> STRUCT_CLASS_MAP.set(d, Map::put, Entry.<String, SStructClass> of(strc.id(), strc)));
                                                                                                                                                 }),                                                                                                                               //
                                                                                                                                         r -> {
                                                                                                                                         });
                                                                                                                             });

    public final static Constant<SLanguage, Set<IRuleSet>>                                              RULE_SETS            = Constant.of("RULE_SETS", Set.of(), language -> {
                                                                                                                                 LanguageRuntime rtLang = registry().getLanguage(language);
                                                                                                                                 IRuleAspect aspect = rtLang != null ? rtLang.getAspect(IRuleAspect.class) : null;
                                                                                                                                 return aspect != null ? Collection.of(aspect.getRuleSets()).toSet() : Set.of();
                                                                                                                             });

    private final static Setable<DClareMPS, DRepository>                                                REPOSITORY_CONTAINER = Setable.of("REPOSITORY_CONTAINER", null, SetableModifier.containment);

    protected static final Set<? extends Setable<? extends Mutable, ?>>                                 SETABLES             = Set.of(REPOSITORY_CONTAINER);

    private final ContextPool                                                                           thePool              = ContextThread.createPool();
    protected final Thread                                                                              waitForEndThread;
    @SuppressWarnings("unused")
    private final Thread                                                                                statsThread;
    private final UniverseTransaction                                                                   universeTransaction;
    protected final ProjectBase                                                                         project;
    private final StartStopHandler                                                                      startStopHandler;
    private ImperativeTransaction                                                                       imperativeTransaction;
    private boolean                                                                                     running;
    protected final Concurrent<ReusableTransaction<DRule.DObserver<?>, DObserverTransaction>>           dObserverTransactions;
    protected Map<DMessageType, QualifiedSet<Triple<DObject, DFeature, String>, DMessage>>              messages             = MESSAGE_QSET_MAP;
    private Thread                                                                                      commandThread;
    protected final DclareForMPSEngine                                                                  engine;
    private final DRepository                                                                           dRepository;
    private final ModuleChecker                                                                         moduleChecker;
    private final ModelChecker                                                                          modelChecker;
    private final NodeChecker                                                                           nodeChecker;
    private final NodeCheckerInEditor                                                                   nodeCheckerInEditor;
    private final LanguageEditorChecker                                                                 languageEditorChecker;
    private final IAbstractChecker<ItemsToCheck, IssueKindReportItem>                                   mpsChecker;
    private final MPSDeltaAdapter                                                                       deltaAdapter;
    private final Concurrent<Set<SModel>>                                                               changedModels        = Concurrent.of(Set.of());
    private final Concurrent<Set<SModule>>                                                              changedModules       = Concurrent.of(Set.of());
    private final Concurrent<Set<SNode>>                                                                changedRoots         = Concurrent.of(Set.of());
    private final AtomicLong                                                                            counter              = new AtomicLong(0L);

    protected DClareMPS(DclareForMPSEngine engine, ProjectBase project, State prevState, int maxTotalNrOfChanges, int maxNrOfChanges, int maxNrOfObserved, int maxNrOfObservers, StartStopHandler startStopHandler) {
        this.project = project;
        this.engine = engine;
        this.startStopHandler = startStopHandler;
        ProjectRepository projectRepository = (ProjectRepository) project.getRepository();
        this.dRepository = new DRepository(projectRepository);
        this.moduleChecker = new ModuleChecker();
        this.modelChecker = new ModelChecker();
        this.nodeChecker = new NodeChecker();
        this.nodeCheckerInEditor = new NodeCheckerInEditor();
        this.languageEditorChecker = new LanguageEditorChecker(projectRepository, Collections.singletonList(nodeCheckerInEditor));
        CheckerRegistry checkerRegistry = project.getPlatform().findComponent(CheckerRegistry.class);
        assert checkerRegistry != null;
        checkerRegistry.registerChecker(moduleChecker);
        checkerRegistry.registerChecker(modelChecker);
        checkerRegistry.registerChecker(nodeChecker);
        ModelsExtractorImpl modelExtractor = new ModelCheckerBuilder.ModelsExtractorImpl().excludeGenerators();
        //noinspection RedundantCast (cast is needed! javac will fail otherwise)
        List<? extends IChecker<?, ? extends IssueKindReportItem>> checkers = (List<? extends IChecker<?, ? extends IssueKindReportItem>>) checkerRegistry.getCheckers();
        mpsChecker = new DclareModelCheckerBuilder(this, modelExtractor).createChecker(checkers);
        Highlighter highlighter = project.getComponent(Highlighter.class);
        highlighter.addChecker(languageEditorChecker);
        ModelAccess modelAccess = project.getModelAccess();
        modelAccess.executeCommandInEDT(() -> {
            commandThread = Thread.currentThread();
            startStopHandler.on(project);
        });
        if (TRACE) {
            System.err.println(DCLARE + "START " + this);
        }
        universeTransaction = new UniverseTransaction(this, thePool, prevState, 100, maxTotalNrOfChanges, maxNrOfChanges, maxNrOfObserved, maxNrOfObservers, 4, null) {

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
            protected void handleExceptions(Set<Throwable> errors) {
                addMessages(errors);
            }

            @Override
            protected void clearOrphans(Universe universe) {
                if (isRunning()) {
                    super.clearOrphans(universe);
                }
            }

            @Override
            protected void clear(LeafTransaction tx, Mutable orphan) {
                if (!(orphan instanceof DObject && ((DObject) orphan).isExternal())) {
                    super.clear(tx, orphan);
                }
            }

            @Override
            protected void checkConsistency(Universe universe) {
                if (isRunning()) {
                    super.checkConsistency(universe);
                }
            }

            @SuppressWarnings("rawtypes")
            @Override
            protected void checkOrphanState(Entry<Object, Pair<DefaultMap<Setable, Object>, DefaultMap<Setable, Object>>> e0) {
            }

        };
        deltaAdapter = NetUtils.isActive() ? new MPSDeltaAdapter("mps-sync", universeTransaction, new MPSSerializationHelper(projectRepository)) : null;
        this.dObserverTransactions = Concurrent.of(() -> new ReusableTransaction<>(universeTransaction));
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
        }, "dclare-waitForEnd");

        waitForEndThread.setDaemon(true);
        waitForEndThread.start();
        statsThread = new StatsUpdater();
    }

    @Override
    public void init() {
        command(() -> start());
        Universe.super.init();
        imperativeTransaction = universeTransaction.addImperative("$MPS_NATIVE", p -> start(), this, r -> {
            if (isRunning()) {
                command(r);
            }
        }, false);
        ALL.add(this);
        REPOSITORY_CONTAINER.set(this, getRepository());
        universeTransaction.put("delta-support-starter", () -> NetUtils.startDeltaSupport(deltaAdapter));
    }

    private void start() {
        if (!running) {
            running = true;
            startStopHandler.start(project);
        }
    }

    protected void addMessage(Throwable throwable) {
        addMessages(Set.of(throwable));
    }

    @SuppressWarnings("rawtypes")
    protected void addMessages(Set<Throwable> throwables) {
        if (!universeTransaction.isKilled()) {
            universeTransaction.currentState().run(() -> {
                DObject object = getRepository();
                DFeature feature = DRepository.EXCEPTIONS;
                for (Throwable t : throwables.sorted(universeTransaction::compareThrowable)) {
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
                }
            });
            engine.stopEngine();
        }
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
        } else if (t instanceof UnidentifiedException) {
            addUnidentifiedExceptionMessage(object, feature, (UnidentifiedException) t);
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
        tmce.getLast().trace(message, (m, r) -> m.addSubMessage(new DMessage((DObject) r.mutable(), ((DRule.DObserver) r.observer()).rule(), DMessageType.error, " ", //
                "run: " + r.mutable() + "." + ((DRule.DObserver) r.observer()).rule() + " nr: " + r.nrOfChanges())), (m, r, s) -> m.addSubMessage(new DMessage((DObject) s.mutable(), (DObserved) s.observed(), DMessageType.error, " ", //
                        "read: " + s.mutable() + "." + s.observed() + "=" + r.read().get(s))), (m, w, s) -> m.subMessages().last().addSubMessage(new DMessage((DObject) s.mutable(), (DObserved) s.observed(), DMessageType.error, " ", //
                                "write: " + s.mutable() + "." + s.observed() + "=" + w.written().get(s))), m -> m.subMessages().last(), tmce.getState().universeTransaction().stats().maxNrOfChanges());
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

    private void addUnidentifiedExceptionMessage(DObject context, DFeature feature, UnidentifiedException uie) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "UNIDENTIFIED", uie.getMessage());
        addMessage(message);
    }

    private void addReferencedOrphanExceptionMessage(DObject context, DFeature feature, ReferencedOrphanException roe) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "REFERENCED_ORPHAN", roe.getMessage());
        addMessage(message);
    }

    private void addEmptyMandatoryExceptionMessage(DObject context, DFeature feature, EmptyMandatoryException eme) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "EMPTY_MANDATORY", eme.getMessage());
        addMessage(message);
    }

    private void addNonDeterministicExceptionMessage(DObject context, DFeature feature, NonDeterministicException nde) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "NON_DETERMINISTIC", nde.getMessage());
        for (StackTraceElement ste : nde.getStackTrace()) {
            message.addSubMessage(new DMessage(context, feature, DMessageType.error, " ", ste));
        }
        addMessage(message);
    }

    private void addOutOfScopeExceptionMessage(DObject context, DFeature feature, OutOfScopeException oose) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "OUT_OF_SCOPE", oose.getMessage());
        addMessage(message);
    }

    private void addThrowableMessage(DObject context, DFeature feature, Throwable t) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "EXCEPTION", t);
        for (StackTraceElement ste : t.getStackTrace()) {
            message.addSubMessage(new DMessage(context, feature, DMessageType.error, " ", ste));
        }
        addMessage(message);
    }

    private synchronized void addMessage(DMessage message) {
        messages = messages.put(message.type(), messages.get(message.type()).add(message));
    }

    public QualifiedSet<Triple<DObject, DFeature, String>, DMessage> getMessages(DMessageType type) {
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

    @Override
    public String toString() {
        return "Universe[" + project.getName() + "]";
    }

    public void handleMPSChange(Runnable action) {
        if (isRunning()) {
            if (isRunningCommand()) {
                if (!COMMITTING.get()) {
                    try {
                        LeafTransaction.getContext().run(imperativeTransaction, action);
                    } catch (Throwable t) {
                        addMessage(t);
                    }
                }
            } else {
                imperativeTransaction.schedule(action);
            }
        }
    }

    protected boolean isRunningCommand() {
        return Thread.currentThread() == commandThread;
    }

    public void invokeLater(Runnable runnable) {
        SwingUtilities.invokeLater(runnable);
    }

    public void command(Runnable runnable) {
        project.getModelAccess().runWriteInEDT(() -> project.getModelAccess().executeUndoTransparentCommand(() -> {
            try {
                runnable.run();
            } catch (Throwable t) {
                addMessage(t);
            }
        }));
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

    @SuppressWarnings("unchecked")
    public <R> R read(Supplier<R> supplier) {
        R[] result = (R[]) new Object[1];
        read(() -> {
            result[0] = supplier.get();
        });
        return result[0];
    }

    public static DClareMPS instance() {
        return (DClareMPS) LeafTransaction.getCurrent().universeTransaction().mutable();
    }

    public static long uniqueLong() {
        return instance().counter.getAndIncrement();
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public void accept(State pre, State post, Boolean last) {
        if (isRunning() && !universeTransaction.isKilled()) {
            if (TRACE) {
                System.err.println(DCLARE + "    START COMMIT " + this);
            }
            COMMITTING.set(true);
            try {
                pre.diff(post, o -> o instanceof DObject && !((DObject) o).isDclareOnly(), p -> p instanceof DObserved && !((DObserved) p).isDclareOnly()).forEachOrdered(e0 -> {
                    DObject dObject = (DObject) e0.getKey();
                    if (dObject instanceof DModel) {
                        SModel sModel = ((DModel) dObject).tryOriginal();
                        if (sModel != null) {
                            changedModels.change(s -> s.add(sModel));
                        }
                    } else if (dObject instanceof DNode) {
                        SNode original = ((DNode) dObject).tryOriginal();
                        SNode root = original != null ? original.getContainingRoot() : null;
                        if (root != null) {
                            changedRoots.change(s -> s.add(root));
                        }
                    } else if (dObject instanceof DModule) {
                        changedModules.change(s -> s.add(((DModule) dObject).original()));
                    }
                    e0.getValue().forEachOrdered(e1 -> {
                        DObserved mpsObserved = (DObserved) e1.getKey();
                        mpsObserved.toMPS(dObject, e1.getValue().a(), e1.getValue().b());
                    });
                });
                if (last && !runModelCheck()) {
                    running = false;
                    startStopHandler.stop(project, post::get, this);
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
        if (isRunning()) {
            State state = universeTransaction.lastState();
            ALL.remove(this);
            ModelAccess modelAccess = project.getModelAccess();
            modelAccess.executeCommandInEDT(() -> {
                startStopHandler.off(project, state::get, this);
                commandThread = null;
            });
            CheckerRegistry checkerRegistry = project.getPlatform().findComponent(CheckerRegistry.class);
            if (checkerRegistry == null) {
                throw new Error("CheckerRegistry not found in platform");
            }
            checkerRegistry.unregisterChecker(moduleChecker);
            checkerRegistry.unregisterChecker(modelChecker);
            checkerRegistry.unregisterChecker(nodeChecker);
            Highlighter highlighter = project.getComponent(Highlighter.class);
            modelAccess.runReadInEDT(() -> {
                highlighter.removeChecker(languageEditorChecker);
            });
            ImperativeTransaction it = imperativeTransaction;
            invokeLater(it::stop);
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
        return LeafTransaction.getCurrent().universeTransaction().preState().get(supplier);
    }

    public UniverseTransaction universeTransaction() {
        return universeTransaction;
    }

    @Override
    public MutableClass dClass() {
        return UNIVERSE_CLASS;
    }

    public static <T> T tryGetOnAll(Supplier<T> supplier) {
        T result = null;
        for (DClareMPS dClareMPS : ALL) {
            result = dClareMPS.imperativeTransaction.state().get(supplier);
            if (result != null) {
                break;
            }
        }
        return result;
    }

    private class ModuleChecker extends IChecker.AbstractModuleChecker<ModuleReportItem> {
        @Override
        public void check(SModule sModule, SRepository repository, Consumer<? super ModuleReportItem> consumer, ProgressMonitor monitor) {
            if (isRunning()) {
                imperativeTransaction.state().run(() -> {
                    DModule dModule = DModule.of(sModule);
                    for (DIssue issue : DObject.DCLARE_ISSUES.get(dModule)) {
                        consumer.consume((ModuleReportItem) issue.getItem());
                    }
                });
            }
        }

        @Override
        public CheckerCategory getCategory() {
            return DIssue.CHECKER_CATEGORY;
        }
    }

    private class ModelChecker extends IChecker.AbstractModelChecker<ModelReportItem> {
        @Override
        public void check(SModel sModel, SRepository repository, Consumer<? super ModelReportItem> consumer, ProgressMonitor monitor) {
            if (isRunning()) {
                imperativeTransaction.state().run(() -> {
                    for (DIssue issue : DObject.DCLARE_ISSUES.get(DModel.of(sModel))) {
                        consumer.consume((ModelReportItem) issue.getItem());
                    }
                });
            }
        }

        @Override
        public CheckerCategory getCategory() {
            return DIssue.CHECKER_CATEGORY;
        }
    }

    private class NodeChecker extends IChecker.AbstractNodeChecker<NodeReportItem> {
        @Override
        public AbstractRootChecker<NodeReportItem> asRootChecker() {
            AbstractRootChecker<NodeReportItem> rootChecker = super.asRootChecker();
            return new AbstractRootChecker<>() {
                @Override
                public IssueKindReportItem.CheckerCategory getCategory() {
                    return rootChecker.getCategory();
                }

                @Override
                public ICheckingPostprocessor<NodeReportItem> getPostprocessor() {
                    return rootChecker.getPostprocessor();
                }

                @Override
                public String toString() {
                    return rootChecker.toString();
                }

                @Override
                public void check(SNode root, SRepository repository, Consumer<? super NodeReportItem> errorCollector, ProgressMonitor monitor) {
                    if (isRunning()) {
                        imperativeTransaction.state().run(() -> rootChecker.check(root, repository, errorCollector, monitor));
                    }
                }
            };
        }

        @Override
        public void check(SNode sNode, SRepository repository, Consumer<? super NodeReportItem> consumer, ProgressMonitor monitor) {
            for (DIssue issue : DObject.DCLARE_ISSUES.get(DNode.of(sNode))) {
                consumer.consume((NodeReportItem) issue.getItem());
            }
        }

        @Override
        public CheckerCategory getCategory() {
            return DIssue.CHECKER_CATEGORY;
        }
    }

    private class NodeCheckerInEditor extends AbstractNodeCheckerInEditor {

        @Override
        protected void checkNodeInEditor(SNode sNode, LanguageErrorsCollector errorsCollector, SRepository repository) {
            if (isRunning()) {
                imperativeTransaction.state().run(() -> {
                    for (DIssue issue : DObject.DCLARE_ISSUES.get(DNode.of(sNode))) {
                        errorsCollector.addError((NodeReportItem) issue.getItem());
                    }
                });
            }
        }

        @Override
        public CheckerCategory getCategory() {
            return DIssue.CHECKER_CATEGORY;
        }
    }

    private boolean runModelCheck() {
        Set<SModel> models = changedModels.result();
        Set<SModule> modules = changedModules.result();
        Set<SNode> roots = changedRoots.result();
        changedModels.init(Set.of());
        changedModules.init(Set.of());
        changedRoots.init(Set.of());
        if (!models.isEmpty() || !modules.isEmpty() || !roots.isEmpty()) {
            thePool.execute(() -> {
                RootItemsToCheck itemsToCheck = new RootItemsToCheck();
                itemsToCheck.models = models.collect(Collectors.toList());
                itemsToCheck.modules = modules.collect(Collectors.toList());
                itemsToCheck.roots = roots.filter(r -> r.getModel() != null).collect(Collectors.toList());
                java.util.List<IssueKindReportItem> reportItems = new ArrayList<>();
                SRepository repos = getRepository().original();
                mpsChecker.check(itemsToCheck, repos, reportItems::add, new EmptyProgressMonitor());
                universeTransaction.put(new Object(), () -> {
                    for (SModule sModule : modules) {
                        DObject.MPS_ISSUES.set(DModule.of(sModule), DObject.MPS_ISSUES.getDefault());
                    }
                    for (SModel sModel : models) {
                        DObject.MPS_ISSUES.set(DModel.of(sModel), DObject.MPS_ISSUES.getDefault());
                    }
                    for (SNode root : roots) {
                        DNode.ALL_MPS_ISSUES.set(DNode.of(root), DNode.ALL_MPS_ISSUES.getDefault());
                    }
                    for (IssueKindReportItem item : reportItems) {
                        DObject d = read(() -> context(item));
                        if (d != null) {
                            DObject.MPS_ISSUES.set(d, Set::add, Pair.of(d, item));
                        }
                    }
                });
            });
            return true;
        } else {
            return false;
        }
    }

    protected DObject context(ReportItem item) {
        SRepository repos = getRepository().original();
        if (item instanceof NodeReportItem) {
            SNode s = ((NodeReportItem) item).getNode().resolve(repos);
            return s != null ? DNode.of(s) : null;
        } else if (item instanceof ModelReportItem) {
            SModel s = ((ModelReportItem) item).getModel().resolve(repos);
            return s != null ? DModel.of(s) : null;
        } else {
            SModule s = ((ModuleReportItem) item).getModule().resolve(repos);
            return s != null ? DModule.of(s) : null;
        }
    }

    private class StatsUpdater extends Thread {
        private UniverseStatistics prevStats;

        public StatsUpdater() {
            super("dclare-stats");
            setDaemon(true);
            start();
        }

        @Override
        public void run() {
            try {
                for (;;) {
                    Thread.sleep(300);
                    if (DClareMPS.this.thePool.isShutdown()) {
                        break;
                    }
                    UniverseStatistics stats = DClareMPS.this.universeTransaction.stats();
                    if (prevStats == null || !prevStats.equals(stats)) {
                        prevStats = new UniverseStatistics(stats);
                        project.getModelAccess().executeCommandInEDT(() -> startStopHandler.stats(stats));
                    }
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

}
