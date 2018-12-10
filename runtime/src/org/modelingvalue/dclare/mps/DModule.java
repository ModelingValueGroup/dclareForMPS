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

import java.util.HashSet;
import java.util.function.Consumer;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SDependency;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleFacet;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.module.SModuleListener;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.transactions.Compound;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Setable;
import org.modelingvalue.transactions.StopObserverException;

import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.smodel.Language;

public class DModule extends DObject<SModule> implements SModule {

    public static final Observed<DModule, Boolean>        ACTIVE    = Observed.of("ACTIVE", false, (tx, o, b, a) -> {
                                                                        if (DClareMPS.TRACE.get(dClareMPS())) {
                                                                            tx.runNonObserving(                                                          //
                                                                                    () -> {
                                                                                        if (a) {
                                                                                            System.err.println("DCLARE ACTIVATE " + o.getModuleName());
                                                                                        } else {
                                                                                            System.err.println("DCLARE DEACTIVATE " + o.getModuleName());
                                                                                        }
                                                                                    });
                                                                        }
                                                                    });

    public static final Observed<DModule, Set<DModel>>    MODELS    = Observed.of("MODELS", Set.of());

    public static final Observed<DModule, Set<SLanguage>> LANGUAGES = Observed.of("LANGUAGES", Set.of(), (tx, o, b, a) -> {
                                                                        Setable.<Set<SLanguage>, SLanguage> diff(Set.of(), b, a,                         //
                                                                                x -> DClareMPS.ALL_LANGUAGES.set(dClareMPS(), Set::add, x), x -> {
                                                                                                                                                });
                                                                    });

    public static DModule of(SModule original) {
        return original instanceof DModule ? (DModule) original : dClareMPS().DMODULE.get(original);
    }

    protected DModule(SModule original) {
        super(original);
    }

    @Override
    protected ContainingCollection<DModel> getChildren() {
        return MODELS.get(this);
    }

    @Override
    protected DType getType() {
        Set<SLanguage> usedLanguages = LANGUAGES.get(this);
        return new DType() {
            @SuppressWarnings({"unchecked", "rawtypes"})
            @Override
            public Set<Consumer> getRules(Set<IRuleSet> ruleSets) {
                return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getModuleRules())).toSet();
            }

