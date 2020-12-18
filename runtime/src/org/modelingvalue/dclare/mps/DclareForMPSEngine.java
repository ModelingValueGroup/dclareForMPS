//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2020 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import java.util.Set;

import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.util.ProgressMonitor;

import com.intellij.openapi.application.ApplicationManager;

import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.classloading.DeployListener;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.project.ProjectBase;

@SuppressWarnings("unused")
public class DclareForMPSEngine implements DeployListener {

    private final ProjectBase          project;
    protected final ClassLoaderManager classLoaderManager;
    private final StartStopHandler     startStopHandler;
    private DClareMPS                  dClareMPS;
    private boolean                    on;
    private int                        maxTotalNrOfChanges;
    private int                        maxNrOfChanges;
    private int                        maxNrOfObserved;
    private int                        maxNrOfObservers;

    public DclareForMPSEngine(ProjectBase project, StartStopHandler startStopHandler) {
        this.startStopHandler = startStopHandler;
        this.project = project;
        classLoaderManager = ApplicationManager.getApplication().getComponent(MPSCoreComponents.class).getClassLoaderManager();
        classLoaderManager.addListener(this);
    }

    protected synchronized void startEngine() {
        if (dClareMPS == null || !dClareMPS.isRunning()) {
            dClareMPS = new DClareMPS(this, project, null, maxTotalNrOfChanges, maxNrOfChanges, maxNrOfObserved, maxNrOfObservers, startStopHandler);
        }
    }

    protected synchronized void stopEngine() {
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
                startEngine();
            } else {
                stopEngine();
            }
        }
    }

    public int getMaxTotalNrOfChanges() {
        return maxTotalNrOfChanges;
    }

    public void setMaxTotalNrOfChanges(int maxTotalNrOfChanges) {
        this.maxTotalNrOfChanges = maxTotalNrOfChanges;
    }

    public int getMaxNrOfChanges() {
        return maxNrOfChanges;
    }

    public void setMaxNrOfChanges(int maxNrOfChanges) {
        this.maxNrOfChanges = maxNrOfChanges;
    }

    public int getNrOfObserved() {
        return maxNrOfObserved;
    }

    public void setNrOfObserved(int maxNrOfObserved) {
        this.maxNrOfObserved = maxNrOfObserved;
    }

    public int getNrOfObservers() {
        return maxNrOfObservers;
    }

    public void setNrOfObservers(int maxNrOfObservers) {
        this.maxNrOfObservers = maxNrOfObservers;
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
                if (on) {
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
