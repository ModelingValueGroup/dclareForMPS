//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2024 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Concurrent;
import org.modelingvalue.collections.util.Context;
import org.modelingvalue.collections.util.ContextPool;
import org.modelingvalue.collections.util.ContextThread;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.dclare.*;
import org.modelingvalue.dclare.Priority.Queued;
import org.modelingvalue.dclare.UniverseTransaction.Status;
import org.modelingvalue.dclare.ex.*;
import org.modelingvalue.dclare.mps.DAttribute.DObservedAttribute;
import org.modelingvalue.dclare.mps.DRule.DObserver;
import org.modelingvalue.dclare.mps.DRule.DObserverTransaction;
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
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.nodeEditor.Highlighter;
import jetbrains.mps.progress.EmptyProgressMonitor;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Project;
import jetbrains.mps.project.ProjectBase;
import jetbrains.mps.project.ProjectManager;
import jetbrains.mps.project.ProjectRepository;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.language.LanguageRuntime;

@SuppressWarnings({"unused", "RedundantSuppression"})
public class DClareMPS implements Universe, UncaughtExceptionHandler {

    public static final Context<Boolean>                                                                               RUNNING_DCLARE           = Context.of(false);
    protected static final Context<Boolean>                                                                            GET_FROM_MPS             = Context.of(false);

    @SuppressWarnings("rawtypes")
    protected static final DefaultMap<Pair<String, Integer>, List<DMethod>>                                            EMPTY_METHOD_MAP         = DefaultMap.of(k -> List.of());
    @SuppressWarnings("rawtypes")
    protected static final DefaultMap<INativeGroup, List<IChangeHandler>>                                              EMPTY_GROUP_MAP          = DefaultMap.of(h -> List.of());
    @SuppressWarnings("rawtypes")
    protected static final DefaultMap<DAttribute, DefaultMap<INativeGroup, List<IChangeHandler>>>                      EMPTY_HANDLER_MAP        = DefaultMap.of(h -> EMPTY_GROUP_MAP);

