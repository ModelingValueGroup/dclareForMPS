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

import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.util.ProgressMonitor;

import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.classloading.DeployListener;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.project.ProjectBase;

@SuppressWarnings("unused")
public class DclareForMPSEngine implements DeployListener {
    public static final int                MAX_NR_OF_HISTORY_FOR_MPS = 4;
    //
    private final       ProjectBase        project;
    protected final     ClassLoaderManager classLoaderManager;
    private             DClareMPS          dClareMPS;
    private             DclareForMpsConfig config;

    public DclareForMPSEngine(ProjectBase project, EngineStatusHandler engineStatusHandler) {
        this.project       = project;
        classLoaderManager = Objects.requireNonNull(MPSCoreComponents.getInstance().getPlatform().findComponent(ClassLoaderManager.class));
        classLoaderManager.addListener(this);
        config = new DclareForMpsConfig().withMaxNrOfHistory(MAX_NR_OF_HISTORY_FOR_MPS).withStatusHandler(engineStatusHandler);
    }

    private boolean isRunning() {
        return dClareMPS != null && dClareMPS.isRunning();
    }

    protected synchronized void startEngine() {
        if (!isRunning()) {
            dClareMPS = new DClareMPS(this, project, config);
        }
    }

    public DclareForMpsConfig getConfig() {
        return config;
    }

    public void setConfig(DclareForMpsConfig newConfig) {
        newConfig = newConfig.withMaxNrOfHistory(config.getMaxNrOfHistory()).withStatusHandler(config.getStatusHandler());
        if (!config.equals(newConfig)) {
            stopEngine();
            config = newConfig;
            if (config.isOnMode()) {
                startEngine();
            }
        }
    }

    protected synchronized void stopEngine() {
        if (isRunning()) {
            dClareMPS.stop();
            dClareMPS = null;
        }
    }

    public void stop() {
        classLoaderManager.removeListener(this);
        stopEngine();
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
                if (config.isOnMode()) {
                    startEngine();
                }
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
}
