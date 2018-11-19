package org.modelingvalue.dclare.mps;

import org.modelingvalue.collections.util.QuadConsumer;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.transactions.AbstractLeaf;
import org.modelingvalue.transactions.ConstantSetable;
import org.modelingvalue.transactions.Getable;

@SuppressWarnings("rawtypes")
public class DAttribute<O, T> extends DObserved<O, T> {

    @SuppressWarnings("unchecked")
    private static final Getable<Triple<Object, String, Boolean>, DAttribute> ATTRIBUTE = ConstantSetable.of("ATTRIBUTE", id -> new DAttribute(id.a(), id.b(), id.c(), null, null));

    @SuppressWarnings("unchecked")
    public static <C, V> DAttribute<C, V> of(Object id, String name, boolean composite) {
        return ATTRIBUTE.get(Triple.of(id, name, composite));
    }

    private String  name;
    private boolean composite;

    public DAttribute(Object id, String name, boolean composite, T def, QuadConsumer<AbstractLeaf, O, T, T> changed) {
        super(id, def, false, false, (o, b, a) -> {
        }, changed);
        this.name = name;
        this.composite = composite;
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

    public boolean isComposite() {
        return composite;
    }
}
