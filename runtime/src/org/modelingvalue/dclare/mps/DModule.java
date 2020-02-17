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

import java.util.HashSet;

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
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.Action;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.Direction;
import org.modelingvalue.dclare.NonCheckingObserved;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Priority;
import org.modelingvalue.dclare.Setable;

import jetbrains.mps.errors.item.ModuleReportItem;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.smodel.Language;

@SuppressWarnings("unused")
public class DModule extends DFromOriginalObject<SModule> implements SModule {

    private static final Constant<SModule, DModule>                     DMODULE        = Constant.of("DMODULE", DModule::new);

    private static final Constant<Pair<Boolean, Set<SLanguage>>, DType> MODULE_TYPE    = Constant.of("MODULE_TYPE", p -> new DType(p) {
                                                                                           @SuppressWarnings({"unchecked", "rawtypes"})
                                                                                           @Override
                                                                                           public Set<DRule> getRules(Set<IRuleSet> ruleSets) {
                                                                                               //noinspection RedundantCast
                                                                                               return p.a() ? (Set) ruleSets.flatMap(rs -> Collection.of(rs.getModuleRules())).toSet() : Set.of();
                                                                                           }

                                                                                           @SuppressWarnings({"rawtypes", "unchecked"})
                                                                                           @Override
                                                                                           public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
                                                                                               //noinspection RedundantCast
                                                                                               return p.a() ? (Set) ruleSets.flatMap(rs -> Collection.of(rs.getModuleAttributes())).toSet() : Set.of();
                                                                                           }

                                                                                           @Override
                                                                                           public Set<SLanguage> getLanguages() {
                                                                                               return p.b();
                                                                                           }

                                                                                           @SuppressWarnings("rawtypes")
                                                                                           @Override
                                                                                           protected Collection<Observer> observers() {
                                                                                               return OBSERVERS;
                                                                                           }

                                                                                           @SuppressWarnings("rawtypes")
                                                                                           @Override
                                                                                           public Collection<Setable> setables() {
                                                                                               return SETABLES;
                                                                                           }
                                                                                       });

    public static final Observed<DModule, Set<DModel>>                  REFERENCED     = NonCheckingObserved.of("REFERENCED", Set.of());

    public static final Observed<DModule, Set<DModel>>                  MODELS         = DObserved.of("MODELS", Set.of(), false, true, null, false, null, null);

    public static final Observed<DModule, Set<SLanguage>>               LANGUAGES      = NonCheckingObserved.of("LANGUAGES", Set.of(), (tx, o, b, a) -> Setable.<Set<SLanguage>, SLanguage> diff(b, a,                                                                  //
            x -> DClareMPS.ALL_LANGUAGES.set(dClareMPS(), Set::add, x), x -> {
            }));

    private static final Observer<DModule>                              LANGUAGES_RULE = DObject.observer(LANGUAGES, o -> LANGUAGES.set(o, dClareMPS().read(() -> languages(o.original())).addAll(MODELS.get(o).flatMap(DModel::getUsedLanguages))), Priority.preDepth);

    private static final Observer<DModule>                              MODELS_RULE    = DObject.observer(MODELS, o -> {
                                                                                           if (!o.isReadOnly() && o.hasRuleSets(LANGUAGES.get(o))) {
                                                                                               MODELS.set(o, dClareMPS().read(() -> models(o.original())).map(DModel::of).toSet().addAll(REFERENCED.get(o)));
                                                                                           } else {
                                                                                               MODELS.set(o, REFERENCED.get(o));
                                                                                           }
                                                                                       }, Priority.preDepth);

    private static final Action<DModule>                                READ_MODELS    = Action.of("$READ_MODELS", m -> {
                                                                                           Set<SLanguage> languages = dClareMPS().read(() -> languages(m.original()));
                                                                                           LANGUAGES.set(m, languages);
                                                                                           if (!m.isReadOnly() && m.hasRuleSets(languages)) {
                                                                                               MODELS.set(m, dClareMPS().read(() -> models(m.original())).map(DModel::of).toSet());
                                                                                           }
                                                                                       }, Direction.forward, Priority.preDepth);
    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                                OBSERVERS      = DObject.OBSERVERS.addAll(Set.of(LANGUAGES_RULE, MODELS_RULE));

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                                 SETABLES       = DObject.SETABLES.addAll(Set.of(REFERENCED, MODELS, LANGUAGES));

    public static DModule of(SModule original) {
        return original instanceof DModule ? (DModule) original : DMODULE.get(original);
    }

    protected DModule(SModule original) {
        super(original);
    }

    @Override
    protected SRepository getOriginalRepository() {
        return original().getRepository();
    }

    @Override
    protected DType getType() {
        return MODULE_TYPE.get(Pair.of(!isReadOnly(), LANGUAGES.get(this).filter(l -> !DClareMPS.RULE_SETS.get(l).isEmpty()).toSet()));
    }

    @Override
    protected void init(DClareMPS dClareMPS) {
        super.init(dClareMPS);
        DClareMPS.DCLARE_MPS.put(original().getRepository(), dClareMPS);
        original().addModuleListener(new Listener(this, dClareMPS));
    }

    @Override
    protected void exit(DClareMPS dClareMPS) {
        super.exit(dClareMPS);
        original().removeModuleListener(new Listener(this, dClareMPS));
        DClareMPS.DCLARE_MPS.remove(original().getRepository());
    }

    @Override
    protected void stop(DClareMPS dClareMPS) {
        super.stop(dClareMPS);
        for (DModel child : dClareMPS.read(() -> models(original())).map(DModel::of)) {
            child.stop(dClareMPS);
        }
    }

    @Override
    protected void read(DClareMPS dClareMPS) {
        READ_MODELS.trigger(this);
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
        return (DRepository) dParent();
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
        return MODELS.get(this).map(DModel::getModelRoot).toSet();
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
            b().handleMPSChange(() -> {
                if (!isReadOnly() && hasRuleSets(LANGUAGES.get(DModule.this))) {
                    if (!(module instanceof Language) || ((Language) module).isAccessoryModel(sModel.getReference())) {
                        DModel dModel = DModel.of(sModel);
                        MODELS.set(DModule.this, Set::add, dModel);
                    }
                }
            });
        }

        @Override
        public void beforeModelRemoved(SModule module, SModel sModel) {
            b().handleMPSChange(() -> {
                if (!isReadOnly() && hasRuleSets(LANGUAGES.get(DModule.this))) {
                    if (!(module instanceof Language) || ((Language) module).isAccessoryModel(sModel.getReference())) {
                        DModel dModel = DModel.of(sModel);
                        MODELS.set(DModule.this, Set::remove, dModel);
                    }
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
            dClareMPS().handleMPSChange(() -> LANGUAGES.set(DModule.this, Set::add, lang));
        }

        @Override
        public void languageRemoved(SModule module, SLanguage lang) {
            dClareMPS().handleMPSChange(() -> LANGUAGES.set(DModule.this, Set::remove, lang));
        }

        @Override
        public void moduleChanged(SModule module) {
            System.err.println("moduleChanged");
        }

    }

    protected static Set<SLanguage> languages(SModule module) {
        return Collection.of(module.getUsedLanguages()).toSet();
    }

    protected static Set<SModel> models(SModule module) {
        Set<SModel> ist = Set.of();
        for (SModel child : module instanceof Language ? ((Language) module).getAccessoryModels() : module.getModels()) {
            ist = ist.add(child);
        }
        return ist;
    }

    protected boolean hasRuleSets(Set<SLanguage> languages) {
        return languages.anyMatch(l -> !DClareMPS.RULE_SETS.get(l).isEmpty());
    }

    public DModel findOrAddModel(String name, boolean temporal) {
        DModel found = null;
        for (DModel dModel : MODELS.get(this)) {
            if (dModel.getName().getSimpleName().equals(name)) {
                found = dModel;
            }
        }
        if (found == null && (original() instanceof Language || !hasRuleSets(LANGUAGES.get(this)))) {
            for (SModel sModel : dClareMPS().read(() -> original().getModels())) {
                if (sModel.getName().getSimpleName().equals(name)) {
                    found = DModel.of(sModel);
                    REFERENCED.set(this, Set::add, found);
                    MODELS.set(this, Set::add, found);
                    DModel.USED_LANGUAGES.set(found, Set::addAll, DClareMPS.ALL_LANGUAGES.get(dClareMPS()));
                }
            }
        }
        if (found == null) {
            SModuleBase sModule = (SModuleBase) original();
            SModelBase sModel = dClareMPS().command(temporal ? () -> new DTempModel(name, sModule) : () -> (SModelBase) sModule.getModelRoots().iterator().next().createModel(name));
            found = DModel.of(sModel);
            MODELS.set(this, Set::add, found);
            if (original() instanceof Language || !hasRuleSets(LANGUAGES.get(this))) {
                DModel.USED_LANGUAGES.set(found, Set::addAll, DClareMPS.ALL_LANGUAGES.get(dClareMPS()));
                REFERENCED.set(this, Set::add, found);
            }
        }
        return found;

    }

    @Override
    public String toString() {
        return getModuleName();
    }

    @SuppressWarnings("unchecked")
    @Override
    public java.util.Set<ModuleReportItem> getIssues() {
        return (java.util.Set<ModuleReportItem>) super.getIssues();
    }

}
