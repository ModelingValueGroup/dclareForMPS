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
import org.jetbrains.mps.openapi.module.SRepository;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.Entry;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.QualifiedSet;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Context;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.mps.DAttribute.DObservedAttribute;
import org.modelingvalue.transactions.AbstractLeaf;
import org.modelingvalue.transactions.Compound;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.Direction;
import org.modelingvalue.transactions.EmptyMandatoryException;
import org.modelingvalue.transactions.Leaf;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Priority;
import org.modelingvalue.transactions.Rule;
import org.modelingvalue.transactions.Setable;
import org.modelingvalue.transactions.Slot;
import org.modelingvalue.transactions.State;
import org.modelingvalue.transactions.StopObserverException;
import org.modelingvalue.transactions.TooManyChangesException;
import org.modelingvalue.transactions.TooManyObservedException;
import org.modelingvalue.transactions.TooManyObserversException;

@SuppressWarnings("rawtypes")
public abstract class DObject<O> {

    private static final QualifiedSet<Pair<DFeature, String>, DMessage>                    MESSAGE_QSET        = QualifiedSet.of(m -> Pair.of(m.feature(), m.id()));

    private static final Set<DMessageType>                                                 MESSAGE_TYPES       = Collection.of(DMessageType.values()).toSet();

    private static final Map<DMessageType, Boolean>                                        MESSAGE_BOOLEAN_MAP = MESSAGE_TYPES.sequential().toMap(t -> Entry.of(t, false));

    private static final Map<DMessageType, Set<? extends DObject>>                         MESSAGE_SET_MAP     = MESSAGE_TYPES.sequential().toMap(t -> Entry.of(t, Set.of()));

    private static final Map<DMessageType, QualifiedSet<Pair<DFeature, String>, DMessage>> MESSAGE_QSET_MAP    = MESSAGE_TYPES.sequential().toMap(t -> Entry.of(t, MESSAGE_QSET));

    @SuppressWarnings("unchecked")
    private static final Constant<DRule, Rule>                                             RULE                = Constant.of("<RULE>",                                            //
            r -> Rule.of(r, o -> ((DRuleObserver) AbstractLeaf.getCurrent().transaction()).run(() -> r.run(o))));

    protected static final class DRuleObserver extends Observer {

        private DRuleObserver(DRule rule, Compound parent) {
            super(RULE.get(rule), parent, Direction.forward, Priority.postDepth);
        }

        private void run(Runnable action) {
            if (parent.equals(DObject.TRANSACTION.get(object()))) {
                if (object().isOwned()) {
                    try {
                        action.run();
                    } catch (NullPointerException e) {
                        if (EMPTY_ATTRIBUTE.get()) {
                            throw new EmptyMandatoryException();
                        } else {
                            object().addMessage(dRule(), DMessageType.error, "EXCEPTION", e);
                            throw new StopObserverException(e);
                        }
                    } catch (IndexOutOfBoundsException e) {
                        if (COLLECTION_ATTRIBUTE.get()) {
                            throw new EmptyMandatoryException();
                        } else {
                            object().addMessage(dRule(), DMessageType.error, "EXCEPTION", e);
                            throw new StopObserverException(e);
                        }
                    } catch (Throwable e) {
                        object().addMessage(dRule(), DMessageType.error, "EXCEPTION", e);
                        throw new StopObserverException(e);
                    } finally {
                        COLLECTION_ATTRIBUTE.set(false);
                        EMPTY_ATTRIBUTE.set(false);
                    }
                }
            } else {
                throw new StopObserverException("Stopped");
            }
        }

        private DObject object() {
            return (DObject) parent.getId();
        }

        private DRule dRule() {
            return (DRule) rule().id();
        }

