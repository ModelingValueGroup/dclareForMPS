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

import java.util.Objects;
import java.util.function.Consumer;
import java.util.stream.Collectors;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.QualifiedSet;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Context;
import org.modelingvalue.collections.util.ContextThread;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.dclare.mps.DAttribute.DObservedAttribut;
import org.modelingvalue.transactions.AbstractLeaf;
import org.modelingvalue.transactions.Compound;
import org.modelingvalue.transactions.EmptyMandatoryException;
import org.modelingvalue.transactions.Leaf;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Priority;
import org.modelingvalue.transactions.ReadOnly;
import org.modelingvalue.transactions.Root;
import org.modelingvalue.transactions.Setable;
import org.modelingvalue.transactions.StopObserverException;
import org.modelingvalue.transactions.TooManyChangesException;
import org.modelingvalue.transactions.Transaction;

@SuppressWarnings("rawtypes")
public abstract class DObject<O> {

    private final class DObserver extends Observer {

        protected DObserver(Object id, Compound parent, Runnable action) {
            super(id, parent, action, Priority.mid);
        }

        @Override
        protected void countChanges(Setable setable) {
            if (!PROBLEMS.equals(setable)) {
                super.countChanges(setable);
            }
        }

        @Override
        protected void checkTooManyChanges(Root root, Transaction running, Priority prio, Object object, Setable setable, Object pre, Object post) {
            if (!(AbstractLeaf.getCurrent() instanceof ReadOnly) && !PROBLEMS.equals(setable)) {
                super.checkTooManyChanges(root, running, prio, object, setable, pre, post);
            }
        }

        @Override
        protected void reportTooManyChanges(Root root, Transaction running, Object object, Setable setable, Object pre, Object post, int tooMany) {
            DObject.this.reportTooManyChanges(running, object, setable, pre, post, this, tooMany);
        }
    }

    protected final static class NonCheckingObserver extends Observer {

        protected NonCheckingObserver(Object id, Compound parent, Runnable action) {
            super(id, parent, action, Priority.mid);
        }

        @Override
        protected void countChanges(Setable property) {
        }

        @Override
        protected void checkTooManyChanges(Root root, Transaction running, Priority prio, Object object, Setable setable, Object pre, Object post) {
        }
    }

    protected static final String                                                       DCLARE               = "---------> DCLARE ";
    protected static final Context<Boolean>                                             EMPTY_ATTRIBUTE      = Context.of(false);
    protected static final Context<Boolean>                                             COLLECTION_ATTRIBUTE = Context.of(false);

    public static final Setable<DObject, DType>                                         TYPE                 = Observed.of("TYPE", new DType() {
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
                                                                                                             }, (tx, o, b, a) -> DClareMPS.TYPES.set(dClareMPS(), Set::add, a));

    public static final Setable<DObject, DObject>                                       PARENT               = Observed.of("PARENT", null);

    public static final Setable<DObject, Set<? extends DObject>>                        CHILDREN             = Observed.of("CHILDREN", Set.of(), (tx, o, b, a) -> {
                                                                                                                 Setable.<Set<? extends DObject>, DObject> diff(Set.of(), b, a,                   //
                                                                                                                         e -> e.activate(o, tx.parent()), e -> e.deactivate(o, tx.parent()));
                                                                                                             });

    @SuppressWarnings("unchecked")
    public static final Setable<DObject, Compound>                                      TRANSACTION          = Observed.of("TRANSACTION", null, (tx, o, b, a) -> {
                                                                                                                 if (a != null) {
                                                                                                                     o.rule(CHILDREN, a,                                                          //
                                                                                                                             () -> CHILDREN.set(o, o.getAllChildren().toSet()),                   //
                                                                                                                             () -> CHILDREN.set(o, Set.of()));
                                                                                                                 }
                                                                                                             });

