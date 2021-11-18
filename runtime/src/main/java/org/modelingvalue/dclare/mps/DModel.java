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

import static java.lang.Boolean.TRUE;
import static org.modelingvalue.dclare.CoreSetableModifier.*;

import java.util.Collections;
import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.jetbrains.mps.openapi.language.*;
import org.jetbrains.mps.openapi.model.*;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.persistence.DataSource;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.modelingvalue.collections.*;
import org.modelingvalue.collections.util.*;
import org.modelingvalue.dclare.*;
import org.modelingvalue.dclare.mps.DRule.DObserverTransaction;

import jetbrains.mps.errors.item.ModelReportItem;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.persistence.DefaultModelRoot;
import jetbrains.mps.persistence.ModelCannotBeCreatedException;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.Solution;
import jetbrains.mps.smodel.*;

@SuppressWarnings("unused")
public class DModel extends DNewableObject<DModel, SModelReference, SModel> implements SModel {

    protected static final Constant<SModel, Boolean>                                        EXTERNAL         = Constant.of("EXTERNAL", DModel::isExternal);

    private static final Constant<Triple<Set<SLanguage>, Boolean, Set<String>>, DModelType> MODEL_TYPE       = Constant.of("MODEL_TYPE", DModelType::new);

    protected static final DObserved<DModel, String>                                        NAME             = DObserved.of("NAME", null, (dModel, pre, post) -> {
                                                                                                                 if (post != null) {
                                                                                                                     SModel sModel = dModel.original();
                                                                                                                     if (!post.equals(sModel.getName().getLongName())) {
                                                                                                                         ((EditableSModel) sModel).rename(post, true);
                                                                                                                         return true;
                                                                                                                     }
                                                                                                                 }
                                                                                                                 return false;
                                                                                                             });

    protected static final DObserved<DModel, Set<DNode>>                                    ROOTS            = DObserved.of("ROOTS", Set.of(), dModel -> {
                                                                                                                 if (LeafTransaction.getCurrent() instanceof DObserverTransaction &&                                                                                                                                       //
                                                                                                                 !dModel.isExternal() && !TYPE.get(dModel).getLanguages().isEmpty()) {
                                                                                                                     DModel.ACTIVE.set(dModel, Boolean.TRUE);
                                                                                                                 }
                                                                                                                 SModel sModel = dModel.original();
                                                                                                                 return DModel.roots(sModel).sequential().map(DNode::of).toSet();
                                                                                                             }, (dModel, pre, post) -> {
                                                                                                                 SModel sModel = dModel.original();
                                                                                                                 Set<SNode> soll = post.map(r -> r.reParent(sModel, null, r.original())).toSet();
                                                                                                                 Set<SNode> ist = DModel.roots(sModel);
                                                                                                                 if (!soll.equals(ist)) {
                                                                                                                     DObserved.map(ist, soll, sModel::addRootNode, sModel::removeRootNode);
                                                                                                                     return true;
                                                                                                                 } else {
                                                                                                                     return false;
                                                                                                                 }
                                                                                                             }, (t, m, b, a) -> {
                                                                                                                 if (!m.isExternal() && b.isEmpty() && !a.isEmpty()) {
                                                                                                                     DModel.ACTIVE.set(m, Boolean.TRUE);
                                                                                                                 }
                                                                                                             }, containment);

    protected static final DObserved<DModel, Set<SLanguage>>                                USED_LANGUAGES   = DObserved.of("USED_LANGUAGES", Set.of(), (dModel, pre, post) -> {
                                                                                                                 SModelInternal sModel = (SModelInternal) dModel.original();
                                                                                                                 Set<SLanguage> ist = Collection.of(sModel.importedLanguageIds()).sequential().toSet();
                                                                                                                 if (!post.equals(ist)) {
                                                                                                                     DObserved.map(ist, post, sModel::addLanguage, sModel::deleteLanguageId);
                                                                                                                     return true;
                                                                                                                 } else {
                                                                                                                     return false;
                                                                                                                 }
                                                                                                             });

