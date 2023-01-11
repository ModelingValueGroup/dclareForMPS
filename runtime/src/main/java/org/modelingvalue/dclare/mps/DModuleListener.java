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
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SDependency;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleListener;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;

public class DModuleListener extends Pair<DModule, DClareMPS> implements SModuleListener {

    private static final long serialVersionUID = -6842951912074996409L;

    public DModuleListener(DModule dModule, DClareMPS dClareMPS) {
        super(dModule, dClareMPS);
    }

    @Override
    public void modelAdded(SModule module, SModel sModel) {
        b().handleMPSChange(() -> {
            if (!a().isExternal() && !DModel.EXTERNAL.get(sModel)) {
                DModel dModel = DModel.of(sModel);
                DModule.MODELS.set(a(), Set::add, dModel);
            }
        });

    }

    @Override
    public void beforeModelRemoved(SModule module, SModel sModel) {
        b().handleMPSChange(() -> {
            if (!a().isExternal() && !DModel.EXTERNAL.get(sModel)) {
                DModel dModel = DModel.of(sModel);
                DModule.MODELS.set(a(), Set::remove, dModel);
            }
        });
    }

    @Override
    public void dependencyAdded(SModule module, SDependency dep) {
    }

    @Override
    public void dependencyRemoved(SModule module, SDependency dep) {
    }

    @Override
    public void modelRemoved(SModule module, SModelReference ref) {
    }

    @Override
    public void beforeModelRenamed(SModule module, SModel model, SModelReference newRef) {
    }

    @Override
    public void modelRenamed(SModule module, SModel model, SModelReference oldRef) {
        b().handleMPSChange(() -> {
            if (!a().isExternal() && !DModel.EXTERNAL.get(model)) {
                DModel.NAME.set(DModel.of(model), model.getName().getLongName());
            }
        });
    }

    @Override
    public void languageAdded(SModule module, SLanguage lang) {
        b().handleMPSChange(() -> {
            DModule.LANGUAGES.set(a(), Set::add, lang);
            DRepository repository = DClareMPS.instance().getRepository();
            if (!DClareMPS.ACTIVE_RULE_SETS.get(lang).isEmpty() && !DRepository.ALL_LANGUAGES_WITH_RULES.get(repository).contains(lang)) {
                DClareMPS.instance().engine().restart();
            }
        });
    }

    @Override
    public void languageRemoved(SModule module, SLanguage lang) {
        b().handleMPSChange(() -> {
            DModule.LANGUAGES.set(a(), Set::remove, lang);
            DRepository repository = DClareMPS.instance().getRepository();
            if (!DClareMPS.ACTIVE_RULE_SETS.get(lang).isEmpty() && DRepository.ALL_LANGUAGES_WITH_RULES.get(repository).contains(lang)) {
                DClareMPS.instance().engine().restart();
            }
        });
    }

    @Override
    public void moduleChanged(SModule module) {
    }

}
