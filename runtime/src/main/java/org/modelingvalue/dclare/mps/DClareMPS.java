//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2022 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import static org.modelingvalue.dclare.SetableModifier.containment;

import java.lang.Thread.UncaughtExceptionHandler;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.Supplier;
import java.util.stream.Collectors;

import javax.swing.SwingUtilities;

import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.util.Consumer;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.DefaultMap;
import org.modelingvalue.collections.Entry;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.QualifiedSet;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Concurrent;
import org.modelingvalue.collections.util.Context;
import org.modelingvalue.collections.util.ContextThread;
import org.modelingvalue.collections.util.ContextThread.ContextPool;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.dclare.*;
import org.modelingvalue.dclare.UniverseTransaction.Status;
import org.modelingvalue.dclare.ex.*;
import org.modelingvalue.dclare.mps.DAttribute.DObservedAttribute;
import org.modelingvalue.dclare.mps.DRule.DObserver;
import org.modelingvalue.dclare.mps.DclareModelCheckerBuilder.RootItemsToCheck;
import org.modelingvalue.dclare.sync.DeltaAdaptor;
import org.modelingvalue.dclare.sync.SyncConnectionHandler;

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
import jetbrains.mps.errors.item.*;
import jetbrains.mps.errors.item.IssueKindReportItem.CheckerCategory;
import jetbrains.mps.nodeEditor.Highlighter;
import jetbrains.mps.progress.EmptyProgressMonitor;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.ProjectBase;
import jetbrains.mps.project.ProjectRepository;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.language.LanguageRuntime;

@SuppressWarnings({"unused", "RedundantSuppression"})
public class DClareMPS implements StateDeltaHandler, Universe, UncaughtExceptionHandler {

    public static final Context<Boolean>                                                                RUNNING_DCLARE           = Context.of(false);
    protected static final Context<Boolean>                                                             GET_FROM_MPS             = Context.of(false);

    @SuppressWarnings("rawtypes")
    protected static final DefaultMap<Pair<String, Integer>, List<DMethod>>                             EMPTY_METHOD_MAP         = DefaultMap.of(k -> List.of());

