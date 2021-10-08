//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2021 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import org.jetbrains.mps.openapi.language.*;
import org.jetbrains.mps.openapi.model.*;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.modelingvalue.collections.*;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.mps.DAttribute.DObservedAttribute;
import org.modelingvalue.dclare.sync.SerializationHelper;
import org.modelingvalue.dclare.sync.Util;

import jetbrains.mps.project.ProjectRepository;

public class MPSSerializationHelper implements SerializationHelper<DObjectType<DObject>, DObject, DObserved<DObject, Object>> {

    private static final boolean       TRACE          = Boolean.getBoolean("TRACE_SERIALIZATION");

    private static final String        SETABLE_PREFIX = "setable-";

    private final ProjectRepository    repos;

    private Map<String, Serializer<?>> deserialiseMap = Map.of(                                   //
            Entry.of(DModuleConverter.MODULE_PREFIX, new DModuleConverter()),                     //
            Entry.of(DModelConverter.MODEL_PREFIX, new DModelConverter()),                        //
            Entry.of(DNodeConverter.NODE_PREFIX, new DNodeConverter()),                           //
            Entry.of(SNodeReferenceConverter.SNODE_REF_PREFIX, new SNodeReferenceConverter()),    //
            Entry.of(SConceptConverter.SCONCEPT_PREFIX, new SConceptConverter()),                 //
            Entry.of(SLanguageConverter.SLANGUAGE_PREFIX, new SLanguageConverter())               //
    );

    @SuppressWarnings("rawtypes")
    private Map<Class, Serializer<?>>  serializeMap   = Map.of(                                   //
            Entry.of(DModule.class, new DModuleConverter()),                                      //
            Entry.of(DModel.class, new DModelConverter()),                                        //
            Entry.of(DNode.class, new DNodeConverter()),                                          //
            Entry.of(SNodeReference.class, new SNodeReferenceConverter()),                        //
            Entry.of(SAbstractConcept.class, new SConceptConverter()),                            //
            Entry.of(SLanguage.class, new SLanguageConverter())                                   //
    );

    @SuppressWarnings({"unchecked", "rawtypes"})
    private <T> Serializer<T> serializer(Class<T> cls) {
        Serializer result = serializeMap.get(cls);
        if (result == null) {
            Class found = null;
            for (Entry<Class, Serializer<?>> e : serializeMap) {
                if (e.getKey().isAssignableFrom(cls) && (found == null || found.isAssignableFrom(e.getKey()))) {
                    found = e.getKey();
                    result = e.getValue();
                }
            }
            serializeMap = serializeMap.put(Entry.of(cls, result));
        }
        return (Serializer<T>) result;
    }

    private PersistenceFacade mpsPersist() {
        return PersistenceFacade.getInstance();
    }

    public MPSSerializationHelper(ProjectRepository repos) {
        this.repos = repos;
    }

    @Override
    public Predicate<Mutable> mutableFilter() {
        return m -> (m instanceof DModule || m instanceof DModel || m instanceof DNode) && !((DObject) m).isDclareOnly();
    }

    @SuppressWarnings("rawtypes")
    @Override
    public Predicate<Setable<DObject, ?>> setableFilter() {
        return s -> s instanceof DObserved && ((Setable) s) != DModel.USED_DEVKITS && !(s instanceof DObservedAttribute) && !((DObserved) s).isDclareOnly();
    }

    @SuppressWarnings("unchecked")
    @Override
    public DObjectType<DObject> getMutableClass(DObject s) {
        DObjectType<DObject> type = (DObjectType<DObject>) DObject.TYPE.get(s);
        return type != DObject.TYPE.getDefault() ? type : (DObjectType<DObject>) s.getType();
    }

