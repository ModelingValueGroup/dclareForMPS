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
import java.util.concurrent.CopyOnWriteArrayList;

import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.modelingvalue.dclare.UniverseStatistics;
import org.modelingvalue.dclare.UniverseTransaction;
import org.modelingvalue.dclare.UniverseTransaction.MoodProvider;

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
    private MoodProvider                                   moodProvider;

    public DclareForMPSEngine(ProjectBase project, EngineStatusHandler engineStatusHandler) {
        this.project = project;
        this.modelAccess = project.getModelAccess();
        this.engineStatusHandler = engineStatusHandler;
        classLoaderManager = Objects.requireNonNull(MPSCoreComponents.getInstance().getPlatform().findComponent(ClassLoaderManager.class));
        classLoaderManager.addListener(this);
        DclareForMpsConfig config = new DclareForMpsConfig().withMaxNrOfHistory(MAX_NR_OF_HISTORY_FOR_MPS).withStatusHandler(engineStatusHandler);
        dClareMPS = new DClareMPS(this, project, config);
        moodProvider = dClareMPS.universeTransaction().moodProvider();
        ALL_DCLARE_MPS.add(dClareMPS);
        new StatsUpdaterThread();
        new MoodUpdaterThread();
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
        synchronized (ALL_DCLARE_MPS) {
            ALL_DCLARE_MPS.remove(dClareMPS);
            dClareMPS = new DClareMPS(this, project, config);
            moodProvider = dClareMPS.universeTransaction().moodProvider();
            ALL_DCLARE_MPS.add(dClareMPS);
            if (config.isOnMode()) {
                dClareMPS.start();
            }
        }
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
                    DClareMPS engine = dClareMPS;
                    if (engine == null) {
                        break;
                    }
                    UniverseStatistics stats = engine.universeTransaction().stats();
                    if (prevStats == null || !prevStats.equals(stats)) {
                        prevStats = new UniverseStatistics(stats);
                        modelAccess.executeCommandInEDT(() -> engineStatusHandler.stats(stats, engine));
                    }
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
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
                MoodProvider finalMoodProvider;
                synchronized (ALL_DCLARE_MPS) {
                    finalEngine = dClareMPS;
                    finalMoodProvider = moodProvider;
                    if (finalMoodProvider == null || finalEngine == null) {
                        break;
                    } else {
                        modelAccess.executeCommandInEDT(() -> {
                            if (!finalEngine.getConfig().isOnMode() || finalMoodProvider.getMood() == UniverseTransaction.Mood.stopped) {
                                engineStatusHandler.off(project, finalEngine);
                            } else {
                                engineStatusHandler.on(project, finalEngine);
                                if (finalMoodProvider.getMood() == UniverseTransaction.Mood.idle) {
                                    engineStatusHandler.idle(project, finalEngine, finalMoodProvider.getState()::get);
                                } else {
                                    engineStatusHandler.active(project, finalEngine);
                                }
                            }
                        });
                    }
                }
                if (finalMoodProvider.getMood() == UniverseTransaction.Mood.stopped) {
                    try {
                        Thread.sleep(300);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                } else {
                    MoodProvider nextMoodProvider = finalMoodProvider.waitForNextMood();
                    synchronized (ALL_DCLARE_MPS) {
                        if (finalEngine == dClareMPS) {
                            moodProvider = nextMoodProvider;
                        }
                    }
                }
            }
        }
    }

}
