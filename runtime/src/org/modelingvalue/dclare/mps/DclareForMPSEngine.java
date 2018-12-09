package org.modelingvalue.dclare.mps;

import java.util.Set;

import org.jetbrains.mps.openapi.project.Project;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.modelingvalue.transactions.State;

import com.intellij.openapi.application.ApplicationManager;

import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.classloading.DeployListener;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.module.ReloadableModule;

public class DclareForMPSEngine implements DeployListener {

    private final Project              project;
    protected final ClassLoaderManager classLoaderManager;
    private DClareMPS                  dClareMPS = null;
    private boolean                    on;
    private boolean                    trace;
    private int                        maxTotalNrOfChanges;
    private int                        maxNrOfChanges;
    private boolean                    loaded    = false;
    private State                      prevState = null;

    public DclareForMPSEngine(Project project) {
        this.project = project;
        classLoaderManager = ApplicationManager.getApplication().getComponent(MPSCoreComponents.class).getClassLoaderManager();
        classLoaderManager.addListener(this);
    }

    private void startEngine() {
        if (dClareMPS == null || !dClareMPS.isRunning()) {
            dClareMPS = new DClareMPS(project, prevState, maxTotalNrOfChanges, maxNrOfChanges);
            dClareMPS.start();
            dClareMPS.setTrace(trace);
        }
    }

    private void stopEngine() {
        if (dClareMPS != null && dClareMPS.isRunning()) {
            prevState = dClareMPS.root.preState().copy(o -> o instanceof DObject, s -> s instanceof DAttribute);
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

    public boolean isTrace() {
        return trace;
    }

    public void setTrace(boolean trace) {
        if (trace != this.trace) {
            this.trace = trace;
            if (dClareMPS != null) {
                dClareMPS.setTrace(trace);
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

    @Override
    public void onUnloaded(Set<ReloadableModule> unloadedModules, ProgressMonitor monitor) {
        stopEngine();
    }

    @Override
    public void onLoaded(Set<ReloadableModule> loadedModules, ProgressMonitor monitor) {
        loaded = true;
        if (on) {
            startEngine();
        }
    }

}
