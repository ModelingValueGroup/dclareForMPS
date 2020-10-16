//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2019 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import java.util.Arrays;
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.Entry;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Mergeable;
import org.modelingvalue.collections.util.NotMergeableException;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.NonCheckingObserved;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.State;
import org.modelingvalue.dclare.mps.DAttribute.DIdentifyingAttribute;

@SuppressWarnings("rawtypes")
public abstract class DMatchedObject<T, R, S> extends DIdentifiedObject implements Mergeable<DMatchedObject> {

    protected static final Observed<DReadConstruction, DMatchedObject>            READ_MAPPING  = Observed.of("$READ_MAPPING", null, (tx, c, b, a) -> {
                                                                                                    if (b != null) {
                                                                                                        DMatchedObject.CONSTRUCTIONS.set(b, Set::remove, c);
                                                                                                    }
                                                                                                    if (a != null) {
                                                                                                        DMatchedObject.CONSTRUCTIONS.set(a, Set::add, c);
                                                                                                    }
                                                                                                });

    private static final Constant<Setable, Setable<Mutable, Set<DMatchedObject>>> REMOVED       = Constant.of("$REMOVED", s -> TemporalObserved.of(Pair.of(s, "$REMOVED"), Set.of()));

    private static final Setable<DMatchedObject, Object>                          DETACHED      = Setable.of("$DETACHED", null);

    protected static final Observer<DMatchedObject>                               MATCHER       = DObject.observer("$MATCHER", DMatchedObject::replaceMatching);

    protected static final Set<Observer>                                          OBSERVERS     = DObject.OBSERVERS.add(MATCHER);

    protected static final Set<Setable>                                           SETABLES      = DObject.SETABLES.add(DETACHED);

    protected static final Observed<DMatchedObject, Set<DConstruction>>           CONSTRUCTIONS = NonCheckingObserved.of("$CONSTRUCTIONS", Set.of());

    protected static <P extends DObject, C extends DMatchedObject<C, ?, ?>, R extends ContainingCollection<C>> void keepManyRemoved(P parent, R pre, R post, Setable<P, R> setable) {
        Setable<Mutable, Set<DMatchedObject>> removed = REMOVED.get(setable);
        Setable.<ContainingCollection<C>, C> diff(pre, post, a -> {
            removed.set(parent, Set::remove, a);
        }, r -> {
            removed.set(parent, Set::add, r);
        });
    }

    protected static <P extends DObject, C extends DMatchedObject<C, ?, ?>> void keepSingleRemoved(P parent, C pre, C post, Setable<P, C> setable) {
        Setable<Mutable, Set<DMatchedObject>> removed = REMOVED.get(setable);
        if (pre != null) {
            removed.set(parent, Set::add, pre);
        }
        if (post != null) {
            removed.set(parent, Set::remove, post);
        }
    }

    protected static final Constant<Observer<?>, Constructed> CONSTRUCTED = Constant.of("CONSTRUCTED", o -> new Constructed(o));

    @SuppressWarnings("unchecked")
    protected void replaceMatching() {
        Pair<Mutable, Setable<Mutable, ?>> pc = D_PARENT_CONTAINING.get(this);
        Setable<Mutable, Set<DMatchedObject>> removed = REMOVED.get(pc.b());
        boolean hasReference = hasReference();
        outer:
        for (DMatchedObject rem : removed.get(pc.a())) {
            if (matches((T) rem)) {
                for (DConstruction cons : CONSTRUCTIONS.get(rem)) {
                    if (cons instanceof DReadConstruction) {
                        if (hasReference) {
                            continue outer;
                        }
                        rem.stop(dClareMPS());
                        READ_MAPPING.set((DReadConstruction) cons, this);
                        START_ACTION.trigger(this);
                    } else {
                        DDeriveConstruction der = (DDeriveConstruction) cons;
                        CONSTRUCTED.get(der.observer()).set(der.object(), (map, e) -> map.put(der, e), this);
                    }
                }
                LeafTransaction.getCurrent().properties(rem, (k, v) -> {
                    if (k instanceof Constructed) {
                        Map<DDeriveConstruction, DMatchedObject> map = (Map<DDeriveConstruction, DMatchedObject>) v;
                        ((Constructed) k).set(this, map.toMap(e -> Entry.of(e.getKey().moveTo(this), e.getValue())));
                    }
                });
                removed.set(pc.a(), Set::remove, rem);
                break;
            }
        }
    }

