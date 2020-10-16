package org.modelingvalue.dclare.mps;

import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.util.Concurrent;
import org.modelingvalue.dclare.Observer;

public interface DConstructingTransaction {

    @SuppressWarnings("rawtypes")
    Concurrent<Map<DDeriveConstruction, DMatchedObject>> constructed();

    Observer<?> observer();

    DObject object();

}
