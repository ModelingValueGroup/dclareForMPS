//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2020 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.BiConsumer;
import java.util.stream.Collectors;

import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SConceptFeature;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.ResolveInfo;
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
import org.modelingvalue.collections.util.Quintuple;
import org.modelingvalue.dclare.Action;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.NonCheckingObserved;
import org.modelingvalue.dclare.NonCheckingObserver;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;

import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.errors.item.NodeReportItem;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.DynamicReference;
import jetbrains.mps.smodel.SNodeId.Regular;
import jetbrains.mps.smodel.SNodeUtil;

@SuppressWarnings("unused")
public class DNode extends DMatchedObject<DNode, SNodeReference, SNode> implements SNode {

    private static final Constant<Quintuple<Set<SLanguage>, SConcept, Set<String>, Boolean, Boolean>, DNodeType> NODE_TYPE              = Constant.of("NODE_TYPE", DNodeType::new);

    protected static final Constant<SAbstractConcept, Set<SAbstractConcept>>                                     SUPER_CONCEPTS         = Constant.of("SUPER_CONCEPTS", ac -> {
                                                                                                                                            if (ac instanceof SInterfaceConcept) {
                                                                                                                                                SInterfaceConcept i = (SInterfaceConcept) ac;
                                                                                                                                                Set<SAbstractConcept> supers = Collection.of(i.getSuperInterfaces()).flatMap(DNode.SUPER_CONCEPTS::get).toSet();
                                                                                                                                                return supers.add(ac);
                                                                                                                                            } else {
                                                                                                                                                SConcept c = (SConcept) ac;
                                                                                                                                                Set<SAbstractConcept> supers = Collection.of(c.getSuperInterfaces()).flatMap(DNode.SUPER_CONCEPTS::get).toSet();
                                                                                                                                                SConcept sc = c.getSuperConcept();
                                                                                                                                                if (sc != null) {
                                                                                                                                                    supers = supers.addAll(DNode.SUPER_CONCEPTS.get(sc));
                                                                                                                                                }
                                                                                                                                                return supers.add(ac);
                                                                                                                                            }
                                                                                                                                        });

    protected static final Constant<SConcept, Boolean>                                                           SMART_REFERENCE        = Constant.of("SMART_REFERENCE", c -> c.getProperties().isEmpty() && c.getContainmentLinks().isEmpty() && c.getReferenceLinks().size() == 1);

    protected static final Observed<DNode, DModel>                                                               MODEL                  = NonCheckingObserved.of("$MODEL", null);

    protected static final Observed<DNode, DNode>                                                                ROOT                   = NonCheckingObserved.of("$ROOT", null, (tx, o, pre, post) -> {
                                                                                                                                            Set<Pair<DObject, IssueKindReportItem>> items = MPS_ISSUES.get(o);
                                                                                                                                            if (pre != null) {
                                                                                                                                                DNode.ALL_MPS_ISSUES.set(pre, Set::removeAll, items);
                                                                                                                                            }
                                                                                                                                            if (post != null) {
                                                                                                                                                DNode.ALL_MPS_ISSUES.set(post, Set::addAll, items);
                                                                                                                                            }
                                                                                                                                        });

    protected static final Observed<DNode, Map<Object, Object>>                                                  USER_OBJECTS           = DObserved.of("USER_OBJECTS", Map.of(), false, false, null, false, null, null);

