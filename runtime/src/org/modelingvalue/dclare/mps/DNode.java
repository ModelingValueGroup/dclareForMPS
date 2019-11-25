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
import java.util.function.Function;
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
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.transactions.Action;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.Direction;
import org.modelingvalue.transactions.Mutable;
import org.modelingvalue.transactions.NonCheckingObserved;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Priority;
import org.modelingvalue.transactions.Setable;

import jetbrains.mps.smodel.SNodeUtil;

public class DNode extends DIdentifiedObject implements SNode {

    private static final Constant<Triple<Set<SLanguage>, SConcept, String>, DType> NODE_TYPE              = Constant.of("NODE_TYPE", t -> new DNodeType(t));

    public static final Observed<DNode, DModel>                                    MODEL                  = NonCheckingObserved.of("$MODEL", null);

    public static final Observed<DNode, Map<Object, Object>>                       USER_OBJECTS           = DObserved.of("USER_OBJECTS", Map.of(), false, false, null, false, null, null);

    @SuppressWarnings("deprecation")
    public static final Constant<SContainmentLink, DObserved<DNode, List<DNode>>>  MANY_CONTAINMENT       = Constant.of("MANY_CONTAINMENT", mc -> {
                                                                                                              return DObserved.<DNode, List<DNode>> of(mc, List.of(), !mc.isOptional(), true, null, false,                                     //
                                                                                                                      (dNode, pre, post) -> {
                                                                                                                          SNode sNode = dNode.sNode(true);
                                                                                                                          List<SNode> soll = post.map(c -> c.reParent(sNode, mc, c.sNode(true))).toList();
                                                                                                                          List<SNode> ist = DNode.children(sNode, mc);
                                                                                                                          DObserved.map(ist, soll,                                                                                             //
                                                                                                                                  (n, a) -> {
                                                                                                                                  }, r -> sNode.removeChild(r));
                                                                                                                          ist = DNode.children(sNode, mc);
                                                                                                                          DObserved.map(ist, soll,                                                                                             //
                                                                                                                                  (n, a) -> sNode.insertChildAfter(mc, n, a), r -> {
                                                                                                                                                                                                                                        });
                                                                                                                      }, () -> mc.getDeclarationNode());
                                                                                                          });

    @SuppressWarnings("deprecation")
    public static final Constant<SContainmentLink, DObserved<DNode, DNode>>        SINGLE_CONTAINMENT     = Constant.of("SINGLE_CONTAINMENT", sc -> {
                                                                                                              return DObserved.<DNode, DNode> of(sc, null, !sc.isOptional(), true, null, false,                                                //
                                                                                                                      (dNode, pre, post) -> {
                                                                                                                          SNode sNode = dNode.sNode(true);
                                                                                                                          SNode soll = post != null ? post.reParent(sNode, sc, post.sNode(true)) : null;
                                                                                                                          SNode ist = children(sNode, sc).first();
                                                                                                                          if (ist != null && !ist.equals(soll)) {
                                                                                                                              sNode.removeChild(ist);
                                                                                                                          }
                                                                                                                          if (post != null && !soll.equals(ist)) {
                                                                                                                              sNode.addChild(sc, soll);
                                                                                                                          }
                                                                                                                      }, () -> sc.getDeclarationNode());
                                                                                                          });

    private static final Constant<SContainmentLink, Function<DNode, List<SNode>>>  READ_CHILDREN_FUNCTION = Constant.of("READ_CHILDREN_FUNCTION",                                                                                              //
            cl -> n -> dClareMPS().read(() -> Collection.of(n.sNode(false).getChildren(cl)).map(c -> (SNode) c).toList()));

