//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2024 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import static org.modelingvalue.dclare.CoreSetableModifier.containment;

import java.util.ArrayList;
import java.util.HashSet;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.module.SDependency;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleFacet;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.module.SModuleListener;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.State;

import jetbrains.mps.errors.item.ModuleReportItem;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.model.ModelDeleteHelper;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.Solution;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;

@SuppressWarnings("unused")
public class DModule extends DFromOriginalObject<SModule> implements SModule {

    private static final Constant<SModule, DModule>            DMODULE              = Constant.of("DMODULE", DModule::new);

    private static final Constant<Set<SLanguage>, DModuleType> MODULE_TYPE          = Constant.of("MODULE_TYPE", DModuleType::new);

    public static final DObserved<DModule, Set<DModel>>        MODELS               = DObserved.of("MODELS", Set.of(), m -> {
                                                                                        return m.models().map(DModel::of).asSet();
                                                                                    }, (m, pre, post) -> {
                                                                                        if (m.isSolution()) {
                                                                                            SModule sModule = m.original();
                                                                                            Setable.<Set<DModel>, DModel> diff(pre, post,                                          //
                                                                                                    a -> {
                                                                                                        SModel sModel = a.original();
                                                                                                        if (sModel.getModule() != sModule) {
                                                                                                            ((SModuleBase) sModule).registerModel((SModelBase) sModel);
                                                                                                        }
                                                                                                        a.init(sModel);
                                                                                                    },                                                                             //
                                                                                                    r -> new ModelDeleteHelper(r.tryOriginal()).delete());
                                                                                        }
                                                                                    }, containment);

    public static final DObserved<DModule, Set<SLanguage>>     LANGUAGES            = DObserved.of("LANGUAGES", Set.of(), m -> {
                                                                                        return Collection.of(m.original().getUsedLanguages()).asSet();
                                                                                    }, null);

    public static final DObserved<DModule, Set<DDependency>>   DEPENDENCIES         = DObserved.of("DEPENDENCIES", Set.of(), m -> {
                                                                                        return Collection.of(m.original().getDeclaredDependencies()).map(DDependency::new).asSet();
                                                                                    }, null);

    public static final Constant<DModule, Set<SLanguage>>      LANGUAGES_WITH_RULES = Constant.of("LANGUAGES_WITH_RULE_ASPECT", Set.of(), m -> {
                                                                                        return LANGUAGES.get(m).filter(l -> !DClareMPS.ACTIVE_RULE_SETS.get(l).isEmpty()).asSet();
                                                                                    });
    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                       OBSERVERS            = DMutable.OBSERVERS;

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                        SETABLES             = DMutable.SETABLES.addAll(Set.of(MODELS, LANGUAGES, DEPENDENCIES, LANGUAGES_WITH_RULES));

    public static DModule of(SModule original) {
        return original instanceof DModule ? (DModule) original : DMODULE.get(original);
    }

    protected DModule(SModule original) {
        super(original);
    }

    @Override
    public boolean isExternal() {
        return dClareMPS().project.getPath(original()) == null;
    }

    @Override
    protected DModuleType getType() {
        Set<SLanguage> languages = LANGUAGES_WITH_RULES.get(this);
        if (isLanguage() && !isExternal()) {
            languages = languages.addAll(DRepository.CONTAINED_LANGUAGES_WITH_RULES.get(getRepository()));
        }
        return MODULE_TYPE.get(languages);
    }

    @Override
    protected DModuleType getBootstrapType() {
        return MODULE_TYPE.get(Set.of());
    }

    @Override
    protected void init(DClareMPS dClareMPS) {
        super.init(dClareMPS);
        original().addModuleListener(new DModuleListener(this, dClareMPS));
    }

    @Override
    protected void exit(DClareMPS dClareMPS) {
        super.exit(dClareMPS);
        original().removeModuleListener(new DModuleListener(this, dClareMPS));
    }

    @Override
    protected void stop(DClareMPS dClareMPS) {
        super.stop(dClareMPS);
        for (DModel child : MODELS.get(this)) {
            child.stop(dClareMPS);
        }
    }

    @Override
    protected void read(DClareMPS dClareMPS) {
        if (!isExternal()) {
            CONTAINED.set(this, Boolean.TRUE);
            MODELS.triggerInitRead(this);
            LANGUAGES.triggerInitRead(this);
            DEPENDENCIES.triggerInitRead(this);
        }
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
        return new DModuleReference(original().getModuleReference());
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
    public java.util.List<SDependency> getDeclaredDependencies() {
        java.util.List<SDependency> deps = new ArrayList<>();
        for (DDependency dep : DEPENDENCIES.get(this)) {
            deps.add(dep);
        }
        return deps;
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
        return MODELS.get(this).filter(m -> m.getModelId().equals(id)).findAny().orElse(DModel.of(original().getModel(id)));
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public Iterable<SModel> getModels() {
        return ((Set) MODELS.get(this)).toMutable();
    }

    public void setModels(Iterable<DModel> models) {
        MODELS.set(this, Collection.of(models).notNull().map(DModel::of).asSet());
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
        return original().getModelRoots();
    }

    @Override
    public void addModuleListener(SModuleListener listener) {
        original().addModuleListener(listener);
    }

    @Override
    public void removeModuleListener(SModuleListener listener) {
        original().removeModuleListener(listener);
    }

    protected Set<SModel> models() {
        Set<SModel> ist = Set.of();
        if (isLanguage() || isSolution()) {
            for (SModel child : original().getModels()) {
                if (child instanceof EditableSModel) {
                    ist = ist.add(child);
                }
            }
        }
        return ist;
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

    public boolean isLanguage() {
        return original() instanceof Language;
    }

    public boolean isGenerator() {
        return original() instanceof Generator;
    }

    public boolean isSolution() {
        return original() instanceof Solution;
    }

    public boolean isDevKit() {
        return original() instanceof DevKit;
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    protected Pair<DMutable, DObserved<DMutable, ?>> readParent() {
        return (Pair) Pair.of(dClareMPS().getRepository(), DRepository.MODULES);
    }

    @SuppressWarnings("rawtypes")
    @Override
    public boolean dIsOrphan(State state) {
        return !isExternal() && super.dIsOrphan(state);
    }

}