    @SuppressWarnings("deprecation")
    public static final Constant<SContainmentLink, DObserved<DNode, List<DNode>>>                                MANY_CONTAINMENT       = Constant.of("MANY_CONTAINMENT", mc -> DObserved.of(mc, List.of(), !mc.isOptional(), true, null, false, (dNode, pre, post) -> {
                                                                                                                                            SNode sNode = dNode.reParent();
                                                                                                                                            List<SNode> soll = post.map(c -> c.reParent(sNode, mc, c.original())).toList();
                                                                                                                                            List<SNode> ist = children(sNode, mc);
                                                                                                                                            DObserved.map(ist, soll,                                                                                                                                            //
                                                                                                                                                    (n, a) -> {
                                                                                                                                                    }, sNode::removeChild);
                                                                                                                                            ist = children(sNode, mc);
                                                                                                                                            DObserved.map(ist, soll,                                                                                                                                            //
                                                                                                                                                    (n, a) -> sNode.insertChildAfter(mc, n, a), r -> {
                                                                                                                                                                                                                                                                                        });
                                                                                                                                        }, null, mc::getDeclarationNode, false));

    @SuppressWarnings("deprecation")
    public static final Constant<SContainmentLink, DObserved<DNode, DNode>>                                      SINGLE_CONTAINMENT     = Constant.of("SINGLE_CONTAINMENT", sc -> DObserved.of(sc, null, !sc.isOptional(), true, null, false, (dNode, pre, post) -> {
                                                                                                                                            SNode sNode = dNode.reParent();
                                                                                                                                            List<SNode> soll = post != null ? List.of(post.reParent(sNode, sc, post.original())) : List.of();
                                                                                                                                            List<SNode> ist = children(sNode, sc);
                                                                                                                                            DObserved.map(ist, soll,                                                                                                                                            //
                                                                                                                                                    (n, a) -> {
                                                                                                                                                    }, sNode::removeChild);
                                                                                                                                            ist = children(sNode, sc);
                                                                                                                                            DObserved.map(ist, soll,                                                                                                                                            //
                                                                                                                                                    (n, a) -> sNode.addChild(sc, n), r -> {
                                                                                                                                                                                                                                                                                        });
                                                                                                                                        }, null, sc::getDeclarationNode, false));

    @SuppressWarnings("deprecation")
    public static final Constant<SReferenceLink, DObserved<DNode, DNode>>                                        REFERENCE              = Constant.of("REFERENCE", sr -> DObserved.of(sr, null, !sr.isOptional(), false, () -> DNode.OPPOSITE.get(sr), false,                                                   //
            (dNode, pre, post) -> {
                SNode sNode = dNode.original();
                SNode ist = sNode.getReferenceTarget(sr);
                SNode soll = post != null ? post.original() : null;
                if (!Objects.equals(ist, soll)) {
                    sNode.setReferenceTarget(sr, soll);
                }
            }, sr::getDeclarationNode, false)

    );

    @SuppressWarnings("deprecation")
    public static final Constant<SReferenceLink, Observed<DNode, Set<DNode>>>                                    OPPOSITE               = Constant.of("OPPOSITE", sr -> DObserved.of(Pair.of(sr, "OPPOSITE"), Set.of(), false, false, () -> DNode.REFERENCE.get(sr), false,                                     //
            null, sr::getDeclarationNode));
    @SuppressWarnings("deprecation")
    public static final Constant<SProperty, DObserved<DNode, String>>                                            PROPERTY               = Constant.of("PROPERTY", sp -> DObserved.of(sp, null, true, false, null, false,                                                                                        //
            (dNode, pre, post) -> {
                SNode sNode = dNode.original();
                String ist = sNode.getProperty(sp);
                if (!Objects.equals(ist, post)) {
                    sNode.setProperty(sp, post);
                }
            }, sp::getDeclarationNode, false));

    public static final Observed<DNode, Set<SLanguage>>                                                          USED_LANGUAGES         = NonCheckingObserved.of("USED_LANGUAGES", Set.of());

    public static final Observed<DNode, Set<DModel>>                                                             USED_MODELS            = NonCheckingObserved.of("USED_MODELS", Set.of());

    private static final Observer<DNode>                                                                         MODEL_RULE             = DObject.observer(MODEL, o -> {
                                                                                                                                            DNode p = o.getAncestor(DNode.class);
                                                                                                                                            MODEL.set(o, p != null ? MODEL.get(p) : o.getAncestor(DModel.class));
                                                                                                                                        });

