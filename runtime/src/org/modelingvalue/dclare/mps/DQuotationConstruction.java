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
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.mps.DAttribute.DIdentifyingAttribute;
import org.modelingvalue.dclare.mps.DRule.DObserver;
import org.modelingvalue.dclare.mps.DRule.DObserverTransaction;

public class DQuotationConstruction extends DDeriveConstruction {

    protected DQuotationConstruction(SLanguage anonymousLanguage, String anonymousType, Object[] ctx) {
        super(Arrays.copyOf(ctx, ctx.length + 3));
        identity[identity.length - 3] = ((DObserverTransaction) LeafTransaction.getCurrent()).observer();
        identity[identity.length - 2] = anonymousLanguage;
        identity[identity.length - 1] = anonymousType;
    }

    private DQuotationConstruction(Object[] identity) {
        super(identity);
    }

    protected DQuotationConstruction moveTo(DObject object) {
        Object[] id = identity.clone();
        id[0] = object;
        return new DQuotationConstruction(id);
    }

    @SuppressWarnings("unchecked")
    protected <V> V get(DIdentifyingAttribute<?, V> attr) {
        return (V) identity[attr.index()];
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
