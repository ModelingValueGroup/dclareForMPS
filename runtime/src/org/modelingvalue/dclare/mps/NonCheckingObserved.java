package org.modelingvalue.dclare.mps;

import java.util.function.Supplier;

import org.modelingvalue.collections.DefaultMap;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.QuadConsumer;
import org.modelingvalue.transactions.LeafTransaction;
import org.modelingvalue.transactions.Mutable;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Setable;

public class NonCheckingObserved<O, T> extends Observed<O, T> {

    public static <C, V> Observed<C, V> of(Object id, V def) {
        return new NonCheckingObserved<C, V>(id, def, false, null, null, null, true);
    }

    protected NonCheckingObserved(Object id, T def, boolean containment, Supplier<Setable<?, ?>> opposite, Supplier<Setable<O, Set<?>>> scope, QuadConsumer<LeafTransaction, O, T, T> changed, boolean checkConsistency) {
        super(id, def, containment, opposite, scope, changed, checkConsistency);
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected void checkTooManyObservers(LeafTransaction tx, Object object, DefaultMap<Observer, Set<Mutable>> observers) {
    }

}