    private static final Setable<DObject, Set<Observer>>                                RULE_INSTANCES       = Setable.of("RULE_INSTANCES", Set.of(), (tx, o, b, a) -> {
                                                                                                                 Setable.<Set<Observer>, Observer> diff(Set.of(), b, a, Leaf::trigger, tx::clear);
                                                                                                             });

    protected static final Setable<DObject, Set<Triple<DObject, Object, Object>>>       ALL_PROBLEMS         = Observed.of("ALL_PROBLEMS", Set.of());

    protected static final Setable<DObject, QualifiedSet<Object, Pair<Object, Object>>> PROBLEMS             = Observed.of("PROBLEMS", QualifiedSet.of(Pair::a));

    public static DClareMPS dClareMPS() {
        return (DClareMPS) Leaf.getCurrent().root().getId();
    }

    protected final O original;

    protected DObject(O original) {
        this.original = original;
    }

    protected O original() {
        return original;
    }

    @Override
    public int hashCode() {
        return original.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        } else if (obj instanceof DObject) {
            DObject other = (DObject) obj;
            return original.equals(other.original);
        } else {
            return false;
        }
    }

    @Override
    public String toString() {
        return original().toString();
    }

    public java.util.List<DAttribute> getAttributes() {
        return TYPE.get(this).getAttributes().collect(Collectors.toList());
    }

    public java.util.List<DAttribute> getNonSyntheticAttributes() {
        return TYPE.get(this).getNonSyntheticAttributes().collect(Collectors.toList());
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

    protected void init(DClareMPS dClareMPS) {
    }

    @SuppressWarnings("unchecked")
    protected Compound activate(DObject parent, Compound parentTx) {
        DClareMPS dClareMPS = dClareMPS();
        dClareMPS.run(() -> init(dClareMPS));
        PARENT.set(this, parent);
        Compound tx = Compound.of(this, parentTx);
        TRANSACTION.set(this, tx);
        rule(TYPE, tx, () -> TYPE.set(this, getType()), () -> TYPE.set(this, TYPE.getDefault()));
        rule("<CONSTANT_CONTAINMENT>", tx, () -> //
        TYPE.get(this).getAttributes().filter(DAttribute::isConstant).filter(DAttribute::isComposite).forEach(cc -> cc.get(this)));
        rule(ALL_PROBLEMS, tx, () -> {
            Set<Triple<DObject, Object, Object>> problems = PROBLEMS.get(this).map(p -> Triple.of((DObject) this, p.a(), p.b())).toSet();
            ALL_PROBLEMS.set(this, problems.addAll(CHILDREN.get(this).flatMap(c -> ALL_PROBLEMS.get(c))));
        }, () -> ALL_PROBLEMS.set(this, Set.of()));
        rule("<EMPTY_MANDATORY>", tx, () -> {
            QualifiedSet<Object, Pair<Object, Object>> problems = PROBLEMS.get(this);
            for (DAttribute attr : TYPE.get(this).getAttributes()) {
                if (attr instanceof DObservedAttribut && attr.isMandatory()) {
                    if (attr.get(this) == null) {
                        problems = problems.add(Pair.of(attr, "Mandatory attribute " + attr + " of " + this + " is null"));
                    } else {
                        problems = problems.removeKey(attr);
                    }
                }
            }
            PROBLEMS.set(this, problems);
        }, () -> PROBLEMS.set(this, PROBLEMS.getDefault()));
        rule(RULE_INSTANCES, tx, //
                () -> RULE_INSTANCES.set(this, TYPE.get(this).getRules().map(r -> rule(tx, r)).toSet()), //
                () -> RULE_INSTANCES.set(this, Set.of()));
        return tx;

    }

    protected void exit(DClareMPS dClareMPS) {
    }

    protected void deactivate(DObject parent, Compound parentTx) {
        if (Objects.equals(parent, PARENT.get(this))) {
            PARENT.set(this, null);
        }
        Compound tx = TRANSACTION.get(this);
        if (tx != null && Objects.equals(parentTx, tx.parent())) {
            TRANSACTION.set(this, null);
        }
        dClareMPS().run(() -> exit(dClareMPS()));
    }

    protected void stop(DClareMPS dClareMPS) {
        exit(dClareMPS);
        for (DObject child : CHILDREN.get(this)) {
            child.stop(dClareMPS);
        }
    }

    protected boolean isComplete() {
        return PARENT.get(this) != null;
    }

    protected abstract DType getType();

    @SuppressWarnings("unchecked")
    private Observer rule(Compound tx, Consumer r) {
        DClareMPS dClareMPS = dClareMPS();
        return new DObserver(r, tx, () -> {
            if (tx.equals(DObject.TRANSACTION.get(this)) && isComplete()) {
                DObserver current = (DObserver) Leaf.getCurrent();
                if (tx.root().runCount() > current.count()) {
                    removeProblems(r);
                }
                if (DClareMPS.TRACE.get(dClareMPS)) {
                    current.runNonObserving(() -> {
                        System.err.println(DCLARE + ContextThread.getNr() + " RUN RULE " + r + " for " + DObject.this);
                    });
                }
                try {
                    r.accept(DObject.this);
                } catch (NullPointerException e) {
                    if (EMPTY_ATTRIBUTE.get()) {
                        if (DClareMPS.TRACE.get(dClareMPS)) {
                            System.err.println(DCLARE + e.getMessage());
                        }
                        throw new EmptyMandatoryException();
                    } else {
                        handleException(r, e);
                    }
                } catch (IndexOutOfBoundsException e) {
                    if (COLLECTION_ATTRIBUTE.get()) {
                        if (DClareMPS.TRACE.get(dClareMPS)) {
                            System.err.println(DCLARE + e.getMessage());
                        }
                        throw new EmptyMandatoryException();
                    } else {
                        handleException(r, e);
                    }
                } catch (Throwable e) {
                    if (DClareMPS.TRACE.get(dClareMPS)) {
                        System.err.println(DCLARE + e.getMessage());
                    }
                    handleException(r, e);
                } finally {
                    COLLECTION_ATTRIBUTE.set(false);
                    EMPTY_ATTRIBUTE.set(false);
                }
            }
        });
    }

    private void handleException(Consumer r, Throwable e) {
        if (!(e instanceof TooManyChangesException)) {
            addProblem(r, e);
        }
        throw new StopObserverException(e);
    }

    protected void reportTooManyChanges(Transaction running, Object object, Setable setable, Object pre, Object post, Observer triggered, int tooMany) {
        String message = running.root().preState().get(() -> //
        "Too many changes: " + tooMany + "\n       Running: " + running + "\n       Change: " + object + "." + setable + "=" + pre + " -> " + post + "\n       Triggers: " + triggered + "\n");
        addProblem(triggered.getId(), message);
    }

    @SuppressWarnings("unchecked")
    protected void addProblem(Object key, Object problem) {
        PROBLEMS.set(this, (s, k) -> {
            Pair<Object, Set<Object>> p = (Pair) s.get(k);
            return s.add(Pair.of(k, p != null ? p.b().add(problem) : Set.of(problem)));
        }, key);
    }

    protected void removeProblems(Object key) {
        PROBLEMS.set(this, QualifiedSet::removeKey, key);
    }

    final public void rule(Object id, Compound tx, Runnable action) {
        makeRule(id, tx, action).trigger();
    }

    final public void rule(Object id, Compound tx, Runnable action, Runnable stop) {
        makeRule(id, tx, action, stop).trigger();
    }

    final public Observer makeRule(Object id, Compound tx, Runnable action) {
        return makeRule(id, tx, action, () -> {
        });
    }

    final public Observer makeRule(Object id, Compound tx, Runnable action, Runnable stop) {
        return new NonCheckingObserver(id, tx, () -> {
            if (tx.equals(DObject.TRANSACTION.get(this))) {
                if (isComplete()) {
                    action.run();
                }
            } else {
                stop.run();
                throw new StopObserverException("Stopped");
            }
        });
    }

}
