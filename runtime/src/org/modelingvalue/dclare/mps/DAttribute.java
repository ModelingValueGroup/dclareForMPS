package org.modelingvalue.dclare.mps;

import org.modelingvalue.collections.util.QuadConsumer;
import org.modelingvalue.transactions.AbstractLeaf;
import org.modelingvalue.transactions.ConstantSetable;
import org.modelingvalue.transactions.EmptyMandatoryException;
import org.modelingvalue.transactions.Getable;

@SuppressWarnings("rawtypes")
public class DAttribute<O, T> extends DObserved<O, T> {

    @SuppressWarnings("unchecked")
    private static final Getable<Object, DAttribute> ATTRIBUTE = ConstantSetable.of("ATTRIBUTE", id -> new DAttribute(id, null, null));

    @SuppressWarnings("unchecked")
    public static <C, V> DAttribute<C, V> of(Object id) {
        return ATTRIBUTE.get(id);
    }

    public DAttribute(Object id, T def, QuadConsumer<AbstractLeaf, O, T, T> changed) {
        super(id, def, false, false, (o, b, a) -> {
        }, changed);
    }

    @Override
    public T get(O object) {
        T result = object == null ? null : super.get(object);
        if (result == null) {
            throw new EmptyMandatoryException();
        } else {
            return result;
        }
    }

}
