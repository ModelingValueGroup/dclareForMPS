//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2020 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.model.SNode;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.Entry;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.QuadConsumer;
import org.modelingvalue.collections.util.TriConsumer;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.State;
import org.modelingvalue.dclare.ex.EmptyMandatoryException;
import org.modelingvalue.dclare.ex.ThrowableError;

@SuppressWarnings("unused")
public class DObserved<O extends DObject, T> extends Observed<O, T> implements DFeature {

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, boolean mandatory, boolean composite, Supplier<Setable<?, ?>> opposite, boolean synthetic, TriConsumer<C, V, V> toMPS, Supplier<SNode> source) {
        return new DObserved<>(id, mandatory, def, composite, opposite, synthetic, toMPS, null, source, true);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, boolean mandatory, boolean composite, Supplier<Setable<?, ?>> opposite, boolean synthetic, TriConsumer<C, V, V> toMPS, Supplier<SNode> source, boolean checkConsistency) {
        return new DObserved<>(id, mandatory, def, composite, opposite, synthetic, toMPS, null, source, checkConsistency);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, boolean mandatory, boolean composite, Supplier<Setable<?, ?>> opposite, boolean synthetic, TriConsumer<C, V, V> toMPS, QuadConsumer<LeafTransaction, C, V, V> changed, Supplier<SNode> source) {
        return new DObserved<>(id, mandatory, def, composite, opposite, synthetic, toMPS, changed, source, true);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, boolean mandatory, boolean composite, Supplier<Setable<?, ?>> opposite, boolean synthetic, TriConsumer<C, V, V> toMPS, QuadConsumer<LeafTransaction, C, V, V> changed, Supplier<SNode> source, boolean checkConsistency) {
        return new DObserved<>(id, mandatory, def, composite, opposite, synthetic, toMPS, changed, source, checkConsistency);
    }

    private final TriConsumer<O, T, T> toMPS;
    private final Supplier<SNode>      source;
    private final boolean              synthetic;

    protected DObserved(Object id, boolean mandatory, T def, boolean composite, Supplier<Setable<?, ?>> opposite, boolean synthetic, TriConsumer<O, T, T> toMPS, QuadConsumer<LeafTransaction, O, T, T> changed, Supplier<SNode> source, boolean checkConsistency) {
        super(id, mandatory, def, composite, opposite, null, changed, checkConsistency);
        this.toMPS = toMPS;
        this.source = source;
        this.synthetic = synthetic;
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

    public void toMPS(O object, T pre, T post) {
        try {
            toMPS.accept(object, pre, post);
        } catch (Throwable t) {
            DObject.dClareMPS().addMessage(new ThrowableError(object, this, Instant.now(), t));
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

    @Override
    protected boolean isOrphan(State state, Mutable m) {
        return m instanceof DObject && super.isOrphan(state, m) && !((DObject) m).isExternal();
    }

    @Override
    protected boolean isEmpty(T result) {
        return (result == null && mandatory()) || result instanceof ContainingCollection;
    }

    @Override
    protected void handleEmptyCheck(O object, T result) {
        if (result == null) {
            throw new EmptyMandatoryException(object, this);
        }
    }

    public boolean isDclareOnly() {
        return toMPS == null;
    }

}
