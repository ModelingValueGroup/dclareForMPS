package org.modelingvalue.dclare.mps;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.dclare.Constant;

public interface DMethod<R> extends DFeature {

    @SuppressWarnings("rawtypes")
    Constant<Triple<Set<SLanguage>, String, Signature>, DMethod> D_METHOD = Constant.of("D_METHOD", t -> {
        for (DMethod method : DClareMPS.METHOD_MAP.get(t.a()).get(Pair.of(t.b(), t.c().size()))) {
            if (t.c().isSubOf(method.signature())) {
                return method;
            }
        }
        throw new UnsupportedOperationException(t.b() + t.c());
    });

    String name();

    @SuppressWarnings("rawtypes")
    Signature signature();

    R call(Object[] arguments);

}
