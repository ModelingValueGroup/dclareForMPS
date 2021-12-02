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

import java.time.Instant;
import java.util.Objects;
import java.util.function.*;

import org.jetbrains.mps.openapi.model.SNode;
import org.modelingvalue.collections.*;
import org.modelingvalue.collections.util.*;
import org.modelingvalue.dclare.*;
import org.modelingvalue.dclare.ex.ThrowableError;

@SuppressWarnings("unused")
public class DObserved<O extends DObject, T> extends Observed<O, T> implements DFeature {

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, TriFunction<C, V, V, V> fromMPS, TriConsumer<C, V, V> toMPS, SetableModifier... modifiers) {
        return new DObserved<>(id, def, null, fromMPS, toMPS, null, null, modifiers);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, TriFunction<C, V, V, V> fromMPS, TriConsumer<C, V, V> toMPS, Supplier<SNode> source, SetableModifier... modifiers) {
        return new DObserved<>(id, def, null, fromMPS, toMPS, null, source, modifiers);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, TriFunction<C, V, V, V> fromMPS, TriConsumer<C, V, V> toMPS, QuadConsumer<LeafTransaction, C, V, V> changed, SetableModifier... modifiers) {
        return new DObserved<>(id, def, null, fromMPS, toMPS, changed, null, modifiers);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, TriFunction<C, V, V, V> fromPMS, TriConsumer<C, V, V> toMPS, QuadConsumer<LeafTransaction, C, V, V> changed, Supplier<SNode> source, SetableModifier... modifiers) {
        return new DObserved<>(id, def, null, null, toMPS, changed, source, modifiers);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, Supplier<Setable<?, ?>> opposite, TriFunction<C, V, V, V> fromPMS, TriConsumer<C, V, V> toMPS, Supplier<SNode> source, SetableModifier... modifiers) {
        return new DObserved<>(id, def, opposite, fromPMS, toMPS, null, source, modifiers);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, Supplier<Setable<?, ?>> opposite, TriFunction<C, V, V, V> fromPMS, TriConsumer<C, V, V> toMPS, QuadConsumer<LeafTransaction, C, V, V> changed, Supplier<SNode> source, SetableModifier... modifiers) {
        return new DObserved<>(id, def, opposite, fromPMS, toMPS, changed, source, modifiers);
    }

    private TriFunction<O, T, T, T> fromMPS;
    private TriConsumer<O, T, T>    toMPS;
    private final Supplier<SNode>   source;
    private Action<O>               readAction;

    private DObserved(Object id, T def, Supplier<Setable<?, ?>> opposite, TriFunction<O, T, T, T> fromMPS, TriConsumer<O, T, T> toMPS, QuadConsumer<LeafTransaction, O, T, T> changed, Supplier<SNode> source, SetableModifier... modifiers) {
        super(id, def, opposite, null, changed, modifiers);
        this.source = source;
        setFromToMPS(fromMPS, toMPS);
    }

    protected DObserved(Object id, T def, Supplier<Setable<?, ?>> opposite, QuadConsumer<LeafTransaction, O, T, T> changed, Supplier<SNode> source, SetableModifier... modifiers) {
        super(id, def, opposite, null, changed, modifiers);
        this.source = source;
    }

    protected final void setFromToMPS(TriFunction<O, T, T, T> fromMPS, TriConsumer<O, T, T> toMPS) {
        this.fromMPS = fromMPS;
        this.toMPS = toMPS;
        this.readAction = fromMPS != null ? new ReadAction<O>(Pair.of("$READ", id), o -> {
            set(o, fromMPS(o, pre(o), get(o)));
        }, Priority.urgent) : null;
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

    protected final void toMPS(O object, T pre, T post) {
        try {
            toMPS.accept(object, fromMPS.apply(object, pre, post), post);
        } catch (Throwable t) {
            DObject.dClareMPS().addMessage(new ThrowableError(object, this, Instant.now(), t));
        }
    }

    protected T fromMPS(O object, T pre, T post) {
        return DObject.dClareMPS().read(() -> {
            try {
                return fromMPS.apply(object, pre, post);
            } catch (Throwable t) {
                DObject.dClareMPS().addMessage(new ThrowableError(object, this, Instant.now(), t));
                return post;
            }
        });
    }

    protected Action<O> readAction() {
        return readAction;
    }

    @Override
    public T get(O object) {
        LeafTransaction tx = LeafTransaction.getCurrent();
        if (fromMPS != null && (tx instanceof DerivationTransaction || !object.isActive())) {
            return fromMPS(object, tx.pre(object, this), tx.get(object, this));
        } else {
            return super.get(object);
        }
    }

    protected T superGet(O object) {
        return super.get(object);
    }

    @Override
    protected void changed(LeafTransaction tx, O dObject, T preVal, T postVal) {
        super.changed(tx, dObject, preVal, postVal);
        if (!isDclareOnly() && !(tx.leaf() instanceof ReadAction) && !dObject.isDclareOnly() && dObject.isActive()) {
            Object readVal = fromMPS(dObject, preVal, postVal);
            if (!Objects.equals(readVal, postVal)) {
                DClareMPS.instance().addObjectChange(dObject, this);
            }
        }
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

    public static class ReadAction<O extends DObject> extends Action<O> {

        protected ReadAction(Object id, Consumer<O> action, Priority initPriority) {
            super(id, action, initPriority);
        }

    }

}
