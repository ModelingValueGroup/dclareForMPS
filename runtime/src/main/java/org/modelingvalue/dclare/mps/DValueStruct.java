package org.modelingvalue.dclare.mps;

import java.util.Arrays;
import java.util.Objects;

import org.modelingvalue.dclare.mps.DAttribute.DIdentifyingAttribute;

public class DValueStruct extends DIdentifiedValue implements SStructObject {

    @SuppressWarnings("unchecked")
    public static DValueStruct of(SStructClass cls, Object[] identity) {
        assert cls.isValueClass();
        for (int i = 0; i < identity.length; i++) {
            Objects.requireNonNull(identity[i]);
        }
        identity = Arrays.copyOf(identity, identity.length + 1);
        identity[identity.length - 1] = cls;
        return new DValueStruct(identity);
    }

    private DValueStruct(Object[] identity) {
        super(identity);
    }

    @Override
    public SStructClass getSClass() {
        return (SStructClass) identity[identity.length - 1];
    }

    @Override
    public Object[] getIdentity() {
        return identity;
    }

    @SuppressWarnings("unchecked")
    @Override
    public <V> V get(DIdentifyingAttribute<?, V> attr) {
        return (V) identity[attr.index()];
    }

    @SuppressWarnings("rawtypes")
    @Override
    public java.util.List<DAttribute> getNonSyntheticAttributes() {
        return getSClass().getIdentity().filter(DAttribute.class).toList();
    }

    @Override
    public String toString() {
        return getSClass() + Arrays.toString(Arrays.copyOf(identity, identity.length - 1));
    }

}
