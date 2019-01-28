package org.modelingvalue.dclare.mps;

import org.jetbrains.mps.openapi.model.SNode;

public interface DFeature<O> {

    SNode getSource();

    boolean isSynthetic();

}
