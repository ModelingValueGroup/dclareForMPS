package org.modelingvalue.dclare.mps;

import java.util.function.BiFunction;
import java.util.function.Function;

import org.modelingvalue.collections.util.QuadConsumer;
import org.modelingvalue.collections.util.Quadruple;
import org.modelingvalue.transactions.AbstractLeaf;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.Getable;

@SuppressWarnings("rawtypes")
public interface DAttribute<O, T> {

    static class Key<C, V> extends Quadruple<Object, String, Boolean, Integer> {

        private static final long serialVersionUID = -403866123495976516L;

        public static <X, Y> Key<X, Y> of(Object a, String b, Boolean c, Integer d, Function<X, Y> function) {
            return new Key<X, Y>(a, b, c, d, function);
        }

        private final Function<C, V> function;

        private Key(Object a, String b, Boolean c, Integer d, Function<C, V> function) {
            super(a, b, c, d);
            this.function = function;
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
        new DConstant(key.id(), key.name(), key.composite(), key.function) : new DObservedAttribut(key.id(), key.name(), key.composite(), null, null);
    });

    @SuppressWarnings("unchecked")
    public static <C, V> DAttribute<C, V> of(Object id, String name, boolean composite, int identifyingNr, Function<C, V> deriver) {
        return ATTRIBUTE.get(Key.of(id, name, composite, identifyingNr, deriver));
    }

    @SuppressWarnings("unchecked")
    public static <C, V> DAttribute<C, V> of(Object id, String name, boolean composite, V def, QuadConsumer<AbstractLeaf, C, V, V> changed) {
        return new DObservedAttribut(id, name, composite, def, changed);
    }

    @SuppressWarnings("unchecked")
    public static <C, V> DAttribute<C, V> of(Object id, String name, boolean composite, Function<C, V> deriver) {
        return new DConstant(id, name, composite, deriver);
    }

    T get(O object);

    T set(O object, T value);

    <E> T set(O object, BiFunction<T, E, T> function, E element);

    boolean isComposite();

    boolean isConstant();

    boolean isIndetifying();

    final static class DObservedAttribut<C, V> extends DObserved<C, V> implements DAttribute<C, V> {

        private String  name;
        private boolean composite;

        public DObservedAttribut(Object id, String name, boolean composite, V def, QuadConsumer<AbstractLeaf, C, V, V> changed) {
            super(id, def, false, false, (o, b, a) -> {
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

        @Override
        public boolean isConstant() {
            return false;
        }

        @Override
        public boolean isIndetifying() {
            return false;
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

    }
}