    protected static final DObserved<DModel, Set<DevKit>>                                   USED_DEVKITS     = DObserved.of("USED_DEVKITS", Set.of(), (dModel, pre, post) -> {
                                                                                                                 SModelInternal sModel = (SModelInternal) dModel.original();
                                                                                                                 Set<SModuleReference> soll = post.map(dk -> dk.getModuleReference()).toSet();
                                                                                                                 Set<SModuleReference> ist = Collection.of(sModel.importedDevkits()).toSet();
                                                                                                                 if (!post.equals(ist)) {
                                                                                                                     DObserved.map(ist, soll, sModel::addDevKit, sModel::deleteDevKit);
                                                                                                                     return true;
                                                                                                                 } else {
                                                                                                                     return false;
                                                                                                                 }
                                                                                                             });

    protected static final DObserved<DModel, Set<DModel>>                                   USED_MODELS      = DObserved.of("USED_MODELS", Set.of(), dModel -> {
                                                                                                                 SModel sModel = dModel.original();
                                                                                                                 return Collection.of(((SModelInternal) sModel).getModelImports()).sequential().                                                                                                                           //
                                                                                                                 map(r -> r.resolve(null)).notNull().map(DModel::of).toSet();
                                                                                                             }, (o, pre, post) -> {
                                                                                                                 SModelInternal sModel = (SModelInternal) o.original();
                                                                                                                 Set<SModelReference> soll = post.map(DModel::reference).notNull().toSet();
                                                                                                                 Set<SModelReference> ist = Collection.of(sModel.getModelImports()).sequential().toSet();
                                                                                                                 if (!soll.equals(ist)) {
                                                                                                                     DObserved.map(ist, soll, sModel::addModelImport, sModel::deleteModelImport);
                                                                                                                     return true;
                                                                                                                 } else {
                                                                                                                     return false;
                                                                                                                 }
                                                                                                             });

    protected static final Observed<DModel, ModelRoot>                                      MODEL_ROOT       = Observed.of("MODEL_ROOT", null, synthetic);

    private static final Action<DModel>                                                     READ_ROOTS       = Action.of("$READ_ROOTS", m -> {
                                                                                                                 SModel sModel = Objects.requireNonNull(m.tryOriginal());
                                                                                                                 MODEL_ROOT.set(m, dClareMPS().read(sModel::getModelRoot));
                                                                                                                 ROOTS.set(m, dClareMPS().read(() -> Collection.of(sModel.getRootNodes()).sequential().map(DNode::read).toSet()));
                                                                                                             }, Priority.urgent);

    private static final Action<DModel>                                                     READ_NAME        = Action.of("$READ_NAME", m -> {
                                                                                                                 SModel sModel = m.tryOriginal();
                                                                                                                 if (sModel != null) {
                                                                                                                     NAME.set(m, dClareMPS().read(() -> sModel.getName().getLongName()));
                                                                                                                 }
                                                                                                             }, Priority.urgent);

    private static final Action<DModel>                                                     READ_LANGUAGES   = Action.of("$READ_LANGUAGES", m -> {
                                                                                                                 SModel sModel = m.tryOriginal();
                                                                                                                 if (sModel instanceof SModelInternal) {
                                                                                                                     Set<SLanguage> ls = dClareMPS().read(() -> Collection.of(((SModelInternal) sModel).importedLanguageIds()).sequential().toSet());
                                                                                                                     USED_LANGUAGES.set(m, ls);
                                                                                                                 }
                                                                                                             }, Priority.urgent);

    private static final Action<DModel>                                                     READ_DEVKITS     = Action.of("$READ_DEVKITS", m -> {
                                                                                                                 SModel sModel = m.tryOriginal();
                                                                                                                 if (sModel instanceof SModelInternal) {
                                                                                                                     @SuppressWarnings("deprecation")
                                                                                                                     Set<DevKit> dks = dClareMPS().read(() -> Collection.of(((SModelInternal) sModel).importedDevkits()).sequential().map(r -> r.resolve(MPSModuleRepository.getInstance())).filter(DevKit.class).toSet());
                                                                                                                     USED_DEVKITS.set(m, dks);
                                                                                                                 }
                                                                                                             }, Priority.urgent);

