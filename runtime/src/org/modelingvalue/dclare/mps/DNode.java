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
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.Quadruple;
import org.modelingvalue.dclare.Action;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.Direction;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.NonCheckingObserved;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;

import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.errors.item.NodeReportItem;
import jetbrains.mps.smodel.SNodeUtil;

@SuppressWarnings("unused")
public class DNode extends DMatchedObject<DNode, SNodeReference, SNode> implements SNode {

    private static final Constant<Quadruple<Set<SLanguage>, SConcept, Set<String>, Boolean>, DNodeType> NODE_TYPE              = Constant.of("NODE_TYPE", DNodeType::new);

    protected static final Observed<DNode, DModel>                                                      MODEL                  = NonCheckingObserved.of("$MODEL", null);

    protected static final Observed<DNode, DNode>                                                       ROOT                   = NonCheckingObserved.of("$ROOT", null, (tx, o, pre, post) -> {
                                                                                                                                   Set<Pair<DObject, IssueKindReportItem>> items = MPS_ISSUES.get(o);
                                                                                                                                   if (pre != null) {
                                                                                                                                       DNode.ALL_MPS_ISSUES.set(pre, Set::removeAll, items);
                                                                                                                                   }
                                                                                                                                   if (post != null) {
                                                                                                                                       DNode.ALL_MPS_ISSUES.set(post, Set::addAll, items);
                                                                                                                                   }
                                                                                                                               });

    protected static final Observed<DNode, Map<Object, Object>>                                         USER_OBJECTS           = DObserved.of("USER_OBJECTS", Map.of(), false, false, null, false, null, null);

    @SuppressWarnings("deprecation")
    public static final Constant<SContainmentLink, DObserved<DNode, List<DNode>>>                       MANY_CONTAINMENT       = Constant.of("MANY_CONTAINMENT", mc -> DObserved.of(mc, List.of(), !mc.isOptional(), true, null, false,                                                                //
            (dNode, pre, post) -> {
                SNode sNode = dNode.reParent();
                List<SNode> soll = post.map(c -> c.reParent(sNode, mc, c.original(true))).toList();
                List<SNode> ist = children(sNode, mc);
                DObserved.map(ist, soll,                                                                                                                                                                                                                                                               //
                        (n, a) -> {
                        }, sNode::removeChild);
                ist = children(sNode, mc);
                DObserved.map(ist, soll,                                                                                                                                                                                                                                                               //
                        (n, a) -> sNode.insertChildAfter(mc, n, a), r -> {
                        });
            }, (tx, p, b, a) -> DMatchedObject.matchChildren(p, b, a), mc::getDeclarationNode, false));

    @SuppressWarnings("deprecation")
    public static final Constant<SContainmentLink, DObserved<DNode, DNode>>                             SINGLE_CONTAINMENT     = Constant.of("SINGLE_CONTAINMENT", sc -> DObserved.of(sc, null, !sc.isOptional(), true, null, false,                                                                   //
            (dNode, pre, post) -> {
                SNode sNode = dNode.reParent();
                List<SNode> soll = post != null ? List.of(post.reParent(sNode, sc, post.original(true))) : List.of();
                List<SNode> ist = children(sNode, sc);
                DObserved.map(ist, soll,                                                                                                                                                                                                                                                               //
                        (n, a) -> {
                        }, sNode::removeChild);
                ist = children(sNode, sc);
                DObserved.map(ist, soll,                                                                                                                                                                                                                                                               //
                        (n, a) -> sNode.addChild(sc, n), r -> {
                        });
            }, (tx, p, b, a) -> DMatchedObject.matchChildren(p, DMatchedObject.<DNode> collection(b), DMatchedObject.<DNode> collection(a)), sc::getDeclarationNode, false));

    protected static final Constant<SContainmentLink, Function<DNode, List<SNode>>>                     READ_CHILDREN_FUNCTION = Constant.of("READ_CHILDREN_FUNCTION",                                                                                                                                 //
            cl -> n -> dClareMPS().read(() -> Collection.of(n.original().getChildren(cl)).sequential().map(c -> (SNode) c).toList()));

