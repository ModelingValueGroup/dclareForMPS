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

import static org.modelingvalue.dclare.CoreSetableModifier.*;

import java.util.Collections;
import java.util.Objects;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.dclare.*;

import jetbrains.mps.smodel.adapter.structure.property.InvalidProperty;

@SuppressWarnings({"rawtypes", "unused"})
public interface DAttribute<O, T> extends DFeature {

    @SuppressWarnings("unchecked")
    static <C, V> DAttribute<C, V> of(String id, String name, IRuleSet ruleSet, boolean syn, boolean optional, boolean composite, int identifyingNr, boolean isPublic, Object def, Class<?> cls, SLanguage oppositeLanguage, String opposite, Supplier<SNode> source, Function<C, V> deriver, boolean onlyTemporal) {
        boolean idAttr = identifyingNr >= 0 && (ruleSet == null || ruleSet.getAnonymousType() != null);
        SetableModifier[] mods = {synthetic.iff(syn), mandatory.iff(idAttr || (!optional && identifyingNr < 0)), containment.iff(composite)};
        return idAttr ? new DIdentifyingAttribute(id, name, ruleSet, identifyingNr, cls, source, mods) : //
                deriver != null ? new DConstant(id, name, ruleSet, cls, source, deriver, onlyTemporal, mods) : //
                        new DObservedAttribute(id, name, ruleSet, identifyingNr >= 0, isPublic, def, cls, opposite != null ? () -> of(oppositeLanguage, opposite) : null, source, mods);
    }

    @SuppressWarnings("unchecked")
    static <C, V> DAttribute<C, V> of(SLanguage language, String id) {
        return (DAttribute<C, V>) DClareMPS.ATTRIBUTE_MAP.get(language).get(id);
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
        private final IRuleSet  ruleSet;

        public DObservedAttribute(Object id, String name, IRuleSet ruleSet, boolean indetifying, boolean isPublic, V def, Class<?> cls, Supplier<Setable<?, ?>> opposite, Supplier<SNode> source, SetableModifier... modifiers) {
            super(id, def, opposite, null, source, modifiers);
            SProperty sProperty = new InvalidProperty(id.toString(), name);
            if (isPublic) {
                setFromToMPS(null, (o, b, a) -> {
                    if (o instanceof DNode && !Objects.equals(b, a)) {
                        SNode sNode = ((DNode) o).tryOriginal();
                        SModel sModel = sNode != null ? sNode.getModel() : null;
                        if (sNode != null && sModel instanceof EditableSModel) {
                            boolean changed = ((EditableSModel) sModel).isChanged();
                            sNode.setProperty(sProperty, "");
                            sNode.setProperty(sProperty, null);
                            ((EditableSModel) sModel).setChanged(changed);
                            // System.err.println("!!!!!!!!!!! CHANGED !!!!!!!!! node=" + sNode + ", attribute=" + name + "#" + id);
                        }
                    }
                });
            }
            this.name = name;
            this.cls = cls;
            this.sProperty = sProperty;
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
        public V get(C object) {
            LeafTransaction tx = LeafTransaction.getCurrent();
            if (object instanceof DNode && tx instanceof ReadOnlyTransaction && DClareMPS.instance(tx).isRunningRead()) {
                if (!(tx instanceof DerivationTransaction) || !((DerivationTransaction) tx).isDeriving()) {
                    SNode sNode = ((DNode) object).tryOriginal();
                    if (sNode != null) {
                        // System.err.println("!!!!!!! READ !!!!!!!!! node=" + sNode + ", attribute=" + name + "#" + id + ", thread=" + Thread.currentThread() + ", transaction=" + tx.universeTransaction());
                        sNode.getProperty(sProperty);
                    }
                }
            }
            if (tx instanceof DerivationTransaction || object.isActive()) {
                return super.get(object);
            } else {
                State preState = tx.universeTransaction().preState();
                return preState.derive(() -> super.get(object));
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
        protected V read(C dObject, V preVal, V postVal) {
            if (dObject instanceof DNode) {
                if (((DNode) dObject).tryOriginal() != null) {
                    State preState = LeafTransaction.getCurrent().universeTransaction().preState();
                    return preState.derive(() -> super.get(dObject));
                }
            }
            return postVal;
        }

        @Override
        public Class<?> cls() {
            return cls;
        }

        @Override
        public IRuleSet ruleSet() {
            return ruleSet;
        }

    }

    final class DIdentifyingAttribute<C extends DIdentifiedObject, V> implements DAttribute<C, V> {
        private final String          id;
        private final String          name;
        private final boolean         composite;
        private final int             index;
        private final boolean         synthetic;
        private final Supplier<SNode> source;
        private final Class<?>        cls;
        private final IRuleSet        ruleSet;

        public DIdentifyingAttribute(String id, String name, IRuleSet ruleSet, int index, Class<?> cls, Supplier<SNode> source, SetableModifier... modifiers) {
            this.id = id;
            this.name = name;
            this.composite = containment.in(modifiers);
            this.index = index;
            this.synthetic = CoreSetableModifier.synthetic.in(modifiers);
            this.source = source;
            this.cls = cls;
            this.ruleSet = ruleSet;
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

        @Override
        public IRuleSet ruleSet() {
            return ruleSet;
        }

        public String anonymousType() {
            return ruleSet != null ? ruleSet.getAnonymousType() : null;
        }

    }

    class DConstant<C extends DObject, V> extends Constant<C, V> implements DAttribute<C, V> {

        private final String          name;
        private final Supplier<SNode> source;
        private final Class<?>        cls;
        private final boolean         onlyTemporal;
        private final IRuleSet        ruleSet;

        public DConstant(Object id, String name, IRuleSet ruleSet, Class<?> cls, Supplier<SNode> source, Function<C, V> deriver, boolean onlyTemporal, SetableModifier... modifiers) {
            super(id, null, null, null, deriver, null, modifiers);
            this.name = name;
            this.source = source;
            this.cls = cls;
            this.onlyTemporal = onlyTemporal;
            this.ruleSet = ruleSet;
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
        public Class<?> cls() {
            return cls;
        }

        @Override
        public IRuleSet ruleSet() {
            return ruleSet;
        }

    }

}
