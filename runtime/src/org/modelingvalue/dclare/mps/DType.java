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
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.MutableClass;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.mps.DRule.DObserver;

@SuppressWarnings("rawtypes")
public abstract class DType implements MutableClass {

    private static final Constant<DType, Set<IRuleSet>>   TYPE_RULE_SETS = Constant.of("TYPE_RULE_SETS", Set.of(), t -> t.getLanguages().flatMap(l -> DClareMPS.RULE_SETS.get(l)).toSet());

    private static final Constant<DType, Set<DObserver>>  OBSERVERS      = Constant.<DType, Set<DObserver>> of("OBSERVERS", Set.of(),                                                      //
            t -> t.getRules(TYPE_RULE_SETS.get(t)).map(r -> DRule.OBSERVER.get(r)).toSet());

    private static final Constant<DType, Set<DAttribute>> ATTRIBUTES     = Constant.of("ATTRIBUTES", Set.of(), t -> t.getAttributes(TYPE_RULE_SETS.get(t)));

    private static final Constant<DType, Set<DAttribute>> CONTAINERS     = Constant.of("CONTAINERS", Set.of(), t -> ATTRIBUTES.get(t).filter(DAttribute::isComposite).toSet());

    private static final Constant<DType, Set<DAttribute>> NON_SYNTHETICS = Constant.of("NON_SYNTHETICS", Set.of(), t -> ATTRIBUTES.get(t).filter(a -> !a.isSynthetic()).toSet());

    public abstract Set<DRule> getRules(Set<IRuleSet> ruleSets);

    public abstract Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets);

    public abstract Set<SLanguage> getLanguages();

    public final Set<IRuleSet> getRuleSets() {
        return TYPE_RULE_SETS.get(this);
    }

    public Set<DObserver> getObservers() {
        return OBSERVERS.get(this);
    }

    public Set<DAttribute> getAttributes() {
        return ATTRIBUTES.get(this);
    }

    public final Set<DAttribute> getNonSyntheticAttributes() {
        return NON_SYNTHETICS.get(this);
    }

    public final Set<DAttribute> getContainerAttributes() {
        return CONTAINERS.get(this);
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

    @Override
    public final Collection<? extends Observer<?>> dObservers() {
        return this == DObject.TYPE.getDefault() //
                ? Set.of(DObject.TYPE_RULE) //
                : Collection.concat(observers(), getObservers()) //
                .map(o->(Observer<?>)o);
    }

    @SuppressWarnings("unchecked")
    @Override
    public final Collection<? extends Setable<? extends Mutable, ?>> dSetables() {
        return this == DObject.TYPE.getDefault() //
                ? Set.of(DObject.TYPE) //
                : Collection.concat(getAttributes().filter(a -> a instanceof Setable), setables()) //
                .map(o -> (Setable <? extends Mutable, ?>) o);
    }

    protected Collection<Observer> observers() {
        return DObject.OBSERVERS;
    }

    protected Collection<Setable> setables() {
        return DObject.SETABLES;
    }

}
