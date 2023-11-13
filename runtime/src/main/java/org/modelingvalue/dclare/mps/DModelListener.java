//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2023 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import org.jetbrains.mps.openapi.event.SNodeAddEvent;
import org.jetbrains.mps.openapi.event.SNodeRemoveEvent;
import org.jetbrains.mps.openapi.event.SPropertyChangeEvent;
import org.jetbrains.mps.openapi.event.SReferenceChangeEvent;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModel.Problem;
import org.jetbrains.mps.openapi.model.SModelListener;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeChangeListener;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.LeafTransaction;

import jetbrains.mps.project.DevKit;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.event.*;
import jetbrains.mps.smodel.loading.ModelLoadingState;

public class DModelListener extends Pair<DModel, DClareMPS> implements SNodeChangeListener, SModelListener, jetbrains.mps.smodel.event.SModelListener {

    private static final long serialVersionUID = -5189200443861195660L;

    public DModelListener(DModel dModel, DClareMPS dClareMPS) {
        super(dModel, dClareMPS);
    }

    @Override
    public void propertyChanged(SPropertyChangeEvent event) {
        b().handleMPSChange(() -> {
            DNode changed = DNode.of(event.getNode());
            DObserved<DNode, String> dObserved = DNode.PROPERTY.get(event.getProperty());
            if (a().isShared() || DObject.READ_OBSERVEDS.get(changed).contains(dObserved)) {
                dObserved.set(changed, event.getNewValue());
            }
        });
    }

    @Override
    public void referenceChanged(SReferenceChangeEvent event) {
        b().handleMPSChange(() -> {
            DNode changed = DNode.of(event.getNode());
            DObserved<DNode, DNode> dObserved = DNode.REFERENCE.get(event.getAssociationLink());
            if (a().isShared() || DObject.READ_OBSERVEDS.get(changed).contains(dObserved)) {
                SReference ref = event.getNewValue();
                SNode sNode = ref != null ? ref.getTargetNode() : null;
                DNode dNode = sNode != null ? DNode.of(sNode) : ref != null ? DNode.referenceConstruct(ref.getTargetNodeReference(), null) : null;
                dObserved.set(changed, dNode);
            }
        });
    }

    @Override
    public void nodeAdded(SNodeAddEvent event) {
        b().handleMPSChange(() -> {
            SNode sNode = event.getChild();
            DNode dNode = DNode.of(sNode);
            if (event.isRoot()) {
                DModel dModel = DModel.of(event.getModel());
                if (a().isShared() || DObject.READ_OBSERVEDS.get(dModel).contains(DModel.ROOTS)) {
                    DModel.ROOTS.set(dModel, Set::add, dNode);
                }
            } else {
                SContainmentLink al = event.getAggregationLink();
                DNode changed = DNode.of(event.getParent());
                if (al.isMultiple()) {
                    DObserved<DNode, List<DNode>> dObserved = DNode.MANY_CONTAINMENT.get(al);
                    if (a().isShared() || DObject.READ_OBSERVEDS.get(changed).contains(dObserved)) {
                        int index = DNode.children(event.getParent(), al).firstIndexOf(sNode);
                        if (index >= 0) {
                            dObserved.set(changed, (l, e) -> {
                                List<DNode> now = l.remove(e);
                                return now.insert(Math.min(now.size(), index), e);
                            }, dNode);
                        }
                    }
                } else {
                    DObserved<DNode, DNode> dObserved = DNode.SINGLE_CONTAINMENT.get(al);
                    if (a().isShared() || DObject.READ_OBSERVEDS.get(changed).contains(dObserved)) {
                        dObserved.set(changed, dNode);
                    }
                }
            }
        });
    }

    @Override
    public void nodeRemoved(SNodeRemoveEvent event) {
        b().handleMPSChange(() -> {
            SNode sNode = event.getChild();
            SNodeReference ref = new jetbrains.mps.smodel.SNodePointer(a().reference(), sNode.getNodeId());
            DNode dNode = DNode.of(sNode.getConcept(), ref, sNode);
            if (event.isRoot()) {
                DModel dModel = DModel.of(event.getModel());
                if (a().isShared() || DObject.READ_OBSERVEDS.get(dModel).contains(DModel.ROOTS) || dNode.isActive(LeafTransaction.getCurrent().current())) {
                    DModel.ROOTS.set(dModel, Set::remove, dNode);
                }
            } else {
                SContainmentLink al = event.getAggregationLink();
                DNode changed = DNode.of(event.getParent());
                if (al.isMultiple()) {
                    DObserved<DNode, List<DNode>> dObserved = DNode.MANY_CONTAINMENT.get(al);
                    if (a().isShared() || DObject.READ_OBSERVEDS.get(changed).contains(dObserved) || dNode.isActive(LeafTransaction.getCurrent().current())) {
                        dObserved.set(changed, List::remove, dNode);
                    }
                } else {
                    DObserved<DNode, DNode> dObserved = DNode.SINGLE_CONTAINMENT.get(al);
                    if (a().isShared() || DObject.READ_OBSERVEDS.get(changed).contains(dObserved) || dNode.isActive(LeafTransaction.getCurrent().current())) {
                        dObserved.set(changed, (v, e) -> e.equals(v) ? null : v, dNode);
                    }
                }
            }
        });
    }

