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

import java.util.Arrays;
import java.util.Objects;
import java.util.stream.Collectors;

import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SConceptFeature;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Age;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.Mutable;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Priority;
import org.modelingvalue.transactions.Setable;

import jetbrains.mps.smodel.SNodeUtil;

public class DNode extends DObject<SNode> implements SNode {

    private static final Constant<Triple<Set<SLanguage>, SConcept, String>, DType> NODE_TYPE           = Constant.of("NODE_TYPE", t -> new DNodeType(t));

    public static final Observed<DNode, DModel>                                    MODEL               = NonCheckingObserved.of("MODEL", null);

    public static final Observed<DNode, Map<Object, Object>>                       USER_OBJECTS        = NonCheckingObserved.of("USER_OBJECTS", Map.of());

    @SuppressWarnings("deprecation")
    public static final Constant<SContainmentLink, DObserved<DNode, List<DNode>>>  MANY_CONTAINMENT    = Constant.of("MANY_CONTAINMENT", mc -> {
                                                                                                           return DObserved.<DNode, List<DNode>> of(mc, List.of(), !mc.isOptional(), true, null, false, false,                                                          //
                                                                                                                   (dNode, pre, post, first) -> {
                                                                                                                       if (first) {
                                                                                                                           DObserved.map(DNode.children(dNode.original(), mc), post.map(DNode::original).toList(),                                                      //
                                                                                                                                   (n, a) -> {
                                                                                                                                   }, r -> dNode.original().removeChild(r));
                                                                                                                       } else {
                                                                                                                           DObserved.map(DNode.children(dNode.original(), mc), post.map(DNode::original).toList(),                                                      //
                                                                                                                                   (n, a) -> dNode.original().insertChildAfter(mc, n, a), r -> {
                                                                                                                                                                                                                                      });
                                                                                                                       }
                                                                                                                   }, (tx, o, b, a) -> DNode.reuse(o, DNode.MANY_CONTAINMENT.get(mc), a), () -> mc.getDeclarationNode());
                                                                                                       });

    @SuppressWarnings("deprecation")
    public static final Constant<SContainmentLink, DObserved<DNode, DNode>>        SINGLE_CONTAINMENT  = Constant.of("SINGLE_CONTAINMENT", sc -> {
                                                                                                           return DObserved.<DNode, DNode> of(sc, null, !sc.isOptional(), true, null, false, false,                                                                     //
                                                                                                                   (dNode, pre, post, first) -> {
                                                                                                                       SNode sNode = dNode.original();
                                                                                                                       List<SNode> cs = children(sNode, sc);
                                                                                                                       if (first) {
                                                                                                                           List<SNode> toBeRemoved = cs.filter((s) -> post == null || !s.equals(post.original)).toList();
                                                                                                                           for (SNode sn : toBeRemoved) {
                                                                                                                               sNode.removeChild(sn);
                                                                                                                           }
                                                                                                                       }
                                                                                                                       if (!first && post != null && !cs.contains(post.original())) {
                                                                                                                           sNode.addChild(sc, post.original());
                                                                                                                       }
                                                                                                                   }, (tx, o, b, a) -> DNode.reuse(o, DNode.SINGLE_CONTAINMENT.get(sc), a), () -> sc.getDeclarationNode());
                                                                                                       });

    @SuppressWarnings("deprecation")
    public static final Constant<SReferenceLink, DObserved<DNode, DNode>>          REFERENCE           = Constant.of("REFERENCE", sr -> {
                                                                                                           return DObserved.<DNode, DNode> of(sr, null, !sr.isOptional(), false, () -> DNode.OPPOSITE.get(sr), true, false,                                             //
                                                                                                                   (dNode, pre, post, first) -> {
                                                                                                                       if (first) {
                                                                                                                           SNode ref = post != null ? post.original() : null;
                                                                                                                           if (!Objects.equals(dNode.original().getReferenceTarget(sr), ref)) {
                                                                                                                               dNode.original().setReferenceTarget(sr, ref);
                                                                                                                           }
                                                                                                                       }
                                                                                                                   }, () -> sr.getDeclarationNode());

                                                                                                       });

