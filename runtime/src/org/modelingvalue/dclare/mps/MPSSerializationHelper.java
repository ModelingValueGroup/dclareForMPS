//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2020 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.smodel.adapter.structure.concept.SConceptAdapterById;
import jetbrains.mps.smodel.adapter.structure.language.SLanguageAdapterById;

public class MPSSerializationHelper
		implements SerializationHelper<DObjectType<DObject>, DObject, Setable<DObject, Object>> {

	private static final boolean TRACE = false;

	private static final String SETABLE_PREFIX = "setable-";

	private final ProjectRepository repos;

	private Map<String, Serializer<?>> deserialiseMap = Map.of(//
			Entry.of(DModuleConverter.MODULE_PREFIX, new DModuleConverter()), //
			Entry.of(DModelConverter.MODEL_PREFIX, new DModelConverter()), //
			Entry.of(DNodeConverter.NODE_PREFIX, new DNodeConverter()), //
			Entry.of(DStructConverter.DSTRUCT_PREFIX, new DStructConverter()), //
			Entry.of(DStructClassConverter.DSTRUCTCLASS_PREFIX, new DStructClassConverter()), //
			Entry.of(SStructClassConverter.SSTRUCTCLASS_PREFIX, new SStructClassConverter()), //
			Entry.of(IntConverter.INT_PREFIX, new IntConverter()), //
			Entry.of(StringConverter.STRING_PREFIX, new StringConverter()), //
			Entry.of(SNodeReferenceConverter.SNODE_REF_PREFIX, new SNodeReferenceConverter()), //
			Entry.of(SConceptConverter.SCONCEPT_PREFIX, new SConceptConverter()), //
			Entry.of(SLanguageConverter.SLANGUAGE_PREFIX, new SLanguageConverter())//
	);

	private Map<Class, Serializer<?>> serializeMap = Map.of( //
			Entry.of(DModule.class, new DModuleConverter()), //
			Entry.of(DModel.class, new DModelConverter()), //
			Entry.of(DNode.class, new DNodeConverter()), //
			Entry.of(DStructObject.class, new DStructConverter()), //
			Entry.of(DStructClass.class, new DStructClassConverter()), //
			Entry.of(SStructClass.class, new SStructClassConverter()), //
			Entry.of(Integer.class, new IntConverter()), //
			Entry.of(String.class, new StringConverter()), //
			Entry.of(SNodePointer.class, new SNodeReferenceConverter()), //
			Entry.of(SConceptAdapterById.class, new SConceptConverter()), //
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
		if (TRACE)
			System.err.println("[SERIALIZE] class: " + clazz.toString());
		// TODO? never called?
		return null;
	}

	@Override
	public String serializeSetable(Setable<DObject, Object> setable) {
		if (TRACE)
			System.err.println("[SERIALIZE] setable " + setable.toString());
		return Util.encodeWithLength(SETABLE_PREFIX + setable.id().toString());
	}

	@Override
	public String serializeMutable(DObject mutable) {
		Serializer serializer = serializeMap.get(mutable.getClass());
		if (serializer != null) {
			return serializer.serialize(mutable);
		}
		if (TRACE)
			System.err.println("[SERIALIZE] NO support for type: " + mutable.getClass().getName());
		return null;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	private String serializeIdentity(Object[] obj) {
		String[] id = new String[obj.length];
		for (int i = 0; i < obj.length; i++) {

			Serializer serializer = serializeMap.get(obj[i].getClass());
			if (serializer != null) {
				id[i] = serializer.serialize(obj[i]);
			} else if (obj[i] instanceof ListImpl) {
				id[i] = "list"; // TODO
			} else {
				System.err.println("[SERIALIZE] ERROR ident " + obj[i].getClass().getName());
				throw new Error();
			}
		}
		return Util.encodeWithLength(Integer.toString(obj.length), Util.encodeWithLength(id));
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public Object serializeValue(Setable<DObject, Object> setable, Object value) {
		if (TRACE)
			System.err.println("[SERIALIZE] value: " + (setable != null ? setable.toString() : "null") + " = " + value);
		if (value != null) {
			Serializer serializer = serializeMap.get(value.getClass());
			if (serializer != null) {
				return serializer.serialize(value);
			}
		}
		return value;

	}

	@Override
	public DObjectType<DObject> deserializeClass(String s) {
		if (TRACE)
			System.err.println("[DESERIALIZE] deserializeClass: " + s);
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Setable<DObject, Object> deserializeSetable(DObjectType<DObject> clazz, String s) {
		try {
			if (true)
				System.err.println("[DESERIALIZE] deserializeSetable: " + s);
			String id = Util.decodeFromLength(s, 1)[0].substring(SETABLE_PREFIX.length());
			if (true)
				System.err.println("[DESERIALIZE] find settable: " + id);
			return (Setable<DObject, Object>) clazz.dSetables().filter(x -> x.id().toString().equals(id)).findFirst()
					.get();
		} catch (Throwable t) {
			t.printStackTrace();
		}
		return null;
	}

	@Override
	public DObject deserializeMutable(String string) {
		if (TRACE)
			System.err.println("[DESERIALIZE] deserializeSetable: " + string);
		try {
			return (DObject) deserializeObject(string);
		} catch (Throwable t) {
			t.printStackTrace();
		}
		return null;
	}

	@Override
	public Object deserializeValue(Setable<DObject, Object> setable, Object s) {
		if (TRACE)
			System.err.println("[DESERIALIZE] deserializeValue: " + s);
		return null;
	}

	private Object deserializeObject(String string) {
		if (TRACE)
			System.err.println("[DESERIALIZE] Object: " + string);
		String s = string;
		if (string.substring(0, 1).matches("[0-9]")) {
			s = Util.decodeFromLength(string, 1)[0];
		}
		String objectType = s.substring(0, s.indexOf('-') + 1);
		if (TRACE)
			System.err.println("[DESERIALIZE] looking for deserializer: " + objectType);
		Serializer<?> serializer = deserialiseMap.get(objectType);
		if (serializer != null) {
			return serializer.deserialize(s);
		}
		if (TRACE)
			System.err.println("[DESERIALIZE] Error? Object: " + s);
		return s; // no conversion
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
			if (TRACE)
				System.err.println("[SERIALIZE] module: " + s);
			return s;
		}

		@Override
		public DModule deserialize(String s) {
			if (TRACE)
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
			if (TRACE)
				System.err.println("[SERIALIZE] model: " + s);
			return s;
		}

		@Override
		public DModel deserialize(String s) {
			if (TRACE)
				System.err.println("[DESERIALIZE] Model: " + s);
			SModelId mId = mpsPersist().createModelId(s.substring(MODEL_PREFIX.length()));
			SModel model = repos.getModel(mId);
			DModel m = DModel.of(model);
			return m;
		}
	}

	private class SStructClassConverter implements Serializer<SStructClass> {

		private static final String SSTRUCTCLASS_PREFIX = "sstructclass-";

		@Override
		public String serialize(SStructClass t) {
			return SSTRUCTCLASS_PREFIX + t.id();
		}

		@Override
		public SStructClass deserialize(String s) {
			String id = s.substring(SSTRUCTCLASS_PREFIX.length());
			if (TRACE)
				System.err.println("resolve structclass: " + id);
			return SStructClass.of(id);
		}

	}

	private class DStructClassConverter implements Serializer<DStructClass> {

		private static final String DSTRUCTCLASS_PREFIX = "dstructclass-";

		@Override
		public String serialize(DStructClass clz) {
			Triple<Set<SLanguage>, SStructClass, Boolean> id = clz.id();
			String lang = Util.encodeWithLength(Integer.toString(id.a().size()),
					Util.encodeWithLength((String[]) id.a().map(l -> mpsPersist().asString(l)).toArray()));
			String s = id.b().id();
			String b = id.c().toString();
			return Util.encodeWithLength(DSTRUCTCLASS_PREFIX + Util.encodeWithLength(lang, s, b));
		}

		@Override
		public DStructClass deserialize(String s) {
			String[] fields = Util.decodeFromLength(s.substring(DSTRUCTCLASS_PREFIX.length()), 3);
			String[] languageData = Util.decodeFromLength(fields[0], 2);
			int nrOfLanguages = Integer.valueOf(languageData[0]);
			Set<SLanguage> sLanguages = Set.of();
			String[] strOfLanguags = Util.decodeFromLength(languageData[1], nrOfLanguages);
			for (int i = 0; i < nrOfLanguages; i++) {
				sLanguages = sLanguages.add(mpsPersist().createLanguage(strOfLanguags[i]));
			}
			SStructClass structClass = SStructClass.of(fields[1]);
			Boolean bool = Boolean.valueOf(fields[2]);
			return new DStructClass(Triple.of(sLanguages, structClass, bool));
		}

	}

	private class SNodeReferenceConverter implements Serializer<SNodeReference> {

		private static final String SNODE_REF_PREFIX = "ref-";

		@Override
		public String serialize(SNodeReference ref) {
			return SNODE_REF_PREFIX + mpsPersist().asString(ref);
		}

		@Override
		public SNodeReference deserialize(String s) {
			if (TRACE)
				System.err.println("    resolve reference: " + s);
			try {
				SNodeReference ref = mpsPersist().createNodeReference(s.substring(SNODE_REF_PREFIX.length()));
				if (TRACE)
					System.err.println("ref: " + ref);
				return ref;
			} catch (Throwable t) {
				t.printStackTrace();
			}
			return null;
		}
	}

	private class SConceptConverter implements Serializer<SConcept> {

		private static final String SCONCEPT_PREFIX = "concept-";

		@Override
		public String serialize(SConcept concept) {
			return SCONCEPT_PREFIX + mpsPersist().asString(concept);
		}

		@Override
		public SConcept deserialize(String s) {
			return (SConcept) mpsPersist().createConcept(s.substring(SCONCEPT_PREFIX.length()));
		}

	}

	private class DNodeConverter implements Serializer<DNode> {

		private static final String NODE_PREFIX = "dnode-";

		@Override
		public String serialize(DNode d) {
			String s = Util.encodeWithLength(NODE_PREFIX + serializeIdentity(d.getIdentity()));
			if (TRACE)
				System.err.println("[SERIALIZE] DNode: " + s);
			return s;
		}

		@Override
		public DNode deserialize(String s) {
			if (TRACE)
				System.err.println("[DESERIALIZE] DNode: " + s);
			String[] ss = Util.decodeFromLength(s.substring(NODE_PREFIX.length()), 2);
			int nrOfKeyFields = Integer.parseInt(ss[0]);
			if (TRACE)
				System.err.println("   nrOfKeyFields: " + nrOfKeyFields);
			if (TRACE)
				System.err.println("   fields       : " + ss[1]);
			String[] strKeyFields = Util.decodeFromLength(ss[1], nrOfKeyFields);
			if (TRACE)
				System.err.println("strKeyFields: " + strKeyFields.length);
			Object[] key = new Object[nrOfKeyFields];
			for (int i = 0; i < nrOfKeyFields; i++) {
				if (TRACE)
					System.err.println(" field: " + i + " " + strKeyFields[i]);
				key[i] = deserializeObject(strKeyFields[i]);
			}
			if (TRACE)
				System.err.println("create DNode: ");
			return new DNode(key);
		}
	}

	private class DStructConverter implements Serializer<DStructObject> {
		private static final String DSTRUCT_PREFIX = "dstructobject-";

		public String serialize(DStructObject d) {
			String s = Util.encodeWithLength(DSTRUCT_PREFIX + serializeIdentity(d.getIdentity()));
			if (TRACE)
				System.err.println("[SERIALIZE] struct: " + s);
			return s;
		}

		public DStructObject deserialize(String s) {
			if (TRACE)
				System.err.println("[DESERIALIZE] DStruct: " + s);
			if (TRACE)
				System.err.println("          : " + s.substring(DSTRUCT_PREFIX.length()));
			String[] ss = Util.decodeFromLength(s.substring(DSTRUCT_PREFIX.length()), 2);
			int nrOfKeyFields = Integer.valueOf(ss[0]);
			if (TRACE)
				System.err.println("   nrOfKeyFields: " + nrOfKeyFields);
			if (TRACE)
				System.err.println("   fields       : " + ss[1]);
			String[] strKeyFields = Util.decodeFromLength(ss[1], nrOfKeyFields);
			Object[] key = new Object[nrOfKeyFields];
			for (int i = 0; i < nrOfKeyFields; i++) {
				if (TRACE)
					System.err.println(" field: " + i + " " + strKeyFields[i]);
				key[i] = deserializeObject(strKeyFields[i]);
			}
			if (TRACE)
				System.err.println("create DStructObject: ");
			return new DStructObject(key);
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

	private class StringConverter implements Serializer<String> {

		private static final String STRING_PREFIX = "string-";

		@Override
		public String serialize(String s) {
			return STRING_PREFIX + s;
		}

		@Override
		public String deserialize(String s) {
			return s.substring(STRING_PREFIX.length());
		}

	}
}
