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
import org.jetbrains.mps.openapi.module.SRepository;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.transactions.Constant;

public class DClassObject extends DObject<SClassObject> implements SClassObject {

    private static final Constant<SClassObject, DClassObject>          DCLASS_OBJECT = Constant.of("DCLASS_OBJECT", c -> new DClassObject(c));

    private static final Constant<Pair<Set<SLanguage>, SClass>, DType> TYPE          = Constant.of("CLASS_OBJECT_TYPE", null, p -> new DType(p) {
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

    public static DClassObject of(SClassObject original) {
        return original instanceof DClassObject ? (DClassObject) original : DCLASS_OBJECT.get(original);
    }

    public static DClassObject wrap(SClassObject original) {
        return of(original);
    }

    protected DClassObject(SClassObject original) {
        super(original);
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected ContainingCollection<? extends DObject> getChildren() {
        return Set.of();
    }

    @Override
    public boolean isReadOnly() {
        return false;
    }

    @Override
    protected SRepository getOriginalRepository() {
        return null;
    }

    @Override
    protected DType getType() {
        return TYPE.get(Pair.of(DObject.TYPE.get(PARENT.get(this)).getLanguages(), original().getSClass()));
    }

    @Override
    public SClass getSClass() {
        return original().getSClass();
    }

    @Override
    public Object[] getIdentity() {
        return original().getIdentity();
    }

    @Override
    protected Set<? extends DObject<?>> read(DClareMPS dClareMPS) {
        return Set.of();
    }

}