    @SuppressWarnings("deprecation")
    public static final Constant<SReferenceLink, Observed<DNode, Set<DNode>>>      OPPOSITE            = Constant.of("OPPOSITE", sr -> {
                                                                                                           return DObserved.<DNode, Set<DNode>> of(Pair.of(sr, "OPPOSITE"), Set.of(), false, false, () -> DNode.REFERENCE.get(sr), false, false,                        //
                                                                                                                   (dNode, pre, post, first) -> {
                                                                                                                   }, () -> sr.getDeclarationNode());
                                                                                                       });
    @SuppressWarnings("deprecation")
    public static final Constant<SProperty, DObserved<DNode, String>>              PROPERTY            = Constant.of("PROPERTY", sp -> {
                                                                                                           return DObserved.<DNode, String> of(sp, null, true, false, null, false, false,                                                                               //
                                                                                                                   (dNode, pre, post, first) -> {
                                                                                                                       if (first && !Objects.equals(dNode.original().getProperty(sp), post)) {
                                                                                                                           dNode.original().setProperty(sp, post);
                                                                                                                       }
                                                                                                                   }, () -> sp.getDeclarationNode());
                                                                                                       });

    public static final Observed<DNode, Set<SLanguage>>                            USED_LANGUAGES      = NonCheckingObserved.of("USED_LANGUAGES", Set.of());

    public static final Observed<DNode, Set<DModel>>                               USED_MODELS         = NonCheckingObserved.of("USED_MODELS", Set.of());

    private static final Observer<DNode>                                           MODEL_RULE          = DObject.<DNode> observer(MODEL, o -> {
                                                                                                           DNode p = o.dAncestor(DNode.class);
                                                                                                           MODEL.set(o, p != null ? MODEL.get(p) : o.dAncestor(DModel.class));
                                                                                                       }, Priority.preDepth);

    private static final Observer<DNode>                                           USED_LANGUAGES_RULE = DObject.<DNode> observer(USED_LANGUAGES, o -> {
                                                                                                           USED_LANGUAGES.set(o, o.getChildren().flatMap(r -> DNode.USED_LANGUAGES.get(r)).toSet().add(o.getConcept().getLanguage()));
                                                                                                       }, Priority.preDepth);

