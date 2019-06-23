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

import java.util.function.Consumer;
import java.util.stream.Collectors;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.module.SRepository;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Entry;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.QualifiedSet;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.mps.DAttribute.DObservedAttribute;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.Direction;
import org.modelingvalue.transactions.LeafTransaction;
import org.modelingvalue.transactions.Mutable;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Priority;
import org.modelingvalue.transactions.Setable;
import org.modelingvalue.transactions.TooManyChangesException;
import org.modelingvalue.transactions.TooManyObservedException;
import org.modelingvalue.transactions.TooManyObserversException;

@SuppressWarnings("rawtypes")
public abstract class DObject<O> implements Mutable {

    private static final QualifiedSet<Pair<DFeature, String>, DMessage>                                        MESSAGE_QSET              = QualifiedSet.of(m -> Pair.of(m.feature(), m.id()));

    private static final Set<DMessageType>                                                                     MESSAGE_TYPES             = Collection.of(DMessageType.values()).toSet();

    private static final Map<DMessageType, Boolean>                                                            MESSAGE_BOOLEAN_MAP       = MESSAGE_TYPES.sequential().toMap(t -> Entry.of(t, false));

    private static final Map<DMessageType, Set<? extends DObject>>                                             MESSAGE_SET_MAP           = MESSAGE_TYPES.sequential().toMap(t -> Entry.of(t, Set.of()));

    private static final Map<DMessageType, QualifiedSet<Pair<DFeature, String>, DMessage>>                     MESSAGE_QSET_MAP          = MESSAGE_TYPES.sequential().toMap(t -> Entry.of(t, MESSAGE_QSET));

