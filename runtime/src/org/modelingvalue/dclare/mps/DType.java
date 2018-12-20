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

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Set;
import org.modelingvalue.transactions.Compound;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Root;
import org.modelingvalue.transactions.Setable;

@SuppressWarnings("rawtypes")
public abstract class DType {

    private static final Setable<DType, Set<Consumer>>   RULES          = Observed.of("RULES", Set.of());

    private static final Setable<DType, Set<DAttribute>> ATTRIBUTES     = Observed.of("ATTRIBUTES", Set.of());

    private static final Setable<DType, Set<IRuleSet>>   TYPE_RULE_SETS = Observed.of("TYPE_RULE_SETS", Set.of());

    public abstract Set<Consumer> getRules(Set<IRuleSet> ruleSets);

    public abstract Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets);

    public abstract Set<SLanguage> getLanguages();

    public final Set<Consumer> getRules() {
        return RULES.get(this);
    }

    public final Set<DAttribute> getAttributes() {
        return ATTRIBUTES.get(this);
    }

    public final Set<DAttribute> getNonSyntheticAttributes() {
        return ATTRIBUTES.get(this).filter(a -> !a.isSynthetic()).toSet();
    }

    public abstract Object getIdentity();

    @Override
    public int hashCode() {
        return getClass().hashCode() + getIdentity().hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return getClass().equals(obj.getClass()) && getIdentity().equals(((DType) obj).getIdentity());
    }

    public void start(Root root) {
        Compound tx = Compound.of(this, root);
        Observer.of(TYPE_RULE_SETS, tx, () -> TYPE_RULE_SETS.set(this, getLanguages().flatMap(l -> DClareMPS.RULE_SETS.get(l)).toSet())).trigger();
        Observer.of(RULES, tx, () -> RULES.set(this, getRules(TYPE_RULE_SETS.get(this)))).trigger();
        Observer.of(ATTRIBUTES, tx, () -> ATTRIBUTES.set(this, getAttributes(TYPE_RULE_SETS.get(this)))).trigger();
    }

    public void stop(Root root) {
    }

    @Override
    public String toString() {
        return getClass().getSimpleName() + ":" + getIdentity();
    }
}
