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

import static org.modelingvalue.dclare.CoreSetableModifier.containment;
import static org.modelingvalue.dclare.CoreSetableModifier.plumbing;

import java.lang.Thread.UncaughtExceptionHandler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
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
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.ReusableTransaction;
import org.modelingvalue.dclare.Setable;
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
import org.modelingvalue.dclare.mps.DAttribute.DObservedAttribute;
import org.modelingvalue.dclare.mps.DRule.DObserver;
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
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.ProjectBase;
import jetbrains.mps.project.ProjectRepository;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.language.LanguageRuntime;

public class DClareMPS implements TriConsumer<State, State, Boolean>, Universe, UncaughtExceptionHandler {
    protected static Constant<SLanguage, Map<String, DAttribute<?, ?>>>                                 ATTRIBUTE_MAP        = Constant.of("ATTRIBUTE_MAP", l -> DClareMPS.RULE_SETS.get(l).flatMap(rs -> Collection.of(rs.getAllAttributes())).toMap(a -> Entry.of(a.id(), a)));
    protected static Constant<SLanguage, Map<String, SStructClass>>                                     STRUCT_CLASS_MAP     = Constant.of("STRUCT_CLASS_MAP", l -> DClareMPS.RULE_SETS.get(l).flatMap(rs -> Collection.of(rs.getAllStructClasses())).toMap(s -> Entry.of(s.id(), s)));
    protected static final CopyOnWriteArrayList<DClareMPS>                                              ALL                  = new CopyOnWriteArrayList<>();
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
    protected static final String                                                                       DCLARE               = "---------> DCLARE ";
    public static final Observed<DClareMPS, Set<SLanguage>>                                             ALL_LANGUAGES        = Observed.of("ALL_LANGAUGES", Set.of(), plumbing);
    public static final Constant<SLanguage, Set<IRuleSet>>                                              RULE_SETS            = Constant.of("RULE_SETS", Set.of(), language -> {
                                                                                                                                 LanguageRuntime rtLang = registry().getLanguage(language);
                                                                                                                                 IRuleAspect aspect = rtLang != null ? rtLang.getAspect(IRuleAspect.class) : null;
                                                                                                                                 return aspect != null ? Collection.of(aspect.getRuleSets()).toSet() : Set.of();
                                                                                                                             });
    public static final Constant<DevKit, Set<SLanguage>>                                                DEVKIT_LANGUAGES     = Constant.of("DEVKIT_LANGUAGES", Set.of(), devkit -> Collection.of(devkit.getAllExportedLanguageIds()).toSet());
    private static final Setable<DClareMPS, DRepository>                                                REPOSITORY_CONTAINER = Setable.of("REPOSITORY_CONTAINER", null, containment);
    protected static final Set<? extends Setable<? extends Mutable, ?>>                                 SETABLES             = Set.of(REPOSITORY_CONTAINER);
    //
    private final ContextPool                                                                           thePool              = ContextThread.createPool(this);
    private final ThreadLocal<Boolean>                                                                  committing           = ThreadLocal.withInitial(() -> false);
    private final UniverseTransaction                                                                   universeTransaction;
    private final DclareForMpsConfig                                                                    config;
    protected final ProjectBase                                                                         project;
    private final ModelAccess                                                                           modelAccess;
    private ImperativeTransaction                                                                       imperativeTransaction;
    protected final Concurrent<ReusableTransaction<DRule.DObserver<?>, DRule.DObserverTransaction>>     dObserverTransactions;
    protected final Concurrent<ReusableTransaction<DNode.DCopyObserver, DNode.DCopyTransaction>>        dCopyObserverTransactions;
    protected Map<DMessageType, QualifiedSet<Triple<DObject, DFeature, String>, DMessage>>              messages             = MESSAGE_QSET_MAP;
    private Thread                                                                                      commandThread;
    protected final DclareForMPSEngine                                                                  engine;
    private final DRepository                                                                           dRepository;
    private final ModuleChecker                                                                         moduleChecker;
    private final ModelChecker                                                                          modelChecker;
    private final NodeChecker                                                                           nodeChecker;
    private final LanguageEditorChecker                                                                 languageEditorChecker;
    private final IAbstractChecker<ItemsToCheck, IssueKindReportItem>                                   mpsChecker;
    private final MPSDeltaAdapter                                                                       deltaAdapter;
    private final Concurrent<Set<SModel>>                                                               changedModels        = Concurrent.of(Set.of());
    private final Concurrent<Set<SModule>>                                                              changedModules       = Concurrent.of(Set.of());
    private final Concurrent<Set<SNode>>                                                                changedRoots         = Concurrent.of(Set.of());
    private final AtomicLong                                                                            counter              = new AtomicLong(0L);
    private boolean                                                                                     running              = false;

