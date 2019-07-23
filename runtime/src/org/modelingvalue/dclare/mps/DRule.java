//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018 Modeling Value Group B.V. (http://modelingvalue.org)                                             ~
//                                                                                                                     ~
// Licensed under the GNU Lesser General Public License v3.0 (the "License"). You may not use this file except in      ~
// compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0  ~
// Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on ~
// an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the  ~
// specific language governing permissions and limitations under the License.                                          ~
//                                                                                                                     ~
// Contributors:                                                                                                       ~
//     Wim Bast, Carel Bast, Tom Brus, Arjan Kok, Ronald Krijgsheld                                                    ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

import org.modelingvalue.collections.DefaultMap;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Context;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.Direction;
import org.modelingvalue.transactions.EmptyMandatoryException;
import org.modelingvalue.transactions.LeafTransaction;
import org.modelingvalue.transactions.Mutable;
import org.modelingvalue.transactions.MutableTransaction;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.ObserverTransaction;
import org.modelingvalue.transactions.Priority;
import org.modelingvalue.transactions.State;
import org.modelingvalue.transactions.StopObserverException;
import org.modelingvalue.transactions.TooManyChangesException;
import org.modelingvalue.transactions.TooManyObservedException;
import org.modelingvalue.transactions.TooManyObserversException;
import org.modelingvalue.transactions.Transaction;
import org.modelingvalue.transactions.UniverseTransaction;

@SuppressWarnings("rawtypes")
public interface DRule<O> extends DFeature<O> {

    Constant<DRule, DObserver> OBSERVER             = Constant.of("OBSERVER",   //
            r -> DObserver.of(r, Direction.forward, Priority.postDepth));

    Context<Boolean>           EMPTY_ATTRIBUTE      = Context.of(false);

    Context<Boolean>           COLLECTION_ATTRIBUTE = Context.of(false);

    class DObserver<O extends Mutable> extends Observer<O> {

        public static <M extends Mutable> DObserver of(DRule rule, Direction initDirection, Priority priority) {
            return new DObserver<M>(rule, initDirection, priority);
        }

        @SuppressWarnings("unchecked")
        private DObserver(DRule rule, Direction initDirection, Priority priority) {
            super(rule, o -> ((DRule.DObserverTransaction) LeafTransaction.getCurrent()).run(() -> rule.run(o)), initDirection, priority);
        }

        public DRule rule() {
            return (DRule) id();
        }

        @Override
        public DRule.DObserverTransaction openTransaction(MutableTransaction parent) {
            return ((DClareMPS) parent.universeTransaction().mutable()).dObserverTransactions.get().open(this, parent);
        }

        @Override
        public void closeTransaction(Transaction tx) {
            ((DClareMPS) tx.universeTransaction().mutable()).dObserverTransactions.get().close((DRule.DObserverTransaction) tx);
        }

        @Override
        public DRule.DObserverTransaction newTransaction(UniverseTransaction universeTransaction) {
            return new DRule.DObserverTransaction(universeTransaction);
        }

    }

    class DObserverTransaction extends ObserverTransaction {

        private DObserverTransaction(UniverseTransaction root) {
            super(root);
        }

        void run(Runnable action) {
            if (object().isOwned()) {
                try {
                    action.run();
                } catch (NullPointerException e) {
                    if (EMPTY_ATTRIBUTE.get()) {
                        throw new EmptyMandatoryException();
                    } else {
                        object().addMessage(dRule(), e);
                        throw new StopObserverException(e);
                    }
                } catch (IndexOutOfBoundsException e) {
                    if (COLLECTION_ATTRIBUTE.get()) {
                        throw new EmptyMandatoryException();
                    } else {
                        object().addMessage(dRule(), e);
                        throw new StopObserverException(e);
                    }
                } catch (Throwable e) {
                    object().addMessage(dRule(), e);
                    throw new StopObserverException(e);
                } finally {
                    COLLECTION_ATTRIBUTE.set(false);
                    EMPTY_ATTRIBUTE.set(false);
                }
            }
        }

        private DObject object() {
            return (DObject) parent().mutable();
        }

        private DRule dRule() {
            return (DRule) observer().id();
        }

        @Override
        protected void checkTooManyObservers(Object object, Observed observed, DefaultMap<Observer, Set<Mutable>> obervers) {
            if (object instanceof DObject && observed instanceof DObserved && !((DObserved) observed).isSynthetic()) {
                try {
                    super.checkTooManyObservers(object, observed, obervers.filter(k -> k instanceof DObserver, v -> true));
                } catch (TooManyObserversException e) {
                    ((DObject) object).addMessage((DObserved) observed, e);
                }
            }
        }

        @Override
        protected void checkTooManyObserved(DefaultMap<Observed, Set<Mutable>> sets, DefaultMap<Observed, Set<Mutable>> gets) {
            try {
                super.checkTooManyObserved(//
                        sets.filter(k -> k instanceof DObserved && !((DObserved) k).isSynthetic(), v -> true), //
                        gets.filter(k -> k instanceof DObserved && !((DObserved) k).isSynthetic(), v -> true));
            } catch (TooManyObservedException e) {
                object().addMessage(dRule(), e);
            }
        }

        @Override
        protected boolean countChanges(Observed observed) {
            if (observed instanceof DObserved && !((DObserved) observed).isSynthetic()) {
                return super.countChanges(observed);
            } else {
                return false;
            }
        }

        @Override
        protected void checkTooManyChanges(State pre, DefaultMap<Observed, Set<Mutable>> sets, DefaultMap<Observed, Set<Mutable>> gets) {
            if (universeTransaction().isDebugging()) {
                sets = sets.filter(k -> k instanceof DObserved && !((DObserved) k).isSynthetic(), v -> true);
                gets = gets.filter(k -> k instanceof DObserved && !((DObserved) k).isSynthetic(), v -> true);
            }
            try {
                super.checkTooManyChanges(pre, sets, gets);
            } catch (TooManyChangesException e) {
                object().addMessage(dRule(), e);
                throw new StopObserverException(e);
            }
        }

    }

    void run(O object);

}
