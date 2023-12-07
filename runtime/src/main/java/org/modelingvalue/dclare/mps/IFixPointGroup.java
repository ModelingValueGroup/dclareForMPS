package org.modelingvalue.dclare.mps;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.CoreSetableModifier;
import org.modelingvalue.dclare.FixpointGroup;

public interface IFixPointGroup {

    Constant<IFixPointGroup, FixpointGroup> FIXPOINT_GROUP = Constant.of("FIXPOINT_GROUP", f -> FixpointGroup.of(f.getName()), CoreSetableModifier.durable);

    @SuppressWarnings("unchecked")
    static <C, V> IFixPointGroup of(SLanguage language, String id) {
        return DClareMPS.FIXPOINT_GROUP_MAP.get(language).get(id);
    }

    String getId();

    String getName();

}
