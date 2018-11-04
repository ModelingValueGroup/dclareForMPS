package org.modelingvalue.dclare.mps;

import org.modelingvalue.transactions.ConstantSetable;
import org.modelingvalue.transactions.Getable;

@SuppressWarnings("rawtypes")
public class MPSAttribute<O extends DObject, T> extends MPSObserved<O, T> {

    private static final Getable<Object, MPSAttribute> MPS_ATTRIBUTE = ConstantSetable.of("MPS_ATTRIBUTE", id -> new MPSAttribute(id));

    @SuppressWarnings("unchecked")
    public static <C extends DObject, V> MPSAttribute<C, V> of(Object id) {
        return MPS_ATTRIBUTE.get(id);
    }

    protected MPSAttribute(Object id) {
        super(id, null, false, (o, b, a) -> {
        }, null);
    }

    @Override
    public T get(O object) {
        return object == null ? null : super.get(object);
    }

}
