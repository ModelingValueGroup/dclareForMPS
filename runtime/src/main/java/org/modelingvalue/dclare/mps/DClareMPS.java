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
import static org.modelingvalue.dclare.mps.DclareForMPSEngine.ALL_DCLARE_MPS;

import java.lang.Thread.UncaughtExceptionHandler;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.BiConsumer;
import java.util.function.Supplier;
import java.util.stream.Collectors;

import javax.swing.SwingUtilities;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.*;
import org.jetbrains.mps.openapi.util.Consumer;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.modelingvalue.collections.*;
import org.modelingvalue.collections.util.*;
import org.modelingvalue.collections.util.ContextThread.ContextPool;
import org.modelingvalue.dclare.*;
import org.modelingvalue.dclare.ex.*;
import org.modelingvalue.dclare.mps.DAttribute.DObservedAttribute;
import org.modelingvalue.dclare.mps.DRule.DObserver;
import org.modelingvalue.dclare.mps.DclareModelCheckerBuilder.RootItemsToCheck;
import org.modelingvalue.dclare.sync.DeltaAdaptor;
import org.modelingvalue.dclare.sync.SyncConnectionHandler;

import jetbrains.mps.checkers.*;
import jetbrains.mps.checkers.ModelCheckerBuilder.ItemsToCheck;
import jetbrains.mps.checkers.ModelCheckerBuilder.ModelsExtractorImpl;
import jetbrains.mps.editor.runtime.LanguageEditorChecker;
import jetbrains.mps.errors.CheckerRegistry;
import jetbrains.mps.errors.item.*;
import jetbrains.mps.errors.item.IssueKindReportItem.CheckerCategory;
import jetbrains.mps.nodeEditor.Highlighter;
import jetbrains.mps.progress.EmptyProgressMonitor;
import jetbrains.mps.project.*;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.language.LanguageRuntime;

public class DClareMPS implements Universe, UncaughtExceptionHandler {

    private static final String                                                                         CONNECT_SYNC_HOST_PORT  = System.getProperty("CONNECT_SYNC_HOST_PORT", null);
    private static final boolean                                                                        TRACE_MPS_MODEL_CHANGES = Boolean.getBoolean("TRACE_MPS_MODEL_CHANGES");

