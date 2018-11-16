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

import org.jetbrains.mps.openapi.event.SNodeAddEvent;
import org.jetbrains.mps.openapi.event.SNodeRemoveEvent;
import org.jetbrains.mps.openapi.event.SPropertyChangeEvent;
import org.jetbrains.mps.openapi.event.SReferenceChangeEvent;
import org.jetbrains.mps.openapi.language.SConcept;
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
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.DataSource;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.transactions.Compound;
import org.modelingvalue.transactions.ConstantSetable;
import org.modelingvalue.transactions.Getable;
import org.modelingvalue.transactions.Leaf;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Setable;
import org.modelingvalue.transactions.StopObserverException;

import jetbrains.mps.extapi.model.SModelBase;

public class DModel extends DObject<SModel> implements SModelListener, SNodeChangeListener, SModel {

    public static final Getable<Pair<DClareMPS, SModel>, DModel> DMODEL         = ConstantSetable.of("DMODEL", p -> new DModel(p.a(), p.b()));

    public static final Observed<DModel, Set<DNode>>             ROOTS          = DObserved.of("ROOTS", Set.of(), false, false, (dModel, pre, post) -> {
                                                                                    DObserved.map(DModel.roots(dModel.original()), post.map(DNode::original).toSet(),        //
                                                                                            a -> dModel.original().addRootNode(a), r -> dModel.original().removeRootNode(r));
                                                                                }, (tx, o, b, a) -> {
                                                                                    Setable.<Set<DNode>, DNode> diff(Set.of(), b, a,                                         //
                                                                                            x -> DNode.CONTAINING.set(x, null), x -> {
                                                                                            });
                                                                                });

    public static final Observed<DModel, Set<SLanguage>>         USED_LANGUAGES = DObserved.of("USED_LANGUAGES", Set.of(), false, false, (dModel, pre, post) -> {
                                                                                    SModelBase sModel = (SModelBase) dModel.original();
                                                                                    for (SLanguage l : post) {
                                                                                        sModel.addLanguage(l);
                                                                                    }
                                                                                });

    public static final Observed<DModel, ModelRoot>              MODEL_ROOT     = Observed.of("MODEL_ROOT", null);

    public static DModel of(DClareMPS dClareMPS, SModel original) {
        return original instanceof DModel && ((DModel) original).dClareMPS == dClareMPS ? (DModel) original : DMODEL.get(Pair.of(dClareMPS, original));
    }

    public static DModel wrap(SModel original) {
        return of((DClareMPS) Leaf.getCurrent().root().getId(), original);
    }

    private DModel(DClareMPS dClareMPS, SModel original) {
        super(dClareMPS, original);
    }

    @Override
    protected DType getType() {
        Set<SLanguage> usedLanguages = getUsedLanguages();
        return new DType() {
            @SuppressWarnings({"unchecked", "rawtypes"})
            @Override
            public Set<Consumer> getRules(Set<IRuleSet> ruleSets) {
                return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getModelRules())).toSet();
            }

