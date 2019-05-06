//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018 Modeling Value Group B.V. (http://modelingvalue.org)                                             ~
//                                                                                                                     ~
// Licensed under the GNU Lesser General Public License v3.0 (the "License"). You may not use this file except in      ~
// compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0  ~
// Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on ~
// an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the  ~
// specific language governing permissions and limitations under the License.                                          ~
//                                                                                                                     ~
// Contributors:                                                                                                       ~
//     Wim Bast, Carel Bast, Tom Brus, Arjan Kok, Ronald Krijgsheld                                                    ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.model.SNode;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.Getable;

@SuppressWarnings("rawtypes")
public interface DAttribute<O, T> extends DFeature<O> {

    static class Key<C, V> extends Triple<Object, String, Integer> {

        private static final long serialVersionUID = -403866123495976516L;

        public static <X, Y> Key<X, Y> of(Object id, String name, boolean synthetic, boolean optional, boolean composite, int identifyingNr, Supplier<SNode> source, Function<X, Y> function) {
            return new Key<X, Y>(id, name, synthetic, optional, composite, identifyingNr, source, function);
        }

        private final Function<C, V>  function;
        private final boolean         optional;
        private final boolean         synthetic;
        private final boolean         composite;
        private final Supplier<SNode> source;

        private Key(Object id, String name, boolean synthetic, boolean optional, boolean composite, int identifyingNr, Supplier<SNode> source, Function<C, V> function) {
            super(id, name, identifyingNr);
            this.function = function;
            this.optional = optional;
            this.synthetic = synthetic;
            this.composite = composite;
            this.source = source;
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
        return key.identifyingNr() >= 0 ? new DIdentifyingAttribute(key.id(), key.name(), key.synthetic, key.composite, key.identifyingNr(), key.source) : key.function != null ? //
        new DConstant(key.id(), key.name(), key.synthetic, key.composite, key.source, key.function) : new DObservedAttribute(key.id(), key.name(), key.synthetic, key.optional, key.composite, null, key.source);
    });

    @SuppressWarnings("unchecked")
    public static <C, V> DAttribute<C, V> of(Object id, String name, boolean synthetic, boolean optional, boolean composite, int identifyingNr, Supplier<SNode> source, Function<C, V> deriver) {
        return ATTRIBUTE.get(Key.of(id, name, synthetic, optional, composite, identifyingNr, source, deriver));
    }

    T pre(O object);

    T get(O object);

    default Iterable<?> getIterable(O object) {
        T value = get(object);
        if (value instanceof Iterable) {
            return (Iterable<?>) value;
        } else if (value != null) {
            return Collections.singletonList(value);
        } else {
            return Collections.emptyList();
        }
    }

    T set(O object, T value);

    <E> T set(O object, BiFunction<T, E, T> function, E element);

    boolean isComposite();

    boolean isConstant();

    boolean isIndetifying();

    boolean isMandatory();

    final static class DObservedAttribute<C extends DObject, V> extends DObserved<C, V> implements DAttribute<C, V> {

        Method               m;

        private final String name;

        public DObservedAttribute(Object id, String name, boolean synthetic, boolean optional, boolean composite, V def, Supplier<SNode> source) {
            super(id, def, !optional, composite, false, synthetic, (o, b, a, first) -> {
            }, null, source);
            this.name = name;
        }

        @Override
        public String toString() {
            return name;
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

    final static class DIdentifyingAttribute<C extends DObject, V> implements DAttribute<C, V> {
        private final Object          id;
        private final String          name;
        private final boolean         composite;
        private final int             index;
        private final boolean         synthetic;
        private final Supplier<SNode> source;

        public DIdentifyingAttribute(Object id, String name, boolean synthetic, boolean composite, int index, Supplier<SNode> source) {
            this.id = id;
            this.name = name;
            this.composite = composite;
            this.index = index;
            this.synthetic = synthetic;
            this.source = source;
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

        @Override
        public SNode getSource() {
            return source != null ? source.get() : null;
        }
    }

    static class DConstant<C extends DObject, V> extends Constant<C, V> implements DAttribute<C, V> {

        private final String          name;
        private final boolean         synthetic;
        private final Supplier<SNode> source;

        public DConstant(Object id, String name, boolean synthetic, boolean composite, Supplier<SNode> source, Function<C, V> deriver) {
            super(id, null, composite, deriver, null);
            this.name = name;
            this.synthetic = synthetic;
            this.source = source;
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
            return containment();
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

        @Override
        public SNode getSource() {
            return source != null ? source.get() : null;
        }
    }
}
