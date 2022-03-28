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
import java.util.Set;
import java.util.concurrent.*;

import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.util.StatusProvider.StatusIterator;
import org.modelingvalue.dclare.UniverseTransaction;
import org.modelingvalue.dclare.UniverseTransaction.Status;

import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.classloading.DeployListener;
import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.project.ProjectBase;

@SuppressWarnings("unused")
public class DclareForMPSEngine implements DeployListener {
    public static final int                                MAX_NR_OF_HISTORY_FOR_MPS = 4;
    protected static final CopyOnWriteArrayList<DClareMPS> ALL_DCLARE_MPS            = new CopyOnWriteArrayList<>();
    //
    private final ProjectBase                              project;
    private final ClassLoaderManager                       classLoaderManager;
    private final EngineStatusHandler                      engineStatusHandler;
    private final ModelAccess                              modelAccess;

    //
    private DClareMPS                                      dClareMPS;
    private StatusIterator<Status>                         statusIterator;
    private CompletableFuture<Void>                        nextDClareMPS;

    public DclareForMPSEngine(ProjectBase project, EngineStatusHandler engineStatusHandler) {
        this.project = project;
        this.modelAccess = project.getModelAccess();
        this.engineStatusHandler = engineStatusHandler;
        classLoaderManager = Objects.requireNonNull(MPSCoreComponents.getInstance().getPlatform().findComponent(ClassLoaderManager.class));
        classLoaderManager.addListener(this);
        newDClareMPS(project, new DclareForMpsConfig().withMaxNrOfHistory(MAX_NR_OF_HISTORY_FOR_MPS).withStatusHandler(engineStatusHandler));
        new MoodUpdaterThread();
    }

    private void newDClareMPS(ProjectBase project, DclareForMpsConfig config) {
        synchronized (ALL_DCLARE_MPS) {
            nextDClareMPS = new CompletableFuture<>();
            dClareMPS = new DClareMPS(this, project, config);
            statusIterator = dClareMPS.universeTransaction().getStatusIterator();
            ALL_DCLARE_MPS.add(dClareMPS);
            // System.err.println("!!!!!!!!!!!!!!!!!!!!!! " + ALL_DCLARE_MPS);
        }
    }

    public DclareForMpsConfig getConfig() {
        return dClareMPS.getConfig();
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
        CompletableFuture<Void> oldFuture = nextDClareMPS;
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
            // System.err.println("!!!!!!!!!!!!!!!!!!!!!! " + ALL_DCLARE_MPS);
        }
        dClareMPS = null;
        nextDClareMPS.complete(null);
    }

    @Override
    public void onUnloaded(Set<ReloadableModule> unloadedModules, ProgressMonitor monitor) {
        for (SModule m : project.getProjectModules()) {
            //noinspection SuspiciousMethodCalls
            if (unloadedModules.contains(m)) {
                stopDClareMPS();
                break;
            }
        }
    }

    @Override
    public void onLoaded(Set<ReloadableModule> loadedModules, ProgressMonitor monitor) {
        for (SModule m : project.getProjectModules()) {
            //noinspection SuspiciousMethodCalls
            if (loadedModules.contains(m)) {
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

        public MoodUpdaterThread() {
            super("dclare-moods-" + project.getName());
            setDaemon(true);
            start();
        }

        @Override
        public void run() {
            while (true) {
                DClareMPS finalDClareMPS;
                StatusIterator<Status> finalStatusIterator;
                CompletableFuture<Void> finalNextDCLareMPS;
                synchronized (ALL_DCLARE_MPS) {
                    finalDClareMPS = dClareMPS;
                    finalStatusIterator = statusIterator;
                    finalNextDCLareMPS = nextDClareMPS;
                }
                if (finalDClareMPS == null) {
                    break;
                } else if (finalStatusIterator.hasNext()) {
                    Status status = finalStatusIterator.next();
                    List<IAspect> apects = status.state.get(() -> DClareMPS.ALL_LANGUAGES.get(finalDClareMPS).flatMap(l -> DClareMPS.ASPECTS.get(l)).distinct().sortedBy(IAspect::getName).toList());
                    modelAccess.runWriteInEDT(() -> {
                        if (status.stats != null) {
                            engineStatusHandler.stats(status.stats, finalDClareMPS);
                        }
                        engineStatusHandler.aspects(apects, finalDClareMPS);
                        if (!finalDClareMPS.getConfig().isOnMode() || status.mood == UniverseTransaction.Mood.stopped) {
                            engineStatusHandler.idle(project, finalDClareMPS, status.state::get);
                            engineStatusHandler.off(project, finalDClareMPS);
                        } else {
                            if (status.mood == UniverseTransaction.Mood.idle) {
                                engineStatusHandler.idle(project, finalDClareMPS, status.state::get);
                                if (!status.active.isEmpty()) {
                                    engineStatusHandler.commiting(project, finalDClareMPS);
                                }
                            } else {
                                engineStatusHandler.active(project, finalDClareMPS);
                            }
                            engineStatusHandler.on(project, finalDClareMPS);
                        }
                    });
                } else {
                    try {
                        finalNextDCLareMPS.get();
                    } catch (InterruptedException | ExecutionException e) {
                        finalDClareMPS.universeTransaction().handleException(e);
                    }
                }
            }
        }
    }

}
