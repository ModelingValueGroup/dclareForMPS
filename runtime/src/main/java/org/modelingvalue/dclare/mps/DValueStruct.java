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
import java.util.Objects;

import org.modelingvalue.dclare.mps.DAttribute.DIdentifyingAttribute;

public class DValueStruct extends DIdentifiedValue implements SStructObject {

    @SuppressWarnings("unchecked")
    public static DValueStruct of(SStructClass cls, Object[] identity) {
        assert cls.isValueClass();
        for (int i = 0; i < identity.length; i++) {
            Objects.requireNonNull(identity[i]);
        }
        identity = Arrays.copyOf(identity, identity.length + 1);
        identity[identity.length - 1] = cls;
        return new DValueStruct(identity);
    }

    private DValueStruct(Object[] identity) {
        super(identity);
    }

    @Override
    public SStructClass getSClass() {
        return (SStructClass) identity[identity.length - 1];
    }

    @Override
    public Object[] getIdentity() {
        return identity;
    }

    @SuppressWarnings("unchecked")
    @Override
    public <V> V get(DIdentifyingAttribute<?, V> attr) {
        return (V) identity[attr.index()];
    }

    @SuppressWarnings("rawtypes")
    @Override
    public java.util.List<DAttribute> getNonSyntheticAttributes() {
        return getSClass().getIdentity().filter(DAttribute.class).toList();
    }

    @Override
    public String toString() {
        return getSClass() + Arrays.toString(Arrays.copyOf(identity, identity.length - 1));
    }

}
