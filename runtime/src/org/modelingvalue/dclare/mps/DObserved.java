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

import java.util.Arrays;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.model.SNode;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.QuadConsumer;
import org.modelingvalue.transactions.AbstractLeaf;
import org.modelingvalue.transactions.Observed;

public class DObserved<O, T> extends Observed<O, T> implements DFeature<O> {

    public static <C, V> DObserved<C, V> of(Object id, V def, boolean mandatory, boolean deferred, QuadConsumer<C, V, V, Boolean> toMPS) {
        return of(id, def, mandatory, deferred, toMPS, null);
    }

    public static <C, V> DObserved<C, V> of(Object id, V def, boolean mandatory, boolean deferred, QuadConsumer<C, V, V, Boolean> toMPS, QuadConsumer<AbstractLeaf, C, V, V> changed) {
        return new DObserved<C, V>(id, def, mandatory, deferred, toMPS, changed, null);
    }

    private final QuadConsumer<O, T, T, Boolean> toMPS;
    protected final boolean                      mandatory;
    private final boolean                        deferred;
    private final Supplier<SNode>                source;

    protected DObserved(Object id, T def, boolean mandatory, boolean deferred, QuadConsumer<O, T, T, Boolean> toMPS, QuadConsumer<AbstractLeaf, O, T, T> changed, Supplier<SNode> source) {
        super(id, def, changed);
        this.toMPS = toMPS;
        this.mandatory = mandatory;
        this.deferred = deferred;
        this.source = source;
    }

    public boolean isDeferred() {
        return deferred;
    }

    @Override
    public SNode getSource() {
        return source != null ? source.get() : null;
    }

    @SuppressWarnings("rawtypes")
    public void toMPS(O object, T pre, T post, boolean first) {
        try {
            toMPS.accept(object, pre, post, first);
            if (object instanceof DObject) {
                ((DObject) object).removeMessages(this, "TO MPS");
            }
        } catch (Throwable t) {
            if (object instanceof DObject) {
                ((DObject) object).addMessage(this, "TO MPS", t);
            } else {
                System.err.println(DObject.DCLARE + "TO MPS " + object + "." + this + "=" + post);
                t.setStackTrace(Arrays.copyOf(t.getStackTrace(), 8));
                t.printStackTrace();
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
                    ist = ist.remove(ii);
                }
                add.accept(n, is > 0 ? ist.get(is - 1) : null);
                ist = ist.insert(is, n);
            }
        }
    }

    @Override
    public boolean isSynthetic() {
        return false;
    }

}
