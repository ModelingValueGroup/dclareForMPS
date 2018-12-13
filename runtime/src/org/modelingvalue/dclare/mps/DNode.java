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

import java.util.Objects;
import java.util.function.Consumer;

import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SConceptFeature;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.transactions.Compound;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.Getable;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Setable;
import org.modelingvalue.transactions.StopObserverException;

import jetbrains.mps.smodel.SNodeUtil;

public class DNode extends DObject<SNode> implements SNode {

    public static final Observed<DNode, SContainmentLink>                       CONTAINING         = Observed.of("CONTAINING", null);

    public static final Observed<DNode, DModel>                                 MODEL              = Observed.of("MODEL", null);

    public static final Observed<DNode, Map<Object, Object>>                    USER_OBJECTS       = Observed.of("USER_OBJECTS", Map.of());

    public static final Getable<SContainmentLink, Observed<DNode, List<DNode>>> MANY_CONTAINMENT   = Constant.of("MANY_CONTAINMENT", sc -> {
                                                                                                       return DObserved.<DNode, List<DNode>> of(sc, List.of(), !sc.isOptional(), false,                                      //
                                                                                                               (dNode, pre, post) -> {
                                                                                                                   DObserved.map(DNode.children(dNode.original(), sc), post.map(DNode::original).toList(),                   //
                                                                                                                           (n, a) -> dNode.original().insertChildAfter(sc, n, a), r -> dNode.original().removeChild(r));
                                                                                                               },                                                                                                            //
                                                                                                               (tx, o, b, a) -> {
                                                                                                                   Setable.<List<DNode>, DNode> diff(List.of(), b, a,                                                        //
                                                                                                                           x -> DNode.CONTAINING.set(x, sc), x -> {
                                                                                                                                                                                                                          });
                                                                                                               });
                                                                                                   });

    public static final Getable<SContainmentLink, Observed<DNode, DNode>>       SINGLE_CONTAINMENT = Constant.of("SINGLE_CONTAINMENT", sc -> {
                                                                                                       return DObserved.<DNode, DNode> of(sc, null, !sc.isOptional(), false,                                                 //
                                                                                                               (dNode, pre, post) -> {
                                                                                                                   SNode sNode = dNode.original();
                                                                                                                   List<SNode> cs = children(sNode, sc);
                                                                                                                   if (pre != null && cs.contains(pre.original())) {
                                                                                                                       sNode.removeChild(pre.original());
                                                                                                                   }
                                                                                                                   if (post != null && !cs.contains(post.original())) {
                                                                                                                       sNode.addChild(sc, post.original());
                                                                                                                   }
                                                                                                               },                                                                                                            //
                                                                                                               (tx, o, b, a) -> {
                                                                                                                   if (a != null) {
                                                                                                                       DNode.CONTAINING.set(a, sc);
                                                                                                                   }
                                                                                                               });
                                                                                                   });

    public static final Getable<SReferenceLink, Observed<DNode, DNode>>         REFERENCE          = Constant.of("REFERENCE", sr -> {
                                                                                                       Observed<DNode, Set<DNode>> oppos = DNode.OPPOSITE.get(sr);
                                                                                                       return DObserved.<DNode, DNode> of(sr, null, false, true,                                                             //
                                                                                                               (dNode, pre, post) -> {
                                                                                                                   SNode ref = post != null ? post.original() : null;
                                                                                                                   if (!Objects.equals(dNode.original().getReferenceTarget(sr), ref)) {
                                                                                                                       dNode.original().setReferenceTarget(sr, ref);
                                                                                                                   }
                                                                                                               },                                                                                                            //
                                                                                                               (tx, o, b, a) -> {
                                                                                                                   if (a != null) {
                                                                                                                       oppos.set(a, Set::add, o);
                                                                                                                   }
                                                                                                                   if (b != null) {
                                                                                                                       oppos.set(b, Set::remove, o);
                                                                                                                   }
                                                                                                               });

                                                                                                   });
    public static final Getable<SReferenceLink, Observed<DNode, Set<DNode>>>    OPPOSITE           = Constant.of("OPPOSITE", sr -> {
                                                                                                       return Observed.<DNode, Set<DNode>> of(Pair.of(sr, "OPPOSITE"), Set.of());
                                                                                                   });
    public static final Getable<SProperty, Observed<DNode, String>>             PROPERTY           = Constant.of("PROPERTY", sp -> {
                                                                                                       return DObserved.<DNode, String> of(sp, null, false, false,                                                           //
                                                                                                               (dNode, pre, post) -> {
                                                                                                                   if (!Objects.equals(dNode.original().getProperty(sp), post)) {
                                                                                                                       dNode.original().setProperty(sp, post);
                                                                                                                   }
                                                                                                               });
                                                                                                   });

