//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2023 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.modelingvalue.collections.List;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.mps.DAttribute.DObservedAttribute;
import org.modelingvalue.dclare.sync.Converters;
import org.modelingvalue.dclare.sync.SerialisationPool.BaseConverter;
import org.modelingvalue.dclare.sync.SerializationHelperWithPool;
import org.modelingvalue.dclare.sync.Util;

import jetbrains.mps.project.ProjectRepository;

public class MPSSerializationHelper extends SerializationHelperWithPool<DObjectType<?>, DObject, DObserved<DObject, Object>> {
    public MPSSerializationHelper(ProjectRepository repos) {
        super(Converters.ALL.appendList(List.of(new DObservedConverter(), new DModuleConverter(repos), new DModelConverter(), new DNodeConverter(), new DServceMetaDataConverter(), new SConceptConverter(), new SLanguageConverter())));
    }

    private static PersistenceFacade mpsPersist() {
        return PersistenceFacade.getInstance();
    }

    @Override
    public Predicate<Mutable> mutableFilter() {
        return m -> {
            boolean ret = false;
            DModel model = m.dAncestor(DModel.class);
            if (model == null || model.isShared()) {
                ret = (m instanceof DModel || m instanceof DNode || m instanceof DServerMetaData) && ((DObject) m).isActive() && !((DObject) m).isDclareOnly();
            }
            return ret;
        };
    }

    @SuppressWarnings("rawtypes")
    @Override
    public Predicate<Setable<DObject, ?>> setableFilter() {
        return s -> {
            return s instanceof DObserved && ((Setable) s) != DObject.DCLARE_ISSUES && !(s instanceof DObservedAttribute) && !((DObserved) s).isDclareOnly();
        };
    }

    @SuppressWarnings("unchecked")
    @Override
    public DObjectType<?> getMutableClass(DObject s) {
        return s.dClass();
    }

    private static class DModuleConverter extends BaseConverter<DModule> {
        private final ProjectRepository repos;

        public DModuleConverter(ProjectRepository repos) {
            super(DModule.class);
            this.repos = repos;
        }

        @Override
        public String serialize(DModule m, Object context) {
            return mpsPersist().asString(m.getModuleId());
        }

        @Override
        public DModule deserialize(String string, Object context) {
            SModuleId id = mpsPersist().createModuleId(string);
            SModule module = DObject.dClareMPS().read(() -> repos.getModule(id));
            return DModule.of(module);
        }
    }

    private static class DModelConverter extends BaseConverter<DModel> {
        public DModelConverter() {
            super(DModel.class);
        }

        @Override
        public String serialize(DModel m, Object context) {
            return mpsPersist().asString(m.reference());
        }

        @Override
        public DModel deserialize(String string, Object context) {
            return DModel.of(mpsPersist().createModelReference(string));
        }
    }

    private static class DNodeConverter extends BaseConverter<DNode> {
        public DNodeConverter() {
            super(DNode.class);
        }

        @Override
        public String serialize(DNode n, Object context) {
            return Util.encodeWithLength(//
                    mpsPersist().asString(n.getConcept()), //
                    mpsPersist().asString(n.tryOriginal().getReference()));
        }

        @Override
        public DNode deserialize(String string, Object context) {
            String[] concRef = Util.decodeFromLength(string, 2);
            SConcept con = (SConcept) mpsPersist().createConcept(concRef[0]);
            SNodeReference ref = mpsPersist().createNodeReference(concRef[1]);
            return DNode.of(con, ref);
        }
    }

    private static class DServceMetaDataConverter extends BaseConverter<DServerMetaData> {
        public DServceMetaDataConverter() {
            super(DServerMetaData.class);
        }

        @Override
        public String serialize(DServerMetaData n, Object context) {
            return Util.encodeWithLength("ServerData");
        }

        @Override
        public DServerMetaData deserialize(String string, Object context) {
            //should never happen
            return null;
        }
    }

    private static class SConceptConverter extends BaseConverter<SAbstractConcept> {
        public SConceptConverter() {
            super(SAbstractConcept.class);
        }

        @Override
        public String serialize(SAbstractConcept concept, Object context) {
            return mpsPersist().asString(concept);
        }

        @Override
        public SAbstractConcept deserialize(String string, Object context) {
            return mpsPersist().createConcept(string);
        }
    }

    private static class SLanguageConverter extends BaseConverter<SLanguage> {
        public SLanguageConverter() {
            super(SLanguage.class);
        }

        @Override
        public String serialize(SLanguage lang, Object context) {
            return mpsPersist().asString(lang);
        }

        @Override
        public SLanguage deserialize(String string, Object context) {
            return mpsPersist().createLanguage(string);
        }
    }

    private static class DObservedConverter extends BaseConverter<DObserved<DObject, Object>> {
        @SuppressWarnings({"unchecked", "rawtypes"})
        public DObservedConverter() {
            super((Class<DObserved<DObject, Object>>) (Class) DObserved.class);
        }

        @Override
        public String serialize(DObserved<DObject, Object> setable, Object context) {
            return setable.id().toString();
        }

        @SuppressWarnings("unchecked")
        @Override
        public DObserved<DObject, Object> deserialize(String string, Object context) {
            assert context instanceof DObjectType;

            DObjectType<DObject> clazz = (DObjectType<DObject>) context;
            return (DObserved<DObject, Object>) clazz.dSetables().filter(x -> x.id().toString().equals(string)).findFirst().orElseThrow();
        }
    }
}
