package org.modelingvalue.dclare.mps;

import org.jetbrains.mps.openapi.module.SDependency;
import org.jetbrains.mps.openapi.module.SDependencyScope;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.modelingvalue.collections.util.IdentifiedBy;

public class DDependency extends IdentifiedBy<SDependency> implements SDependency {

    public DDependency(SDependency original) {
        super(original);
    }

    @Override
    public SDependencyScope getScope() {
        return id().getScope();
    }

    @Override
    public boolean isReexport() {
        return id().isReexport();
    }

    @Override
    public SModuleReference getTargetModule() {
        return new DModuleReference(id().getTargetModule());
    }

    @Override
    public DModule getTarget() {
        SModule target = DClareMPS.instance().read(() -> id().getTarget());
        return target != null ? DModule.of(target) : null;
    }

}