    protected static Constant<SLanguage, Map<String, DAttribute<?, ?>>>                                 ATTRIBUTE_MAP           = Constant.of("ATTRIBUTE_MAP", l -> DClareMPS.RULE_SETS.get(l).flatMap(rs -> Collection.of(rs.getAllAttributes())).toMap(a -> Entry.of(a.id(), a)));
    protected static Constant<SLanguage, Map<String, SStructClass>>                                     STRUCT_CLASS_MAP        = Constant.of("STRUCT_CLASS_MAP", l -> DClareMPS.RULE_SETS.get(l).flatMap(rs -> Collection.of(rs.getAllStructClasses())).toMap(s -> Entry.of(s.id(), s)));
    private static final Set<DMessageType>                                                              MESSAGE_TYPES           = Collection.of(DMessageType.values()).toSet();
    private static final QualifiedSet<Triple<DObject, DFeature, String>, DMessage>                      MESSAGE_QSET            = QualifiedSet.of(m -> Triple.of(m.context(), m.feature(), m.id()));
    protected static final Map<DMessageType, QualifiedSet<Triple<DObject, DFeature, String>, DMessage>> MESSAGE_QSET_MAP        = MESSAGE_TYPES.sequential().toMap(t -> Entry.of(t, MESSAGE_QSET));
    private static final MutableClass                                                                   UNIVERSE_CLASS          = new MutableClass() {
                                                                                                                                    @Override
                                                                                                                                    public Collection<? extends Observer<?>> dObservers() {
                                                                                                                                        return Collection.of();
                                                                                                                                    }

                                                                                                                                    @Override
                                                                                                                                    public Collection<? extends Setable<? extends Mutable, ?>> dSetables() {
                                                                                                                                        return SETABLES;
                                                                                                                                    }
                                                                                                                                };
    protected static final String                                                                       DCLARE                  = "---------> DCLARE ";
    public static final Observed<DClareMPS, Set<SLanguage>>                                             ALL_LANGUAGES           = Observed.of("ALL_LANGAUGES", Set.of(), plumbing);
    public static final Constant<SLanguage, Set<IRuleSet>>                                              RULE_SETS               = Constant.of("RULE_SETS", Set.of(), language -> {
                                                                                                                                    LanguageRuntime rtLang = registry().getLanguage(language);
                                                                                                                                    IRuleAspect aspect = rtLang != null ? rtLang.getAspect(IRuleAspect.class) : null;
                                                                                                                                    return aspect != null ? Collection.of(aspect.getRuleSets()).toSet() : Set.of();
                                                                                                                                });
    public static final Constant<DevKit, Set<SLanguage>>                                                DEVKIT_LANGUAGES        = Constant.of("DEVKIT_LANGUAGES", Set.of(), devkit -> Collection.of(devkit.getAllExportedLanguageIds()).toSet());
    private static final Setable<DClareMPS, DRepository>                                                REPOSITORY_CONTAINER    = Setable.of("REPOSITORY_CONTAINER", null, containment);
    protected static final Set<? extends Setable<? extends Mutable, ?>>                                 SETABLES                = Set.of(REPOSITORY_CONTAINER);
    //
    private final ContextPool                                                                           thePool                 = ContextThread.createPool(this);
    private final ThreadLocal<Boolean>                                                                  committing              = ThreadLocal.withInitial(() -> false);
    private final UniverseTransaction                                                                   universeTransaction;
    private final DclareForMpsConfig                                                                    config;
    protected final ProjectBase                                                                         project;
    private final ModelAccess                                                                           modelAccess;
    protected final Concurrent<ReusableTransaction<DRule.DObserver<?>, DRule.DObserverTransaction>>     dObserverTransactions;
    protected final Concurrent<ReusableTransaction<DNode.DCopyObserver, DNode.DCopyTransaction>>        dCopyObserverTransactions;
    protected final DclareForMPSEngine                                                                  engine;
    private final AtomicLong                                                                            counter                 = new AtomicLong(0L);
    private final DRepository                                                                           dRepository;
    //
    protected Map<DMessageType, QualifiedSet<Triple<DObject, DFeature, String>, DMessage>>              messages                = MESSAGE_QSET_MAP;
    private boolean                                                                                     running                 = false;
    private ImperativeTransaction                                                                       imperativeTransaction;
    private Thread                                                                                      commandThread;
    private ModuleChecker                                                                               moduleChecker;
    private ModelChecker                                                                                modelChecker;
    private NodeChecker                                                                                 nodeChecker;
    private LanguageEditorChecker                                                                       languageEditorChecker;
    private IAbstractChecker<ItemsToCheck, IssueKindReportItem>                                         mpsChecker;
    private SyncConnectionHandler                                                                       syncConnectionHandler;
    private ObjectChanges                                                                               objectChanges;
    private Concurrent<Set<SModel>>                                                                     changedModels;
    private Concurrent<Set<SModule>>                                                                    changedModules;
    private Concurrent<Set<SNode>>                                                                      changedRoots;
    private Set<SModel>                                                                                 allChangedModels;
    private Set<SModule>                                                                                allChangedModules;
    private Set<SNode>                                                                                  allChangedRoots;

    protected DClareMPS(DclareForMPSEngine engine, ProjectBase project, DclareForMpsConfig config) {
        this.config = config;
        this.project = project;
        this.modelAccess = project.getModelAccess();
        this.engine = engine;
        this.dRepository = new DRepository((ProjectRepository) project.getRepository());
        this.modelAccess.executeCommandInEDT(() -> commandThread = Thread.currentThread());
        if (config.isTraceDclare()) {
            System.err.println(DCLARE + "BEGIN " + this);
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

            @Override
            protected void init() {
            }
        };
        this.dObserverTransactions = Concurrent.of(() -> new ReusableTransaction<>(universeTransaction));
        this.dCopyObserverTransactions = Concurrent.of(() -> new ReusableTransaction<>(universeTransaction));
        new ShutdownHelperThread();
    }

    public DclareForMpsConfig getConfig() {
        return config;
    }

    @Override
    public void init() {
        Universe.super.init();
        imperativeTransaction = universeTransaction.addImperative("", this::preCommit, this::commit, r -> {
            if (isRunning()) {
                modelAccess.runWriteInEDT(r);
            }
        }, false);
        imperativeTransaction.schedule(() -> REPOSITORY_CONTAINER.set(this, getRepository()));
        if (CONNECT_SYNC_HOST_PORT != null) {
            syncConnectionHandler = new SyncConnectionHandler(new DeltaAdaptor<>("mps", universeTransaction, new MPSSerializationHelper(dRepository.original())));
            int sep = CONNECT_SYNC_HOST_PORT.indexOf(':');
            String host = CONNECT_SYNC_HOST_PORT.substring(0, sep);
            int port = Integer.parseInt(CONNECT_SYNC_HOST_PORT.substring(sep + 1));
            syncConnectionHandler.connect(host, port);
        }
    }