    private static final Observer<DNode>                                                                         ROOT_RULE              = DObject.observer(ROOT, o -> {
                                                                                                                                            DNode p = o.getParent();
                                                                                                                                            ROOT.set(o, p != null ? ROOT.get(p) : o);
                                                                                                                                        });

    private static final Observer<DNode>                                                                         USED_LANGUAGES_RULE    = DObject.observer(USED_LANGUAGES, o -> USED_LANGUAGES.set(o, o.getChildren().flatMap(DNode.USED_LANGUAGES::get).toSet().add(o.getConcept().getLanguage())));

    private static final Observer<DNode>                                                                         USED_MODELS_RULE       = DObject.observer(USED_MODELS, o -> USED_MODELS.set(o, o.getChildren().flatMap(DNode.USED_MODELS::get).toSet().addAll(o.getReferenced().map(                           //
            r -> {
                SModel sm = r.getOriginalModel();
                if (sm != null) {
                    return DModel.of(sm);
                }
                return MODEL.get(r);
            }).toSet())));

    protected static final Setable<DNode, String>                                                                NAME_OBSERVED          = PROPERTY.get(SNodeUtil.property_INamedConcept_name);

    @SuppressWarnings("rawtypes")
    protected static final Constant<SConcept, Set<Observer>>                                                     COPY_CONCEPT_OBSERVERS = Constant.of("COPY_CONCEPT_OBSERVERS", c -> {
                                                                                                                                            Set<Observer> observers = Set.of();
                                                                                                                                            for (SProperty property : c.getProperties()) {
                                                                                                                                                Observed<DNode, String> observed = PROPERTY.get(property);
                                                                                                                                                observers = observers.add(copyObserver(observed,                                                                                                                //
                                                                                                                                                        (o, cc) -> observed.set(o, observed.get(cc.copied()))));
                                                                                                                                            }
                                                                                                                                            for (SContainmentLink containment : c.getContainmentLinks()) {
                                                                                                                                                if (containment.isMultiple()) {
                                                                                                                                                    Observed<DNode, List<DNode>> observed = MANY_CONTAINMENT.get(containment);
                                                                                                                                                    observers = observers.add(copyObserver(observed,                                                                                                            //
                                                                                                                                                            (o, cc) -> {
                                                                                                                                                                List<DNode> post = copy(observed.get(cc.copied()), cc.root());
                                                                                                                                                                observed.set(o, (b, a) -> DMatchedObject.manyMatch(o, b, a, observed), post);
                                                                                                                                                            }));
                                                                                                                                                } else {
                                                                                                                                                    Observed<DNode, DNode> observed = SINGLE_CONTAINMENT.get(containment);
                                                                                                                                                    observers = observers.add(copyObserver(observed,                                                                                                            //
                                                                                                                                                            (o, cc) -> {
                                                                                                                                                                DNode post = copy(observed.get(cc.copied()), cc.root());
                                                                                                                                                                observed.set(o, (b, a) -> DMatchedObject.singleMatch(o, b, a, observed), post);
                                                                                                                                                            }));
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            for (SReferenceLink reference : c.getReferenceLinks()) {
                                                                                                                                                Observed<DNode, DNode> observed = REFERENCE.get(reference);
                                                                                                                                                observers = observers.add(copyObserver(observed,                                                                                                                //
                                                                                                                                                        (o, cc) -> observed.set(o, map(observed.get(cc.copied()), cc.root()))));
                                                                                                                                            }
                                                                                                                                            return observers;
                                                                                                                                        });

    private static final Action<DNode>                                                                           READ_PROPERTIES        = Action.of("$READ_PROPERTIES", n -> {
                                                                                                                                            SNode sNode = n.tryOriginal();
                                                                                                                                            if (sNode != null) {
                                                                                                                                                for (SProperty property : n.getConcept().getProperties()) {
                                                                                                                                                    PROPERTY.get(property).set(n, dClareMPS().read(() -> sNode.getProperty(property)));
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        });

    private static final Action<DNode>                                                                           READ_REFERENCES        = Action.of("$READ_REFERENCES", n -> {
                                                                                                                                            SNode sNode = n.tryOriginal();
                                                                                                                                            if (sNode != null) {
                                                                                                                                                for (SReferenceLink link : n.getConcept().getReferenceLinks()) {
                                                                                                                                                    SNode targetNode = dClareMPS().read(() -> sNode.getReferenceTarget(link));
                                                                                                                                                    REFERENCE.get(link).set(n, targetNode != null ? of(targetNode) : null);
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        });

    private static final Action<DNode>                                                                           READ_CHILDREN          = Action.of("$READ_CHILDREN", n -> {
                                                                                                                                            SNode sNode = n.tryOriginal();
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
                                                                                                                                        });

    @SuppressWarnings("rawtypes")
    protected static final Constant<SConcept, Set<? extends Setable>>                                            CONCEPT_SETABLES       = Constant.of("$CONCEPT_SETABLES", c -> Collection.concat(                                                                                                              //
            Collection.of(c.getProperties()),                                                                                                                                                                                                                                                                   //
            Collection.of(c.getContainmentLinks()),                                                                                                                                                                                                                                                             //
            Collection.of(c.getReferenceLinks())).map(DNode::setable).toSet());

    @SuppressWarnings("rawtypes")
    protected static final Constant<SConcept, Set<Observer>>                                                     CONCEPT_OBSERVERS      = Constant.of("$CONCEPT_OBSERVERS", c -> Set.of());

    protected static final Setable<DNode, Set<Pair<DObject, IssueKindReportItem>>>                               ALL_MPS_ISSUES         = Setable.of("$ALL_MPS_ISSUES", Set.of(), (tx, o, pre, post) -> Setable.<Set<Pair<DObject, IssueKindReportItem>>, Pair<DObject, IssueKindReportItem>> diff(pre, post,   //
            a -> DObject.MPS_ISSUES.set(a.a(), Set::add, a),                                                                                                                                                                                                                                                    //
            r -> DObject.MPS_ISSUES.set(r.a(), Set::remove, r)));

    protected static final Observed<DNode, Integer>                                                              INDEX                  = DObserved.of("INDEX", -1, false, false, null, false, null, null);

    @SuppressWarnings("rawtypes")
    private static final Observer<DNode>                                                                         INDEX_RULE             = DObject.observer(INDEX, o -> {
                                                                                                                                            Pair<Mutable, Setable<Mutable, ?>> pc = Mutable.D_PARENT_CONTAINING.get(o);
                                                                                                                                            Object children = pc != null ? pc.b().get(pc.a()) : null;
                                                                                                                                            INDEX.set(o, o.equals(children) ? 0 : children instanceof List ? ((List) children).firstIndexOf(o) : -1);
                                                                                                                                        });

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                                                                         OBSERVERS              = DMatchedObject.OBSERVERS.addAll(Set.of(ROOT_RULE, MODEL_RULE, USED_LANGUAGES_RULE, USED_MODELS_RULE, INDEX_RULE));

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                                                                          SETABLES               = DMatchedObject.SETABLES.addAll(Set.of(NAME_OBSERVED, ROOT, MODEL, USER_OBJECTS, USED_MODELS, USED_LANGUAGES, ALL_MPS_ISSUES, INDEX));

    protected static final AtomicLong                                                                            COUNTER                = new AtomicLong(0L);

    public static NonCheckingObserver<DNode> copyObserver(Observed<DNode, ?> observed, BiConsumer<DNode, DCopyConstruction> action) {
        return observer(observed, o -> {
            for (DCopyConstruction cc : o.getCopyConstructions()) {
                action.accept(o, cc);
            }
        });
    }

    public static DNode of(SLanguage anonymousLanguage, String anonymousType, Object[] identity, SConcept concept) {
        return quotationConstruct(anonymousLanguage, anonymousType, identity, //
                () -> new DNode(new Object[]{COUNTER.getAndIncrement(), concept}));
    }

    public DNode copy(String anonymousType, DObject ctx) {
        return copyRootConstruct(anonymousType, ctx, this, //
                () -> new DNode(new Object[]{COUNTER.getAndIncrement(), getConcept()}));
    }

    private DNode copy(DConstruction root) {
        return copyChildConstruct(root, this, //
                () -> new DNode(new Object[]{COUNTER.getAndIncrement(), getConcept()}));
    }

    protected static DNode read(SNode original) {
        SConcept concept = original.getConcept();
        DNode dNode = of(concept, original.getReference());
        if (concept.isSubConceptOf(SNodeUtil.concept_INamedConcept)) {
            NAME_OBSERVED.set(dNode, original.getName());
        }
        INDEX.set(dNode, SNodeOperations.getIndexInParent(original));
        return dNode;
    }

    public static DNode of(SNode original) {
        return original instanceof DNode ? (DNode) original : of(original.getConcept(), original.getReference());
    }

    public static DNode of(SConcept concept, SNodeReference ref) {
        Objects.requireNonNull(ref.getModelReference(), "DNode of empty SModel reference is most illogical");
        return readConstruct(ref, () -> new DNode(new Object[]{COUNTER.getAndIncrement(), concept}));
    }

    @Override
    public SConcept getConcept() {
        return (SConcept) identity[1];
    }

    @Override
    protected Long number() {
        return (Long) identity[0];
    }

    public static SNode wrap(SNode original) {
        return original instanceof DNode ? (DNode) original : of(original.getConcept(), original.getReference());
    }

    protected DNode(Object[] identity) {
        super(identity);
    }

    @Override
    public boolean isExternal() {
        SModel sModel = getOriginalModel();
        return sModel != null && dClareMPS().project.getPath(sModel.getModule()) == null;
    }

    @Override
    protected SNode create() {
        SConcept concept = getConcept();
        SNode createNode = getModel().original().createNode(concept);
        if (concept.isSubConceptOf(SNodeUtil.concept_INamedConcept)) {
            createNode.setProperty(SNodeUtil.property_INamedConcept_name, NAME_OBSERVED.get(this));
        }
        return createNode;
    }

    @Override
    public String toString() {
        SConcept concept = getConcept();
        String name = concept.isSubConceptOf(SNodeUtil.concept_INamedConcept) ? getName() : null;
        return concept.getName() + (name != null ? ":" + name + "#" + identity[0] : "#" + identity[0]);
    }

    protected SModel getOriginalModel() {
        SNodeReference nRef = reference();
        SModelReference mRef = nRef != null ? nRef.getModelReference() : null;
        return mRef != null ? dClareMPS().read(() -> mRef.resolve(null)) : null;
    }

    @Override
    protected DNodeType getType() {
        Set<SLanguage> ls = dClareMPS().getRepository().getType().getLanguages().add(getConcept().getLanguage());
        ls = ls.addAll(getAnonymousLanguages());
        return NODE_TYPE.get(Quintuple.of(ls, getConcept(), getAnonymousTypes(), isExternal(), isCopy()));
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

    private static List<DNode> copy(List<DNode> children, DCopyConstruction root) {
        return children.sequential().map(c -> copy(c, root)).toList();
    }

    private static DNode copy(DNode child, DCopyConstruction root) {
        if (child != null) {
            return child.copy(root);
        } else {
            return null;
        }
    }

    private static DNode map(DNode referenced, DCopyConstruction root) {
        if (referenced != null) {
            if (referenced.equals(root.copied())) {
                return getDerived(root);
            } else if (referenced.hasAncestor(root.copied())) {
                DNode parent = map(referenced.getParent(), root);
                if (parent != null) {
                    SContainmentLink cl = referenced.getContainmentLink();
                    if (cl != null) {
                        DObserved<DNode, ?> observed = cl.isMultiple() ? MANY_CONTAINMENT.get(cl) : SINGLE_CONTAINMENT.get(cl);
                        NonCheckingObserver<DObject> observer = NonCheckingObserver.of(observed, null);
                        return getDerived(new DCopyConstruction(parent, observer, referenced, root));
                    }
                }
            } else {
                return referenced;
            }
        }
        return null;
    }

    @Override
    public SNodeId getNodeId() {
        return new Regular((long) identity[0]);
    }

    @Override
    protected void read() {
        READ_PROPERTIES.trigger(this);
        READ_CHILDREN.trigger(this);
        READ_REFERENCES.trigger(this);
    }

    @Override
    protected Object matchType() {
        return getConcept();
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    protected Object matchKey() {
        SConcept concept = getConcept();
        Set<DAttribute> id = TYPE.get(this).getIndetifying();
        if (!id.isEmpty()) {
            Map<DAttribute, Object> map = Map.of();
            for (DAttribute attr : id) {
                Object val = attr.get(this);
                if (val == null) {
                    return null;
                } else {
                    map = map.put(attr, val);
                }
            }
            return map;
        } else if (concept.isSubConceptOf(SNodeUtil.concept_INamedConcept)) {
            return NAME_OBSERVED.get(this);
        } else if (SMART_REFERENCE.get(concept)) {
            SReferenceLink rl = getConcept().getReferenceLinks().iterator().next();
            return REFERENCE.get(rl).get(this);
        } else {
            Integer idx = INDEX.get(this);
            return idx >= 0 ? idx : null;
        }
    }

    public Integer getIndex() {
        return INDEX.get(this);
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
            SModel sParent = ((DModel) parent).original();
            //noinspection ConstantConditions
            sParent.addRootNode(sNode);
        } else {
            SNode sParent = ((DNode) parent).original();
            //noinspection ConstantConditions
            sParent.addChild(getContainmentLink(), sNode);
        }
    }

    protected SNode reParent() {
        SNode sNode = original();
        Mutable dParent = dParent();
        if (dParent instanceof DNode) {
            return reParent(((DNode) dParent).reParent(), getContainmentLink(), sNode);
        } else {
            return reParent(((DModel) dParent).original(), null, sNode);
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
                return target.reference();
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

    @Override
    public void dropReference(SReferenceLink role) {
        REFERENCE.get(role).set(this, null);
    }

    @Override
    public void setReference(SReferenceLink role, ResolveInfo resolveInfo) {
        String ri = resolveInfo instanceof ResolveInfo.S ? ((ResolveInfo.S) resolveInfo).getValue() : null;
        setReference(role, DynamicReference.createDynamicReference(role, this, null, ri));
    }

    @SuppressWarnings("unchecked")
    public void setFeature(SConceptFeature feature, Object value) {
        if (feature instanceof SProperty) {
            PROPERTY.get((SProperty) feature).set(this, value == null ? null : value.toString());
        } else if (feature instanceof SContainmentLink) {
            SContainmentLink cl = (SContainmentLink) feature;
            if (cl.isMultiple()) {
                List<DNode> post = value != null ? Collection.of((Iterable<DNode>) value).map(Objects::requireNonNull).distinct().toList() : null;
                DObserved<DNode, List<DNode>> mc = MANY_CONTAINMENT.get(cl);
                mc.set(this, (b, a) -> DMatchedObject.manyMatch(this, b, a == null || Objects.equals(a, b) ? b : a, mc), post);
            } else {
                if (value != null) {
                    Objects.requireNonNull(value);
                }
                DObserved<DNode, DNode> sc = SINGLE_CONTAINMENT.get(cl);
                sc.set(this, (b, a) -> DMatchedObject.singleMatch(this, b, a, sc), (DNode) value);
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
        return reference();
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