    public static DNode of(SNode original) {
        return original instanceof DNode ? (DNode) original : dClareMPS().DNODE.get(original);
    }

    public static SNode wrap(SNode original) {
        return of(original);
    }

    protected DNode(SNode original) {
        super(original);
    }

    @Override
    protected DType getType() {
        Set<SLanguage> usedLanguages = DModule.LANGUAGES.get(getModel().getModule());
        SConcept concept = getConcept();
        return new DType() {
            @SuppressWarnings({"unchecked", "rawtypes"})
            @Override
            public Set<Consumer> getRules(Set<IRuleSet> ruleSets) {
                return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getNodeRules(concept))).toSet();
            }

            @SuppressWarnings({"unchecked", "rawtypes"})
            @Override
            public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
                return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getNodeAttributes(concept))).toSet();
            }

            @Override
            public Set<SLanguage> getLanguages() {
                return usedLanguages;
            }

            @Override
            public Object getIdentity() {
                return Pair.of(usedLanguages, concept);
            }
        };
    }

    @Override
    public List<? extends DNode> getChildren() {
        List<DNode> result = List.of();
        for (SContainmentLink cl : getConcept().getContainmentLinks()) {
            if (cl.isMultiple()) {
                result = result.appendList(MANY_CONTAINMENT.get(cl).get(this));
            } else {
                DNode child = SINGLE_CONTAINMENT.get(cl).get(this);
                if (child != null) {
                    result = result.append(child);
                }
            }
        }
        return result;
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected void init(DObject parent) {
        super.init(parent);
        for (SProperty property : original().getProperties()) {
            PROPERTY.get(property).set(this, original().getProperty(property));
        }
        for (SReference reference : original().getReferences()) {
            SNode targetNode = reference.getTargetNode();
            REFERENCE.get(reference.getLink()).set(this, targetNode != null ? of(targetNode) : null);
        }
        for (SNode sChild : original().getChildren()) {
            DNode dChild = of(sChild);
            SContainmentLink cl = sChild.getContainmentLink();
            if (cl.isMultiple()) {
                MANY_CONTAINMENT.get(cl).set(this, (l, e) -> l.addUnique(e), dChild);
            } else {
                SINGLE_CONTAINMENT.get(cl).set(this, dChild);
            }
        }
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected Compound activate(DObject parent, Compound parentTx) {
        Compound tx = super.activate(parent, parentTx);
        Observer.of(MODEL, tx, () -> {
            if (tx.equals(DObject.TRANSACTION.get(this))) {
                DObject p = PARENT.get(this);
                if (p instanceof DNode) {
                    MODEL.set(this, ((DNode) p).getModel());
                } else {
                    MODEL.set(this, (DModel) p);
                }
            } else {
                MODEL.set(this, null);
                throw new StopObserverException("Stopped");
            }
        }).trigger();
        return tx;
    }

    @Override
    public boolean isComplete() {
        return super.isComplete() && getModel() != null;
    }

    @Override
    public DModel getModel() {
        return MODEL.get(this);
    }

    @Override
    public SNodeId getNodeId() {
        return original().getNodeId();
    }

    @Override
    public SNodeReference getReference() {
        return new SNodeReference() {
            SNodeReference ref = original().getReference();

            @Override
            public SNodeId getNodeId() {
                return ref.getNodeId();
            }

            @Override
            public SNode resolve(SRepository repo) {
                return of(ref.resolve(repo));
            }

            @Override
            public SModelReference getModelReference() {
                return getModel().getReference();
            }
        };
    }

    @Override
    public SConcept getConcept() {
        return original().getConcept();
    }

    @Override
    public boolean isInstanceOfConcept(SAbstractConcept c) {
        return original().isInstanceOfConcept(c);
    }

    @Override
    public String toString() {
        String name = getName();
        return getConcept().getName() + "#" + (name != null && name.length() > 0 ? name : getNodeId());
    }

    @Override
    public String getPresentation() {
        return SNodeUtil.getPresentation(this);
    }

    @Override
    public String getName() {
        return getProperty(SNodeUtil.property_INamedConcept_name);
    }

    @Override
    public void addChild(SContainmentLink role, SNode child) {
        DNode dNode = of(child);
        if (role.isMultiple()) {
            MANY_CONTAINMENT.get(role).set(this, (l, e) -> l.addUnique(e), dNode);
        } else {
            SINGLE_CONTAINMENT.get(role).set(this, dNode);
        }
    }

    @Override
    public void insertChildBefore(SContainmentLink role, SNode child, SNode anchor) {
        DNode dNode = of(child);
        if (role.isMultiple()) {
            MANY_CONTAINMENT.get(role).set(this, (l, e) -> {
                List<DNode> r = l.remove(e);
                return r.insert(r.firstIndexOf(anchor), e);
            }, dNode);
        } else {
            SINGLE_CONTAINMENT.get(role).set(this, dNode);
        }
    }

    @Override
    public void insertChildAfter(SContainmentLink role, SNode child, SNode anchor) {
        DNode dNode = of(child);
        if (role.isMultiple()) {
            MANY_CONTAINMENT.get(role).set(this, (l, e) -> {
                List<DNode> r = l.remove(e);
                return r.insert(r.firstIndexOf(anchor) + 1, e);
            }, dNode);
        } else {
            SINGLE_CONTAINMENT.get(role).set(this, dNode);
        }
    }

    @Override
    public void removeChild(SNode child) {
        DNode dNode = of(child);
        SContainmentLink link = dNode.getContainmentLink();
        if (link != null) {
            if (link.isMultiple()) {
                MANY_CONTAINMENT.get(link).set(this, (l, e) -> l.remove(e), dNode);
            } else {
                SINGLE_CONTAINMENT.get(link).set(this, (v, e) -> dNode.equals(v) ? null : v, dNode);
            }
        }
    }

    @Override
    public void delete() {
        DNode parent = getParent();
        if (parent != null) {
            SContainmentLink cl = getContainmentLink();
            if (cl.isMultiple()) {
                MANY_CONTAINMENT.get(cl).set(parent, (l, e) -> l.remove(e), this);
            } else {
                SINGLE_CONTAINMENT.get(cl).set(parent, (v, e) -> this.equals(v) ? null : v, this);
            }
        } else {
            DModel model = getModel();
            if (model != null) {
                DModel.ROOTS.set(model, (l, e) -> l.remove(e), this);
            }
        }
    }

    @SuppressWarnings("rawtypes")
    @Override
    public DNode getParent() {
        DObject dObject = PARENT.get(this);
        return dObject instanceof DNode ? (DNode) dObject : null;
    }

    @Override
    public DNode getContainingRoot() {
        DNode p = getParent();
        return p != null ? p.getContainingRoot() : this;
    }

    @Override
    public SContainmentLink getContainmentLink() {
        return CONTAINING.get(this);
    }

    @Override
    public DNode getFirstChild() {
        for (SContainmentLink cl : getConcept().getContainmentLinks()) {
            for (DNode c : getChildren(cl)) {
                return c;
            }
        }
        return null;
    }

    @Override
    public DNode getLastChild() {
        return getChildren().last();
    }

    @Override
    public DNode getPrevSibling() {
        DNode parent = getParent();
        if (parent != null) {
            List<? extends DNode> list = parent.getChildren();
            int i = list.firstIndexOf(this) - 1;
            return i >= 0 ? list.get(i) : null;
        }
        return null;
    }

    @Override
    public DNode getNextSibling() {
        DNode parent = getParent();
        if (parent != null) {
            List<? extends DNode> list = parent.getChildren();
            int i = list.firstIndexOf(this) + 1;
            return i < list.size() ? list.get(i) : null;
        }
        return null;
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public Iterable<? extends DNode> getChildren(SContainmentLink role) {
        return role.isMultiple() ? MANY_CONTAINMENT.get(role).get(this) : (List) SINGLE_CONTAINMENT.get(role).getCollection(this).toList();
    }

    @Override
    public void setReferenceTarget(SReferenceLink role, SNode target) {
        REFERENCE.get(role).set(this, (DNode) target);
    }

    @Override
    public DNode getReferenceTarget(SReferenceLink role) {
        return REFERENCE.get(role).get(this);
    }

    public Iterable<? extends DNode> getReferenceSources(SReferenceLink role) {
        return OPPOSITE.get(role).get(this);
    }

    @Override
    public SReference getReference(SReferenceLink role) {
        DNode target = REFERENCE.get(role).get(this);
        return target != null ? new SReference() {

            @Override
            public String getRole() {
                return role.getName();
            }

            @Override
            public SReferenceLink getLink() {
                return role;
            }

            @Override
            public SNode getSourceNode() {
                return DNode.this;
            }

            @Override
            public SNode getTargetNode() {
                return target;
            }

            @Override
            public SNodeReference getTargetNodeReference() {
                return target.getReference();
            }

            @Override
            public SModelReference getTargetSModelReference() {
                return target.getModel().getReference();
            }

            @Override
            public SNodeId getTargetNodeId() {
                return target.getNodeId();
            }
        } : null;
    }

    @Override
    public void setReference(SReferenceLink role, SReference reference) {
        REFERENCE.get(role).set(this, (DNode) reference.getTargetNode());
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    public void setFeature(SConceptFeature feature, Object value) {
        if (feature instanceof SProperty) {
            PROPERTY.get((SProperty) feature).set(this, value == null ? null : value.toString());
        } else if (feature instanceof SContainmentLink) {
            SContainmentLink cl = (SContainmentLink) feature;
            if (cl.isMultiple()) {
                MANY_CONTAINMENT.get(cl).set(this, (i, s) -> s == null ? i : s, value != null ? List.<DNode> of((java.util.Collection) value) : null);
            } else {
                SINGLE_CONTAINMENT.get(cl).set(this, (DNode) value);
            }
        } else {
            REFERENCE.get((SReferenceLink) feature).set(this, (DNode) value);
        }
    }

    @Override
    public Iterable<? extends SReference> getReferences() {
        List<SReference> result = List.of();
        for (SReferenceLink rl : getConcept().getReferenceLinks()) {
            SReference ref = getReference(rl);
            if (ref != null) {
                result = result.add(ref);
            }
        }
        return result;
    }

    @Override
    public Iterable<SProperty> getProperties() {
        return getConcept().getProperties();
    }

    @Override
    public boolean hasProperty(SProperty property) {
        return getProperty(property) != null;
    }

    @Override
    public String getProperty(SProperty property) {
        return PROPERTY.get(property).get(this);
    }

    @Override
    public void setProperty(SProperty property, String propertyValue) {
        PROPERTY.get(property).set(this, propertyValue);
    }

    @Override
    public Object getUserObject(Object key) {
        return USER_OBJECTS.get(this).get(key);
    }

    @Override
    public void putUserObject(Object key, Object value) {
        USER_OBJECTS.set(this, (m, v) -> m.put(key, v), key);
    }

    @Override
    public Iterable<Object> getUserObjectKeys() {
        return USER_OBJECTS.get(this).toKeys();
    }

    @SuppressWarnings("deprecation")
    @Override
    public String getRoleInParent() {
        return original().getRoleInParent();
    }

    @SuppressWarnings("deprecation")
    @Override
    public boolean hasProperty(String propertyName) {
        return original().hasProperty(propertyName);
    }

    @SuppressWarnings("deprecation")
    @Override
    public String getProperty(String propertyName) {
        return original().getProperty(propertyName);
    }

    @SuppressWarnings("deprecation")
    @Override
    public void setProperty(String propertyName, String propertyValue) {
        original().setProperty(propertyName, propertyValue);
    }

    @SuppressWarnings("deprecation")
    @Override
    public Iterable<String> getPropertyNames() {
        return original().getPropertyNames();
    }

    @SuppressWarnings("deprecation")
    @Override
    public void setReferenceTarget(String role, SNode target) {
        original().setReferenceTarget(role, target);
    }

    @SuppressWarnings("deprecation")
    @Override
    public SNode getReferenceTarget(String role) {
        return original().getReferenceTarget(role);
    }

    @SuppressWarnings("deprecation")
    @Override
    public SReference getReference(String role) {
        return original().getReference(role);
    }

    @SuppressWarnings("deprecation")
    @Override
    public void setReference(String role, SReference reference) {
        original().setReference(role, reference);
    }

    @SuppressWarnings("deprecation")
    @Override
    public void insertChildBefore(String role, SNode child, SNode anchor) {
        original().insertChildBefore(role, child, anchor);
    }

    @SuppressWarnings("deprecation")
    @Override
    public void addChild(String role, SNode child) {
        original().addChild(role, child);
    }

    @SuppressWarnings("deprecation")
    @Override
    public Iterable<? extends SNode> getChildren(String role) {
        return original().getChildren(role);
    }

    protected static List<SNode> children(SNode node, SContainmentLink feature) {
        List<SNode> ist = List.of();
        for (SNode child : node.getChildren(feature)) {
            ist = ist.add(child);
        }
        return ist;
    }

    public void clearAllFeatures() {
        SConcept concept = getConcept();
        for (SProperty p : concept.getProperties()) {
            setProperty(p, null);
        }
        for (SReferenceLink r : concept.getReferenceLinks()) {
            setReferenceTarget(r, null);
        }
        for (SNode child : getChildren()) {
            removeChild(child);
        }
    }
}
