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

import java.util.Arrays;
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Age;
import org.modelingvalue.dclare.ActionTransaction;
import org.modelingvalue.dclare.Construction;
import org.modelingvalue.dclare.Construction.Reason;
import org.modelingvalue.dclare.IdentityDerivationTransaction;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.mps.DAttribute.DIdentifyingAttribute;

public abstract class DIdentifiedMutable extends DMutable implements DIdentified {

    protected Object[] identity;

    protected DIdentifiedMutable(Object[] identity) {
        this.identity = identity;
    }

    @Override
    public int hashCode() {
        return Arrays.hashCode(identity);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        } else if (obj == null) {
            return false;
        } else if (getClass() != obj.getClass()) {
            return false;
        } else {
            DIdentifiedMutable other = (DIdentifiedMutable) obj;
            if (other.identity == identity) {
                return true;
            } else if (!Arrays.equals(identity, other.identity)) {
                return false;
            } else {
                if (Age.age(identity) > Age.age(other.identity)) {
                    other.identity = identity;
                } else {
                    identity = other.identity;
                }
                return true;
            }
        }
    }

    protected Collection<Reason> deriveReasons() {
        return dAllDerivations().map(Construction::reason);
    }

    public Set<String> getAnonymousTypes() {
        return deriveReasons().filter(DQuotation.class).map(DDerive::anonymousType).notNull().asSet();
    }

    public Set<SLanguage> getAnonymousLanguages() {
        return deriveReasons().filter(DQuotation.class).map(DDerive::aspect).flatMap(d -> IAspect.ALL_DEPENDENCIES.get(d)).map(IAspect::getLanguage).asSet();
    }

    protected static <D extends DIdentifiedMutable> D quotationConstruct(IRuleSet ruleSet, String anonymousType, Object[] ctx, Supplier<D> supplier) {
        LeafTransaction tx = LeafTransaction.getCurrent();
        return tx.construct(new DQuotation(tx.mutable(), ruleSet, anonymousType, ctx), supplier);
    }

    @Override
    @SuppressWarnings("unchecked")
    public <V> V get(DIdentifyingAttribute<?, V> attr) {
        if (attr.synthetic()) {
            Construction c = getQuotationConstruction(attr.anonymousType());
            if (c != null) {
                return (V) c.get(attr.index());
            } else {
                throw new NullPointerException("No Aanonymous Type " + attr.anonymousType() + " found when trying to read " + this + "." + attr);
            }
        } else {
            return (V) identity[attr.index()];
        }
    }

    private Construction getQuotationConstruction(String anonymousType) {
        for (Construction c : dAllDerivations()) {
            if (c.reason() instanceof DQuotation && ((DQuotation) c.reason()).anonymousType() == anonymousType) {
                return c;
            }
        }
        return null;
    }

    @Override
    protected boolean isObsolete(String anonymousType) {
        return anonymousType != null && getQuotationConstruction(anonymousType) == null;
    }

    @Override
    public String toString() {
        return Arrays.toString(identity);
    }

    @Override
    public Object[] getIdentity() {
        return identity;
    }

    protected DMutable getContextObject() {
        LeafTransaction tx = LeafTransaction.getCurrent();
        return tx instanceof ActionTransaction && tx.mutable() instanceof DMutable ? (DMutable) tx.mutable() : //
                tx instanceof IdentityDerivationTransaction && ((IdentityDerivationTransaction) tx).getContextMutable() instanceof DMutable ? (DMutable) ((IdentityDerivationTransaction) tx).getContextMutable() : //
                        DClareMPS.instance(tx).getRepository();
    }

}
