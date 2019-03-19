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

public class DClassObject extends DObject<SClassObject> implements SClassObject {

    public static DClassObject of(SClassObject original) {
        return original instanceof DClassObject ? (DClassObject) original : dClareMPS().DCLASS_OBJECT.get(original);
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

    @SuppressWarnings("unchecked")
    @Override
    protected DType getType() {
        Set<SLanguage> languages = DObject.TYPE.get(PARENT.get(this)).getLanguages();
        SClass cls = original().getDClass();
        return new DType() {

            @SuppressWarnings("rawtypes")
            @Override
            public Set<DRule> getRules(Set<IRuleSet> ruleSets) {
                return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getClassRules(cls))).toSet();
            }

            @SuppressWarnings("rawtypes")
            @Override
            public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
                return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getClassAttributes(cls))).toSet();
            }

            @Override
            public Set<SLanguage> getLanguages() {
                return languages;
            }

            @Override
            public Object getIdentity() {
                return Pair.of(languages, cls);
            }
        };
    }

    @Override
    public SClass getDClass() {
        return original().getDClass();
    }

    @Override
    public Object[] getIdentity() {
        return original().getIdentity();
    }

}
