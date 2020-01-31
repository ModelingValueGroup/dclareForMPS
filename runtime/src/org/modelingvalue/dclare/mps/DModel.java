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

import java.util.function.Function;
import java.util.stream.Collectors;

import org.jetbrains.mps.openapi.event.SNodeAddEvent;
import org.jetbrains.mps.openapi.event.SNodeRemoveEvent;
import org.jetbrains.mps.openapi.event.SPropertyChangeEvent;
import org.jetbrains.mps.openapi.event.SReferenceChangeEvent;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.model.SModelListener;
import org.jetbrains.mps.openapi.model.SModelName;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessListener;
import org.jetbrains.mps.openapi.model.SNodeChangeListener;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.DataSource;
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

import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.errors.item.ModelReportItem;
import jetbrains.mps.extapi.model.SModelBase;

public class DModel extends DFromOriginalObject<SModel> implements SModel {

    private static final Constant<SModel, DModel>                                   DMODEL              = Constant.of("DMODEL", m -> new DModel(m));

    private static final Constant<Set<SLanguage>, DType>                            MODEL_TYPE          = Constant.of("MODEL_TYPE", ls -> new DType(ls) {
                                                                                                            @SuppressWarnings({"unchecked", "rawtypes"})
                                                                                                            @Override
                                                                                                            public Set<DRule> getRules(Set<IRuleSet> ruleSets) {
                                                                                                                return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getModelRules())).toSet();
                                                                                                            }

