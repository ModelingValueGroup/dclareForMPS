//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2021 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.model.SNode;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.ReadOnlyTransaction;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.SetableModifier;
import org.modelingvalue.dclare.State;

import jetbrains.mps.smodel.adapter.structure.property.InvalidProperty;

@SuppressWarnings({"rawtypes", "unused"})
public interface DAttribute<O, T> extends DFeature {

    @SuppressWarnings("unchecked")
    static <C, V> DAttribute<C, V> of(String id, String name, String anonymousType, String ruleSetType, boolean synthetic, boolean optional, boolean composite, int identifyingNr, Object def, Class<?> cls, String opposite, Supplier<SNode> source, Function<C, V> deriver, boolean onlyTemporal) {
        boolean idAttr = identifyingNr >= 0 && ("StructRuleSet".equals(ruleSetType) || anonymousType != null);
        SetableModifier[] mods = new SetableModifier[0];
        if (synthetic) {
            mods = Setable.addModifier(mods, SetableModifier.synthetic);
        }
        if (idAttr || (!optional && identifyingNr < 0)) {
            mods = Setable.addModifier(mods, SetableModifier.mandatory);
        }
        if (composite) {
            mods = Setable.addModifier(mods, SetableModifier.containment);
        }
        return idAttr ? new DIdentifyingAttribute(id, name, anonymousType, identifyingNr, cls, source, mods) : //
                deriver != null ? new DConstant(id, name, cls, source, deriver, onlyTemporal, mods) : //
                        new DObservedAttribute(id, name, identifyingNr >= 0, def, cls, opposite != null ? () -> of(opposite) : null, source, new InvalidProperty(id.toString(), name), mods);
    }

    @SuppressWarnings("unchecked")
    static <C, V> DAttribute<C, V> of(String id) {
        return (DAttribute<C, V>) DClareMPS.ATTRIBUTE_MAP.get(DClareMPS.instance()).get(id);
    }

    String id();

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

        private final String    name;
        private final Class<?>  cls;
        private final SProperty sProperty;
        private final boolean   indetifying;

        public DObservedAttribute(Object id, String name, boolean indetifying, V def, Class<?> cls, Supplier<Setable<?, ?>> opposite, Supplier<SNode> source, SProperty sProperty, SetableModifier... modifiers) {
            super(id, def, opposite, (o, b, a) -> {
                if (o instanceof DNode) {
                    SNode sNode = ((DNode) o).tryOriginal();
                    if (sNode != null) {
                        sNode.setProperty(sProperty, "");
                        sNode.setProperty(sProperty, null);
                    }
                }
            }, null, source, modifiers);
            this.name = name;
            this.cls = cls;
            this.sProperty = sProperty;
            this.indetifying = indetifying;
        }

        @Override
        public String id() {
            return (String) super.id();
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
            return indetifying;
        }

        @Override
        public boolean isMandatory() {
            return mandatory();
        }

        @Override
        public V get(C object) {
            if (object instanceof DNode && LeafTransaction.getCurrent() instanceof ReadOnlyTransaction) {
                SNode original = ((DNode) object).tryOriginal();
                if (original != null) {
                    original.getProperty(sProperty);
                }
            }
            return super.get(object);
        }

        @SuppressWarnings("unchecked")
        @Override
        public V set(C object, V value) {
            if (containment() && value instanceof ContainingCollection) {
                ContainingCollection cc = (ContainingCollection) value;
                value = (V) cc.clear().addAll(cc.notNull());
            }
            return super.set(object, value);
        }

        @Override
        public Class<?> cls() {
            return cls;
        }

    }

    final class DIdentifyingAttribute<C extends DIdentifiedObject, V> implements DAttribute<C, V> {
        private final String          id;
        private final String          name;
        private final String          anonymousType;
        private final boolean         composite;
        private final int             index;
        private final boolean         synthetic;
        private final Supplier<SNode> source;
        private final Class<?>        cls;

        public DIdentifyingAttribute(String id, String name, String anonymousType, int index, Class<?> cls, Supplier<SNode> source, SetableModifier... modifiers) {
            this.id = id;
            this.name = name;
            this.anonymousType = anonymousType;
            this.composite = Setable.hasModifier(modifiers, SetableModifier.containment);
            this.index = index;
            this.synthetic = Setable.hasModifier(modifiers, SetableModifier.synthetic);
            this.source = source;
            this.cls = cls;
        }

        @Override
        public int hashCode() {
            return id.hashCode();
        }

        @Override
        public boolean onlyTemporal() {
            return false;
        }

        @Override
        public String id() {
            return id;
        }

        public String anonymousType() {
            return anonymousType;
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

        @Override
        public V get(C object) {
            return object.get(this);
        }

        public int index() {
            return index;
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
        private final Supplier<SNode> source;
        private final Class<?>        cls;
        private final boolean         onlyTemporal;

        public DConstant(Object id, String name, Class<?> cls, Supplier<SNode> source, Function<C, V> deriver, boolean onlyTemporal, SetableModifier... modifiers) {
            super(id, null, null, null, deriver, null, modifiers);
            this.name = name;
            this.source = source;
            this.cls = cls;
            this.onlyTemporal = onlyTemporal;
        }

        @Override
        public boolean onlyTemporal() {
            return onlyTemporal;
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
        public String id() {
            return (String) super.id();
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
            return synthetic();
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

}
