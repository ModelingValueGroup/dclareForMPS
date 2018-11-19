package org.modelingvalue.dclare.mps;

import java.util.function.BiFunction;

import org.modelingvalue.collections.util.QuadConsumer;
import org.modelingvalue.collections.util.Quadruple;
import org.modelingvalue.transactions.AbstractLeaf;
import org.modelingvalue.transactions.ConstantSetable;
import org.modelingvalue.transactions.Getable;

@SuppressWarnings("rawtypes")
public interface DAttribute<O, T> {

    @SuppressWarnings("unchecked")
    static final Getable<Quadruple<Object, String, Boolean, Integer>, DAttribute> ATTRIBUTE = ConstantSetable.of("ATTRIBUTE", id -> {
        return id.d() >= 0 ? new DIdentifyingAttribute(id.a(), id.b(), id.c(), id.d()) : new DObservedAttribut(id.a(), id.b(), id.c(), null);
    });

    @SuppressWarnings("unchecked")
    public static <C, V> DAttribute<C, V> of(Object id, String name, boolean composite, int identifyingNr) {
        return ATTRIBUTE.get(Quadruple.of(id, name, composite, identifyingNr));
    }

    @SuppressWarnings("unchecked")
    public static <C, V> DAttribute<C, V> of(Object id, String name, boolean composite, QuadConsumer<AbstractLeaf, C, V, V> changed) {
        return new DObservedAttribut(id, name, composite, changed);
    }

    T get(O object);

    T set(O object, T value);

    <E> T set(O object, BiFunction<T, E, T> function, E element);

    boolean isComposite();

    final static class DObservedAttribut<C, V> extends DObserved<C, V> implements DAttribute<C, V> {

        private String  name;
        private boolean composite;

        public DObservedAttribut(Object id, String name, boolean composite, QuadConsumer<AbstractLeaf, C, V, V> changed) {
            super(id, null, false, false, (o, b, a) -> {
            }, changed);
            this.name = name;
            this.composite = composite;
        }

        @Override
        public V get(C object) {
            V result = object == null ? null : super.get(object);
            if (object != null && result == null) {
                DObject.EMPTY_ATTRIBUTE.set(true);
            }
            return result;
        }

        @Override
        public String toString() {
            return name;
        }

        @Override
        public boolean isComposite() {
            return composite;
        }
    }

    final static class DIdentifyingAttribute<C, V> implements DAttribute<C, V> {
        private Object  id;
        private String  name;
        private boolean composite;
        private int     index;

        public DIdentifyingAttribute(Object id, String name, boolean composite, int index) {
            this.id = id;
            this.name = name;
            this.composite = composite;
            this.index = index;
        }

        @Override
        public int hashCode() {
            return id.hashCode();
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            } else if (!(obj instanceof DIdentifyingAttribute)) {
                return false;
            } else {
                DIdentifyingAttribute other = (DIdentifyingAttribute) obj;
                return id.equals(other.id);
            }
        }

        @SuppressWarnings("unchecked")
        @Override
        public V get(C object) {
            return (V) ((SClassObject) object).getIdentity()[index];
        }

        @Override
        public String toString() {
            return name;
        }

        @Override
        public boolean isComposite() {
            return composite;
        }

        @Override
        public V set(C object, V value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public <E> V set(C object, BiFunction<V, E, V> function, E element) {
            throw new UnsupportedOperationException();
        }

    }
}
