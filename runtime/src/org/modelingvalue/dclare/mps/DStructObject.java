//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2020 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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
import java.util.Objects;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.dclare.Constant;

@SuppressWarnings("unused")
public class DStructObject extends DIdentifiedObject implements SStructObject {

    private static final Constant<Triple<Set<SLanguage>, SStructClass, Boolean>, DStructClass> CLASS_OBJECT_TYPE = Constant.of("CLASS_OBJECT_TYPE", p -> new DStructClass(p));

    public static DStructObject of(SStructClass cls, Object[] identity) {
        for (int i = 0; i < identity.length; i++) {
            Objects.requireNonNull(identity[i]);
        }
        identity = Arrays.copyOf(identity, identity.length + 1);
        identity[identity.length - 1] = cls;
        return new DStructObject(identity);
    }

    protected DStructObject(Object[] identity) {
        super(identity);
    }

    @Override
    public boolean isExternal() {
        return false;
    }

    @Override
    public String toString() {
        return getSClass() + Arrays.toString(Arrays.copyOf(identity, identity.length - 1));
    }

    @Override
    protected DStructClass getType() {
        DObjectType<?> dType = TYPE.get(dObjectParent());
        return CLASS_OBJECT_TYPE.get(Triple.of(Set.of(getSClass().getLanguage()), getSClass(), dType.external()));
    }

    @Override
    public SStructClass getSClass() {
        return (SStructClass) identity[identity.length - 1];
    }

    @Override
    public Object[] getIdentity() {
        return identity;
    }

    @Override
    protected void read(DClareMPS dClareMPS) {
    }

    @Override
    public boolean isDclareOnly() {
        return true;
    }

    @Override
    protected boolean isRead() {
        return false;
    }

    @Override
    protected boolean isMatched() {
        return false;
    }

}
