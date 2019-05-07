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

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Set;
import org.modelingvalue.dclare.mps.DRule.DObserver;
import org.modelingvalue.transactions.Constant;

@SuppressWarnings("rawtypes")
public abstract class DType {

    private static final Constant<DType, Set<IRuleSet>>   TYPE_RULE_SETS = Constant.of("TYPE_RULE_SETS", Set.of(), t -> t.getLanguages().flatMap(l -> DClareMPS.RULE_SETS.get(l)).toSet());

    private static final Constant<DType, Set<DObserver>>  OBSERVERS      = Constant.<DType, Set<DObserver>> of("OBSERVERS", Set.of(),                                                      //
            t -> t.getRules(TYPE_RULE_SETS.get(t)).map(r -> DRule.OBSERVER.get(r)).toSet());

    private static final Constant<DType, Set<DAttribute>> ATTRIBUTES     = Constant.of("ATTRIBUTES", Set.of(), t -> t.getAttributes(TYPE_RULE_SETS.get(t)));

    public abstract Set<DRule> getRules(Set<IRuleSet> ruleSets);

    public abstract Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets);

    public abstract Set<SLanguage> getLanguages();

    public final Set<DObserver> getObservers() {
        return OBSERVERS.get(this);
    }

    public final Set<DAttribute> getAttributes() {
        return ATTRIBUTES.get(this);
    }

    public final Set<DAttribute> getNonSyntheticAttributes() {
        return ATTRIBUTES.get(this).filter(a -> !a.isSynthetic()).toSet();
    }

    private final Object identity;

    protected DType(Object identity) {
        this.identity = identity;
    }

    @Override
    public int hashCode() {
        return getClass().hashCode() + identity.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return obj != null && getClass().equals(obj.getClass()) && identity.equals(((DType) obj).identity);
    }

    @Override
    public String toString() {
        return getClass().getSimpleName() + ":" + identity;
    }
}
