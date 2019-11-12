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
        protected void checkTooManyChanges(State pre, DefaultMap<Observed, Set<Mutable>> sets, DefaultMap<Observed, Set<Mutable>> gets) {
        }

    }

}