    protected static final Constant<SContainmentLink, Observer<DNode>>             READ_MATCHER           = Constant.of("READ_MATCHER", cl -> DObject.<DNode> observer(Pair.of("MATCHER", cl), n -> {
                                                                                                              DNode.reuse(n, READ_CHILDREN_FUNCTION.get(cl), cl.isMultiple() ?                                                                 //
                                                                                                              MANY_CONTAINMENT.get(cl).get(n) :                                                                                                //
                                                                                                              SINGLE_CONTAINMENT.get(cl).<DNode> getCollection(n).toList());
                                                                                                          }, Priority.preDepth));

    @SuppressWarnings("deprecation")
    public static final Constant<SReferenceLink, DObserved<DNode, DNode>>          REFERENCE              = Constant.of("REFERENCE", sr -> {
                                                                                                              return DObserved.<DNode, DNode> of(sr, null, !sr.isOptional(), false, () -> DNode.OPPOSITE.get(sr), false,                       //
                                                                                                                      (dNode, pre, post) -> {
                                                                                                                          SNode sNode = dNode.sNode(true);
                                                                                                                          SNode ist = sNode.getReferenceTarget(sr);
                                                                                                                          SNode soll = post != null ? post.sNode(true) : null;
                                                                                                                          if (!Objects.equals(ist, soll)) {
                                                                                                                              sNode.setReferenceTarget(sr, soll);
                                                                                                                          }
                                                                                                                      }, () -> sr.getDeclarationNode());

                                                                                                          });

    @SuppressWarnings("deprecation")
    public static final Constant<SReferenceLink, Observed<DNode, Set<DNode>>>      OPPOSITE               = Constant.of("OPPOSITE", sr -> {
                                                                                                              return DObserved.<DNode, Set<DNode>> of(Pair.of(sr, "OPPOSITE"), Set.of(), false, false, () -> DNode.REFERENCE.get(sr), false,   //
                                                                                                                      null, () -> sr.getDeclarationNode());
                                                                                                          });
    @SuppressWarnings("deprecation")
    public static final Constant<SProperty, DObserved<DNode, String>>              PROPERTY               = Constant.of("PROPERTY", sp -> {
                                                                                                              return DObserved.<DNode, String> of(sp, null, true, false, null, false,                                                          //
                                                                                                                      (dNode, pre, post) -> {
                                                                                                                          SNode sNode = dNode.sNode(true);
                                                                                                                          String ist = sNode.getProperty(sp);
                                                                                                                          if (!Objects.equals(ist, post)) {
                                                                                                                              sNode.setProperty(sp, post);
                                                                                                                          }
                                                                                                                      }, () -> sp.getDeclarationNode());
                                                                                                          });

    public static final Observed<DNode, Set<SLanguage>>                            USED_LANGUAGES         = NonCheckingObserved.of("USED_LANGUAGES", Set.of());

    public static final Observed<DNode, Set<DModel>>                               USED_MODELS            = NonCheckingObserved.of("USED_MODELS", Set.of());

    private static final Observer<DNode>                                           MODEL_RULE             = DObject.<DNode> observer(MODEL, o -> {
                                                                                                              DNode p = o.getAncestor(DNode.class);
                                                                                                              MODEL.set(o, p != null ? MODEL.get(p) : o.getAncestor(DModel.class));
                                                                                                          }, Priority.preDepth);

    private static final Observer<DNode>                                           USED_LANGUAGES_RULE    = DObject.<DNode> observer(USED_LANGUAGES, o -> {
                                                                                                              USED_LANGUAGES.set(o, o.getChildren().flatMap(r -> DNode.USED_LANGUAGES.get(r)).toSet().add(o.getConcept().getLanguage()));
                                                                                                          }, Priority.preDepth);

    private static final Observer<DNode>                                           USED_MODELS_RULE       = DObject.<DNode> observer(USED_MODELS, o -> {
                                                                                                              USED_MODELS.set(o, o.getChildren().flatMap(r -> DNode.USED_MODELS.get(r)).toSet().addAll(o.getReferenced().map(                  //
                                                                                                                      r -> {
                                                                                                                          DModel dm = MODEL.get(r);
                                                                                                                          if (dm == null) {
                                                                                                                              SModel sm = r.getOriginalModel();
                                                                                                                              if (sm != null) {
                                                                                                                                  dm = DModel.of(sm);
                                                                                                                              }
                                                                                                                          }
                                                                                                                          return dm;
                                                                                                                      }).toSet()));
                                                                                                          }, Priority.preDepth);

