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
    private boolean                    keepState;
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
            prevState = null;
            dClareMPS.start();
            dClareMPS.setTrace(trace);
        }
    }

    @SuppressWarnings("rawtypes")
    private void stopEngine() {
        if (dClareMPS != null && dClareMPS.isRunning()) {
            prevState = keepState ? dClareMPS.root.preState().copy(o -> o instanceof DObject, s -> s instanceof DAttribute && !((DAttribute) s).isSynthetic()) : null;
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

    public boolean isKeepState() {
        return keepState;
    }

    public void setKeepState(boolean keepState) {
        if (keepState != this.keepState) {
            this.keepState = keepState;
            if (!keepState) {
                prevState = null;
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
