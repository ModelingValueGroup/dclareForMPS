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

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.function.Supplier;
import java.util.stream.Collectors;

import javax.swing.SwingUtilities;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.util.Consumer;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.jetbrains.mps.openapi.util.SubProgressKind;
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
import org.modelingvalue.dclare.ConsistencyError;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.EmptyMandatoryException;
import org.modelingvalue.dclare.ImperativeTransaction;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.MutableClass;
import org.modelingvalue.dclare.NonCheckingObserved;
import org.modelingvalue.dclare.NonDeterministicException;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.OutOfScopeException;
import org.modelingvalue.dclare.Priority;
import org.modelingvalue.dclare.ReferencedOrphanException;
import org.modelingvalue.dclare.ReusableTransaction;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.State;
import org.modelingvalue.dclare.ThrowableError;
import org.modelingvalue.dclare.TooManyChangesException;
import org.modelingvalue.dclare.TooManyObservedException;
import org.modelingvalue.dclare.TooManyObserversException;
import org.modelingvalue.dclare.TransactionException;
import org.modelingvalue.dclare.Universe;
import org.modelingvalue.dclare.UniverseTransaction;
import org.modelingvalue.dclare.mps.DRule.DObserver;
import org.modelingvalue.dclare.mps.DRule.DObserverTransaction;

import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes._return_P1_E0;
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
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.language.LanguageRuntime;

public class DClareMPS implements TriConsumer<State, State, Boolean>, Universe {

    protected static final java.util.Map<SRepository, DClareMPS>                                           DCLARE_MPS           = new java.util.concurrent.ConcurrentHashMap<>();

    private static final Set<DMessageType>                                                                 MESSAGE_TYPES        = Collection.of(DMessageType.values()).toSet();

    private static final QualifiedSet<Triple<DObject, DFeature<?>, String>, DMessage>                      MESSAGE_QSET         = QualifiedSet.of(m -> Triple.of(m.context(), m.feature(), m.id()));

    protected static final Map<DMessageType, QualifiedSet<Triple<DObject, DFeature<?>, String>, DMessage>> MESSAGE_QSET_MAP     = MESSAGE_TYPES.sequential().toMap(t -> Entry.of(t, MESSAGE_QSET));

    private static final MutableClass                                                                      UNIVERSE_CLASS       = new MutableClass() {
                                                                                                                                    @Override
                                                                                                                                    public Collection<? extends Observer<?>> dObservers() {
                                                                                                                                        return Collection.of();
                                                                                                                                    }

                                                                                                                                    @Override
                                                                                                                                    public Collection<? extends Setable<? extends Mutable, ?>> dSetables() {
                                                                                                                                        return SETABLES;
                                                                                                                                    }
                                                                                                                                };

    protected static final boolean                                                                         TRACE                = Boolean.getBoolean("DCLARE_TRACE");

    protected static final String                                                                          DCLARE               = "---------> DCLARE ";

    private final ThreadLocal<Boolean>                                                                     COMMITTING           = ThreadLocal.withInitial(() -> false);

    public final static Observed<DClareMPS, Set<SLanguage>>                                                ALL_LANGUAGES        = NonCheckingObserved.of("ALL_LANGAUGES", Set.of());

    public final static Constant<SLanguage, Set<IRuleSet>>                                                 RULE_SETS            = Constant.of("RULE_SETS", Set.of(), language -> {
                                                                                                                                    LanguageRuntime rtLang = registry().getLanguage(language);
                                                                                                                                    IRuleAspect aspect = rtLang != null ? rtLang.getAspect(IRuleAspect.class) : null;
                                                                                                                                    return aspect != null ? Collection.of(aspect.getRuleSets()).toSet() : Set.of();
                                                                                                                                });

    private final static Setable<DClareMPS, DRepository>                                                   REPOSITORY_CONTAINER = Setable.of("REPOSITORY_CONTAINER", null, true);

    protected static final Set<? extends Setable<? extends Mutable, ?>>                                    SETABLES             = Set.of(REPOSITORY_CONTAINER);

