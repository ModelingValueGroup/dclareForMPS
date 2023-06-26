package org.modelingvalue.dclare.mps;

import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.modelingvalue.collections.util.IdentifiedBy;

public class DModuleReference extends IdentifiedBy<SModuleReference> implements SModuleReference {

    public DModuleReference(SModuleReference id) {
        super(id);
    }

    @Override
    public SModuleId getModuleId() {
        return id().getModuleId();
    }

    @Override
    public String getModuleName() {
        return id().getModuleName();
    }

    @Override
    public SModule resolve(SRepository repo) {
        SModule resolved = DClareMPS.instance().read(() -> id().resolve(repo));
        return resolved != null ? DModule.of(resolved) : null;
    }
}
