package org.modelingvalue.dclare.mps;

import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.UniverseTransaction;
import org.modelingvalue.dclare.sync.DeltaAdaptor;
import org.modelingvalue.dclare.sync.SerializationHelper;

public class MPSDeltaAdapter extends DeltaAdaptor<DObjectType<DObject>, DObject, Setable<DObject, Object>> {

	public MPSDeltaAdapter(String name, UniverseTransaction tx,
			SerializationHelper<DObjectType<DObject>, DObject, Setable<DObject, Object>> helper) {
		super(name, tx, helper);		
	}

}