    private static final Action<DModel>                                                     READ_USED_MODELS = Action.of("$READ_USED_MODELS", m -> {
                                                                                                                 SModel sModel = m.tryOriginal();
                                                                                                                 if (sModel instanceof SModelInternal) {
                                                                                                                     Set<DModel> ls = dClareMPS().read(() -> Collection.of(((SModelInternal) sModel).getModelImports()).sequential().                                                                                      //
                                                                                                                     map(r -> r.resolve(null)).notNull().map(DModel::of).toSet());
                                                                                                                     USED_MODELS.set(m, ls);
                                                                                                                 }
                                                                                                             }, Priority.urgent);

    @SuppressWarnings({"rawtypes", "unchecked", "RedundantSuppression"})
    protected static final DObserved<DModel, Boolean>                                       ACTIVE           = DObserved.of("ACTIVE", Boolean.FALSE, null, (tx, m, pre, post) -> {
                                                                                                                 if (!pre && post) {
                                                                                                                     SModel sModel = m.tryOriginal();
                                                                                                                     if (sModel != null) {
                                                                                                                         if (dClareMPS().getConfig().isTraceActivation()) {
                                                                                                                             System.err.println("DCLARE: ACTIVATE " + sModel.getName() + " (external = " + m.isExternal() + ")");
                                                                                                                         }
                                                                                                                         READ_USED_MODELS.trigger(m);
                                                                                                                         READ_ROOTS.trigger(m);
                                                                                                                     }
                                                                                                                 }
                                                                                                             }, plumbing);
    @SuppressWarnings({"rawtypes", "unchecked"})
    protected static final DObserved<DModel, Boolean>                                       LOADED           = DObserved.of("LOADED", Boolean.FALSE, (TriFunction) null, plumbing);

    private static final Action<DModel>                                                     READ_LOADED      = Action.of("$READ_LOADED", m -> {
                                                                                                                 SModel sModel = m.tryOriginal();
                                                                                                                 if (sModel != null) {
                                                                                                                     LOADED.set(m, dClareMPS().read(sModel::isLoaded));
                                                                                                                 }
                                                                                                             }, Priority.urgent);

    private static final Observer<DModel>                                                   REFERENCED_RULE  = DObject.observer("$REFERENCED_RULE", o -> {
                                                                                                                 if (o.isActive()) {
                                                                                                                     for (DModel mo : USED_MODELS.get(o)) {
                                                                                                                         if (mo.isExternal()) {
                                                                                                                             SModel sModel = mo.tryOriginal();
                                                                                                                             if (sModel instanceof SModelInternal) {
                                                                                                                                 DModule dModule = DModule.of(sModel.getModule());
                                                                                                                                 DRepository.MODULES.set(dClareMPS().getRepository(), Set::add, dModule);
                                                                                                                                 DModule.MODELS.set(dModule, Set::add, mo);
                                                                                                                             }
                                                                                                                         }
                                                                                                                     }
                                                                                                                 }
                                                                                                             });

    private static final Observer<DModel>                                                   ACTIVATE_RULE    = DObject.observer("$ACTIVATE_RULE", o -> {
                                                                                                                 if (!o.isExternal() && LOADED.get(o) && !TYPE.get(o).getLanguages().isEmpty()) {
                                                                                                                     ACTIVE.set(o, Boolean.TRUE);
                                                                                                                 }
                                                                                                             });
    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                                                    OBSERVERS        = DNewableObject.OBSERVERS.addAll(Set.of(ACTIVATE_RULE, REFERENCED_RULE));

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                                                     SETABLES         = DNewableObject.SETABLES.addAll(Set.of(NAME, ROOTS, MODEL_ROOT, USED_MODELS, USED_LANGUAGES, ACTIVE, LOADED));

