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

import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.Quadruple;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;

@SuppressWarnings("unused")
public class DNodeType extends DObjectType<Quadruple<Set<SLanguage>, SConcept, Set<String>, Set<IAspect>>> {

    public DNodeType(Quadruple<Set<SLanguage>, SConcept, Set<String>, Set<IAspect>> q) {
        super(q);
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public Set<DRule> getRules(Set<IRuleSet> ruleSets) {
        return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getNodeRules(getConcept(), getAnonymousTypes()))).asSet();
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
        return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getNodeAttributes(getConcept(), getAnonymousTypes()))).asSet();
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public Set<INative> getNatives(Set<IRuleSet> ruleSets) {
        return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getNodeNatives(getConcept(), getAnonymousTypes()))).asSet();
    }

    @Override
    public Set<SLanguage> getLanguages() {
        return id().a();
    }

    public SConcept getConcept() {
        return id().b();
    }

    public Set<String> getAnonymousTypes() {
        return id().c();
    }

    public Set<IAspect> copyAspects() {
        return id().d();
    }

    @SuppressWarnings("rawtypes")
    @Override
    public Collection<Setable> setables() {
        return Collection.concat(DNode.SETABLES, DNode.CONCEPT_DOBSERVEDS.get(getConcept()));
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected Collection<Observer> observers() {
        Set<Observer> conceptObservers = DNode.OBSERVERS.addAll(DNode.CONCEPT_OBSERVERS.get(getConcept()));
        for (IAspect aspect : copyAspects()) {
            conceptObservers = conceptObservers.addAll(DNode.COPY_CONCEPT_OBSERVERS.get(Pair.of(getConcept(), aspect)));
        }
        return conceptObservers;
    }

}
