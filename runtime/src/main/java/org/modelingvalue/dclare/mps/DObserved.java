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

import org.jetbrains.mps.openapi.model.SNodeReference;
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

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, Function<C, V> fromMPS, TriConsumer<C, V, V> toMPS, Supplier<SNodeReference> source, SetableModifier... modifiers) {
        return new DObserved<>(id, def, null, fromMPS, toMPS, null, source, modifiers);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, Function<C, V> fromMPS, TriConsumer<C, V, V> toMPS, QuadConsumer<LeafTransaction, C, V, V> changed, SetableModifier... modifiers) {
        return new DObserved<>(id, def, null, fromMPS, toMPS, changed, null, modifiers);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, Function<C, V> fromPMS, TriConsumer<C, V, V> toMPS, QuadConsumer<LeafTransaction, C, V, V> changed, Supplier<SNodeReference> source, SetableModifier... modifiers) {
        return new DObserved<>(id, def, null, null, toMPS, changed, source, modifiers);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, Supplier<Setable<?, ?>> opposite, Function<C, V> fromPMS, TriConsumer<C, V, V> toMPS, Supplier<SNodeReference> source, SetableModifier... modifiers) {
        return new DObserved<>(id, def, opposite, fromPMS, toMPS, null, source, modifiers);
    }

    public static <C extends DObject, V> DObserved<C, V> of(Object id, V def, Supplier<Setable<?, ?>> opposite, Function<C, V> fromPMS, TriConsumer<C, V, V> toMPS, QuadConsumer<LeafTransaction, C, V, V> changed, Supplier<SNodeReference> source, SetableModifier... modifiers) {
        return new DObserved<>(id, def, opposite, fromPMS, toMPS, changed, source, modifiers);
    }

    private Function<O, T>                 fromMPS;
    private TriConsumer<O, T, T>           toMPS;
    private Action<O>                      initReadAction;
    private Action<O>                      reReadAction;
    private final Supplier<SNodeReference> source;

    private DObserved(Object id, T def, Supplier<Setable<?, ?>> opposite, Function<O, T> fromMPS, TriConsumer<O, T, T> toMPS, QuadConsumer<LeafTransaction, O, T, T> changed, Supplier<SNodeReference> source, SetableModifier... modifiers) {
        super(id, def, opposite, null, changed, modifiers);
        this.source = source;
        setFromToMPS(fromMPS, toMPS);
    }

    protected DObserved(Object id, T def, Supplier<Setable<?, ?>> opposite, QuadConsumer<LeafTransaction, O, T, T> changed, Supplier<SNodeReference> source, SetableModifier... modifiers) {
        super(id, def, opposite, null, changed, modifiers);
        this.source = source;
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    protected final void setFromToMPS(Function<O, T> fromMPS, TriConsumer<O, T, T> toMPS) {
        this.fromMPS = fromMPS;
        this.toMPS = toMPS;
        this.initReadAction = fromMPS != null ? Action.<O> of(Pair.of("$INIT_READ", id), this::initRead, LeafModifier.preserved, LeafModifier.read) : null;
        this.reReadAction = fromMPS != null ? Action.<O> of(Pair.of("$RE_READ", id), this::reRead, LeafModifier.preserved, LeafModifier.read) : null;
    }

    public boolean isComposite() {
        return containment();
    }

    @Override
    public boolean isConstant() {
        return false;
    }

    @Override
    public SNodeReference getSource() {
        return source != null ? source.get() : null;
    }

    @SuppressWarnings("rawtypes")
    private void initRead(O object) {
        if (!DObject.READ_OBSERVEDS.add(object, this).contains(this)) {
            if (DClareMPS.instance().getConfig().isTraceActivation()) {
                LeafTransaction current = LeafTransaction.getCurrent();
                current.runNonObserving(() -> System.err.println(DclareTrace.getLineStart("ACTIVATE", current) + object + "." + this));
            }
            set(object, fromMPS(object));
        }
    }

    @SuppressWarnings("unchecked")
    protected void triggerInitRead(O object) {
        initReadAction.trigger(object);
    }

    private void reRead(O object) {
        set(object, fromMPS(object));
    }

    @SuppressWarnings("unchecked")
    protected void triggerReRead(O object) {
        reReadAction.trigger(object);
    }

    protected void toMPS(O object, T pre, T post, boolean handleChanges) {
        if (toMPS != null) {
            try {
                toMPS.accept(object, pre, post);
            } catch (Throwable t) {
                DObject.dClareMPS().addMessage(new ThrowableError(object, this, Instant.now(), t));
            }
        }
    }

    protected T fromMPS(O object) {
        return DClareMPS.instance().read(() -> fromMPS(object, getDefault()));
    }

    protected final T fromMPS(O object, T def) {
        if (isRead()) {
            try {
                return fromMPS.apply(object);
            } catch (Throwable t) {
                DClareMPS.instance().addMessage(new ThrowableError(object, this, Instant.now(), t));
            }
        }
        return def;
    }

    @SuppressWarnings("rawtypes")
    @Override
    public T get(O object) {
        LeafTransaction tx = LeafTransaction.getCurrent();
        if (!(tx instanceof AbstractDerivationTransaction) && tx.universeTransaction().constantState().isSet(tx, object, Mutable.D_PARENT_CONTAINING.constant())) {
            DClareMPS dClareMPS = DClareMPS.instance(tx);
            return dClareMPS.imperativeState().derive(() -> super.get(object), dClareMPS.universeTransaction().constantState());
        }
        if (isRead()) {
            if (object.isRead()) {
                if (object.readConstant()) {
                    return fromMPS(object);
                } else if (!isDclareOnly() && object.isObserving() && !DObject.READ_OBSERVEDS.get(object).contains(this)) {
                    triggerInitRead(object);
                }
            } else if (!isDclareOnly() && object.isObserving() && !DObject.READ_OBSERVEDS.add(object, this).contains(this) && DClareMPS.instance().getConfig().isTraceActivation()) {
                tx.runNonObserving(() -> System.err.println(DclareTrace.getLineStart("ACTIVATE", tx) + object + "." + this));
            }
        }
        object.activate();
        return super.get(object);
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public T set(O object, T value) {
        if (isRead() && !isDclareOnly() && object.isObserving()) {
            LeafTransaction tx = LeafTransaction.getCurrent();
            if (object.isRead()) {
                if (!DObject.READ_OBSERVEDS.get(object).contains(this)) {
                    triggerInitRead(object);
                    ((ObserverTransaction) tx).retrigger(Priority.inner);
                    return super.get(object);
                }
            } else if (!DObject.READ_OBSERVEDS.add(object, this).contains(this) && DClareMPS.instance().getConfig().isTraceActivation()) {
                tx.runNonObserving(() -> System.err.println(DclareTrace.getLineStart("ACTIVATE", tx) + object + "." + this));
            }
        }
        if (isReference() && object.isObserving()) {
            for (DObject r : collection(value).filter(DObject.class)) {
                r.activate();
            }
        }
        return super.set(object, value);
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
        return synthetic() || isPlumbing();
    }

    @Override
    protected boolean isEmpty(T result) {
        return result == null;
    }

    public final boolean isDclareOnly() {
        return toMPS == null;
    }

    public boolean isNative() {
        return false;
    }

    protected boolean isRead() {
        return fromMPS != null;
    }

    @Override
    public IRuleSet ruleSet() {
        return null;
    }

}
