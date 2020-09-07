package org.modelingvalue.dclare.mps;

import org.modelingvalue.dclare.mps.DRule.DObserver;

public abstract class DDeriveConstruction extends DConstruction {

    protected DDeriveConstruction(Object[] identity) {
        super(identity);
    }

    protected abstract DDeriveConstruction moveTo(DObject object);

    public abstract DObserver<?> observer();

    public abstract DObject object();

    public abstract String getAnonymousType();

}
