//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2024 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import java.util.function.Supplier;

import org.modelingvalue.collections.Set;
import org.modelingvalue.dclare.*;

@SuppressWarnings("rawtypes")
public abstract class DNewable<T extends DNewable, R, S> extends DIdentifiedMutable implements Newable {

    private static final Constant<DNewable, Object> ORIGINAL           = Constant.of("$ORIGINAL", null);

    protected static final Action<DNewable>         READ_OBSERVED_DEEP = Action.of("$READ_OBSERVED_DEEP", DNewable::readObservedDeep);

    @SuppressWarnings("unchecked")
    protected static final Set<Observer>            OBSERVERS          = DMutable.OBSERVERS;

    protected static final Set<Setable>             SETABLES           = DMutable.SETABLES;

    protected static <D extends DNewable> D copyRootConstruct(IRuleSet ruleSet, String anonymousType, Object[] ctx, DNode copiedRoot, Supplier<D> supplier) {
        LeafTransaction tx = LeafTransaction.getCurrent();
        return tx.construct(new DCopy(tx.mutable(), copiedRoot, ruleSet, anonymousType, ctx), supplier);
    }

    protected static <D extends DNewable> D copyChildConstruct(DCopy root, DNode copiedChild, Supplier<D> supplier) {
        LeafTransaction tx = LeafTransaction.getCurrent();
        return tx.construct(new DCopy(copiedChild, root), supplier);
    }

    @SuppressWarnings("unchecked")
    protected static <D extends DNewable, I, S> D referenceConstruct(I ref, Supplier<D> supplier) {
        LeafTransaction tx = LeafTransaction.getCurrent();
        return tx.directConstruct(new DRead(ref), supplier);
    }

    @SuppressWarnings("unchecked")
    protected static <D extends DNewable, I, S> D originalConstruct(S original, I ref, Supplier<D> supplier) {
        D result = referenceConstruct(ref, supplier);
        ORIGINAL.force(result, original);
        return result;
    }

    protected DNewable(Object[] identity) {
        super(identity);
    }

    @SuppressWarnings("unchecked")
    protected final R reference() {
        DRead<R> rc = referenceReason();
        return rc != null ? rc.reference() : null;
    }

    @SuppressWarnings("unchecked")
    protected final DRead<R> referenceReason() {
        Construction cons = dInitialConstruction();
        return cons.reason() instanceof DRead ? (DRead) cons.reason() : null;
    }

    public Set<IAspect> getCopyAspects() {
        return deriveReasons().filter(DCopy.class).map(DDerive::aspect).asSet();
    }

    @Override
    protected boolean isRead() {
        return tryOriginal() != null && !dBecameOrphan();
    }

    @SuppressWarnings("unchecked")
    public final S tryOriginal() {
        S sObject = ORIGINAL.isSet(this) ? (S) ORIGINAL.get(this) : null;
        if (sObject == null) {
            R ref = reference();
            sObject = ref != null ? dClareMPS().read(() -> resolve(ref)) : null;
            if (sObject != null) {
                ORIGINAL.force(this, sObject);
            }
        }
        return sObject;
    }

    @SuppressWarnings("unchecked")
    protected final S original() {
        R ref = reference();
        S sObject = ref != null ? dClareMPS().read(() -> resolve(ref)) : null;
        if (sObject == null) {
            sObject = ORIGINAL.isSet(this) ? (S) ORIGINAL.get(this) : null;
            if (sObject == null) {
                sObject = create(ref);
            }
        }
        return sObject;
    }

    protected void init(S sObject) {
        originalConstruct(sObject, reference(sObject), () -> this);
        init(dClareMPS(), sObject);
    }

    @Override
    protected final void init(DClareMPS dClareMPS) {
        super.init(dClareMPS);
        S original = tryOriginal();
        if (original != null) {
            init(dClareMPS, original);
        }
    }

    @Override
    protected final void exit(DClareMPS dClareMPS) {
        super.exit(dClareMPS);
        S original = tryOriginal();
        if (original != null) {
            exit(dClareMPS, original);
        }
    }

    @Override
    protected final void read(DClareMPS dClareMPS) {
        if (isRead()) {
            read();
        }
    }

    @Override
    public final void dActivate() {
        Newable.super.dActivate();
        start(dClareMPS());
    }

    @Override
    public final void dDeactivate(LeafTransaction tx) {
        Newable.super.dDeactivate(tx);
        stop(dClareMPS());
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    protected void readObserved(Set<Observed> read, DObserved dObserved) {
        if (read.contains(dObserved)) {
            dObserved.triggerReRead(this);
            if (dObserved.containment()) {
                for (Object child : dObserved.collection(dObserved.fromMPS(this))) {
                    if (child instanceof DNewable) {
                        READ_OBSERVED_DEEP.trigger((DNewable) child);
                    }
                }
            }
        } else if (dObserved.containment()) {
            Set<Object> set = dObserved.collection(dObserved.fromMPS(this)).asSet();
            for (Object child : dObserved.getCollection(this)) {
                if (child instanceof DNewable && set.contains(child)) {
                    READ_OBSERVED_DEEP.trigger((DNewable) child);
                } else {
                    dObserved.remove(this, child);
                }
            }
        }
    }

    protected abstract void read();

    protected abstract void readObservedDeep();

    protected abstract void init(DClareMPS dClareMPS, S original);

    protected abstract void exit(DClareMPS dClareMPS, S original);

    protected abstract R reference(S read);

    protected abstract S resolve(R ref);

    protected abstract S create(R ref);

}
