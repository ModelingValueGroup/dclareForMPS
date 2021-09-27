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

import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;

import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.modelingvalue.collections.util.StatusProvider.StatusIterator;
import org.modelingvalue.dclare.UniverseTransaction;
import org.modelingvalue.dclare.UniverseTransaction.Status;

import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.classloading.DeployListener;
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
    private CompletableFuture<Void>                        nextEngine;

    public DclareForMPSEngine(ProjectBase project, EngineStatusHandler engineStatusHandler) {
        this.project = project;
        this.modelAccess = project.getModelAccess();
        this.engineStatusHandler = engineStatusHandler;
        classLoaderManager = Objects.requireNonNull(MPSCoreComponents.getInstance().getPlatform().findComponent(ClassLoaderManager.class));
        classLoaderManager.addListener(this);
        newEngine(project, new DclareForMpsConfig().withMaxNrOfHistory(MAX_NR_OF_HISTORY_FOR_MPS).withStatusHandler(engineStatusHandler));
        new MoodUpdaterThread();
    }

    private void newEngine(ProjectBase project, DclareForMpsConfig config) {
        synchronized (ALL_DCLARE_MPS) {
            nextEngine = new CompletableFuture<>();
            dClareMPS = new DClareMPS(this, project, config);
            statusIterator = dClareMPS.universeTransaction().getStatusIterator();
            ALL_DCLARE_MPS.add(dClareMPS);
        }
    }

    public DclareForMpsConfig getConfig() {
        return dClareMPS.getConfig();
    }

    public void setConfig(DclareForMpsConfig config) {
        config = config.withMaxNrOfHistory(getConfig().getMaxNrOfHistory()).withStatusHandler(getConfig().getStatusHandler());
        synchronized (ALL_DCLARE_MPS) {
            if (!getConfig().equals(config) || config.isOnMode() != dClareMPS.isRunning()) {
                stopEngine();
                startEngine(config);
            }
        }
    }

    private void startEngine(DclareForMpsConfig config) {
        CompletableFuture<Void> oldFuture = nextEngine;
        synchronized (ALL_DCLARE_MPS) {
            ALL_DCLARE_MPS.remove(dClareMPS);
            newEngine(project, config);
            if (config.isOnMode()) {
                dClareMPS.start();
            }
        }
        oldFuture.complete(null);
    }

    protected void stopEngine() {
        synchronized (ALL_DCLARE_MPS) {
            dClareMPS.stop();
        }
    }

    public void stop() {
        classLoaderManager.removeListener(this);
        stopEngine();
        ALL_DCLARE_MPS.remove(dClareMPS);
        dClareMPS = null;
        nextEngine.complete(null);
    }

    @Override
    public void onUnloaded(Set<ReloadableModule> unloadedModules, ProgressMonitor monitor) {
        for (SModule m : project.getProjectModules()) {
            //noinspection SuspiciousMethodCalls
            if (unloadedModules.contains(m)) {
                stopEngine();
                break;
            }
        }
    }

    @Override
    public void onLoaded(Set<ReloadableModule> loadedModules, ProgressMonitor monitor) {
        for (SModule m : project.getProjectModules()) {
            //noinspection SuspiciousMethodCalls
            if (loadedModules.contains(m)) {
                startEngine(getConfig());
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
                DClareMPS finalEngine;
                StatusIterator<Status> finalStatusIterator;
                CompletableFuture<Void> finalNextEngine;
                synchronized (ALL_DCLARE_MPS) {
                    finalEngine = dClareMPS;
                    finalStatusIterator = statusIterator;
                    finalNextEngine = nextEngine;
                }
                if (finalEngine == null) {
                    break;
                } else if (finalStatusIterator.hasNext()) {
                    Status status = finalStatusIterator.next();
                    modelAccess.executeCommandInEDT(() -> {
                        if (status.stats != null) {
                            modelAccess.executeCommandInEDT(() -> engineStatusHandler.stats(status.stats, finalEngine));
                        }
                        if (!finalEngine.getConfig().isOnMode() || status.mood == UniverseTransaction.Mood.stopped) {
                            engineStatusHandler.idle(project, finalEngine, status.state::get);
                            engineStatusHandler.off(project, finalEngine);
                        } else {
                            if (status.mood == UniverseTransaction.Mood.idle) {
                                engineStatusHandler.idle(project, finalEngine, status.state::get);
                                if (!status.active.isEmpty()) {
                                    engineStatusHandler.commiting(project, finalEngine);
                                }
                            } else {
                                engineStatusHandler.active(project, finalEngine);
                            }
                            engineStatusHandler.on(project, finalEngine);
                        }
                    });
                } else {
                    try {
                        finalNextEngine.get();
                    } catch (InterruptedException | ExecutionException e) {
                        finalEngine.universeTransaction().handleException(e);
                    }
                }
            }
        }
    }

}