    @SuppressWarnings({"unchecked", "rawtypes"})
    protected static final Constant<SConcept, Set<DObserved<DNode, ?>>>            CONTAINERS             = Constant.of("", c -> (Set) Collection.of(c.getContainmentLinks()).map(DNode::container).toSet());

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                                           RULES                  = DObject.RULES.addAll(Set.of(MODEL_RULE, USED_LANGUAGES_RULE, USED_MODELS_RULE));

    protected static final Setable<DNode, String>                                  NAME_OBSERVED          = PROPERTY.get(SNodeUtil.property_INamedConcept_name);

    private static final Action<DNode>                                             READ_PROPERTIES        = Action.of("$READ_PROPERTIES", n -> {
                                                                                                              dClareMPS().read(                                                                                                                //
                                                                                                                      () -> {
                                                                                                                          SNode sNode = n.sNode(false);
                                                                                                                          if (sNode != null) {
                                                                                                                              for (SProperty property : n.getConcept().getProperties()) {
                                                                                                                                  PROPERTY.get(property).set(n, sNode.getProperty(property));
                                                                                                                              }
                                                                                                                          }
                                                                                                                      });
                                                                                                          }, Direction.forward, Priority.preDepth);

    private static final Action<DNode>                                             READ_REFERENCES        = Action.of("$READ_REFERENCES", n -> {
                                                                                                              dClareMPS().read(                                                                                                                //
                                                                                                                      () -> {
                                                                                                                          SNode sNode = n.sNode(false);
                                                                                                                          if (sNode != null) {
                                                                                                                              for (SReferenceLink link : n.getConcept().getReferenceLinks()) {
                                                                                                                                  SNode targetNode = sNode.getReferenceTarget(link);
                                                                                                                                  REFERENCE.get(link).set(n, targetNode != null ? of(targetNode) : null);
                                                                                                                              }
                                                                                                                          }
                                                                                                                      });
                                                                                                          }, Direction.backward, Priority.preDepth);

    private static final Action<DNode>                                             READ_CHILDREN          = Action.of("$READ_CHILDREN", n -> {
                                                                                                              dClareMPS().read(                                                                                                                //
                                                                                                                      () -> {
                                                                                                                          SNode sNode = n.sNode(false);
                                                                                                                          if (sNode != null) {
                                                                                                                              for (SContainmentLink link : n.getConcept().getContainmentLinks()) {
                                                                                                                                  if (!link.getName().equals("smodelAttribute")) {
                                                                                                                                      List<DNode> list = Collection.of(sNode.getChildren(link)).map(c -> of(c)).toList();
                                                                                                                                      if (link.isMultiple()) {
                                                                                                                                          MANY_CONTAINMENT.get(link).set(n, list);
                                                                                                                                      } else {
                                                                                                                                          SINGLE_CONTAINMENT.get(link).set(n, list.first());
                                                                                                                                      }
                                                                                                                                  }
                                                                                                                              }
                                                                                                                          }
                                                                                                                      });
                                                                                                          }, Direction.forward, Priority.preDepth);

    private static final Setable<SNodeReference, DNode>                            D_NODE                 = Setable.of("$D_NODE", null);

    private static final Observed<DNode, SNodeReference>                           NODE_REF               = NonCheckingObserved.of("$NODE_REF", null, () -> D_NODE);

    protected static final Setable<DNode, SNode>                                   DETACHED               = Setable.of("$DETACHED", null);

