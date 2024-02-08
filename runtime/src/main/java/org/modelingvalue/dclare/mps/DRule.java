//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//  (C) Copyright 2018-2024 Modeling Value Group B.V. (http://modelingvalue.org)                                         ~
//                                                                                                                       ~
//  Licensed under the GNU Lesser General Public License v3.0 (the 'License'). You may not use this file except in       ~
//  compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0   ~
//  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on  ~
//  an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the   ~
//  specific language governing permissions and limitations under the License.                                           ~
//                                                                                                                       ~
//  Maintainers:                                                                                                         ~
//      Wim Bast, Tom Brus                                                                                               ~
//                                                                                                                       ~
//  Contributors:                                                                                                        ~
//      Ronald Krijgsheld ✝, Arjan Kok, Carel Bast                                                                       ~
// --------------------------------------------------------------------------------------------------------------------- ~
//  In Memory of Ronald Krijgsheld, 1972 - 2023                                                                          ~
//      Ronald was suddenly and unexpectedly taken from us. He was not only our long-term colleague and team member      ~
//      but also our friend. "He will live on in many of the lines of code you see below."                               ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Concurrent;
import org.modelingvalue.dclare.*;

@SuppressWarnings("rawtypes")
public interface DRule<O> extends DFeature {

    Constant<DRule, DObserver> OBSERVER = Constant.of("OBSERVER", DObserver::new);

    class DObserver<O extends Mutable> extends Observer<O> {

        @SuppressWarnings("unchecked")
        private DObserver(DRule rule) {
            super(rule, rule::run, Collection.of(rule.targets()).asSet(), //
                    rule.initialLowPriority() ? Priority.OUTER : Priority.one, //
                    IAspect.DIRECTION.get(rule.ruleSet().getAspect()), //
                    LeafModifier.anonymous.iff(rule.ruleSet().getAnonymousType() != null), //
                    LeafModifier.atomic.iff(rule.atomic()));
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

        final Concurrent<Set<DIssue>> issues = Concurrent.of();

        private DObserverTransaction(UniverseTransaction root) {
            super(root);
        }

        @Override
        protected final void doRun(State pre, UniverseTransaction universeTransaction) {
            DMutable dObject = mutable();
            issues.init(Set.of());
            try {
                if (!dObject.isObsolete(rule().ruleSet().getAnonymousType())) {
                    super.doRun(pre, universeTransaction);
                }
            } finally {
                DMutable.CONTAINED_DCLARE_ISSUES.set(dObject, (b, a) -> a.addAll(b.exclude(i -> i.getRule().equals(rule()))), issues.result());
            }
        }

        @Override
        public DMutable mutable() {
            return (DMutable) super.mutable();
        }

        @Override
        public DObserver<?> observer() {
            return (DObserver) super.observer();
        }

        public DRule rule() {
            return observer().rule();
        }

    }

    void run(O object);

    boolean initialLowPriority();

    java.util.List<DObserved> targets();

    boolean atomic();

    @Override
    default boolean isConstant() {
        return false;
    }

}
