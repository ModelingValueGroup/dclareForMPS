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

import static org.modelingvalue.dclare.CoreSetableModifier.plumbing;

import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;

public class DServerMetaData extends DMutable {

    protected static final DServerMetaDataType                     SERVER_METADATA_TYPE = new DServerMetaDataType();

    protected static final DObserved<DServerMetaData, Set<DModel>> SHARED_MODELS        = DObserved.of("SHARED_MODELS", Set.of(), null, (m, pre, post) -> {
                                                                                        }, plumbing);

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                           OBSERVERS            = DMutable.OBSERVERS;

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                            SETABLES             = DMutable.SETABLES.add(SHARED_MODELS);

    public DServerMetaData() {
    }

    @Override
    protected void read(DClareMPS dClareMPS) {
    }

    @Override
    protected DServerMetaDataType getType() {
        return SERVER_METADATA_TYPE;
    }

    @Override
    protected DServerMetaDataType getBootstrapType() {
        return SERVER_METADATA_TYPE;
    }

    @Override
    public boolean isExternal() {
        return false;
    }

    @Override
    protected boolean isRead() {
        return false;
    }

    @Override
    protected Pair<DMutable, DObserved<DMutable, ?>> readParent() {
        throw new UnsupportedOperationException();
    }

}
