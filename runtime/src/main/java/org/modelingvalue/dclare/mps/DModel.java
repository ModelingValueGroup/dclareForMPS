//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2022 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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
import static org.modelingvalue.dclare.mps.DServerMetaData.SHARED_MODELS;

import java.util.Collections;
import java.util.function.Consumer;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.*;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.persistence.DataSource;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.*;

import jetbrains.mps.errors.item.ModelReportItem;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.persistence.DefaultModelRoot;
import jetbrains.mps.persistence.ModelCannotBeCreatedException;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.Solution;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.SModelInternal;

@SuppressWarnings("unused")
public class DModel extends DNewableObject<DModel, SModelReference, SModel> implements SModel {

    @SuppressWarnings({"unchecked", "rawtypes"})
    private static final Consumer<DModel>                                        INIT_ROOT_CONSUMER         = m -> m.addRoot(((Pair<String, DNode>) ((Action) LeafTransaction.getCurrent().leaf()).id()).b());

    protected static final Constant<SModel, Boolean>                             EXTERNAL                   = Constant.of("EXTERNAL", DModel::isExternal);

    private static final Constant<Pair<Set<SLanguage>, Set<String>>, DModelType> MODEL_TYPE                 = Constant.of("MODEL_TYPE", DModelType::new);

    public static final DObserved<DModel, String>                                NAME                       = DObserved.of("NAME", null, dModel -> {
                                                                                                                SModel sModel = dModel.tryOriginal();
                                                                                                                return sModel != null ? sModel.getName().getLongName() : null;
                                                                                                            }, (dModel, pre, post) -> {
                                                                                                                if (post != null) {
                                                                                                                    SModel sModel = dModel.tryOriginal();
                                                                                                                    ((EditableSModel) sModel).rename(post, true);
                                                                                                                }
                                                                                                            });

