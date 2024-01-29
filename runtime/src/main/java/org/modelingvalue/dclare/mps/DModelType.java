//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2024 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;

public class DModelType extends DObjectType<Pair<Set<SLanguage>, Set<String>>> {

    public DModelType(Pair<Set<SLanguage>, Set<String>> identity) {
        super(identity);
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public Set<DRule> getRules(Set<IRuleSet> ruleSets) {
        return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getModelRules(getAnonymousTypes()))).asSet();
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
        return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getModelAttributes(getAnonymousTypes()))).asSet();
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public Set<INative> getNatives(Set<IRuleSet> ruleSets) {
        return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getModelNatives(getAnonymousTypes()))).asSet();
    }

    @Override
    public Set<SLanguage> getLanguages() {
        return id().a();
    }

    public Set<String> getAnonymousTypes() {
        return id().b();
    }

    @SuppressWarnings("rawtypes")
    @Override
    public Collection<Setable> setables() {
        return DModel.SETABLES;
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected Collection<Observer> observers() {
        return DModel.OBSERVERS;
    }
}