    private static final Constant<SLanguage, IRuleAspect>                                               RULE_ASPECT              = Constant.of("RULE_ASPECT", l -> {
                                                                                                                                     LanguageRuntime rtLang = registry().getLanguage(l);
                                                                                                                                     return rtLang != null ? rtLang.getAspect(IRuleAspect.class) : null;
                                                                                                                                 });
    protected static Constant<SLanguage, Map<String, DAttribute<?, ?>>>                                 ATTRIBUTE_MAP            = Constant.of("ATTRIBUTE_MAP", l -> {
                                                                                                                                     Collection<DAttribute<?, ?>> attrs1 = DClareMPS.STRUCT_CLASS_MAP.get(l).flatMap(e -> e.getValue().getIdentity());
                                                                                                                                     Collection<DAttribute<?, ?>> attrs2 = DClareMPS.RULE_SETS.get(l).flatMap(rs -> Collection.of(rs.getAllAttributes()));
                                                                                                                                     return Collection.concat(attrs1, attrs2).toMap(a -> Entry.of(a.id(), a));
                                                                                                                                 });
    protected static Constant<SLanguage, Map<String, SStructClass>>                                     STRUCT_CLASS_MAP         = Constant.of("STRUCT_CLASS_MAP", l -> {
                                                                                                                                     IRuleAspect aspect = RULE_ASPECT.get(l);
                                                                                                                                     Set<SStructClass> structClasses = aspect != null ? Collection.of(aspect.getStructClasses()).toSet() : Set.of();
                                                                                                                                     return structClasses.toMap(s -> Entry.of(s.id(), s));
                                                                                                                                 });
    protected static Constant<SLanguage, Map<String, IAspect>>                                          ASPECT_MAP               = Constant.of("ASPECT_MAP", l -> {
                                                                                                                                     IRuleAspect aspect = RULE_ASPECT.get(l);
                                                                                                                                     Set<IAspect> aspects = aspect != null ? Collection.of(aspect.getAspects()).toSet() : Set.of();
                                                                                                                                     return aspects.toMap(a -> Entry.of(a.getId(), a));
                                                                                                                                 });
    protected static Constant<SLanguage, Map<String, DMethod<?>>>                                       ALL_METHODS_MAP          = Constant.of("ALL_METHODS_MAP", l -> {
                                                                                                                                     Collection<DMethod<?>> methods = DClareMPS.RULE_SETS.get(l).flatMap(rs -> Collection.of(rs.getAllMethods()));
                                                                                                                                     return methods.toMap(m -> Entry.of(m.id(), m));
                                                                                                                                 });
    protected static Constant<SLanguage, Map<SNodeReference, DRule<?>>>                                 ALL_RULES_MAP            = Constant.of("ALL_RULES_MAP", l -> {
                                                                                                                                     Collection<DRule<?>> rules = DClareMPS.RULE_SETS.get(l).flatMap(rs -> Collection.of(rs.getAllRules()));
                                                                                                                                     return rules.toMap(m -> Entry.of(m.getSource(), m));
                                                                                                                                 });
    protected static Constant<SLanguage, Set<SReferenceLink>>                                           REFERENCES_WITH_OPPOSITE = Constant.of("REFERENCES_WITH_OPPOSITE", l -> {
                                                                                                                                     IRuleAspect aspect = RULE_ASPECT.get(l);
                                                                                                                                     return aspect != null ? Collection.of(aspect.getReferencesWithOpposite()).toSet() : Set.of();
                                                                                                                                 });
    @SuppressWarnings("rawtypes")
    protected static Constant<Set<SLanguage>, DefaultMap<Pair<String, Integer>, List<DMethod>>>         METHOD_MAP               = Constant.of("METHOD_MAP", ls -> {
                                                                                                                                     Set<IRuleSet> ruleSets = ls.flatMap(DClareMPS.ACTIVE_RULE_SETS::get).toSet();
                                                                                                                                     DefaultMap<Pair<String, Integer>, List<DMethod>> map = EMPTY_METHOD_MAP;
                                                                                                                                     for (DMethod m : ruleSets.flatMap(rs -> Collection.of(rs.getAllMethods()))) {
                                                                                                                                         Pair<String, Integer> k = Pair.of(m.name(), m.signature().size());
                                                                                                                                         map = map.put(k, map.get(k).add(m));
                                                                                                                                     }
                                                                                                                                     return map.toDefaultMap(EMPTY_METHOD_MAP.defaultFunction(),                                                          //
                                                                                                                                             e -> Entry.of(e.getKey(), e.getValue().sorted(Comparator.comparing(DMethod::signature)).toList()));
                                                                                                                                 });
    protected static Constant<DClareMPS, Map<SNodeReference, DRule<?>>>                                 RULE_MAP                 = Constant.of("RULE_MAP", dClareMPS -> {
                                                                                                                                     return DRepository.ALL_LANGUAGES_WITH_RULES.get(dClareMPS.getRepository()).flatMap(ALL_RULES_MAP::get).toMap(e -> e);
                                                                                                                                 });
    private static final Set<DMessageType>                                                              MESSAGE_TYPES            = Collection.of(DMessageType.values()).toSet();
    private static final QualifiedSet<Triple<DObject, DFeature, String>, DMessage>                      MESSAGE_QSET             = QualifiedSet.of(m -> Triple.of(m.context(), m.feature(), m.id()));
    protected static final Map<DMessageType, QualifiedSet<Triple<DObject, DFeature, String>, DMessage>> MESSAGE_QSET_MAP         = MESSAGE_TYPES.sequential().toMap(t -> Entry.of(t, MESSAGE_QSET));
    private static final MutableClass                                                                   UNIVERSE_CLASS           = new MutableClass() {
                                                                                                                                     @Override
                                                                                                                                     public Collection<? extends Observer<?>> dObservers() {
                                                                                                                                         return Collection.of();
                                                                                                                                     }

                                                                                                                                     @Override
                                                                                                                                     public Collection<? extends Setable<? extends Mutable, ?>> dSetables() {
                                                                                                                                         return SETABLES;
                                                                                                                                     }
                                                                                                                                 };
    private static final Constant<SLanguage, Set<IRuleSet>>                                             RULE_SETS                = Constant.of("RULE_SETS", Set.of(), l -> {
                                                                                                                                     IRuleAspect aspect = RULE_ASPECT.get(l);
                                                                                                                                     return aspect != null ? Collection.of(aspect.getRuleSets()).toSet() : Set.of();
                                                                                                                                 });
    public static final Constant<SLanguage, Set<IRuleSet>>                                              ACTIVE_RULE_SETS         = Constant.of("ACTIVE_RULE_SETS", Set.of(), l -> {
                                                                                                                                     DClareMPS dclareMPS = DClareMPS.instance();
                                                                                                                                     return RULE_SETS.get(l).filter(rs -> dclareMPS.isActiveAspect(rs.getAspect())).toSet();
                                                                                                                                 });
    public static final Constant<SLanguage, Set<IAspect>>                                               ASPECTS                  = Constant.of("ASPECTS", Set.of(), l -> {
                                                                                                                                     IRuleAspect aspect = RULE_ASPECT.get(l);
                                                                                                                                     return aspect != null ? Collection.of(aspect.getAspects()).toSet() : Set.of();
                                                                                                                                 });
    public static final Constant<SAbstractConcept, SLanguage>                                           LANGUAGE                 = Constant.of("LANGUAGE", null, SAbstractConcept::getLanguage);

