package org.modelingvalue.dclare.mps;

public interface IChangeHandler<O, T> {

    DAttribute<O, T> attribute();

    void handle(O context, T pre, T post);

}