        @Override
        protected void checkTooManyObservers(AbstractLeafRun<?> run, Object object, Observed observed, Set<Observer> obervers) {
            if (object instanceof DObject && observed instanceof DObserved && !((DObserved) observed).isSynthetic()) {
                try {
                    super.checkTooManyObservers(run, object, observed, obervers.filter(o -> o instanceof DRuleObserver && !((DRuleObserver) o).dRule().isSynthetic()).toSet());
                } catch (TooManyObserversException e) {
                    ((DObject) object).addMessage((DObserved) observed, "TOO_MANY_OBSERVERS", e);
                }
            }

        }

        @Override
        protected void checkTooManyObserved(ObserverRun run, Set<Slot> sets, Set<Slot> gets) {
            try {
                super.checkTooManyObserved(run, //
                        sets.filter(s -> s.observed() instanceof DObserved && !((DObserved) s.observed()).isSynthetic()).toSet(), //
                        gets.filter(s -> s.observed() instanceof DObserved && !((DObserved) s.observed()).isSynthetic()).toSet());
            } catch (TooManyObservedException e) {
                object().addMessage(dRule(), "TOO_MANY_OBSERVED", e);
            }
        }

        @Override
        protected void countChanges(ObserverRun run, Observed observed) {
            if (observed instanceof DObserved && !((DObserved) observed).isSynthetic()) {
                super.countChanges(run, observed);
            }
        }

        @Override
        protected void checkTooManyChanges(ObserverRun run, State pre, Set<Slot> sets, Set<Slot> gets) {
            if (run.root().isDebugging()) {
                sets = sets.filter(s -> s.observed() instanceof DObserved && !((DObserved) s.observed()).isSynthetic()).toSet();
                gets = gets.filter(s -> s.observed() instanceof DObserved && !((DObserved) s.observed()).isSynthetic()).toSet();
            }
            try {
                super.checkTooManyChanges(run, pre, sets, gets);
            } catch (TooManyChangesException e) {
                object().addMessage(dRule(), "CONFLICTING_RULES", e);
                throw new StopObserverException(e);
            }
        }

    }

    protected final static class NonCheckingObserver extends Observer {

        protected NonCheckingObserver(Rule rule, Compound parent, Priority prio) {
            super(rule, parent, Direction.forward, prio);
        }

        @Override
        protected void countChanges(ObserverRun run, Observed observed) {
        }

        @Override
        protected void checkTooManyObserved(ObserverRun run, Set<Slot> sets, Set<Slot> gets) {
        }

        @Override
        protected void checkTooManyObservers(AbstractLeafRun<?> run, Object object, Observed observed, Set<Observer> obervers) {
        }

    }

    protected static final Context<Boolean>                                                                    EMPTY_ATTRIBUTE      = Context.of(false);
    protected static final Context<Boolean>                                                                    COLLECTION_ATTRIBUTE = Context.of(false);

    public static final Setable<DObject, DType>                                                                TYPE                 = Observed.of("TYPE", new DType("<DUMMY_TYPE>") {
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
                                                                                                                                    });

    public static final Setable<DObject, DObserved>                                                            CONTAINING           = DObserved.of("CONTAINING", null, false, false, false, true, (o, b, a, f) -> {
                                                                                                                                    }, null);

