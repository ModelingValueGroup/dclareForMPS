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
import org.jetbrains.mps.openapi.module.SRepository;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.Constant;

public class DClassObject extends DIdentifiedObject implements SClassObject {

    private static final Constant<Pair<Set<SLanguage>, SClass>, DType> CLASS_OBJECT_TYPE = Constant.of("CLASS_OBJECT_TYPE", p -> new DType(p) {
        @SuppressWarnings({"rawtypes", "unchecked"})
        @Override
        public Set<DRule> getRules(Set<IRuleSet> ruleSets) {
            return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getClassRules(p.b()))).toSet();
        }

        @SuppressWarnings({"rawtypes", "unchecked"})
        @Override
        public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
            return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getClassAttributes(p.b()))).toSet();
        }

        @Override
        public Set<SLanguage> getLanguages() {
            return p.a();
        }
    });

    public static DClassObject of(SClass cls, Object[] identity) {
        identity = Arrays.copyOf(identity, identity.length + 1);
        identity[identity.length - 1] = cls;
        return new DClassObject(identity);
    }

    private DClassObject(Object[] identity) {
        super(identity);
    }

    @Override
    public String toString() {
        return getSClass() + super.toString();
    }

    @Override
    public boolean isReadOnly() {
        return false;
    }

    @Override
    protected SRepository getOriginalRepository() {
        return dClareMPS().getRepository().original();
    }

    @Override
    protected DType getType() {
        return CLASS_OBJECT_TYPE.get(Pair.of(TYPE.get(dObjectParent()).getLanguages(), getSClass()));
    }

    @Override
    public SClass getSClass() {
        return (SClass) identity[identity.length - 1];
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

}
