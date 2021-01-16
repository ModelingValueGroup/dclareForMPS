//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2021 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import java.util.concurrent.atomic.AtomicLong;
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.dclare.Construction;
import org.modelingvalue.dclare.Construction.Reason;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.Newable;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.ReadOnlyTransaction;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.mps.DAttribute.DIdentifyingAttribute;

@SuppressWarnings("rawtypes")
public abstract class DMatchedObject<T extends DMatchedObject, R, S> extends DIdentifiedObject implements Newable {

    private static final Setable<DMatchedObject, Object> ORIGINAL  = Setable.of("$ORIGINAL", null);

    @SuppressWarnings("unchecked")
    protected static final Set<Observer>                 OBSERVERS = DObject.OBSERVERS;

    protected static final Set<Setable>                  SETABLES  = DObject.SETABLES;

    protected static final AtomicLong                    COUNTER   = new AtomicLong(0L);

    protected static <D extends DMatchedObject> D quotationConstruct(SLanguage anonymousLanguage, String anonymousType, Object[] ctx, Supplier<D> supplier) {
        return derive(new DQuotation(anonymousLanguage, anonymousType, ctx), supplier);
    }

    protected static <D extends DMatchedObject> D copyRootConstruct(String anonymousType, DObject object, DNode copied, Supplier<D> supplier) {
        return derive(new DCopy(copied, anonymousType), supplier);
    }

    protected static <D extends DMatchedObject> D copyChildConstruct(DCopy root, DNode copied, Supplier<D> supplier) {
        return derive(new DCopy(copied, root), supplier);
    }

    @SuppressWarnings("unchecked")
    private static <D extends DMatchedObject> D derive(DDerive id, Supplier<D> supplier) {
        return LeafTransaction.getCurrent().construct(id, supplier);
    }

    @SuppressWarnings("unchecked")
    protected static <D extends DMatchedObject, I, S> D readConstruct(I ref, Supplier<D> supplier, S original) {
        LeafTransaction tx = LeafTransaction.getCurrent();
        D d = tx.construct(new DRead(ref), supplier);
        if (!(tx instanceof ReadOnlyTransaction)) {
            ORIGINAL.set(d, original);
        }
        return d;
    }

    protected DMatchedObject(Object[] identity) {
        super(identity);
    }

    @Override
    protected <V> V get(DIdentifyingAttribute<?, V> attr) {
        DQuotation c = getDQuotation(attr.anonymousType());
        if (c != null) {
            return c.get(attr);
        } else {
            throw new Error("Identifying attribute " + attr + " in " + this + " not found");
        }
    }

    @Override
    protected boolean isObsolete(String anonymousType) {
        return anonymousType != null && getDQuotation(anonymousType).dIsObsolete();
    }

    protected DQuotation getDQuotation(String anonymousType) {
        for (DQuotation c : reasons().filter(DQuotation.class)) {
            if (c.getAnonymousType() == anonymousType) {
                return c;
            }
        }
        return null;
    }

    private Collection<Reason> reasons() {
        return dConstructions().map(Construction::reason);
    }

    @Override
    protected final void read(DClareMPS dClareMPS) {
        if (readReasons() != null) {
            read();
        }
    }

    @SuppressWarnings("unchecked")
    protected final R reference() {
        DRead<R> rc = readReasons();
        return rc != null ? rc.reference() : null;
    }

    @SuppressWarnings("unchecked")
    protected final DRead<R> readReasons() {
        return reasons().filter(DRead.class).findFirst().orElse(null);
    }

    public Set<String> getAnonymousTypes() {
        return reasons().filter(DQuotation.class).map(DQuotation::getAnonymousType).notNull().toSet();
    }

    public boolean isCopy() {
        return reasons().anyMatch(c -> c instanceof DCopy);
    }

    public Set<SLanguage> getAnonymousLanguages() {
        return reasons().filter(DQuotation.class).map(DQuotation::getAnonymousLanguage).notNull().toSet();
    }

    protected Collection<DCopy> getCopyReasons() {
        return reasons().filter(DCopy.class);
    }

    public final S tryOriginal() {
        R ref = reference();
        S sObject = ref != null ? dClareMPS().read(() -> resolve(ref)) : null;
        if (sObject != null && !(LeafTransaction.getCurrent() instanceof ReadOnlyTransaction)) {
            ORIGINAL.set(this, sObject);
        }
        return sObject;
    }

    @SuppressWarnings("unchecked")
    protected final S original() {
        S sObject = tryOriginal();
        if (sObject == null) {
            sObject = (S) ORIGINAL.get(this);
            if (sObject == null) {
                sObject = create();
            }
            readConstruct(reference(sObject), () -> this, sObject);
            init(dClareMPS(), sObject);
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

    @Override
    public final void dActivate() {
        Newable.super.dActivate();
        start(dClareMPS());
    }

    @Override
    public final void dDeactivate() {
        Newable.super.dDeactivate();
        stop(dClareMPS());
    }

    protected void init(DClareMPS dClareMPS, S original) {
    }

    protected void exit(DClareMPS dClareMPS, S original) {
    }

    protected abstract void read();

    protected abstract R reference(S read);

    protected abstract S resolve(R ref);

    protected abstract S create();

}
