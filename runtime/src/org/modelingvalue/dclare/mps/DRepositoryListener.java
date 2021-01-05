//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2021 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.module.SRepositoryListener;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;

public class DRepositoryListener extends Pair<DRepository, DClareMPS> implements SRepositoryListener {

    private static final long serialVersionUID = -8833673849931733478L;

    public DRepositoryListener(DRepository dRepository, DClareMPS dClareMPS) {
        super(dRepository, dClareMPS);
    }

    @Override
    public void moduleAdded(SModule sModule) {
        b().handleMPSChange(() -> {
            if (b().project.getPath(sModule) != null) {
                DModule dModule = DModule.of(sModule);
                DRepository.MODULES.set(a(), Set::add, dModule);
            }
        });
    }

    @Override
    public void beforeModuleRemoved(SModule sModule) {
        b().handleMPSChange(() -> {
            if (b().project.getPath(sModule) != null) {
                DModule dModule = DModule.of(sModule);
                DRepository.MODULES.set(a(), Set::remove, dModule);
            }
        });
    }

    @Override
    public void moduleRemoved(SModuleReference module) {
    }

    @Override
    public void commandStarted(SRepository repository) {
    }

    @Override
    public void commandFinished(SRepository repository) {
    }

    @Override
    @Deprecated
    public void updateStarted(SRepository repository) {
    }

    @Override
    @Deprecated
    public void updateFinished(SRepository repository) {
    }

    @Override
    @Deprecated
    public void repositoryCommandStarted(SRepository repository) {
    }

    @Override
    @Deprecated
    public void repositoryCommandFinished(SRepository repository) {
    }
}