    protected DClareMPS(DclareForMPSEngine engine, ProjectBase project, DclareForMpsConfig config) {
        this.config = config;
        this.project = project;
        modelAccess = project.getModelAccess();
        this.engine = engine;
        ProjectRepository projectRepository = (ProjectRepository) project.getRepository();
        this.dRepository = new DRepository(projectRepository);
        this.moduleChecker = new ModuleChecker();
        this.modelChecker = new ModelChecker();
        this.nodeChecker = new NodeChecker();
        this.languageEditorChecker = new LanguageEditorChecker(projectRepository, Collections.singletonList(new NodeCheckerInEditor()));
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
        modelAccess.executeCommandInEDT(() -> commandThread = Thread.currentThread());
        if (config.isTraceDclare()) {
            System.err.println(DCLARE + "START " + this);
        }

        universeTransaction = new UniverseTransaction(this, thePool, config.getDclareConfig()) {

            @Override
            public void start(Action<Universe> action) {
                if (config.isTraceDclare()) {
                    System.err.println(DCLARE + "START ACTION " + action + "  " + this);
                }
            }

            @Override
            public void end(Action<Universe> action) {
                if (config.isTraceDclare()) {
                    System.err.println(DCLARE + "END ACTION   " + action + "  " + this);
                }
            }

            @Override
            protected void handleExceptions(Set<Throwable> errors) {
                clearErrors();
                addMessages(errors);
            }

            @Override
            protected void clearOrphans(Universe universe) {
                if (isRunning()) {
                    super.clearOrphans(universe);
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
            protected void checkOrphanState(Mutable mutable, DefaultMap<Setable, Object> values) {
            }

        };
        deltaAdapter = NetUtils.isActive() ? new MPSDeltaAdapter("mps-sync", universeTransaction, new MPSSerializationHelper(projectRepository)) : null;
        this.dObserverTransactions = Concurrent.of(() -> new ReusableTransaction<>(universeTransaction));
        this.dCopyObserverTransactions = Concurrent.of(() -> new ReusableTransaction<>(universeTransaction));
        new ShutdownHelperThread();
        new StatsUpdaterThread();
    }

    public DclareForMpsConfig getConfig() {
        return config;
    }

    @Override
    public void init() {
        imperativeTransaction = universeTransaction.addImperative("$MPS_CONNECTOR", p -> config.getStatusHandler().active(project, this), this, r -> {
            if (isRunning()) {
                command(r);
            }
        }, false);
    }

    protected void start() {
        if (!isRunning()) {
            running = true;
            universeTransaction.put("start", () -> {
                Universe.super.init();
                NetUtils.startDeltaSupport(deltaAdapter);
                imperativeTransaction.schedule(() -> {
                    REPOSITORY_CONTAINER.set(this, getRepository());
                    config.getStatusHandler().on(project, this);
                });
            });

        }
    }

    public void addTraceMessage(Object node, String msg) {
        addMessage(new DMessage(getRepository(), DRepository.MODULES, DMessageType.info, Long.toHexString(System.nanoTime()), msg + ": " + node));
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
            engine.stopEngine(getConfig());
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
        tmce.getLast().trace(message, //
                (m, r) -> m.addSubMessage(new DMessage((DObject) r.mutable(), feature(r.observer()), DMessageType.error, " ", //
                        "run  : " + r.mutable() + "." + feature(r.observer()) + " nr: " + r.nrOfChanges())), //
                (m, r, s) -> m.addSubMessage(new DMessage((DObject) s.mutable(), (DObserved) s.observed(), DMessageType.error, " ", //
                        "read : " + s.mutable() + "." + s.observed() + "=" + r.read().get(s))), //
                (m, w, s) -> m.subMessages().last().addSubMessage(new DMessage((DObject) s.mutable(), (DObserved) s.observed(), DMessageType.error, " ", //
                        "write: " + s.mutable() + "." + s.observed() + "=" + w.written().get(s))), //
                m -> m.subMessages().last(), tmce.getState().universeTransaction().stats().maxNrOfChanges());
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private DFeature feature(Observer observer) {
        return observer instanceof DRule.DObserver ? ((DRule.DObserver) observer).rule() : observer instanceof DNode.DCopyObserver ? ((DNode.DCopyObserver) observer).dObserved() : null;
    }

    @SuppressWarnings("rawtypes")
    private void addTooManyObservedExceptionMessage(DObject context, DFeature feature, TooManyObservedException tmse) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "TOO_MANY_OBSERVED", tmse.getSimpleMessage());
        for (Entry<Observed, Set<Mutable>> e : tmse.getObserved()) {
            if (e.getKey() instanceof DObserved) {
                DObserved observed = (DObserved) e.getKey();
                for (Mutable o : e.getValue()) {
                    if (o.dResolve(context) instanceof DObject) {
                        message.addSubMessage(new DMessage((DObject) o.dResolve(context), observed, DMessageType.error, " ", "Observed: " + observed));
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
                    if (o.dResolve(context) instanceof DObject) {
                        message.addSubMessage(new DMessage((DObject) o.dResolve(context), rule, DMessageType.error, " ", "Rule: " + rule));
                    }
                }
            }
        }
        addMessage(message);
    }

    private void addUnidentifiedExceptionMessage(DObject context, DFeature feature, UnidentifiedException uie) {
        addMessage(new DMessage(context, feature, DMessageType.error, "UNIDENTIFIED", uie.getMessage()));
    }

    private void addReferencedOrphanExceptionMessage(DObject context, DFeature feature, ReferencedOrphanException roe) {
        addMessage(new DMessage(context, feature, DMessageType.error, "REFERENCED_ORPHAN", roe.getMessage()));
    }

    private void addEmptyMandatoryExceptionMessage(DObject context, DFeature feature, EmptyMandatoryException eme) {
        addMessage(new DMessage(context, feature, DMessageType.error, "EMPTY_MANDATORY", eme.getMessage()));
    }

    private void addNonDeterministicExceptionMessage(DObject context, DFeature feature, NonDeterministicException nde) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "NON_DETERMINISTIC", nde.getMessage());
        for (StackTraceElement ste : nde.getStackTrace()) {
            message.addSubMessage(new DMessage(context, feature, DMessageType.error, " ", ste));
        }
        addMessage(message);
    }

