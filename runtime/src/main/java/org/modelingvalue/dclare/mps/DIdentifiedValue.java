package org.modelingvalue.dclare.mps;

import java.util.Arrays;

import org.modelingvalue.collections.util.Age;

public abstract class DIdentifiedValue implements DIdentified {

    protected Object[] identity;

    protected DIdentifiedValue(Object[] identity) {
        this.identity = identity;
    }

    @Override
    public int hashCode() {
        return Arrays.hashCode(identity);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        } else if (obj == null) {
            return false;
        } else if (getClass() != obj.getClass()) {
            return false;
        } else {
            DIdentifiedValue other = (DIdentifiedValue) obj;
            if (other.identity == identity) {
                return true;
            } else if (!Arrays.equals(identity, other.identity)) {
                return false;
            } else {
                if (Age.age(identity) > Age.age(other.identity)) {
                    other.identity = identity;
                } else {
                    identity = other.identity;
                }
                return true;
            }
        }
    }

}