    private static final Constant<SContainmentLink, Observer<DNode>>                                    READ_MATCHER           = Constant.of("READ_MATCHER", cl -> DObject.observer(Pair.of("MATCHER", cl), n -> DNode.matchRead(n, READ_CHILDREN_FUNCTION.get(cl), cl.isMultiple() ?                  //
            MANY_CONTAINMENT.get(cl).get(n) :                                                                                                                                                                                                                                                          //
            SINGLE_CONTAINMENT.get(cl).<DNode> getCollection(n).toList())));

    @SuppressWarnings("deprecation")
    public static final Constant<SReferenceLink, DObserved<DNode, DNode>>                               REFERENCE              = Constant.of("REFERENCE", sr -> DObserved.of(sr, null, !sr.isOptional(), false, () -> DNode.OPPOSITE.get(sr), false,                                                   //
            (dNode, pre, post) -> {
                SNode sNode = dNode.original(true);
                SNode ist = sNode.getReferenceTarget(sr);
                SNode soll = post != null ? post.original(true) : null;
                if (!Objects.equals(ist, soll)) {
                    sNode.setReferenceTarget(sr, soll);
                }
            }, sr::getDeclarationNode, false)

    );

    @SuppressWarnings("deprecation")
    public static final Constant<SReferenceLink, Observed<DNode, Set<DNode>>>                           OPPOSITE               = Constant.of("OPPOSITE", sr -> DObserved.of(Pair.of(sr, "OPPOSITE"), Set.of(), false, false, () -> DNode.REFERENCE.get(sr), false,                                     //
            null, sr::getDeclarationNode));
    @SuppressWarnings("deprecation")
    public static final Constant<SProperty, DObserved<DNode, String>>                                   PROPERTY               = Constant.of("PROPERTY", sp -> DObserved.of(sp, null, true, false, null, false,                                                                                        //
            (dNode, pre, post) -> {
                SNode sNode = dNode.original(true);
                String ist = sNode.getProperty(sp);
                if (!Objects.equals(ist, post)) {
                    sNode.setProperty(sp, post);
                }
            }, sp::getDeclarationNode, false));

    public static final Observed<DNode, Set<SLanguage>>                                                 USED_LANGUAGES         = NonCheckingObserved.of("USED_LANGUAGES", Set.of());

    public static final Observed<DNode, Set<DModel>>                                                    USED_MODELS            = NonCheckingObserved.of("USED_MODELS", Set.of());

    private static final Observer<DNode>                                                                MODEL_RULE             = DObject.observer(MODEL, o -> {
                                                                                                                                   DNode p = o.getAncestor(DNode.class);
                                                                                                                                   MODEL.set(o, p != null ? MODEL.get(p) : o.getAncestor(DModel.class));
                                                                                                                               });

    private static final Observer<DNode>                                                                ROOT_RULE              = DObject.observer(ROOT, o -> {
                                                                                                                                   DNode p = o.getParent();
                                                                                                                                   ROOT.set(o, p != null ? ROOT.get(p) : o);
                                                                                                                               });

    private static final Observer<DNode>                                                                USED_LANGUAGES_RULE    = DObject.observer(USED_LANGUAGES, o -> USED_LANGUAGES.set(o, o.getChildren().flatMap(DNode.USED_LANGUAGES::get).toSet().add(o.getConcept().getLanguage())));

    private static final Observer<DNode>                                                                USED_MODELS_RULE       = DObject.observer(USED_MODELS, o -> USED_MODELS.set(o, o.getChildren().flatMap(DNode.USED_MODELS::get).toSet().addAll(o.getReferenced().map(                           //
            r -> {
                if (r.isRead()) {
                    SModel sm = r.getOriginalModel();
                    if (sm != null) {
                        return DModel.of(sm);
                    }
                }
                return MODEL.get(r);
            }).toSet())));

