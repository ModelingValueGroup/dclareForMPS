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

import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.persistence.NullDataSource;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import com.sun.istack.internal.NotNull;

import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.smodel.EditableModelDescriptor;
import jetbrains.mps.smodel.ModelLoadResult;
import jetbrains.mps.smodel.SModelId;
import jetbrains.mps.smodel.SNodeUndoableAction;
import jetbrains.mps.smodel.loading.ModelLoadingState;

public class DTempModel extends EditableModelDescriptor implements EditableSModel {

    public DTempModel(String name, SModuleBase module) {
        super(createModelRef(name, module.getModuleReference()), new NullDataSource());
        module.registerModel(this);
    }

    @Override
    public void updateTimestamp() {
    }

    @Override
    public boolean needsReloading() {
        return false;
    }

    @NotNull
    @Override
    protected ModelLoadResult<jetbrains.mps.smodel.SModel> createModel() {
        jetbrains.mps.smodel.SModel smodel = new jetbrains.mps.smodel.SModel(getReference()) {
            @Override
            protected void performUndoableAction(@NotNull SNodeUndoableAction action) {
                super.performUndoableAction(action);
            }
        };
        return new ModelLoadResult<jetbrains.mps.smodel.SModel>(smodel, ModelLoadingState.FULLY_LOADED);
    }

    @Override
    public boolean isChanged() {
        return false;
    }

    @Override
    public void save() {
    }

    @Override
    public void rename(String newModelName, boolean changeFile) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isReadOnly() {
        return false;
    }

    @Override
    public void reloadFromSource() {
        throw new UnsupportedOperationException();
    }

    private static SModelReference createModelRef(String modelName, SModuleReference moduleReference) {
        SModelId id = SModelId.generate();
        return PersistenceFacade.getInstance().createModelReference(moduleReference, id, modelName);
    }
}