    @SuppressWarnings("unchecked")
    public static final Setable<DObject, DObject>                                                              PARENT               = DObserved.of("PARENT", null, false, false, false, true, (o, b, a, f) -> {
                                                                                                                                    }, (tx, o, b, a) -> {
                                                                                                                                        if (b != null && a != null) {
                                                                                                                                            DObserved cont = CONTAINING.get(o);
                                                                                                                                            if (cont != null) {
                                                                                                                                                cont.remove(b, o);
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }, null);

    public static final Setable<DObject, Set<? extends DObject>>                                               CHILDREN             = Observed.of("CHILDREN", Set.of(), (tx, o, b, a) -> {
                                                                                                                                        Setable.<Set<? extends DObject>, DObject> diff(Set.of(), b, a,                   //
                                                                                                                                                e -> e.activate(o, tx.parent()), e -> e.deactivate(o, tx.parent()));
                                                                                                                                    });
    @SuppressWarnings("unchecked")
    public static final Setable<DObject, Compound>                                                             TRANSACTION          = Observed.of("TRANSACTION", null, (tx, x, b, a) -> {
                                                                                                                                        if (a != null) {
                                                                                                                                            rule(CHILDREN, a,                                                            //
                                                                                                                                                    o -> CHILDREN.set(o, o.getAllChildren().toSet()),                    //
                                                                                                                                                    o -> CHILDREN.set(o, Set.of()), Priority.preDepth);
                                                                                                                                        }
                                                                                                                                    });

    private static final Setable<DObject, Set<Observer>>                                                       RULE_INSTANCES       = Setable.of("RULE_INSTANCES", Set.of(), (tx, o, b, a) -> {
                                                                                                                                        Setable.<Set<Observer>, Observer> diff(Set.of(), b, a, Leaf::trigger, tx::clear);
                                                                                                                                    });

    protected static final Setable<DObject, Map<DMessageType, Set<? extends DObject>>>                         MESSAGE_CHILDREN     = Observed.of("MESSAGE_CHILDREN", MESSAGE_SET_MAP);

    protected static final Setable<DObject, Map<DMessageType, Boolean>>                                        MESSAGES_OR_CHILDREN = Observed.of("MESSAGES_OR_CHILDREN", MESSAGE_BOOLEAN_MAP);

    protected static final Setable<DObject, Map<DMessageType, QualifiedSet<Pair<DFeature, String>, DMessage>>> MESSAGES             = Observed.of("MESSAGES", MESSAGE_QSET_MAP);

    public static DClareMPS dClareMPS() {
        return DClareMPS.instance();
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

    public Set<? extends DObject> getMessageChildren(DMessageType type) {
        return MESSAGE_CHILDREN.get(this).get(type);
    }

    public QualifiedSet<Pair<DFeature, String>, DMessage> getMessages(DMessageType type) {
        return MESSAGES.get(this).get(type);
    }

    public abstract boolean isReadOnly();

    public boolean isOwned() {
        return PARENT.get(this) != null;
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
        return TYPE.get(this).getAttributes().filter(DAttribute::isComposite).flatMap(a -> getDObjectSet(a.get(this))).toSet();
    }

    @SuppressWarnings("unchecked")
    public static Set<DObject<?>> getDObjectSet(Object v) {
        if (v instanceof Collection) {
            return ((Collection) v).toSet();
        } else if (v instanceof java.util.Collection) {
            return Set.of((java.util.Collection) v);
        } else {
            return v == null ? Set.of() : Set.of((DObject) v);
        }
    }

    protected abstract void read(DClareMPS dClareMPS);

    protected void init(DClareMPS dClareMPS) {
    }

    protected void exit(DClareMPS dClareMPS) {
    }

    protected final void start(DClareMPS dClareMPS) {
        init(dClareMPS);
        dClareMPS.read(() -> read(dClareMPS));
    }

    protected void stop(DClareMPS dClareMPS) {
        exit(dClareMPS);
    }

    @SuppressWarnings("unchecked")
    protected Compound activate(DObject parent, Compound parentTx) {
        Compound tx = Compound.of(this, parentTx);
        TRANSACTION.set(this, tx);
        rule(TYPE, tx, o -> {
            TYPE.set(o, getType());
        }, o -> TYPE.set(o, TYPE.getDefault()), Priority.preDepth);
        rule("<CONSTANT_CONTAINMENT>", tx, o -> {
            TYPE.get(o).getAttributes().filter(DAttribute::isConstant).filter(DAttribute::isComposite).forEach(cc -> cc.get(o));
        }, Priority.preDepth);
        rule(RULE_INSTANCES, tx, o -> {
            RULE_INSTANCES.set(o, TYPE.get(o).getRules().map(r -> o.rule(tx, r)).toSet());
        }, o -> RULE_INSTANCES.set(o, RULE_INSTANCES.getDefault()), Priority.preDepth);
        rule(MESSAGES_OR_CHILDREN, tx, o -> {
            MESSAGES_OR_CHILDREN.set(o, MESSAGE_TYPES.toMap(t -> Entry.of(t, !getMessages(t).isEmpty() || !getMessageChildren(t).isEmpty())));
        }, o -> MESSAGES_OR_CHILDREN.set(o, MESSAGES_OR_CHILDREN.getDefault()), Priority.postDepth);
        rule(MESSAGE_CHILDREN, tx, o -> {
            MESSAGE_CHILDREN.set(o, MESSAGE_TYPES.toMap(t -> Entry.of(t, CHILDREN.get(o).filter(c -> MESSAGES_OR_CHILDREN.get(c).get(t)).toSet())));
        }, o -> MESSAGE_CHILDREN.set(o, MESSAGE_CHILDREN.getDefault()), Priority.postDepth);
        rule("<EMPTY_MANDATORY>", tx, o -> {
            for (DAttribute attr : TYPE.get(o).getAttributes()) {
                if (attr instanceof DObservedAttribute && attr.isMandatory() && !attr.isSynthetic()) {
                    if (attr.get(o) == null) {
                        addMessage(attr, DMessageType.warning, "MANDATORY", "Mandatory attribute " + attr + " of " + o + " is null");
                    } else {
                        removeMessages(attr, DMessageType.warning, "MANDATORY");
                    }
                }
            }
        }, o -> MESSAGES.set(o, MESSAGES.getDefault()), Priority.postDepth);
        rule("<REFERENCED_ORPHAN>", tx, o -> {
            for (DAttribute attr : TYPE.get(o).getAttributes()) {
                if (attr instanceof DObservedAttribute && !attr.isComposite() && !attr.isSynthetic()) {
                    Set<DObject> orphans = Collection.of(attr.getIterable(o)).filter(DObject.class).filter(r -> {
                        return !((DObject) r).isReadOnly() && !isInOtherRepository((DObject) r) && TRANSACTION.get((DObject) r) == null;
                    }).toSet();
                    if (!orphans.isEmpty()) {
                        addMessage(attr, DMessageType.warning, "ORPHAN", "Non-composite attribute " + attr + " of " + o + " references orphans " + orphans.toString().substring(3));
                    } else {
                        removeMessages(attr, DMessageType.warning, "ORPHAN");
                    }
                }
            }
        }, o -> MESSAGES.set(o, MESSAGES.getDefault()), Priority.postDepth);
        return tx;

    }

    protected void deactivate(DObject parent, Compound parentTx) {
        Compound tx = TRANSACTION.get(this);
        if (tx != null && Objects.equals(parentTx, tx.parent())) {
            TRANSACTION.set(this, null);
        }
    }

    protected abstract SRepository getOriginalRepository();

    private boolean isInOtherRepository(DObject o) {
        if (isReadOnly()) {
            return true;
        } else {
            SRepository r = o.getOriginalRepository();
            return r != null && !r.equals(dClareMPS().getRepository().original());
        }
    }

    @SuppressWarnings("unchecked")
    public <T> T ancestor(Class<T> cls) {
        for (DObject p = PARENT.get(this); p != null; p = PARENT.get(p)) {
            if (cls.isInstance(p)) {
                return (T) p;
            }
        }
        return null;
    }

    protected abstract DType getType();

    private Observer rule(Compound parent, DRule rule) {
        return new DRuleObserver(rule, parent);
    }

    protected void addMessage(DFeature feature, String id, TooManyChangesException tmce) {
        DMessage message = new DMessage(this, feature, DMessageType.error, id, "Conflicting rules, running " + feature + " changes=" + tmce.getNrOfChanges());
        tmce.getLast().trace(message, (m, r) -> {
            m.addSubMessage(new DMessage(((DRuleObserver) r.observer()).object(), ((DRuleObserver) r.observer()).dRule(), DMessageType.error, id, //
                    "run: " + ((DRuleObserver) r.observer()).object() + "." + ((DRuleObserver) r.observer()).dRule() + " nr: " + r.nrOfChanges()));
        }, (m, r, s) -> {
            m.addSubMessage(new DMessage((DObject) s.object(), (DObserved) s.observed(), DMessageType.error, id, //
                    "read: " + s.object() + "." + s.observed() + "=" + r.read().get(s)));
        }, (m, w, s) -> {
            m.subMessages().last().addSubMessage(new DMessage((DObject) s.object(), (DObserved) s.observed(), DMessageType.error, id, //
                    "write: " + s.object() + "." + s.observed() + "=" + w.written().get(s)));
        }, m -> m.subMessages().last(), tmce.getObserver().root().maxNrOfChanges());
        addMessage(message);
    }

    protected void addMessage(DFeature feature, String id, TooManyObservedException tmse) {
        DMessage message = new DMessage(this, feature, DMessageType.warning, id, tmse.getSimpleMessage());
        int number = 0;
        for (Slot slot : tmse.getObserved()) {
            Observed observed = slot.observed();
            number++;
            message.addSubMessage(new DMessage(this, (DObserved) observed, DMessageType.warning, number + ")", slot.toString()));
        }
        addMessage(message);
    }

    protected void addMessage(DFeature feature, String id, TooManyObserversException tmse) {
        DMessage message = new DMessage(this, feature, DMessageType.warning, id, tmse.getSimpleMessage());
        int number = 0;
        for (Observer observer : tmse.getObservers()) {
            if (observer instanceof DRuleObserver) {
                number++;
                message.addSubMessage(new DMessage(this, ((DRuleObserver) observer).dRule(), DMessageType.warning, number + ")", observer.toString()));
            }
        }
        addMessage(message);
    }

    protected void addMessage(DFeature feature, DMessageType type, String id, Throwable content) {
        DMessage message = new DMessage(this, feature, type, id, content);
        for (StackTraceElement ste : content.getStackTrace()) {
            message.addSubMessage(new DMessage(this, feature, type, id, ste));
        }
        addMessage(message);
    }

    protected void addMessage(DFeature feature, DMessageType type, String id, Object content) {
        addMessage(new DMessage(this, feature, type, id, content));
    }

    private void addMessage(DMessage message) {
        AbstractLeaf.getCurrent().runNonObserving(() -> MESSAGES.set(this, (m, s) -> m.put(message.type(), s), getMessages(message.type()).add(message)));
    }

    protected void removeMessages(DFeature feature, DMessageType type, String id) {
        AbstractLeaf.getCurrent().runNonObserving(() -> MESSAGES.set(this, (m, s) -> m.put(type, s), getMessages(type).removeKey(Pair.of(feature, id))));
    }

    final public static <O extends DObject> void rule(Object id, Compound tx, Consumer<O> action) {
        makeRule(id, tx, action, o -> {
        }, Priority.postDepth).trigger();
    }

    final public static <O extends DObject> void rule(Object id, Compound tx, Consumer<O> action, Priority prio) {
        makeRule(id, tx, action, o -> {
        }, prio).trigger();
    }

    final public static <O extends DObject> void rule(Object id, Compound tx, Consumer<O> action, Consumer<O> stop) {
        makeRule(id, tx, action, stop, Priority.postDepth).trigger();
    }

    final public static <O extends DObject> void rule(Object id, Compound tx, Consumer<O> action, Consumer<O> stop, Priority prio) {
        makeRule(id, tx, action, stop, prio).trigger();
    }

    @SuppressWarnings("unchecked")
    final private static <O extends DObject> Observer makeRule(Object id, Compound tx, Consumer<O> action, Consumer<O> stop, Priority prio) {
        return new NonCheckingObserver(Rule.of(id, o -> {
            if (AbstractLeaf.getCurrent().parent().equals(DObject.TRANSACTION.get((O) o))) {
                if (((O) o).isOwned()) {
                    action.accept((O) o);
                }
            } else {
                stop.accept((O) o);
                throw new StopObserverException("Stopped");
            }
        }), tx, prio);
    }

}