    protected static final Setable<DNode, String>                                                       NAME_OBSERVED          = PROPERTY.get(SNodeUtil.property_INamedConcept_name);

    private static final Action<DNode>                                                                  READ_PROPERTIES        = Action.of("$READ_PROPERTIES", n -> {
                                                                                                                                   SNode sNode = n.original();
                                                                                                                                   if (sNode != null) {
                                                                                                                                       for (SProperty property : n.getConcept().getProperties()) {
                                                                                                                                           PROPERTY.get(property).set(n, dClareMPS().read(() -> sNode.getProperty(property)));
                                                                                                                                       }
                                                                                                                                   }
                                                                                                                               }, Direction.forward);

    private static final Action<DNode>                                                                  READ_REFERENCES        = Action.of("$READ_REFERENCES", n -> {
                                                                                                                                   SNode sNode = n.original();
                                                                                                                                   if (sNode != null) {
                                                                                                                                       for (SReferenceLink link : n.getConcept().getReferenceLinks()) {
                                                                                                                                           SNode targetNode = dClareMPS().read(() -> sNode.getReferenceTarget(link));
                                                                                                                                           REFERENCE.get(link).set(n, targetNode != null ? of(targetNode) : null);
                                                                                                                                       }
                                                                                                                                   }
                                                                                                                               }, Direction.backward);

    private static final Action<DNode>                                                                  READ_CHILDREN          = Action.of("$READ_CHILDREN", n -> {
                                                                                                                                   SNode sNode = n.original();
                                                                                                                                   if (sNode != null) {
                                                                                                                                       for (SContainmentLink link : n.getConcept().getContainmentLinks()) {
                                                                                                                                           if (!link.getName().equals("smodelAttribute")) {
                                                                                                                                               List<DNode> list = dClareMPS().read(() -> Collection.of(sNode.getChildren(link)).sequential().map(DNode::read).toList());
                                                                                                                                               if (link.isMultiple()) {
                                                                                                                                                   MANY_CONTAINMENT.get(link).set(n, list);
                                                                                                                                               } else {
                                                                                                                                                   SINGLE_CONTAINMENT.get(link).set(n, list.first());
                                                                                                                                               }
                                                                                                                                           }
                                                                                                                                       }
                                                                                                                                   }
                                                                                                                               }, Direction.forward);

    @SuppressWarnings("rawtypes")
    protected static final Constant<SConcept, Set<? extends Setable>>                                   CONCEPT_SETABLES       = Constant.of("$CONCEPT_SETABLES", c -> Collection.concat(                                                                                                              //
            Collection.of(c.getProperties()),                                                                                                                                                                                                                                                          //
            Collection.of(c.getContainmentLinks()),                                                                                                                                                                                                                                                    //
            Collection.of(c.getReferenceLinks())).map(DNode::setable).toSet());

    @SuppressWarnings("rawtypes")
    protected static final Constant<SConcept, Set<? extends Observer>>                                  CONCEPT_OBSERVERS      = Constant.of("$CONCEPT_OBSERVERS", c -> Collection.of(c.getContainmentLinks()).map(READ_MATCHER::get).toSet());

    protected static final Setable<DNode, Set<Pair<DObject, IssueKindReportItem>>>                      ALL_MPS_ISSUES         = Setable.of("$ALL_MPS_ISSUES", Set.of(), (tx, o, pre, post) -> Setable.<Set<Pair<DObject, IssueKindReportItem>>, Pair<DObject, IssueKindReportItem>> diff(pre, post,   //
            a -> DObject.MPS_ISSUES.set(a.a(), Set::add, a),                                                                                                                                                                                                                                           //
            r -> DObject.MPS_ISSUES.set(r.a(), Set::remove, r)));

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                                                                OBSERVERS              = DMatchedObject.OBSERVERS.addAll(Set.of(ROOT_RULE, MODEL_RULE, USED_LANGUAGES_RULE, USED_MODELS_RULE));

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                                                                 SETABLES               = DMatchedObject.SETABLES.addAll(Set.of(NAME_OBSERVED, ROOT, MODEL, USER_OBJECTS, USED_MODELS, USED_LANGUAGES, ALL_MPS_ISSUES));

