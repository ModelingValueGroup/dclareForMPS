package org.modelingvalue.dclare.mps;

import org.modelingvalue.dclare.mps.DAttribute.DIdentifyingAttribute;

public interface DIdentified extends DObject {

    public Object[] getIdentity();

    public <V> V get(DIdentifyingAttribute<?, V> attr);

}
