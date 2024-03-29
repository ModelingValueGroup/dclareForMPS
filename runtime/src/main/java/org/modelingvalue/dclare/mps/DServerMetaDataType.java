//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2023 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;

public class DServerMetaDataType extends DObjectType<String> {

    protected DServerMetaDataType() {
        super("SERVER_METADATA_TYPE");
    }

    @SuppressWarnings("rawtypes")
    @Override
    public Set<DRule> getRules(Set ruleSets) {
        return Set.of();
    }

    @SuppressWarnings("rawtypes")
    @Override
    public Set<DAttribute> getAttributes(Set ruleSets) {
        return Set.of();
    }

    @SuppressWarnings("rawtypes")
    @Override
    public Set<INative> getNatives(Set<IRuleSet> ruleSets) {
        return Set.of();
    }

    @Override
    public Set<SLanguage> getLanguages() {
        return Set.of();
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected Collection<Observer> observers() {
        return DServerMetaData.OBSERVERS;
    }

    @SuppressWarnings("rawtypes")
    @Override
    public Collection<Setable> setables() {
        return DServerMetaData.SETABLES;
    }
}