    public static DModel of(SLanguage anonymousLanguage, String anonymousType, Object[] identity, boolean temporal) {
        return quotationConstruct(anonymousLanguage, anonymousType, identity, //
                () -> new DModel(new Object[]{DClareMPS.uniqueLong(), temporal, false}));
    }

    @SuppressWarnings("deprecation")
    protected static DModel read(SModel original) {
        DModel dModel = of(original.getReference(), original);
        NAME.set(dModel, original.getName().getLongName());
        USED_LANGUAGES.set(dModel, Collection.of(((SModelInternal) original).importedLanguageIds()).toSet());
        USED_DEVKITS.set(dModel, Collection.of(((SModelInternal) original).importedDevkits()).sequential().map(r -> r.resolve(MPSModuleRepository.getInstance())).filter(DevKit.class).toSet());
        LOADED.set(dModel, dClareMPS().read(original::isLoaded));
        return dModel;
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
        if (dClareMPS().project.getPath(sModel.getModule()) == null) {
            return true;
        } else {
            SModule sModule = sModel.getModule();
            return !(sModule instanceof Language ? ((Language) sModule).getAccessoryModels().contains(sModel) : sModule instanceof Solution);
        }
    }

    @Override
    public Object dNewableType() {
        return isTemporal();
    }

    @Override
    protected boolean isActive() {
        return reference() == null || ACTIVE.get(this);
    }

    protected void activateIfUsed() {
        if (!isExternal() && DModel.ACTIVE.observers().get(this).anyMatch(e -> !(e.getKey() instanceof NonCheckingObserver))) {
            DModel.ACTIVE.set(this, TRUE);
        }
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
        } else if (name == null || Construction.MatchInfo.of(this, Map.of()).hasUnidentifiedSource()) {
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
    protected void addOriginal(SModel sModel) {
        SModuleBase sModule = (SModuleBase) getModule().original();
        if (!sModule.getModels().contains(sModel)) {
            sModule.registerModel((SModelBase) sModel);
        }
    }

    @Override
    protected SModel resolve(SModelReference ref) {
        return ref.resolve(null);
    }

    @Override
    protected DModelType getType() {
        Set<SLanguage> ls = allUsedLanguages().filter(l -> !DClareMPS.RULE_SETS.get(l).isEmpty()).toSet();
        ls = ls.addAll(getAnonymousLanguages());
        return MODEL_TYPE.get(Triple.of(ls, isExternal(), getAnonymousTypes()));
    }

    protected Set<SLanguage> allUsedLanguages() {
        return USED_LANGUAGES.get(this).addAll(USED_DEVKITS.get(this).flatMap(dk -> DClareMPS.DEVKIT_LANGUAGES.get(dk)));
    }

    public java.util.Set<SLanguage> getUsedLanguages() {
        return USED_LANGUAGES.get(this).collect(Collectors.toSet());
    }

    public void setUsedLanguages(Iterable<SLanguage> languages) {
        USED_LANGUAGES.set(this, Collection.of(languages).toSet());
    }

    public java.util.Set<SModel> getUsedModels() {
        return USED_MODELS.get(this).collect(Collectors.toSet());
    }

    public void setUsedModels(Iterable<DModel> models) {
        USED_MODELS.set(this, Collection.of(models).toSet());
    }

    @Override
    protected void read() {
        READ_LOADED.trigger(this);
        READ_NAME.trigger(this);
        READ_LANGUAGES.trigger(this);
        READ_DEVKITS.trigger(this);
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
    public DRepository getRepository() {
        return getModule().getRepository();
    }

    @Override
    public SModelId getModelId() {
        return original().getModelId();
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
        return DNode.of(original().createNode(concept));
    }

    @Override
    public DNode createNode(SConcept concept, SNodeId nodeId) {
        return DNode.of(original().createNode(concept, nodeId));
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
        String name = NAME.get(this);
        return "model" + (name != null ? "#" + identity[0] + ":" + name : "#" + identity[0]);
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
        return isActive() && super.dIsOrphan(state);
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

}
