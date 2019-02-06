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
import java.util.stream.Collectors;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.QualifiedSet;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Context;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.mps.DAttribute.DObservedAttribute;
import org.modelingvalue.transactions.AbstractLeaf;
import org.modelingvalue.transactions.Compound;
import org.modelingvalue.transactions.EmptyMandatoryException;
import org.modelingvalue.transactions.Leaf;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Priority;
import org.modelingvalue.transactions.Root;
import org.modelingvalue.transactions.Setable;
import org.modelingvalue.transactions.Slot;
import org.modelingvalue.transactions.State;
import org.modelingvalue.transactions.StopObserverException;
import org.modelingvalue.transactions.TooManyChangesException;

@SuppressWarnings("rawtypes")
public abstract class DObject<O> {

    private static final class DRuleObserver extends Observer {

        protected DRuleObserver(DRule rule, Compound parent, Runnable action) {
            super(rule, parent, () -> ((DRuleObserver) AbstractLeaf.getCurrent()).run(action), Priority.mid);
        }

        private void run(Runnable action) {
            try {
                if (firstTime()) {
                    object().removeMessages(rule(), "EXCEPTION");
                }
                if (parent.equals(DObject.TRANSACTION.get(object())) && object().isComplete()) {
                    action.run();
                }
            } catch (NullPointerException e) {
                if (EMPTY_ATTRIBUTE.get()) {
                    throw new EmptyMandatoryException();
                } else {
                    object().addMessage(rule(), "EXCEPTION", e);
                    throw new StopObserverException(e);
                }
            } catch (IndexOutOfBoundsException e) {
                if (COLLECTION_ATTRIBUTE.get()) {
                    throw new EmptyMandatoryException();
                } else {
                    object().addMessage(rule(), "EXCEPTION", e);
                    throw new StopObserverException(e);
                }
            } catch (Throwable e) {
                object().addMessage(rule(), "EXCEPTION", e);
                throw new StopObserverException(e);
            } finally {
                COLLECTION_ATTRIBUTE.set(false);
                EMPTY_ATTRIBUTE.set(false);
            }
        }

        @Override
        protected void countChanges(Observed observed) {
            if (observed instanceof DObserved) {
                super.countChanges(observed);
            }
        }

        private DObject object() {
            return (DObject) parent.getId();
        }

        private DRule rule() {
            return (DRule) getId();
        }

        @Override
        protected void checkTooManyChanges(State pre, Root root, Set<Slot> sets, Set<Slot> gets) {
            if (root.isDebugging()) {
                sets = sets.filter(s -> s.observed() instanceof DObserved).toSet();
                gets = gets.filter(s -> s.observed() instanceof DObserved).toSet();
            }
            try {
                super.checkTooManyChanges(pre, root, sets, gets);
            } catch (TooManyChangesException e) {
                object().addMessage(rule(), "EXCEPTION", e);
                throw new StopObserverException(e);
            }
        }

    }

    protected final static class NonCheckingObserver extends Observer {

        protected NonCheckingObserver(Object id, Compound parent, Runnable action) {
            super(id, parent, action, Priority.mid);
        }

        @Override
        protected void countChanges(Observed observed) {
        }

    }

    protected static final String                                                           DCLARE               = "---------> DCLARE ";
    protected static final Context<Boolean>                                                 EMPTY_ATTRIBUTE      = Context.of(false);
    protected static final Context<Boolean>                                                 COLLECTION_ATTRIBUTE = Context.of(false);

