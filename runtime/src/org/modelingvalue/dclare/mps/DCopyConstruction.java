package org.modelingvalue.dclare.mps;

import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.mps.DRule.DObserver;
import org.modelingvalue.dclare.mps.DRule.DObserverTransaction;

public class DCopyConstruction extends DDeriveConstruction {

    protected DCopyConstruction(String anonymousType, DObject object, DNode copied) {
        super(new Object[4]);
        identity[0] = object;
        identity[1] = copied;
        identity[2] = ((DObserverTransaction) LeafTransaction.getCurrent()).observer();
        identity[3] = anonymousType;
    }

    protected DCopyConstruction(DConstruction root, DNode copied) {
        super(new Object[]{root, copied});
    }

    private DCopyConstruction(Object[] identity) {
        super(identity);
    }

    @Override
    protected DCopyConstruction moveTo(DObject object) {
        Object[] id = identity.clone();
        id[0] = object;
        return new DCopyConstruction(id);
    }

    public DCopyConstruction root() {
        return identity.length == 2 ? (DCopyConstruction) identity[0] : this;
    }

    @Override
    public DObserver<?> observer() {
        return (DObserver<?>) root().identity[2];
    }

    public DNode copied() {
        return (DNode) identity[1];
    }

    @Override
    public DObject object() {
        return (DObject) root().identity[0];
    }

    @Override
    public String getAnonymousType() {
        return (String) root().identity[3];
    }

}