    public static DNode of(SLanguage anonymousLanguage, String anonymousType, Object[] identity, SConcept concept) {
        return construct(anonymousLanguage, anonymousType, identity, //
                () -> new DNode(new Object[]{jetbrains.mps.smodel.SModel.generateUniqueId(), concept}));
    }

    protected static DNode read(SNode original) {
        SConcept concept = original.getConcept();
        DNode dNode = of(concept, original.getReference());
        if (concept.isSubConceptOf(SNodeUtil.concept_INamedConcept)) {
            NAME_OBSERVED.set(dNode, original.getName());
        }
        return dNode;
    }

    public static DNode of(SNode original) {
        return original instanceof DNode ? (DNode) original : of(original.getConcept(), original.getReference());
    }

    public static DNode of(SConcept concept, SNodeReference ref) {
        DNode dNode = DMatchedObject.getMatchedObject(ref);
        return dNode != null ? dNode : readNode(concept, ref);
    }

    private static DNode readNode(SConcept concept, SNodeReference ref) {
        Objects.requireNonNull(ref.getModelReference(), "DNode of empty SModel reference is most illogical");
        return new DNode(new Object[]{ref, concept});
    }

    @Override
    public SConcept getConcept() {
        return (SConcept) identity[identity.length - 1];
    }

    public static SNode wrap(SNode original) {
        return original instanceof DNode ? (DNode) original : readNode(original.getConcept(), original.getReference());
    }

    protected DNode(Object[] identity) {
        super(identity);
    }

    @Override
    protected boolean isRead() {
        return identity[0] instanceof SNodeReference;
    }

    @Override
    public boolean isExternal() {
        if (isRead()) {
            SModel sModel = dClareMPS().read(() -> ((SNodeReference) identity[0]).getModelReference().resolve(null));
            return sModel != null && dClareMPS().project.getPath(sModel.getModule()) == null;
        } else {
            return false;
        }
    }

    @Override
    protected SNode create() {
        return getModel().original(true).createNode(getConcept());
    }

    @Override
    public String toString() {
        SConcept concept = getConcept();
        String name = concept.isSubConceptOf(SNodeUtil.concept_INamedConcept) ? getName() : null;
        return name != null ? name : concept.getName() + "#" + getIdString();
    }

    private String getIdString() {
        SNodeId nodeId = getNodeId();
        return nodeId instanceof jetbrains.mps.smodel.SNodeId.Regular ? Long.toString(((jetbrains.mps.smodel.SNodeId.Regular) nodeId).getId(), Character.MAX_RADIX) : nodeId.toString();
    }

    protected SModel getOriginalModel() {
        //noinspection ConstantConditions
        return isRead() ? dClareMPS().read(() -> ((SNodeReference) identity[0]).getModelReference().resolve(null)) : null;
    }

    @Override
    protected DNodeType getType() {
        Set<SLanguage> ls = dClareMPS().getRepository().getType().getLanguages().add(getConcept().getLanguage());
        ls = ls.addAll(getAnonymousLanguages());
        return NODE_TYPE.get(Quadruple.of(ls, getConcept(), getAnonymousTypes(), isExternal()));
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
        return isRead() ? ((SNodeReference) identity[0]).getNodeId() : (SNodeId) identity[0];
    }

    @Override
    protected void init(DClareMPS dClareMPS) {
        super.init(dClareMPS);
    }

    @Override
    protected void exit(DClareMPS dClareMPS) {
        super.exit(dClareMPS);
    }

    @Override
    protected void read() {
        READ_PROPERTIES.trigger(this);
        READ_CHILDREN.trigger(this);
        READ_REFERENCES.trigger(this);
    }

    @Override
    protected boolean matches(DNode other) {
        SConcept concept = getConcept();
        if (other.getConcept().equals(concept)) {
            if (concept.isSubConceptOf(SNodeUtil.concept_INamedConcept)) {
                return Objects.equals(NAME_OBSERVED.get(other), NAME_OBSERVED.get(this));
            }
            return true;
        }
        return false;
    }

