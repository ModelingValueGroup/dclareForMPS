package org.modelingvalue.dclare.mps;

public class DReadConstruction<R> extends DConstruction {

    protected DReadConstruction(R ref) {
        super(new Object[]{ref});
    }

    @SuppressWarnings("unchecked")
    public R reference() {
        return (R) identity[0];
    }

}
