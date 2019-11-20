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

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.model.SNode;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.Entry;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.QuadConsumer;
import org.modelingvalue.collections.util.TriConsumer;
import org.modelingvalue.transactions.EmptyMandatoryException;
import org.modelingvalue.transactions.LeafTransaction;
import org.modelingvalue.transactions.Mutable;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Setable;
import org.modelingvalue.transactions.State;
import org.modelingvalue.transactions.ThrowableError;

@SuppressWarnings("rawtypes")
public class DObserved<O extends DObject, T> extends Observed<O, T> implements DFeature<O> {

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, boolean mandatory, boolean composite, Supplier<Setable<?, ?>> opposite, boolean synthetic, TriConsumer<C, V, V> toMPS, Supplier<SNode> source) {
        return new DObserved<C, V>(id, def, mandatory, composite, opposite, synthetic, toMPS, null, source);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, boolean mandatory, boolean composite, Supplier<Setable<?, ?>> opposite, boolean synthetic, TriConsumer<C, V, V> toMPS, QuadConsumer<LeafTransaction, C, V, V> changed, Supplier<SNode> source) {
        return new DObserved<C, V>(id, def, mandatory, composite, opposite, synthetic, toMPS, changed, source);
    }

    private final TriConsumer<O, T, T> toMPS;
    protected final boolean            mandatory;
    private final Supplier<SNode>      source;
    private final boolean              synthetic;

    protected DObserved(Object id, T def, boolean mandatory, boolean composite, Supplier<Setable<?, ?>> opposite, boolean synthetic, TriConsumer<O, T, T> toMPS, QuadConsumer<LeafTransaction, O, T, T> changed, Supplier<SNode> source) {
        super(id, def, composite, opposite, null, changed, true);
        this.toMPS = toMPS;
        this.mandatory = mandatory;
        this.source = source;
        this.synthetic = synthetic;
    }

    public boolean isComposite() {
        return containment();
    }

    @Override
    public SNode getSource() {
        return source != null ? source.get() : null;
    }

    public void toMPS(State state, O object, T pre, T post) {
        try {
            toMPS.accept(object, pre, post);
        } catch (Throwable t) {
            DObject.dClareMPS().addMessage(new ThrowableError(object, this, t));
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
                    ist = ist.remove(ii);
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
        return synthetic;
    }

    @SuppressWarnings("unchecked")
    public void remove(O obj, Object e) {
        set(obj, (v, r) -> {
            if (r.equals(v)) {
                return null;
            } else if (v instanceof ContainingCollection && ((ContainingCollection) v).contains(r)) {
                return (T) ((ContainingCollection) v).remove(r);
            } else if (v instanceof java.util.List && ((java.util.List) v).contains(r)) {
                java.util.List l = new ArrayList((java.util.List) v);
                l.remove(r);
                return (T) Collections.unmodifiableList(l);
            } else if (v instanceof java.util.Set && ((java.util.Set) v).contains(r)) {
                java.util.Set s = new HashSet((java.util.Set) v);
                s.remove(r);
                return (T) Collections.unmodifiableSet(s);
            } else {
                return v;
            }
        }, e);
    }

    @Override
    public T get(O object) {
        T result = object != null ? super.get(object) : null;
        if (object != null) {
            if (result == null && mandatory) {
                if (LeafTransaction.getCurrent() instanceof DRule.DObserverTransaction) {
                    DRule.EMPTY_ATTRIBUTE.set(true);
                }
            } else if (result instanceof java.util.Collection || result instanceof ContainingCollection) {
                if (LeafTransaction.getCurrent() instanceof DRule.DObserverTransaction) {
                    DRule.COLLECTION_ATTRIBUTE.set(true);
                }
            }
        }
        return result;
    }

    @Override
    protected boolean isOrphan(State state, Mutable m) {
        if (super.isOrphan(state, m)) {
            if (m instanceof DObject) {
                DObject o = (DObject) m;
                if (o.isReadOnly() || !DObject.dClareMPS().getRepository().original().equals(o.getOriginalRepository())) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override
    public boolean checkConsistency() {
        return super.checkConsistency() || mandatory;
    }

    @Override
    public void checkConsistency(State state, O object, T pre, T post) {
        if (super.checkConsistency()) {
            super.checkConsistency(state, object, pre, post);
        }
        if (mandatory && post == null) {
            throw new EmptyMandatoryException(object, this);
        }
    }

    public boolean isDclareOnly() {
        return toMPS == null;
    }

}
