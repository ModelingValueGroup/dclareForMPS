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
import org.modelingvalue.transactions.Observed;

@SuppressWarnings("deprecation")
public class DRepository extends DObject<SRepository> implements SRepository {

    public static final Observed<DRepository, Set<DModule>> MODULES = Observed.of("MODULES", Set.of());

    public static DRepository of(SRepository original) {
        return original instanceof DRepository ? (DRepository) original : dClareMPS().DREPOSITORY.get(original);
    }

    protected DRepository(SRepository original) {
        super(original);
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected ContainingCollection<? extends DObject> getChildren() {
        return MODULES.get(this);
    }

    @Override
    public boolean isReadOnly() {
        return false;
    }

    @Override
    protected SRepository getOriginalRepository() {
        return original();
    }

    @Override
    protected DType getType() {
        Set<SLanguage> allLanguages = DClareMPS.ALL_LANGUAGES.get(dClareMPS());
        return new DType() {

            @SuppressWarnings({"rawtypes", "unchecked"})
            @Override
            public Set<DRule> getRules(Set<IRuleSet> ruleSets) {
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
    protected boolean isOwned() {
        return true;
    }

    @Override
    protected void init(DClareMPS dClareMPS) {
        super.init(dClareMPS);
        MODULES.set(this, modules().map(m -> DModule.of(m)).toSet());
        addRepositoryListener(new Listener(this, dClareMPS));
    }

    protected static Set<SModule> modules() {
        return Collection.of(dClareMPS().project.getProjectModules()).toSet();
    }

    @Override
    protected void exit(DClareMPS dClareMPS) {
        super.exit(dClareMPS);
        removeRepositoryListener(new Listener(this, dClareMPS));
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

    private class Listener extends Pair<DRepository, DClareMPS> implements SRepositoryListener {
        private static final long serialVersionUID = -8833673849931733478L;

        private Listener(DRepository dRepository, DClareMPS dClareMPS) {
            super(dRepository, dClareMPS);
        }

        @Override
        public void moduleAdded(SModule sModule) {
            b().schedule(() -> {
                if (b().project.getProjectModules().contains(sModule)) {
                    DModule dModule = DModule.of(sModule);
                    MODULES.set(DRepository.this, Set::add, dModule);
                }
            });
        }

        @Override
        public void beforeModuleRemoved(SModule sModule) {
            b().schedule(() -> {
                if (b().project.getProjectModules().contains(sModule)) {
                    DModule dModule = DModule.of(sModule);
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

}
