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

import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.classloading.DeployListener;
import jetbrains.mps.debug.api.BreakpointManagerComponent;
import jetbrains.mps.debug.api.BreakpointManagerComponent.IBreakpointManagerListener;
import jetbrains.mps.debug.api.breakpoints.BreakpointLocation;
import jetbrains.mps.debug.api.breakpoints.IBreakpoint;
import jetbrains.mps.debug.api.breakpoints.ILocationBreakpoint;
import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.ProjectBase;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.modelingvalue.collections.DefaultMap;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.MutationWrapper;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.StatusProvider.StatusIterator;
import org.modelingvalue.dclare.DclareTrace;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.UniverseTransaction.Status;

import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;

import static org.modelingvalue.dclare.UniverseTransaction.Mood.idle;
import static org.modelingvalue.dclare.UniverseTransaction.Mood.starting;
import static org.modelingvalue.dclare.UniverseTransaction.Mood.stopped;

@SuppressWarnings("unused")
public class DclareForMPSEngine implements DeployListener, IBreakpointManagerListener {

    private static Function<MPSProject, EngineStatusHandler>         STATUS_HANDLER_FUNCTION;
    private static final WeakHashMap<MPSProject, DclareForMPSEngine> ENGINE_MAP                = new WeakHashMap<>();

    private static final boolean                                     TRACE_ENGINE              = Boolean.getBoolean("TRACE_ENGINE");
    public static final int                                          MAX_NR_OF_HISTORY_FOR_MPS = Integer.getInteger("MAX_NR_OF_HISTORY_FOR_MPS", 4) + 3;
    private static final AtomicInteger                               COUNTER                   = new AtomicInteger(0);

    public static void setStatusHandlerFunction(Function<MPSProject, EngineStatusHandler> function) {
        STATUS_HANDLER_FUNCTION = function;
    }

    public static DclareForMPSEngine getEngine(MPSProject project) {
        synchronized (ENGINE_MAP) {
            DclareForMPSEngine engine = ENGINE_MAP.get(project);
            if (engine == null) {
                engine = new DclareForMPSEngine(project);
                ENGINE_MAP.put(project, engine);
            }
            return engine;
        }
    }

    //
    private final MPSProject                    project;
    private final ClassLoaderManager            classLoaderManager;
    private final EngineStatusHandler           engineStatusHandler;
    private final int                           nr;
    private final MoodUpdaterThread             moodUpdaterThread;
    private final BreakpointManagerComponent    breakpointManagerComponent;
    protected final MutationWrapper<Set<SNode>> observedNodes;
    //
    private DClareMPS                           dClareMPS;

    private DclareForMPSEngine(MPSProject project) {
        this.nr = COUNTER.getAndIncrement();
        this.project = project;
        this.engineStatusHandler = STATUS_HANDLER_FUNCTION.apply(project);
        this.observedNodes = new MutationWrapper<>(Set.of());
        if (TRACE_ENGINE) {
            System.err.println("--- DCLARE FOR MPS --- PROJECT START " + project + ":" + nr);
        }
        classLoaderManager = Objects.requireNonNull(MPSCoreComponents.getInstance().getPlatform().findComponent(ClassLoaderManager.class));
        classLoaderManager.addListener(this);
        breakpointManagerComponent = project.getProject().getService(BreakpointManagerComponent.class);
        moodUpdaterThread = new MoodUpdaterThread();
        newDClareMPS(project, new DclareForMpsConfig().withMaxNrOfHistory(MAX_NR_OF_HISTORY_FOR_MPS).withStatusHandler(engineStatusHandler));
        moodUpdaterThread.start();
    }

    public MPSProject project() {
        return project;
    }