    public static final Setable<DObject, DType>                                             TYPE                 = Observed.of("TYPE", new DType() {
                                                                                                                     @Override
                                                                                                                     public Set<DRule> getRules(Set<IRuleSet> ruleSets) {
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

    public static final Setable<DObject, DObject>                                           PARENT               = Observed.of("PARENT", null);

    public static final Setable<DObject, Set<? extends DObject>>                            CHILDREN             = Observed.of("CHILDREN", Set.of(), (tx, o, b, a) -> {
                                                                                                                     Setable.<Set<? extends DObject>, DObject> diff(Set.of(), b, a,                   //
                                                                                                                             e -> e.activate(o, tx.parent()), e -> e.deactivate(o, tx.parent()));
                                                                                                                 });

    @SuppressWarnings("unchecked")
    public static final Setable<DObject, Compound>                                          TRANSACTION          = Observed.of("TRANSACTION", null, (tx, o, b, a) -> {
                                                                                                                     if (a != null) {
                                                                                                                         o.rule(CHILDREN, a,                                                          //
                                                                                                                                 () -> CHILDREN.set(o, o.getAllChildren().toSet()),                   //
                                                                                                                                 () -> CHILDREN.set(o, Set.of()));
                                                                                                                     }
                                                                                                                 });

    private static final Setable<DObject, Set<Observer>>                                    RULE_INSTANCES       = Setable.of("RULE_INSTANCES", Set.of(), (tx, o, b, a) -> {
                                                                                                                     Setable.<Set<Observer>, Observer> diff(Set.of(), b, a, Leaf::trigger, tx::clear);
                                                                                                                 });

    protected static final Setable<DObject, Set<DMessage>>                                  ALL_PROBLEMS         = Observed.of("ALL_PROBLEMS", Set.of());

    protected static final Setable<DObject, QualifiedSet<Pair<DFeature, String>, DMessage>> PROBLEMS             = Observed.of("PROBLEMS", QualifiedSet.of(m -> Pair.of(m.feature(), m.id())));

    public static DClareMPS dClareMPS() {
        return (DClareMPS) Leaf.getCurrent().root().getId();
    }

    protected final O original;

    protected DObject(O original) {
        this.original = original;
    }

    public O original() {
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
            Set<DMessage> problems = PROBLEMS.get(this).toSet();
            ALL_PROBLEMS.set(this, problems.addAll(CHILDREN.get(this).flatMap(c -> ALL_PROBLEMS.get(c))));
        }, () -> ALL_PROBLEMS.set(this, Set.of()));
        rule("<EMPTY_MANDATORY>", tx, () -> {
            for (DAttribute attr : TYPE.get(this).getAttributes()) {
                if (attr instanceof DObservedAttribute && attr.isMandatory()) {
                    if (attr.get(this) == null) {
                        addMessage(attr, "MANDATORY", "Mandatory attribute " + attr + " of " + this + " is null");
                    } else {
                        removeMessages(attr, "MANDATORY");
                    }
                }
            }
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
    private Observer rule(Compound parent, DRule rule) {
        return new DRuleObserver(rule, parent, () -> rule.run(DObject.this));
    }

    protected void addMessage(DFeature feature, String id, TooManyChangesException tmce) {
        DMessage message = new DMessage(this, feature, id, "Too many changes running " + feature + " changes=" + tmce.getNrOfChanges());
        tmce.getLast().trace(message, (m, r) -> {
            m.addSubMessage(new DMessage(((DRuleObserver) r.observer()).object(), ((DRuleObserver) r.observer()).rule(), id, //
                    "run: " + ((DRuleObserver) r.observer()).object() + "." + ((DRuleObserver) r.observer()).rule() + " nr: " + r.nrOfChanges()));
        }, (m, r, s) -> {
            m.subMessages().last().addSubMessage(new DMessage((DObject) s.object(), (DObserved) s.observed(), id, //
                    "read: " + s.object() + "." + s.observed() + "=" + r.read().get(s)));
        }, (m, w, s) -> {
            m.subMessages().last().addSubMessage(new DMessage((DObject) s.object(), (DObserved) s.observed(), id, //
                    "write: " + s.object() + "." + s.observed() + "=" + w.written().get(s)));
        }, m -> m.subMessages().last(), tmce.getObserver().root().maxNrOfChanges());
        PROBLEMS.set(this, QualifiedSet::add, message);
    }

    protected void addMessage(DFeature feature, String id, Object content) {
        PROBLEMS.set(this, QualifiedSet::add, new DMessage(this, feature, id, content));
    }

    protected void removeMessages(DFeature feature, String id) {
        PROBLEMS.set(this, QualifiedSet::removeKey, Pair.of(feature, id));
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
