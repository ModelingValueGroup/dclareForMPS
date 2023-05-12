//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2023 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Concurrent;
import org.modelingvalue.collections.util.Context;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.*;

import java.util.ArrayList;

@SuppressWarnings("rawtypes")
public interface DRule<O> extends DFeature {

    Constant<DRule, DObserver>                         OBSERVER                   = Constant.of("OBSERVER", DObserver::new);
    Constant<DRule, DAttribute<DObject, Set<DObject>>> LOCAL_CONTAINER_ATTRIBUTES = Constant.of("LOCAL_CONTAINER_ATTRIBUTES", dRule -> new DAttribute.DObservedAttribute<>(dRule, dRule.hashCode() + "", dRule.ruleSet(), false, false, null, Set.class, null, dRule::getSource, SetableModifier.containment, SetableModifier.plumbing));
    Context<Set<DObject>>                              TO_LOCALLY_CONTAIN         = Context.of(null);

    static void contain(DObject object) {
        var tlc = TO_LOCALLY_CONTAIN.get();
        TO_LOCALLY_CONTAIN.setOnThread((tlc == null ? Set.<DObject>of() : tlc).add(object));
    }

    class DObserver<O extends Mutable> extends Observer<O> {

        @SuppressWarnings("unchecked")
        private DObserver(DRule rule) {
            super(rule, (obj) -> {
                        TO_LOCALLY_CONTAIN.setOnThread(null);
                        try {
                            rule.run(obj);
                        } finally {
                            LOCAL_CONTAINER_ATTRIBUTES.get(rule).set((DObject) obj, TO_LOCALLY_CONTAIN.get());
                            TO_LOCALLY_CONTAIN.setOnThread(null);
                        }
                    }, //
                    Collection.of(rule.targets()).toSet(), //
                    rule.initialLowPriority() ? Priority.outer : Priority.immediate, //
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
            DObject dObject = mutable();
            issues.init(Set.of());
            try {
                if (!dObject.isObsolete(rule().ruleSet().getAnonymousType())) {
                    super.doRun(pre, universeTransaction);
                }
            } finally {
                DObject.DCLARE_ISSUES.set(dObject, (b, a) -> a.addAll(b.exclude(i -> i.getRule().equals(rule()))), issues.result());
            }
        }

        @Override
        public DObject mutable() {
            return (DObject) super.mutable();
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