    private void newDClareMPS(ProjectBase project, DclareForMpsConfig config) {
        if (TRACE_ENGINE) {
            System.err.println("--- DCLARE FOR MPS --- START " + project + ":" + nr);
        }
        Status[] startStatus = new Status[1];
        dClareMPS = new DClareMPS(this, project, config, COUNTER.getAndIncrement(), s -> startStatus[0] = s);
        moodUpdaterThread.putDClareMPS(dClareMPS, startStatus[0]);
        if (config.isOnMode()) {
            startBreakPoints();
            dClareMPS.start();
        }
    }

    void startBreakPoints() {
        breakpointManagerComponent.addChangeListener(this);
        for (IBreakpoint bp : breakpointManagerComponent.getAllIBreakpoints()) {
            breakpointAdded(bp);
        }
    }

    void stopBreakPoints() {
        breakpointManagerComponent.removeChangeListener(this);
    }

    @Override
    public String toString() {
        return "ENGINE " + project + ":" + nr;
    }

    public DclareForMpsConfig getConfig() {
        return dClareMPS.getConfig();
    }

    public DClareMPS getDClareMPS() {
        return dClareMPS;
    }

    public void setConfig(DclareForMpsConfig config) {
        config = config.withMaxNrOfHistory(getConfig().getMaxNrOfHistory()).withStatusHandler(getConfig().getStatusHandler());
        if (!getConfig().equals(config) || config.isOnMode() != dClareMPS.isRunning()) {
            if (TRACE_ENGINE) {
                System.err.println("--- DCLARE FOR MPS --- SET CONFIG " + project + ":" + nr);
            }
            startDCLareMPS(config);
        }
    }

    private IssuesChangeListener issueChangeListener = null;

    public interface IssuesChangeListener {
        public void issuesChanges(java.util.List<IssueKindReportItem> issues);
    }

    public void setIssuesChangeListener(IssuesChangeListener listener) {
        this.issueChangeListener = listener;
    }

    void issuesChanged(java.util.List<IssueKindReportItem> issues) {
        if (issueChangeListener != null) {
            issueChangeListener.issuesChanges(issues);
        }
    }

    private void startDCLareMPS(DclareForMpsConfig config) {
        stopDClareMPS();
        newDClareMPS(project, config);
    }

    protected void stopDClareMPS() {
        if (TRACE_ENGINE) {
            System.err.println("--- DCLARE FOR MPS --- STOP " + project + ":" + nr);
        }
        if (dClareMPS.getConfig().isOnMode()) {
            stopBreakPoints();
        }
        dClareMPS.stop();
    }

    public void stop() {
        if (TRACE_ENGINE) {
            System.err.println("--- DCLARE FOR MPS --- PROJECT STOP " + project + ":" + nr);
        }
        classLoaderManager.removeListener(this);
        stopDClareMPS();
        moodUpdaterThread.stop = true;
        moodUpdaterThread.interrupt();
        synchronized (ENGINE_MAP) {
            ENGINE_MAP.remove(project);
        }
    }

    @Override
    public void onLoaded(java.util.Set<ReloadableModule> loadedModules, ProgressMonitor monitor) {
        synchronized (ENGINE_MAP) {
            for (DclareForMPSEngine engine : ENGINE_MAP.values()) {
                if (loadedModules.stream().anyMatch(m -> engine.project.isProjectModule(m))) {
                    if (TRACE_ENGINE) {
                        System.err.println("--- DCLARE FOR MPS --- LOADED " + project + ":" + nr);
                    }
                    restart();
                    break;
                }
            }
        }
    }

    protected void restart() {
        startDCLareMPS(getConfig());
    }

    public static void breakpoint() {
        System.err.println(DclareTrace.getLineStart("BRKPNT", LeafTransaction.getCurrent()));
    }

    public static <T> T print(Object ctx, T val) {
        System.err.println(DclareTrace.getLineStart("PRINT", LeafTransaction.getCurrent()) + ctx + " : " + val);
        return val;
    }

    private class MoodUpdaterThread extends Thread {

