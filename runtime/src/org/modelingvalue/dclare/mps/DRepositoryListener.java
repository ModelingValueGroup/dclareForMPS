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