    protected void start() {
        running = true;
        if (config.isTraceDclare()) {
            System.err.println(DCLARE + "START " + this);
        }
        objectChanges = new ObjectChanges();
        changedModels = Concurrent.of(Set.of());
        changedRoots = Concurrent.of(Set.of());
        allChangedModels = Set.of();
        allChangedModules = Set.of();
        allChangedRoots = Set.of();
        moduleChecker = new ModuleChecker();
        modelChecker = new ModelChecker();
        nodeChecker = new NodeChecker();
        languageEditorChecker = new LanguageEditorChecker(dRepository.original(), java.util.Collections.singletonList(new NodeCheckerInEditor()));
        CheckerRegistry checkerRegistry = project.getPlatform().findComponent(CheckerRegistry.class);
        assert checkerRegistry != null;
        checkerRegistry.registerChecker(moduleChecker);
        checkerRegistry.registerChecker(modelChecker);
        checkerRegistry.registerChecker(nodeChecker);
        ModelsExtractorImpl modelExtractor = new ModelCheckerBuilder.ModelsExtractorImpl().excludeGenerators();
        @SuppressWarnings("RedundantCast") // strange double cast to satisfy javac
        java.util.List<? extends IChecker<?, ? extends IssueKindReportItem>> checkers = (java.util.List<? extends IChecker<?, ? extends IssueKindReportItem>>) (java.util.List<IChecker<?, ?>>) checkerRegistry.getCheckers();
        mpsChecker = new DclareModelCheckerBuilder(this, modelExtractor).createChecker(checkers);
        Highlighter highlighter = project.getComponent(Highlighter.class);
        highlighter.addChecker(languageEditorChecker);
        universeTransaction.put(universeTransaction.initAction());
    }

