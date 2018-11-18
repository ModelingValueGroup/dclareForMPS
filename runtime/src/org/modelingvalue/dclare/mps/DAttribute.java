package org.modelingvalue.dclare.mps;

import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.QuadConsumer;
import org.modelingvalue.transactions.AbstractLeaf;
import org.modelingvalue.transactions.ConstantSetable;
import org.modelingvalue.transactions.Getable;

@SuppressWarnings("rawtypes")
public class DAttribute<O, T> extends DObserved<O, T> {

    @SuppressWarnings("unchecked")
    private static final Getable<Pair<Object, String>, DAttribute> ATTRIBUTE = ConstantSetable.of("ATTRIBUTE", id -> new DAttribute(id.a(), id.b(), null, null));

    @SuppressWarnings("unchecked")
    public static <C, V> DAttribute<C, V> of(Object id, String name) {
        return ATTRIBUTE.get(Pair.of(id, name));
    }

    private String name;

    public DAttribute(Object id, String name, T def, QuadConsumer<AbstractLeaf, O, T, T> changed) {
        super(id, def, false, false, (o, b, a) -> {
        }, changed);
        this.name = name;
    }

    @Override
    public T get(O object) {
        T result = object == null ? null : super.get(object);
        if (object != null && result == null) {
            DObject.EMPTY_ATTRIBUTE.set(true);
        }
        return result;
    }

    @Override
    public String toString() {
        return name;
    }

}
