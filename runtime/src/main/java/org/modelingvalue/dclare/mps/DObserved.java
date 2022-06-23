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

import java.time.Instant;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.model.SNode;
import org.modelingvalue.collections.Entry;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.QuadConsumer;
import org.modelingvalue.collections.util.TriConsumer;
import org.modelingvalue.dclare.*;
import org.modelingvalue.dclare.ex.ThrowableError;

@SuppressWarnings("unused")
public class DObserved<O extends DObject, T> extends Observed<O, T> implements DFeature {

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, Function<C, V> fromMPS, TriConsumer<C, V, V> toMPS, SetableModifier... modifiers) {
        return new DObserved<>(id, def, null, fromMPS, toMPS, null, null, modifiers);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, Function<C, V> fromMPS, TriConsumer<C, V, V> toMPS, Supplier<SNode> source, SetableModifier... modifiers) {
        return new DObserved<>(id, def, null, fromMPS, toMPS, null, source, modifiers);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, Function<C, V> fromMPS, TriConsumer<C, V, V> toMPS, QuadConsumer<LeafTransaction, C, V, V> changed, SetableModifier... modifiers) {
        return new DObserved<>(id, def, null, fromMPS, toMPS, changed, null, modifiers);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, Function<C, V> fromPMS, TriConsumer<C, V, V> toMPS, QuadConsumer<LeafTransaction, C, V, V> changed, Supplier<SNode> source, SetableModifier... modifiers) {
        return new DObserved<>(id, def, null, null, toMPS, changed, source, modifiers);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, Supplier<Setable<?, ?>> opposite, Function<C, V> fromPMS, TriConsumer<C, V, V> toMPS, Supplier<SNode> source, SetableModifier... modifiers) {
        return new DObserved<>(id, def, opposite, fromPMS, toMPS, null, source, modifiers);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, Supplier<Setable<?, ?>> opposite, Function<C, V> fromPMS, TriConsumer<C, V, V> toMPS, QuadConsumer<LeafTransaction, C, V, V> changed, Supplier<SNode> source, SetableModifier... modifiers) {
        return new DObserved<>(id, def, opposite, fromPMS, toMPS, changed, source, modifiers);
    }

    private Function<O, T>        fromMPS;
    private TriConsumer<O, T, T>  toMPS;
    private final Supplier<SNode> source;
    private final Action<O>       readAction;

    private DObserved(Object id, T def, Supplier<Setable<?, ?>> opposite, Function<O, T> fromMPS, TriConsumer<O, T, T> toMPS, QuadConsumer<LeafTransaction, O, T, T> changed, Supplier<SNode> source, SetableModifier... modifiers) {
        super(id, def, opposite, null, changed, modifiers);
        this.source = source;
        this.readAction = fromMPS != null ? new ReadAction<O>(Pair.of("$READ", id), this::read, LeafModifier.preserved) : null;
        setFromToMPS(fromMPS, toMPS);
    }

    protected DObserved(Object id, T def, Supplier<Setable<?, ?>> opposite, QuadConsumer<LeafTransaction, O, T, T> changed, Supplier<SNode> source, SetableModifier... modifiers) {
        super(id, def, opposite, null, changed, modifiers);
        this.source = source;
        this.readAction = null;
    }

    protected final void setFromToMPS(Function<O, T> fromMPS, TriConsumer<O, T, T> toMPS) {
        this.fromMPS = fromMPS;
        this.toMPS = toMPS;
    }

    public boolean isComposite() {
        return containment();
    }

    @Override
    public boolean onlyTemporal() {
        return false;
    }

    @Override
    public SNode getSource() {
        return source != null ? source.get() : null;
    }

    private void read(O object) {
        set(object, fromMPS(object));
    }

    protected final void toMPS(O object, T pre, T post) {
        try {
            toMPS.accept(object, pre, post);
        } catch (Throwable t) {
            DObject.dClareMPS().addMessage(new ThrowableError(object, this, Instant.now(), t));
        }
    }

    protected final T fromMPS(O object) {
        return DObject.dClareMPS().read(() -> {
            try {
                return fromMPS.apply(object);
            } catch (Throwable t) {
                DObject.dClareMPS().addMessage(new ThrowableError(object, this, Instant.now(), t));
                return getDefault();
            }
        });
    }

    protected Action<O> readAction() {
        return readAction;
    }

    @Override
    public T get(O object) {
        LeafTransaction tx = currentLeaf(object);
        if (tx instanceof IdentityDerivationTransaction) {
            return super.get(object);
        } else if (object == null && tx instanceof DerivationTransaction) {
            return getDefault();
        } else if (fromMPS != null && (tx instanceof DerivationTransaction || !object.isActive())) {
            return fromMPS(object);
        } else {
            return super.get(object);
        }
    }

    protected T read(O dObject, T val) {
        return fromMPS != null ? fromMPS(dObject) : val;
    }

    public static <T> void map(Set<T> ist, Set<T> soll, Consumer<T> add, Consumer<T> remove) {
        for (T o : ist) {
            if (!soll.contains(o)) {
                remove.accept(o);
            }
        }
        for (T o : soll) {
            if (!ist.contains(o)) {
                add.accept(o);
            }
        }
    }

    @SuppressWarnings("resource")
    public static <T> void map(List<T> ist, List<T> soll, BiConsumer<T, T> add, Consumer<T> remove) {
        for (T o : ist) {
            if (!soll.contains(o)) {
                remove.accept(o);
                ist = ist.remove(o);
            }
        }
        for (int is = 0; is < soll.size(); is++) {
            T n = soll.get(is);
            int ii = ist.firstIndexOf(n);
            if (ii != is) {
                if (ii >= 0) {
                    remove.accept(n);
                    ist = ist.removeIndex(ii);
                }
                add.accept(n, is > 0 ? ist.get(is - 1) : null);
                ist = ist.insert(is, n);
            }
        }
    }

    public static <K, V> void map(Map<K, V> ist, Map<K, V> soll, BiConsumer<K, V> set) {
        for (Entry<K, V> e : ist) {
            if (soll.get(e.getKey()) == null) {
                set.accept(e.getKey(), null);
            }
        }
        for (Entry<K, V> e : soll) {
            if (!soll.get(e.getKey()).equals(ist.get(e.getKey()))) {
                set.accept(e.getKey(), e.getValue());
            }
        }
    }

    @Override
    public boolean isSynthetic() {
        return synthetic();
    }

    @Override
    protected boolean isEmpty(T result) {
        return result == null;
    }

    public boolean isDclareOnly() {
        return toMPS == null;
    }

    @Override
    public IRuleSet ruleSet() {
        return null;
    }

    public static class ReadAction<O extends DObject> extends Action<O> {

        protected ReadAction(Object id, Consumer<O> action, LeafModifier... modifiers) {
            super(id, action, modifiers);
        }

    }

}