    public static final Constant<DevKit, Set<SLanguage>>                                                DEVKIT_LANGUAGES         = Constant.of("DEVKIT_LANGUAGES", Set.of(), devkit -> Collection.of(devkit.getAllExportedLanguageIds()).toSet());
    protected static final Setable<DClareMPS, DRepository>                                              REPOSITORY_CONTAINER     = Setable.of("REPOSITORY_CONTAINER", null, containment);
    private static final Setable<DClareMPS, DServerMetaData>                                            DSERVER_METADATA         = Setable.of("SERVER_METADATA", null, containment);
    protected static final Set<? extends Setable<? extends Mutable, ?>>                                 SETABLES                 = Set.of(REPOSITORY_CONTAINER, DSERVER_METADATA);
    //
    private final int                                                                                   nr;
    private final ContextPool                                                                           thePool                  = ContextThread.createPool(this);
    private final MPSUniverseTransaction                                                                universeTransaction;
    private final DclareForMpsConfig                                                                    config;
    protected final ProjectBase                                                                         project;
    private final ModelAccess                                                                           modelAccess;
    protected final Concurrent<ReusableTransaction<DRule.DObserver<?>, DRule.DObserverTransaction>>     dObserverTransactions;
    protected final Concurrent<ReusableTransaction<DNode.DCopyObserver, DNode.DCopyTransaction>>        dCopyObserverTransactions;
    private final DclareForMPSEngine                                                                    engine;
    private final AtomicLong                                                                            counter                  = new AtomicLong(0L);
    private final DRepository                                                                           dRepository;
    private final DServerMetaData                                                                       dServerMetaData;
    //
    private Map<DMessageType, QualifiedSet<Triple<DObject, DFeature, String>, DMessage>>                messages                 = MESSAGE_QSET_MAP;
    private boolean                                                                                     running                  = false;
    private ImperativeTransaction                                                                       imperativeTransaction;
    private Thread                                                                                      commandThread;
    private ModuleChecker                                                                               moduleChecker;
    private ModelChecker                                                                                modelChecker;
    private NodeChecker                                                                                 nodeChecker;
    private LanguageEditorChecker                                                                       languageEditorChecker;
    private IAbstractChecker<ItemsToCheck, IssueKindReportItem>                                         mpsChecker;
    private SyncConnectionHandler                                                                       syncConnectionHandler;
    private Concurrent<Set<SModel>>                                                                     changedModels;
    private Concurrent<Set<SModule>>                                                                    changedModules;
    private Concurrent<Set<SNode>>                                                                      changedRoots;
    private ConstantState                                                                               derivationState;
    private int                                                                                         modelCheckNr;

    protected DClareMPS(DclareForMPSEngine engine, ProjectBase project, DclareForMpsConfig config, int nr, Status[] startStatus) {
        this.nr = nr;
        this.config = config;
        this.project = project;
        this.modelAccess = project.getModelAccess();
        this.engine = engine;
        this.dRepository = new DRepository((ProjectRepository) project.getRepository());
        this.dServerMetaData = new DServerMetaData();
        invokeLater(() -> commandThread = Thread.currentThread());
        if (config.isTraceDclare()) {
            System.err.println(DclareTrace.getLineStart("BEGIN", null) + this);
        }
        universeTransaction = new MPSUniverseTransaction(this, thePool, startStatus, config);
        this.derivationState = new ConstantState("DERIVE", universeTransaction::handleException);
        this.dObserverTransactions = Concurrent.of(() -> new ReusableTransaction<>(universeTransaction));
        this.dCopyObserverTransactions = Concurrent.of(() -> new ReusableTransaction<>(universeTransaction));
        new ShutdownHelperThread();
    }

    public DclareForMPSEngine engine() {
        return engine;
    }

    public DclareForMpsConfig getConfig() {
        return config;
    }

    protected List<IAspect> getAllAspects() {
        return imperativeState().get(() -> DRepository.ALL_ASPECTS.get(getRepository()));
    }

    protected boolean isActiveAspect(IAspect aspect) {
        String[] inactiveAspects = config.getInactiveAspects();
        for (String inactiveAspect : inactiveAspects) {
            if (inactiveAspect.equals(aspect.getId())) {
                return false;
            }
        }
        return true;
    }

    public boolean isCollaberationEnabled() {
        return config.isRemoteModelSynchronization() && config.getRemoteModelSynchronizationServer() != null && !config.getRemoteModelSynchronizationServer().isBlank();
    }

