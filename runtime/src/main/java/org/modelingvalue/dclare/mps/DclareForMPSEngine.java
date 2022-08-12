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

import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.modelingvalue.collections.util.StatusProvider.StatusIterator;
import org.modelingvalue.dclare.UniverseTransaction;
import org.modelingvalue.dclare.UniverseTransaction.Status;

import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;

import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.classloading.DeployListener;
import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.project.ProjectBase;
import jetbrains.mps.smodel.tempmodel.TempModule;

@SuppressWarnings("unused")
public class DclareForMPSEngine implements DeployListener {
    public static final    int                             MAX_NR_OF_HISTORY_FOR_MPS = 4;
    protected static final CopyOnWriteArrayList<DClareMPS> ALL_DCLARE_MPS            = new CopyOnWriteArrayList<>();
    //
    private final          ProjectBase                     project;
    private final          ClassLoaderManager              classLoaderManager;
    private final          EngineStatusHandler             engineStatusHandler;
    private final          ModelAccess                     modelAccess;
    //
    private                CompletableFuture<Void>         futureDclareMPS;
    private                DClareMPS                       dClareMPS;
    private                MoodUpdaterThread               moodUpdaterThread;
    private                DclareTracer                    tracer;

    public DclareForMPSEngine(ProjectBase project, EngineStatusHandler engineStatusHandler) {
        this.project             = project;
        this.modelAccess         = project.getModelAccess();
        this.engineStatusHandler = engineStatusHandler;
        classLoaderManager       = Objects.requireNonNull(MPSCoreComponents.getInstance().getPlatform().findComponent(ClassLoaderManager.class));
        classLoaderManager.addListener(this);
        newDClareMPS(project, new DclareForMpsConfig().withMaxNrOfHistory(MAX_NR_OF_HISTORY_FOR_MPS).withStatusHandler(engineStatusHandler));
    }

    private void newDClareMPS(ProjectBase project, DclareForMpsConfig config) {
        synchronized (ALL_DCLARE_MPS) {
            futureDclareMPS = new CompletableFuture<>();
            dClareMPS       = new DClareMPS(this, project, config);
            StatusIterator<Status> statusIterator = dClareMPS.universeTransaction().getStatusIterator();
            if (moodUpdaterThread != null) {
                moodUpdaterThread.stop = true;
                moodUpdaterThread.interrupt();
            }
            ALL_DCLARE_MPS.add(dClareMPS);
            moodUpdaterThread = new MoodUpdaterThread(dClareMPS, futureDclareMPS, statusIterator);
            moodUpdaterThread.start();
            syncTracer();
            // System.err.println("!!!!!!!!!!!!!!!!!!!!!! " + ALL_DCLARE_MPS);
        }
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
                stopDClareMPS();
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
        CompletableFuture<Void> oldFuture = futureDclareMPS;
        synchronized (ALL_DCLARE_MPS) {
            ALL_DCLARE_MPS.remove(dClareMPS);
            // System.err.println("!!!!!!!!!!!!!!!!!!!!!! " + ALL_DCLARE_MPS);
            newDClareMPS(project, config);
            if (config.isOnMode()) {
                dClareMPS.start();
            }
        }
        oldFuture.complete(null);
    }

    protected void stopDClareMPS() {
        synchronized (ALL_DCLARE_MPS) {
            dClareMPS.stop();
        }
    }

    public void stop() {
        classLoaderManager.removeListener(this);
        stopDClareMPS();
        synchronized (ALL_DCLARE_MPS) {
            ALL_DCLARE_MPS.remove(dClareMPS);
        }
        dClareMPS = null;
        futureDclareMPS.complete(null);
    }

    @Override
    public void onUnloaded(Set<ReloadableModule> unloadedModules, ProgressMonitor monitor) {
        if (unloadedModules.stream().anyMatch(m -> m instanceof TempModule)) {
            stopDClareMPS();
        } else {
            java.util.List<SModule> projectModules = project.getProjectModules();
            if (unloadedModules.stream().anyMatch(projectModules::contains)) {
                stopDClareMPS();
            }
        }
    }

    @Override
    public void onLoaded(Set<ReloadableModule> loadedModules, ProgressMonitor monitor) {
        if (loadedModules.stream().anyMatch(m -> m instanceof TempModule)) {
            startDCLareMPS(getConfig());
        } else {
            java.util.List<SModule> projectModules = project.getProjectModules();
            if (loadedModules.stream().anyMatch(projectModules::contains)) {
                startDCLareMPS(getConfig());
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
        private final DClareMPS               dclareMPS;
        private final CompletableFuture<Void> futureDclareMPS;
        private final StatusIterator<Status>  statusIterator;
        private       boolean                 stop;

        public MoodUpdaterThread(DClareMPS dclareMPS, CompletableFuture<Void> futureDclareMPS, StatusIterator<Status> statusIterator) {
            super("dclare-moods-" + project.getName());
            this.dclareMPS       = dclareMPS;
            this.futureDclareMPS = futureDclareMPS;
            this.statusIterator  = statusIterator;
            setDaemon(true);
        }

        @Override
        public void run() {
            while (!stop) {
                if (statusIterator.hasNext()) {
                    Status status = statusIterator.next();
                    if (!stop) {
                        if (status == null) {
                            dclareMPS.universeTransaction().handleException(new IllegalArgumentException("MoodUpdaterThread got null status while running"));
                        } else {
                            modelAccess.runWriteInEDT(() -> edtPayload(status));
                        }
                    }
                } else {
                    try {
                        futureDclareMPS.get();
                    } catch (InterruptedException | ExecutionException e) {
                        if (!stop) {
                            dclareMPS.universeTransaction().handleException(e);
                        }
                    }
                }
            }
        }

        private void edtPayload(Status status) {
            if (status.stats != null) {
                engineStatusHandler.stats(status.stats, dclareMPS);
            }
            engineStatusHandler.aspects(dclareMPS.getAllAspects(), dclareMPS);

            if (!dclareMPS.getConfig().isOnMode() || status.mood == UniverseTransaction.Mood.stopped) {
                engineStatusHandler.idle(project, dclareMPS, status.state::get);
                engineStatusHandler.off(project, dclareMPS);
            } else if (status.mood == UniverseTransaction.Mood.idle) {
                engineStatusHandler.idle(project, dclareMPS, status.state::get);
                if (!status.active.isEmpty()) {
                    engineStatusHandler.commiting(project, dclareMPS);
                }
                engineStatusHandler.on(project, dclareMPS);
            } else {
                engineStatusHandler.active(project, dclareMPS);
                engineStatusHandler.on(project, dclareMPS);
            }
        }
    }
}
