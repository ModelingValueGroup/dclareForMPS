package org.modelingvalue.dclare.mps;

public interface DRule<O> extends DFeature<O> {

    void run(O object);

}
