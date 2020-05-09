package org.modelingvalue.dclare.mps;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SDependency;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleListener;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;

import jetbrains.mps.smodel.Language;

public class DModuleListener extends Pair<DModule, DClareMPS> implements SModuleListener {

    private static final long serialVersionUID = -6842951912074996409L;

    public DModuleListener(DModule dModule, DClareMPS dClareMPS) {
        super(dModule, dClareMPS);
    }

    @Override
    public void modelAdded(SModule module, SModel sModel) {
        b().handleMPSChange(() -> {
            if (!a().isExternal() && DModule.hasRuleSets(DModule.LANGUAGES.get(a()))) {
                if (!(module instanceof Language) || ((Language) module).isAccessoryModel(sModel.getReference())) {
                    DModel dModel = DModel.of(sModel);
                    DModule.MODELS.set(a(), Set::add, dModel);
                }
            }
        });
    }

    @Override
    public void beforeModelRemoved(SModule module, SModel sModel) {
        b().handleMPSChange(() -> {
            if (!a().isExternal() && DModule.hasRuleSets(DModule.LANGUAGES.get(a()))) {
                if (!(module instanceof Language) || ((Language) module).isAccessoryModel(sModel.getReference())) {
                    DModel dModel = DModel.of(sModel);
                    dModel.setDetached(sModel);
                    DModule.MODELS.set(a(), Set::remove, dModel);
                }
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
    }

    @Override
    public void languageAdded(SModule module, SLanguage lang) {
        DModule.dClareMPS().handleMPSChange(() -> DModule.LANGUAGES.set(a(), Set::add, lang));
    }

    @Override
    public void languageRemoved(SModule module, SLanguage lang) {
        DModule.dClareMPS().handleMPSChange(() -> DModule.LANGUAGES.set(a(), Set::remove, lang));
    }

    @Override
    public void moduleChanged(SModule module) {
        System.err.println("moduleChanged");
    }

}
