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

import static org.modelingvalue.dclare.SetableModifier.containment;
import static org.modelingvalue.dclare.SetableModifier.plumbing;

import java.util.function.Function;
import java.util.stream.Collectors;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.RepositoryAccess;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.module.SRepositoryListener;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.TriConsumer;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;

import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.project.ProjectRepository;

@SuppressWarnings("deprecation")
public class DRepository extends DFromOriginalObject<ProjectRepository> implements SRepository {

    private static final Constant<Set<SLanguage>, DRepositoryType>        REPOSITORY_TYPE          = Constant.of("REPOSITORY_TYPE", DRepositoryType::new);

    @SuppressWarnings({"unchecked", "rawtypes"})
    protected static final DObserved<DRepository, Set<DModule>>           MODULES                  = DObserved.of("MODULES", Set.of(), r -> {
                                                                                                       return Collection.of(dClareMPS().project.getProjectModules()).map(DModule::of).toSet();
                                                                                                   }, null, containment);

    public static final Constant<DRepository, Set<SLanguage>>             ALL_LANGUAGES_WITH_RULES = Constant.of("ALL_LANGUAGES_WITH_RULES", Set.of(), r -> {
                                                                                                       return MODULES.get(r).flatMap(m -> DModule.LANGUAGES_WITH_RULES.get(m)).toSet();
                                                                                                   });

    public static final Constant<DRepository, List<IAspect>>              ALL_ASPECTS              = Constant.of("ALL_ASPECTS", List.of(), r -> {
                                                                                                       return ALL_LANGUAGES_WITH_RULES.get(r).flatMap(l -> DClareMPS.ASPECTS.get(l)).sortedBy(IAspect::getName).toList();
                                                                                                   });

    @SuppressWarnings({"rawtypes", "unchecked"})
    protected static final DObserved<DRepository, Set<?>>                 EXCEPTIONS               = DObserved.of("EXCEPTIONS", Set.of(), (Function) null, (TriConsumer) null, plumbing);

    protected static final Setable<DRepository, Set<IssueKindReportItem>> ALL_MPS_ISSUES           = Setable.of("$ALL_MPS_ISSUES", Set.of());

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                                  OBSERVERS                = DObject.OBSERVERS;

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                                   SETABLES                 = DObject.SETABLES.addAll(Set.of(MODULES, ALL_MPS_ISSUES));

    protected DRepository(ProjectRepository original) {
        super(original);
    }

    @Override
    public SModel getModel(SModelId modelId) {
        SModel sModel = this.original().getModel(modelId);
        return DModel.of(sModel);
    }

    @Override
    protected DRepositoryType getType() {
        return REPOSITORY_TYPE.get(ALL_LANGUAGES_WITH_RULES.get(this));
    }

    @Override
    protected void read(DClareMPS dClareMPS) {
        MODULES.triggerInitRead(this);
    }

    @Override
    protected void init(DClareMPS dClareMPS) {
        super.init(dClareMPS);
        addRepositoryListener(new DRepositoryListener(this, dClareMPS));
    }

    @Override
    protected void exit(DClareMPS dClareMPS) {
        super.exit(dClareMPS);
        removeRepositoryListener(new DRepositoryListener(this, dClareMPS));
    }

    @Override
    protected void stop(DClareMPS dClareMPS) {
        super.stop(dClareMPS);
        for (DModule child : MODULES.get(this)) {
            child.stop(dClareMPS);
        }
    }

    @Override
    public SModule getModule(SModuleId moduleId) {
        return MODULES.get(this).filter(m -> m.getModuleId().equals(moduleId)).findAny().orElse(DModule.of(original().getModule(moduleId)));
    }

    @Override
    public Iterable<SModule> getModules() {
        return MODULES.get(this).filter(m -> !m.isExternal()).collect(Collectors.toSet());
    }

    @Override
    public ModelAccess getModelAccess() {
        return original().getModelAccess();
    }

    @Override
    @Deprecated
    public RepositoryAccess getRepositoryAccess() {
        return original().getRepositoryAccess();
    }

    @Override
    public void saveAll() {
        original().saveAll();
    }

    @Override
    public void addRepositoryListener(SRepositoryListener listener) {
        original().addRepositoryListener(listener);
    }

    @Override
    public void removeRepositoryListener(SRepositoryListener listener) {
        original().removeRepositoryListener(listener);
    }

    @Override
    public DRepository getParent() {
        return null;
    }

    @Override
    public boolean isExternal() {
        return false;
    }

    @Override
    public String toString() {
        return original().getProject().getName();
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    protected Pair<DObject, DObserved<DObject, ?>> readParent() {
        return (Pair) Pair.of(dClareMPS(), DClareMPS.REPOSITORY_CONTAINER);
    }

}
