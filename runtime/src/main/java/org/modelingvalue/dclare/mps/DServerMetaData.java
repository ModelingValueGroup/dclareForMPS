//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2022 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import static org.modelingvalue.dclare.SetableModifier.plumbing;

import org.modelingvalue.collections.Set;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;

public class DServerMetaData extends DObject {

    protected static final Constant<Boolean, DServerMetaDataType>  SERVER_METADATA_TYPE = Constant.of("SERVER_METADATA_TYPE", p -> new DServerMetaDataType(p));

    protected static final DObserved<DServerMetaData, Set<DModel>> SHARED_MODELS        = DObserved.of("SHARED_MODELS", Set.of(), null, (m, pre, post) -> {
                                                                                        }, plumbing);

    protected static final Observer<DServerMetaData>               MODELS_RULE          = DObject.observer("$SHARED_MODELS", o -> {
                                                                                            Set<DModel> sharedModels = DRepository.MODULES.get(dClareMPS().getRepository()).filter(m -> !m.isExternal()).flatMap(m -> DModule.MODELS.get(m)).filter(m -> m.isShared()).toSet();
                                                                                            SHARED_MODELS.set(o, sharedModels);
                                                                                        });

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                           OBSERVERS            = DObject.OBSERVERS.add(MODELS_RULE);

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                            SETABLES             = DObject.SETABLES.addAll(Set.of(SHARED_MODELS));

    public DServerMetaData() {
    }

    @Override
    protected void read(DClareMPS dClareMPS) {
        // TODO Auto-generated method stub

    }

    @Override
    protected DObjectType<?> getType() {
        // TODO Auto-generated method stub
        return SERVER_METADATA_TYPE.get(true);
    }

    @Override
    public boolean isExternal() {
        // TODO Auto-generated method stub
        return false;
    }

}