    private boolean isExisting() {
        return !CONSTRUCTIONS.get(this).isEmpty();
    }

    protected static <D extends DMatchedObject, A> D quotationConstruct(SLanguage anonymousLanguage, String anonymousType, Object[] ctx, Supplier<D> supplier) {
        DConstructingTransaction tx = (DConstructingTransaction) LeafTransaction.getCurrent();
        return derive(tx, new DQuotationConstruction(anonymousLanguage, anonymousType, tx.observer(), ctx), supplier);
    }

    protected static <D extends DMatchedObject, A> D copyRootConstruct(String anonymousType, DObject object, DNode copied, Supplier<D> supplier) {
        DConstructingTransaction tx = (DConstructingTransaction) LeafTransaction.getCurrent();
        return derive(tx, new DCopyConstruction(object, tx.observer(), copied, anonymousType), supplier);
    }

    protected static <D extends DMatchedObject, A> D copyChildConstruct(DConstruction root, DNode copied, Supplier<D> supplier) {
        DConstructingTransaction tx = (DConstructingTransaction) LeafTransaction.getCurrent();
        return derive(tx, new DCopyConstruction((DObject) tx.object(), tx.observer(), copied, root), supplier);
    }

    @SuppressWarnings("unchecked")
    private static <D extends DMatchedObject> D derive(DConstructingTransaction tx, DDeriveConstruction id, Supplier<D> supplier) {
        D d = (D) CONSTRUCTED.get(id.observer()).get(id.object()).get(id);
        if (d == null) {
            d = supplier.get();
        }
        tx.constructed().set((m, v) -> m.put(id, v), d);
        return d;
    }

    @SuppressWarnings("unchecked")
    protected static <D extends DMatchedObject, I> D readConstruct(I ref, Supplier<D> supplier) {
        DReadConstruction<I> id = new DReadConstruction(ref);
        D d = (D) READ_MAPPING.get(id);
        if (d == null) {
            d = supplier.get();
        }
        READ_MAPPING.set(id, d);
        return d;
    }

    @SuppressWarnings("unchecked")
    protected static <D extends DMatchedObject> D getDerived(DDeriveConstruction id) {
        return (D) CONSTRUCTED.get(id.observer()).get(id.object()).get(id);
    }

    @SuppressWarnings("unchecked")
    protected static <D extends DMatchedObject, I> D tryResolve(I ref) {
        return (D) READ_MAPPING.get(new DReadConstruction(ref));
    }

    protected DMatchedObject(Object[] identity) {
        super(identity);
    }

    @Override
    protected <V> V get(DIdentifyingAttribute<?, V> attr) {
        for (DQuotationConstruction c : CONSTRUCTIONS.get(this).filter(DQuotationConstruction.class)) {
            if (c.getAnonymousType() == attr.anonymousType()) {
                return c.get(attr);
            }
        }
        throw new Error("Identifying attribute " + attr + " in " + this + " not found");
    }

    @Override
    protected final void read(DClareMPS dClareMPS) {
        if (reference(false) != null) {
            read();
        }
    }

    protected final void setDetached(S sObject) {
        DETACHED.set(this, sObject);
    }

    protected boolean hasReference() {
        return reference(false) != null;
    }

    @SuppressWarnings("unchecked")
    protected final R reference(boolean create) {
        R ref = (R) CONSTRUCTIONS.get(this).filter(DReadConstruction.class).map(DReadConstruction::reference).findFirst().orElse(null);
        if (create && ref == null) {
            S sObject = create();
            addSObject(sObject);
            ref = reference(sObject);
            READ_MAPPING.set(new DReadConstruction(ref), this);
        }
        return ref;
    }

    public final S original() {
        return original(false);
    }

    @SuppressWarnings("unchecked")
    protected final S original(boolean create) {
        S sObject = null;
        R ref = reference(create);
        if (ref != null) {
            sObject = dClareMPS().read(() -> resolve(ref));
            if (create && sObject == null) {
                sObject = (S) DETACHED.get(this);
                if (sObject != null) {
                    addSObject(sObject);
                    DETACHED.set(this, null);
                }
            }
        }
        return sObject;
    }

