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
import java.util.function.Predicate;
import java.util.function.Supplier;
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
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.transactions.ActionInstance;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.LeafTransaction;
import org.modelingvalue.transactions.Mutable;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Priority;
import org.modelingvalue.transactions.Setable;

import jetbrains.mps.smodel.SNodeUtil;

public class DNode extends DObject<SNode> implements SNode {

    private static final Constant<Pair<Set<SLanguage>, SConcept>, DType>          NODE_TYPE           = Constant.of("NODE_TYPE", p -> new DNodeType(p));

    public static final Observed<DNode, DModel>                                   MODEL               = Observed.of("MODEL", null);

    public static final Observed<DNode, Map<Object, Object>>                      USER_OBJECTS        = Observed.of("USER_OBJECTS", Map.of());

    @SuppressWarnings("deprecation")
    public static final Constant<SContainmentLink, DObserved<DNode, List<DNode>>> MANY_CONTAINMENT    = Constant.of("MANY_CONTAINMENT", sc -> {
                                                                                                          return DObserved.<DNode, List<DNode>> of(sc, List.of(), !sc.isOptional(), true, null, false, false,                                           //
                                                                                                                  (dNode, pre, post, first) -> {
                                                                                                                      if (first) {
                                                                                                                          DObserved.map(DNode.children(dNode.original(), sc), post.map(DNode::original).toList(),                                       //
                                                                                                                                  (n, a) -> {
                                                                                                                                  }, r -> dNode.original().removeChild(r));
                                                                                                                      } else {
                                                                                                                          DObserved.map(DNode.children(dNode.original(), sc), post.map(DNode::original).toList(),                                       //
                                                                                                                                  (n, a) -> dNode.original().insertChildAfter(sc, n, a), r -> {
                                                                                                                                                                                                                                    });
                                                                                                                      }
                                                                                                                  }, () -> sc.getDeclarationNode());
                                                                                                      });

