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

import java.util.Set;

import org.jetbrains.mps.openapi.project.Project;
import org.jetbrains.mps.openapi.util.ProgressMonitor;

import com.intellij.openapi.application.ApplicationManager;

import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.classloading.DeployListener;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.module.ReloadableModule;

public class DclareForMPSEngine implements DeployListener {

    private final Project              project;
    protected final ClassLoaderManager classLoaderManager;
    private final StartStopHandler     startStopHandler;
    private DClareMPS                  dClareMPS;
    private boolean                    on;
    private int                        maxTotalNrOfChanges;
    private int                        maxNrOfChanges;
    private boolean                    loaded;

    public DclareForMPSEngine(Project project, StartStopHandler startStopHandler) {
        this.startStopHandler = startStopHandler;
        this.project = project;
        classLoaderManager = ApplicationManager.getApplication().getComponent(MPSCoreComponents.class).getClassLoaderManager();
        classLoaderManager.addListener(this);
    }

    private void startEngine() {
        if (dClareMPS == null || !dClareMPS.isRunning()) {
            dClareMPS = new DClareMPS(project, null, maxTotalNrOfChanges, maxNrOfChanges, startStopHandler);
            dClareMPS.start();
        }
    }

    private void stopEngine() {
        if (dClareMPS != null && dClareMPS.isRunning()) {
            dClareMPS.stop();
            dClareMPS = null;
        }
    }

    public void stop() {
        classLoaderManager.removeListener(this);
        stopEngine();
    }

    public boolean isOn() {
        return on;
    }

    public void setOn(boolean on) {
        if (on != this.on) {
            this.on = on;
            if (on) {
                if (loaded) {
                    startEngine();
                }
            } else {
                stopEngine();
            }
        }
    }

    public int getMaxTotalNrOfChanges() {
        return maxTotalNrOfChanges;
    }

    public void setMaxTotalNrOfChanges(int maxTotalNrOfChanges) {
        if (this.maxTotalNrOfChanges != maxTotalNrOfChanges) {
            this.maxTotalNrOfChanges = maxTotalNrOfChanges;
            if (on) {
                stopEngine();
                startEngine();
            }
        }
    }

    public int getMaxNrOfChanges() {
        return maxNrOfChanges;
    }

    public void setMaxNrOfChanges(int maxNrOfChanges) {
        if (this.maxNrOfChanges != maxNrOfChanges) {
            this.maxNrOfChanges = maxNrOfChanges;
            if (on) {
                stopEngine();
                startEngine();
            }
        }
    }

    @Override
    public void onUnloaded(Set<ReloadableModule> unloadedModules, ProgressMonitor monitor) {
        stopEngine();
        loaded = false;
    }

    @Override
    public void onLoaded(Set<ReloadableModule> loadedModules, ProgressMonitor monitor) {
        loaded = true;
        if (on) {
            startEngine();
        }
    }

}
