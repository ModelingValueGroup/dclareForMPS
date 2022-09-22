package org.modelingvalue.dclare.mps;

import static org.modelingvalue.dclare.UniverseTransaction.Mood.*;

import java.util.function.Supplier;

import org.modelingvalue.dclare.ImperativeTransaction;
import org.modelingvalue.dclare.UniverseStatistics;
import org.modelingvalue.dclare.UniverseTransaction.Status;

public class DclareForMpsStatus {

    private final Status status;

    public DclareForMpsStatus(Status status) {
        this.status = status;
    }

    public boolean isChecking() {
        return status.mood == idle && status.active.anyMatch(a -> a instanceof String);
    }

    public boolean isCommitting() {
        return status.mood == idle && status.active.anyMatch(a -> a instanceof ImperativeTransaction);
    }

    public boolean isIdle() {
        return status.mood == idle || status.mood == starting;
    }

    public boolean isActive() {
        return status.mood == busy;
    }

    public boolean isStopped() {
        return status.mood == stopped;
    }

    public <R> R get(Supplier<R> supplier) {
        return status.state.get(supplier);
    }

    public UniverseStatistics stats() {
        return status.stats;
    }

}
