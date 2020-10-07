package org.modelingvalue.dclare.mps;

import java.util.function.Predicate;

import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.sync.*;

public class MPSSerializationHelper implements SerializationHelper<DObjectType<DObject>,DObject,Setable<DObject,Object>> {

	@Override
	public Predicate<Mutable> mutableFilter() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Predicate<Setable<DObject, ?>> setableFilter() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String serializeClass(DObjectType<DObject> clazz) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String serializeSetable(Setable<DObject, Object> setable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String serializeMutable(DObject mutable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object serializeValue(Setable<DObject, Object> setable, Object value) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DObjectType<DObject> deserializeClass(String s) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Setable<DObject, Object> deserializeSetable(DObjectType<DObject> clazz, String s) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DObject deserializeMutable(String s) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object deserializeValue(Setable<DObject, Object> setable, Object s) {
		// TODO Auto-generated method stub
		return null;
	}
}
