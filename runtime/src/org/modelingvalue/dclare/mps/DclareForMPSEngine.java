package org.modelingvalue.dclare.mps;

import org.jetbrains.mps.openapi.project.Project;

public class DclareForMPSEngine {

    private final Project project;

    private DClareMPS     dClareMPS = null;

<<<<<<< HEAD
    private boolean       on;
    private boolean       trace;
    private int           maxTotalNrOfChanges;
    private int           maxNrOfChanges;

    public DclareForMPSEngine(Project project) {
        this.project = project;
    }

    private void start() {
        if (dClareMPS == null || !dClareMPS.isRunning()) {
            dClareMPS = new DClareMPS(project, maxTotalNrOfChanges, maxNrOfChanges);
            dClareMPS.start();
            dClareMPS.setTrace(trace);
        }
    }

    public void stop() {
        if (dClareMPS != null && dClareMPS.isRunning()) {
            dClareMPS.stop();
            dClareMPS = null;
        }
    }

    public boolean isOn() {
        return on;
    }

    public void setOn(boolean on) {
        if (on != this.on) {
            this.on = on;
            if (on) {
                start();
            } else {
                stop();
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

=======
    public DclareForMPSEngine(Project project) {
        this.project = project;
    }

    public void start(int maxTotalNrOfChanges, int maxNrOfChanges) {
        if (dClareMPS == null || !dClareMPS.isRunning()) {
            dClareMPS = new DClareMPS(project, maxTotalNrOfChanges, maxNrOfChanges);
            dClareMPS.start();
        }
    }

    public void stop() {
        if (dClareMPS != null && dClareMPS.isRunning()) {
            dClareMPS.stop();
            dClareMPS = null;
        }
    }
>>>>>>> branch 'master' of https://github.com/ModelingValueGroup/DclareForMPS.git
}
