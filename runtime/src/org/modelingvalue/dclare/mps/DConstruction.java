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

import java.util.Arrays;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.util.Age;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.mps.DAttribute.DIdentifyingAttribute;
import org.modelingvalue.dclare.mps.DRule.DObserver;
import org.modelingvalue.dclare.mps.DRule.DObserverTransaction;

public class DConstruction {

    public static DConstruction of(SLanguage anonymousLanguage, String anonymousType, Object[] ctx) {
        return new DConstruction(anonymousLanguage, anonymousType, ctx);
    }

    private Object[] identity;

    protected DConstruction(SLanguage anonymousLanguage, String anonymousType, Object[] ctx) {
        this.identity = Arrays.copyOf(ctx, ctx.length + 4);
        identity[identity.length - 3] = ((DObserverTransaction) LeafTransaction.getCurrent()).observer();
        identity[identity.length - 2] = anonymousLanguage;
        identity[identity.length - 1] = anonymousType;
    }

    @Override
    public int hashCode() {
        return Arrays.deepHashCode(identity);
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
            DConstruction other = (DConstruction) obj;
            if (other.identity == identity) {
                return true;
            } else if (!Arrays.deepEquals(identity, other.identity)) {
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

    @SuppressWarnings("unchecked")
    protected <V> V get(DIdentifyingAttribute<?, V> attr) {
        return (V) identity[attr.index()];
    }

    @Override
    public String toString() {
        return Arrays.toString(identity);
    }

    public DObserver<?> observer() {
        return (DObserver<?>) identity[identity.length - 3];
    }

    public DObject object() {
        return (DObject) identity[0];
    }

    public String getAnonymousType() {
        return (String) identity[identity.length - 1];
    }

    public SLanguage getAnonymousLanguage() {
        return (SLanguage) identity[identity.length - 2];
    }

}
