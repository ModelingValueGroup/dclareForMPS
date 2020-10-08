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
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.sync.*;

import jetbrains.mps.project.ProjectRepository;
import jetbrains.mps.smodel.SNodePointer;

public class MPSSerializationHelper
		implements SerializationHelper<DObjectType<DObject>, DObject, Setable<DObject, Object>> {

	private final ProjectRepository repos;

	public MPSSerializationHelper(ProjectRepository repos) {
		this.repos = repos;
	}

	@Override
	public Predicate<Mutable> mutableFilter() {
		return m -> !(m instanceof DRepository);
	}

	@Override
	public Predicate<Setable<DObject, ?>> setableFilter() {
		// TODO Auto-generated method stub
		return m -> true;
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
		if (mutable instanceof DNode) {
			DIdentifiedObject iObj = (DIdentifiedObject) mutable;
			return serializeIdentity(iObj.getIdentity());
		} else if (mutable instanceof DStructObject) {
			// geen idee nog .....
			DIdentifiedObject iObj = (DIdentifiedObject) mutable;
			return serializeIdentity(iObj.getIdentity());
		} else if (mutable instanceof DModule) {
			DModule dm = (DModule) mutable;
			return Util.encodeWithLength("module-" + dm.getModuleId().toString());			
		}
		System.err.println("NO support for type: " + mutable.getClass().getName());
		return null;
	}

	private String serializeIdentity(Object[] obj) {
		String[] id = new String[obj.length];
		for (int i = 0; i < obj.length; i++) {
			if (obj[i] instanceof SNodeReference) {
				SNodeReference ref = (SNodeReference) obj[i];
				id[i] = "ref-" + SNodePointer.serialize(ref);
			}
			if (obj[i] instanceof SConcept) {
				SConcept sc = (SConcept) obj[i];
				id[i] = "concept-" + SNodePointer.serialize(sc.getSourceNode());
			}
		}
		return Util.encodeWithLength(id);
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
		if (s.startsWith("module-")) {
			
		} else {
			String[] ss = Util.decodeFromLength(s, 2);
			SNodeReference ref = SNodePointer.deserialize(ss[0]);
			SNodeReference conceptRef = SNodePointer.deserialize(ss[1]);
			SNode node = conceptRef.resolve(null);
			SConcept concept = node.getConcept(); // dit klopt nog niet.....
			DNode dnode = DNode.of(concept, ref);
		}
		return null;
	}

	@Override
	public Object deserializeValue(Setable<DObject, Object> setable, Object s) {
		// TODO Auto-generated method stub
		return null;
	}
}