    @Override
    protected void init(DClareMPS dClareMPS) {
        super.init(dClareMPS);
        S original = original();
        if (original != null) {
            init(dClareMPS, original);
        }
    }

    @Override
    protected void exit(DClareMPS dClareMPS) {
        super.exit(dClareMPS);
        S original = original();
        if (original != null) {
            exit(dClareMPS, original);
        }
    }

    protected void init(DClareMPS dClareMPS, S original) {
    }

    protected void exit(DClareMPS dClareMPS, S original) {
    }

    protected abstract boolean matches(T other);

    protected abstract void read();

    protected abstract void addSObject(S sObject);

    protected abstract R reference(S read);

    protected abstract S resolve(R ref);

    protected abstract S create();

    public Set<String> getAnonymousTypes() {
        return CONSTRUCTIONS.get(this).filter(DQuotationConstruction.class).map(DQuotationConstruction::getAnonymousType).notNull().toSet();
    }

    public boolean isCopy() {
        return CONSTRUCTIONS.get(this).anyMatch(c -> c instanceof DCopyConstruction);
    }

    public Set<SLanguage> getAnonymousLanguages() {
        return CONSTRUCTIONS.get(this).filter(DQuotationConstruction.class).map(DQuotationConstruction::getAnonymousLanguage).notNull().toSet();
    }

    protected static final class TemporalObserved<O, T> extends NonCheckingObserved<O, T> {

        public static <M, V> TemporalObserved<M, V> of(Object id, V def) {
            return new TemporalObserved<M, V>(id, def);
        }

        private TemporalObserved(Object id, T def) {
            super(id, false, def, false, null, null, null);
        }

        @Override
        public boolean checkConsistency() {
            return true;
        }

        @Override
        public void checkConsistency(State state, O object, T post) {
            set(object, getDefault());
        }

    }

    @Override
    public DMatchedObject getMerger() {
        return MERGER;
    }

    @SuppressWarnings("unchecked")
    @Override
    public DMatchedObject merge(DMatchedObject[] branches, int length) {
        DMatchedObject result = branches[0];
        if (result == null) {
            throw new NotMergeableException(this + " -> " + Arrays.toString(branches));
        }
        for (int i = 1; i < length; i++) {
            if (branches[i] == null || !branches[i].matches(result)) {
                throw new NotMergeableException(this + " -> " + Arrays.toString(branches));
            } else if (branches[i].isExisting()) {
                result = branches[i];
            }
        }
        return result;
    }

    public static class Constructed extends NonCheckingObserved<DObject, Map<DDeriveConstruction, DMatchedObject>> {

        protected Constructed(Observer<?> observer) {
            super(observer, false, Map.of(), false, null, null, (tx, o, pre, post) -> {
                pre.diff(post).forEachOrdered(e -> {
                    Pair<DMatchedObject, DMatchedObject> d = e.getValue();
                    if (d.a() != null) {
                        CONSTRUCTIONS.set(d.a(), Set::remove, e.getKey());
                    }
                    if (d.b() != null) {
                        CONSTRUCTIONS.set(d.b(), Set::add, e.getKey());
                    }
                });
            });
        }

    }

    private static final DMatchedObject MERGER = new DMatchedObject(new Object[]{}) {

        @Override
        protected boolean matches(Object other) {
            throw new UnsupportedOperationException();
        }

        @Override
        protected void read() {
            throw new UnsupportedOperationException();
        }

        @Override
        protected void addSObject(Object sObject) {
            throw new UnsupportedOperationException();
        }

        @Override
        protected Object reference(Object read) {
            throw new UnsupportedOperationException();
        }

        @Override
        protected Object resolve(Object ref) {
            throw new UnsupportedOperationException();
        }

        @Override
        protected Object create() {
            throw new UnsupportedOperationException();
        }

        @Override
        protected DObjectType<?> getType() {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean isExternal() {
            throw new UnsupportedOperationException();
        }

        @Override
        public String toString() {
            return "MERGER";
        }
    };

}
