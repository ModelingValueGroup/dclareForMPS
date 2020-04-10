package org.modelingvalue.dclare.mps;

import java.util.Set;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.module.SDependency;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleFacet;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.module.SModuleListener;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.ModelRoot;

final class DummySModule implements SModule {

    private final SModuleReference ref;

    DummySModule(SModuleReference ref) {
        this.ref = ref;
    }

    @Override
    public SModuleReference getModuleReference() {
        return ref;
    }

    @Override
    public SModuleId getModuleId() {
        return ref.getModuleId();
    }

    @Override
    public String getModuleName() {
        return ref.getModuleName();
    }

    @Override
    public boolean isReadOnly() {
        return false;
    }

    @Override
    public boolean isPackaged() {
        return false;
    }

    @Override
    public SRepository getRepository() {
        return null;
    }

    @Override
    public Iterable<SDependency> getDeclaredDependencies() {
        return null;
    }

    @Override
    public Set<SLanguage> getUsedLanguages() {
        return null;
    }

    @Override
    public int getUsedLanguageVersion(SLanguage usedLanguage) {
        return 0;
    }

    @Override
    public SModel getModel(SModelId id) {
        return null;
    }

    @Override
    public Iterable<SModel> getModels() {
        return null;
    }

    @Override
    public Iterable<SModuleFacet> getFacets() {
        return null;
    }

    @Override
    public <T extends SModuleFacet> T getFacet(Class<T> clazz) {
        return null;
    }

    @Override
    public Iterable<ModelRoot> getModelRoots() {
        return null;
    }

    @Override
    public void addModuleListener(SModuleListener listener) {
    }

    @Override
    public void removeModuleListener(SModuleListener listener) {
    }

}
