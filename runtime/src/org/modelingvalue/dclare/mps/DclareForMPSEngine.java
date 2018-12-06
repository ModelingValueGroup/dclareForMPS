package org.modelingvalue.dclare.mps;

import org.jetbrains.mps.openapi.project.Project;

public class DclareForMPSEngine {

    private final Project project;

    private DClareMPS     dClareMPS = null;

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
}
