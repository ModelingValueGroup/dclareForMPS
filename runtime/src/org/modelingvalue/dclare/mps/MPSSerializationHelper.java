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

import java.util.HashMap;
import java.util.function.Predicate;

import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.modelingvalue.collections.Entry;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.impl.ListImpl;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.NonCheckingObserver;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.Universe;
import org.modelingvalue.dclare.sync.SerializationHelper;
import org.modelingvalue.dclare.sync.Util;

import jetbrains.mps.project.ProjectRepository;
import jetbrains.mps.smodel.adapter.structure.language.SLanguageAdapterById;

public class MPSSerializationHelper
		implements SerializationHelper<DObjectType<DObject>, DObject, Setable<DObject, Object>> {

	private static final String SETABLE_PREFIX = "setable-";

	private final ProjectRepository repos;

	private Map<String, Serializer<?>> deserialiseMap = Map.of(//
			Entry.of(DModuleConverter.MODULE_PREFIX, new DModuleConverter()), //
			Entry.of(DModelConverter.MODEL_PREFIX, new DModelConverter()), //
			Entry.of(DNodeConverter.NODE_PREFIX, new DNodeConverter()), //
			Entry.of(DStructConverter.DSTRUCT_PREFIX, new DStructConverter()), //
			Entry.of(IntConverter.INT_PREFIX, new IntConverter()), //
			Entry.of(SLanguageConverter.SLANGUAGE_PREFIX, new SLanguageConverter())//
	);

	private Map<Class, Serializer<?>> serializeMap = Map.of( //
			Entry.of(DModule.class, new DModuleConverter()), //
			Entry.of(DModel.class, new DModelConverter()), //
			Entry.of(DNode.class, new DNodeConverter()), //
			Entry.of(DStructObject.class, new DStructConverter()), //
			Entry.of(Integer.class, new IntConverter()), //
			Entry.of(SLanguageAdapterById.class, new SLanguageConverter()) //
	);

	private PersistenceFacade mpsPersist() {
		return PersistenceFacade.getInstance();
	}

	public MPSSerializationHelper(ProjectRepository repos) {
		this.repos = repos;
	}

	@Override
	public Predicate<Mutable> mutableFilter() {
		return m -> !(m instanceof DRepository) && !(m instanceof Universe);
	}

	@Override
	public Predicate<Setable<DObject, ?>> setableFilter() {
		// TODO Auto-generated method stub
		return m -> m instanceof Observed && m != (Object) DModule.LANGUAGES
				&& m != (Object) DObject.D_PARENT_CONTAINING && m != (Object) DObject.CONTAINING_ATTRIBUTE
				&& m != (Object) DMatchedObject.MATCHED_REF && m != (Object) DNode.MODEL
				&& m != (Object) DModel.MODEL_ROOT
				// && m != (Object) DModel.USED_LANGUAGES
				&& m != (Object) DObject.TYPE;
	}

	@Override
	public String serializeClass(DObjectType<DObject> clazz) {
		System.err.println("[SERIALIZE] class: " + clazz.toString());
		// TODO? never called?
		return null;
	}

	@Override
	public String serializeSetable(Setable<DObject, Object> setable) {
		System.err.println("[SERIALIZE] setable " + setable.toString());
		return Util.encodeWithLength(SETABLE_PREFIX + setable.id().toString());
	}

	@Override
	public String serializeMutable(DObject mutable) {
		Serializer serializer = serializeMap.get(mutable.getClass());
		if (serializer != null) {
			return serializer.serialize(mutable);
		}
		System.err.println("[SERIALIZE] NO support for type: " + mutable.getClass().getName());
		return null;
	}

	private String dStructClassToString(DStructClass clz) {
		Triple<Set<SLanguage>, SStructClass, Boolean> id = clz.id();

		String lang = Util.encodeWithLength((String[]) id.a().map(l -> mpsPersist().asString(l)).toArray());
		String s = id.b().id();
		String b = id.c().toString();
		return Util.encodeWithLength(lang, s, b);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	private String serializeIdentity(Object[] obj) {
		String[] id = new String[obj.length];
		for (int i = 0; i < obj.length; i++) {

			Serializer serializer = serializeMap.get(obj[i].getClass());
			if (serializer != null) {
				id[i] = serializer.serialize(obj[i]);
			}

			if (obj[i] instanceof SNodeReference) {
				SNodeReference ref = (SNodeReference) obj[i];
				id[i] = "ref-" + mpsPersist().asString(ref);
			} else if (obj[i] instanceof SConcept) {
				SConcept sc = (SConcept) obj[i];
				id[i] = "concept-" + mpsPersist().asString(sc);
			} else if (obj[i] instanceof DStructClass) {
				id[i] = dStructClassToString((DStructClass) obj[i]);
			} else if (obj[i] instanceof SStructClass) {
				id[i] = "sstructclass-" + ((SStructClass) obj[i]).id();
			} else if (obj[i] instanceof String) {
				id[i] = "string-" + (String) obj[i];
			} else if (obj[i] instanceof ListImpl) {
				id[i] = "list"; // TODO
			} else {
				System.err.println("[SERIALIZE] ERROR ident " + obj[i].getClass().getName());
			}
		}
		return Util.encodeWithLength(Integer.toString(obj.length), Util.encodeWithLength(id));
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public Object serializeValue(Setable<DObject, Object> setable, Object value) {
		System.err.println("[SERIALIZE] value: " + (setable != null ? setable.toString() : "null") + " = " + value);
		Serializer serializer = serializeMap.get(value.getClass());
		if (serializer != null) {
			return serializer.serialize(value);
		}	
		return value;
	}

	@Override
	public DObjectType<DObject> deserializeClass(String s) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Setable<DObject, Object> deserializeSetable(DObjectType<DObject> clazz, String s) {
		String id = s.substring(SETABLE_PREFIX.length() - 1);
		return (Setable<DObject, Object>) clazz.dSetables().filter(x -> x.id().toString().equals(id)).findFirst().get();
	}

	@Override
	public DObject deserializeMutable(String string) {
		String[] split = Util.decodeFromLength(string, 1);
		String s = split[0];	
		return (DObject) deserializeObject(s);		
	}

	@Override
	public Object deserializeValue(Setable<DObject, Object> setable, Object s) {
		System.err.println("[DESERIALIZE] deserializeValue: " + s);

		return null;
	}

	private Object deserializeObject(String s) {
		Serializer<?> serializer = deserialiseMap.get(s.substring(0,s.indexOf('-')+1));
		if (serializer != null) {
			return (DObject) serializer.deserialize(s);
		}
		return s; //no conversion
	}

	private interface Serializer<T> {

		String serialize(T t);

		T deserialize(String s);

	}

	private class DModuleConverter implements Serializer<DModule> {

		private static final String MODULE_PREFIX = "module-";

		@Override
		public String serialize(DModule dModule) {
			String s = Util.encodeWithLength(MODULE_PREFIX + mpsPersist().asString(dModule.getModuleId()));
			System.err.println("[SERIALIZE] module: " + s);
			return s;
		}

		@Override
		public DModule deserialize(String s) {
			System.err.println("[DESERIALIZE] Module: " + s);
			SModuleId mId = mpsPersist().createModuleId(s);
			SModule module = repos.getModule(mId);
			DModule m = DModule.of(module);
			return m;
		}

	}

	private class DModelConverter implements Serializer<DModel> {
		private static final String MODEL_PREFIX = "model-";

		@Override
		public String serialize(DModel dModel) {
			String s = Util.encodeWithLength(MODEL_PREFIX + mpsPersist().asString(dModel.getModelId()));
			System.err.println("[SERIALIZE] model: " + s);
			return s;
		}

		@Override
		public DModel deserialize(String s) {
			System.err.println("[DESERIALIZE] Model: " + s);
			SModelId mId = mpsPersist().createModelId(s.substring(MODEL_PREFIX.length()));
			SModel model = repos.getModel(mId);
			DModel m = DModel.of(model);
			return m;
		}

	}

	private class DNodeConverter implements Serializer<DNode> {

		private static final String NODE_PREFIX = "dnode-";

		@Override
		public String serialize(DNode d) {
			String s = Util.encodeWithLength(NODE_PREFIX + serializeIdentity(d.getIdentity()));
			System.err.println("[SERIALIZE] DNode: " + s);
			return s;
		}

		@Override
		public DNode deserialize(String s) {
			System.err.println("[DESERIALIZE] DNode: " + s);
			String[] ss = Util.decodeFromLength(s.substring(NODE_PREFIX.length() - 1), 2);
			int length = Integer.parseInt(ss[0]);
			ss = Util.decodeFromLength(ss[1], length);
			// TODO loop on length
			SNodeReference ref = mpsPersist().createNodeReference(ss[0]);
			SConcept concept = (SConcept) mpsPersist().createConcept(ss[1]);
			DNode dnode = DNode.of(concept, ref);
			return dnode;
		}

	}

	private class DStructConverter implements Serializer<DStructObject> {
		private static final String DSTRUCT_PREFIX = "dstructobject-";

		public String serialize(DStructObject d) {
			String s = Util.encodeWithLength(DSTRUCT_PREFIX + serializeIdentity(d.getIdentity()));
			System.err.println("[SERIALIZE] struct: " + s);
			return s;
		}

		public DStructObject deserialize(String s) {
			System.err.println("[DESERIALIZE] DStruct: " + s);
			System.err.println("          : " + s.substring(DSTRUCT_PREFIX.length()));
			String[] ss = Util.decodeFromLength(s.substring(DSTRUCT_PREFIX.length()), 2);
			int nrOfKeyfields = Integer.valueOf(ss[0]);
			System.err.println("   nrOfKeyFields: " + nrOfKeyfields);
			System.err.println("   fields       : " + ss[1]);
			String[] strKeyFields = Util.decodeFromLength(ss[1], nrOfKeyfields);
			System.err.println("    keyFields: " + strKeyFields);
			Object[] key = new Object[nrOfKeyfields];
			for (int i = 0; i < nrOfKeyfields; i++) {
				key[i] = deserializeObject(strKeyFields[i]);
			}
			return null;
		}
	}

	private class SLanguageConverter implements Serializer<SLanguage> {

		private static final String SLANGUAGE_PREFIX = "slanguage-";

		@Override
		public String serialize(SLanguage t) {
			SLanguageAdapterById sl = (SLanguageAdapterById) t;
			return SLANGUAGE_PREFIX + sl.getId().serialize();
		}

		@Override
		public SLanguage deserialize(String s) {
			String id = s.substring(SLANGUAGE_PREFIX.length());
			return null;
		}
	}

	private class IntConverter implements Serializer<Integer> {
		private static final String INT_PREFIX = "int-";

		@Override
		public String serialize(Integer t) {
			return INT_PREFIX + (t).toString();
		}

		@Override
		public Integer deserialize(String s) {
			return Integer.valueOf(s.substring(INT_PREFIX.length()));
		}

	}
}