        private final BlockingQueue<Pair<DClareMPS, StatusIterator<Status>>> queue        = new LinkedBlockingQueue<>(3);
        private boolean                                                      stop;
        private List<IAspect>                                                prevAspects  = List.of();
        @SuppressWarnings("static-access")
        private DefaultMap<DMessageType, List<DMessage>>                     prevMessages = dClareMPS.EMPTY_MESSAGE_LIST_MAP;

        @SuppressWarnings("removal")
        public MoodUpdaterThread() {
            super("dclare-moods-" + project.getName());
            setDaemon(true);
        }

        private void putDClareMPS(DClareMPS dClareMPS, Status startStatus) {
            try {
                queue.put(Pair.of(dClareMPS, StatusIterator.of(startStatus)));
            } catch (InterruptedException e) {
                dClareMPS.universeTransaction().handleException(e);
            }
        }

        @Override
        public void run() {
            while (!stop) {
                Pair<DClareMPS, StatusIterator<Status>> pair;
                try {
                    pair = queue.take();
                } catch (InterruptedException e) {
                    interruptedHandler(e, dClareMPS);
                    break;
                }
                DClareMPS current = pair.a();
                if (TRACE_ENGINE) {
                    System.err.println("--- DCLARE FOR MPS --- START UPDATER " + project + ":" + nr + " " + current);
                }
                StatusIterator<Status> statusIterator = pair.b();
                statusIterator.setInterruptedHandler(e -> interruptedHandler(e, current));
                while (!stop && statusIterator.hasNext()) {
                    Status status = statusIterator.next();
                    if (!stop) {
                        if (status != null) {
                            updateStatus(status, current);
                        } else {
                            current.universeTransaction().handleException(new IllegalArgumentException("MoodUpdaterThread got null status while running"));
                        }
                    }
                }
            }
        }

        private void interruptedHandler(Exception e, DClareMPS current) {
            if (!stop) {
                current.universeTransaction().handleException(e);
            }
        }

        private void updateStatus(Status status, DClareMPS current) {
            DclareForMpsStatus dclareForMpsStatus = new DclareForMpsStatus(status, current);
            List<IAspect> aspects = status.mood == starting ? current.getAllAspects() : prevAspects;
            DefaultMap<DMessageType, List<DMessage>> messages = status.mood == starting || status.mood == idle || status.mood == stopped ? current.getMessages() : prevMessages;
            current.readInEDT(() -> engineStatusHandler.status(dclareForMpsStatus));
            if (status.mood == starting) {
                current.writeInEDT(() -> engineStatusHandler.start(dclareForMpsStatus));
                current.writeInEDT(() -> engineStatusHandler.aspects(aspects, dclareForMpsStatus));
            }
            if (!messages.equals(prevMessages)) {
                current.writeInEDT(() -> engineStatusHandler.messages(messages, dclareForMpsStatus));
            }
            prevAspects = aspects;
            prevMessages = messages;
        }
    }

    @Override
    public void breakpointAdded(IBreakpoint bp) {
        if (bp instanceof ILocationBreakpoint) {
            BreakpointLocation location = ((ILocationBreakpoint) bp).getLocation();
            SNodeReference nodeRef = location.getNodePointer();
            dClareMPS.imperativeState().run(() -> {
                DRule<?> rule = DClareMPS.RULE_MAP.get(dClareMPS).get(nodeRef);
                if (rule != null) {
                    DRule.OBSERVER.get(rule).setTracing(true);
                }
            });
        }
    }

    @Override
    public void breakpointRemoved(IBreakpoint bp) {
        if (bp instanceof ILocationBreakpoint) {
            BreakpointLocation location = ((ILocationBreakpoint) bp).getLocation();
            SNodeReference nodeRef = location.getNodePointer();
            dClareMPS.imperativeState().run(() -> {
                DRule<?> rule = DClareMPS.RULE_MAP.get(dClareMPS).get(nodeRef);
                if (rule != null) {
                    DRule.OBSERVER.get(rule).setTracing(false);
                }
            });
        }
    }
}
