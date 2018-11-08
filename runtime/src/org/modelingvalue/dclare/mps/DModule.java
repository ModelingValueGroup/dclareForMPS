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
import org.modelingvalue.transactions.ConstantSetable;
import org.modelingvalue.transactions.Getable;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Setable;
import org.modelingvalue.transactions.StopObserverException;

public class DModule extends DObject<SModule> implements SModuleListener, SModule {

    public static final Getable<Pair<DClareMPS, SModule>, DModule> DMODULE   = ConstantSetable.of("DMODULE", p -> new DModule(p.a(), p.b()));

    public static final Observed<DModule, Boolean>                 ACTIVE    = Observed.of("ACTIVE", false, (tx, o, b, a) -> {
                                                                                 if (DClareMPS.TRACE) {
                                                                                     tx.runNonObserving(                                                             //
                                                                                             () -> {
                                                                                                 if (a) {
                                                                                                     System.err.println("DCLARE ACTIVATE " + o.getModuleName());
                                                                                                 } else {
                                                                                                     System.err.println("DCLARE DEACTIVATE " + o.getModuleName());
                                                                                                 }
                                                                                             });
                                                                                 }
                                                                             });

    public static final Observed<DModule, Set<DModel>>             MODELS    = Observed.of("MODELS", Set.of());

    public static final Observed<DModule, Set<SLanguage>>          LANGUAGES = Observed.of("LANGUAGES", Set.of(), (tx, o, b, a) -> {
                                                                                 Setable.<Set<SLanguage>, SLanguage> diff(Set.of(), b, a,                            //
                                                                                         x -> DClareMPS.ALL_LANGUAGES.set(o.dClareMPS, Set::add, x), x -> {
                                                                                                                                                                  });
                                                                             });

    public static DModule of(DClareMPS dClareMPS, SModule original) {
        return original instanceof DModule && ((DModule) original).dClareMPS == dClareMPS ? (DModule) original : DMODULE.get(Pair.of(dClareMPS, original));
    }

    private DModule(DClareMPS dClareMPS, SModule original) {
        super(dClareMPS, original);
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
            public Set<Consumer<DObject>> getRules() {
                return (Set) usedLanguages.flatMap(l -> DClareMPS.RULE_SETS.get(l).flatMap(rs -> Collection.of(rs.getModuleRules()))).toSet();
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
        original().addModuleListener(this);
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected Compound activate(DObject parent, Compound parentTx) {
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
                if (hasRuleSets()) {
                    MODELS.set(this, dClareMPS.run(() -> models(original())).map(m -> DModel.of(dClareMPS, m)).toSet());
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
    protected void exit(DObject parent) {
        original().removeModuleListener(this);
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
                return DModule.of(dClareMPS, ref.resolve(repo));
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

    @Override
    public void modelAdded(SModule module, SModel sModel) {
        dClareMPS.schedule(() -> {
            if (ACTIVE.get(this)) {
                DModel dModel = DModel.of(dClareMPS, sModel);
                MODELS.set(DModule.this, Set::add, dModel);
            }
        });
    }

    @Override
    public void beforeModelRemoved(SModule module, SModel sModel) {
        dClareMPS.schedule(() -> {
            if (ACTIVE.get(this)) {
                DModel dModel = DModel.of(dClareMPS, sModel);
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
        dClareMPS.schedule(() -> LANGUAGES.set(DModule.this, Set::add, lang));
    }

    @Override
    public void languageRemoved(SModule module, SLanguage lang) {
        dClareMPS.schedule(() -> LANGUAGES.set(DModule.this, Set::remove, lang));
    }

    @Override
    public void moduleChanged(SModule module) {
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
        Set<SLanguage> langs = LANGUAGES.get(this);
        return langs.anyMatch(l -> !DClareMPS.RULE_SETS.get(l).isEmpty()) && !langs.anyMatch(l -> l.getQualifiedName().contains("jetbrains.mps.lang"));
    }

    public DModel findOrAddModel(String name) {
        DModel found = null;
        for (DModel dModel : MODELS.get(this)) {
            if (dModel.getName().getSimpleName().equals(name)) {
                found = dModel;
            }
        }
        if (found == null) {
            found = DModel.of(dClareMPS, dClareMPS.run(() -> {
                ModelRoot root = original().getModelRoots().iterator().next();
                return root.createModel(name);
            }));
            MODELS.set(this, Set::add, found);
        }
        return found;
    }

    @Override
    public String toString() {
        return getModuleName();
    }
}
