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

import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.project.Project;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.modelingvalue.dclare.UniverseStatistics;

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
    private DClareMPS                                      dClareMPS;

    public DclareForMPSEngine(ProjectBase project, EngineStatusHandler engineStatusHandler) {
        this.project = project;
        classLoaderManager = Objects.requireNonNull(MPSCoreComponents.getInstance().getPlatform().findComponent(ClassLoaderManager.class));
        classLoaderManager.addListener(this);
        DclareForMpsConfig config = new DclareForMpsConfig().withMaxNrOfHistory(MAX_NR_OF_HISTORY_FOR_MPS).withStatusHandler(new StaleFilter(engineStatusHandler));
        dClareMPS = new DClareMPS(this, project, config);
        ALL_DCLARE_MPS.add(dClareMPS);
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
            if (!dClareMPS.isRunning()) {
                ALL_DCLARE_MPS.remove(dClareMPS);
                dClareMPS = new DClareMPS(this, project, config);
                ALL_DCLARE_MPS.add(dClareMPS);
                if (config.isOnMode()) {
                    dClareMPS.start();
                }
            }
        }
    }

    protected void stopEngine() {
        synchronized (ALL_DCLARE_MPS) {
            if (dClareMPS.isRunning()) {
                dClareMPS.stop();
            }
        }
    }

    public void stop() {
        classLoaderManager.removeListener(this);
        stopEngine();
        ALL_DCLARE_MPS.remove(dClareMPS);
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

    private class StaleFilter implements EngineStatusHandler {
        private final EngineStatusHandler engineStatusHandler;

        public StaleFilter(EngineStatusHandler engineStatusHandler) {
            this.engineStatusHandler = engineStatusHandler;
        }

        @Override
        public void stats(UniverseStatistics stats, DClareMPS engine) {
            if (dClareMPS == engine) {
                engineStatusHandler.stats(stats, engine);
            }
        }

        @Override
        public void on(Project project, DClareMPS engine) {
            if (dClareMPS == engine) {
                engineStatusHandler.on(project, engine);
            }
        }

        @Override
        public void terminating(Project project, DClareMPS engine, Getter getter) {
            if (dClareMPS == engine) {
                engineStatusHandler.terminating(project, engine, getter);
            }
        }

        @Override
        public void off(Project project, DClareMPS engine) {
            if (dClareMPS == engine) {
                engineStatusHandler.off(project, engine);
            }
        }

        @Override
        public void active(Project project, DClareMPS engine) {
            if (dClareMPS == engine) {
                engineStatusHandler.active(project, engine);
            }
        }

        @Override
        public void idle(Project project, DClareMPS engine, Getter getter) {
            if (dClareMPS == engine) {
                engineStatusHandler.idle(project, engine, getter);
            }
        }
    }
}