    protected void stop() {
        if (running) {
            if (CONNECT_SYNC_HOST_PORT != null) {
                syncConnectionHandler.disconnect();
            }
            running = false;
            if (config.isTraceDclare()) {
                System.err.println(DCLARE + "STOP  " + this);
            }
            State state = universeTransaction.lastState();
            modelAccess.executeCommandInEDT(() -> commandThread = null);
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
            state.run(() -> getRepository().stop(this));
        }
        universeTransaction.kill();
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
            engine.stopDClareMPS();
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

    public boolean hasMessages() {
        return messages.anyMatch(t -> !t.getValue().isEmpty());
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

    private final class ObjectChanges extends Concurrent<List<BiConsumer<State, State>>> {

        private ObjectChanges() {
            super(List.of());
        }

        @Override
        protected List<BiConsumer<State, State>> merge(List<BiConsumer<State, State>> base, List<BiConsumer<State, State>>[] branches, int l) {
            List<BiConsumer<State, State>> result = base;
            for (int i = 0; i < branches.length; i++) {
                result = result.appendList(branches[i]);
            }
            return result;
        }
    }

    private class CommitInfo {
        private final List<BiConsumer<State, State>> changes;
        private final Set<SModel>                    models;
        private final Set<SModule>                   modules;
        private final Set<SNode>                     roots;

        public CommitInfo() {
            this.changes = objectChanges.result();
            this.models = changedModels.result();
            this.modules = changedModules.result();
            this.roots = changedRoots.result();
            objectChanges.init(List.of());
            changedModels.init(Set.of());
            changedModules.init(Set.of());
            changedRoots.init(Set.of());
        }
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    private CommitInfo preCommit(State pre, State post, Boolean timeTraveling) {
        if (isRunning() && !universeTransaction.isKilled()) {
            pre.diff(post, o -> o instanceof DObject && !((DObject) o).isDclareOnly() && ((DObject) o).isActive()).forEach(e0 -> {
                DObject dObject = (DObject) e0.getKey();
                boolean external = dObject.isExternal();
                boolean changed = false;
                DefaultMap<Setable, Object> preProps = e0.getValue().a();
                DefaultMap<Setable, Object> postProps = e0.getValue().b();
                for (DObserved observed : dObject.dClass().dObserveds()) {
                    if (observed instanceof DObservedAttribute || !external) {
                        Object preVal = preProps.get(observed);
                        Object postVal = postProps.get(observed);
                        Object readVal = observed.fromMPS(dObject, preVal, postVal);
                        if (!Objects.equals(readVal, postVal)) {
                            objectChanges.change(l -> l.add((b, a) -> observed.toMPS(dObject, b.get(dObject, observed), a.get(dObject, observed))));
                            changed = true;
                            if (TRACE_MPS_MODEL_CHANGES && !(observed instanceof DObservedAttribute)) {
                                System.err.println(DCLARE + "    MPS MODEL CHANGE: " + dObject + "." + observed + " = " + postVal);
                            }
                        }
                    }
                }
                if (!dObject.isExternal() && (changed || (!isContained(pre, dObject) && isContained(post, dObject)))) {
                    addChangedToModelCheck(dObject);
                }
            });
        }
        return new CommitInfo();
    }

    private static boolean isContained(State state, DObject dObject) {
        return state.get(dObject, Mutable.D_PARENT_CONTAINING) != null;
    }

    private void addChangedToModelCheck(DObject dObject) {
        if (dObject instanceof DModel) {
            SModel sModel = ((DModel) dObject).tryOriginal();
            if (sModel != null) {
                changedModels.change(s -> s.add(sModel));
            }
        } else if (dObject instanceof DNode) {
            DNode cont = ((DNode) dObject).getContainingRoot();
            SNode root = cont != null ? cont.tryOriginal() : null;
            if (root != null) {
                changedRoots.change(s -> s.add(root));
            }
        } else if (dObject instanceof DModule) {
            changedModules.change(s -> s.add(((DModule) dObject).original()));
        }
    }

    private void commit(State pre, State post, Boolean last, CommitInfo info) {
        if (isRunning() && !universeTransaction.isKilled()) {
            if (config.isTraceDclare()) {
                System.err.println(DCLARE + "    START COMMIT " + this);
            }
            committing.set(true);
            try {
                allChangedModels = allChangedModels.addAll(info.models);
                allChangedModules = allChangedModules.addAll(info.modules);
                allChangedRoots = allChangedRoots.addAll(info.roots);
                info.changes.forEachOrdered(c -> c.accept(pre, post));
                if (last) {
                    runModelCheck(allChangedModels, allChangedModules, allChangedRoots);
                }
            } finally {
                committing.set(false);
                if (last) {
                    allChangedModels = Set.of();
                    allChangedModules = Set.of();
                    allChangedRoots = Set.of();
                }
                if (config.isTraceDclare()) {
                    System.err.println(DCLARE + "    END COMMIT " + this);
                }
            }
        }
    }

    private void runModelCheck(Set<SModel> models, Set<SModule> modules, Set<SNode> roots) {
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
        if (ALL_DCLARE_MPS.isEmpty()) {
            return null;
        }
        if (ALL_DCLARE_MPS.size() == 1) {
            return ALL_DCLARE_MPS.get(0);
        }
        if (sObject instanceof SNode) {
            sObject = ((SNode) sObject).getModel();
        }
        if (sObject instanceof SModel) {
            sObject = ((SModel) sObject).getModule();
        }
        if (sObject instanceof SModule) {
            for (DClareMPS dClareMPS : ALL_DCLARE_MPS) {
                if (dClareMPS.project.getPath((SModule) sObject) != null) {
                    return dClareMPS;
                }
            }
        }
        if (sObject instanceof SRepository) {
            for (DClareMPS dClareMPS : ALL_DCLARE_MPS) {
                if (dClareMPS.dRepository.original().equals(sObject)) {
                    return dClareMPS;
                }
            }
        }
        if (sObject instanceof SLanguage) {
            for (DClareMPS dClareMPS : ALL_DCLARE_MPS) {
                for (SModule module : dClareMPS.project.getProjectModules()) {
                    if (module.getUsedLanguages().contains((SLanguage) sObject)) {
                        return dClareMPS;
                    }
                }
            }
        }
        return ALL_DCLARE_MPS.get(0);
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
                engine.stopDClareMPS();
                throw t;
            } finally {
                thePool.shutdownNow();
                if (config.isTraceDclare()) {
                    System.err.println(DCLARE + "AWAIT TERMINATION   " + this);
                }
                try {
                    //noinspection ResultOfMethodCallIgnored
                    thePool.awaitTermination(99, TimeUnit.DAYS);
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

}
