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

import static org.modelingvalue.dclare.CoreSetableModifier.containment;
import static org.modelingvalue.dclare.CoreSetableModifier.synthetic;

import java.util.HashSet;
import java.util.stream.Collectors;

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
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.Action;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Priority;
import org.modelingvalue.dclare.Setable;

import jetbrains.mps.errors.item.ModuleReportItem;
import jetbrains.mps.model.ModelDeleteHelper;
import jetbrains.mps.project.Solution;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;

@SuppressWarnings("unused")
public class DModule extends DFromOriginalObject<SModule> implements SModule {

    private static final Constant<SModule, DModule>                           DMODULE        = Constant.of("DMODULE", DModule::new);

    private static final Constant<Pair<Boolean, Set<SLanguage>>, DModuleType> MODULE_TYPE    = Constant.of("MODULE_TYPE", DModuleType::new);

    protected static final DObserved<DModule, Set<DModel>>                    MODELS         = DObserved.of("MODELS", Set.of(), (dModule, pre, post) -> {
                                                                                                 Set<DModel> ist = models(dModule.original()).sequential().map(DModel::of).toSet();
                                                                                                 if (!ist.equals(post)) {
                                                                                                     Setable.<Set<DModel>, DModel> diff(ist, post,                                                  //
                                                                                                             DMatchedObject::original,                                                              //
                                                                                                             r -> new ModelDeleteHelper(r.tryOriginal()).delete());
                                                                                                     return true;
                                                                                                 } else {
                                                                                                     return false;
                                                                                                 }
                                                                                             }, containment);

    protected static final Observed<DModule, Set<SLanguage>>                  LANGUAGES      = Observed.of("LANGUAGES", Set.of(), (tx, o, pre, post) -> {
                                                                                                 Setable.<Set<SLanguage>, SLanguage> diff(pre, post,                                                //
                                                                                                         a -> DClareMPS.ALL_LANGUAGES.set(dClareMPS(), Set::add, a),                                //
                                                                                                         r -> {
                                                                                                         });
                                                                                             }, synthetic);

    private static final Observer<DModule>                                    LANGUAGES_RULE = DObject.observer(LANGUAGES, o -> LANGUAGES.set(o, dClareMPS().read(() -> languages(o.original()))    //
            .addAll(MODELS.get(o).flatMap(DModel::allUsedLanguages))));

    private static final Action<DModule>                                      READ_MODELS    = Action.of("$READ_MODELS", m -> {
                                                                                                 MODELS.set(m, dClareMPS().read(() -> models(m.original()).sequential().map(DModel::read).toSet()));
                                                                                             }, Priority.urgent);
    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                                      OBSERVERS      = DObject.OBSERVERS.add(LANGUAGES_RULE);

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                                       SETABLES       = DObject.SETABLES.addAll(Set.of(MODELS, LANGUAGES));

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
        Set<SLanguage> languages = LANGUAGES.get(this).filter(l -> !DClareMPS.RULE_SETS.get(l).isEmpty()).toSet();
        return MODULE_TYPE.get(Pair.of(isExternal(), languages));
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
            READ_MODELS.trigger(this);
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
        return new SModuleReference() {
            final SModuleReference ref = original().getModuleReference();

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

    @Override
    public Iterable<SModel> getModels() {
        return MODELS.get(this).collect(Collectors.toSet());
    }

    public void setModels(Iterable<DModel> models) {
        MODELS.set(this, Collection.of(models).notNull().map(DModel::of).toSet());
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

    protected static Set<SLanguage> languages(SModule module) {
        return Collection.of(module.getUsedLanguages()).sequential().toSet();
    }

    protected static Set<SModel> models(SModule module) {
        Set<SModel> ist = Set.of();
        for (SModel child : module instanceof Language ? ((Language) module).getAccessoryModels() : module instanceof Solution ? module.getModels() : Set.<SModel> of()) {
            if (child instanceof EditableSModel) {
                ist = ist.add(child);
            }
        }
        return ist;
    }

    protected static boolean hasRuleSets(Set<SLanguage> languages) {
        return languages.anyMatch(l -> !DClareMPS.RULE_SETS.get(l).isEmpty());
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

}
