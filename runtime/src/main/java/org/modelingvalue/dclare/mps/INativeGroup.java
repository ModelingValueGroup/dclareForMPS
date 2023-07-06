package org.modelingvalue.dclare.mps;

import java.util.function.Consumer;

import org.jetbrains.mps.openapi.language.SLanguage;

public interface INativeGroup {

    @SuppressWarnings("unchecked")
    static <C, V> INativeGroup of(SLanguage language, String id) {
        return DClareMPS.NATIVE_GROUP_MAP.get(language).get(id);
    }

    String getId();

    String getName();

    Consumer<Runnable> getScheduler(DClareMPS dclare);

}
