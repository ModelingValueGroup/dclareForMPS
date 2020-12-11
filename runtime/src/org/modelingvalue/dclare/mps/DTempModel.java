//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2020 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.persistence.NullDataSource;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.smodel.EditableModelDescriptor;
import jetbrains.mps.smodel.ModelLoadResult;
import jetbrains.mps.smodel.SModelId;
import jetbrains.mps.smodel.SNodeUndoableAction;
import jetbrains.mps.smodel.event.SModelRenamedEvent;
import jetbrains.mps.smodel.loading.ModelLoadingState;

@SuppressWarnings("unused")
public class DTempModel extends EditableModelDescriptor implements EditableSModel {

    public DTempModel(String name, SModuleBase module) {
        super(createModelRef(name, module.getModuleReference()), new NullDataSource());
    }

    @Override
    public void updateTimestamp() {
    }

    @Override
    public boolean needsReloading() {
        return false;
    }

    @Override
    protected ModelLoadResult<jetbrains.mps.smodel.SModel> createModel() {
        jetbrains.mps.smodel.SModel smodel = new jetbrains.mps.smodel.SModel(getReference()) {
            @Override
            protected void performUndoableAction(SNodeUndoableAction action) {
                super.performUndoableAction(action);
            }
        };
        return new ModelLoadResult<>(smodel, ModelLoadingState.FULLY_LOADED);
    }

    @Override
    public boolean isChanged() {
        return false;
    }

    @Override
    public void save() {
    }

    @SuppressWarnings("deprecation")
    @Override
    public void rename(String newModelName, boolean changeFile) {
        assertCanChange();
        SModelReference oldName = getReference();
        fireBeforeModelRenamed(new SModelRenamedEvent(this, oldName.getModelName(), newModelName));
        SModelReference newModelReference = PersistenceFacade.getInstance().createModelReference(getReference().getModuleReference(), getReference().getModelId(), newModelName);
        fireBeforeModelRenamed(newModelReference);
        changeModelReference(newModelReference);
        setChanged(true);
        fireModelRenamed(new SModelRenamedEvent(this, oldName.getModelName(), newModelName));
        fireModelRenamed(oldName);
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