    public static DNode of(SConcept concept, String anonymousType, Object[] identity) {
        identity = Arrays.copyOf(identity, identity.length + (anonymousType != null ? 2 : 1));
        if (anonymousType != null) {
            identity[identity.length - 2] = concept;
            identity[identity.length - 1] = anonymousType;
        } else {
            identity[identity.length - 1] = concept;
        }
        return new DNode(identity);
    }

    public static DNode of(SNode original) {
        if (original instanceof DNode) {
            return (DNode) original;
        } else {
            return of(original.getConcept(), original.getReference());
        }
    }

    public static DNode of(SConcept concept, SNodeReference ref) {
        DNode dNode = D_NODE.get(ref);
        return dNode != null ? dNode : readNode(concept, ref);
    }

    private static DNode readNode(SConcept concept, SNodeReference ref) {
        return new DNode(new Object[]{ref, concept});
    }

    private boolean isReadNode() {
        return identity.length == 2 && identity[0] instanceof SNodeReference;
    }

    public static SNode wrap(SNode original) {
        return of(original);
    }

    protected DNode(Object[] identity) {
        super(identity);
    }

    @Override
    public String toString() {
        return getConcept().getName() + (isReadNode() ? ("#" + getIdString()) : Arrays.toString(identity));
    }

    private String getIdString() {
        SNodeId nodeId = getNodeId();
        return nodeId instanceof jetbrains.mps.smodel.SNodeId.Regular ? Long.toString(((jetbrains.mps.smodel.SNodeId.Regular) nodeId).getId(), Character.MAX_RADIX) : nodeId.toString();
    }

    protected SModel getOriginalModel() {
        return isReadNode() ? ((SNodeReference) identity[0]).getModelReference().resolve(null) : null;
    }

    @Override
    protected SRepository getOriginalRepository() {
        SModel m = getOriginalModel();
        SModule md = m != null ? m.getModule() : null;
        return md != null ? md.getRepository() : dClareMPS().getRepository().original();
    }

    @Override
    public boolean isReadOnly() {
        SModel m = getOriginalModel();
        return m != null && m.isReadOnly();
    }