    @Override
    public void init() {
        Universe.super.init();
        imperativeTransaction = universeTransaction.addImperative("MPS", this, r -> {
            if (isRunning()) {
                invokeLater(r);
            }
        }, false);
        imperativeTransaction.schedule(() -> REPOSITORY_CONTAINER.set(this, getRepository()));
        imperativeTransaction.schedule(() -> DSERVER_METADATA.set(this, dServerMetaData));
        if (isCollaberationEnabled()) {
            syncConnectionHandler = new SyncConnectionHandler(new DeltaAdaptor<>("mps", universeTransaction, new MPSSerializationHelper(dRepository.original())));
            String server = config.getRemoteModelSynchronizationServer();
            String[] hostAndPort = server.split(":", 2);
            if (hostAndPort.length != 2 || !hostAndPort[1].matches("[0-9]+")) {
                System.err.println("ERROR: remote model synchronization server not the proper format, should be: '<host>:<port>' but is " + server);
            } else {
                String host = hostAndPort[0];
                int port = Integer.parseInt(hostAndPort[1]);
                System.err.println("INFO: remote model synchronization connecting to " + host + " at port " + port);
                syncConnectionHandler.connect(host, port);
            }
        }
    }

    protected void start() {
        running = true;
        if (config.isTraceDclare()) {
            System.err.println(DclareTrace.getLineStart("START", null) + this);
        }
        changedModels = Concurrent.of(Set.of());
        changedModules = Concurrent.of(Set.of());
        changedRoots = Concurrent.of(Set.of());
        moduleChecker = new ModuleChecker();
        modelChecker = new ModelChecker();
        nodeChecker = new NodeChecker();
        languageEditorChecker = new LanguageEditorChecker(dRepository.original(), Collections.singletonList(new NodeCheckerInEditor()));
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
            if (isCollaberationEnabled()) {
                syncConnectionHandler.disconnect();
            }
            running = false;
            if (config.isTraceDclare()) {
                System.err.println(DclareTrace.getLineStart("STOP", null) + this);
            }
            State state = universeTransaction.lastState();
            invokeLater(() -> commandThread = null);
            CheckerRegistry checkerRegistry = project.getPlatform().findComponent(CheckerRegistry.class);
            if (checkerRegistry == null) {
                throw new Error("CheckerRegistry not found in platform");
            }
            checkerRegistry.unregisterChecker(moduleChecker);
            checkerRegistry.unregisterChecker(modelChecker);
            checkerRegistry.unregisterChecker(nodeChecker);
            Highlighter highlighter = project.getComponent(Highlighter.class);
            readInEDT(() -> highlighter.removeChecker(languageEditorChecker));
            ImperativeTransaction it = imperativeTransaction;
            if (it != null) {
                invokeLater(it::stop);
                imperativeTransaction = null;
            }
            state.run(() -> getRepository().stop(this));
        }
        universeTransaction.kill();
    }

    @SuppressWarnings("unused") // called from MPS
    public void addTraceMessage(String txType, Object node, String msg) {
        addMessage(new DMessage(getRepository(), DRepository.MODULES, DMessageType.info, Long.toHexString(System.nanoTime()), txType + " " + msg + ": " + node));
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
            if (throwables.anyMatch(t -> !(t instanceof DebugTrace))) {
                engine.stopDClareMPS();
            }
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
        } else if (t instanceof DebugTrace) {
            addDebugTraceMessage(object, feature, (DebugTrace) t);
        } else if (t instanceof ThrowableError) {
            addThrowableMessage(object, feature, t);
        } else {
            addThrowableMessage(object, feature, t);
        }
    }

    @SuppressWarnings("rawtypes")
    private void addTooManyChangesExceptionMessage(DObject context, DFeature feature, TooManyChangesException tmce) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "TOO_MANY_CHANGES", "Too many changes, running " + feature + " changes=" + tmce.getNrOfChanges());
        tmce.getLast().trace(message, //
                (m, r) -> m.addSubMessage(new DMessage((DObject) r.mutable(), feature(r.observer()), DMessageType.error, " ", //
                        "run  : " + feature(r.observer()) + " nr: " + r.nrOfChanges())), //
                (m, r, s) -> m.addSubMessage(new DMessage((DObject) s.mutable(), (DObserved) s.observed(), DMessageType.error, " ", //
                        "read : " + s.observed() + "=" + r.read().get(s))), //
                (m, w, s) -> m.subMessages().last().addSubMessage(new DMessage((DObject) s.mutable(), (DObserved) s.observed(), DMessageType.error, " ", //
                        "write: " + s.observed() + "=" + w.written().get(s))), //
                m -> m.subMessages().last(), universeTransaction().stats().maxNrOfChanges());
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private void addDebugTraceMessage(DObject object, DFeature feature, DebugTrace dt) {
        String time = DateTimeFormatter.ISO_LOCAL_TIME.format(ZonedDateTime.ofInstant(dt.trace().time(), ZoneId.systemDefault()));
        DMessage message = new DMessage(object, feature, DMessageType.debug, "DEBUG_TRACE " + time, "Run " + feature);
        for (Entry<ObservedInstance, Object> read : dt.trace().read().filter(e -> !e.getKey().observed().isPlumbing())) {
            ObservedInstance s = read.getKey();
            message.addSubMessage(new DMessage((DObject) s.mutable(), (DObserved) s.observed(), DMessageType.debug, " ", //
                    "read : " + s.observed() + "=" + read.getValue()));
        }
        for (Entry<ObservedInstance, Object> write : dt.trace().written().filter(e -> !e.getKey().observed().isPlumbing())) {
            ObservedInstance s = write.getKey();
            message.addSubMessage(new DMessage((DObject) s.mutable(), (DObserved) s.observed(), DMessageType.debug, " ", //
                    "write: " + s.observed() + "=" + write.getValue()));
        }
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

    protected Map<DMessageType, QualifiedSet<Triple<DObject, DFeature, String>, DMessage>> getMessages() {
        return messages;
    }

    protected void removeDebugMessages(DFeature feature) {
        messages = messages.toMap(e -> e.getKey() == DMessageType.debug ? Entry.of(e.getKey(), //
                e.getValue().filter(t -> !feature.equals(t.b())).toQualifiedSet(e.getValue().qualifier())) : e);
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
        return "Universe[" + project.getName() + ":" + nr + "]";
    }

    public void handleMPSChange(Runnable action) {
        if (isRunning()) {
            if (Thread.currentThread() == commandThread) {
                if (!RUNNING_DCLARE.get()) {
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

    protected boolean isRunningRead() {
        return dRepository.getModelAccess().canRead();
    }

    public void invokeLater(Runnable runnable) {
        SwingUtilities.invokeLater(() -> {
            try {
                RUNNING_DCLARE.run(true, runnable);
            } catch (Throwable t) {
                addMessage(t);
            }
        });
    }

    public void read(Runnable runnable) {
        modelAccess.runReadAction(Collection.sequential(() -> RUNNING_DCLARE.run(true, runnable)));
    }

    public void write(Runnable runnable) {
        modelAccess.runWriteAction(Collection.sequential(() -> RUNNING_DCLARE.run(true, runnable)));
    }

    public void command(Runnable runnable) {
        modelAccess.executeUndoTransparentCommand(Collection.sequential(() -> RUNNING_DCLARE.run(true, runnable)));
    }

    public void readInEDT(Runnable runnable) {
        invokeLater(() -> read(runnable));
    }

    public void writeInEDT(Runnable runnable) {
        invokeLater(() -> write(runnable));
    }

    public void commandInEDT(Runnable runnable) {
        invokeLater(() -> command(runnable));
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
        return instance(LeafTransaction.getCurrent());
    }

    public static DClareMPS instance(Transaction tx) {
        return (DClareMPS) tx.universeTransaction().mutable();
    }

    public static long uniqueLong() {
        return instance().counter.getAndIncrement();
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public void handleDelta(State imper, State dclare, boolean last, DefaultMap<Object, Set<Setable>> setted) {
        if (isRunning() && !universeTransaction.isKilled()) {
            if (config.isTraceDclare()) {
                System.err.println(DclareTrace.getLineStart("COMMIT", imperativeTransaction) + "START " + this);
            }
            boolean changed = false;
            Map<DObject, Map<DObserved, Pair<Object, Object>>>[] diff = new Map[]{imper.diff(dclare, //
                    o -> o instanceof DObject && ((DObject) o).isActive() && !((DObject) o).isDclareOnly(), //
                    s -> s instanceof DObserved && !((DObserved) s).isDclareOnly()).toMap(e -> (Entry) e)};
            if (!diff[0].isEmpty()) {
                changed = true;
                command(() -> {
                    do {
                        toMPS(imper, dclare, diff, diff[0].get(0).getKey());
                    } while (!diff[0].isEmpty());
                });
            }
            if (last) {
                if (!setted.isEmpty()) {
                    changed = true;
                    read(() -> {
                        for (DObject dObject : setted.filter(e -> e.getValue().anyMatch(s -> s instanceof DObserved && !((DObserved) s).isDclareOnly())).map(Entry::getKey).filter(DObject.class)) {
                            addToChanged(dObject);
                        }
                    });
                }
                if (!config.isDisableAutoModelCheck()) {
                    runModelCheck();
                }
            }
            if (changed) {
                createNewDerivationState();
            }
            if (config.isTraceDclare()) {
                System.err.println(DclareTrace.getLineStart("COMMIT", imperativeTransaction) + "END " + this);
            }
        }
    }

    private void createNewDerivationState() {
        ConstantState ds = derivationState;
        derivationState = new ConstantState(ds.toString(), universeTransaction::handleException);
        ds.stop();
    }

    protected ConstantState derivationState() {
        return derivationState;
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    private void toMPS(State pre, State post, Map<DObject, Map<DObserved, Pair<Object, Object>>>[] diff, DObject dObject) {
        Map<DObserved, Pair<Object, Object>> delta = diff[0].get(dObject);
        if (delta != null) {
            diff[0] = diff[0].removeKey(dObject);
            parentToMPS(pre, post, diff, dObject);
            boolean changed = false;
            for (Entry<DObserved, Pair<Object, Object>> e : delta) {
                DObserved dObserved = e.getKey();
                Object preVal = dObserved.fromMPS(dObject, e.getValue().a());
                Object postVal = e.getValue().b();
                if (!Objects.equals(preVal, postVal)) {
                    changed = true;
                    if (dObserved.isReference()) {
                        DObserved.diff(preVal, postVal, a -> {
                            if (a instanceof DObject) {
                                parentToMPS(pre, post, diff, (DObject) a);
                            }
                        }, r -> {
                        });
                    }
                    dObserved.toMPS(dObject, preVal, postVal);
                    if (getConfig().isTraceMPSModelChanges() && !(dObserved instanceof DObservedAttribute) && dObserved != DObject.CONTAINED) {
                        System.err.println(DclareTrace.getLineStart("MPS", imperativeTransaction) + "MODEL CHANGE " + dObject + "." + dObserved + " = " + State.shortValueDiffString(preVal, postVal));
                    }
                }
            }
            if (changed) {
                addToChanged(dObject);
            }
        }
    }

    @SuppressWarnings({"rawtypes"})
    private void parentToMPS(State imper, State dclare, Map<DObject, Map<DObserved, Pair<Object, Object>>>[] diff, DObject dObject) {
        Pair<Mutable, Setable<Mutable, ?>> pair = dclare.get(dObject, Mutable.D_PARENT_CONTAINING);
        if (pair != null && pair.a() instanceof DObject && pair.b() instanceof DObserved) {
            toMPS(imper, dclare, diff, (DObject) pair.a());
        }
    }

    private void addToChanged(DObject dObject) {
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

    public DRepository getRepository() {
        return dRepository;
    }

    public DServerMetaData getServerMetaData() {
        return dServerMetaData;
    }

    public boolean isRunning() {
        return running && imperativeTransaction != null;
    }

    private static LanguageRegistry registry() {
        return LanguageRegistry.getInstance(instance().getRepository().original());
    }

    public static <T> T pre(Supplier<T> supplier) {
        return LeafTransaction.getCurrent().universeTransaction().preOuterStartState().get(supplier);
    }

    public static <T> T post(Supplier<T> supplier) {
        return LeafTransaction.getCurrent().universeTransaction().outerStartState().get(supplier);
    }

    public UniverseTransaction universeTransaction() {
        return universeTransaction;
    }

    @Override
    public MutableClass dClass() {
        return UNIVERSE_CLASS;
    }

    protected State imperativeState() {
        ImperativeTransaction itx = imperativeTransaction;
        return itx != null ? itx.state() : universeTransaction.preState();
    }

    public static <T> T get(Object sObject, Supplier<T> supplier) {
        DClareMPS dClareMPS = dClareForObject(sObject);
        State state = dClareMPS != null ? dClareMPS.imperativeState() : null;
        return state != null ? state.get(() -> GET_FROM_MPS.get(true, () -> {
            DObject dObject = dClareMPS.toDObject(sObject);
            if (dObject.isExternal()) {
                return state.derive(supplier, dClareMPS.universeTransaction().constantState());
            } else if (dObject.isActive()) {
                try {
                    return supplier.get();
                } catch (Throwable t) {
                    dClareMPS.addMessage(t);
                    return null;
                }
            } else {
                return state.derive(supplier, dClareMPS.derivationState());
            }
        })) : null;
    }

    private static DClareMPS dClareForObject(Object sObject) {
        if (sObject instanceof SNode) {
            sObject = ((SNode) sObject).getModel();
        }
        if (sObject instanceof SModel) {
            sObject = ((SModel) sObject).getModule();
        }
        if (sObject instanceof SModule) {
            for (DClareMPS dClareMPS : DclareForMPSEngine.ALL_DCLARE_MPS) {
                if (dClareMPS.project.getPath((SModule) sObject) != null) {
                    return dClareMPS;
                }
            }
        } else if (sObject instanceof SRepository) {
            for (DClareMPS dClareMPS : DclareForMPSEngine.ALL_DCLARE_MPS) {
                if (dClareMPS.dRepository.original().equals(sObject)) {
                    return dClareMPS;
                }
            }
        } else {
            throw new UnsupportedOperationException("Non supported sObject " + sObject);
        }
        return null;
    }

    @SuppressWarnings("unchecked")
    private DObject toDObject(Object sObject) {
        if (sObject instanceof SNode) {
            return DNode.of(((SNode) sObject));
        } else if (sObject instanceof SModel) {
            return DModel.of(((SModel) sObject));
        } else if (sObject instanceof SModule) {
            return DModule.of(((SModule) sObject));
        } else if (sObject instanceof SRepository) {
            return getRepository();
        } else {
            throw new UnsupportedOperationException("No DObject possible for " + sObject);
        }
    }

    @Override
    public void uncaughtException(Thread thread, Throwable t) {
        addMessage(t);
    }

    @SuppressWarnings("RedundantSuppression")
    private final class MPSUniverseTransaction extends UniverseTransaction {
        private final DclareForMpsConfig config;

        private MPSUniverseTransaction(Universe universe, ContextPool pool, Status[] startStatus, DclareForMpsConfig config) {
            super(universe, pool, config.getDclareConfig(), startStatus);
            this.config = config;
        }

        @Override
        public void start(Action<Universe> action) {
            if (config.isTraceDclare()) {
                System.err.println(DclareTrace.getLineStart("ACTION", this) + "START " + action + "  " + this);
            }
        }

        @Override
        public void end(Action<Universe> action) {
            if (config.isTraceDclare()) {
                System.err.println(DclareTrace.getLineStart("ACTION", this) + "END " + action + "  " + this);
            }
        }

        @Override
        protected void handleInconsistencies(Set<Throwable> inconsistencies) {
            messages = MESSAGE_QSET_MAP;
            addMessages(inconsistencies);
        }

        @Override
        protected void handleExceptions() {
            messages = MESSAGE_QSET_MAP;
            addMessages(errors.getAndUpdate(es -> Set.of()));
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

        @SuppressWarnings("rawtypes")
        @Override
        protected State createState(DefaultMap<Object, DefaultMap<Setable, Object>> map) {
            return new MPSState(this, map);
        }

        @Override
        public <T, O> TransactionId setPreserved(O object, Setable<O, T> property, T post, Action<?> action) {
            TransactionId txid = super.setPreserved(object, property, post, action);
            if (action.read()) {
                imperativeTransaction.mutableState().set(object, property, post, txid);
            }
            return txid;
        }
    }

    private static final class MPSState extends State {
        private static final long serialVersionUID = 4292875367058590190L;

        @SuppressWarnings("rawtypes")
        private MPSState(UniverseTransaction universeTransaction, DefaultMap<Object, DefaultMap<Setable, Object>> map) {
            super(universeTransaction, map);
        }

        @SuppressWarnings({"unchecked", "rawtypes"})
        @Override
        public <O, T> T get(O object, Getable<O, T> property) {
            if (getFromMPS(object)) {
                DObject dObject = (DObject) object;
                if (dObject.isRead()) {
                    if (property instanceof DObserved) {
                        DObserved<DObject, T> dObserved = (DObserved<DObject, T>) property;
                        if (dObserved.isRead() && !dObserved.isDclareOnly() && !super.get(dObject, DObject.READ_OBSERVEDS).contains(property)) {
                            return dObserved.fromMPS(dObject);
                        }
                    } else if (property == Mutable.D_PARENT_CONTAINING && super.get((Mutable) object, Mutable.D_PARENT_CONTAINING) == null) {
                        return (T) dObject.readParent();
                    }
                }
            }
            return super.get(object, property);
        }

        @SuppressWarnings({"rawtypes", "unchecked"})
        @Override
        public <O, A, B> A getA(O object, Getable<O, Pair<A, B>> property) {
            if (property == (Getable) Mutable.D_PARENT_CONTAINING && getFromMPS(object)) {
                DObject dObject = (DObject) object;
                if (dObject.isRead() && super.get((Mutable) object, Mutable.D_PARENT_CONTAINING) == null) {
                    return (A) dObject.readParent().a();
                }
            }
            return super.getA(object, property);
        }

        @SuppressWarnings({"rawtypes", "unchecked"})
        @Override
        public <O, A, B> B getB(O object, Getable<O, Pair<A, B>> property) {
            if (property == (Getable) Mutable.D_PARENT_CONTAINING && getFromMPS(object)) {
                DObject dObject = (DObject) object;
                if (dObject.isRead() && super.get((Mutable) object, Mutable.D_PARENT_CONTAINING) == null) {
                    return (B) dObject.readParent().b();
                }
            }
            return super.getB(object, property);
        }

        private <O> boolean getFromMPS(O object) {
            return object instanceof DObject && !isPreState() && //
                    (ObserverTransaction.RIPPLE_OUT.get() || (LeafTransaction.getCurrent() instanceof IdentityDerivationTransaction));
        }

        private boolean isPreState() {
            UniverseTransaction utx = universeTransaction();
            return this == utx.preState() || this == utx.preOuterStartState();
        }
    }

    private class ModuleChecker extends IChecker.AbstractModuleChecker<ModuleReportItem> {
        @Override
        public void check(SModule sModule, SRepository repository, Consumer<? super ModuleReportItem> consumer, ProgressMonitor monitor) {
            if (isRunning()) {
                imperativeTransaction.state().run(() -> {
                    DModule dModule = DModule.of(sModule);
                    for (DIssue issue : DObject.DCLARE_ISSUES.get(dModule)) {
                        issue.getItem(i -> consumer.consume((ModuleReportItem) i));
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
                        issue.getItem(i -> consumer.consume((ModelReportItem) i));
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
                issue.getItem(i -> consumer.consume((NodeReportItem) i));
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
                    System.err.println(DclareTrace.getLineStart("AWAIT", null) + "TERMINATION " + this);
                }
                try {
                    //noinspection ResultOfMethodCallIgnored
                    thePool.awaitTermination(99, TimeUnit.DAYS);
                } catch (InterruptedException e) {
                    System.err.println(DclareTrace.getLineStart("ERROR", null) + "the pool did not terminate in time: " + this + " (Thread " + Thread.currentThread().getName() + " was interrupted)");
                    e.printStackTrace();
                }
                derivationState.stop();
                if (config.isTraceDclare()) {
                    System.err.println(DclareTrace.getLineStart("END", null) + this);
                    if (result != null) {
                        for (@SuppressWarnings("rawtypes")
                        Entry<Setable, Integer> e : result.count()) {
                            System.err.println(DclareTrace.getLineStart("COUNT", null) + e.getKey() + " = " + e.getValue());
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
                        issue.getItem(i -> errorsCollector.addError((NodeReportItem) i));
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
        int checkNr = modelCheckNr++;
        Set<SModel> models = changedModels.result();
        Set<SModule> modules = changedModules.result();
        Set<SNode> roots = changedRoots.result();
        changedModels.init(Set.of());
        changedModules.init(Set.of());
        changedRoots.init(Set.of());
        Set<IssueKindReportItem> allIssues = DRepository.ALL_MPS_ISSUES.get(dRepository);
        invokeLater(() -> thePool.execute(() -> {
            engine.issuesChanged(allIssues.collect(Collectors.toList()));
            if (!models.isEmpty() || !modules.isEmpty() || !roots.isEmpty()) {
                universeTransaction.addActive("Check Model " + checkNr);
                try {
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
                                if (item instanceof NodeFlavouredItem) {
                                    DNode root = root(repos, (NodeFlavouredItem) item);
                                    if (root != null) {
                                        DNode.ALL_MPS_ISSUES.set(root, Set::add, Pair.of(d, item));
                                    }
                                } else {
                                    DObject.MPS_ISSUES.set(d, Set::add, Pair.of(d, item));
                                }
                            }
                        }
                    });
                } finally {
                    universeTransaction.removeActive("Check Model " + checkNr);
                }
            }
        }));
    }

    private DNode root(SRepository repos, NodeFlavouredItem item) {
        return read(() -> {
            SNode s = item.getNode().resolve(repos);
            SNode r = s != null ? s.getContainingRoot() : null;
            return r != null ? DNode.of(r) : null;
        });
    }

    protected DObject context(ReportItem item) {
        SRepository repos = getRepository().original();
        if (item instanceof NodeFlavouredItem) {
            SNode s = ((NodeFlavouredItem) item).getNode().resolve(repos);
            return s != null ? DNode.of(s) : null;
        } else if (item instanceof ModelFlavouredItem) {
            SModel s = ((ModelFlavouredItem) item).getModel().resolve(repos);
            return s != null ? DModel.of(s) : null;
        } else if (item instanceof ModuleFlavouredItem) {
            SModule s = ((ModuleFlavouredItem) item).getModule().resolve(repos);
            return s != null ? DModule.of(s) : null;
        } else {
            return null;
        }
    }
}