            @SuppressWarnings({"rawtypes", "unchecked"})
            @Override
            public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
                return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getModuleAttributes())).toSet();
            }

            @Override
            public Set<SLanguage> getLanguages() {
                return usedLanguages;
            }

            @Override
            public Object getIdentity() {
                return usedLanguages;
            }
        };
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected void init(DObject parent) {
        super.init(parent);
        LANGUAGES.set(this, languages(original()));
        original().addModuleListener(new Listener(this, dClareMPS()));
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected Compound activate(DObject parent, Compound parentTx) {
        DClareMPS dClareMPS = dClareMPS();
        Compound tx = super.activate(parent, parentTx);
        Observer.of(LANGUAGES, tx, () -> {
            if (tx.equals(DObject.TRANSACTION.get(this))) {
                LANGUAGES.set(this, dClareMPS.run(() -> languages(original())).addAll(MODELS.get(this).flatMap(DModel::getUsedLanguages)));
            } else {
                LANGUAGES.set(this, Set.of());
                throw new StopObserverException("Stopped");
            }
        }).trigger();
        Observer.of(MODELS, tx, () -> {
            if (tx.equals(DObject.TRANSACTION.get(this))) {
                if (!(original() instanceof Language) && !original().isReadOnly() && hasRuleSets()) {
                    MODELS.set(this, dClareMPS.run(() -> models(original())).map(m -> DModel.of(m)).toSet());
                    ACTIVE.set(this, true);
                } else {
                    MODELS.set(this, Set.of());
                    ACTIVE.set(this, false);
                }
            } else {
                MODELS.set(this, Set.of());
                ACTIVE.set(this, false);
                throw new StopObserverException("Stopped");
            }
        }).trigger();
        return tx;
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected void exit(DObject parent, Compound parentTx) {
        super.exit(parent, parentTx);
        original().removeModuleListener(new Listener(this, dClareMPS()));
    }

    @Override
    protected boolean isComplete() {
        return super.isComplete() && ACTIVE.get(this);
    }

    @Override
    public SModuleId getModuleId() {
        return original().getModuleId();
    }

    @Override
    public String getModuleName() {
        return original().getModuleName();
    }

    @Override
    public SModuleReference getModuleReference() {
        return new SModuleReference() {
            SModuleReference ref = original().getModuleReference();

            @Override
            public SModuleId getModuleId() {
                return ref.getModuleId();
            }

            @Override
            public String getModuleName() {
                return ref.getModuleName();
            }

            @Override
            public SModule resolve(SRepository repo) {
                return DModule.of(ref.resolve(repo));
            }
        };
    }

    @Override
    public boolean isReadOnly() {
        return original().isReadOnly();
    }

    @Override
    public boolean isPackaged() {
        return original().isPackaged();
    }

    @Override
    public DRepository getRepository() {
        return (DRepository) PARENT.get(this);
    }

    @Override
    public Iterable<SDependency> getDeclaredDependencies() {
        return original().getDeclaredDependencies();
    }

    @Override
    public java.util.Set<SLanguage> getUsedLanguages() {
        java.util.Set<SLanguage> langs = new HashSet<>();
        for (SLanguage lang : LANGUAGES.get(this)) {
            langs.add(lang);
        }
        return langs;
    }

    @Override
    public int getUsedLanguageVersion(SLanguage usedLanguage) {
        return original().getUsedLanguageVersion(usedLanguage);
    }

    @Override
    public SModel getModel(SModelId id) {
        return MODELS.get(this).filter(m -> m.getModelId().equals(id)).findAny().orElse(null);
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public Iterable<SModel> getModels() {
        return (Set) MODELS.get(this);
    }

    @Override
    public Iterable<SModuleFacet> getFacets() {
        return original().getFacets();
    }

    @Override
    public <T extends SModuleFacet> T getFacet(Class<T> clazz) {
        return original().getFacet(clazz);
    }

    @Override
    public Iterable<ModelRoot> getModelRoots() {
        return MODELS.get(this).map(m -> m.getModelRoot()).toSet();
    }

    @Override
    public void addModuleListener(SModuleListener listener) {
        original().addModuleListener(listener);
    }

    @Override
    public void removeModuleListener(SModuleListener listener) {
        original().removeModuleListener(listener);
    }

    private class Listener extends Pair<DModule, DClareMPS> implements SModuleListener {
        private static final long serialVersionUID = -6842951912074996409L;

        private Listener(DModule dModule, DClareMPS dClareMPS) {
            super(dModule, dClareMPS);
        }

        @Override
        public void modelAdded(SModule module, SModel sModel) {
            b().schedule(() -> {
                if (ACTIVE.get(DModule.this)) {
                    DModel dModel = DModel.of(sModel);
                    MODELS.set(DModule.this, Set::add, dModel);
                }
            });
        }

        @Override
        public void beforeModelRemoved(SModule module, SModel sModel) {
            b().schedule(() -> {
                if (ACTIVE.get(DModule.this)) {
                    DModel dModel = DModel.of(sModel);
                    MODELS.set(DModule.this, Set::remove, dModel);
                }
            });
        }

        @Override
        public void dependencyAdded(SModule module, SDependency dep) {
        }

        @Override
        public void dependencyRemoved(SModule module, SDependency dep) {
        }

        @Override
        public void modelRemoved(SModule module, SModelReference ref) {
        }

        @Override
        public void beforeModelRenamed(SModule module, SModel model, SModelReference newRef) {
        }

        @Override
        public void modelRenamed(SModule module, SModel model, SModelReference oldRef) {
        }

        @Override
        public void languageAdded(SModule module, SLanguage lang) {
            dClareMPS().schedule(() -> LANGUAGES.set(DModule.this, Set::add, lang));
        }

        @Override
        public void languageRemoved(SModule module, SLanguage lang) {
            dClareMPS().schedule(() -> LANGUAGES.set(DModule.this, Set::remove, lang));
        }

        @Override
        public void moduleChanged(SModule module) {
        }

    }

    protected static Set<SLanguage> languages(SModule module) {
        return Collection.of(module.getUsedLanguages()).toSet();
    }

    protected static Set<SModel> models(SModule module) {
        Set<SModel> ist = Set.of();
        for (SModel child : module.getModels()) {
            ist = ist.add(child);
        }
        return ist;
    }

    protected boolean hasRuleSets() {
        return LANGUAGES.get(this).anyMatch(l -> !DClareMPS.RULE_SETS.get(l).isEmpty());
    }

    public DModel findOrAddModel(String name, boolean temporal) {
        DModel found = null;
        for (DModel dModel : MODELS.get(this)) {
            if (dModel.getName().getSimpleName().equals(name)) {
                found = dModel;
            }
        }
        if (found == null) {
            SModuleBase sModule = (SModuleBase) original();
            SModelBase sModel = dClareMPS().run(temporal ? () -> {
                return new DTempModel(name, sModule);
            } : () -> {
                return (SModelBase) sModule.getModelRoots().iterator().next().createModel(name);
            });
            found = DModel.of(sModel);
            MODELS.set(this, Set::add, found);
        }
        return found;

    }

    @Override
    public String toString() {
        return getModuleName();
    }
}