    @Override
    public String serializeSetable(DObserved<DObject, Object> setable) {
        if (TRACE)
            System.err.println("[SERIALIZE] setable " + setable.id().toString());
        return SETABLE_PREFIX + setable.id().toString();
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public String serializeMutable(DObject mutable) {
        Serializer serializer = serializer(mutable.getClass());
        if (serializer != null) {
            return serializer.serialize(mutable);
        }
        if (TRACE)
            System.err.println("[SERIALIZE] NO support for type: " + mutable.getClass().getName());
        return null;
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public Object serializeValue(DObserved<DObject, Object> setable, Object value) {
        if (TRACE)
            System.err.println("[SERIALIZE] value: " + (setable != null ? setable.toString() : "null") + " = " + value);
        if (value instanceof List) {
            value = ((List<?>) value).map(e -> serializeValue(setable, e)).toList();
        } else if (value instanceof Set) {
            value = ((Set<?>) value).map(e -> serializeValue(setable, e)).toList();
        } else if (value != null) {
            Serializer serializer = serializer(value.getClass());
            if (serializer != null) {
                value = serializer.serialize(value);
            }
        }
        return value;
    }

    @SuppressWarnings("unchecked")
    @Override
    public DObserved<DObject, Object> deserializeSetable(DObjectType<DObject> clazz, String s) {
        try {
            if (TRACE)
                System.err.println("[DESERIALIZE] deserializeSetable: " + s);
            String id = s.substring(SETABLE_PREFIX.length());
            if (TRACE)
                System.err.println("[DESERIALIZE] find settable: " + id);
            return (DObserved<DObject, Object>) clazz.dSetables().filter(x -> x.id().toString().equals(id)).findFirst().get();
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
            return (DObject) deserializeString(string, string);
        } catch (Throwable t) {
            t.printStackTrace();
        }
        return null;
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public Object deserializeValue(DObserved<DObject, Object> setable, Object value) {
        if (TRACE)
            System.err.println("[DESERIALIZE] deserializeValue: " + value);
        if (value instanceof List && setable.getDefault() instanceof List) {
            value = ((List<?>) value).map(e -> deserializeValue(setable, e)).toList();
        } else if (value instanceof List && setable.getDefault() instanceof Set) {
            value = ((List<?>) value).map(e -> deserializeValue(setable, e)).toSet();
        } else if (value instanceof String) {
            value = deserializeString(value, (String) value);
        }
        return value;
    }

    private Object deserializeString(Object value, String string) {
        int i = string.indexOf('-');
        if (i > 0) {
            String objectType = string.substring(0, i + 1);
            Serializer<?> serializer = deserialiseMap.get(objectType);
            if (serializer != null) {
                value = serializer.deserialize(string);
            }
        }
        return value;
    }

    private interface Serializer<T> {

        String serialize(T t);

        T deserialize(String s);

    }

    private class DModuleConverter implements Serializer<DModule> {

        private static final String MODULE_PREFIX = "module-";

        @Override
        public String serialize(DModule m) {
            String s = MODULE_PREFIX + mpsPersist().asString(m.getModuleId());
            if (TRACE)
                System.err.println("[SERIALIZE] module: " + s);
            return s;
        }

        @Override
        public DModule deserialize(String s) {
            if (TRACE)
                System.err.println("[DESERIALIZE] Module: " + s);
            SModuleId mId = mpsPersist().createModuleId(s.substring(MODULE_PREFIX.length()));
            SModule module = DObject.dClareMPS().read(() -> repos.getModule(mId));
            DModule m = DModule.of(module);
            return m;
        }

    }

    private class DModelConverter implements Serializer<DModel> {
        private static final String MODEL_PREFIX = "model-";

        @Override
        public String serialize(DModel m) {
            String s = MODEL_PREFIX + mpsPersist().asString(m.getModelId());
            if (TRACE)
                System.err.println("[SERIALIZE] model: " + s);
            return s;
        }

        @Override
        public DModel deserialize(String s) {
            if (TRACE)
                System.err.println("[DESERIALIZE] Model: " + s);
            SModelId mId = mpsPersist().createModelId(s.substring(MODEL_PREFIX.length()));
            SModel model = DObject.dClareMPS().read(() -> repos.getModel(mId));
            DModel m = DModel.of(model);
            return m;
        }
    }

    private class DNodeConverter implements Serializer<DNode> {

        private static final String NODE_PREFIX = "dnode-";

        @Override
        @SuppressWarnings({"rawtypes", "unchecked"})
        public String serialize(DNode n) {
            String s = NODE_PREFIX + Util.encodeWithLength(//
                    serializer(SNodeReference.class).serialize(n.original().getReference()), //
                    serializer(SConcept.class).serialize(n.getConcept()));
            if (TRACE)
                System.err.println("[SERIALIZE] DNode: " + s);
            return s;
        }

        @Override
        public DNode deserialize(String s) {
            if (TRACE)
                System.err.println("[DESERIALIZE] DNode: " + s);
            String[] refCon = Util.decodeFromLength(s.substring(NODE_PREFIX.length()), 2);
            SNodeReference ref = serializer(SNodeReference.class).deserialize(refCon[0]);
            SConcept con = serializer(SConcept.class).deserialize(refCon[1]);
            return DObject.dClareMPS().read(() -> {
                SModel sModel = ref.getModelReference().resolve(null);
                SNode sNode = sModel.getNode(ref.getNodeId());
                return sNode != null ? DNode.of(sNode) : DNode.of(con, ref, sModel.createNode(con, ref.getNodeId()));
            });
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

    private class SConceptConverter implements Serializer<SAbstractConcept> {

        private static final String SCONCEPT_PREFIX = "concept-";

        @Override
        public String serialize(SAbstractConcept concept) {
            return SCONCEPT_PREFIX + mpsPersist().asString(concept);
        }

        @Override
        public SAbstractConcept deserialize(String s) {
            return mpsPersist().createConcept(s.substring(SCONCEPT_PREFIX.length()));
        }

    }

    private class SLanguageConverter implements Serializer<SLanguage> {

        private static final String SLANGUAGE_PREFIX = "slanguage-";

        @Override
        public String serialize(SLanguage lang) {
            return SLANGUAGE_PREFIX + mpsPersist().asString(lang);
        }

        @Override
        public SLanguage deserialize(String s) {
            return mpsPersist().createLanguage(s.substring(SLANGUAGE_PREFIX.length()));
        }
    }

}
