//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2020 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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
import java.util.Objects;
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Mergeable;
import org.modelingvalue.collections.util.NotMergeableException;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.Leaf;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.NonCheckingObserved;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.ObserverTransaction;
import org.modelingvalue.dclare.ReadOnlyTransaction;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.mps.DAttribute.DIdentifyingAttribute;

@SuppressWarnings("rawtypes")
public abstract class DMatchedObject<T extends DMatchedObject, R, S> extends DIdentifiedObject implements Mergeable<DMatchedObject> {
    protected static final Constant<DReadConstruction, DMatchedObject>      READ_MAPPING          = Constant.of("$READ_MAPPING", null);
    @SuppressWarnings("unchecked")
    private static final Constant<Pair<Setable, Leaf>, Setable<Mutable, ?>> UNIDENTIFIED_CHILDREN = Constant.of("$UNIDENTIFIED_CHILDREN", UnidentifiedObserved::of);
    protected static final Set<Observer>                                    OBSERVERS             = DObject.OBSERVERS;
    protected static final Set<Setable>                                     SETABLES              = DObject.SETABLES;
    private static final Observed<DMatchedObject, Set<DConstruction>>       CONSTRUCTIONS         = NonCheckingObserved.of("$CONSTRUCTIONS", Set.of());
    protected static final Constant<Observer<?>, Constructed>               CONSTRUCTED           = Constant.of("CONSTRUCTED", Constructed::new);

    @SuppressWarnings("unchecked")
    protected static <P extends Mutable, C extends DMatchedObject<C, ?, ?>, R extends ContainingCollection<C>> R manyMatch(P parent, R pres, R posts, Setable<P, R> setable) {
        if (parent.dContaining() instanceof UnidentifiedObserved) {
            return pres;
        }
        LeafTransaction tx = LeafTransaction.getCurrent();
        if (tx instanceof ObserverTransaction && !pres.equals(posts)) {
            R result = posts;
            List<C> postList = posts.filter(p -> !p.isRead() && !pres.contains(p)).toList();
            Setable<Mutable, R> uisetable = (Setable<Mutable, R>) UNIDENTIFIED_CHILDREN.get(Pair.of(setable, tx.leaf()));
            R unidentified = (R) uisetable.getDefault().addAllUnique(postList.filter(DMatchedObject::unidentified));
            uisetable.set(parent, unidentified);
            if (!unidentified.isEmpty()) {
                return pres;
            }
            List<C> preList = pres.filter(p -> p.isRead() && !posts.contains(p)).toList();
            if (pres instanceof Set) {
                preList = preList.sortedBy(DMatchedObject::number).toList();
                postList = postList.sortedBy(o -> o.readContext().number()).toList();
            }
            for (int i = 0; i < preList.size() && postList.size() > 0; i++) {
                C pre = preList.get(i);
                for (int ii = 0; ii < postList.size(); ii++) {
                    C post = postList.get(ii);
                    if (pre.equalMatchType(post) && pre.matches(post) && !pre.sharesConstructionType(post)) {
                        preList = preList.remove(i--);
                        postList = postList.remove(ii);
                        pre.combine(tx, post);
                        result = (R) result.replace(post, pre);
                        break;
                    }
                }
            }
            return result;
        } else {
            return posts;
        }
    }

    @SuppressWarnings("unchecked")
    protected static <P extends Mutable, C extends DMatchedObject<C, ?, ?>> C singleMatch(P parent, C pre, C post, Setable<P, C> setable) {
        if (parent.dContaining() instanceof UnidentifiedObserved) {
            return pre;
        }
        LeafTransaction tx = LeafTransaction.getCurrent();
        if (tx instanceof ObserverTransaction && !Objects.equals(pre, post)) {
            if (pre != null && post != null && pre.isRead() && !post.isRead()) {
                Setable<Mutable, C> uisetable = (Setable<Mutable, C>) UNIDENTIFIED_CHILDREN.get(Pair.of(setable, tx.leaf()));
                C unidentified = post.unidentified() ? post : null;
                uisetable.set(parent, unidentified);
                if (unidentified != null) {
                    return pre;
                }
                if (pre.equalMatchType(post) && pre.matches(post) && !pre.sharesConstructionType(post)) {
                    pre.combine(tx, post);
                    return pre;
                }
            }
        }
        return post;
    }

    @SuppressWarnings("unchecked")
    protected boolean sharesConstructionType(DMatchedObject post) {
        Set<String> postCts = post.constructionTypes();
        return constructionTypes().anyMatch(postCts::contains);
    }

