package org.modelingvalue.dclare.mps;

import java.lang.reflect.Method;
import java.util.function.BiFunction;
import java.util.function.Function;

import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.util.QuadConsumer;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.transactions.AbstractLeaf;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.Getable;

@SuppressWarnings("rawtypes")
public interface DAttribute<O, T> {

    static class Key<C, V> extends Triple<Object, String, Integer> {

        private static final long serialVersionUID = -403866123495976516L;

        public static <X, Y> Key<X, Y> of(Object id, String name, boolean synthetic, boolean optional, boolean composite, int identifyingNr, Function<X, Y> function) {
            return new Key<X, Y>(id, name, synthetic, optional, composite, identifyingNr, function);
        }

        private final Function<C, V> function;
        private final boolean        optional;
        private final boolean        synthetic;
        private final boolean        composite;

        private Key(Object id, String name, boolean synthetic, boolean optional, boolean composite, int identifyingNr, Function<C, V> function) {
            super(id, name, identifyingNr);
            this.function = function;
            this.optional = optional;
            this.synthetic = synthetic;
            this.composite = composite;
        }

        private Object id() {
            return a();
        }

        private String name() {
            return b();
        }

        private int identifyingNr() {
            return c();
        }

    }

    @SuppressWarnings("unchecked")
    static final Getable<Key, DAttribute> ATTRIBUTE = Constant.of("ATTRIBUTE", key -> {
        return key.identifyingNr() >= 0 ? new DIdentifyingAttribute(key.id(), key.name(), key.synthetic, key.composite, key.identifyingNr()) : key.function != null ? //
        new DConstant(key.id(), key.name(), key.synthetic, key.composite, key.function) : new DObservedAttribut(key.id(), key.name(), key.synthetic, key.optional, key.composite, null, null);
    });

    @SuppressWarnings("unchecked")
    public static <C, V> DAttribute<C, V> of(Object id, String name, boolean synthetic, boolean optional, boolean composite, int identifyingNr, Function<C, V> deriver) {
        return ATTRIBUTE.get(Key.of(id, name, synthetic, optional, composite, identifyingNr, deriver));
    }

    T pre(O object);

    T get(O object);

    T set(O object, T value);

    <E> T set(O object, BiFunction<T, E, T> function, E element);

    boolean isComposite();

    boolean isConstant();

    boolean isIndetifying();

    boolean isMandatory();

    boolean isSynthetic();

    final static class DObservedAttribut<C, V> extends DObserved<C, V> implements DAttribute<C, V> {

        Method                m;

        private final String  name;
        private final boolean composite;
        private final boolean synthetic;

        public DObservedAttribut(Object id, String name, boolean synthetic, boolean optional, boolean composite, V def, QuadConsumer<AbstractLeaf, C, V, V> changed) {
            super(id, def, !optional, false, (o, b, a, first) -> {
            }, changed);
            this.name = name;
            this.composite = composite;
            this.synthetic = synthetic;
        }

        @Override
        public V get(C object) {
            V result = object != null ? super.get(object) : null;
            if (object != null) {
                if (result == null && mandatory) {
                    DObject.EMPTY_ATTRIBUTE.set(true);
                } else if (result instanceof java.util.Collection || result instanceof ContainingCollection) {
                    DObject.COLLECTION_ATTRIBUTE.set(true);
                }
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

        @Override
        public boolean isConstant() {
            return false;
        }

        @Override
        public boolean isIndetifying() {
            return false;
        }

        @Override
        public boolean isMandatory() {
            return mandatory;
        }

        @Override
        public boolean isSynthetic() {
            return synthetic;
        }
    }

    final static class DIdentifyingAttribute<C, V> implements DAttribute<C, V> {
        private final Object  id;
        private final String  name;
        private final boolean composite;
        private final int     index;
        private final boolean synthetic;

        public DIdentifyingAttribute(Object id, String name, boolean synthetic, boolean composite, int index) {
            this.id = id;
            this.name = name;
            this.composite = composite;
            this.index = index;
            this.synthetic = synthetic;
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
        public V pre(C object) {
            return get(object);
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

        @Override
        public boolean isConstant() {
            return false;
        }

        @Override
        public boolean isIndetifying() {
            return true;
        }

        @Override
        public boolean isMandatory() {
            return true;
        }

        @Override
        public boolean isSynthetic() {
            return synthetic;
        }
    }

    static class DConstant<C, V> extends Constant<C, V> implements DAttribute<C, V> {

        private final String  name;
        private final boolean composite;
        private final boolean synthetic;

        public DConstant(Object id, String name, boolean synthetic, boolean composite, Function<C, V> deriver) {
            super(id, null, deriver, null);
            this.name = name;
            this.composite = composite;
            this.synthetic = synthetic;
        }

        @Override
        public V get(C object) {
            return object != null ? super.get(object) : null;
        }

        @Override
        public V pre(C object) {
            return object != null ? super.pre(object) : null;
        }

        @Override
        public boolean isComposite() {
            return composite;
        }

        @Override
        public String toString() {
            return name;
        }

        @Override
        public boolean isConstant() {
            return true;
        }

        @Override
        public boolean isIndetifying() {
            return false;
        }

        @Override
        public boolean isMandatory() {
            return true;
        }

        @Override
        public boolean isSynthetic() {
            return synthetic;
        }
    }
}
