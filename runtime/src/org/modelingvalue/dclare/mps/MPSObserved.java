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

import java.util.function.BiConsumer;
import java.util.function.Consumer;

import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.ContextThread;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.QuadConsumer;
import org.modelingvalue.collections.util.TriConsumer;
import org.modelingvalue.transactions.AbstractLeaf;
import org.modelingvalue.transactions.Leaf;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;

@SuppressWarnings("rawtypes")
public class MPSObserved<O, T> extends Observed<O, T> {

    public static <C, V> MPSObserved<C, V> of(Object id, V def, boolean mandatory, boolean deferred, TriConsumer<C, V, V> toMPS) {
        return of(id, def, mandatory, deferred, toMPS, null);
    }

    public static <C, V> MPSObserved<C, V> of(Object id, V def, boolean mandatory, boolean deferred, TriConsumer<C, V, V> toMPS, QuadConsumer<AbstractLeaf, C, V, V> changed) {
        return new MPSObserved<C, V>(id, def, mandatory, deferred, toMPS, changed);
    }

    private final TriConsumer<O, T, T> toMPS;
    private final boolean              mandatory;
    private final boolean              deferred;

    protected MPSObserved(Object id, T def, boolean mandatory, boolean deferred, TriConsumer<O, T, T> toMPS, QuadConsumer<AbstractLeaf, O, T, T> changed) {
        super(Pair.of(id, mandatory), def, changed);
        this.toMPS = toMPS;
        this.mandatory = mandatory;
        this.deferred = deferred;
    }

    public boolean isDeferred() {
        return deferred;
    }

    public void toMPS(O object, T pre, T post) {
        if (DClareMPS.TRACE) {
            Leaf.getCurrent().runNonObserving(() -> {
                System.err.println("DCLARE TO MPS " + object + "." + this + "=" + pre + "->" + post);
            });
        }
        toMPS.accept(object, pre, post);
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

    @Override
    protected void changed(AbstractLeaf tx, O object, T pre, T post) {
        super.changed(tx, object, pre, post);
        if (DClareMPS.TRACE && Thread.currentThread() instanceof ContextThread) {
            tx.runNonObserving(() -> {
                if (Leaf.getCurrent() instanceof Observer) {
                    System.err.println("DCLARE " + ContextThread.getNr() + " CHANGED " + object + "." + this + "=" + pre + "->" + post);
                } else {
                    System.err.println("DCLARE FROM MPS " + object + "." + this + "=" + pre + "->" + post);
                }
            });
        }
    }

    @Override
    public T get(O object) {
        T result = super.get(object);
        if (mandatory && (result == null || (result instanceof ContainingCollection && ((ContainingCollection) result).isEmpty()))) {
            // TODO
        }
        return result;
    }

    @Override
    public String toString() {
        return ((Pair) id).a().toString();
    }

}