    @SuppressWarnings("unchecked")
    protected DMatchedObject readContext() {
        return context().filter(DMatchedObject::isRead).findAny().get();
    }

    protected boolean unidentified() {
        return matchKey() == null && !unidentifiedContext();
    }

    protected boolean unidentifiedContext() {
        return context().anyMatch(c -> c.isRead() && c.matchKey() == null);
    }

    protected boolean equalMatchType(DMatchedObject<?, ?, ?> other) {
        return matchType().equals(other.matchType());
    }

    protected Set<String> constructionTypes() {
        return constructions().filter(DDeriveConstruction.class).map(DDeriveConstruction::getAnonymousType).toSet();
    }

    protected void combine(LeafTransaction tx, DMatchedObject<?, ?, ?> other) {
        for (DDeriveConstruction cons : other.constructions().filter(DDeriveConstruction.class)) {
            if (tx.mutable().equals(cons.object()) && tx.leaf().equals(cons.observer())) {
                ((DConstructingTransaction) tx).constructed().set((m, v) -> m.put(cons, v), this);
            }
            CONSTRUCTED.get(cons.observer()).set(cons.object(), (map, e) -> map.put(cons, e), this);
        }

    }

    @SuppressWarnings("unchecked")
    protected boolean matches(DMatchedObject<?, ?, ?> other) {
        if (other.context().contains(this)) {
            return true;
        } else {
            Object a = matchKey();
            if (a == null) {
                return other.unidentifiedContext();
            } else {
                return a.equals(other.matchKey());
            }
        }
    }

    protected boolean isRead() {
        return constructions().anyMatch(DReadConstruction.class::isInstance);
    }

    protected abstract Object matchType();

    protected abstract Object matchKey();

    protected Set<DMatchedObject> context() {
        return context(Set.of());
    }

    @SuppressWarnings("unchecked")
    private Set<DMatchedObject> context(Set<DMatchedObject> result) {
        for (DDeriveConstruction cons : constructions().filter(DDeriveConstruction.class)) {
            for (DMatchedObject obj : cons.context()) {
                if (!result.contains(obj)) {
                    result = obj.context(result.add(obj));
                }
            }
        }
        return result;
    }

    private Set<DConstruction> constructions() {
        return CONSTRUCTIONS.current(this);
    }

    protected static <D extends DMatchedObject> D quotationConstruct(SLanguage anonymousLanguage, String anonymousType, Object[] ctx, Supplier<D> supplier) {
        DConstructingTransaction tx = (DConstructingTransaction) LeafTransaction.getCurrent();
        return derive(tx, new DQuotationConstruction(anonymousLanguage, anonymousType, tx.observer(), ctx), supplier);
    }

    protected static <D extends DMatchedObject> D copyRootConstruct(String anonymousType, DObject object, DNode copied, Supplier<D> supplier) {
        DConstructingTransaction tx = (DConstructingTransaction) LeafTransaction.getCurrent();
        return derive(tx, new DCopyConstruction(object, tx.observer(), copied, anonymousType), supplier);
    }

    protected static <D extends DMatchedObject> D copyChildConstruct(DConstruction root, DNode copied, Supplier<D> supplier) {
        DConstructingTransaction tx = (DConstructingTransaction) LeafTransaction.getCurrent();
        return derive(tx, new DCopyConstruction(tx.object(), tx.observer(), copied, root), supplier);
    }

    @SuppressWarnings("unchecked")
    private static <D extends DMatchedObject> D derive(DConstructingTransaction tx, DDeriveConstruction id, Supplier<D> supplier) {
        Constructed cons = CONSTRUCTED.get(id.observer());
        D d = (D) cons.get(id.object()).get(id);
        if (d == null && !(id.object().dContaining() instanceof UnidentifiedObserved)) {
            d = supplier.get();
        }
        if (d != null) {
            tx.constructed().set((m, v) -> m.put(id, v), d);
            cons.set(id.object(), (map, e) -> map.put(id, e), d);
        }
        return d;
    }

    @SuppressWarnings("unchecked")
    protected static <D extends DMatchedObject, I> D readConstruct(I ref, Supplier<D> supplier) {
        DReadConstruction<I> id = new DReadConstruction(ref);
        D d = (D) READ_MAPPING.get(id, i -> supplier.get());
        LeafTransaction tx = LeafTransaction.getCurrent();
        if (!(tx instanceof ReadOnlyTransaction)) {
            DMatchedObject.CONSTRUCTIONS.set(d, Set::add, id);
        }
        return d;
    }