    private static final Observer<DNode>                                           USED_MODELS_RULE    = DObject.<DNode> observer(USED_MODELS, o -> {
                                                                                                           USED_MODELS.set(o, o.getChildren().flatMap(r -> DNode.USED_MODELS.get(r)).toSet().addAll(o.getReferenced().map(r -> {
                                                                                                                                                                                                                  DModel dm = MODEL.get(r);
                                                                                                                                                                                                                  if (dm == null) {
                                                                                                                                                                                                                      SNode orig = r.original();
                                                                                                                                                                                                                      SModel sm = orig != null ? orig.getModel() : null;
                                                                                                                                                                                                                      if (sm != null) {
                                                                                                                                                                                                                          dm = DModel.of(sm);
                                                                                                                                                                                                                      }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  return dm;
                                                                                                                                                                                                              }).toSet()));
                                                                                                       }, Priority.preDepth);

    @SuppressWarnings({"unchecked", "rawtypes"})
    protected static final Constant<SConcept, Set<DObserved<DNode, ?>>>            CONTAINERS          = Constant.of("", c -> (Set) Collection.of(c.getContainmentLinks()).map(DNode::container).toSet());

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                                           RULES               = DObject.RULES.addAll(Set.of(MODEL_RULE, USED_LANGUAGES_RULE, USED_MODELS_RULE));

    public static DNode of(SConcept concept, String anonymousType, Object[] identity) {
        return new DNode(null, concept, anonymousType, identity);
    }

    public static DNode of(SNode original) {
        return original instanceof DNode ? (DNode) original : new DNode(original, original.getConcept(), null, new Object[]{original});
    }

    public static SNode wrap(SNode original) {
        return of(original);
    }

    private static SNode newSNode(SConcept concept) {
        return new jetbrains.mps.smodel.SNode(concept);
    }

    protected final SConcept concept;
    protected String         anonymousType;
    protected Object[]       identity;

    protected DNode(SNode original, SConcept concept, String anonymousType, Object[] identity) {
        super(original);
        this.concept = concept;
        this.identity = identity;
        this.anonymousType = anonymousType;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = ((anonymousType == null) ? 0 : anonymousType.hashCode());
        result = prime * result + concept.hashCode();
        result = prime * result + Arrays.deepHashCode(identity);
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        DNode other = (DNode) obj;
        if (anonymousType == null) {
            if (other.anonymousType != null)
                return false;
        } else if (!anonymousType.equals(other.anonymousType))
            return false;
        if (!concept.equals(other.concept))
            return false;
        if (!Arrays.deepEquals(identity, other.identity))
            return false;
        if (Age.age(identity) > Age.age(other.identity))
            other.identity = identity;
        else
            identity = other.identity;
        if (getClass() == DNode.class) {
            shareOriginal(other);
        }
        return true;
    }

    protected void shareOriginal(DNode other) {
        if (original == null && other.original != null) {
            original = other.original;
        } else if (original != null && other.original == null) {
            other.original = original;
        }
    }

    @Override
    protected SRepository getOriginalRepository() {
        SNode orig = original();
        SModel me = orig != null ? orig.getModel() : null;
        SModule mu = me != null ? me.getModule() : null;
        return mu != null ? mu.getRepository() : null;
    }

    @Override
    public boolean isReadOnly() {
        SNode orig = original();
        SModel m = orig != null ? orig.getModel() : null;
        return m != null && m.isReadOnly();
    }

    @Override
    protected DType getType() {
        return NODE_TYPE.get(Triple.of(TYPE.get(dObjectParent()).getLanguages(), getConcept(), anonymousType));
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

    public Set<? extends DNode> getReferenced() {
        Set<DNode> result = Set.of();
        for (SReferenceLink rl : getConcept().getReferenceLinks()) {
            DNode ref = REFERENCE.get(rl).get(this);
            if (ref != null) {
                result = result.add(ref);
            }
        }
        return result;
    }

    @Override
    protected void read(DClareMPS dClareMPS) {
        if (original == null) {
            original = newSNode(concept);
        } else if (isReadNode()) {
            dClareMPS.read(() -> {
                for (SProperty property : original().getProperties()) {
                    PROPERTY.get(property).set(this, original().getProperty(property));
                }
                for (SReference reference : original().getReferences()) {
                    SNode targetNode = reference.getTargetNode();
                    REFERENCE.get(reference.getLink()).set(this, targetNode != null ? of(targetNode) : null);
                }
            });
            for (DNode dChild : dClareMPS.read(() -> Collection.of(original().getChildren()).map(n -> of(n)).toList())) {
                SContainmentLink cl = dChild.original.getContainmentLink();
                if (!cl.getName().equals("smodelAttribute")) {
                    if (cl.isMultiple()) {
                        MANY_CONTAINMENT.get(cl).set(this, (l, e) -> l.addUnique(e), dChild);
                    } else {
                        SINGLE_CONTAINMENT.get(cl).set(this, dChild);
                    }
                }
            }
        }
    }

    private boolean isReadNode() {
        return identity.length == 1 && identity[0] == original;
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    protected static void reuse(DObject object, Setable containing, Object post) {
        Object pre = containing.pre(object);
        if (post instanceof DNode && pre instanceof DNode) {
            DNode postNode = (DNode) post;
            DNode preNode = (DNode) pre;
            if (!postNode.isReadNode() && postNode.original == null) {
                if (preNode.isReadNode() && preNode.original != null && preNode.concept.equals(postNode.concept)) {
                    postNode.replaceSNode(preNode);
                }
            }
        } else if (post instanceof ContainingCollection && pre instanceof ContainingCollection) {
            ContainingCollection<DNode> preNodes = (ContainingCollection<DNode>) pre;
            ContainingCollection<DNode> postNodes = (ContainingCollection<DNode>) post;
            postNodes = postNodes.removeAll(preNodes);
            preNodes = preNodes.removeAll(postNodes);
            for (DNode postNode : postNodes) {
                if (!postNode.isReadNode() && postNode.original == null) {
                    for (DNode preNode : preNodes) {
                        if (preNode.isReadNode() && preNode.original != null && preNode.isReadNode() && preNode.concept.equals(postNode.concept) && Objects.equals(preNode.getName(), postNode.getName())) {
                            preNodes = preNodes.remove(preNode);
                            postNode.replaceSNode(preNode);
                            break;
                        }
                    }
                }
            }
        }
    }

    private void replaceSNode(DNode other) {
        original = other.original;
        other.original = null;
        for (SProperty property : concept.getProperties()) {
            DObserved<DNode, String> dObserved = PROPERTY.get(property);
            dObserved.set(this, dObserved.pre(other));
        }
        for (SReferenceLink reference : concept.getReferenceLinks()) {
            DObserved<DNode, DNode> dObserved = REFERENCE.get(reference);
            dObserved.set(this, dObserved.pre(other));
        }
        for (SContainmentLink containmentLink : concept.getContainmentLinks()) {
            if (!containmentLink.getName().equals("smodelAttribute")) {
                if (containmentLink.isMultiple()) {
                    DObserved<DNode, List<DNode>> dObserved = MANY_CONTAINMENT.get(containmentLink);
                    dObserved.set(this, dObserved.pre(other));
                } else {
                    DObserved<DNode, DNode> dObserved = SINGLE_CONTAINMENT.get(containmentLink);
                    dObserved.set(this, dObserved.pre(other));
                }
            }
        }

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
        return concept;
    }

    @Override
    public boolean isInstanceOfConcept(SAbstractConcept c) {
        return concept.isSubConceptOf(c);
    }

    @Override
    public String toString() {
        String name = getName();
        return getConcept().getName() + "#" + (name != null && name.length() > 0 ? name : isReadNode() ? original.getNodeId() : Arrays.toString(identity));
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
                SINGLE_CONTAINMENT.get(cl).set(parent, (v, e) -> equals(v) ? null : v, this);
            }
        } else {
            DModel model = getModel();
            if (model != null) {
                DModel.ROOTS.set(model, (l, e) -> l.remove(e), this);
            }
        }
    }

    @Override
    public DNode getParent() {
        Mutable parent = dParent();
        return parent instanceof DNode ? (DNode) parent : null;
    }

    @Override
    public DNode getContainingRoot() {
        DNode p = getParent();
        return p != null ? p.getContainingRoot() : this;
    }

    @Override
    public SContainmentLink getContainmentLink() {
        Setable<Mutable, ?> containing = dContaining();
        return containing != null && containing.id() instanceof SContainmentLink ? (SContainmentLink) containing.id() : null;
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

    private static DObserved<DNode, ?> container(SContainmentLink role) {
        return role.isMultiple() ? MANY_CONTAINMENT.get(role) : SINGLE_CONTAINMENT.get(role);
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

    @SuppressWarnings("unchecked")
    public void setFeature(SConceptFeature feature, Object value) {
        if (feature instanceof SProperty) {
            PROPERTY.get((SProperty) feature).set(this, value == null ? null : value.toString());
        } else if (feature instanceof SContainmentLink) {
            SContainmentLink cl = (SContainmentLink) feature;
            if (cl.isMultiple()) {
                List<DNode> element = value != null ? Collection.of((Iterable<DNode>) value).toList() : null;
                MANY_CONTAINMENT.get(cl).set(this, (i, s) -> s == null || Objects.equals(s, i) ? i : s, element);
            } else {
                SINGLE_CONTAINMENT.get(cl).set(this, (DNode) value);
            }
        } else {
            REFERENCE.get((SReferenceLink) feature).set(this, (DNode) value);
        }
    }

    public Object getFeature(SConceptFeature feature) {
        if (feature instanceof SProperty) {
            return PROPERTY.get((SProperty) feature).get(this);
        } else if (feature instanceof SContainmentLink) {
            SContainmentLink cl = (SContainmentLink) feature;
            if (cl.isMultiple()) {
                return MANY_CONTAINMENT.get(cl).get(this).collect(Collectors.toList());
            } else {
                return SINGLE_CONTAINMENT.get(cl).get(this);
            }
        } else {
            return REFERENCE.get((SReferenceLink) feature).get(this);
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

    public boolean hasAncestor(DNode dNode) {
        DNode parent = getParent();
        return equals(dNode) || (parent != null && parent.hasAncestor(dNode));
    }

    public Object[] getIdentity() {
        return identity;
    }

}