    @Override
    protected DType getType() {
        return NODE_TYPE.get(Triple.of(TYPE.get(dObjectParent()).getLanguages(), getConcept(), getAnonymousType()));
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
    public SNodeId getNodeId() {
        return reference(false).getNodeId();
    }

    protected void setOriginal(SNodeReference ref) {
        NODE_REF.set(this, ref);
        READ_PROPERTIES.trigger(this);
        READ_CHILDREN.trigger(this);
        READ_REFERENCES.trigger(this);
    }

    @Override
    protected void read(DClareMPS dClareMPS) {
        if (isReadNode() || NODE_REF.get(this) != null) {
            READ_PROPERTIES.trigger(this);
            READ_CHILDREN.trigger(this);
            READ_REFERENCES.trigger(this);
        }
    }

    protected static <O extends DObject> void reuse(O parent, Function<O, ? extends ContainingCollection<SNode>> read, ContainingCollection<DNode> posts) {
        if (parent instanceof DFromOriginalObject || ((DNode) parent).isReadNode() || NODE_REF.get((DNode) parent) != null) {
            ContainingCollection<SNode> pres = null;
            DClareMPS dClare = null;
            Set<SNodeReference> refs = null;
            for (DNode post : posts) {
                if (!post.isReadNode()) {
                    SNodeReference ref = NODE_REF.get(post);
                    if (ref == null) {
                        if (pres == null) {
                            dClare = dClareMPS();
                            pres = read.apply(parent);
                            refs = posts.filter(p -> !p.isReadNode()).map(p -> NODE_REF.get(p)).notNull().toSet();
                        }
                        for (SNode pre : pres) {
                            ref = pre.getReference();
                            if (!refs.contains(ref) && pre.getConcept().equals(post.getConcept()) && post.matches(dClare, pre)) {
                                post.setOriginal(ref);
                                pres = pres.remove(pre);
                                break;
                            }
                        }
                    }
                }
            }
        }
    }

    private boolean matches(DClareMPS dClare, SNode read) {
        if (getConcept().isSubConceptOf(SNodeUtil.concept_INamedConcept)) {
            return Objects.equals(dClare.read(() -> read.getProperty(SNodeUtil.property_INamedConcept_name)), NAME_OBSERVED.get(this));
        } else {
            return true;
        }
    }

    @Override
    public DModel getModel() {
        return MODEL.get(this);
    }

    private SNodeReference reference(boolean create) {
        if (isReadNode()) {
            return (SNodeReference) identity[0];
        } else {
            SNodeReference ref = NODE_REF.get(this);
            if (create && ref == null) {
                SNode sNode = getModel().original().createNode(getConcept());
                addSNode(sNode);
                ref = sNode.getReference();
                NODE_REF.set(this, ref);
            }
            return ref;
        }
    }

    protected SNode sNode(boolean create) {
        SNode sNode = null;
        SNodeReference ref = reference(create);
        if (ref != null) {
            sNode = dClareMPS().read(() -> ref.resolve(null));
            if (create && sNode == null) {
                sNode = DETACHED.get(this);
                if (sNode != null) {
                    addSNode(sNode);
                    DETACHED.set(this, null);
                }
            }
        }
        return sNode;
    }

    private void addSNode(SNode sNode) {
        DObject parent = dObjectParent();
        if (parent instanceof DModel) {
            getModel().original().addRootNode(sNode);
        } else {
            SNode sParent = ((DNode) parent).sNode(true);
            sParent.addChild(getContainmentLink(), sNode);
        }
    }

    protected SNode reParent(Object sParent, SContainmentLink container, SNode sNode) {
        Object istParent = sNode.getParent();
        if (istParent == null) {
            istParent = sNode.getModel();
        }
        if (istParent != null && (istParent != sParent || container != sNode.getContainmentLink())) {
            if (istParent instanceof SModel) {
                ((SModel) istParent).removeRootNode(sNode);
            } else {
                ((SNode) istParent).removeChild(sNode);
            }
        }
        return sNode;
    }

    @Override
    public SConcept getConcept() {
        Object last = identity[identity.length - 1];
        return last instanceof String ? (SConcept) identity[identity.length - 2] : (SConcept) last;
    }

    public String getAnonymousType() {
        Object last = identity[identity.length - 1];
        return last instanceof String ? (String) last : null;
    }

    @Override
    public boolean isInstanceOfConcept(SAbstractConcept c) {
        return getConcept().isSubConceptOf(c);
    }

    @Override
    public String getPresentation() {
        return SNodeUtil.getPresentation(this);
    }

    @Override
    public String getName() {
        return NAME_OBSERVED.get(this);
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
                return target.reference(false);
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

    @Override
    public SNodeReference getReference() {
        throw new UnsupportedOperationException();
    }

    @Override
    public String getRoleInParent() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean hasProperty(String propertyName) {
        throw new UnsupportedOperationException();
    }

    @Override
    public String getProperty(String propertyName) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void setProperty(String propertyName, String propertyValue) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Iterable<String> getPropertyNames() {
        throw new UnsupportedOperationException();
    }

    @Override
    public void setReferenceTarget(String role, SNode target) {
        throw new UnsupportedOperationException();
    }

    @Override
    public SNode getReferenceTarget(String role) {
        throw new UnsupportedOperationException();
    }

    @Override
    public SReference getReference(String role) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void setReference(String role, SReference reference) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void insertChildBefore(String role, SNode child, SNode anchor) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void addChild(String role, SNode child) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Iterable<? extends SNode> getChildren(String role) {
        throw new UnsupportedOperationException();
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

    @SuppressWarnings("unchecked")
    public <C> C getAncestor(Class<C> cls) {
        Mutable parent = dParent();
        while (parent != null && !cls.isInstance(parent)) {
            parent = parent.dParent();
        }
        return (C) parent;
    }

    public Object[] getIdentity() {
        return identity;
    }

}