    private final ContextPool                                                                              thePool              = ContextThread.createPool();
    protected final Thread                                                                                 waitForEndThread;
    private final UniverseTransaction                                                                      universeTransaction;
    protected final ProjectBase                                                                            project;
    private final StartStopHandler                                                                         startStopHandler;
    private ImperativeTransaction                                                                          imperativeTransaction;
    private boolean                                                                                        running;
    protected final Concurrent<ReusableTransaction<DRule.DObserver<?>, DObserverTransaction>>              dObserverTransactions;
    protected Map<DMessageType, QualifiedSet<Triple<DObject, DFeature<?>, String>, DMessage>>              messages             = MESSAGE_QSET_MAP;
    protected final DclareForMPSEngine                                                                     engine;
    private final DRepository                                                                              dRepository;
    private final ModuleChecker                                                                            moduleChecker;
    private final ModelChecker                                                                             modelChecker;
    private final NodeChecker                                                                              nodeChecker;
    private final NodeCheckerInEditor                                                                      nodeCheckerInEditor;
    private final LanguageEditorChecker                                                                    languageEditorChecker;
    private final IAbstractChecker<ItemsToCheck, IssueKindReportItem>                                      mpsChecker;
    private final Concurrent<Set<SModel>>                                                                  changedModels        = Concurrent.of(Set.of());
    private final Concurrent<Set<SModule>>                                                                 changedModules       = Concurrent.of(Set.of());
    private final Concurrent<Set<SNode>>                                                                   changedRoots         = Concurrent.of(Set.of());

