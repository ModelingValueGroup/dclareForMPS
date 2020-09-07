package org.modelingvalue.dclare.mps;

import java.util.Arrays;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.mps.DAttribute.DIdentifyingAttribute;
import org.modelingvalue.dclare.mps.DRule.DObserver;
import org.modelingvalue.dclare.mps.DRule.DObserverTransaction;

public class DQuotationConstruction extends DDeriveConstruction {

    protected DQuotationConstruction(SLanguage anonymousLanguage, String anonymousType, Object[] ctx) {
        super(Arrays.copyOf(ctx, ctx.length + 3));
        identity[identity.length - 3] = ((DObserverTransaction) LeafTransaction.getCurrent()).observer();
        identity[identity.length - 2] = anonymousLanguage;
        identity[identity.length - 1] = anonymousType;
    }

    private DQuotationConstruction(Object[] identity) {
        super(identity);
    }

    protected DQuotationConstruction moveTo(DObject object) {
        Object[] id = identity.clone();
        id[0] = object;
        return new DQuotationConstruction(id);
    }

    @SuppressWarnings("unchecked")
    protected <V> V get(DIdentifyingAttribute<?, V> attr) {
        return (V) identity[attr.index()];
    }

    public DObserver<?> observer() {
        return (DObserver<?>) identity[identity.length - 3];
    }

    public DObject object() {
        return (DObject) identity[0];
    }

    public String getAnonymousType() {
        return (String) identity[identity.length - 1];
    }

    public SLanguage getAnonymousLanguage() {
        return (SLanguage) identity[identity.length - 2];
    }

}