                                                                                                            @SuppressWarnings({"rawtypes", "unchecked"})
                                                                                                            @Override
                                                                                                            public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
                                                                                                                return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getModelAttributes())).toSet();
                                                                                                            }

                                                                                                            @Override
                                                                                                            public Set<SLanguage> getLanguages() {
                                                                                                                return ls;
                                                                                                            }

                                                                                                            @SuppressWarnings("rawtypes")
                                                                                                            @Override
                                                                                                            public Collection<Setable> setables() {
                                                                                                                return SETABLES;
                                                                                                            }

                                                                                                            @SuppressWarnings("rawtypes")
                                                                                                            @Override
                                                                                                            protected Collection<Observer> observers() {
                                                                                                                return OBSERVERS;
                                                                                                            }

                                                                                                        });

    public static final Observed<DModel, Set<DNode>>                                ROOTS               = DObserved.of("ROOTS", Set.of(), false, true, null, false, (dModel, pre, post) -> {
                                                                                                            SModel sModel = dModel.original();
                                                                                                            Set<SNode> soll = post.map(r -> r.reParent(sModel, null, r.sNode(true))).toSet();
                                                                                                            Set<SNode> ist = DModel.roots(sModel);
                                                                                                            DObserved.map(ist, soll,                                                                                             //
                                                                                                                    a -> sModel.addRootNode(a),                                                                                  //
                                                                                                                    r -> sModel.removeRootNode(r));
                                                                                                        }, null);

    private static final Function<DModel, Set<SNode>>                               READ_ROOTS_FUNCTION = m -> dClareMPS().read(() -> Collection.of(m.original().getRootNodes()).toSet());

    protected static final Observer<DModel>                                         ROOTS_READ_MATCHER  = DObject.<DModel> observer("$ROOTS_READ_MATCHER", m -> {
                                                                                                            DNode.reuse(m, READ_ROOTS_FUNCTION, ROOTS.get(m));
                                                                                                        }, Priority.preDepth);

    public static final Observed<DModel, Set<SLanguage>>                            USED_LANGUAGES      = DObserved.of("USED_LANGUAGES", Set.of(), false, false, null, false, (dModel, pre, post) -> {
                                                                                                            SModelBase sModel = (SModelBase) dModel.original();
                                                                                                            java.util.Collection<SLanguage> ls = sModel.importedLanguageIds();
                                                                                                            for (SLanguage l : post) {
                                                                                                                if (!ls.contains(l)) {
                                                                                                                    sModel.addLanguage(l);
                                                                                                                }
                                                                                                            }
                                                                                                        }, null);

    public static final Observed<DModel, Set<DModel>>                               USED_MODELS         = DObserved.of("USED_MODELS", Set.of(), false, false, null, false, (dModel, pre, post) -> {
                                                                                                            SModelBase sModel = (SModelBase) dModel.original();
                                                                                                            java.util.Collection<SModelReference> ls = sModel.getModelImports();
                                                                                                            for (DModel dm : post) {
                                                                                                                SModel sm = dm.original();
                                                                                                                if (!ls.stream().anyMatch(r -> r.getModelId().equals(sm.getModelId()))) {
                                                                                                                    sModel.addModelImport(sm.getReference());
                                                                                                                }
                                                                                                            }
                                                                                                        }, null);

    public static final Observed<DModel, ModelRoot>                                 MODEL_ROOT          = NonCheckingObserved.of("MODEL_ROOT", null);

    private static final Observer<DModel>                                           USED_LANGUAGES_RULE = DObject.<DModel> observer(USED_LANGUAGES, o -> {
                                                                                                            Set<SLanguage> ls = dClareMPS().read(() -> Collection.of(((SModelBase) o.original()).importedLanguageIds()).toSet());
                                                                                                            USED_LANGUAGES.set(o, ls.addAll(ROOTS.get(o).flatMap(r -> DNode.USED_LANGUAGES.get(r))));
                                                                                                        }, Priority.preDepth);

    private static final Observer<DModel>                                           USED_MODELS_RULE    = DObject.<DModel> observer(USED_MODELS, o -> {
                                                                                                            DClareMPS dClareMPS = dClareMPS();
                                                                                                            Set<DModel> ls = dClareMPS.read(() -> Collection.of(((SModelBase) o.original()).getModelImports()).                  //
                                                                                                            map(r -> dClareMPS.read(() -> r.resolve(null))).notNull().map(r -> DModel.of(r)).toSet());
                                                                                                            USED_MODELS.set(o, ls.addAll(ROOTS.get(o).flatMap(r -> DNode.USED_MODELS.get(r))).remove(o));
                                                                                                        }, Priority.preDepth);

    private static final Observer<DModel>                                           REFERENCED_RULE     = DObject.<DModel> observer(DModule.REFERENCED, o -> {
                                                                                                            USED_MODELS.get(o).forEach(m -> DModule.REFERENCED.set(DModule.of(m.original().getModule()), Set::add, m));
                                                                                                        });

    private static final Action<DModel>                                             READ_ROOTS          = Action.of("$READ_ROOTS", m -> {
                                                                                                            MODEL_ROOT.set(m, dClareMPS().read(() -> m.original().getModelRoot()));
                                                                                                            ROOTS.set(m, dClareMPS().read(() -> Collection.of(m.original().getRootNodes()).map(n -> DNode.of(n)).toSet()));
                                                                                                        }, Direction.forward, Priority.preDepth);

    protected static final Setable<DModel, Set<Pair<DObject, IssueKindReportItem>>> ALL_MPS_ISSUES      = Setable.of("$ALL_MPS_ISSUES", Set.of(), (tx, o, pre, post) -> {
                                                                                                            Setable.<Set<Pair<DObject, IssueKindReportItem>>, Pair<DObject, IssueKindReportItem>> diff(pre, post,                //
                                                                                                                    a -> DObject.MPS_ISSUES.set(a.a(), Set::add, a),                                                             //
                                                                                                                    r -> DObject.MPS_ISSUES.set(r.a(), Set::remove, r));

                                                                                                        });

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                                            OBSERVERS           = DObject.OBSERVERS.addAll(Set.of(ROOTS_READ_MATCHER, USED_LANGUAGES_RULE, USED_MODELS_RULE, REFERENCED_RULE));

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                                             SETABLES            = DObject.SETABLES.addAll(Set.of(ROOTS, MODEL_ROOT, USED_MODELS, USED_LANGUAGES, ALL_MPS_ISSUES));

    public static DModel of(SModel original) {
        return original instanceof DModel ? (DModel) original : DMODEL.get(original);
    }

    public static DModel wrap(SModel original) {
        return of(original);
    }

    protected DModel(SModel original) {
        super(original);
    }

    @Override
    protected SRepository getOriginalRepository() {
        SModule m = original().getModule();
        return m != null ? m.getRepository() : null;
    }

    @Override
    protected DType getType() {
        return MODEL_TYPE.get(TYPE.get(dObjectParent()).getLanguages());
    }

    protected Set<SLanguage> getUsedLanguages() {
        return USED_LANGUAGES.get(this);
    }

    @Override
    protected void read(DClareMPS dClareMPS) {
        READ_ROOTS.trigger(this);
    }

    @Override
    protected void init(DClareMPS dClareMPS) {
        super.init(dClareMPS);
        if (!isReadOnly()) {
            Listener l = new Listener(this, dClareMPS);
            original().addChangeListener(l);
            original().addModelListener(l);
        }
    }

    @Override
    protected void exit(DClareMPS dClareMPS) {
        super.exit(dClareMPS);
        if (!isReadOnly()) {
            Listener l = new Listener(this, dClareMPS);
            original().removeModelListener(l);
            original().removeChangeListener(l);
        }
    }

    private class Listener extends Pair<DModel, DClareMPS> implements SNodeChangeListener, SModelListener {
        private static final long serialVersionUID = -5189200443861195660L;

        private Listener(DModel dModel, DClareMPS dClareMPS) {
            super(dModel, dClareMPS);
        }

        @Override
        public void propertyChanged(SPropertyChangeEvent event) {
            b().handleMPSChange(() -> {
                DNode.PROPERTY.get(event.getProperty()).set(DNode.of(event.getNode()), event.getNewValue());
            });
        }

        @Override
        public void referenceChanged(SReferenceChangeEvent event) {
            b().handleMPSChange(() -> {
                SReference newValue = event.getNewValue();
                SNode targetNode = newValue != null ? newValue.getTargetNode() : null;
                DNode.REFERENCE.get(event.getAssociationLink()).set(DNode.of(event.getNode()), targetNode != null ? DNode.of(targetNode) : null);
            });
        }

        @Override
        public void nodeAdded(SNodeAddEvent event) {
            b().handleMPSChange(() -> {
                SNode sNode = event.getChild();
                DNode dNode = DNode.of(sNode);
                DModel dModel = DModel.of(event.getModel());
                if (event.isRoot()) {
                    DModel.ROOTS.set(dModel, (l, e) -> l.add(e), dNode);
                } else {
                    SContainmentLink al = event.getAggregationLink();
                    if (!al.getName().equals("smodelAttribute")) {
                        if (al.isMultiple()) {
                            int index = DNode.children(event.getParent(), al).firstIndexOf(sNode);
                            DNode.MANY_CONTAINMENT.get(al).set(DNode.of(event.getParent()), (l, e) -> l.remove(e).insert(index, e), dNode);
                        } else {
                            DNode.SINGLE_CONTAINMENT.get(al).set(DNode.of(event.getParent()), dNode);
                        }
                    }
                }
            });
        }

        @Override
        public void nodeRemoved(SNodeRemoveEvent event) {
            b().handleMPSChange(() -> {
                SNode child = event.getChild();
                SNodeReference ref = new jetbrains.mps.smodel.SNodePointer(original().getReference(), child.getNodeId());
                DNode dNode = DNode.of(child.getConcept(), ref);
                DNode.DETACHED.set(dNode, child);
                if (event.isRoot()) {
                    DModel.ROOTS.set(DModel.of(event.getModel()), (l, e) -> l.remove(e), dNode);
                } else {
                    SContainmentLink al = event.getAggregationLink();
                    if (!al.getName().equals("smodelAttribute")) {
                        if (al.isMultiple()) {
                            DNode.MANY_CONTAINMENT.get(al).set(DNode.of(event.getParent()), (l, e) -> l.remove(e), dNode);
                        } else {
                            DNode.SINGLE_CONTAINMENT.get(al).set(DNode.of(event.getParent()), (v, e) -> e.equals(v) ? null : v, dNode);
                        }
                    }
                }
            });
        }

        @Override
        public void modelLoaded(SModel model, boolean partially) {
        }

        @Override
        public void modelReplaced(SModel model) {
            b().universeTransaction().put("$REFRESH", () -> REFRESH.trigger(DModel.of(model)));
        }

        @Override
        public void modelUnloaded(SModel model) {
        }

        @Override
        public void modelSaved(SModel model) {
        }

        @Override
        public void modelAttached(SModel model, SRepository repository) {
        }

        @Override
        public void modelDetached(SModel model, SRepository repository) {
        }

        @Override
        public void conflictDetected(SModel model) {
        }

        @Override
        public void problemsDetected(SModel model, Iterable<Problem> problems) {
        }
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
    @Deprecated
    public String getModelName() {
        return getModelId().getModelName();
    }

    @Override
    public SModelName getName() {
        return original().getName();
    }

    @Override
    public SModelReference getReference() {
        return original().getReference();
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
    public Iterable<SNode> getRootNodes() {
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

    public void setRootNodes(SAbstractConcept concept, Iterable<DNode> roots) {
        ROOTS.set(this, (rs, cs) -> cs == null ? rs : cs.addAll(rs.filter(r -> !r.isInstanceOfConcept(concept))), //
                roots != null ? Collection.of(roots).map(n -> DNode.of(n)).toSet() : null);
    }

    public java.util.Collection<DNode> getRootNodes(SAbstractConcept concept) {
        return ROOTS.get(this).filter(r -> r.isInstanceOfConcept(concept)).collect(Collectors.toList());
    }

    @Override
    public DNode getNode(SNodeId id) {
        SNode sNode = original().getNode(id);
        return sNode != null ? DNode.of(sNode) : null;
    }

    @Override
    public DataSource getSource() {
        return original().getSource();
    }

    @Override
    public boolean isReadOnly() {
        return original().isReadOnly();
    }

    @Override
    public boolean isLoaded() {
        return original().isLoaded();
    }

    @Override
    public void load() {
        original().load();
    }

    @Override
    public Iterable<Problem> getProblems() {
        return original().getProblems();
    }

    @Override
    public void unload() {
        original().unload();
    }

    @Override
    public void addModelListener(SModelListener l) {
        original().addModelListener(l);
    }

    @Override
    public void removeModelListener(SModelListener l) {
        original().removeModelListener(l);
    }

    @Override
    public void addAccessListener(SNodeAccessListener l) {
        original().addAccessListener(l);
    }

    @Override
    public void removeAccessListener(SNodeAccessListener l) {
        original().removeAccessListener(l);
    }

    @Override
    public void addChangeListener(SNodeChangeListener l) {
        original().addChangeListener(l);
    }

    @Override
    public void removeChangeListener(SNodeChangeListener l) {
        original().removeChangeListener(l);
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
        return getName().getSimpleName();
    }

    @SuppressWarnings("unchecked")
    @Override
    public java.util.Set<ModelReportItem> getIssues() {
        return (java.util.Set<ModelReportItem>) super.getIssues();
    }

}
