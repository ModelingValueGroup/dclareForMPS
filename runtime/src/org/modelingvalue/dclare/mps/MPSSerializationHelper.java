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

import java.util.function.Predicate;

import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
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

	private static final String SETABLE_TYPE = "setable-";
	private static final String DSTRUCT_TYPE = "dstruct-";
	private static final String NODE_TYPE = "node-";
	private static final String MODEL_TYPE = "model-";
	private static final String MODULE_TYPE = "module-";
	private final ProjectRepository repos;

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
				&& m != (Object) DObject.D_PARENT_CONTAINING
				&& m != (Object) DObject.CONTAINING_ATTRIBUTE
				&& m != (Object) DMatchedObject.MATCHED_REF
				&& m != (Object) DNode.MODEL
			    && m != (Object) DModel.MODEL_ROOT
				//&& m != (Object) DModel.USED_LANGUAGES
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
		return Util.encodeWithLength(SETABLE_TYPE + setable.id().toString());
	}

	@Override
	public String serializeMutable(DObject mutable) {
		if (mutable instanceof DNode) {
			return dNodeToString((DNode) mutable);
		} else if (mutable instanceof DStructObject) {
			String s = dStructObjectToString((DStructObject)mutable);
			return s;
		} else if (mutable instanceof DModule) {
			DModule dm = (DModule) mutable;
			String s = Util.encodeWithLength(MODULE_TYPE + mpsPersist().asString(dm.getModuleId()));
			System.err.println("[SERIALIZE] module: " + s);
			return s;
		} else if (mutable instanceof DModel) {
			DModel dm = (DModel) mutable;
			String s = Util.encodeWithLength(MODEL_TYPE + mpsPersist().asString(dm.getModelId()));
			System.err.println("[SERIALIZE] model: " + s);
			return s;
		}
		System.err.println("[SERIALIZE] NO support for type: " + mutable.getClass().getName());
		return null;
	}

	private String dStructObjectToString(DStructObject iObj) {
		String s = Util.encodeWithLength(DSTRUCT_TYPE + serializeIdentity(iObj.getIdentity()));
		System.err.println("[SERIALIZE] struct: " + s);
		return s;
	}
	
	private String dStructClassToString(DStructClass clz) {
		Triple<Set<SLanguage>, SStructClass, Boolean> id = clz.id();
		
		String lang = Util.encodeWithLength((String[])id.a().map(l -> mpsPersist().asString(l)).toArray());
		String s    = id.b().id();
		String b    = id.c().toString();
		return Util.encodeWithLength(lang,s,b);
	}

	private String dNodeToString(DNode dnode) {
		String s = Util.encodeWithLength(NODE_TYPE + serializeIdentity(dnode.getIdentity()));
		System.err.println("[SERIALIZE] node: " + s);
		return s;
	}

	private String serializeIdentity(Object[] obj) {
		String[] id = new String[obj.length];
		for (int i = 0; i < obj.length; i++) {
			if (obj[i] instanceof SNodeReference) {
				SNodeReference ref = (SNodeReference) obj[i];
				id[i] = "ref-" + mpsPersist().asString(ref);
			} else if (obj[i] instanceof SConcept) {
				SConcept sc = (SConcept) obj[i];
				id[i] = "concept-" + mpsPersist().asString(sc);
			} else if (obj[i] instanceof Integer) {
				id[i] = "int-" + ((Integer) obj[i]).toString();
			} else if (obj[i] instanceof DNode) {
				id[i] = dNodeToString((DNode)obj[i]);
			} else if (obj[i] instanceof DStructClass) {
				id[i] = dStructClassToString((DStructClass)obj[i]);
			} else if (obj[i] instanceof SStructClass) {
				id[i] = ((SStructClass)obj[i]).id();
			} else if (obj[i] instanceof SLanguageAdapterById) {
				SLanguageAdapterById sl = (SLanguageAdapterById) obj[i];
				id[i] = sl.getId().serialize();
			} else if (obj[i] instanceof String) {
				id[i] = (String) obj[i];
			} else if (obj[i] instanceof ListImpl) {
				id[i] = "list"; //TODO
			} else {
				System.err.println("[SERIALIZE] ERROR ident " + obj[i].getClass().getName());
			}
		}
		return Util.encodeWithLength(Integer.toString(obj.length),Util.encodeWithLength(id));
	}

	@Override
	public Object serializeValue(Setable<DObject, Object> setable, Object value) {
		System.err.println("[SERIALIZE] value: " + (setable!=null? setable.toString() : "null") + " = " + value);
		if (value instanceof DNode) {
			return dNodeToString((DNode) value);
		} else if (value instanceof SLanguageAdapterById) {
			return ((SLanguageAdapterById)value).getId().serialize();
		} else if (value instanceof DStructObject) {
			return dStructObjectToString((DStructObject)value);
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
		String id = s.substring(SETABLE_TYPE.length() - 1);
		return (Setable<DObject, Object>) clazz.dSetables().filter(x -> x.id().toString().equals(id)).findFirst().get();
	}

	@Override
	public DObject deserializeMutable(String s) {
		if (s.startsWith(MODULE_TYPE)) {
			SModuleId mId = mpsPersist().createModuleId(s);
			SModule module = repos.getModule(mId);
			return DModule.of(module);
		} else if (s.startsWith(MODEL_TYPE)) {
			SModelId mId = mpsPersist().createModelId(s);
			SModel model = repos.getModel(mId);
			return DModel.of(model);
		} else if (s.startsWith(NODE_TYPE)) {
			String[] ss = Util.decodeFromLength(s.substring(NODE_TYPE.length() - 1), 2);
			int length = Integer.parseInt(ss[0]);
			ss = Util.decodeFromLength(ss[1], length);
			//TODO loop on length
			SNodeReference ref = mpsPersist().createNodeReference(ss[0]);
			SConcept concept = (SConcept) mpsPersist().createConcept(ss[1]);
			DNode dnode = DNode.of(concept, ref);
			return dnode;
		} else {
			System.err.println("[DESERIALIZE] FAILED: " + s);
			return null;
		}
	}

	@Override
	public Object deserializeValue(Setable<DObject, Object> setable, Object s) {
		// TODO Auto-generated method stub
		return null;
	}
}