    @Override
    public void modelLoaded(SModel model, boolean partially) {
        b().handleMPSChange(() -> {
            if (!partially && DObject.READ_OBSERVEDS.get(a()).contains(DModel.LOADED)) {
                b().handleMPSChange(() -> DModel.LOADED.set(a(), Boolean.TRUE));
            }
        });
    }

    @Override
    public void modelReplaced(SModel model) {
        b().handleMPSChange(() -> {
            DNewableObject.READ_OBSERVED_DEEP.trigger(DModel.of(model));
        });
    }

    @Override
    public void modelUnloaded(SModel model) {
        b().handleMPSChange(() -> {
            if (DObject.READ_OBSERVEDS.get(a()).contains(DModel.LOADED)) {
                b().handleMPSChange(() -> DModel.LOADED.set(a(), Boolean.FALSE));
            }
        });
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

    @Override
    public void languageAdded(SModelLanguageEvent event) {
        b().handleMPSChange(() -> {
            DModel dModel = DModel.of(event.getModel());
            if (a().isShared() || DObject.READ_OBSERVEDS.get(dModel).contains(DModel.USED_LANGUAGES)) {
                DModel.USED_LANGUAGES.set(dModel, Set::add, event.getEventLanguage());
            }
        });
    }

    @Override
    public void languageRemoved(SModelLanguageEvent event) {
        b().handleMPSChange(() -> {
            DModel dModel = DModel.of(event.getModel());
            if (a().isShared() || DObject.READ_OBSERVEDS.get(dModel).contains(DModel.USED_LANGUAGES)) {
                DModel.USED_LANGUAGES.set(dModel, Set::remove, event.getEventLanguage());
            }
        });
    }

    @Override
    public void importAdded(SModelImportEvent event) {
        b().handleMPSChange(() -> {
            DModel dModel = DModel.of(event.getModel());
            if (a().isShared() || DObject.READ_OBSERVEDS.get(dModel).contains(DModel.USED_MODELS)) {
                DModel add = DModel.of(event.getModelUID().resolve(null));
                DModel.USED_MODELS.set(dModel, Set::add, add);
            }
        });
    }

    @Override
    public void importRemoved(SModelImportEvent event) {
        b().handleMPSChange(() -> {
            DModel dModel = DModel.of(event.getModel());
            if (a().isShared() || DObject.READ_OBSERVEDS.get(dModel).contains(DModel.USED_MODELS)) {
                DModel rem = DModel.of(event.getModelUID().resolve(null));
                DModel.USED_MODELS.set(dModel, Set::remove, rem);
            }
        });
    }

    @Override
    public void devkitAdded(SModelDevKitEvent event) {
        b().handleMPSChange(() -> {
            DModel dModel = DModel.of(event.getModel());
            if (a().isShared() || DObject.READ_OBSERVEDS.get(dModel).contains(DModel.USED_DEVKITS)) {
                @SuppressWarnings({"deprecation", "removal"})
                DevKit devkit = (DevKit) event.getDevkitNamespace().resolve(MPSModuleRepository.getInstance());
                DModel.USED_DEVKITS.set(dModel, Set::add, devkit);
            }
        });
    }

    @Override
    public void devkitRemoved(SModelDevKitEvent event) {
        b().handleMPSChange(() -> {
            DModel dModel = DModel.of(event.getModel());
            if (a().isShared() || DObject.READ_OBSERVEDS.get(dModel).contains(DModel.USED_DEVKITS)) {
                @SuppressWarnings({"deprecation", "removal"})
                DevKit devkit = (DevKit) event.getDevkitNamespace().resolve(MPSModuleRepository.getInstance());
                DModel.USED_DEVKITS.set(dModel, Set::remove, devkit);
            }
        });
    }

    @Deprecated
    @Override
    public void rootAdded(SModelRootEvent event) {
    }

    @Deprecated
    @Override
    public void rootRemoved(SModelRootEvent event) {
    }

    @Override
    public void beforeRootRemoved(SModelRootEvent event) {
    }

    @Override
    public void beforeModelRenamed(SModelRenamedEvent event) {
    }

    @Override
    public void modelRenamed(SModelRenamedEvent event) {
    }

    @Override
    public void propertyChanged(SModelPropertyEvent event) {
    }

    @Override
    public void childAdded(SModelChildEvent event) {
    }

    @Override
    public void childRemoved(SModelChildEvent event) {
    }

    @Override
    public void beforeChildRemoved(SModelChildEvent event) {
    }

    @Override
    public void referenceAdded(SModelReferenceEvent event) {
    }

    @Override
    public void referenceRemoved(SModelReferenceEvent event) {
    }

    @Override
    public void modelLoadingStateChanged(SModel sm, ModelLoadingState newState) {
    }

    @Override
    public void beforeModelDisposed(SModel sm) {
    }

    @Override
    public SModelListenerPriority getPriority() {
        return SModelListenerPriority.CLIENT;
    }

}
