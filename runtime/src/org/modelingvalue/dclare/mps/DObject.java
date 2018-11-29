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
import java.util.Objects;
import java.util.function.Consumer;
import java.util.stream.Collectors;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Context;
import org.modelingvalue.collections.util.ContextThread;
import org.modelingvalue.transactions.Compound;
import org.modelingvalue.transactions.EmptyMandatoryException;
import org.modelingvalue.transactions.Leaf;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Setable;
import org.modelingvalue.transactions.StopObserverException;

@SuppressWarnings("rawtypes")
public abstract class DObject<O> {

    protected static final Context<Boolean>                      EMPTY_ATTRIBUTE = Context.of(false);

    public static final Setable<DObject, DType>                  TYPE            = Observed.of("TYPE", new DType() {
                                                                                     @Override
                                                                                     public Set<Consumer> getRules(Set<IRuleSet> ruleSets) {
                                                                                         return Set.of();
                                                                                     }

                                                                                     @Override
                                                                                     public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
                                                                                         return Set.of();
                                                                                     }

                                                                                     @Override
                                                                                     public Set<SLanguage> getLanguages() {
                                                                                         return Set.of();
                                                                                     }

                                                                                     @Override
                                                                                     public Object getIdentity() {
                                                                                         return "<DUMMY_TYPE>";
                                                                                     }
                                                                                 }, (tx, o, b, a) -> DClareMPS.TYPES.set(o.dClareMPS, Set::add, a));

    public static final Setable<DObject, DObject>                PARENT          = Observed.of("PARENT", null);

    public static final Setable<DObject, Set<? extends DObject>> CHILDREN        = Observed.of("CHILDREN", Set.of(), (tx, o, b, a) -> {
                                                                                     Setable.<Set<? extends DObject>, DObject> diff(Set.of(), b, a,                   //
                                                                                             e -> e.activate(o, tx.parent()), e -> e.deactivate(o, tx.parent()));
                                                                                 });

    @SuppressWarnings("unchecked")
    public static final Setable<DObject, Compound>               TRANSACTION     = Observed.of("TRANSACTION", null, (tx, o, b, a) -> {
                                                                                     if (a != null) {
                                                                                         Observer.of(CHILDREN, a,                                                     //
                                                                                                 () -> {
                                                                                                     if (a.equals(DObject.TRANSACTION.get(o))) {
                                                                                                         if (o.isComplete()) {
                                                                                                             CHILDREN.set(o, o.getAllChildren().toSet());
                                                                                                         }
                                                                                                     } else {
                                                                                                         CHILDREN.set(o, Set.of());
                                                                                                         throw new StopObserverException("Stopped");
                                                                                                     }
                                                                                                 }).trigger();
                                                                                     }
                                                                                 });

    private static final Setable<DObject, Set<Observer>>         RULE_INSTANCES  = Setable.of("RULE_INSTANCES", Set.of(), (tx, o, b, a) -> {
                                                                                     Setable.<Set<Observer>, Observer> diff(Set.of(), b, a, Leaf::trigger, tx::clear);
                                                                                 });

    protected final DClareMPS                                    dClareMPS;
    protected final O                                            original;

    protected DObject(DClareMPS dClareMPS, O original) {
        this.dClareMPS = dClareMPS;
        this.original = original;
    }

    protected O original() {
        return original;
    }

    @Override
    public int hashCode() {
        return dClareMPS.hashCode() + original.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof DObject) {
            DObject other = (DObject) obj;
            return dClareMPS.equals(other.dClareMPS) && original.equals(other.original);
        }
        return false;
    }

    @Override
    public String toString() {
        return original().toString();
    }

    public java.util.List<DAttribute> getAttributes() {
        return TYPE.get(this).getAttributes().collect(Collectors.toList());
    }

    @SuppressWarnings("unchecked")
    public ContainingCollection<? extends DNode> getAllChildren() {
        return getContained().addAll((ContainingCollection) getChildren());
    }

    protected abstract ContainingCollection<? extends DObject> getChildren();

    @SuppressWarnings("unchecked")
    private ContainingCollection<? extends DObject> getContained() {
        return TYPE.get(this).getAttributes().filter(DAttribute::isComposite).flatMap(a -> {
            Object v = a.get(this);
            if (v instanceof Collection) {
                return (Collection) v;
            } else if (v instanceof java.util.Collection) {
                return Set.of((java.util.Collection) v);
            } else {
                return v == null ? Set.of() : Set.of((DObject) v);
            }
        }).toSet();
    }

    protected void init(DObject parent) {
        PARENT.set(this, parent);
    }

    @SuppressWarnings("unchecked")
    protected Compound activate(DObject parent, Compound parentTx) {
        dClareMPS.schedule(() -> init(parent));
        Compound tx = Compound.of(this, parentTx);
        TRANSACTION.set(this, tx);
        Observer.of(TYPE, tx, () -> {
            if (tx.equals(DObject.TRANSACTION.get(this))) {
                if (isComplete()) {
                    TYPE.set(this, getType());
                }
            } else {
                TYPE.set(this, TYPE.getDefault());
                throw new StopObserverException("Stopped");
            }
        }).trigger();
        Observer.of("<CONSTANT_CONTAINMENT>", tx, () -> {
            if (tx.equals(DObject.TRANSACTION.get(this))) {
                if (isComplete()) {
                    TYPE.get(this).getAttributes().filter(DAttribute::isConstant).filter(DAttribute::isComposite).forEach(cc -> cc.get(this));
                }
            } else {
                throw new StopObserverException("Stopped");
            }
        });
        Observer.of(RULE_INSTANCES, tx, () -> {
            if (tx.equals(TRANSACTION.get(this))) {
                if (isComplete()) {
                    RULE_INSTANCES.set(this, TYPE.get(this).getRules().map(r -> Observer.of(r, tx, () -> {
                        if (tx.equals(TRANSACTION.get(this))) {
                            if (isComplete()) {
                                if (DClareMPS.TRACE.get(dClareMPS)) {
                                    Leaf.getCurrent().runNonObserving(() -> {
                                        System.err.println("DCLARE " + ContextThread.getNr() + " RUN RULE " + r + " for " + DObject.this);
                                    });
                                }
                                try {
                                    r.accept(DObject.this);
                                } catch (NullPointerException e) {
                                    if (EMPTY_ATTRIBUTE.get()) {
                                        if (DClareMPS.TRACE.get(dClareMPS)) {
                                            e.printStackTrace();
                                        }
                                        throw new EmptyMandatoryException();
                                    } else {
                                        showError(r, e);
                                    }
                                } catch (StopObserverException | EmptyMandatoryException e) {
                                    if (DClareMPS.TRACE.get(dClareMPS)) {
                                        e.printStackTrace();
                                    }
                                    throw e;
                                } catch (Throwable e) {
                                    showError(r, e);
                                } finally {
                                    EMPTY_ATTRIBUTE.set(false);
                                }
                            }
                        } else {
                            throw new StopObserverException("Stopped");
                        }
                    })).toSet());
                }
            } else {
                RULE_INSTANCES.set(this, Set.of());
                throw new StopObserverException("Stopped");
            }
        }).trigger();
        return tx;

    }

    private void showError(Consumer r, Throwable e) {
        Error error = new Error("DCLARE " + ContextThread.getNr() + " Exception in RULE " + r + " for " + DObject.this, e);
        StackTraceElement[] stackTrace = error.getStackTrace();
        error.setStackTrace(Arrays.copyOf(stackTrace, Math.min(4, stackTrace.length)));
        error.printStackTrace();
        throw new StopObserverException("Stop because of Exception");
    }

    protected void exit(DObject parent, Compound parentTx) {
        if (Objects.equals(parent, PARENT.get(this))) {
            PARENT.set(this, null);
        }
        if (Objects.equals(parentTx, TRANSACTION.get(this).parent())) {
            TRANSACTION.set(this, null);
        }
    }

    protected void stop() {
        exit(null, null);
        for (DObject child : CHILDREN.get(this)) {
            child.stop();
        }
    }

    protected void deactivate(DObject parent, Compound parentTx) {
        dClareMPS.schedule(() -> init(parent));
    }

    protected boolean isComplete() {
        return PARENT.get(this) != null;
    }

    protected abstract DType getType();

}