            @SuppressWarnings({"rawtypes", "unchecked"})
            @Override
            public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
                return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getModelAttributes())).toSet();
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

    protected Set<SLanguage> getUsedLanguages() {
        return USED_LANGUAGES.get(this);
    }

    @Override
    protected ContainingCollection<DNode> getChildren() {
        return ROOTS.get(this);
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected void init(DObject parent) {
        super.init(parent);
        ROOTS.set(this, Collection.of(original().getRootNodes()).map(n -> DNode.of(dClareMPS, n)).toSet());
        MODEL_ROOT.set(this, original().getModelRoot());
        original().addModelListener(this);
        original().addChangeListener(this);
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected Compound activate(DObject parent, Compound parentTx) {
        Compound tx = super.activate(parent, parentTx);
        Observer.of(USED_LANGUAGES, tx, () -> {
            if (tx.equals(DObject.TRANSACTION.get(this))) {
                USED_LANGUAGES.set(this, ROOTS.get(this).map(SNode::getConcept).map(SConcept::getLanguage).toSet());
            } else {
                USED_LANGUAGES.set(this, Set.of());
                throw new StopObserverException("Stopped");
            }
        }).trigger();
        return tx;
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected void exit(DObject parent, Compound parentTx) {
        super.exit(parent, parentTx);
        original().removeModelListener(this);
        original().removeChangeListener(this);
    }

    @Override
    public void propertyChanged(SPropertyChangeEvent event) {
        dClareMPS.schedule(() -> {
            DNode.PROPERTY.get(event.getProperty()).set(DNode.of(dClareMPS, event.getNode()), event.getNewValue());
        });
    }

    @Override
    public void referenceChanged(SReferenceChangeEvent event) {
        dClareMPS.schedule(() -> {
            SReference newValue = event.getNewValue();
            SNode targetNode = newValue != null ? newValue.getTargetNode() : null;
            DNode.REFERENCE.get(event.getAssociationLink()).set(DNode.of(dClareMPS, event.getNode()), targetNode != null ? DNode.of(dClareMPS, targetNode) : null);
        });
    }

    @Override
    public void nodeAdded(SNodeAddEvent event) {
        dClareMPS.schedule(() -> {
            DNode dNode = DNode.of(dClareMPS, event.getChild());
            DModel dModel = DModel.of(dClareMPS, event.getModel());
            if (event.isRoot()) {
                DModel.ROOTS.set(dModel, (l, e) -> l.add(e), dNode);
            } else {
                List<SNode> list = DNode.children(event.getParent(), event.getAggregationLink());
                DNode.CONTAINMENT.get(event.getAggregationLink()).set(DNode.of(dClareMPS, event.getParent()), (l, e) -> l.remove(e).insert(list.firstIndexOf(e.original()), e), dNode);
            }
        });
    }

    @Override
    public void nodeRemoved(SNodeRemoveEvent event) {
        dClareMPS.schedule(() -> {
            DNode dNode = DNode.of(dClareMPS, event.getChild());
            if (event.isRoot()) {
                DModel.ROOTS.set(DModel.of(dClareMPS, event.getModel()), (l, e) -> l.remove(e), dNode);
            } else {
                DNode.CONTAINMENT.get(event.getAggregationLink()).set(DNode.of(dClareMPS, event.getParent()), (l, e) -> l.remove(e), dNode);
            }
        });
    }

    @Override
    public SRepository getRepository() {
        return getModule().getRepository();
    }

    @Override
    public SModelId getModelId() {
        return original().getModelId();
    }

    @Override
    public String getModelName() {
        return getModelId().getModelName();
    }

    @Override
    public SModelName getName() {
        return original().getName();
    }

    @Override
    public SModelReference getReference() {
        return new SModelReference() {
            SModelReference ref = original().getReference();

            @Override
            public SModelId getModelId() {
                return ref.getModelId();
            }

            @Override
            public String getModelName() {
                return ref.getModelName();
            }

            @Override
            public SModelName getName() {
                return ref.getName();
            }

            @Override
            public SModuleReference getModuleReference() {
                return ref.getModuleReference();
            }

            @Override
            public SModel resolve(SRepository repo) {
                return DModel.of(dClareMPS, ref.resolve(repo));
            }
        };
    }

    @Override
    public ModelRoot getModelRoot() {
        return MODEL_ROOT.get(this);
    }

    @Override
    public DModule getModule() {
        return (DModule) PARENT.get(this);
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public Iterable<SNode> getRootNodes() {
        return (Set) ROOTS.get(this);
    }

    @Override
    public DNode createNode(SConcept concept) {
        return DNode.of(dClareMPS, original().createNode(concept));
    }

    @Override
    public DNode createNode(SConcept concept, SNodeId nodeId) {
        return DNode.of(dClareMPS, original().createNode(concept, nodeId));
    }

    @Override
    public void addRootNode(SNode node) {
        DNode dNode = DNode.of(dClareMPS, node);
        ROOTS.set(this, Set::add, dNode);
    }

    @Override
    public void removeRootNode(SNode node) {
        DNode dNode = DNode.of(dClareMPS, node);
        ROOTS.set(this, Set::remove, dNode);
    }

    @Override
    public DNode getNode(SNodeId id) {
        SNode sNode = original().getNode(id);
        return sNode != null ? DNode.of(dClareMPS, sNode) : null;
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
        return original().isReadOnly();
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

    @Override
    public void modelLoaded(SModel model, boolean partially) {
    }

    @Override
    public void modelReplaced(SModel model) {
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

}
