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
import org.modelingvalue.dclare.Construction.Context;
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
        return derive(new DQuotationConstruction(anonymousLanguage, anonymousType, ctx), supplier);
    }

    protected static <D extends DMatchedObject> D copyRootConstruct(String anonymousType, DObject object, DNode copied, Supplier<D> supplier) {
        return derive(new DCopyConstruction(copied, anonymousType), supplier);
    }

    protected static <D extends DMatchedObject> D copyChildConstruct(DCopyConstruction root, DNode copied, Supplier<D> supplier) {
        return derive(new DCopyConstruction(copied, root), supplier);
    }

    @SuppressWarnings("unchecked")
    private static <D extends DMatchedObject> D derive(DDeriveConstruction id, Supplier<D> supplier) {
        return LeafTransaction.getCurrent().construct(id, supplier);
    }

    @SuppressWarnings("unchecked")
    protected static <D extends DMatchedObject, I, S> D readConstruct(I ref, Supplier<D> supplier, S original) {
        LeafTransaction tx = LeafTransaction.getCurrent();
        D d = tx.construct(new DReadConstruction(ref), supplier);
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
        for (DQuotationConstruction c : constructions().filter(DQuotationConstruction.class)) {
            //noinspection StringEquality
            if (c.getAnonymousType() == attr.anonymousType()) {
                return c.get(attr);
            }
        }
        throw new Error("Identifying attribute " + attr + " in " + this + " not found");
    }

    private Collection<Context> constructions() {
        return dConstructions().map(Construction::context);
    }

    @Override
    protected final void read(DClareMPS dClareMPS) {
        if (readConstruction() != null) {
            read();
        }
    }

    @SuppressWarnings("unchecked")
    protected final R reference() {
        DReadConstruction<R> rc = readConstruction();
        return rc != null ? rc.reference() : null;
    }

    @SuppressWarnings("unchecked")
    protected final DReadConstruction<R> readConstruction() {
        return constructions().filter(DReadConstruction.class).findFirst().orElse(null);
    }

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

    protected void init(DClareMPS dClareMPS, S original) {
    }

    protected void exit(DClareMPS dClareMPS, S original) {
    }

    protected abstract void read();

    protected abstract R reference(S read);

    protected abstract S resolve(R ref);

    protected abstract S create();

}