    @SuppressWarnings("unchecked")
    protected static <D extends DMatchedObject> D getDerived(DDeriveConstruction id) {
        return (D) CONSTRUCTED.get(id.observer()).get(id.object()).get(id);
    }

    protected DMatchedObject(Object[] identity) {
        super(identity);
    }

    protected abstract Comparable number();

    @Override
    protected <V> V get(DIdentifyingAttribute<?, V> attr) {
        for (DQuotationConstruction c : constructions().filter(DQuotationConstruction.class)) {
            //noinspection StringEquality
            if (c.getAnonymousType() == attr.anonymousType()) {
                return c.get(attr);
            }
        }
        throw new Error("Identifying attribute " + attr + " in " + this + " not found");
    }

    @Override
    protected final void read(DClareMPS dClareMPS) {
        if (reference() != null) {
            read();
        }
    }

    @SuppressWarnings("unused")
    protected boolean hasReference() {
        return reference() != null;
    }

    @SuppressWarnings("unchecked")
    protected final R reference() {
        return (R) constructions().filter(DReadConstruction.class).map(DReadConstruction::reference).findFirst().orElse(null);
    }

    public final S tryOriginal() {
        R ref = reference();
        return ref != null ? dClareMPS().read(() -> resolve(ref)) : null;
    }

    @SuppressWarnings("unchecked")
    protected final S original() {
        S sObject = tryOriginal();
        if (sObject == null) {
            sObject = create();
            addSObject(sObject);
            DReadConstruction id = new DReadConstruction(reference(sObject));
            READ_MAPPING.set(id, this);
            DMatchedObject.CONSTRUCTIONS.set(this, Set::add, id);
        }
        return sObject;
    }

    @Override
    protected void init(DClareMPS dClareMPS) {
        super.init(dClareMPS);
        S original = tryOriginal();
        if (original != null) {
            init(dClareMPS, original);
        }
    }

    @Override
    protected void exit(DClareMPS dClareMPS) {
        super.exit(dClareMPS);
        S original = tryOriginal();
        if (original != null) {
            exit(dClareMPS, original);
        }
    }

    protected void init(DClareMPS dClareMPS, S original) {
    }

    protected void exit(DClareMPS dClareMPS, S original) {
    }

    protected abstract void read();

    protected abstract void addSObject(S sObject);

    protected abstract R reference(S read);

    protected abstract S resolve(R ref);

    protected abstract S create();

    public Set<String> getAnonymousTypes() {
        return constructions().filter(DQuotationConstruction.class).map(DQuotationConstruction::getAnonymousType).notNull().toSet();
    }

    public boolean isCopy() {
        return constructions().anyMatch(c -> c instanceof DCopyConstruction);
    }

    public Set<SLanguage> getAnonymousLanguages() {
        return constructions().filter(DQuotationConstruction.class).map(DQuotationConstruction::getAnonymousLanguage).notNull().toSet();
    }

    protected Collection<DCopyConstruction> getCopyConstructions() {
        return constructions().filter(DCopyConstruction.class);
    }

    protected static final class UnidentifiedObserved<T> extends Setable<Mutable, T> {

        public static <V> UnidentifiedObserved of(Pair<Setable, Leaf> id) {
            return new UnidentifiedObserved<V>(id);
        }

        @SuppressWarnings("unchecked")
        private UnidentifiedObserved(Pair<Setable, Leaf> id) {
            super(id, (T) id.a().getDefault(), true, null, null, null, false);
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
            } else if (!CONSTRUCTIONS.get(branches[i]).isEmpty()) {
                result = branches[i];
            }
        }
        return result;
    }

    public static class Constructed extends NonCheckingObserved<DObject, Map<DDeriveConstruction, DMatchedObject>> {

        protected Constructed(Observer<?> observer) {
            super(observer, false, Map.of(), false, null, null, (tx, o, pre, post) -> pre.diff(post).forEachOrdered(e -> {
                Pair<DMatchedObject, DMatchedObject> d = e.getValue();
                if (d.a() != null) {
                    CONSTRUCTIONS.set(d.a(), Set::remove, e.getKey());
                }
                if (d.b() != null) {
                    CONSTRUCTIONS.set(d.b(), Set::add, e.getKey());
                }
            }));
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

        @Override
        protected Integer number() {
            throw new UnsupportedOperationException();
        }
    };

}
