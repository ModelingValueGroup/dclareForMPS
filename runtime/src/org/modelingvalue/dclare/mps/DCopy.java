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

import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.dclare.mps.DRule.DObserver;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;

public class DCopy extends DNode {

    private static final Constant<Triple<Set<SLanguage>, SConcept, String>, DType> COPY_TYPE   = Constant.of("COPY_TYPE", t -> new DNodeType(t) {

                                                                                                   @SuppressWarnings("rawtypes")
                                                                                                   @Override
                                                                                                   public Set<DObserver> getObservers() {
                                                                                                       return Set.of();
                                                                                                   }

                                                                                                   @SuppressWarnings("rawtypes")
                                                                                                   @Override
                                                                                                   protected Collection<? extends Observer> observers() {
                                                                                                       return Collection.concat(super.observers(), RULES.get(concept));
                                                                                                   }
                                                                                               });

    private static final Observed<Pair<DCopy, DNode>, DCopy>                       DCHILD_COPY = NonCheckingObserved.of("DCHILD_COPY", null);

    private static final Constant<SConcept, Set<Observer<DCopy>>>                  RULES       = Constant.of("RULES", c -> {
                                                                                                   Set<Observer<DCopy>> observers = Set.of();
                                                                                                   for (SProperty property : c.getProperties()) {
                                                                                                       Observed<DNode, String> observed = PROPERTY.get(property);
                                                                                                       observers = observers.add(DObject.<DCopy> observer(observed, o -> observed.set(o, observed.get(o.copied))));
                                                                                                   }
                                                                                                   for (SContainmentLink containment : c.getContainmentLinks()) {
                                                                                                       if (containment.isMultiple()) {
                                                                                                           Observed<DNode, List<DNode>> observed = MANY_CONTAINMENT.get(containment);
                                                                                                           observers = observers.add(DObject.<DCopy> observer(observed, o -> observed.set(o, o.copy(observed.get(o.copied)))));
                                                                                                       } else {
                                                                                                           Observed<DNode, DNode> observed = SINGLE_CONTAINMENT.get(containment);
                                                                                                           observers = observers.add(DObject.<DCopy> observer(observed, o -> observed.set(o, o.copy(observed.get(o.copied)))));
                                                                                                       }
                                                                                                   }
                                                                                                   for (SReferenceLink reference : c.getReferenceLinks()) {
                                                                                                       Observed<DNode, DNode> observed = REFERENCE.get(reference);
                                                                                                       observers = observers.add(DObject.<DCopy> observer(observed, o -> observed.set(o, o.map(observed.get(o.copied)))));
                                                                                                   }
                                                                                                   return observers;
                                                                                               });

    public static DCopy of(DNode copied, Object[] identity) {
        return new DCopy(copied, null, identity);
    }

    private final DNode copied;
    private final DCopy root;

    private DCopy(DNode copied, DCopy root, Object[] identity) {
        super(null, copied.getConcept(), null, identity);
        this.copied = copied;
        this.root = root != null ? root : this;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + copied.hashCode();
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (!super.equals(obj))
            return false;
        DCopy other = (DCopy) obj;
        if (!copied.equals(other.copied))
            return false;
        shareOriginal(other);
        return true;
    }

    @Override
    protected DType getType() {
        return COPY_TYPE.get(Triple.of(Set.of(), getConcept(), null));
    }

    private List<DNode> copy(List<DNode> children) {
        return children.map(this::copy).toList();
    }

    private DNode map(DNode referenced) {
        return referenced != null && referenced.hasAncestor(root.copied) ? //
                (referenced.equals(root.copied) ? root : copy(referenced)) : //
                referenced;
    }

    private DNode copy(DNode child) {
        if (child != null) {
            Pair<DCopy, DNode> key = Pair.of(root, child);
            DCopy copy = DCHILD_COPY.get(key);
            if (copy == null) {
                copy = new DCopy(key.b(), key.a(), key.a().identity);
                DCHILD_COPY.set(key, copy);
            }
            return copy;
        } else {
            return null;
        }
    }

}
