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

import java.util.function.Function;
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.Set;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.NonCheckingObserved;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.ReadOnlyTransaction;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.mps.DAttribute.DIdentifyingAttribute;
import org.modelingvalue.dclare.mps.DRule.DObserverTransaction;

@SuppressWarnings("rawtypes")
public abstract class DMatchedObject<T, R, S> extends DIdentifiedObject {

    private static final Observed<Object, DMatchedObject>               D_READ_MATCHED = Observed.of("$D_READ_MATCHED", null);

    private static final Observed<DMatchedObject, Object>               MATCHED_REF    = NonCheckingObserved.of("$MATCHED_REF", null, () -> D_READ_MATCHED);

    private static final Setable<DMatchedObject, Object>                DETACHED       = Setable.of("$DETACHED", null);

    protected static final Set<Observer>                                OBSERVERS      = DObject.OBSERVERS.addAll(Set.of());

    protected static final Set<Setable>                                 SETABLES       = DObject.SETABLES.addAll(Set.of(MATCHED_REF, DETACHED));

    protected static final Observed<DMatchedObject, Set<DConstruction>> CONSTRUCTIONS  = NonCheckingObserved.of("$CONSTRUCTIONS", Set.of(), (tx, o, pre, post) -> {
                                                                                           Setable.<Set<DConstruction>, DConstruction> diff(pre, post,                        //
                                                                                                   a -> a.observer().constructed.set(a.object(), (m, e) -> m.put(a, e), o),   //
                                                                                                   r -> {
                                                                                                   });
                                                                                       });

    @SuppressWarnings("unchecked")
    protected static <P extends DObject, T extends ContainingCollection<C>, I, M, C extends DMatchedObject<C, I, M>> T matchChildren(LeafTransaction tx, P parent, T pres, T posts) {
        if (tx instanceof ReadOnlyTransaction && tx instanceof DObserverTransaction) {
            ContainingCollection<C> matchables = posts;
            for (C rem : pres.removeAll(posts)) {
                if (rem.canBeMatched() && rem.isRead()) {
                    boolean ready = true;
                    boolean matched = false;
                    for (C matchable : matchables) {
                        if (matchable != rem) {
                            if (matchable.canBeMatched()) {
                                if (matchable.matches(rem)) {
                                    Set<DConstruction> constuctions = tx.getNonObserving(() -> CONSTRUCTIONS.set(matchable, CONSTRUCTIONS.getDefault()));
                                    if (!constuctions.isEmpty()) {
                                        matched = true;
                                        matchables = matchables.remove(matchable);
                                        tx.runNonObserving(() -> CONSTRUCTIONS.set(rem, Set::addAll, constuctions));
                                        if (posts instanceof List) {
                                            int i = ((List<C>) posts).firstIndexOf(matchable);
                                            posts = (T) ((List<C>) posts).remove(i);
                                            posts = (T) ((List<C>) posts).insert(i, rem);
                                        } else {
                                            posts = (T) posts.remove(matchable);
                                            posts = (T) posts.add(rem);
                                        }
                                        break;
                                    }
                                }
                            } else {
                                ready = false;
                            }
                        }
                    }
                    if (!matched && !ready) {
                        if (posts instanceof List) {
                            int i = ((List<C>) pres).firstIndexOf(rem);
                            posts = (T) ((List<C>) posts).insert(i, rem);
                        } else {
                            posts = (T) posts.add(rem);
                        }
                    }
                } else if (posts instanceof List) {
                    int i = ((List<C>) pres).firstIndexOf(rem);
                    posts = (T) ((List<C>) posts).insert(i, rem);
                } else {
                    posts = (T) posts.add(rem);
                }
            }
        }
        return posts;
    }

    protected static <P extends DObject, I, M, C extends DMatchedObject<C, I, M>> void matchRead(P parent, Function<P, ? extends ContainingCollection<M>> readFunction, ContainingCollection<C> coll) {
        if (parent.isRead() || parent.isMatched()) {
            ContainingCollection<M> readSet = null;
            DClareMPS dClare = null;
            Set<I> refs = null;
            for (C obj : coll.filter(p -> p.reference(false) == null)) {
                if (readSet == null) {
                    dClare = dClareMPS();
                    readSet = readFunction.apply(parent);
                    refs = coll.map(p -> p.reference(false)).notNull().toSet();
                }
                for (M read : readSet) {
                    I ref = obj.reference(read);
                    if (!refs.contains(ref) && obj.matchesRead(dClare, read)) {
                        MATCHED_REF.set(obj, ref);
                        obj.read();
                        obj.init(dClare, read);
                        readSet = readSet.remove(read);
                        break;
                    }
                }
            }
        }
    }

    @SuppressWarnings("unchecked")
    protected static final <I, M extends DMatchedObject<M, I, ?>> M getMatchedObject(I ref) {
        return (M) D_READ_MATCHED.get(ref);
    }

    @SuppressWarnings("unchecked")
    protected static <D extends DMatchedObject, A> D construct(SLanguage anonymousLanguage, String anonymousType, Object[] ctx, Supplier<D> supplier) {
        DConstruction id = DConstruction.of(anonymousLanguage, anonymousType, ctx);
        D d = (D) id.observer().constructed.get(id.object()).get(id);
        if (d == null) {
            d = supplier.get();
        }
        DRule.DCONSTRUCTED.set(Map::put, id, d);
        return d;
    }

    protected DMatchedObject(Object[] identity) {
        super(identity);
    }

    @Override
    protected <V> V get(DIdentifyingAttribute<?, V> attr) {
        for (DConstruction c : CONSTRUCTIONS.get(this)) {
            if (c.getAnonymousType() == attr.anonymousType()) {
                return c.get(attr);
            }
        }
        throw new Error("Identifying attribute " + attr + " in " + this + " not found");
    }

    @Override
    protected final void read(DClareMPS dClareMPS) {
        if (isRead() || isMatched()) {
            read();
        }
    }

    protected final void setDetached(S sObject) {
        DETACHED.set(this, sObject);
    }

    @Override
    protected final boolean isMatched() {
        return MATCHED_REF.get(this) != null;
    }

    @SuppressWarnings("unchecked")
    protected final R reference(boolean create) {
        if (isRead()) {
            return (R) identity[0];
        } else {
            R ref = (R) MATCHED_REF.get(this);
            if (create && ref == null) {
                S sObject = create();
                addSObject(sObject);
                ref = reference(sObject);
                MATCHED_REF.set(this, ref);
            }
            return ref;
        }
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

    protected abstract boolean canBeMatched();

    protected abstract boolean matchesRead(DClareMPS dClare, S read);

    protected abstract void read();

    protected abstract void addSObject(S sObject);

    protected abstract R reference(S read);

    protected abstract S resolve(R ref);

    protected abstract S create();

    public Set<String> getAnonymousTypes() {
        return CONSTRUCTIONS.get(this).map(DConstruction::getAnonymousType).toSet();
    }

    public Set<SLanguage> getAnonymousLanguages() {
        return CONSTRUCTIONS.get(this).map(DConstruction::getAnonymousLanguage).toSet();
    }

    @SuppressWarnings("unchecked")
    public static <E> ContainingCollection<E> collection(Object value) {
        if (value instanceof ContainingCollection) {
            return ((ContainingCollection<E>) value);
        } else if (value != null) {
            return Set.of((E) value);
        } else {
            return Set.of();
        }
    }

}
