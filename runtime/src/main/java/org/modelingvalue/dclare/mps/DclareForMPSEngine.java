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

import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.StatusProvider.StatusIterator;
import org.modelingvalue.dclare.ImperativeTransaction;
import org.modelingvalue.dclare.UniverseStatistics;
import org.modelingvalue.dclare.UniverseTransaction;
import org.modelingvalue.dclare.UniverseTransaction.Mood;
import org.modelingvalue.dclare.UniverseTransaction.Status;

import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.classloading.DeployListener;
import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.project.ProjectBase;

@SuppressWarnings("unused")
public class DclareForMPSEngine implements DeployListener {

    private static final boolean                           TRACE_ENGINE              = Boolean.getBoolean("TRACE_ENGINE");
    public static final int                                MAX_NR_OF_HISTORY_FOR_MPS = 4;
    protected static final CopyOnWriteArrayList<DClareMPS> ALL_DCLARE_MPS            = new CopyOnWriteArrayList<>();
    private static final AtomicInteger                     COUNTER                   = new AtomicInteger(0);
    //
    private final ProjectBase                              project;
    private final ClassLoaderManager                       classLoaderManager;
    private final EngineStatusHandler                      engineStatusHandler;
    private final ModelAccess                              modelAccess;
    private final int                                      nr;
    private final MoodUpdaterThread                        moodUpdaterThread;
    //
    private DClareMPS                                      dClareMPS;
    private DclareTracer                                   tracer;

    public DclareForMPSEngine(ProjectBase project, EngineStatusHandler engineStatusHandler) {
        this.nr = COUNTER.getAndIncrement();
        this.project = project;
        this.modelAccess = project.getModelAccess();
        this.engineStatusHandler = engineStatusHandler;
        if (TRACE_ENGINE) {
            System.err.println("--- DCLARE FOR MPS --- PROJECT START " + project + ":" + nr);
        }
        classLoaderManager = Objects.requireNonNull(MPSCoreComponents.getInstance().getPlatform().findComponent(ClassLoaderManager.class));
        classLoaderManager.addListener(this);
        moodUpdaterThread = new MoodUpdaterThread();
        newDClareMPS(project, new DclareForMpsConfig().withMaxNrOfHistory(MAX_NR_OF_HISTORY_FOR_MPS).withStatusHandler(engineStatusHandler));
        moodUpdaterThread.start();
    }

