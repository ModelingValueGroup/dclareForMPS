//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018 Modeling Value Group B.V. (http://modelingvalue.org)                                             ~
//                                                                                                                     ~
// Licensed under the GNU Lesser General Public License v3.0 (the "License"). You may not use this file except in      ~
// compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0  ~
// Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on ~
// an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the  ~
// specific language governing permissions and limitations under the License.                                          ~
//                                                                                                                     ~
// Contributors:                                                                                                       ~
//     Wim Bast, Carel Bast, Tom Brus, Arjan Kok, Ronald Krijgsheld                                                    ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

import java.util.function.Consumer;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.RepositoryAccess;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.module.SRepositoryListener;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.transactions.ConstantSetable;
import org.modelingvalue.transactions.Getable;
import org.modelingvalue.transactions.Observed;

@SuppressWarnings("deprecation")
public class DRepository extends DObject<SRepository> implements SRepositoryListener, SRepository {

    public static final Getable<Pair<DClareMPS, SRepository>, DRepository> DREPOSITORY = ConstantSetable.of("DREPOSITORY", p -> new DRepository(p.a(), p.b()));

    public static final Observed<DRepository, Set<DModule>>                MODULES     = Observed.of("MODULES", Set.of());

    public static DRepository of(DClareMPS dClareMPS, SRepository original) {
        return original instanceof DRepository && ((DRepository) original).dClareMPS == dClareMPS ? (DRepository) original : DREPOSITORY.get(Pair.of(dClareMPS, original));
    }

    private DRepository(DClareMPS dClareMPS, SRepository original) {
        super(dClareMPS, original);
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected ContainingCollection<? extends DObject> getChildren() {
        return MODULES.get(this);
    }

    @Override
    protected DType getType() {
        Set<SLanguage> allLanguages = DClareMPS.ALL_LANGUAGES.get(dClareMPS);
        return new DType() {

            @SuppressWarnings({"rawtypes", "unchecked"})
            @Override
            public Set<Consumer> getRules(Set<IRuleSet> ruleSets) {
                return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getRepositoryRules())).toSet();
            }

            @SuppressWarnings({"rawtypes", "unchecked"})
            @Override
            public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
                return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getRepositoryAttributes())).toSet();
            }

            @Override
            public Set<SLanguage> getLanguages() {
                return allLanguages;
            }

            @Override
            public Object getIdentity() {
                return allLanguages;
            }
        };
    }

    @Override
    protected boolean isComplete() {
        return true;
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected void init(DObject parent) {
        super.init(parent);
        MODULES.set(this, modules(dClareMPS).map(m -> DModule.of(dClareMPS, m)).toSet());
        addRepositoryListener(this);
    }

    protected static Set<SModule> modules(DClareMPS dClareMPS) {
        return Collection.of(dClareMPS.project.getProjectModules()).toSet();
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected void exit(DObject parent) {
        removeRepositoryListener(this);
    }

    @Override
    public SRepository getParent() {
        return null;
    }

    @Override
    public SModule getModule(SModuleId moduleId) {
        return MODULES.get(this).filter(m -> m.getModuleId().equals(moduleId)).findAny().orElse(null);
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public Iterable<SModule> getModules() {
        return (Set) MODULES.get(this);
    }

    @Override
    public ModelAccess getModelAccess() {
        return original().getModelAccess();
    }

    @Override
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
    public void moduleAdded(SModule sModule) {
        dClareMPS.schedule(() -> {
            if (dClareMPS.project.getProjectModules().contains(sModule)) {
                DModule dModule = DModule.of(dClareMPS, sModule);
                MODULES.set(DRepository.this, Set::add, dModule);
            }
        });
    }

    @Override
    public void beforeModuleRemoved(SModule sModule) {
        dClareMPS.schedule(() -> {
            if (dClareMPS.project.getProjectModules().contains(sModule)) {
                DModule dModule = DModule.of(dClareMPS, sModule);
                MODULES.set(DRepository.this, Set::remove, dModule);
            }
        });
    }

    @Override
    public void moduleRemoved(SModuleReference module) {
    }

    @Override
    public void commandStarted(SRepository repository) {
    }

    @Override
    public void commandFinished(SRepository repository) {
    }

    @Override
    public void updateStarted(SRepository repository) {
    }

    @Override
    public void updateFinished(SRepository repository) {
    }

    @Override
    public void repositoryCommandStarted(SRepository repository) {
    }

    @Override
    public void repositoryCommandFinished(SRepository repository) {
    }

}
