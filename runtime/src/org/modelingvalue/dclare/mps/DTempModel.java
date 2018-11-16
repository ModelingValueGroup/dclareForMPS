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
