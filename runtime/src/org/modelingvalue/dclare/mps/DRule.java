//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2019 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Context;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.Direction;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.MutableTransaction;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.ObserverTransaction;
import org.modelingvalue.dclare.Transaction;
import org.modelingvalue.dclare.UniverseTransaction;

@SuppressWarnings("rawtypes")
public interface DRule<O> extends DFeature {

    Constant<DRule, DObserver> OBSERVER = Constant.of("OBSERVER",                                  //
            r -> DObserver.of(r, r.initialLowPriority() ? Direction.backward : Direction.forward));

    Context<Set<DIssue>>       DISUES   = Context.of(Set.of());

    Context<Map<DIdentity, DMatchedObject>> DCONSTRUCTED         = Context.of(Map.of());

    class DObserver<O extends Mutable> extends Observer<O> {

        protected final Observed<DObject, Map<DIdentity, DMatchedObject>> constructed;

        private static <M extends Mutable> DObserver of(DRule rule, Direction initDirection) {
            return new DObserver<M>(rule, initDirection);
        }

        @SuppressWarnings("unchecked")
        private DObserver(DRule rule, Direction initDirection) {
            super(rule, o -> ((DRule.DObserverTransaction) LeafTransaction.getCurrent()).run(() -> rule.run(o)), initDirection);
            constructed = Observed.of(rule, Map.of());
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

        protected void run(Runnable action) {
            DObject dObject = object();
            if (dObject.isOwned()) {
                try {
                    action.run();
                } finally {
                    DObject.DRULE_ISSUES.set(dObject, (b, a) -> a.addAll(b.filter(i -> !i.getRule().equals(rule()))), DISUES.get());
                    DISUES.set(Set.of());
                }
            }
        }

        public DObject object() {
            return (DObject) mutable();
        }

        @Override
        public DObserver<?> observer() {
            return (DObserver) observer();
        }

        public DRule rule() {
            return observer().rule();
        }

    }

    void run(O object);

    boolean initialLowPriority();

}