    private void addOutOfScopeExceptionMessage(DObject context, DFeature feature, OutOfScopeException oose) {
        addMessage(new DMessage(context, feature, DMessageType.error, "OUT_OF_SCOPE", oose.getMessage()));
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
                if (!committing.get()) {
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
        return Thread.currentThread() == commandThread && dRepository.getModelAccess().isCommandAction();
    }

    public void invokeLater(Runnable runnable) {
        SwingUtilities.invokeLater(runnable);
    }

    public void command(Runnable runnable) {
        modelAccess.runWriteInEDT(() -> modelAccess.executeUndoTransparentCommand(() -> {
            try {
                runnable.run();
            } catch (Throwable t) {
                addMessage(t);
            }
        }));
    }

    public void read(Runnable runnable) {
        modelAccess.runReadAction(() -> {
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
            if (config.isTraceDclare()) {
                System.err.println(DCLARE + "    START COMMIT " + this);
            }
            committing.set(true);
            try {
                pre.diff(post, o -> o instanceof DObject && !((DObject) o).isDclareOnly() && ((DObject) o).isActive()).forEachOrdered(e0 -> {
                    DObject dObject = (DObject) e0.getKey();
                    boolean changed = false;
                    DefaultMap<Setable, Object> before = e0.getValue().a();
                    DefaultMap<Setable, Object> after = e0.getValue().b();
                    for (DObserved observed : dObject.dClass().dObserveds()) {
                        if (observed instanceof DObservedAttribute || !dObject.isExternal()) {
                            changed |= observed.toMPS(dObject, before.get(observed), after.get(observed));
                        }
                    }
                    if (!dObject.isExternal() && (changed || (post.get(dObject, Mutable.D_PARENT_CONTAINING) != null && //
                    pre.get(dObject, Mutable.D_PARENT_CONTAINING) == null))) {
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
                    }
                });
                if (last) {
                    config.getStatusHandler().idle(project, this, post::get);
                    runModelCheck();
                }
            } finally {
                committing.set(false);
                if (config.isTraceDclare()) {
                    System.err.println(DCLARE + "    END COMMIT " + this);
                }
            }
        }
    }

    protected boolean stop() {
        if (isRunning()) {
            running = false;
            State state = universeTransaction.lastState();
            modelAccess.executeCommandInEDT(() -> {
                config.getStatusHandler().terminating(project, this, state::get);
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
            modelAccess.runReadInEDT(() -> highlighter.removeChecker(languageEditorChecker));
            ImperativeTransaction it = imperativeTransaction;
            invokeLater(it::stop);
            imperativeTransaction = null;
            universeTransaction.kill();
            state.run(() -> getRepository().stop(this));
            return true;
        } else {
            return false;
        }
    }

    public DRepository getRepository() {
        return dRepository;
    }

    public boolean isRunning() {
        return running && imperativeTransaction != null;
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

    public <T> T getOrDerive(Supplier<T> supplier) {
        ImperativeTransaction it = imperativeTransaction;
        return (it != null ? it.state() : universeTransaction.lastState()).derive(supplier);
    }

    public static DClareMPS dClareForObject(Object sObject) {
        if (ALL.isEmpty()) {
            return null;
        }
        if (ALL.size() == 1) {
            return ALL.get(0);
        }
        if (sObject instanceof SNode) {
            sObject = ((SNode) sObject).getModel();
        }
        if (sObject instanceof SModel) {
            sObject = ((SModel) sObject).getModule();
        }
        if (sObject instanceof SModule) {
            for (DClareMPS dClareMPS : ALL) {
                if (dClareMPS.project.getPath((SModule) sObject) != null) {
                    return dClareMPS;
                }
            }
        }
        if (sObject instanceof SRepository) {
            for (DClareMPS dClareMPS : ALL) {
                if (dClareMPS.dRepository.original().equals((SRepository) sObject)) {
                    return dClareMPS;
                }
            }
        }
        if (sObject instanceof SLanguage) {
            for (DClareMPS dClareMPS : ALL) {
                for (SModule module : dClareMPS.project.getProjectModules()) {
                    if (module.getUsedLanguages().contains((SLanguage) sObject)) {
                        return dClareMPS;
                    }
                }
            }
        }
        return ALL.get(0);
    }

    @Override
    public void uncaughtException(Thread thread, Throwable t) {
        addMessage(t);
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

    private void runModelCheck() {
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
                imperativeTransaction.schedule(() -> {
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

    private class ShutdownHelperThread extends Thread {
        public ShutdownHelperThread() {
            super("dclare-waitForEnd-" + project.getName());
            setDaemon(true);
            start();
        }

        @Override
        public void run() {
            org.modelingvalue.dclare.State result = null;
            try {
                result = universeTransaction.waitForEnd();
            } catch (Throwable t) {
                engine.stopEngine(getConfig());
                throw t;
            } finally {
                thePool.shutdownNow();
                if (config.isTraceDclare()) {
                    System.err.println(DCLARE + "AWAIT TERMINATION   " + this);
                }
                try {
                    //noinspection ResultOfMethodCallIgnored
                    thePool.awaitTermination(99, TimeUnit.DAYS);
                    modelAccess.executeCommandInEDT(() -> config.getStatusHandler().off(project, DClareMPS.this));
                } catch (InterruptedException e) {
                    System.err.println(DCLARE + "the pool did not terminate in time: " + this + " (Thread " + Thread.currentThread().getName() + " was interrupted)");
                    e.printStackTrace();
                }
                if (config.isTraceDclare()) {
                    System.err.println(DCLARE + "END   " + this);
                    if (result != null) {
                        for (@SuppressWarnings("rawtypes")
                        Entry<Setable, Integer> e : result.count()) {
                            System.err.println(DCLARE + "    COUNT " + e.getKey() + " = " + e.getValue());
                        }
                    }
                }
            }
        }
    }

    private class StatsUpdaterThread extends Thread {
        private UniverseStatistics prevStats;

        public StatsUpdaterThread() {
            super("dclare-stats-" + project.getName());
            setDaemon(true);
            start();
        }

        @SuppressWarnings("BusyWait")
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
                        modelAccess.executeCommandInEDT(() -> config.getStatusHandler().stats(stats, DClareMPS.this));
                    }
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