    private static final Constant<SLanguage, IRuleAspect>                                                              RULE_ASPECT              = Constant.of("RULE_ASPECT", l -> {
                                                                                                                                                    LanguageRuntime rtLang = registry().getLanguage(l);
                                                                                                                                                    return rtLang != null ? rtLang.getAspect(IRuleAspect.class) : null;
                                                                                                                                                });
    protected static final Constant<SLanguage, Map<String, DAttribute<?, ?>>>                                          ATTRIBUTE_MAP            = Constant.of("ATTRIBUTE_MAP", l -> {
                                                                                                                                                    Collection<DAttribute<?, ?>> attrs1 = DClareMPS.STRUCT_CLASS_MAP.get(l).flatMap(e -> e.getValue().getIdentity());
                                                                                                                                                    Collection<DAttribute<?, ?>> attrs2 = DClareMPS.RULE_SETS.get(l).flatMap(rs -> Collection.of(rs.getAllAttributes()));
                                                                                                                                                    return Collection.concat(attrs1, attrs2).asMap(a -> Entry.of(a.id(), a));
                                                                                                                                                });
    protected static final Constant<SLanguage, Map<String, SStructClass>>                                              STRUCT_CLASS_MAP         = Constant.of("STRUCT_CLASS_MAP", l -> {
                                                                                                                                                    IRuleAspect aspect = RULE_ASPECT.get(l);
                                                                                                                                                    Set<SStructClass> structClasses = aspect != null ? Collection.of(aspect.getStructClasses()).asSet() : Set.of();
                                                                                                                                                    return structClasses.asMap(s -> Entry.of(s.id(), s));
                                                                                                                                                });
    protected static final Constant<SLanguage, Map<String, IAspect>>                                                   ASPECT_MAP               = Constant.of("ASPECT_MAP", l -> {
                                                                                                                                                    return DClareMPS.ASPECTS.get(l).asMap(a -> Entry.of(a.getId(), a));
                                                                                                                                                });
    protected static final Constant<SLanguage, Map<String, IFixPointGroup>>                                            FIXPOINT_GROUP_MAP       = Constant.of("FIXPOINT_GROUP_MAP", l -> {
                                                                                                                                                    return DClareMPS.FIXPOINT_GROUPS.get(l).asMap(a -> Entry.of(a.getId(), a));
                                                                                                                                                });
    protected static final Constant<SLanguage, Map<String, DMethod<?>>>                                                ALL_METHODS_MAP          = Constant.of("ALL_METHODS_MAP", l -> {
                                                                                                                                                    Collection<DMethod<?>> methods = DClareMPS.RULE_SETS.get(l).flatMap(rs -> Collection.of(rs.getAllMethods()));
                                                                                                                                                    return methods.asMap(m -> Entry.of(m.id(), m));
                                                                                                                                                });
    protected static final Constant<SLanguage, Map<SNodeReference, DRule<?>>>                                          ALL_RULES_MAP            = Constant.of("ALL_RULES_MAP", l -> {
                                                                                                                                                    Collection<DRule<?>> rules = DClareMPS.RULE_SETS.get(l).flatMap(rs -> Collection.of(rs.getAllRules()));
                                                                                                                                                    return rules.asMap(m -> Entry.of(m.getSource(), m));
                                                                                                                                                });
    protected static final Constant<SLanguage, Set<SReferenceLink>>                                                    REFERENCES_WITH_OPPOSITE = Constant.of("REFERENCES_WITH_OPPOSITE", l -> {
                                                                                                                                                    IRuleAspect aspect = RULE_ASPECT.get(l);
                                                                                                                                                    return aspect != null ? Collection.of(aspect.getReferencesWithOpposite()).asSet() : Set.of();
                                                                                                                                                });
    @SuppressWarnings("rawtypes")
    protected static final Constant<Set<SLanguage>, DefaultMap<Pair<String, Integer>, List<DMethod>>>                  METHOD_MAP               = Constant.of("METHOD_MAP", ls -> {
                                                                                                                                                    Set<IRuleSet> ruleSets = ls.flatMap(DClareMPS.ACTIVE_RULE_SETS::get).asSet();
                                                                                                                                                    DefaultMap<Pair<String, Integer>, List<DMethod>> map = EMPTY_METHOD_MAP;
                                                                                                                                                    for (DMethod m : ruleSets.flatMap(rs -> Collection.of(rs.getAllMethods()))) {
                                                                                                                                                        Pair<String, Integer> k = Pair.of(m.name(), m.signature().size());
                                                                                                                                                        map = map.put(k, map.get(k).add(m));
                                                                                                                                                    }
                                                                                                                                                    return map.asDefaultMap(EMPTY_METHOD_MAP.defaultFunction(),                                                          //
                                                                                                                                                            e -> Entry.of(e.getKey(), e.getValue().sorted(Comparator.comparing(DMethod::signature)).asList()));
                                                                                                                                                });
    @SuppressWarnings("rawtypes")
    protected static final Constant<DClareMPS, DefaultMap<DAttribute, DefaultMap<INativeGroup, List<IChangeHandler>>>> HANDLER_MAP              = Constant.of("HANDLER_MAP", d -> {
                                                                                                                                                    Set<SLanguage> ls = DRepository.ALL_LANGUAGES_WITH_RULES.get(d.getRepository());
                                                                                                                                                    Set<IRuleSet> ruleSets = ls.flatMap(DClareMPS.ACTIVE_RULE_SETS::get).asSet();
                                                                                                                                                    DefaultMap<DAttribute, DefaultMap<INativeGroup, List<IChangeHandler>>> map = EMPTY_HANDLER_MAP;
                                                                                                                                                    for (INative<?> n : ruleSets.flatMap(rs -> Collection.of(rs.getAllNatives()))) {
                                                                                                                                                        INativeGroup ng = n.group();
                                                                                                                                                        for (IChangeHandler h : INative.ALL_HANDLERS.get(n)) {
                                                                                                                                                            DefaultMap<INativeGroup, List<IChangeHandler>> preMap = map.get(h.attribute());
                                                                                                                                                            List<IChangeHandler> preList = preMap.get(ng);
                                                                                                                                                            map = map.put(h.attribute(), preMap.put(ng, preList.add(h)));
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    return map;
                                                                                                                                                });
    protected static final Constant<DClareMPS, Map<SNodeReference, DRule<?>>>                                          RULE_MAP                 = Constant.of("RULE_MAP", dClareMPS -> {
                                                                                                                                                    return DRepository.ALL_LANGUAGES_WITH_RULES.get(dClareMPS.getRepository()).flatMap(ALL_RULES_MAP::get).asMap(e -> e);
                                                                                                                                                });
    protected static final DefaultMap<DMessageType, List<DMessage>>                                                    EMPTY_MESSAGE_LIST_MAP   = DefaultMap.of(t -> List.of());
    private static final MutableClass                                                                                  UNIVERSE_CLASS           = new MutableClass() {
                                                                                                                                                    @Override
                                                                                                                                                    public Collection<? extends Observer<?>> dObservers() {
                                                                                                                                                        return Collection.of();
                                                                                                                                                    }

                                                                                                                                                    @Override
                                                                                                                                                    public Collection<? extends Setable<? extends Mutable, ?>> dSetables() {
                                                                                                                                                        return SETABLES;
                                                                                                                                                    }
                                                                                                                                                };
    private static final Constant<SLanguage, Set<IRuleSet>>                                                            RULE_SETS                = Constant.of("RULE_SETS", Set.of(), l -> {
                                                                                                                                                    IRuleAspect aspect = RULE_ASPECT.get(l);
                                                                                                                                                    return aspect != null ? Collection.of(aspect.getRuleSets()).asSet() : Set.of();
                                                                                                                                                });
    public static final Constant<SLanguage, Set<IRuleSet>>                                                             ACTIVE_RULE_SETS         = Constant.of("ACTIVE_RULE_SETS", Set.of(), l -> {
                                                                                                                                                    DClareMPS dclareMPS = DClareMPS.instance();
                                                                                                                                                    return RULE_SETS.get(l).filter(rs -> dclareMPS.isActiveAspect(rs.getAspect())).asSet();
                                                                                                                                                });
    public static final Constant<SLanguage, Set<IAspect>>                                                              ASPECTS                  = Constant.of("ASPECTS", Set.of(), l -> {
                                                                                                                                                    IRuleAspect aspect = RULE_ASPECT.get(l);
                                                                                                                                                    return aspect != null ? Collection.of(aspect.getAspects()).asSet() : Set.of();
                                                                                                                                                });
    public static final Constant<SLanguage, Set<IFixPointGroup>>                                                       FIXPOINT_GROUPS          = Constant.of("FIXPOINT_GROUPS", Set.of(), l -> {
                                                                                                                                                    IRuleAspect aspect = RULE_ASPECT.get(l);
                                                                                                                                                    return aspect != null ? Collection.of(aspect.getFixPointGroups()).asSet() : Set.of();
                                                                                                                                                });
    protected static final Constant<SLanguage, Map<String, INativeGroup>>                                              NATIVE_GROUP_MAP         = Constant.of("NATIVE_GROUP_MAP", l -> {
                                                                                                                                                    return DClareMPS.NATIVE_GROUPS.get(l).asMap(a -> Entry.of(a.getId(), a));
                                                                                                                                                });
    public static final Constant<SLanguage, Set<INativeGroup>>                                                         NATIVE_GROUPS            = Constant.of("NATIVE_GROUPS", l -> {
                                                                                                                                                    IRuleAspect aspect = RULE_ASPECT.get(l);
                                                                                                                                                    return aspect != null ? Collection.of(aspect.getNativeGroups()).asSet() : Set.of();
                                                                                                                                                });
    public static final Constant<SAbstractConcept, SLanguage>                                                          LANGUAGE                 = Constant.of("LANGUAGE", null, SAbstractConcept::getLanguage);

    public static final Constant<DevKit, Set<SLanguage>>                                                               DEVKIT_LANGUAGES         = Constant.of("DEVKIT_LANGUAGES", Set.of(), devkit -> Collection.of(devkit.getAllExportedLanguageIds()).asSet());

    protected static final Setable<DClareMPS, DRepository>                                                             REPOSITORY_CONTAINER     = Setable.of("REPOSITORY_CONTAINER", null, containment);
    private static final Setable<DClareMPS, DServerMetaData>                                                           DSERVER_METADATA         = Setable.of("SERVER_METADATA", null, containment);
    protected static final Set<? extends Setable<? extends Mutable, ?>>                                                SETABLES                 = Set.of(REPOSITORY_CONTAINER, DSERVER_METADATA);

    //
    private final int                                                                                                  nr;
    private final ContextPool                                                                                          thePool                  = ContextThread.createPool(this);
    private final MPSUniverseTransaction                                                                               universeTransaction;
    private final DclareForMpsConfig                                                                                   config;
    protected final ProjectBase                                                                                        project;
    private final ModelAccess                                                                                          modelAccess;
    protected final Concurrent<ReusableTransaction<DRule.DObserver<?>, DRule.DObserverTransaction>>                    dObserverTransactions;
    protected final Concurrent<ReusableTransaction<DNode.DCopyObserver, DNode.DCopyTransaction>>                       dCopyObserverTransactions;
    private final DclareForMPSEngine                                                                                   engine;
    private final AtomicLong                                                                                           counter                  = new AtomicLong(0L);
    private final DRepository                                                                                          dRepository;
    private final DServerMetaData                                                                                      dServerMetaData;
    private final Comparator<? super Triple<DMutable, DFeature, Throwable>>                                            messageComparator        = (a, b) -> universeTransaction().compareThrowable(a.c(), b.c());
    //
    private DefaultMap<DMessageType, List<DMessage>>                                                                   messages                 = EMPTY_MESSAGE_LIST_MAP;
    private boolean                                                                                                    running                  = false;
    private ImperativeTransaction                                                                                      mpsTransaction;
    private Thread                                                                                                     commandThread;
    private ModuleChecker                                                                                              moduleChecker;
    private ModelChecker                                                                                               modelChecker;
    private NodeChecker                                                                                                nodeChecker;
    private LanguageEditorChecker                                                                                      languageEditorChecker;
    private IAbstractChecker<ItemsToCheck, IssueKindReportItem>                                                        mpsChecker;
    private SyncConnectionHandler                                                                                      syncConnectionHandler;
    private Concurrent<Set<SModel>>                                                                                    changedModels;
    private Concurrent<Set<SModule>>                                                                                   changedModules;
    private Concurrent<Set<SNode>>                                                                                     changedRoots;
    private ConstantState                                                                                              derivationState;
    @SuppressWarnings("rawtypes")
    private Map<String, Concurrent<Map<Pair<Object, IChangeHandler>, Pair<Object, Object>>>>                           queuedChangeHandlers;
    @SuppressWarnings("rawtypes")
    private Map<String, Concurrent<Map<Pair<Object, IChangeHandler>, Pair<Object, Object>>>>                           deferredChangeHandlers;
    private int                                                                                                        modelCheckNr;

    protected DClareMPS(DclareForMPSEngine engine, ProjectBase project, DclareForMpsConfig config, int nr, Consumer<Status> startStatusConsumer) {
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
        universeTransaction = new MPSUniverseTransaction(this, thePool, startStatusConsumer, config);
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
        if (!aspect.isAllwaysOn() && !aspect.isOnDemand()) {
            String[] inactiveAspects = config.getInactiveAspects();
            for (String inactiveAspect : inactiveAspects) {
                if (inactiveAspect.equals(aspect.getId())) {
                    return false;
                }
            }
        }
        for (IAspect dep : aspect.getDependencies()) {
            if (!isActiveAspect(dep)) {
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
        mpsTransaction = universeTransaction.addImperative("MPS", this::handleMPSDelta, this::invokeLater, false);
        queuedChangeHandlers = Map.of();
        deferredChangeHandlers = Map.of();
        for (INativeGroup ng : DRepository.ALL_NATIVE_GROUPS.get(getRepository())) {
            queuedChangeHandlers = queuedChangeHandlers.put(ng.getId(), Concurrent.of(Map.of()));
            deferredChangeHandlers = deferredChangeHandlers.put(ng.getId(), Concurrent.of(Map.of()));
            universeTransaction.addImperative(ng.getId(), this::handleNativeDelta, ng.getScheduler(this)::accept, false);
        }
        mpsTransaction.schedule(() -> REPOSITORY_CONTAINER.set(this, getRepository()));
        mpsTransaction.schedule(() -> DSERVER_METADATA.set(this, dServerMetaData));
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
        java.util.List<? extends IChecker<?, ? extends IssueKindReportItem>> checkers = config.isAutoMPSModelCheck() ? //
                (java.util.List<? extends IChecker<?, ? extends IssueKindReportItem>>) (java.util.List<IChecker<?, ?>>) checkerRegistry.getCheckers() : //
                Collection.of(moduleChecker, modelChecker, nodeChecker).toList();
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
            readInEDT(() -> {
                if (!highlighter.isStopping()) {
                    highlighter.removeChecker(languageEditorChecker);
                }
            });
            mpsTransaction = null;
            syncConnectionHandler = null;
            for (ImperativeTransaction it : universeTransaction.getImperativeTransactions()) {
                it.schedule(it::stop);
            }
            state.run(() -> getRepository().stop(this));
            refreshAllObservingEditors();
        }
        universeTransaction.kill();
    }

    private void refreshAllObservingEditors() {
        commandInEDT(() -> {
            engine.observedNodes.get().forEachOrdered(n -> {
                n.setProperty(DNode.PARENT_PROPERTY, "");
                n.setProperty(DNode.PARENT_PROPERTY, null);
            });
        });
    }

    @SuppressWarnings("unused")
    // called from MPS
    public void addInfoMessage(String txType, Object object, String msg) {
        DMutable context = getRepository();
        DFeature feature = DMutable.INFOS;
        LeafTransaction ltx = LeafTransaction.getCurrent();
        if (ltx instanceof DObserverTransaction) {
            context = ((DObserverTransaction) ltx).mutable();
            feature = ((DObserverTransaction) ltx).rule();
        }
        prependMessage(new DMessage(context, feature, DMessageType.info, txType + " " + msg + ": " + object));
    }

    protected void addThrowable(Throwable throwable) {
        addThrowables(Set.of(throwable));
    }

    @SuppressWarnings("rawtypes")
    protected void addThrowables(Set<Throwable> throwables) {
        if (!universeTransaction.isKilled()) {
            universeTransaction.currentState().run(() -> {
                Collection<Triple<DMutable, DFeature, Throwable>> withContext = throwables.map(t -> {
                    DMutable object = getRepository();
                    DFeature feature = DRepository.EXCEPTIONS;
                    while (t instanceof TransactionException) {
                        if (((TransactionException) t).getTransactionClass() instanceof DObserver) {
                            feature = ((DObserver) ((TransactionException) t).getTransactionClass()).rule();
                        }
                        if (((TransactionException) t).getTransactionClass() instanceof DMutable) {
                            object = (DMutable) ((TransactionException) t).getTransactionClass();
                        }
                        t = t.getCause();
                    }
                    if (t instanceof ConsistencyError) {
                        ConsistencyError ce = (ConsistencyError) t;
                        object = ce.getObject() instanceof DMutable ? (DMutable) ce.getObject() : object;
                        feature = ce.getFeature() instanceof DObserver ? ((DObserver) ce.getFeature()).rule() : //
                                ce.getFeature() instanceof DFeature ? (DFeature) ce.getFeature() : feature;
                    }
                    return Triple.of(object, feature, t);
                });
                for (Triple<DMutable, DFeature, Throwable> t : withContext.sorted(messageComparator).sequential()) {
                    addThrowable(t.a(), t.b(), t.c());
                }
            });
            if (throwables.anyMatch(t -> !(t instanceof DebugTrace))) {
                engine.stopDClareMPS();
            }
        }
    }

    @SuppressWarnings("rawtypes")
    private void addThrowable(DMutable object, DFeature feature, Throwable t) {
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
            addThrowableMessage(object, feature, ((ThrowableError) t).getCause());
        } else {
            addThrowableMessage(object, feature, t);
        }
    }

    @SuppressWarnings("rawtypes")
    private void addTooManyChangesExceptionMessage(DMutable context, DFeature feature, TooManyChangesException tmce) {
        DMessage message = new DMessage(context, feature, DMessageType.error, "Too many changes, running " + feature + " changes=" + tmce.getNrOfChanges());
        tmce.getLast().trace(message, //
                (m, r) -> {
                    if (r.mutable() instanceof DMutable) {
                        m.addSubMessage(new DMessage((DMutable) r.mutable(), feature(r.observer()), DMessageType.error, //
                                String.format("%-5s: %-20s [%d changes]", "run", feature(r.observer()), r.nrOfChanges())));
                    }
                }, //
                (m, r, s) -> {
                    if (s.mutable() instanceof DMutable && s.observed() instanceof DObserved) {
                        m.addSubMessage(new DMessage((DMutable) s.mutable(), (DObserved) s.observed(), DMessageType.error, //
                                String.format("%-5s: %-20s = %s", "read", s.observed(), r.read().get(s))));
                    }
                }, //
                (m, w, s) -> {
                    if (s.mutable() instanceof DMutable && s.observed() instanceof DObserved) {
                        m.addSubMessage(new DMessage((DMutable) s.mutable(), (DObserved) s.observed(), DMessageType.error, //
                                String.format("%-5s: %-20s = %s", "write", s.observed(), w.written().get(s))));
                    }
                }, //
                m -> m.subMessages().last(), universeTransaction().stats().maxNrOfChanges());
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private void addDebugTraceMessage(DMutable object, DFeature feature, DebugTrace dt) {
        String time = DateTimeFormatter.ISO_LOCAL_TIME.format(ZonedDateTime.ofInstant(dt.trace().time(), ZoneId.systemDefault()));
        DMessage message = new DMessage(object, feature, DMessageType.debug, "Run " + feature + ", at " + time);
        for (Entry<ObservedInstance, Object> read : dt.trace().read().filter(e -> !e.getKey().observed().isPlumbing())) {
            ObservedInstance s = read.getKey();
            if (s.mutable() instanceof DMutable && s.observed() instanceof DObserved) {
                DObserved obs = (DObserved) s.observed();
                String msg = String.format("%-5s: %-20s = %s", "read", obs, read.getValue());
                message.addSubMessage(new DMessage((DMutable) s.mutable(), obs, DMessageType.debug, msg));
            }
        }
        for (Entry<ObservedInstance, Object> write : dt.trace().written().filter(e -> !e.getKey().observed().isPlumbing())) {
            ObservedInstance s = write.getKey();
            if (s.mutable() instanceof DMutable && s.observed() instanceof DObserved) {
                DObserved obs = (DObserved) s.observed();
                String msg = String.format("%-5s: %-20s = %s", "write", obs, write.getValue());
                message.addSubMessage(new DMessage((DMutable) s.mutable(), obs, DMessageType.debug, msg));
            }
        }
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private DFeature feature(Observer observer) {
        return observer instanceof DRule.DObserver ? ((DRule.DObserver) observer).rule() : observer instanceof DNode.DCopyObserver ? ((DNode.DCopyObserver) observer).dObserved() : null;
    }

    @SuppressWarnings("rawtypes")
    private void addTooManyObservedExceptionMessage(DMutable context, DFeature feature, TooManyObservedException tmse) {
        DMessage message = new DMessage(context, feature, DMessageType.error, tmse.getSimpleMessage());
        for (Entry<Observed, Set<Mutable>> e : tmse.getObserved()) {
            if (e.getKey() instanceof DObserved) {
                DObserved observed = (DObserved) e.getKey();
                for (Mutable o : e.getValue()) {
                    if (o.dResolve(context) instanceof DMutable) {
                        message.addSubMessage(new DMessage((DMutable) o.dResolve(context), observed, DMessageType.error, "Observed: " + observed));
                    }
                }
            }
        }
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private void addTooManyObserversExceptionMessage(DMutable context, DFeature feature, TooManyObserversException tmse) {
        DMessage message = new DMessage(context, feature, DMessageType.error, tmse.getSimpleMessage());
        for (Entry<Observer, Set<Mutable>> e : tmse.getObservers()) {
            if (e.getKey() instanceof DRule.DObserver) {
                DRule rule = ((DRule.DObserver) e.getKey()).rule();
                for (Mutable o : e.getValue()) {
                    if (o.dResolve(context) instanceof DMutable) {
                        message.addSubMessage(new DMessage((DMutable) o.dResolve(context), rule, DMessageType.error, "Rule: " + rule));
                    }
                }
            }
        }
        addMessage(message);
    }

    private void addUnidentifiedExceptionMessage(DMutable context, DFeature feature, UnidentifiedException uie) {
        addMessage(new DMessage(context, feature, DMessageType.error, uie.getMessage()));
    }

    private void addReferencedOrphanExceptionMessage(DMutable context, DFeature feature, ReferencedOrphanException roe) {
        addMessage(new DMessage(context, feature, DMessageType.error, roe.getMessage()));
    }

    private void addEmptyMandatoryExceptionMessage(DMutable context, DFeature feature, EmptyMandatoryException eme) {
        addMessage(new DMessage(context, feature, DMessageType.error, eme.getMessage()));
    }

    private void addNonDeterministicExceptionMessage(DMutable context, DFeature feature, NonDeterministicException nde) {
        DMessage message = new DMessage(context, feature, DMessageType.error, nde.getMessage());
        for (StackTraceElement ste : nde.getStackTrace()) {
            message.addSubMessage(new DMessage(context, feature, DMessageType.error, ste));
        }
        addMessage(message);
    }

    private void addOutOfScopeExceptionMessage(DMutable context, DFeature feature, OutOfScopeException oose) {
        addMessage(new DMessage(context, feature, DMessageType.error, oose.getMessage()));
    }

    private void addThrowableMessage(DMutable context, DFeature feature, Throwable t) {
        DMessage message = new DMessage(context, feature, DMessageType.error, t);
        for (StackTraceElement ste : t.getStackTrace()) {
            message.addSubMessage(new DMessage(context, feature, DMessageType.error, ste));
        }
        addMessage(message);
    }

    private synchronized void addMessage(DMessage message) {
        messages = messages.put(message.type(), messages.get(message.type()).add(message));
    }

    private synchronized void prependMessage(DMessage message) {
        messages = messages.put(message.type(), messages.get(message.type()).prepend(message));
    }

    protected DefaultMap<DMessageType, List<DMessage>> getMessages() {
        return messages;
    }

    @Override
    public int hashCode() {
        return project.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof DClareMPS && project.equals(((DClareMPS) obj).project);
    }

    @SuppressWarnings("removal")
    @Override
    public String toString() {
        return "Universe[" + project.getName() + ":" + nr + "]";
    }

    public void handleMPSChange(Runnable action) {
        if (isRunning()) {
            if (Thread.currentThread() == commandThread) {
                if (!RUNNING_DCLARE.get()) {
                    try {
                        LeafTransaction.getContext().run(mpsTransaction, action);
                    } catch (Throwable t) {
                        addThrowable(t);
                    }
                }
            } else {
                mpsTransaction.schedule(action);
            }
        }
    }

    public void runNow(Runnable action) {
        if (isRunning()) {
            mpsTransaction.state().run(action);
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
                addThrowable(t);
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
    public void handleNativeDelta(State imper, State dclare, boolean last, DefaultMap<Object, Set<Setable>> setted) {
        if (isRunning() && !universeTransaction.isKilled()) {
            ImperativeTransaction it = (ImperativeTransaction) LeafTransaction.getCurrent();
            INativeRunner nativeRunner = new INativeRunner() {
                @Override
                public void run(Runnable runable) {
                    it.schedule(runable);
                }

                @Override
                public ProjectBase project() {
                    return project;
                }

                @Override
                public void runNow(Runnable runable) {
                    it.state().run(runable);
                }
            };
            INativeGroup nativeGroup = DRepository.ALL_NATIVE_GROUPS.get(getRepository()).get(it.imperative().id());
            if (config.isTraceDclare()) {
                System.err.println(DclareTrace.getLineStart(nativeGroup.getName().toUpperCase(), it) + "START " + this);
            }
            Map<DMutable, Map<DObserved, Pair<Object, Object>>>[] diff = new Map[]{imper.diff(dclare, //
                    o -> o instanceof DMutable && (((DMutable) o).isNative(nativeGroup) || !imper.get((DMutable) o, DMutable.TYPE).getNatives(nativeGroup).isEmpty()), //
                    s -> s instanceof DObserved && (DMutable.CONTAINED == s || ((DObserved) s).isNative(nativeGroup))).asMap(e -> (Entry) e)};
            if (!diff[0].isEmpty()) {
                do {
                    toNative(nativeGroup, nativeRunner, imper, dclare, diff, diff[0].get(0).getKey());
                } while (!diff[0].isEmpty());
            }
            read(() -> runChangeHandlers(queuedChangeHandlers.get(nativeGroup.getId())));
            if (last) {
                read(() -> runChangeHandlers(deferredChangeHandlers.get(nativeGroup.getId())));
            }
            if (config.isTraceDclare()) {
                System.err.println(DclareTrace.getLineStart(nativeGroup.getName().toUpperCase(), it) + "END " + this);
            }
        }
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    private void toNative(INativeGroup nativeGroup, INativeRunner nativeRunner, State pre, State post, Map<DMutable, Map<DObserved, Pair<Object, Object>>>[] diff, DMutable dObject) {
        Map<DObserved, Pair<Object, Object>> delta = diff[0].get(dObject);
        if (delta != null) {
            diff[0] = diff[0].removeKey(dObject);
            parentToNative(nativeGroup, nativeRunner, pre, post, diff, dObject);
            if (!handleNativeExistence(nativeGroup, nativeRunner, pre, post, dObject)) {
                for (Entry<DObserved, Pair<Object, Object>> e : delta) {
                    DAttribute dAttribute = (DAttribute) e.getKey();
                    Object preVal = e.getValue().a();
                    Object postVal = e.getValue().b();
                    handleNativeChanges(nativeGroup, dObject, dAttribute, preVal, postVal, post.get(dObject, DMutable.TYPE).getNatives(nativeGroup));
                }
            }
        }
    }

    @SuppressWarnings({"rawtypes"})
    private void parentToNative(INativeGroup nativeGroup, INativeRunner nativeRunner, State imper, State dclare, Map<DMutable, Map<DObserved, Pair<Object, Object>>>[] diff, DMutable dObject) {
        Pair<Mutable, Setable<Mutable, ?>> pair = dclare.get(dObject, Mutable.D_PARENT_CONTAINING);
        if (pair != null && pair.a() instanceof DMutable && pair.b() instanceof DObserved) {
            toNative(nativeGroup, nativeRunner, imper, dclare, diff, (DMutable) pair.a());
        }
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    private boolean handleNativeExistence(INativeGroup nativeGroup, INativeRunner nativeRunner, State pre, State post, DMutable dObject) {
        boolean preC = pre.get(dObject, DMutable.CONTAINED);
        boolean postC = post.get(dObject, DMutable.CONTAINED);
        if (!preC && postC) {
            DMutable parent = (DMutable) post.get(dObject, Mutable.D_PARENT_CONTAINING).a();
            for (INative<DMutable> n : post.get(dObject, DMutable.TYPE).getNatives(nativeGroup)) {
                n.init(dObject, parent, nativeRunner);
                for (IChangeHandler h : INative.ALL_HANDLERS.get(n)) {
                    if (h.attribute() instanceof DObservedAttribute) {
                        Object b = pre.get(dObject, (DObservedAttribute) h.attribute());
                        Object a = post.get(dObject, (DObservedAttribute) h.attribute());
                        nativeChange(nativeGroup, dObject, h, b, a);
                    } else {
                        nativeChange(nativeGroup, dObject, h, null, h.attribute().get(dObject));
                    }
                }
            }
            return true;
        } else if (preC && !postC) {
            DMutable parent = (DMutable) pre.get(dObject, Mutable.D_PARENT_CONTAINING).a();
            for (INative n : pre.get(dObject, DMutable.TYPE).getNatives(nativeGroup)) {
                n.exit(dObject, parent, nativeRunner);
            }
            return true;
        } else {
            return false;
        }
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    private void handleNativeChanges(INativeGroup nativeGroup, DMutable dObject, DAttribute<?, ?> dAttribute, Object pre, Object post, List<INative> natives) {
        for (IChangeHandler h : dAttribute.handlers(nativeGroup)) {
            if (natives.contains(h.iNative())) {
                nativeChange(nativeGroup, dObject, h, pre, post);
            }
        }
    }

    @SuppressWarnings("rawtypes")
    private <O, T> void nativeChange(INativeGroup nativeGroup, O obj, IChangeHandler<O, T> ch, T pre, T post) {
        Pair<Object, IChangeHandler> key = Pair.of(obj, ch);
        if (ch.deferred()) {
            deferredChangeHandlers.get(nativeGroup.getId()).change(m -> {
                Pair<Object, Object> old = m.get(key);
                return m.put(key, Pair.of(old != null ? old.a() : pre, post));
            });
        } else {
            queuedChangeHandlers.get(nativeGroup.getId()).change(m -> m.put(key, Pair.of(pre, post)));
        }
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    private void runChangeHandlers(Concurrent<Map<Pair<Object, IChangeHandler>, Pair<Object, Object>>> changeHandlers) {
        for (Entry<Pair<Object, IChangeHandler>, Pair<Object, Object>> ch : changeHandlers.result()) {
            IChangeHandler handler = ch.getKey().b();
            handler.handle(ch.getKey().a(), //
                    toMutable(handler.attribute(), ch.getValue().a()), //
                    toMutable(handler.attribute(), ch.getValue().b()));
        }
        changeHandlers.init(Map.of());
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    public void handleMPSDelta(State imper, State dclare, boolean last, DefaultMap<Object, Set<Setable>> setted) {
        if (isRunning() && !universeTransaction.isKilled()) {
            if (config.isTraceDclare()) {
                System.err.println(DclareTrace.getLineStart("COMMIT", mpsTransaction) + "START " + this);
            }
            boolean changed = false;
            Map<DMutable, Map<DObserved, Pair<Object, Object>>>[] diff = new Map[]{imper.diff(dclare, //
                    o -> o instanceof DMutable && ((DMutable) o).isActive() && !((DMutable) o).isDclareOnly(), //
                    s -> s instanceof DObserved && !((DObserved) s).isDclareOnly()).asMap(e -> (Entry) e)};
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
                        for (DMutable dObject : setted.filter(e -> e.getValue().anyMatch(s -> s instanceof DObserved && !((DObserved) s).isDclareOnly())).map(Entry::getKey).filter(DMutable.class)) {
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
                System.err.println(DclareTrace.getLineStart("COMMIT", mpsTransaction) + "END " + this);
            }
        }
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    private void toMPS(State pre, State post, Map<DMutable, Map<DObserved, Pair<Object, Object>>>[] diff, DMutable dObject) {
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
                            if (a instanceof DMutable) {
                                parentToMPS(pre, post, diff, (DMutable) a);
                            }
                        }, r -> {
                        });
                    }
                    dObserved.toMPS(dObject, preVal, postVal);
                    if (getConfig().isTraceMPSModelChanges() && !(dObserved instanceof DObservedAttribute) && dObserved != DMutable.CONTAINED) {
                        System.err.println(DclareTrace.getLineStart("MPS", mpsTransaction) + "MODEL CHANGE " + dObject + "." + dObserved + " = " + State.shortValueDiffString(preVal, postVal));
                    }
                }
            }
            if (changed && !config.isDisableAutoModelCheck()) {
                addToChanged(dObject);
            }
        }
    }

    @SuppressWarnings({"rawtypes"})
    private void parentToMPS(State imper, State dclare, Map<DMutable, Map<DObserved, Pair<Object, Object>>>[] diff, DMutable dObject) {
        Pair<Mutable, Setable<Mutable, ?>> pair = dclare.get(dObject, Mutable.D_PARENT_CONTAINING);
        if (pair != null && pair.a() instanceof DMutable && pair.b() instanceof DObserved) {
            toMPS(imper, dclare, diff, (DMutable) pair.a());
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

    @SuppressWarnings("unchecked")
    private static <T> T toMutable(DAttribute<?, T> attr, Object value) {
        Class<?> cls = attr.cls();
        if (cls == java.util.List.class && value instanceof List) {
            value = ((List<Object>) value).toMutable();
        } else if (cls == java.util.List.class && value instanceof Collection) {
            value = ((Collection<Object>) value).collect(Collectors.toList());
        } else if (cls == java.util.Set.class && value instanceof Set) {
            value = ((Set<Object>) value).toMutable();
        } else if (cls == java.util.Set.class && value instanceof Collection) {
            value = ((Collection<Object>) value).collect(Collectors.toSet());
        } else if (cls == java.util.Map.class && value instanceof Map) {
            value = ((Map<Object, Object>) value).toMutable();
        }
        return (T) value;
    }

    private void addToChanged(DMutable dObject) {
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
        return running && mpsTransaction != null;
    }

    private static LanguageRegistry registry() {
        return LanguageRegistry.getInstance(instance().getRepository().original());
    }

    public static <T> T pre(Supplier<T> supplier) {
        return LeafTransaction.getCurrent().universeTransaction().preState().get(supplier);
    }

    public static <T> T post(Supplier<T> supplier) {
        return LeafTransaction.getCurrent().current().get(supplier);
    }

    public UniverseTransaction universeTransaction() {
        return universeTransaction;
    }

    @Override
    public MutableClass dClass() {
        return UNIVERSE_CLASS;
    }

    protected State imperativeState() {
        ImperativeTransaction itx = mpsTransaction;
        return itx != null ? itx.preState() : universeTransaction.preState();
    }

    public static <T> T get(Object sObject, Supplier<T> supplier) {
        DClareMPS dClareMPS = dClareForObject(sObject);
        return dClareMPS != null ? dClareMPS.doGet(sObject, supplier) : null;
    }

    private static ProjectManager projectManager;

    public static DClareMPS dClareForObject(Object sArg) {
        Object sObj = sArg;
        if (sObj instanceof SNode) {
            sObj = ((SNode) sObj).getModel();
        }
        if (sObj instanceof SModel) {
            sObj = ((SModel) sObj).getModule();
        }
        if (sObj instanceof DModel) {
            SModel sModel = ((DModel) sObj).tryOriginal();
        }
        if (sObj instanceof SModule) {
            if (projectManager == null) {
                projectManager = Objects.requireNonNull(MPSCoreComponents.getInstance().getPlatform().findComponent(ProjectManager.class));
            }
            for (Project project : projectManager.getOpenedProjects()) {
                if (project.isProjectModule((SModule) sObj)) {
                    sObj = project;
                    break;
                }
            }
        }
        if (sObj instanceof ProjectRepository) {
            sObj = ((ProjectRepository) sObj).getProject();
        }
        if (sObj instanceof MPSProject) {
            return DclareForMPSEngine.getEngine((MPSProject) sObj).getDClareMPS();
        } else if (sArg != null) {
            System.err.println("INFO: no Dclare engine found for " + render(sArg) + ", because " + render(sObj) + " resolveable to a MPSProject");
        } else {
            System.err.println("INFO: no Dclare engine found for null");
        }
        return null;
    }

    public void deriveLazy() {
        universeTransaction.deriveLazy();
    }

    private static String render(Object o) {
        return o == null ? "<null>" : "'" + o + "' [" + o.getClass() + "]";
    }

    private <T> T doGet(Object sObject, Supplier<T> supplier) {
        State state = imperativeState();
        return state.get(() -> GET_FROM_MPS.get(true, () -> {
            DMutable dObject = toDObject(sObject);
            if (sObject instanceof SNode) {
                ((SNode) sObject).getProperty(DNode.PARENT_PROPERTY);
                addObservedNode((SNode) sObject);
            }
            if (dObject.isExternal()) {
                return state.derive(supplier, universeTransaction().constantState());
            } else if (dObject.isActive() && isRunning()) {
                try {
                    if (Thread.currentThread() == commandThread) {
                        return LeafTransaction.getContext().get(mpsTransaction, supplier);
                    } else {
                        return supplier.get();
                    }
                } catch (Throwable t) {
                    addThrowable(t);
                    return null;
                }
            } else {
                return state.derive(supplier, derivationState());
            }
        }));
    }

    @SuppressWarnings("unchecked")
    private DMutable toDObject(Object sObject) {
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
        addThrowable(t);
    }

    @SuppressWarnings("RedundantSuppression")
    private final class MPSUniverseTransaction extends UniverseTransaction {
        private final DclareForMpsConfig config;

        private MPSUniverseTransaction(Universe universe, ContextPool pool, Consumer<Status> startStatusConsumer, DclareForMpsConfig config) {
            super(universe, pool, config.getDclareConfig(), startStatusConsumer);
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
        protected void handleExceptions(Set<Throwable> inconsistencies) {
            addThrowables(inconsistencies);
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
        protected State createState(StateMap stateMap) {
            return new MPSState(this, stateMap);
        }

        @Override
        public <T, O> TransactionId setPreserved(O object, Setable<O, T> property, T post, Action<?> action) {
            TransactionId txid = super.setPreserved(object, property, post, action);
            if (action.read()) {
                mpsTransaction.mutableState().set(object, property, post, txid);
            }
            return txid;
        }
    }

    private static final class MPSState extends State {
        private static final long serialVersionUID = 4292875367058590190L;

        @SuppressWarnings("rawtypes")
        private MPSState(UniverseTransaction universeTransaction, StateMap stateMap) {
            super(universeTransaction, stateMap);
        }

        @SuppressWarnings("rawtypes")
        private MPSState(UniverseTransaction universeTransaction, DefaultMap<Object, DefaultMap<Setable, Object>> map, Queued<Action<?>>[] actions, Queued<Mutable>[] children) {
            super(universeTransaction, map, actions, children);
        }

        @SuppressWarnings("rawtypes")
        @Override
        protected State newState(DefaultMap<Object, DefaultMap<Setable, Object>> newMap, Queued<Action<?>>[] actions, Queued<Mutable>[] children) {
            return new MPSState(universeTransaction(), newMap, actions, children);
        }

        @SuppressWarnings({"unchecked", "rawtypes"})
        @Override
        public <O, T> T get(O object, Getable<O, T> property) {
            if (object instanceof DMutable) {
                if (property instanceof DObserved) {
                    DObserved<DMutable, T> dObserved = (DObserved<DMutable, T>) property;
                    if (dObserved.isRead()) {
                        DMutable dObject = (DMutable) object;
                        if (dObject.isRead() && !super.get(dObject, DMutable.READ_OBSERVEDS).contains(property)) {
                            return dObserved.fromMPS(dObject);
                        }
                    }
                } else if (property == Mutable.D_PARENT_CONTAINING) {
                    DMutable dObject = (DMutable) object;
                    if (dObject.isRead() && super.get((Mutable) object, Mutable.D_PARENT_CONTAINING) == null) {
                        return (T) dObject.readParent();
                    }
                }
            }
            return super.get(object, property);
        }

        @SuppressWarnings({"rawtypes", "unchecked"})
        @Override
        public <O, A, B> A getA(O object, Getable<O, Pair<A, B>> property) {
            if (object instanceof DMutable && property == (Getable) Mutable.D_PARENT_CONTAINING) {
                DMutable dObject = (DMutable) object;
                if (dObject.isRead() && super.get((Mutable) object, Mutable.D_PARENT_CONTAINING) == null) {
                    Pair<DMutable, DObserved<DMutable, ?>> p = dObject.readParent();
                    return p == null ? null : (A) p.a();
                }
            }
            return super.getA(object, property);
        }

        @SuppressWarnings({"rawtypes", "unchecked"})
        @Override
        public <O, A, B> B getB(O object, Getable<O, Pair<A, B>> property) {
            if (object instanceof DMutable && property == (Getable) Mutable.D_PARENT_CONTAINING) {
                DMutable dObject = (DMutable) object;
                if (dObject.isRead() && super.get((Mutable) object, Mutable.D_PARENT_CONTAINING) == null) {
                    Pair<DMutable, DObserved<DMutable, ?>> p = dObject.readParent();
                    return p == null ? null : (B) p.b();
                }
            }
            return super.getB(object, property);
        }

        @Override
        public <O, T> T getRaw(O object, Getable<O, T> property) {
            return super.get(object, property);
        }
    }

    private class ModuleChecker extends IChecker.AbstractModuleChecker<ModuleReportItem> {
        @Override
        public void check(SModule sModule, SRepository repository, Consumer<? super ModuleReportItem> consumer, ProgressMonitor monitor) {
            if (isRunning()) {
                mpsTransaction.state().run(() -> {
                    DModule dModule = DModule.of(sModule);
                    for (DIssue issue : DMutable.DCLARE_ISSUES.get(dModule)) {
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
                mpsTransaction.state().run(() -> {
                    for (DIssue issue : DMutable.DCLARE_ISSUES.get(DModel.of(sModel))) {
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
                        mpsTransaction.state().run(() -> rootChecker.check(root, repository, errorCollector, monitor));
                    }
                }
            };
        }

        @Override
        public void check(SNode sNode, SRepository repository, Consumer<? super NodeReportItem> consumer, ProgressMonitor monitor) {
            for (DIssue issue : DMutable.DCLARE_ISSUES.get(DNode.of(sNode))) {
                issue.getItem(i -> consumer.consume((NodeReportItem) i));
            }
        }

        @Override
        public CheckerCategory getCategory() {
            return DIssue.CHECKER_CATEGORY;
        }
    }

    private class ShutdownHelperThread extends Thread {
        @SuppressWarnings("removal")
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
                mpsTransaction.state().run(() -> {
                    for (DIssue issue : DMutable.DCLARE_ISSUES.get(DNode.of(sNode))) {
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
                    mpsTransaction.schedule(() -> {
                        for (SModule sModule : modules) {
                            DModule dModule = DModule.of(sModule);
                            DMutable.MPS_ISSUES.set(dModule, DMutable.MPS_ISSUES.getDefault(dModule));
                        }
                        for (SModel sModel : models) {
                            DModel dModel = DModel.of(sModel);
                            DMutable.MPS_ISSUES.set(dModel, DMutable.MPS_ISSUES.getDefault(dModel));
                        }
                        for (SNode root : roots) {
                            DNode dNode = DNode.of(root);
                            DNode.ALL_MPS_ISSUES.set(dNode, DNode.ALL_MPS_ISSUES.getDefault(dNode));
                        }
                        for (IssueKindReportItem item : reportItems) {
                            DMutable d = read(() -> context(item));
                            if (d != null) {
                                if (item instanceof NodeFlavouredItem) {
                                    DNode root = root(repos, (NodeFlavouredItem) item);
                                    if (root != null) {
                                        DNode.ALL_MPS_ISSUES.set(root, Set::add, Pair.of(d, item));
                                    }
                                } else {
                                    DMutable.MPS_ISSUES.set(d, Set::add, Pair.of(d, item));
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

    protected DMutable context(ReportItem item) {
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

    protected void addObservedNode(SNode sNode) {
        engine.observedNodes.update(Set::add, sNode);
    }
}