    public static final Setable<DObject, DType>                                                                TYPE                      = Observed.of("TYPE", new DType("<DUMMY_TYPE>") {
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

    protected static final Setable<DObject, Map<DMessageType, Set<? extends DObject>>>                         MESSAGE_CHILDREN          = Observed.of("MESSAGE_CHILDREN", MESSAGE_SET_MAP);

    protected static final Setable<DObject, Map<DMessageType, Boolean>>                                        MESSAGES_OR_CHILDREN      = Observed.of("MESSAGES_OR_CHILDREN", MESSAGE_BOOLEAN_MAP);

    protected static final Setable<DObject, Map<DMessageType, QualifiedSet<Pair<DFeature, String>, DMessage>>> MESSAGES                  = Observed.of("MESSAGES", MESSAGE_QSET_MAP);

    private static final Observer<DObject>                                                                     TYPE_RULE                 = observer(TYPE, o -> {
                                                                                                                                             TYPE.set(o, o.getType());
                                                                                                                                         }, Priority.preDepth);

    private static final Observer<DObject>                                                                     MESSAGES_OR_CHILDREN_RULE = observer(MESSAGES_OR_CHILDREN, o -> {
                                                                                                                                             MESSAGES_OR_CHILDREN.set(o, MESSAGE_TYPES.toMap(t -> Entry.of(t, !o.getMessages(t).isEmpty() || !o.getMessageChildren(t).isEmpty())));
                                                                                                                                         }, Priority.postDepth);

    @SuppressWarnings("unchecked")
    private static final Observer<DObject>                                                                     MESSAGE_CHILDREN_RULE     = observer(MESSAGE_CHILDREN, o -> {
                                                                                                                                             MESSAGE_CHILDREN.set(o, MESSAGE_TYPES.toMap(t -> Entry.of(t, o.getAllChildren().filter(c -> MESSAGES_OR_CHILDREN.get((DObject) c).get(t)).toSet())));
                                                                                                                                         }, Priority.postDepth);

    @SuppressWarnings("unchecked")
    private static final Observer<DObject>                                                                     EMPTY_MANDATORY_RULE      = observer("EMPTY_MANDATORY", o -> {
                                                                                                                                             for (DAttribute attr : TYPE.get(o).getAttributes()) {
                                                                                                                                                 if (attr instanceof DObservedAttribute && attr.isMandatory() && !attr.isSynthetic()) {
                                                                                                                                                     if (attr.get(o) == null) {
                                                                                                                                                         o.addMessage(attr, DMessageType.warning, "MANDATORY", "Mandatory attribute " + attr + " of " + o + " is null");
                                                                                                                                                     } else {
                                                                                                                                                         o.removeMessages(attr, DMessageType.warning, "MANDATORY");
                                                                                                                                                     }
                                                                                                                                                 }
                                                                                                                                             }
                                                                                                                                         }, Priority.postDepth);

    @SuppressWarnings("unchecked")
    private static final Observer<DObject>                                                                     REFERENCED_ORPHAN_RULE    = observer("REFERENCED_ORPHAN", o -> {
                                                                                                                                             for (DAttribute attr : TYPE.get(o).getAttributes()) {
                                                                                                                                                 if (attr instanceof DObservedAttribute && !attr.isComposite() && !attr.isSynthetic()) {
                                                                                                                                                     Set<DObject> orphans = Collection.of(attr.getIterable(o)).filter(DObject.class).filter(r ->                                                                       //
                                                                                                                                                     !((DObject) r).isReadOnly() && !o.isInOtherRepository((DObject) r) && !((DObject) r).isOwned()).toSet();
                                                                                                                                                     if (!orphans.isEmpty()) {
                                                                                                                                                         o.addMessage(attr, DMessageType.warning, "ORPHAN", "Non-composite attribute " + attr + " of " + o + " references orphans " + orphans.toString().substring(3));
                                                                                                                                                     } else {
                                                                                                                                                         o.removeMessages(attr, DMessageType.warning, "ORPHAN");
                                                                                                                                                     }
                                                                                                                                                 }
                                                                                                                                             }
                                                                                                                                         }, Priority.postDepth);

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
        return dParent() != null;
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
    @Override
    public Collection<? extends Observer<?>> dObservers() {
        return Collection.concat((Collection<? extends Observer<?>>) TYPE.get(this).getObservers(), //
                Collection.of(TYPE_RULE, MESSAGES_OR_CHILDREN_RULE, MESSAGE_CHILDREN_RULE, EMPTY_MANDATORY_RULE, REFERENCED_ORPHAN_RULE));
    }

    @SuppressWarnings("unchecked")
    @Override
    public Collection<? extends Setable<? extends Mutable, ?>> dContainers() {
        return (Collection<? extends Setable<? extends Mutable, ?>>) TYPE.get(this).getAttributes().filter(a -> a.isComposite());
    }

    @SuppressWarnings("unchecked")
    @Override
    public Collection<? extends Constant<? extends Mutable, ?>> dConstants() {
        return (Collection<? extends Constant<? extends Mutable, ?>>) TYPE.get(this).getAttributes().filter(a -> a instanceof Constant);
    }

    @SuppressWarnings("unchecked")
    public Collection<? extends DObject> getAllChildren() {
        return (Collection<? extends DObject>) dChildren();
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

    @Override
    public void dActivate() {
        Mutable.super.dActivate();
        start(dClareMPS());
    }

    @Override
    public void dDeactivate() {
        Mutable.super.dDeactivate();
        stop(dClareMPS());
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

    protected abstract SRepository getOriginalRepository();

    private boolean isInOtherRepository(DObject o) {
        if (isReadOnly()) {
            return true;
        } else {
            SRepository r = o.getOriginalRepository();
            return r != null && !r.equals(dClareMPS().getRepository().original());
        }
    }

    public DObject dObjectParent() {
        Object parent = dParent();
        return parent instanceof DObject ? (DObject) parent : null;
    }

    protected abstract DType getType();

    protected void addMessage(DFeature feature, String id, TooManyChangesException tmce) {
        DMessage message = new DMessage(this, feature, DMessageType.error, id, "Conflicting rules, running " + feature + " changes=" + tmce.getNrOfChanges());
        tmce.getLast().trace(message, (m, r) -> {
            m.addSubMessage(new DMessage((DObject) r.mutable(), ((DRule.DObserver) r.observer()).rule(), DMessageType.error, id, //
                    "run: " + r.mutable() + "." + ((DRule.DObserver) r.observer()).rule() + " nr: " + r.nrOfChanges()));
        }, (m, r, s) -> {
            m.addSubMessage(new DMessage((DObject) s.mutable(), (DObserved) s.observed(), DMessageType.error, id, //
                    "read: " + s.mutable() + "." + s.observed() + "=" + r.read().get(s)));
        }, (m, w, s) -> {
            m.subMessages().last().addSubMessage(new DMessage((DObject) s.mutable(), (DObserved) s.observed(), DMessageType.error, id, //
                    "write: " + s.mutable() + "." + s.observed() + "=" + w.written().get(s)));
        }, m -> m.subMessages().last(), tmce.getState().universeTransaction().maxNrOfChanges());
        addMessage(message);
    }

    protected void addMessage(DFeature feature, String id, TooManyObservedException tmse) {
        DMessage message = new DMessage(this, feature, DMessageType.warning, id, tmse.getSimpleMessage());
        int number = 0;
        for (Entry<Observed, Set<Mutable>> e : tmse.getObserved()) {
            if (e.getKey() instanceof DObserved) {
                number++;
                message.addSubMessage(new DMessage(this, (DObserved) e.getKey(), DMessageType.warning, number + ")", e.getValue().toString()));
            }
        }
        addMessage(message);
    }

    protected void addMessage(DFeature feature, String id, TooManyObserversException tmse) {
        DMessage message = new DMessage(this, feature, DMessageType.warning, id, tmse.getSimpleMessage());
        int number = 0;
        for (Entry<Observer, Set<Mutable>> e : tmse.getObservers()) {
            if (e.getKey() instanceof DRule.DObserver) {
                number++;
                message.addSubMessage(new DMessage(this, ((DRule.DObserver) e.getKey()).rule(), DMessageType.warning, number + ")", e.getValue().toString()));
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
        LeafTransaction.getCurrent().runNonObserving(() -> MESSAGES.set(this, (m, s) -> m.put(message.type(), s), getMessages(message.type()).add(message)));
    }

    protected void removeMessages(DFeature feature, DMessageType type, String id) {
        LeafTransaction.getCurrent().runNonObserving(() -> MESSAGES.set(this, (m, s) -> m.put(type, s), getMessages(type).removeKey(Pair.of(feature, id))));
    }

    public static <O extends DObject> NonCheckingObserver<O> observer(Object id, Consumer<O> action) {
        return observer(id, action, Priority.postDepth);
    }

    public static <O extends DObject> NonCheckingObserver<O> observer(Object id, Consumer<O> action, Priority prio) {
        return NonCheckingObserver.of(id, o -> {
            if (o.isOwned()) {
                action.accept(o);
            }
        }, Direction.forward, prio);
    }

}