    private void newDClareMPS(ProjectBase project, DclareForMpsConfig config) {
        if (TRACE_ENGINE) {
            System.err.println("--- DCLARE FOR MPS --- START " + project + ":" + nr);
        }
        synchronized (ALL_DCLARE_MPS) {
            Status[] startStatus = new Status[1];
            dClareMPS = new DClareMPS(this, project, config, COUNTER.getAndIncrement(), startStatus);
            ALL_DCLARE_MPS.add(dClareMPS);
            moodUpdaterThread.putDClareMPS(dClareMPS, startStatus[0]);
            syncTracer();
        }
        if (config.isOnMode()) {
            dClareMPS.start();
        }
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

    public void registerTracer(DclareTracer tracer) {
        this.tracer = tracer;
        if (tracer != null) {
            tracer.notifyTraceComponent(new DclareTraceComponent(this, dClareMPS));
        }
    }

    private void syncTracer() {
        if (this.tracer != null) {
            tracer.notifyTraceComponent(new DclareTraceComponent(this, dClareMPS));
        }
    }

    public void setConfig(DclareForMpsConfig config) {
        config = config.withMaxNrOfHistory(getConfig().getMaxNrOfHistory()).withStatusHandler(getConfig().getStatusHandler());
        synchronized (ALL_DCLARE_MPS) {
            if (!getConfig().equals(config) || config.isOnMode() != dClareMPS.isRunning()) {
                if (TRACE_ENGINE) {
                    System.err.println("--- DCLARE FOR MPS --- SET CONFIG " + project + ":" + nr);
                }
                startDCLareMPS(config);
            }
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
        synchronized (ALL_DCLARE_MPS) {
            ALL_DCLARE_MPS.remove(dClareMPS);
            newDClareMPS(project, config);
        }
    }

    protected void stopDClareMPS() {
        if (TRACE_ENGINE) {
            System.err.println("--- DCLARE FOR MPS --- STOP " + project + ":" + nr);
        }
        synchronized (ALL_DCLARE_MPS) {
            dClareMPS.stop();
        }
    }

    public void stop() {
        if (TRACE_ENGINE) {
            System.err.println("--- DCLARE FOR MPS --- PROJECT STOP " + project + ":" + nr);
        }
        classLoaderManager.removeListener(this);
        stopDClareMPS();
        synchronized (ALL_DCLARE_MPS) {
            ALL_DCLARE_MPS.remove(dClareMPS);
            moodUpdaterThread.stop = true;
        }
        moodUpdaterThread.interrupt();
    }

    @Override
    public void onLoaded(java.util.Set<ReloadableModule> loadedModules, ProgressMonitor monitor) {
        for (DClareMPS dClareMPS : ALL_DCLARE_MPS) {
            if (loadedModules.stream().anyMatch(m -> dClareMPS.project.isProjectModule(m))) {
                if (TRACE_ENGINE) {
                    System.err.println("--- DCLARE FOR MPS --- LOADED " + project + ":" + nr);
                }
                startDCLareMPS(getConfig());
                break;
            }
        }
    }

    public static void breakpoint() {
        System.err.println("breakpoint");
    }

    public static <T> T print(Object ctx, T val) {
        System.err.println("!!!!!!!!!! " + ctx + " : " + val);
        return val;
    }

    private class MoodUpdaterThread extends Thread {

        private final BlockingQueue<Pair<DClareMPS, StatusIterator<Status>>> queue = new LinkedBlockingQueue<>(3);
        private boolean                                                      stop;
        private UniverseTransaction.Mood                                     prevMood;
        private UniverseStatistics                                           prevStats;
        private List<IAspect>                                                prevAspects;
        private Set<ImperativeTransaction>                                   prevActive;

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
                prevMood = null;
                prevStats = null;
                prevAspects = null;
                prevActive = null;
            }
        }

        private void interruptedHandler(Exception e, DClareMPS current) {
            if (!stop) {
                current.universeTransaction().handleException(e);
            }
        }

        private void updateStatus(Status status, DClareMPS current) {
            Mood mood = status.mood;
            List<IAspect> aspects = current.getAllAspects();
            UniverseStatistics stats = status.stats != null ? status.stats.clone() : null;
            Set<ImperativeTransaction> active = status.active;
            Boolean onMode = current.getConfig().isOnMode();
            Mood oldMood = prevMood;
            List<IAspect> oldAspects = prevAspects;
            UniverseStatistics oldStats = prevStats;
            Set<ImperativeTransaction> oldActive = prevActive;
            if (oldMood != mood || !Objects.equals(oldAspects, aspects) || !Objects.equals(oldStats, stats) || (active.isEmpty() != oldActive.isEmpty() && mood == UniverseTransaction.Mood.idle)) {
                modelAccess.runWriteInEDT(Collection.sequential(() -> {
                    if (oldMood != mood) {
                        if (mood == UniverseTransaction.Mood.starting) {
                            engineStatusHandler.idle(project, current, status.state::get);
                            if (onMode) {
                                engineStatusHandler.on(project, current);
                            } else {
                                engineStatusHandler.off(project, current);
                            }
                        } else if (mood == UniverseTransaction.Mood.busy) {
                            engineStatusHandler.active(project, current);
                        } else if (mood == UniverseTransaction.Mood.idle) {
                            if (!active.isEmpty()) {
                                engineStatusHandler.commiting(project, current);
                            } else {
                                engineStatusHandler.idle(project, current, status.state::get);
                            }
                        } else if (mood == UniverseTransaction.Mood.stopped) {
                            engineStatusHandler.idle(project, current, status.state::get);
                            engineStatusHandler.off(project, current);
                        }
                    } else if (active.isEmpty() != oldActive.isEmpty() && mood == UniverseTransaction.Mood.idle) {
                        if (!active.isEmpty()) {
                            engineStatusHandler.commiting(project, current);
                        } else {
                            engineStatusHandler.idle(project, current, status.state::get);
                        }
                    }
                    if (stats != null && !Objects.equals(oldStats, stats)) {
                        engineStatusHandler.stats(stats, current);
                    }
                    if (!Objects.equals(oldAspects, aspects)) {
                        engineStatusHandler.aspects(aspects, current);
                    }
                }));
            }
            prevMood = mood;
            prevAspects = aspects;
            prevStats = stats;
            prevActive = active;
        }
    }
}