    @SuppressWarnings("deprecation")
    public static final Constant<SContainmentLink, DObserved<DNode, DNode>>       SINGLE_CONTAINMENT  = Constant.of("SINGLE_CONTAINMENT", sc -> {
                                                                                                          return DObserved.<DNode, DNode> of(sc, null, !sc.isOptional(), true, null, false, false,                                                      //
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
                                                                                                                  }, () -> sc.getDeclarationNode());
                                                                                                      });

    @SuppressWarnings("deprecation")
    public static final Constant<SReferenceLink, DObserved<DNode, DNode>>         REFERENCE           = Constant.of("REFERENCE", sr -> {
                                                                                                          return DObserved.<DNode, DNode> of(sr, null, !sr.isOptional(), false, () -> DNode.OPPOSITE.get(sr), true, false,                              //
                                                                                                                  (dNode, pre, post, first) -> {
                                                                                                                      if (first) {
                                                                                                                          SNode ref = post != null ? post.original() : null;
                                                                                                                          if (!Objects.equals(dNode.original().getReferenceTarget(sr), ref)) {
                                                                                                                              dNode.original().setReferenceTarget(sr, ref);
                                                                                                                          }
                                                                                                                      }
                                                                                                                  }, () -> sr.getDeclarationNode());

                                                                                                      });

    public static final Constant<SReferenceLink, Observed<DNode, Set<DNode>>>     OPPOSITE            = Constant.of("OPPOSITE", sr -> {
                                                                                                          return Observed.<DNode, Set<DNode>> of(Pair.of(sr, "OPPOSITE"), Set.of(), () -> DNode.REFERENCE.get(sr));
                                                                                                      });
    @SuppressWarnings("deprecation")
    public static final Constant<SProperty, DObserved<DNode, String>>             PROPERTY            = Constant.of("PROPERTY", sp -> {
                                                                                                          return DObserved.<DNode, String> of(sp, null, true, false, null, false, false,                                                                //
                                                                                                                  (dNode, pre, post, first) -> {
                                                                                                                      if (first && !Objects.equals(dNode.original().getProperty(sp), post)) {
                                                                                                                          dNode.original().setProperty(sp, post);
                                                                                                                      }
                                                                                                                  }, () -> sp.getDeclarationNode());
                                                                                                      });

    public static final Observed<DNode, Set<SLanguage>>                           USED_LANGUAGES      = Observed.of("USED_LANGUAGES", Set.of());

    public static final Observed<DNode, Set<DModel>>                              USED_MODELS         = Observed.of("USED_MODELS", Set.of());

    protected static final Setable<DNode, ActionInstance>                         CREATOR             = Setable.of("CREATOR", null);

    protected static final Setable<DNode, DNode>                                  REPLACEMENT         = Setable.of("REPLACEMENT", null);

    private static final Observer<DNode>                                          MODEL_RULE          = DObject.<DNode> observer(MODEL, o -> {
                                                                                                          DNode p = o.dAncestor(DNode.class);
                                                                                                          MODEL.set(o, p != null ? MODEL.get(p) : o.dAncestor(DModel.class));
                                                                                                      }, Priority.preDepth);

    private static final Observer<DNode>                                          USED_LANGUAGES_RULE = DObject.<DNode> observer(USED_LANGUAGES, o -> {
                                                                                                          USED_LANGUAGES.set(o, o.getChildren().flatMap(r -> DNode.USED_LANGUAGES.get(r)).toSet().add(o.getConcept().getLanguage()));
                                                                                                      }, Priority.preDepth);

    private static final Observer<DNode>                                          USED_MODELS_RULE    = DObject.<DNode> observer(USED_MODELS, o -> {
                                                                                                          USED_MODELS.set(o, o.getChildren().flatMap(r -> DNode.USED_MODELS.get(r)).toSet().addAll(o.getReferenced().map(r -> {
                                                                                                                                                                                                                DModel dm = MODEL.get(r);
                                                                                                                                                                                                                if (dm == null) {
                                                                                                                                                                                                                    SModel sm = r.original().getModel();
                                                                                                                                                                                                                    if (sm != null) {
                                                                                                                                                                                                                        dm = DModel.of(sm);
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                                return dm;
                                                                                                                                                                                                            }).toSet()));
                                                                                                      }, Priority.preDepth);

    @SuppressWarnings({"unchecked", "rawtypes"})
    protected static final Constant<SConcept, Set<DObserved<DNode, ?>>>           CONTAINERS          = Constant.of("", c -> (Set) Collection.of(c.getContainmentLinks()).map(DNode::container).toSet());

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                                          RULES               = DObject.RULES.addAll(Set.of(MODEL_RULE, USED_LANGUAGES_RULE, USED_MODELS_RULE));

    public static DNode of(SNode original) {
        return original instanceof DNode ? (DNode) original : new DNode(original);
    }

    public static SNode wrap(SNode original) {
        return of(original);
    }

    public static SNode newSNode(SConcept concept) {
        return new jetbrains.mps.smodel.SNode(concept, jetbrains.mps.smodel.SModel.generateUniqueId());
    }

    protected DNode(SNode original) {
        super(original);
    }

    @Override
    protected SRepository getOriginalRepository() {
        SModel me = original().getModel();
        SModule mu = me != null ? me.getModule() : null;
        return mu != null ? mu.getRepository() : null;
    }

    @Override
    public boolean isReadOnly() {
        SModel m = original().getModel();
        return m != null && m.isReadOnly();
    }

    @SuppressWarnings("unchecked")
    public static <T extends SNode> T newNode(java.util.List<SNode> pre, java.util.List<T> attr, Predicate<SNode> checker, Supplier<T> creator, java.util.List<T> var) {
        T node = attr != null && var.size() < attr.size() ? attr.get(var.size()) : null;
        if (node == null || !checker.test(node)) {
            node = null;
            if (pre != null) {
                for (SNode e : pre) {
                    if (checker.test(e) && !var.contains(e)) {
                        node = (T) e;
                        pre.remove(e);
                        break;
                    }
                }
            }
            if (node == null) {
                node = creator.get();
                DNode.CREATOR.set((DNode) node, LeafTransaction.getCurrent().actionInstance());
            }
        } else if (LeafTransaction.getCurrent().actionInstance().equals(DNode.CREATOR.get((DNode) node))) {
            DNode repl = DNode.REPLACEMENT.get((DNode) node);
            if (repl != null) {
                if (node instanceof DCopy) {
                    repl = DCopy.of(repl.original(), ((DCopy) node).getCopied());
                }
                node = (T) repl;
            }
        }
        var.add(node);
        return node;
    }

    @SuppressWarnings({"unchecked", "resource"})
    public static <T> boolean setContainment(T pre, T post) {
        boolean replacement = false;
        if (post instanceof DNode && pre instanceof DNode) {
            ActionInstance creator = DNode.CREATOR.get((DNode) post);
            if (creator != null && !post.equals(pre) && match((DNode) post, (DNode) pre)) {
                REPLACEMENT.set((DNode) post, (DNode) pre);
                replacement = true;
                creator.action().trigger(creator.mutable());
            }
        } else if (post instanceof java.util.Collection && pre instanceof java.util.Collection) {
            pre = (T) List.<DNode> of((java.util.Collection<DNode>) pre);
            post = (T) List.<DNode> of((java.util.Collection<DNode>) post);
            if (((ContainingCollection<Object>) post).anyMatch(e -> e instanceof DNode)) {
                ContainingCollection<DNode> prec = ((ContainingCollection<DNode>) pre).removeAll((ContainingCollection<DNode>) post);
                ContainingCollection<DNode> postc = ((ContainingCollection<DNode>) post).removeAll((ContainingCollection<DNode>) pre);
                if (!prec.isEmpty()) {
                    for (DNode elem : postc) {
                        ActionInstance creator = DNode.CREATOR.get(elem);
                        if (creator != null) {
                            DNode matched = prec.filter(DNode.class).filter(n -> match(elem, n)).findFirst().orElse(null);
                            if (matched != null) {
                                prec = prec.remove(matched);
                                REPLACEMENT.set(elem, matched);
                                replacement = true;
                                creator.action().trigger(creator.mutable());
                            }
                        }
                    }
                }
            }
        }
        return replacement;
    }

    private static boolean match(DNode post, DNode pre) {
        return pre.getConcept().equals(post.getConcept()) && Objects.equals(pre.getName(), post.getName());
    }

    @Override
    protected DType getType() {
        DNode parentNode = getParent();
        return parentNode != null && DClareMPS.RULE_SETS.get(parentNode.getConcept().getLanguage()).isEmpty() ? TYPE.getDefault() : //
                NODE_TYPE.get(Pair.of(TYPE.get(dObjectParent()).getLanguages(), getConcept()));
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

    @SuppressWarnings({"rawtypes", "unchecked"})
    public void setFeature(SConceptFeature feature, Object value) {
        if (feature instanceof SProperty) {
            PROPERTY.get((SProperty) feature).set(this, value == null ? null : value.toString());
        } else if (feature instanceof SContainmentLink) {
            SContainmentLink cl = (SContainmentLink) feature;
            if (cl.isMultiple()) {
                List<DNode> element = value != null ? List.<DNode> of((java.util.Collection) value) : null;
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
}
