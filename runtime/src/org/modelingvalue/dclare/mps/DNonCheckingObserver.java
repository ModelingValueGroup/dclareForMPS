//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2020 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
//                                                                                                                     ~
// Licensed under the GNU Lesser General Public License v3.0 (the 'License'). You may not use this file except in      ~
// compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0  ~
// Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on ~
// an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the  ~
// specific language governing permissions and limitations under the License.                                          ~
//                                                                                                                     ~
// Maintainers:                                                                                                        ~
//     Wim Bast, Tom Brus, Ronald Krijgsheld                                                                           ~
// Contributors:                                                                                                       ~
//     Arjan Kok, Carel Bast                                                                                           ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

import java.util.function.Consumer;

import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.util.Concurrent;
import org.modelingvalue.dclare.Direction;
import org.modelingvalue.dclare.MutableTransaction;
import org.modelingvalue.dclare.NonCheckingObserver;
import org.modelingvalue.dclare.State;
import org.modelingvalue.dclare.Transaction;
import org.modelingvalue.dclare.UniverseTransaction;

public class DNonCheckingObserver<O extends DObject> extends NonCheckingObserver<O> {

    public static <M extends DObject> DNonCheckingObserver<M> of(Consumer<M> action, Object id) {
        return new DNonCheckingObserver<>(id, action, Direction.forward);
    }

    public static <M extends DObject> DNonCheckingObserver<M> of(Consumer<M> action, Object id, Direction initDirection) {
        return new DNonCheckingObserver<>(id, action, initDirection);
    }

    private DNonCheckingObserver(Object id, Consumer<O> action, Direction initDirection) {
        super(id, action, initDirection);
    }

    @Override
    public DNonCheckingObserver.DNonCheckingTransaction openTransaction(MutableTransaction parent) {
        return ((DClareMPS) parent.universeTransaction().mutable()).dNonCheckingTransactions.get().open(this, parent);
    }

    @Override
    public void closeTransaction(Transaction tx) {
        ((DClareMPS) tx.universeTransaction().mutable()).dNonCheckingTransactions.get().close((DNonCheckingObserver.DNonCheckingTransaction) tx);
    }

    @Override
    public DNonCheckingObserver.DNonCheckingTransaction newTransaction(UniverseTransaction universeTransaction) {
        return new DNonCheckingTransaction(universeTransaction);
    }

    public static class DNonCheckingTransaction extends NonCheckingTransaction implements DConstructingTransaction {

        @SuppressWarnings("rawtypes")
        final Concurrent<Map<DDeriveConstruction, DMatchedObject>> constructed = Concurrent.of();

        private DNonCheckingTransaction(UniverseTransaction root) {
            super(root);
        }

        @Override
        protected final void doRun(State pre, UniverseTransaction universeTransaction) {
            DObject dObject = object();
            constructed.init(Map.of());
            try {
                if (dObject.isOwned()) {
                    super.doRun(pre, universeTransaction);
                }
            } finally {
                runNonObserving(() -> DMatchedObject.CONSTRUCTED.get(observer()).set(dObject, constructed.result()));
            }
        }

        @Override
        public DObject object() {
            return (DObject) mutable();
        }

        @SuppressWarnings("rawtypes")
        @Override
        public Concurrent<Map<DDeriveConstruction, DMatchedObject>> constructed() {
            return constructed;
        }

    }

}