    @Override
    protected boolean matchesRead(DClareMPS dClare, SNode read) {
        SConcept concept = getConcept();
        if (read.getConcept().equals(concept)) {
            if (concept.isSubConceptOf(SNodeUtil.concept_INamedConcept)) {
                return Objects.equals(dClare.read(() -> read.getProperty(SNodeUtil.property_INamedConcept_name)), NAME_OBSERVED.get(this));
            }
            return true;
        }
        return false;
    }

    @Override
    public DModel getModel() {
        return MODEL.get(this);
    }

    @Override
    protected SNodeReference reference(SNode read) {
        return read.getReference();
    }

    @Override
    protected SNode resolve(SNodeReference ref) {
        return ref.resolve(null);
    }

    @Override
    protected void addSObject(SNode sNode) {
        DObject parent = dObjectParent();
        if (parent instanceof DModel) {
            SModel sParent = ((DModel) parent).original(true);
            //noinspection ConstantConditions
            sParent.addRootNode(sNode);
        } else {
            SNode sParent = ((DNode) parent).original(true);
            //noinspection ConstantConditions
            sParent.addChild(getContainmentLink(), sNode);
        }
    }

    protected SNode reParent() {
        SNode sNode = original(true);
        Mutable dParent = dParent();
        if (dParent instanceof DNode) {
            return reParent(((DNode) dParent).reParent(), getContainmentLink(), sNode);
        } else {
            return reParent(((DModel) dParent).original(true), null, sNode);
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
            MANY_CONTAINMENT.get(role).set(this, List::addUnique, dNode);
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
                MANY_CONTAINMENT.get(link).set(this, List::remove, dNode);
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
            //noinspection ConstantConditions
            if (cl.isMultiple()) {
                MANY_CONTAINMENT.get(cl).set(parent, List::remove, this);
            } else {
                SINGLE_CONTAINMENT.get(cl).set(parent, (v, e) -> equals(v) ? null : v, this);
            }
        } else {
            DModel model = getModel();
            if (model != null) {
                DModel.ROOTS.set(model, Set::remove, this);
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
        return ROOT.get(this);
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

    @Override
    public Iterable<? extends DNode> getChildren(SContainmentLink role) {
        return role.isMultiple() ? MANY_CONTAINMENT.get(role).get(this) : SINGLE_CONTAINMENT.get(role).<DNode> getCollection(this).toList();
    }

    @SuppressWarnings("rawtypes")
    private static Setable setable(SConceptFeature feature) {
        if (feature instanceof SProperty) {
            return PROPERTY.get((SProperty) feature);
        } else if (feature instanceof SContainmentLink) {
            SContainmentLink cl = (SContainmentLink) feature;
            return cl.isMultiple() ? MANY_CONTAINMENT.get(cl) : SINGLE_CONTAINMENT.get(cl);
        } else {
            return REFERENCE.get((SReferenceLink) feature);
        }
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
            @Deprecated
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
                DModel model = target.getModel();
                return model == null ? null : model.getReference();
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
                List<DNode> element = value != null ? Collection.of((Iterable<DNode>) value).distinct().toList() : null;
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
        return reference(false);
    }

    @Override
    @Deprecated
    public String getRoleInParent() {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public boolean hasProperty(String propertyName) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public String getProperty(String propertyName) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public void setProperty(String propertyName, String propertyValue) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public Iterable<String> getPropertyNames() {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public void setReferenceTarget(String role, SNode target) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public SNode getReferenceTarget(String role) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public SReference getReference(String role) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public void setReference(String role, SReference reference) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public void insertChildBefore(String role, SNode child, SNode anchor) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public void addChild(String role, SNode child) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
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

    @SuppressWarnings("unchecked")
    @Override
    public java.util.Set<NodeReportItem> getIssues() {
        return (java.util.Set<NodeReportItem>) super.getIssues();
    }

}
