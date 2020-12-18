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

import java.util.stream.Collectors;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.RepositoryAccess;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.module.SRepositoryListener;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.dclare.Action;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.NonCheckingObserved;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;

import jetbrains.mps.project.ProjectRepository;

@SuppressWarnings("deprecation")
public class DRepository extends DFromOriginalObject<ProjectRepository> implements SRepository {

    private static final Constant<Set<SLanguage>, DRepositoryType> REPOSITORY_TYPE = Constant.of("REPOSITORY_TYPE", ls -> new DRepositoryType(ls));

    protected static final Observed<DRepository, Set<DModule>>     REFERENCED      = NonCheckingObserved.of("REFERENCED", Set.of());

    protected static final DObserved<DRepository, Set<DModule>>    MODULES         = DObserved.of("MODULES", Set.of(), false, true, null, false, null, null);

    protected static final DObserved<DRepository, Set<?>>          EXCEPTIONS      = DObserved.of("EXCEPTIONS", Set.of(), false, false, null, false, null, null);

    private static final Observer<DRepository>                     MODULES_RULE    = DObject.observer(MODULES, o -> {
                                                                                       Set<DModule> referenced = REFERENCED.get(o);
                                                                                       MODULES.set(o, Set::addAll, referenced);
                                                                                   });

    private static final Action<DRepository>                       READ_MODULES    = Action.of("$READ_MODULES", r -> MODULES.set(r, dClareMPS().read(DRepository::modules).map(DModule::of).toSet()));

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                           OBSERVERS       = DObject.OBSERVERS.add(MODULES_RULE);

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                            SETABLES        = DObject.SETABLES.addAll(Set.of(MODULES, REFERENCED));

    protected DRepository(ProjectRepository original) {
        super(original);
    }

    @Override
    protected DRepositoryType getType() {
        return REPOSITORY_TYPE.get(DClareMPS.ALL_LANGUAGES.get(dClareMPS()).filter(l -> !DClareMPS.RULE_SETS.get(l).isEmpty()).toSet());
    }

    @Override
    protected void read(DClareMPS dClareMPS) {
        READ_MODULES.trigger(this);
    }

    protected static Set<SModule> modules() {
        return Collection.of(dClareMPS().project.getProjectModules()).sequential().toSet();
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
        return MODULES.get(this).filter(m -> m.getModuleId().equals(moduleId)).findAny().orElse(null);
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

}
