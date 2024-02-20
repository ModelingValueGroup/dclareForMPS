//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//  (C) Copyright 2018-2024 Modeling Value Group B.V. (http://modelingvalue.org)                                         ~
//                                                                                                                       ~
//  Licensed under the GNU Lesser General Public License v3.0 (the 'License'). You may not use this file except in       ~
//  compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0   ~
//  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on  ~
//  an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the   ~
//  specific language governing permissions and limitations under the License.                                           ~
//                                                                                                                       ~
//  Maintainers:                                                                                                         ~
//      Wim Bast, Tom Brus                                                                                               ~
//                                                                                                                       ~
//  Contributors:                                                                                                        ~
//      Ronald Krijgsheld ✝, Arjan Kok, Carel Bast                                                                       ~
// --------------------------------------------------------------------------------------------------------------------- ~
//  In Memory of Ronald Krijgsheld, 1972 - 2023                                                                          ~
//      Ronald was suddenly and unexpectedly taken from us. He was not only our long-term colleague and team member      ~
//      but also our friend. "He will live on in many of the lines of code you see below."                               ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

import static org.modelingvalue.dclare.CoreSetableModifier.*;

import java.util.Collections;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.modelingvalue.collections.DefaultMap;
import org.modelingvalue.collections.List;
import org.modelingvalue.dclare.AbstractDerivationTransaction;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.SetableModifier;

import jetbrains.mps.smodel.adapter.structure.property.InvalidProperty;

@SuppressWarnings({"rawtypes", "unused"})
public interface DAttribute<O, T> extends DFeature {

    @SuppressWarnings("unchecked")
    static <C, V> DAttribute<C, V> of(String id, String name, IRuleSet ruleSet, boolean syn, boolean optional, boolean composite, int identifyingNr, boolean isPublic, boolean doMatch, Function<C, Object> def, Class<?> cls, SLanguage oppositeLanguage, String opposite, Supplier<SNodeReference> source, Function<C, V> deriver) {
        boolean idAttr = identifyingNr >= 0 && (ruleSet == null || ruleSet.getAnonymousType() != null);
        SetableModifier[] mods = {synthetic.iff(syn), mandatory.iff(idAttr || (!optional && identifyingNr < 0)), containment.iff(composite), match.iff(doMatch), ruleSet == null ? null : IAspect.DIRECTION.get(ruleSet.getAspect())};
        return idAttr ? new DIdentifyingAttribute(id, name, ruleSet, identifyingNr, cls, source, mods) : //
                deriver != null ? new DConstant(id, name, ruleSet, cls, source, deriver, mods) : //
                        new DObservedAttribute(id, name, ruleSet, identifyingNr >= 0, isPublic, def, cls, opposite != null ? () -> of(oppositeLanguage, opposite) : null, source, mods);
    }

    @SuppressWarnings("unchecked")
    static <C, V> DAttribute<C, V> of(SLanguage language, String id) {
        return (DAttribute<C, V>) DClareMPS.ATTRIBUTE_MAP.get(language).get(id);
    }

    @SuppressWarnings("rawtypes")
    final static Constant<DAttribute, DefaultMap<INativeGroup, List<IChangeHandler>>> D_HANDLERS = Constant.of("D_HANDLERS", a -> {
        return DClareMPS.HANDLER_MAP.get(DClareMPS.instance()).get(a);
    });

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

    boolean isIndetifying();

    boolean isMandatory();

    default List<IChangeHandler> handlers(INativeGroup ng) {
        return D_HANDLERS.get(this).get(ng);
    }

    Class<?> cls();

    default SProperty getSProperty() {
        return null;
    }

    final class DObservedAttribute<C extends DMutable, V> extends DObserved<C, V> implements DAttribute<C, V> {

        private final String    name;
        private final Class<?>  cls;
        private final SProperty sProperty;
        private final boolean   indetifying;
        private final IRuleSet  ruleSet;
        private final boolean   isPublic;

        @SuppressWarnings("unchecked")
        public DObservedAttribute(Object id, String name, IRuleSet ruleSet, boolean indetifying, boolean isPublic, Function<C, V> def, Class<?> cls, Supplier<Setable<?, ?>> opposite, Supplier<SNodeReference> source, SetableModifier... modifiers) {
            super(id, def, opposite, null, source, modifiers);
            this.sProperty = isPublic ? new InvalidProperty(id.toString(), name) : null;
            this.name = name;
            this.cls = cls;
            this.indetifying = indetifying;
            this.ruleSet = ruleSet;
            this.isPublic = isPublic;
            if (isPublic) {
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
            }
        }

        @Override
        public boolean isNative(INativeGroup ng) {
            return !handlers(ng).isEmpty();
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
            if (object == null) {
                throw new NullPointerException("attempt to read null." + this);
            }
            LeafTransaction tx = LeafTransaction.getCurrent();
            if (sProperty != null && object instanceof DNode && DClareMPS.GET_FROM_MPS.get() && !AbstractDerivationTransaction.isDeriving()) {
                SNode sNode = ((DNode) object).tryOriginal();
                if (sNode != null) {
                    sNode.getProperty(sProperty);
                }
            }
            if (!(tx instanceof AbstractDerivationTransaction) && object.isExternal()) {
                DClareMPS dClareMPS = DClareMPS.instance(tx);
                return dClareMPS.imperativeState().derive(() -> super.get(object), dClareMPS.universeTransaction().constantState());
            }
            return super.get(object);
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

        public boolean isPublic() {
            return isPublic;
        }

    }

    final class DIdentifyingAttribute<C extends DIdentified, V> extends Setable<C, V> implements DAttribute<C, V> {

        private final String                   name;
        private final int                      index;
        private final Supplier<SNodeReference> source;
        private final Class<?>                 cls;
        private final IRuleSet                 ruleSet;

        public DIdentifyingAttribute(String id, String name, IRuleSet ruleSet, int index, Class<?> cls, Supplier<SNodeReference> source, SetableModifier... modifiers) {
            super(id, null, null, null, null, modifiers);
            this.name = name;
            this.index = index;
            this.source = source;
            this.cls = cls;
            this.ruleSet = ruleSet;
        }

        @Override
        public V get(C object) {
            if (object == null) {
                throw new NullPointerException("attempt to read null." + this);
            }
            V result = object.get(this);
            if (result == null) {
                throw new NullPointerException(object + "." + this + "=" + result);
            }
            return result;
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
            return true;
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
        public SNodeReference getSource() {
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

        private final String                   name;
        private final Supplier<SNodeReference> source;
        private final Class<?>                 cls;
        private final IRuleSet                 ruleSet;

        public DConstant(Object id, String name, IRuleSet ruleSet, Class<?> cls, Supplier<SNodeReference> source, Function<C, V> deriver, SetableModifier... modifiers) {
            super(id, null, null, null, deriver, null, modifiers);
            this.name = name;
            this.source = source;
            this.cls = cls;
            this.ruleSet = ruleSet;
        }

        @Override
        public V get(C object) {
            if (object == null) {
                throw new NullPointerException("attempt to read null." + this);
            }
            return super.get(object);
        }

        @Override
        public V pre(C object) {
            if (object == null) {
                throw new NullPointerException("attempt to read null." + this);
            }
            return super.pre(object);
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
        public SNodeReference getSource() {
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

        @Override
        public boolean checkConsistency() {
            return !isSynthetic() && super.checkConsistency();
        }

    }

}