    protected DClareMPS(DclareForMPSEngine engine, ProjectBase project, State prevState, int maxTotalNrOfChanges, int maxNrOfChanges, int maxNrOfObserved, int maxNrOfObservers, StartStopHandler startStopHandler) {
        this.project = project;
        this.engine = engine;
        this.startStopHandler = startStopHandler;
        SRepository projectRepository = project.getRepository();
        this.dRepository = new DRepository(projectRepository);
        this.moduleChecker = new ModuleChecker();
        this.modelChecker = new ModelChecker();
        this.nodeChecker = new NodeChecker();
        this.nodeCheckerInEditor = new NodeCheckerInEditor();
        this.languageEditorChecker = new LanguageEditorChecker(projectRepository, Collections.singletonList(nodeCheckerInEditor));
        CheckerRegistry checkerRegistry = project.getPlatform().findComponent(CheckerRegistry.class);
        checkerRegistry.registerChecker(moduleChecker);
        checkerRegistry.registerChecker(modelChecker);
        checkerRegistry.registerChecker(nodeChecker);
        ModelsExtractorImpl modelExtractor = new ModelCheckerBuilder.ModelsExtractorImpl().excludeGenerators();
		mpsChecker = new ModelCheckerBuilder(modelExtractor) {

			@Override
			public IAbstractChecker<ItemsToCheck, IssueKindReportItem> createChecker(List<? extends IChecker<?, ? extends IssueKindReportItem>> checkers) {
				return new IAbstractChecker<ItemsToCheck, IssueKindReportItem>() {

					@Override
					public void check(ItemsToCheck items, SRepository repository, Consumer<? super IssueKindReportItem> errorCollector, ProgressMonitor monitor) {
						RootItemsToCheck r = (RootItemsToCheck) items;
						int work = r.roots.size();
					    monitor.start("Checking", work);
					    
					    List<IChecker<SModule, ? extends IssueKindReportItem>> moduleCheckers = new ArrayList<IChecker<SModule, ? extends IssueKindReportItem>>();
					    List<IChecker<SModel, ? extends IssueKindReportItem>> modelCheckers = new ArrayList<IChecker<SModel, ? extends IssueKindReportItem>>();
					    List<IChecker<SNode, ? extends IssueKindReportItem>> rootCheckers = new ArrayList<IChecker<SNode, ? extends IssueKindReportItem>>();
						   
					    for (IChecker<?, ? extends IssueKindReportItem> it : checkers) {
					      IChecker<?, ? extends IssueKindReportItem> checker = it;
					      if (checker instanceof IChecker.AbstractModuleChecker) {
					    	  moduleCheckers.add((IChecker<SModule, ? extends IssueKindReportItem>) checker);					  
					      } else if (checker instanceof IChecker.AbstractModelChecker) {
					        modelCheckers.add((IChecker<SModel, ? extends IssueKindReportItem>)checker);
					      } else if (checker instanceof IChecker.AbstractRootChecker) {
					    	  rootCheckers.add((IChecker<SNode, ? extends IssueKindReportItem>) checker);					      
					      } else if (checker instanceof IChecker.AbstractNodeChecker) {
					    	  rootCheckers.add((IChecker<SNode, ? extends IssueKindReportItem>) checker);					        
					      } 
					    }
					    
					    IAbstractChecker<SModule, ? extends IssueKindReportItem> generalModuleChecker = aggreagateSpecificCheckers(moduleCheckers, new _FunctionTypes._return_P1_E0<String, SModule>() {
				            public String invoke(SModule m) {
				              return m.getModuleName();
				            }
				          });
				          IAbstractChecker<SModel, ? extends IssueKindReportItem> generalModelChecker = skipNullModules(aggreagateSpecificCheckers(modelCheckers, new _FunctionTypes._return_P1_E0<String, SModel>() {
				            public String invoke(SModel m) {
				              return m.getName().getLongName();
				            }
				          }));
					    
					    IAbstractChecker<SNode, ? extends IssueKindReportItem> generalNodeChecker = aggreagateSpecificCheckers(rootCheckers, new _FunctionTypes._return_P1_E0<String, SNode>() {
				            public String invoke(SNode n) {
				              return n.getName();
				            }
				          }); 
					    
					    for (SModel model : items.models) {
				            generalModelChecker.check(model, repository, errorCollector, monitor.subTask(1, SubProgressKind.REPLACING));
				            if (monitor.isCanceled()) {
				              break;
				            }
				          }

				        for (SModule module : items.modules) {
				            generalModuleChecker.check(module, repository, errorCollector, monitor.subTask(1, SubProgressKind.REPLACING));
				            if (monitor.isCanceled()) {
				              break;
				            }
				            
				            for (SModel model : modelExtractor.getModels(module)) {
				                generalModelChecker.check(model, repository, errorCollector, monitor.subTask(1, SubProgressKind.REPLACING));
				                if (monitor.isCanceled()) {
				                  break;
				                }
				            }
				        }
					    
					    for (SNode roots : r.roots) {
				            generalNodeChecker.check(roots, null, null, monitor.subTask(1, SubProgressKind.REPLACING));
				            if (monitor.isCanceled()) {
				              break;
				            }
					    }
					}
					
				};
			}
        	
        }.createChecker(checkerRegistry.getCheckers());
        
        Highlighter highlighter = project.getComponent(Highlighter.class);
        highlighter.addChecker(languageEditorChecker);
        project.getModelAccess().executeCommandInEDT(() -> startStopHandler.on(project));
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
            protected void clear(LeafTransaction tx, Mutable orphan) {
                if (!(orphan instanceof DNode && ((DNode) orphan).isReadOnly())) {
                    super.clear(tx, orphan);
                }
            };

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

    public static <T> T get(SRepository sRepository, Supplier<T> supplier) {
        LeafTransaction tx = LeafTransaction.getCurrent();
        if (tx instanceof ImperativeTransaction) {
            try {
                return supplier.get();
            } catch (Throwable t) {
                ((DClareMPS) tx.universeTransaction().mutable()).addMessage(t);
                return null;
            }
        } else {
            DClareMPS dClareMPS = sRepository != null ? DCLARE_MPS.get(sRepository) : null;
            return dClareMPS != null && dClareMPS.isRunning() ? dClareMPS.imperativeTransaction.state().get(() -> {
                try {
                    return supplier.get();
                } catch (Throwable t) {
                    dClareMPS.addMessage(t);
                    return null;
                }
            }) : null;
        }
    }

    @SuppressWarnings("rawtypes")
    protected void addMessage(Throwable throwable) {
        if (!universeTransaction.isKilled()) {
            universeTransaction.currentState().run(() -> {
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

    public void handleMPSChange(Runnable action) {
        if (imperativeTransaction != null) {
            if (LeafTransaction.getCurrent() == imperativeTransaction) {
                if (!COMMITTING.get()) {
                    try {
                        action.run();
                    } catch (Throwable t) {
                        addMessage(t);
                    }
                }
            } else {
                imperativeTransaction.schedule(action);
            }
        }
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

    public static DClareMPS instance() {
        return (DClareMPS) LeafTransaction.getCurrent().universeTransaction().mutable();
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public void accept(State pre, State post, Boolean last) {
        if (imperativeTransaction != null && !universeTransaction.isKilled()) {
            if (TRACE) {
                System.err.println(DCLARE + "    START COMMIT " + this);
            }
            COMMITTING.set(true);
            try {
                pre.diff(post, o -> o instanceof DObject && !((DObject) o).isDclareOnly(), p -> p instanceof DObserved && !((DObserved) p).isDclareOnly()).forEach(e0 -> {
                    DObject dObject = (DObject) e0.getKey();
                    if (dObject instanceof DModel) {
                        changedModels.change(s -> s.add(((DModel) dObject).original()));
                    } else if (dObject instanceof DNode) {
                    	SNode root = ((DNode)dObject).sNode(false) !=null ? ((DNode)dObject).sNode(false).getContainingRoot() : null;
                    	if (root!=null) {
                    	   changedRoots.change(s-> s.add(root));
                    	}                   
                    } else if (dObject instanceof DModule) {
                        changedModules.change(s -> s.add(((DModule) dObject).original()));
                    }
                    e0.getValue().forEach(e1 -> {
                        DObserved mpsObserved = (DObserved) e1.getKey();
                        mpsObserved.toMPS(dObject, e1.getValue().a(), e1.getValue().b());
                    });
                });
                if (last) {
                    running = false;
                    runModelCheck();
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
        if (imperativeTransaction != null) {
            State state = universeTransaction.preState();
            project.getModelAccess().executeCommandInEDT(() -> startStopHandler.off(project, state::get, this));
            CheckerRegistry checkerRegistry = project.getPlatform().findComponent(CheckerRegistry.class);
            if (checkerRegistry == null) {
                throw new Error("CheckerRegistry not found in platform");
            }
            checkerRegistry.unregisterChecker(moduleChecker);
            checkerRegistry.unregisterChecker(modelChecker);
            checkerRegistry.unregisterChecker(nodeChecker);
            Highlighter highlighter = project.getComponent(Highlighter.class);
            project.getModelAccess().runReadInEDT(() -> highlighter.removeChecker(languageEditorChecker));
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
                    DModel dModel = DModel.of(sModel);
                    for (DIssue issue : DObject.DCLARE_ISSUES.get(dModel)) {
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
            DNode dNode = DNode.of(sNode.getConcept(), sNode.getReference());
            for (DIssue issue : DObject.DCLARE_ISSUES.get(dNode)) {
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
                    DNode dNode = DNode.of(sNode.getConcept(), sNode.getReference());
                    for (DIssue issue : DObject.DCLARE_ISSUES.get(dNode)) {
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
    
    private static class RootItemsToCheck extends ModelCheckerBuilder.ItemsToCheck {
    	
    	public List<SNode> roots = new ArrayList<SNode>();
    }

    private void runModelCheck() {
        Set<SModel> models = changedModels.result();
        Set<SModule> modules = changedModules.result();
        Set<SNode>	 roots = changedRoots.result();
        changedModels.init(Set.of());
        changedModules.init(Set.of());
        changedRoots.init(Set.of());
        if (!models.isEmpty() || !modules.isEmpty()) {
            thePool.execute(() -> {
                read(() -> {
                	RootItemsToCheck itemsToCheck = new RootItemsToCheck();
                    itemsToCheck.models = models.collect(Collectors.toList());
                    itemsToCheck.modules = modules.collect(Collectors.toList());
                    itemsToCheck.roots = roots.collect(Collectors.toList());
                    java.util.List<IssueKindReportItem> reportItems = new ArrayList<>();
                    SRepository repos = getRepository().original();
                    mpsChecker.check(itemsToCheck, repos, reportItems::add, new EmptyProgressMonitor());
                    universeTransaction.put(new Object(), () -> read(() -> {
                        for (SModel sModel : models) {
                        	Set<Pair<DObject, IssueKindReportItem>> issues = DModel.ALL_MPS_ISSUES.get(DModel.of(sModel));
                        	issues = issues.filter(i -> {
                        		DObject ctx = context(i.b());
                        		return !itemsToCheck.models.contains(ctx) && !itemsToCheck.roots.contains(ctx);
                        	}).toSet();
                            DModel.ALL_MPS_ISSUES.set(DModel.of(sModel), issues);
                        }
                        
                        for (IssueKindReportItem item : reportItems) {
                            DObject d = context(item);
							DObject.MPS_ISSUES.set(d, Set::add, Pair.of(d, item));
                        }
                    }));
                });
            });
        }
    }

    protected DObject context(ReportItem item) {
        SRepository repos = getRepository().original();
        if (item instanceof NodeReportItem) {
            return DNode.of(((NodeReportItem) item).getNode().resolve(repos));
        } else if (item instanceof ModelReportItem) {
            return DModel.of(((ModelReportItem) item).getModel().resolve(repos));
        } else {
            return DModule.of(((ModuleReportItem) item).getModule().resolve(repos));
        }
    }

}
