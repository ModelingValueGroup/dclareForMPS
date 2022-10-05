//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2022 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import static org.modelingvalue.dclare.SetableModifier.*;

import java.util.Collections;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.dclare.AbstractDerivationTransaction;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.SetableModifier;

import jetbrains.mps.smodel.adapter.structure.property.InvalidProperty;

@SuppressWarnings({"rawtypes", "unused"})
public interface DAttribute<O, T> extends DFeature {

    @SuppressWarnings("unchecked")
    static <C, V> DAttribute<C, V> of(String id, String name, IRuleSet ruleSet, boolean syn, boolean optional, boolean composite, int identifyingNr, boolean isPublic, Object def, Class<?> cls, SLanguage oppositeLanguage, String opposite, Supplier<SNode> source, Function<C, V> deriver) {
        boolean idAttr = identifyingNr >= 0 && (ruleSet == null || ruleSet.getAnonymousType() != null);
        SetableModifier[] mods = {synthetic.iff(syn), mandatory.iff(idAttr || (!optional && identifyingNr < 0)), containment.iff(composite)};
        return idAttr ? new DIdentifyingAttribute(id, name, ruleSet, identifyingNr, cls, source, mods) : //
                deriver != null ? new DConstant(id, name, ruleSet, cls, source, deriver, mods) : //
                        new DObservedAttribute(id, name, ruleSet, identifyingNr >= 0, isPublic, def, cls, opposite != null ? () -> of(oppositeLanguage, opposite) : null, source, mods);
    }

    @SuppressWarnings("unchecked")
    static <C, V> DAttribute<C, V> of(SLanguage language, String id) {
        return (DAttribute<C, V>) DClareMPS.ATTRIBUTE_MAP.get(language).get(id);
    }

    void activate(O object);

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

    default SProperty getSProperty() {
        return null;
    }

    final class DObservedAttribute<C extends DObject, V> extends DObserved<C, V> implements DAttribute<C, V> {

        private final String    name;
        private final Class<?>  cls;
        private final SProperty sProperty;
        private final boolean   indetifying;
        private final IRuleSet  ruleSet;

        public DObservedAttribute(Object id, String name, IRuleSet ruleSet, boolean indetifying, boolean isPublic, V def, Class<?> cls, Supplier<Setable<?, ?>> opposite, Supplier<SNode> source, SetableModifier... modifiers) {
            super(id, def, opposite, null, source, modifiers);
            if (isPublic) {
                this.sProperty = new InvalidProperty(id.toString(), name);
                setFromToMPS(null, (o, b, a) -> {
                    if (o instanceof DNode) {
                        SNode sNode = ((DNode) o).tryOriginal();
                        SModel sModel = sNode != null ? sNode.getModel() : null;
                        if (sNode != null && sModel instanceof EditableSModel) {
                            boolean changed = ((EditableSModel) sModel).isChanged();
                            sNode.setProperty(sProperty, "");
                            sNode.setProperty(sProperty, null);
                            ((EditableSModel) sModel).setChanged(changed);
                        }
                    }
                });
            } else {
                this.sProperty = null;
            }
            this.name = name;
            this.cls = cls;
            this.indetifying = indetifying;
            this.ruleSet = ruleSet;
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
        protected V fromMPS(C object) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V get(C object) {
            LeafTransaction tx = LeafTransaction.getCurrent();
            if (!(tx instanceof AbstractDerivationTransaction) && object.isExternal()) {
                DClareMPS dClareMPS = DClareMPS.instance(tx);
                return dClareMPS.preState().derive(() -> super.get(object), dClareMPS.universeTransaction().constantState());
            } else {
                return super.get(object);
            }
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

        @Override
        public IRuleSet ruleSet() {
            return ruleSet;
        }

        @Override
        public void activate(C object) {
            throw new UnsupportedOperationException();
        }

        @Override
        public SProperty getSProperty() {
            return sProperty;
        }

    }

    final class DIdentifyingAttribute<C extends DIdentifiedObject, V> extends Setable<C, V> implements DAttribute<C, V> {

        private final String          name;
        private final int             index;
        private final Supplier<SNode> source;
        private final Class<?>        cls;
        private final IRuleSet        ruleSet;

        public DIdentifyingAttribute(String id, String name, IRuleSet ruleSet, int index, Class<?> cls, Supplier<SNode> source, SetableModifier... modifiers) {
            super(id, null, null, null, null, modifiers);
            this.name = name;
            this.index = index;
            this.source = source;
            this.cls = cls;
            this.ruleSet = ruleSet;
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
        public SNode getSource() {
            return source != null ? source.get() : null;
        }

        @Override
        public Class<?> cls() {
            return cls;
        }

        @Override
        public IRuleSet ruleSet() {
            return ruleSet;
        }

        public String anonymousType() {
            return ruleSet != null ? ruleSet.getAnonymousType() : null;
        }

        @Override
        public boolean isSynthetic() {
            return synthetic();
        }

        @Override
        public String id() {
            return (String) id;
        }

        @Override
        public boolean isComposite() {
            return containment();
        }

        @Override
        public void activate(C object) {
            changed(LeafTransaction.getCurrent(), object, null, get(object));
        }

    }

    class DConstant<C extends DObject, V> extends Constant<C, V> implements DAttribute<C, V> {

        private final String          name;
        private final Supplier<SNode> source;
        private final Class<?>        cls;
        private final IRuleSet        ruleSet;

        public DConstant(Object id, String name, IRuleSet ruleSet, Class<?> cls, Supplier<SNode> source, Function<C, V> deriver, SetableModifier... modifiers) {
            super(id, null, null, null, deriver, null, modifiers);
            this.name = name;
            this.source = source;
            this.cls = cls;
            this.ruleSet = ruleSet;
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
        public Class<?> cls() {
            return cls;
        }

        @Override
        public IRuleSet ruleSet() {
            return ruleSet;
        }

        @Override
        public void activate(C object) {
            throw new UnsupportedOperationException();
        }

    }

}
