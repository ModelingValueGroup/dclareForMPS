package org.modelingvalue.dclare.mps;

public interface DObject {

    @SuppressWarnings("rawtypes")
    java.util.List<DAttribute> getNonSyntheticAttributes();

}
