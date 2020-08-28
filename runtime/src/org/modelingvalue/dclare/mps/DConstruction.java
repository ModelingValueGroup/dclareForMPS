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

public class DConstruction<R> {

    public static <R> DConstruction<R> of(R ref) {
        return new DConstruction<R>(ref);
    }

    public static <R> DConstruction<R> of(SLanguage anonymousLanguage, String anonymousType, Object[] ctx) {
        return new DConstruction<R>(anonymousLanguage, anonymousType, ctx);
    }

    private Object[] identity;

    private DConstruction(R ref) {
        this.identity = new Object[]{ref};
    }

    private DConstruction(SLanguage anonymousLanguage, String anonymousType, Object[] ctx) {
        this.identity = Arrays.copyOf(ctx, ctx.length + 3);
        identity[identity.length - 3] = ((DObserverTransaction) LeafTransaction.getCurrent()).observer();
        identity[identity.length - 2] = anonymousLanguage;
        identity[identity.length - 1] = anonymousType;
    }

    private DConstruction(Object[] identity) {
        this.identity = identity;
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
            DConstruction<?> other = (DConstruction<?>) obj;
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

    public boolean isRead() {
        return identity.length == 1;
    }

    @SuppressWarnings("unchecked")
    public R reference() {
        return isRead() ? (R) identity[0] : null;
    }

    public DObserver<?> observer() {
        return isRead() ? null : (DObserver<?>) identity[identity.length - 3];
    }

    public DObject object() {
        return isRead() ? null : (DObject) identity[0];
    }

    public String getAnonymousType() {
        return isRead() ? null : (String) identity[identity.length - 1];
    }

    public SLanguage getAnonymousLanguage() {
        return isRead() ? null : (SLanguage) identity[identity.length - 2];
    }

    protected DConstruction<R> moveTo(DObject object) {
        Object[] id = identity.clone();
        id[0] = object;
        return new DConstruction<R>(id);
    }

}
