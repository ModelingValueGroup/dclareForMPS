package org.modelingvalue.dclare.mps;

import java.util.function.Consumer;

import org.modelingvalue.collections.DefaultMap;
import org.modelingvalue.collections.Set;
import org.modelingvalue.transactions.Direction;
import org.modelingvalue.transactions.Mutable;
import org.modelingvalue.transactions.MutableTransaction;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.ObserverTransaction;
import org.modelingvalue.transactions.Priority;
import org.modelingvalue.transactions.State;
import org.modelingvalue.transactions.Transaction;
import org.modelingvalue.transactions.UniverseTransaction;

public class NonCheckingObserver<O extends Mutable> extends Observer<O> {

    public static <M extends Mutable> NonCheckingObserver<M> of(Object id, Consumer<M> action, Direction initDirection, Priority priority) {
        return new NonCheckingObserver<M>(id, action, initDirection, priority);
    }

    private NonCheckingObserver(Object id, Consumer<O> action, Direction initDirection, Priority priority) {
        super(id, action, initDirection, priority);
    }

    @Override
    public NonCheckingObserver.NonCheckingTransaction openTransaction(MutableTransaction parent) {
        return ((DClareMPS) parent.universeTransaction().mutable()).nonCheckingTransactions.get().open(this, parent);
    }

    @Override
    public void closeTransaction(Transaction tx) {
        ((DClareMPS) tx.universeTransaction().mutable()).nonCheckingTransactions.get().close((NonCheckingObserver.NonCheckingTransaction) tx);
    }

    @Override
    public NonCheckingObserver.NonCheckingTransaction newTransaction(UniverseTransaction universeTransaction) {
        return new NonCheckingTransaction(universeTransaction);
    }

    protected static class NonCheckingTransaction extends ObserverTransaction {

        private NonCheckingTransaction(UniverseTransaction root) {
            super(root);
        }

        @SuppressWarnings("rawtypes")
        @Override
        protected boolean countChanges(Observed observed) {
            return false;
        }

        @SuppressWarnings("rawtypes")
        @Override
        protected void checkTooManyObserved(DefaultMap<Observed, Set<Mutable>> sets, DefaultMap<Observed, Set<Mutable>> gets) {
        }

        @SuppressWarnings("rawtypes")
        @Override
        protected void checkTooManyObservers(Object object, Observed observed, DefaultMap<Observer, Set<Mutable>> observers) {
        }

        @SuppressWarnings("rawtypes")
        @Override
        protected void checkTooManyChanges(State pre, DefaultMap<Observed, Set<Mutable>> sets, DefaultMap<Observed, Set<Mutable>> gets) {
        }

    }

}
