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

import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Quadruple;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;

@SuppressWarnings("unused")
public class DNodeType extends DType<Quadruple<Set<SLanguage>, SConcept, String, Boolean>> {

    public DNodeType(Quadruple<Set<SLanguage>, SConcept, String, Boolean> q) {
        super(q);
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public Set<DRule> getRules(Set<IRuleSet> ruleSets) {
        return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getNodeRules(getConcept(), getAnonymousType()))).toSet();
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
        return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getNodeAttributes(getConcept(), getAnonymousType()))).toSet();
    }

    @Override
    public Set<SLanguage> getLanguages() {
        return id().a();
    }

    public SConcept getConcept() {
        return id().b();
    }

    @Override
    public boolean external() {
        return id().d();
    }

    public String getAnonymousType() {
        return id().c();
    }

    @SuppressWarnings("rawtypes")
    @Override
    public Collection<Setable> setables() {
        return Collection.concat(DNode.SETABLES, DNode.CONCEPT_SETABLES.get(getConcept()));
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected Collection<Observer> observers() {
        return Collection.concat(DNode.OBSERVERS, DNode.CONCEPT_OBSERVERS.get(getConcept()));
    }

}
