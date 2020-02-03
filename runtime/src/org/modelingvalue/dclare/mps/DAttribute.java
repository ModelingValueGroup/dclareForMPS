//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2019 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
//                                                                                                                     ~
// Licensed under the GNU Lesser General Public License v3.0 (the 'License'). You may not use this file except in      ~
// compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0  ~
// Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on ~
// an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the  ~
// specific language governing permissions and limitations under the License.                                          ~
//                                                                                                                     ~
// Maintainers:                                                                                                        ~
//     Wim Bast, Tom Brus, Ronald Krijgsheld                                                                           ~
// Contributors:                                                                                                       ~
//     Arjan Kok, Carel Bast                                                                                           ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

import java.util.Collections;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.model.SNode;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.ex.EmptyMandatoryException;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.State;

@SuppressWarnings({"rawtypes", "unused"})
public interface DAttribute<O, T> extends DFeature<O> {

    Constant<Object, DAttribute> DATTRIBUTE = Constant.of("DATTRIBUTE", null);

    @SuppressWarnings("unchecked")
    static <C, V> DAttribute<C, V> of(Object id, String name, boolean synthetic, boolean optional, boolean composite, int identifyingNr, V def, Class<?> cls, Supplier<SNode> source, Function<C, V> deriver) {
        DAttribute<C, V> dAttribute = identifyingNr >= 0 ? new DIdentifyingAttribute(id, name, synthetic, composite, identifyingNr, cls, source) : deriver != null ? //
                new DConstant(id, name, synthetic, composite, cls, source, deriver) : new DObservedAttribute(id, name, synthetic, optional, composite, def, cls, source);
        DATTRIBUTE.set(id, dAttribute);
        return dAttribute;
    }

    @SuppressWarnings("unchecked")
    static <C, V> DAttribute<C, V> of(Object id) {
        return DATTRIBUTE.isSet(id) ? DATTRIBUTE.get(id) : null;
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

    Class<?> cls();

    final class DObservedAttribute<C extends DObject, V> extends DObserved<C, V> implements DAttribute<C, V> {

        private final String   name;
        private final Class<?> cls;

        public DObservedAttribute(Object id, String name, boolean synthetic, boolean optional, boolean composite, V def, Class<?> cls, Supplier<SNode> source) {
            super(id, def, !optional, composite, null, synthetic, (o, b, a) -> {
            }, null, source);
            this.name = name;
            this.cls = cls;
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

        @Override
        public boolean isDclareOnly() {
            return true;
        }

        @Override
        public Class<?> cls() {
            return cls;
        }

        @Override
        public void checkConsistency(State state, C object, V post) {
            super.checkConsistency(state, object, post);
            if (mandatory && post == null) {
                throw new EmptyMandatoryException(object, this);
            }
        }

    }

    final class DIdentifyingAttribute<C extends DObject, V> implements DAttribute<C, V> {
        private final Object          id;
        private final String          name;
        private final boolean         composite;
        private final int             index;
        private final boolean         synthetic;
        private final Supplier<SNode> source;
        private final Class<?>        cls;

        public DIdentifyingAttribute(Object id, String name, boolean synthetic, boolean composite, int index, Class<?> cls, Supplier<SNode> source) {
            this.id = id;
            this.name = name;
            this.composite = composite;
            this.index = index;
            this.synthetic = synthetic;
            this.source = source;
            this.cls = cls;
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
            if (object instanceof SClassObject) {
                return (V) ((SClassObject) object).getIdentity()[index];
            } else {
                return (V) ((DNode) object).getIdentity()[index];
            }
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

        @Override
        public Class<?> cls() {
            return cls;
        }

    }

    class DConstant<C extends DObject, V> extends Constant<C, V> implements DAttribute<C, V> {

        private final String          name;
        private final boolean         synthetic;
        private final Supplier<SNode> source;
        private final Class<?>        cls;

        public DConstant(Object id, String name, boolean synthetic, boolean composite, Class<?> cls, Supplier<SNode> source, Function<C, V> deriver) {
            super(id, null, composite, null, null, deriver, null, true);
            this.name = name;
            this.synthetic = synthetic;
            this.source = source;
            this.cls = cls;
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

        @Override
        protected boolean isOrphan(State state, Mutable m) {
            return m instanceof DObject && super.isOrphan(state, m) && !((DObject) m).isExternal();
        }

        @Override
        public Class<?> cls() {
            return cls;
        }

    }

    final class NullAttribute implements DAttribute {
        @Override
        public SNode getSource() {
            return null;
        }

        @Override
        public boolean isSynthetic() {
            return true;
        }

        @Override
        public Object pre(Object object) {
            return null;
        }

        @Override
        public Object get(Object object) {
            return null;
        }

        @Override
        public Object set(Object object, Object value) {
            return null;
        }

        @Override
        public Object set(Object object, BiFunction function, Object element) {
            return null;
        }

        @Override
        public boolean isComposite() {
            return false;
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
            return false;
        }

        @Override
        public Class cls() {
            return Object.class;
        }

        @Override
        public String toString() {
            return "nullAttribute";
        }
    }

}
