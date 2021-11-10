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

import org.jetbrains.mps.openapi.language.*;
import org.jetbrains.mps.openapi.model.*;
import org.jetbrains.mps.openapi.module.*;
import org.jetbrains.mps.openapi.persistence.*;
import org.modelingvalue.dclare.*;
import org.modelingvalue.dclare.mps.DAttribute.*;
import org.modelingvalue.dclare.sync.Converters.*;
import org.modelingvalue.dclare.sync.SerialisationPool.*;
import org.modelingvalue.dclare.sync.*;

import java.util.function.*;

import jetbrains.mps.project.*;

public class MPSSerializationHelper extends SerializationHelperWithPool<DObjectType<DObject>, DObject, DObserved<DObject, Object>> {
    public MPSSerializationHelper(ProjectRepository repos) {
        super(
                new DObservedConverter(),
                new DModuleConverter(repos),
                new DModelConverter(),
                new DNodeConverter(),
                new SConceptConverter(),
                new SLanguageConverter(),
                new ImmutableListConverter(),
                new ImmutableSetConverter()
        );
    }

    private static PersistenceFacade mpsPersist() {
        return PersistenceFacade.getInstance();
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

    private static class DModuleConverter extends BaseConverter<DModule> {
        private final ProjectRepository repos;

        public DModuleConverter(ProjectRepository repos) {
            super(DModule.class);
            this.repos = repos;
        }

        @Override
        public String serialize(Object context, DModule m) {
            return mpsPersist().asString(m.getModuleId());
        }

        @Override
        public DModule deserialize(Object context, String string) {
            SModuleId id     = mpsPersist().createModuleId(string);
            SModule   module = DObject.dClareMPS().read(() -> repos.getModule(id));
            return DModule.of(module);
        }
    }

    private static class DModelConverter extends BaseConverter<DModel> {
        public DModelConverter() {
            super(DModel.class);
        }

        @Override
        public String serialize(Object context, DModel m) {
            return mpsPersist().asString(m.reference());
        }

        @Override
        public DModel deserialize(Object context, String string) {
            return DModel.of(mpsPersist().createModelReference(string));
        }
    }

    private static class DNodeConverter extends BaseConverter<DNode> {
        public DNodeConverter() {
            super(DNode.class);
        }

        @Override
        public String serialize(Object context, DNode n) {
            return Util.encodeWithLength(//
                    mpsPersist().asString(n.getConcept()), //
                    mpsPersist().asString(n.original().getReference()));
        }

        @Override
        public DNode deserialize(Object context, String string) {
            String[]       concRef = Util.decodeFromLength(string, 2);
            SConcept       con     = (SConcept) mpsPersist().createConcept(concRef[0]);
            SNodeReference ref     = mpsPersist().createNodeReference(concRef[1]);
            return DNode.of(con, ref);
        }
    }

    private static class SConceptConverter extends BaseConverter<SAbstractConcept> {
        public SConceptConverter() {
            super(SAbstractConcept.class);
        }

        @Override
        public String serialize(Object context, SAbstractConcept concept) {
            return mpsPersist().asString(concept);
        }

        @Override
        public SAbstractConcept deserialize(Object context, String string) {
            return mpsPersist().createConcept(string);
        }
    }

    private static class SLanguageConverter extends BaseConverter<SLanguage> {
        public SLanguageConverter() {
            super(SLanguage.class);
        }

        @Override
        public String serialize(Object context, SLanguage lang) {
            return mpsPersist().asString(lang);
        }

        @Override
        public SLanguage deserialize(Object context, String string) {
            return mpsPersist().createLanguage(string);
        }
    }

    private static class DObservedConverter extends BaseConverter<DObserved<DObject, Object>> {
        @SuppressWarnings({"unchecked", "rawtypes"})
        public DObservedConverter() {
            super((Class<DObserved<DObject, Object>>) (Class) DObserved.class);
        }

        @Override
        public String serialize(Object context, DObserved<DObject, Object> setable) {
            return setable.id().toString();
        }

        @SuppressWarnings("unchecked")
        @Override
        public DObserved<DObject, Object> deserialize(Object context, String string) {
            assert context instanceof DObjectType;

            DObjectType<DObject> clazz = (DObjectType<DObject>) context;
            return (DObserved<DObject, Object>) clazz.dSetables().filter(x -> x.id().toString().equals(string)).findFirst().orElseThrow();
        }
    }
}