    public static final DObserved<DModel, Set<DNode>>                            ROOTS                      = DObserved.of("ROOTS", Set.of(), dModel -> {
                                                                                                                SModel sModel = dModel.tryOriginal();
                                                                                                                return sModel != null ? DModel.roots(sModel).map(DNode::of).toSet() : Set.of();
                                                                                                            }, (dModel, pre, post) -> {
                                                                                                                SModel sModel = dModel.tryOriginal();
                                                                                                                Setable.<Set<DNode>, DNode> diff(pre, post, a -> {
                                                                                                                    SNode sNode = a.original();
                                                                                                                    sModel.addRootNode(sNode);
                                                                                                                    a.init(sNode);
                                                                                                                }, r -> {
                                                                                                                    SNode sNode = r.tryOriginal();
                                                                                                                    sModel.removeRootNode(sNode);
                                                                                                                });
                                                                                                            }, (t, m, b, a) -> {
                                                                                                                if (!m.isExternal()) {
                                                                                                                    for (DNode n : a) {
                                                                                                                        if (!b.contains(n)) {
                                                                                                                            CONTAINED.set(n, Boolean.TRUE);
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }, containment);

    public static final DObserved<DModel, Set<SLanguage>>                        USED_LANGUAGES             = DObserved.of("USED_LANGUAGES", Set.of(), dModel -> {
                                                                                                                SModelInternal sModel = (SModelInternal) dModel.tryOriginal();
                                                                                                                return sModel != null ? Collection.of(sModel.importedLanguageIds()).toSet() : Set.of();
                                                                                                            }, (dModel, pre, post) -> {
                                                                                                                SModelInternal sModel = (SModelInternal) dModel.tryOriginal();
                                                                                                                DObserved.map(pre, post, sModel::addLanguage, sModel::deleteLanguageId);
                                                                                                            });

    @SuppressWarnings("deprecation")
    public static final DObserved<DModel, Set<DevKit>>                           USED_DEVKITS               = DObserved.of("USED_DEVKITS", Set.of(), dModel -> {
                                                                                                                SModelInternal sModel = (SModelInternal) dModel.tryOriginal();
                                                                                                                return sModel != null ? Collection.of(sModel.importedDevkits()).                                                                                //
                                                                                                                        map(r -> r.resolve(MPSModuleRepository.getInstance())).filter(DevKit.class).toSet() : Set.of();
                                                                                                            }, (dModel, pre, post) -> {
                                                                                                                SModelInternal sModel = (SModelInternal) dModel.tryOriginal();
                                                                                                                Set<SModuleReference> soll = post.map(dk -> dk.getModuleReference()).toSet();
                                                                                                                Set<SModuleReference> ist = pre.map(dk -> dk.getModuleReference()).toSet();
                                                                                                                DObserved.map(ist, soll, sModel::addDevKit, sModel::deleteDevKit);
                                                                                                            });

    public static final DObserved<DModel, Set<DModel>>                           USED_MODELS                = DObserved.of("USED_MODELS", Set.of(), dModel -> {
                                                                                                                SModelInternal sModel = (SModelInternal) dModel.tryOriginal();
                                                                                                                return sModel != null ? Collection.of(((SModelInternal) sModel).getModelImports()).                                                             //
                                                                                                                        map(r -> r.resolve(null)).notNull().map(DModel::of).toSet() : Set.of();
                                                                                                            }, (o, pre, post) -> {
                                                                                                                SModelInternal sModel = (SModelInternal) o.tryOriginal();
                                                                                                                Set<SModelReference> soll = post.map(DModel::reference).notNull().toSet();
                                                                                                                Set<SModelReference> ist = pre.map(DModel::reference).toSet();
                                                                                                                DObserved.map(ist, soll, sModel::addModelImport, sModel::deleteModelImport);
                                                                                                            });

    protected static final Observed<DModel, ModelRoot>                           MODEL_ROOT                 = Observed.of("MODEL_ROOT", null, plumbing);

    protected static final Observed<DModel, Set<SLanguage>>                      USED_DCLARE_LANGUAGES      = Observed.of("USED_DCLARE_LANGUAGES", Set.of(), plumbing);

    @SuppressWarnings({"rawtypes", "unchecked"})
    protected static final DObserved<DModel, Boolean>                            LOADED                     = DObserved.of("LOADED", Boolean.FALSE, m -> {
                                                                                                                SModel sModel = m.tryOriginal();
                                                                                                                return sModel != null ? sModel.isLoaded() : Boolean.FALSE;
                                                                                                            }, null, plumbing);

    @SuppressWarnings({"rawtypes", "unchecked"})
    private static final DObserved<DModel, Boolean>                              SHARED                     = DObserved.of("SHARED", Boolean.FALSE, null, null, (tx, m, b, a) -> {
                                                                                                                DServerMetaData smd = dClareMPS().getServerMetaData();
                                                                                                                if (a) {
                                                                                                                    SHARED_MODELS.add(smd, m);
                                                                                                                } else {
                                                                                                                    SHARED_MODELS.remove(smd, m);
                                                                                                                }
                                                                                                            }, plumbing);

    private static final Observer<DModel>                                        USED_DCLARE_LANGUAGES_RULE = DObject.observer(USED_DCLARE_LANGUAGES, DModel::allUsedDClareLanguages);

    private static final Observer<DModel>                                        ACTIVATE_RULE              = DObject.observer("$MODEL_ACTIVATE_RULE", m -> {
                                                                                                                if (!m.isExternal()) {
                                                                                                                    boolean shared = SHARED.get(m);
                                                                                                                    if (shared || (!USED_DCLARE_LANGUAGES.get(m).isEmpty() && LOADED.get(m))) {
                                                                                                                        DModel.ROOTS.triggerInitRead(m);
                                                                                                                        if (shared) {
                                                                                                                            USED_LANGUAGES.triggerInitRead(m);
                                                                                                                            USED_DEVKITS.triggerInitRead(m);
                                                                                                                            USED_MODELS.triggerInitRead(m);
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            });
    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                                         OBSERVERS                  = DNewableObject.OBSERVERS.addAll(Set.of(ACTIVATE_RULE, USED_DCLARE_LANGUAGES_RULE));

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                                          SETABLES                   = DNewableObject.SETABLES.addAll(Set.of(NAME, ROOTS, MODEL_ROOT, USED_MODELS, USED_LANGUAGES, USED_DEVKITS, LOADED, SHARED, USED_DCLARE_LANGUAGES));

    public static DModel of(IRuleSet ruleSet, String anonymousType, Object[] identity, boolean temporal) {
        return quotationConstruct(ruleSet, anonymousType, identity, //
                () -> new DModel(new Object[]{DClareMPS.uniqueLong(), temporal, false}));
    }

    protected void triggerAddRoot(DNode root) {
        Action.of(Pair.of("$ADD_ROOT", root), INIT_ROOT_CONSUMER, LeafModifier.preserved, LeafModifier.read).trigger(this);
    }

    private Object addRoot(DNode b) {
        return ROOTS.add(this, b);
    }

    @SuppressWarnings("deprecation")
    protected static DModel read(SModel original) {
        return of(original.getReference(), original);
    }

    public static DModel of(SModel original) {
        return original instanceof DModel ? (DModel) original : of(original.getReference(), original);
    }

    protected static DModel of(SModelReference ref) {
        return referenceConstruct(ref, () -> new DModel(new Object[]{DClareMPS.uniqueLong(), false, false}));
    }

    protected static DModel of(SModelReference ref, SModel original) {
        if (original == null) {
            throw new IllegalArgumentException("Creating a DModel of non-resolveable SModel reference " + ref);
        }
        Boolean external = DModel.EXTERNAL.get(original);
        return originalConstruct(original, ref, () -> new DModel(new Object[]{DClareMPS.uniqueLong(), false, external}));
    }

    protected DModel(Object[] identity) {
        super(identity);
    }

    public boolean isTemporal() {
        return (Boolean) identity[1];
    }

    @Override
    public Long dSortKey() {
        return (Long) identity[0];
    }

    @Override
    public boolean isExternal() {
        return (Boolean) identity[2];
    }

    private static boolean isExternal(SModel sModel) {
        if (sModel.getName().hasStereotype()) {
            return true;
        } else if (dClareMPS().project.getPath(sModel.getModule()) == null) {
            return true;
        } else {
            SModule sModule = sModel.getModule();
            return !(sModule instanceof Language || sModule instanceof Solution);
        }
    }

    @Override
    public Object dNewableType() {
        return isTemporal();
    }

    @Override
    public Object dIdentity() {
        return NAME.get(this);
    }

    @Override
    protected SModelReference reference(SModel read) {
        return read.getReference();
    }

    @Override
    protected SModel create(SModelReference ref) {
        SModuleBase sModule = (SModuleBase) getModule().original();
        String name = NAME.get(this);
        if (name == null && ref != null) {
            name = ref.getModelName();
        } else if (name == null) {
            name = "_" + Long.toString(System.currentTimeMillis(), Character.MAX_RADIX);
        }
        if (isTemporal()) {
            return ref != null ? new DTempModel(ref) : new DTempModel(name, sModule);
        } else {
            return createFileModel(name, ref, sModule);
        }
    }

    private static SModel createFileModel(String modelName, SModelReference ref, SModuleBase sModule) {
        DefaultModelRoot fbmr = (DefaultModelRoot) StreamSupport.stream(sModule.getModelRoots().spliterator(), false).filter(r -> r instanceof DefaultModelRoot).findAny().orElseThrow();
        try {
            SModel sModel = fbmr.createFileModel(modelName, null);
            if (ref != null) {
                sModule.unregisterModel((SModelBase) sModel);
                ((SModelInternal) sModel).changeModelReference(ref);
                sModule.registerModel((SModelBase) sModel);
            }
            return sModel;
        } catch (ModelCannotBeCreatedException e) {
            LeafTransaction.getCurrent().universeTransaction().handleException(e);
            return null;
        }
    }

    @Override
    protected SModel resolve(SModelReference ref) {
        return ref.resolve(null);
    }

    @Override
    protected DModelType getType() {
        Set<SLanguage> ls = USED_DCLARE_LANGUAGES.get(this);
        ls = ls.addAll(getAnonymousLanguages());
        return MODEL_TYPE.get(Pair.of(ls, getAnonymousTypes()));
    }

    private Set<SLanguage> allUsedDClareLanguages() {
        return Collection.concat(USED_LANGUAGES.get(this), USED_DEVKITS.get(this).flatMap(dk -> DClareMPS.DEVKIT_LANGUAGES.get(dk))).filter(l -> !DClareMPS.ACTIVE_RULE_SETS.get(l).isEmpty()).toSet();
    }

    public java.util.Set<SLanguage> getUsedLanguages() {
        return USED_LANGUAGES.get(this).toMutable();
    }

    public void setUsedLanguages(Iterable<SLanguage> languages) {
        USED_LANGUAGES.set(this, Collection.of(languages).toSet());
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    public java.util.Set<SModel> getUsedModels() {
        return ((Set) USED_MODELS.get(this)).toMutable();
    }

    public void setUsedModels(Iterable<DModel> models) {
        USED_MODELS.set(this, Collection.of(models).toSet());
    }

    @Override
    protected void init(DClareMPS dClareMPS, SModel original) {
        DModelListener l = new DModelListener(this, dClareMPS);
        original.removeChangeListener(l);
        original.addChangeListener(l);
        original.removeModelListener(l);
        original.addModelListener(l);
        ((SModelInternal) original).removeModelListener(l);
        ((SModelInternal) original).addModelListener(l);
    }

    @Override
    protected void exit(DClareMPS dClareMPS, SModel original) {
        DModelListener l = new DModelListener(this, dClareMPS);
        original.removeModelListener(l);
        original.removeChangeListener(l);
        ((SModelInternal) original).removeModelListener(l);
    }

    @Override
    protected void read() {
        LOADED.triggerInitRead(this);
        NAME.triggerInitRead(this);
    }

    @Override
    @SuppressWarnings("rawtypes")
    protected void readObservedDeep() {
        Set<Observed> read = DNewableObject.READ_OBSERVEDS.get(this);
        readObserved(read, NAME);
        readObserved(read, LOADED);
        readObserved(read, USED_LANGUAGES);
        readObserved(read, USED_DEVKITS);
        readObserved(read, USED_MODELS);
        readObserved(read, ROOTS);
    }

    @Override
    public DRepository getRepository() {
        return getModule().getRepository();
    }

    @Override
    public SModelId getModelId() {
        SModel sModel = tryOriginal();
        return sModel != null ? sModel.getModelId() : null;
    }

    @Override
    public SModelName getName() {
        String name = NAME.get(this);
        //noinspection ConstantConditions
        return name != null ? new SModelName(name) : null;
    }

    public void setName(String name) {
        NAME.set(this, name);
    }

    public String getNameString() {
        return NAME.get(this);
    }

    public void shareModel(boolean b) {
        SHARED.set(this, b && !isExternal());
    }

    public boolean isShared() {
        return SHARED.get(this);
    }

    @Override
    public SModelReference getReference() {
        //noinspection ConstantConditions
        return reference();
    }

    @Override
    public ModelRoot getModelRoot() {
        return MODEL_ROOT.get(this);
    }

    @Override
    public DModule getModule() {
        return (DModule) dParent();
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public Set<SNode> getRootNodes() {
        return (Set) ROOTS.get(this);
    }

    @Override
    public DNode createNode(SConcept concept) {
        return DNode.of(tryOriginal().createNode(concept));
    }

    @Override
    public DNode createNode(SConcept concept, SNodeId nodeId) {
        return DNode.of(tryOriginal().createNode(concept, nodeId));
    }

    @Override
    public void addRootNode(SNode node) {
        DNode dNode = DNode.of(node);
        ROOTS.set(this, Set::add, dNode);
    }

    @Override
    public void removeRootNode(SNode node) {
        DNode dNode = DNode.of(node);
        ROOTS.set(this, Set::remove, dNode);
    }

    public void setRootNodes(SAbstractConcept concept, Iterable<SNode> roots) {
        Set<DNode> set = Collection.of(roots).notNull().map(DNode::of).toSet();
        ROOTS.set(this, (b, a) -> a.addAll(b.filter(r -> !r.isInstanceOfConcept(concept))), set);
    }

    public java.util.List<SNode> getRootNodes(SAbstractConcept concept) {
        return ROOTS.get(this).filter(r -> r.isInstanceOfConcept(concept)).collect(Collectors.toList());
    }

    @Override
    public DNode getNode(SNodeId id) {
        SModel sModel = tryOriginal();
        SNode sNode = sModel != null ? sModel.getNode(id) : null;
        return sNode != null ? DNode.of(sNode) : null;
    }

    @Override
    public DataSource getSource() {
        SModel sModel = tryOriginal();
        //noinspection ConstantConditions
        return sModel != null ? sModel.getSource() : null;
    }

    @Override
    public boolean isReadOnly() {
        SModel sModel = tryOriginal();
        return sModel != null && sModel.isReadOnly();
    }

    @Override
    public boolean isLoaded() {
        return LOADED.get(this);
    }

    @Override
    public void load() {
        SModel sModel = tryOriginal();
        if (sModel != null) {
            sModel.load();
        }
    }

    @Override
    public Iterable<Problem> getProblems() {
        SModel sModel = tryOriginal();
        return sModel != null ? sModel.getProblems() : Collections.emptySet();
    }

    @Override
    public void unload() {
        SModel sModel = tryOriginal();
        if (sModel != null) {
            sModel.unload();
        }
    }

    @Override
    public void addModelListener(SModelListener l) {
        SModel sModel = tryOriginal();
        if (sModel != null) {
            sModel.addModelListener(l);
        }
    }

    @Override
    public void removeModelListener(SModelListener l) {
        SModel sModel = tryOriginal();
        if (sModel != null) {
            sModel.removeModelListener(l);
        }
    }

    @Override
    public void addAccessListener(SNodeAccessListener l) {
        SModel sModel = tryOriginal();
        if (sModel != null) {
            sModel.addAccessListener(l);
        }

    }

    @Override
    public void removeAccessListener(SNodeAccessListener l) {
        SModel sModel = tryOriginal();
        if (sModel != null) {
            sModel.removeAccessListener(l);
        }

    }

    @Override
    public void addChangeListener(SNodeChangeListener l) {
        SModel sModel = tryOriginal();
        if (sModel != null) {
            sModel.addChangeListener(l);
        }

    }

    @Override
    public void removeChangeListener(SNodeChangeListener l) {
        SModel sModel = tryOriginal();
        if (sModel != null) {
            sModel.removeChangeListener(l);
        }
    }

    protected static Set<SNode> roots(SModel model) {
        Set<SNode> ist = Set.of();
        for (SNode child : model.getRootNodes()) {
            ist = ist.add(child);
        }
        return ist;
    }

    @Override
    public String toString() {
        return "model#" + identity[0] + toStringNameIfAvailable();
    }

    private String toStringNameIfAvailable() {
        LeafTransaction current = LeafTransaction.getCurrent();
        if (current != null) {
            String name = current.state().get(() -> NAME.get(this));
            if (name != null) {
                return '\'' + name + '\'';
            }
        }
        return "";
    }

    @SuppressWarnings("unchecked")
    @Override
    public java.util.Set<ModelReportItem> getIssues() {
        return (java.util.Set<ModelReportItem>) super.getIssues();
    }

    @Override
    @Deprecated
    public String getModelName() {
        throw new UnsupportedOperationException();
    }

    @SuppressWarnings("rawtypes")
    @Override
    public boolean dIsOrphan(State state) {
        return !isExternal() && super.dIsOrphan(state);
    }

    public final static class RootsOfConcept extends Pair<String, SAbstractConcept> {

        private static final long serialVersionUID = 7134080093293245921L;

        protected RootsOfConcept(SAbstractConcept c) {
            super("$ROOTS", c);
        }

        @Override
        public String toString() {
            return "ROOTS<" + b().getName() + ">";
        }

    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    protected Pair<DObject, DObserved<DObject, ?>> readParent() {
        SModule sModule = dClareMPS().read(() -> tryOriginal().getModule());
        return sModule != null ? (Pair) Pair.of(DModule.of(sModule), DModule.MODELS) : null;
    }

}
