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
import org.modelingvalue.dclare.mps.DAttribute.DIdentifyingAttribute;

@SuppressWarnings("rawtypes")
public abstract class DMatchedObject<T extends DMatchedObject, R, S> extends DIdentifiedObject implements Mergeable<DMatchedObject> {

    protected static final Observed<DReadConstruction, DMatchedObject>            READ_MAPPING          = Observed.of("$READ_MAPPING", null, (tx, c, b, a) -> {
                                                                                                            if (b != null) {
                                                                                                                DMatchedObject.CONSTRUCTIONS.set(b, Set::remove, c);
                                                                                                            }
                                                                                                            if (a != null) {
                                                                                                                DMatchedObject.CONSTRUCTIONS.set(a, Set::add, c);
                                                                                                            }
                                                                                                        });

    private static final Constant<Setable, Setable<Mutable, Set<DMatchedObject>>> UNIDENTIFIED_CHILDREN = Constant.of("$UNIDENTIFIED_CHILDREN", UnidentifiedObserved::of);

    private static final Setable<DMatchedObject, Object>                          DETACHED              = Setable.of("$DETACHED", null);

    protected static final Set<Observer>                                          OBSERVERS             = DObject.OBSERVERS;

    protected static final Set<Setable>                                           SETABLES              = DObject.SETABLES.add(DETACHED);

    protected static final Observed<DMatchedObject, Set<DMatchedObject>>          DERIVED               = NonCheckingObserved.of("$DERIVED", Set.of());

    protected static final Observed<DMatchedObject, Set<DConstruction>>           CONSTRUCTIONS         = NonCheckingObserved.of("$CONSTRUCTIONS", Set.of());

    protected static final Constant<Observer<?>, Constructed>                     CONSTRUCTED           = Constant.of("CONSTRUCTED", o -> new Constructed(o));

    @SuppressWarnings("unchecked")
    protected static <P extends DObject, C extends DMatchedObject<C, ?, ?>, R extends ContainingCollection<C>> R manyMatch(P parent, R pres, R posts, Setable<P, R> setable) {
        if (parent.dContaining() instanceof UnidentifiedObserved) {
            return pres;
        }
        Set<C> rem = pres.filter(r -> !posts.contains(r) && r.isRead()).toSet();
        if (!rem.isEmpty()) {
            Set<C> add = posts.filter(a -> !pres.contains(a) && rem.anyMatch(r -> r.equalType(a)) && !a.isRead()).toSet();
            if (!add.isEmpty()) {
                R result = pres;
                for (C post : add) {
                    for (C pre : rem) {
                        if (pre.equalType(post) && pre.matches(post)) {
                            pre.combine(post);
                            add = add.remove(post);
                            UNIDENTIFIED_CHILDREN.get(setable).set(parent, Set::remove, post);
                            break;
                        }
                    }
                    if (add.contains(post) && post.hasMatchKey()) {
                        add = add.remove(post);
                        UNIDENTIFIED_CHILDREN.get(setable).set(parent, Set::remove, post);
                        result = (R) result.add(post);
                    }
                }
                UNIDENTIFIED_CHILDREN.get(setable).set(parent, Set::addAll, add);
                return result;
            } else if (pres.anyMatch(r -> r.derived(Set.of()).anyMatch(e -> !pres.contains(e) && !e.isRead()))) {
                return pres;
            }
        } else {
            UNIDENTIFIED_CHILDREN.get(setable).set(parent, Set.of());
        }
        return posts;
    }

    protected static <P extends DObject, C extends DMatchedObject<C, ?, ?>> C singleMatch(P parent, C pre, C post, Setable<P, C> setable) {
        if (parent.dContaining() instanceof UnidentifiedObserved) {
            return pre;
        }
        if (pre != null && !pre.equals(post) && pre.isRead()) {
            if (post != null && pre.equalType(post) && !post.isRead()) {
                if (pre.matches(post)) {
                    pre.combine(post);
                    UNIDENTIFIED_CHILDREN.get(setable).set(parent, Set::remove, post);
                    return pre;
                } else if (post.hasMatchKey()) {
                    UNIDENTIFIED_CHILDREN.get(setable).set(parent, Set::remove, post);
                    return post;
                } else {
                    UNIDENTIFIED_CHILDREN.get(setable).set(parent, Set::add, post);
                    return pre;
                }
            } else if (pre.derived(Set.of()).anyMatch(e -> !e.equals(pre) && !e.isRead())) {
                return pre;
            }
        } else {
            UNIDENTIFIED_CHILDREN.get(setable).set(parent, Set.of());
        }
        return post;
    }

    protected boolean equalType(T other) {
        return matchType().equals(other.matchType());
    }

    protected void combine(T other) {
        for (DDeriveConstruction cons : CONSTRUCTIONS.get(other).filter(DDeriveConstruction.class)) {
            CONSTRUCTED.get(cons.observer()).set(cons.object(), (map, e) -> map.put(cons, e), this);
        }
    }

    @SuppressWarnings("unchecked")
    protected boolean matches(T other) {
        if (other.context(Set.of()).contains(this)) {
            return true;
        } else {
            Object a = matchKey();
            Object b = other.matchKey();
            return a != null && b != null && a.equals(b);
        }
    }

    protected boolean isRead() {
        return CONSTRUCTIONS.get(this).filter(DReadConstruction.class).findAny().isPresent();
    }

    protected boolean hasMatchKey() {
        return matchKey() != null;
    }

    protected abstract Object matchType();

    protected abstract Object matchKey();

    @SuppressWarnings("unchecked")
    protected Set<DMatchedObject> context(Set<DMatchedObject> found) {
        if (!found.contains(this)) {
            found = found.add(this);
            for (DDeriveConstruction cons : CONSTRUCTIONS.get(this).filter(DDeriveConstruction.class)) {
                for (DMatchedObject obj : cons.context()) {
                    found = obj.context(found);
                }
            }
        }
        return found;
    }

    @SuppressWarnings("unchecked")
    protected Set<DMatchedObject> derived(Set<DMatchedObject> found) {
        if (!found.contains(this)) {
            found = found.add(this);
            for (DMatchedObject obj : DERIVED.get(this)) {
                found = obj.derived(found);
            }
        }
        return found;
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
        if (d == null && !(id.object().dContaining() instanceof UnidentifiedObserved)) {
            d = supplier.get();
        }
        if (d != null) {
            tx.constructed().set((m, v) -> m.put(id, v), d);
        }
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

    protected boolean isExisting() {
        return !CONSTRUCTIONS.get(this).isEmpty();
    }

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

    protected static final class UnidentifiedObserved extends NonCheckingObserved<Mutable, Set<DMatchedObject>> {

        public static <M, V> UnidentifiedObserved of(Setable setable) {
            return new UnidentifiedObserved(setable);
        }

        private UnidentifiedObserved(Setable setable) {
            super(Pair.of("UNIDENTIFIED", setable), false, Set.of(), true, null, null, null);
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
                        for (DMatchedObject c : e.getKey().context()) {
                            DERIVED.set(c, Set::remove, d.a());
                        }
                    }
                    if (d.b() != null) {
                        CONSTRUCTIONS.set(d.b(), Set::add, e.getKey());
                        for (DMatchedObject c : e.getKey().context()) {
                            DERIVED.set(c, Set::add, d.b());
                        }
                    }
                });
            });
        }

    }

    private static final DMatchedObject MERGER = new DMatchedObject(new Object[]{}) {

        @Override
        protected Object matchType() {
            throw new UnsupportedOperationException();
        }

        @Override
        protected Object matchKey() {
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
