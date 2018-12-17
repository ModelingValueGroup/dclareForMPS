package org.modelingvalue.dclare.mps;

import java.util.function.BiFunction;
import java.util.function.Function;

import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.QuadConsumer;
import org.modelingvalue.collections.util.Quadruple;
import org.modelingvalue.transactions.AbstractLeaf;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.Getable;

@SuppressWarnings("rawtypes")
public interface DAttribute<O, T> {

    static class Key<C, V> extends Quadruple<Object, String, Boolean, Integer> {

        private static final long serialVersionUID = -403866123495976516L;

        public static <X, Y> Key<X, Y> of(Object a, String b, boolean optional, boolean c, int d, Function<X, Y> function) {
            return new Key<X, Y>(a, b, optional, c, d, function);
        }

        private final Function<C, V> function;
        private final boolean        optional;

        private Key(Object a, String b, boolean optional, boolean c, int d, Function<C, V> function) {
            super(a, b, c, d);
            this.function = function;
            this.optional = optional;
        }

        private Object id() {
            return a();
        }

        private String name() {
            return b();
        }

        private boolean composite() {
            return c();
        }

        private int identifyingNr() {
            return d();
        }
    }

    @SuppressWarnings("unchecked")
    static final Getable<Key, DAttribute> ATTRIBUTE = Constant.of("ATTRIBUTE", key -> {
        return key.identifyingNr() >= 0 ? new DIdentifyingAttribute(key.id(), key.name(), key.composite(), key.identifyingNr()) : key.function != null ? //
        new DConstant(key.id(), key.name(), key.composite(), key.function) : new DObservedAttribut(key.id(), key.name(), key.optional, key.composite(), null, null);
    });

    @SuppressWarnings("unchecked")
    public static <C, V> DAttribute<C, V> of(Object id, String name, boolean optional, boolean composite, int identifyingNr, Function<C, V> deriver) {
        return ATTRIBUTE.get(Key.of(id, name, optional, composite, identifyingNr, deriver));
    }

    T get(O object);

    T set(O object, T value);

    <E> T set(O object, BiFunction<T, E, T> function, E element);

    boolean isComposite();

    boolean isConstant();

    boolean isIndetifying();

    boolean isMandatory();

    final static class DObservedAttribut<C, V> extends DObserved<C, V> implements DAttribute<C, V> {

        private String  name;
        private boolean composite;

        public DObservedAttribut(Object id, String name, boolean optional, boolean composite, V def, QuadConsumer<AbstractLeaf, C, V, V> changed) {
            super(id, def, !optional, false, (o, b, a) -> {
            }, changed);
            this.name = name;
            this.composite = composite;
        }

        @Override
        public V get(C object) {
            V result = object != null ? super.get(object) : null;
            if (object != null) {
                if (result == null && mandatory) {
                    DObject.EMPTY_ATTRIBUTE.set(DObject.EMPTY_ATTRIBUTE.get().add(Pair.of((DObject) object, this)));
                } else if (result instanceof java.util.Collection || result instanceof ContainingCollection) {
                    DObject.COLLECTION_ATTRIBUTE.set(true);
                }
            }
            return result;
        }

        @Override
        public V set(C object, V value) {
            if (object != null && mandatory) {
                DObject.EMPTY_ATTRIBUTE.set(DObject.EMPTY_ATTRIBUTE.get().remove(Pair.of((DObject) object, this)));
            }
            return super.set(object, value);
        }

        @Override
        public <E> V set(C object, BiFunction<V, E, V> function, E element) {
            if (object != null && mandatory) {
                DObject.EMPTY_ATTRIBUTE.set(DObject.EMPTY_ATTRIBUTE.get().remove(Pair.of((DObject) object, this)));
            }
            return super.set(object, function, element);
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

    }

    static class DConstant<C, V> extends Constant<C, V> implements DAttribute<C, V> {

        private String  name;
        private boolean composite;

        public DConstant(Object id, String name, boolean composite, Function<C, V> deriver) {
            super(id, null, deriver, null);
            this.name = name;
            this.composite = composite;
        }

        @Override
        public V get(C object) {
            return object != null ? super.get(object) : null;
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

    }
}
