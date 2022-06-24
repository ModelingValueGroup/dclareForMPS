//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2022 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import static org.modelingvalue.dclare.SetableModifier.*;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;

import org.jetbrains.mps.openapi.language.*;
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
import org.modelingvalue.collections.util.TriConsumer;
import org.modelingvalue.dclare.*;

import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.errors.item.NodeReportItem;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.DynamicReference;
import jetbrains.mps.smodel.SNodeUtil;

@SuppressWarnings("unused")
public class DNode extends DNewableObject<DNode, SNodeReference, SNode> implements SNode {

    private static final Constant<Quintuple<Set<SLanguage>, SConcept, Set<String>, Boolean, IAspect>, DNodeType> NODE_TYPE              = Constant.of("NODE_TYPE", DNodeType::new);

    private static final Constant<SConcept, AtomicLong>                                                          NODE_COUNTER           = Constant.of("NODE_COUNTER", NodeCounter::new, durable);

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

    protected static final Constant<SConcept, Set<SReferenceLink>>                                               SINGLE_REFERENCES      = Constant.of("SINGLE_REFERENCES", c -> {
                                                                                                                                            return Collection.of(c.getReferenceLinks()).exclude(SReferenceLink::isOptional).                                                                           //
                                                                                                                                                    exclude(SNodeUtil.concept_BaseConcept.getReferenceLinks()::contains).toSet();
                                                                                                                                        });

    @SuppressWarnings("unlikely-arg-type")
    protected static final Constant<SConcept, Set<SContainmentLink>>                                             SINGLE_CONTAINMENTS    = Constant.of("SINGLE_CONTAINMENTS", c -> {
                                                                                                                                            return Collection.of(c.getContainmentLinks()).exclude(SContainmentLink::isMultiple).exclude(SContainmentLink::isOptional).                                 //
                                                                                                                                                    exclude(SNodeUtil.concept_BaseConcept.getContainmentLinks()::contains).toSet();
                                                                                                                                        });

    protected static final DObserved<DNode, DModel>                                                              MODEL                  = DObserved.of("$MODEL", null, dNode -> {
                                                                                                                                            SNode sNode = dNode.tryOriginal();
                                                                                                                                            SModel sModel = sNode != null ? sNode.getModel() : null;
                                                                                                                                            return sModel != null ? DModel.of(sModel) : null;
                                                                                                                                        }, null, synthetic);

    protected static final DObserved<DNode, DNode>                                                               ROOT                   = DObserved.of("$ROOT", null, dNode -> {
                                                                                                                                            SNode sNode = dNode.tryOriginal();
                                                                                                                                            SNode sRoot = sNode != null ? sNode.getContainingRoot() : null;
                                                                                                                                            return sRoot != null ? DNode.of(sRoot) : null;
                                                                                                                                        }, null, (tx, o, pre, post) -> {
                                                                                                                                            Set<Pair<DObject, IssueKindReportItem>> items = MPS_ISSUES.get(o);
                                                                                                                                            if (pre != null) {
                                                                                                                                                DNode.ALL_MPS_ISSUES.set(pre, Set::removeAll, items);
                                                                                                                                            }
                                                                                                                                            if (post != null) {
                                                                                                                                                DNode.ALL_MPS_ISSUES.set(post, Set::addAll, items);
                                                                                                                                            }
                                                                                                                                        }, synthetic);
    @SuppressWarnings({"unchecked", "rawtypes"})
    protected static final DObserved<DNode, Map<Object, Object>>                                                 USER_OBJECTS           = DObserved.of("USER_OBJECTS", Map.of(), (Function) null, (TriConsumer) null);

    @SuppressWarnings("deprecation")
    public static final Constant<SProperty, DObserved<DNode, String>>                                            PROPERTY               = Constant.of("PROPERTY", sp -> DObserved.of(sp, null, dNode -> {
                                                                                                                                            SNode sNode = dNode.tryOriginal();
                                                                                                                                            return sNode != null ? sNode.getProperty(sp) : null;
                                                                                                                                        }, (dNode, pre, post) -> {
                                                                                                                                            SNode sNode = dNode.original();
                                                                                                                                            sNode.setProperty(sp, post);
                                                                                                                                        }, sp::getDeclarationNode));

    @SuppressWarnings("deprecation")
    public static final Constant<SContainmentLink, DObserved<DNode, List<DNode>>>                                MANY_CONTAINMENT       = Constant.of("MANY_CONTAINMENT", mc -> DObserved.of(mc, List.of(), dNode -> {
                                                                                                                                            SNode sNode = dNode.tryOriginal();
                                                                                                                                            return sNode != null ? children(sNode, mc).map(DNode::of).toList() : List.of();
                                                                                                                                        }, (dNode, pre, post) -> {
                                                                                                                                            SNode sNode = dNode.reParent();
                                                                                                                                            List<SNode> soll = post.sequential().map(c -> c.reParent(sNode, mc, c.original())).toList();
                                                                                                                                            List<SNode> ist = pre.sequential().map(c -> c.tryOriginal()).toList();
                                                                                                                                            DObserved.map(ist, soll, (n, a) -> {
                                                                                                                                            }, sNode::removeChild);
                                                                                                                                            DObserved.map(children(sNode, mc), soll, (n, a) -> sNode.insertChildAfter(mc, n, a), r -> {
                                                                                                                                            });
                                                                                                                                        }, mc::getDeclarationNode, containment));

    @SuppressWarnings("deprecation")
    public static final Constant<SContainmentLink, DObserved<DNode, DNode>>                                      SINGLE_CONTAINMENT     = Constant.of("SINGLE_CONTAINMENT", sc -> DObserved.of(sc, null, dNode -> {
                                                                                                                                            SNode sNode = dNode.tryOriginal();
                                                                                                                                            SNode child = sNode != null ? children(sNode, sc).first() : null;
                                                                                                                                            return child != null ? DNode.of(child) : null;
                                                                                                                                        }, (dNode, pre, post) -> {
                                                                                                                                            SNode sNode = dNode.reParent();
                                                                                                                                            List<SNode> soll = post != null ? List.of(post.reParent(sNode, sc, post.original())) : List.of();
                                                                                                                                            List<SNode> ist = pre != null ? List.of(pre.tryOriginal()) : List.of();
                                                                                                                                            DObserved.map(ist, soll, (n, a) -> {
                                                                                                                                            }, sNode::removeChild);
                                                                                                                                            DObserved.map(children(sNode, sc), soll, (n, a) -> sNode.addChild(sc, n), r -> {
                                                                                                                                            });
                                                                                                                                        }, sc::getDeclarationNode, containment));

    @SuppressWarnings("deprecation")
    public static final Constant<SReferenceLink, DObserved<DNode, DNode>>                                        REFERENCE              = Constant.of("REFERENCE", sr -> DObserved.of(sr, null, () -> DNode.OPPOSITE.get(sr), dNode -> {
                                                                                                                                            SNode orig = dNode.tryOriginal();
                                                                                                                                            SReference ref = orig != null ? orig.getReference(sr) : null;
                                                                                                                                            SNode sNode = ref != null ? ref.getTargetNode() : null;
                                                                                                                                            return sNode != null ? DNode.of(sNode) : null;
                                                                                                                                        }, (dNode, pre, post) -> {
                                                                                                                                            SNode sNode = dNode.original();
                                                                                                                                            SNode soll = post != null ? post.original() : null;
                                                                                                                                            sNode.setReferenceTarget(sr, soll);
                                                                                                                                        }, sr::getDeclarationNode));
    @SuppressWarnings("deprecation")
    public static final Constant<SReferenceLink, DObserved<DNode, Set<DNode>>>                                   OPPOSITE               = Constant.of("OPPOSITE", sr -> DObserved.of(Pair.of(sr, "OPPOSITE"), Set.of(), () -> DNode.REFERENCE.get(sr), null, null, sr::getDeclarationNode, synthetic));

    private static final Observer<DNode>                                                                         MODEL_RULE             = DObject.observer(MODEL, o -> {
                                                                                                                                            DNode p = o.getAncestor(DNode.class);
                                                                                                                                            return p != null ? MODEL.get(p) : o.getAncestor(DModel.class);
                                                                                                                                        });

    private static final Observer<DNode>                                                                         ROOT_RULE              = DObject.observer(ROOT, o -> {
                                                                                                                                            DNode p = o.getParent();
                                                                                                                                            return p != null ? ROOT.get(p) : o;
                                                                                                                                        });
    @SuppressWarnings("rawtypes")
    protected static final Constant<Pair<SConcept, IAspect>, Set<Observer>>                                      COPY_CONCEPT_OBSERVERS = Constant.of("COPY_CONCEPT_OBSERVERS", p -> {
                                                                                                                                            SConcept c = p.a();
                                                                                                                                            IAspect a = p.b();
                                                                                                                                            Set<Observer> observers = Set.of();
                                                                                                                                            for (SProperty property : c.getProperties()) {
                                                                                                                                                DObserved<DNode, String> observed = PROPERTY.get(property);
                                                                                                                                                observers = observers.add(copyObserver(a, observed,                                                                                                    //
                                                                                                                                                        (t, s, r) -> observed.set(t, observed.get(s))));
                                                                                                                                            }
                                                                                                                                            for (SContainmentLink containment : c.getContainmentLinks()) {
                                                                                                                                                if (containment.isMultiple()) {
                                                                                                                                                    DObserved<DNode, List<DNode>> observed = MANY_CONTAINMENT.get(containment);
                                                                                                                                                    observers = observers.add(copyObserver(a, observed,                                                                                                //
                                                                                                                                                            (t, s, r) -> observed.set(t, copy(observed.get(s), r))));
                                                                                                                                                } else {
                                                                                                                                                    DObserved<DNode, DNode> observed = SINGLE_CONTAINMENT.get(containment);
                                                                                                                                                    observers = observers.add(copyObserver(a, observed,                                                                                                //
                                                                                                                                                            (t, s, r) -> observed.set(t, copy(observed.get(s), r))));
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            for (SReferenceLink reference : c.getReferenceLinks()) {
                                                                                                                                                DObserved<DNode, DNode> observed = REFERENCE.get(reference);
                                                                                                                                                observers = observers.add(copyObserver(a, observed,                                                                                                    //
                                                                                                                                                        (t, s, r) -> observed.set(t, map(t, s, observed.get(s), r.copied()))));
                                                                                                                                            }
                                                                                                                                            return observers;
                                                                                                                                        });

    @SuppressWarnings("rawtypes")
    protected static final Constant<SConcept, Set<DObserved>>                                                    CONCEPT_DOBSERVEDS     = Constant.of("$CONCEPT_DOBSERVEDS", c -> Collection.concat(                                                                                                   //
            Collection.of(c.getProperties()),                                                                                                                                                                                                                                                          //
            Collection.of(c.getContainmentLinks()),                                                                                                                                                                                                                                                    //
            Collection.of(c.getReferenceLinks())).map(DNode::dObserved).toSet());

    @SuppressWarnings("rawtypes")
    protected static final Constant<SConcept, Set<Observer>>                                                     CONCEPT_OBSERVERS      = Constant.of("$CONCEPT_OBSERVERS", c -> Set.of());

    protected static final Setable<DNode, Set<Pair<DObject, IssueKindReportItem>>>                               ALL_MPS_ISSUES         = Setable.of("$ALL_MPS_ISSUES", Set.of(), (tx, o, pre, post) -> {
                                                                                                                                            DRepository repos = DClareMPS.instance().getRepository();
                                                                                                                                            Setable.<Set<Pair<DObject, IssueKindReportItem>>, Pair<DObject, IssueKindReportItem>> diff(pre, post,                                                      //
                                                                                                                                                    a -> {
                                                                                                                                                        DObject.MPS_ISSUES.set(a.a(), Set::add, a);
                                                                                                                                                        DRepository.ALL_MPS_ISSUES.set(repos, Set::add, a.b());
                                                                                                                                                    },                                                                                                                                                 //
                                                                                                                                                    r -> {
                                                                                                                                                        DObject.MPS_ISSUES.set(r.a(), Set::remove, r);
                                                                                                                                                        DRepository.ALL_MPS_ISSUES.set(repos, Set::remove, r.b());
                                                                                                                                                    });
                                                                                                                                        });

    @SuppressWarnings({"rawtypes", "unchecked"})
    protected static final DObserved<DNode, Integer>                                                             INDEX                  = DObserved.of("INDEX", -1, dNode -> {
                                                                                                                                            SNode sNode = dNode.tryOriginal();
                                                                                                                                            return sNode != null ? SNodeOperations.getIndexInParent(sNode) : -1;
                                                                                                                                        }, null, synthetic);

    @SuppressWarnings("rawtypes")
    private static final Observer<DNode>                                                                         INDEX_RULE             = DObject.observer(INDEX, o -> {
                                                                                                                                            Pair<Mutable, Setable<Mutable, ?>> pc = Mutable.D_PARENT_CONTAINING.get(o);
                                                                                                                                            Object children = pc != null ? pc.b().get(pc.a()) : null;
                                                                                                                                            return o.equals(children) ? 0 : children instanceof List ? ((List) children).firstIndexOf(o) : -1;
                                                                                                                                        });

    @SuppressWarnings({"rawtypes", "unchecked", "RedundantSuppression"})
    protected static final DObserved<DNode, Boolean>                                                             ACTIVE                 = DObserved.of("ACTIVE", Boolean.FALSE, (Function) null, (TriConsumer) null, plumbing);

    private static final Observer<DNode>                                                                         ACTIVATE_RULE          = DObject.observer(ACTIVE, o -> {
                                                                                                                                            if (!o.isExternal()) {
                                                                                                                                                Mutable p = o.tryOriginal() != null ? o.dParent() : null;
                                                                                                                                                return p instanceof DNode ? ACTIVE.get((DNode) p) : p instanceof DModel ? DModel.ACTIVE.get((DModel) p) : Boolean.FALSE;
                                                                                                                                            } else {
                                                                                                                                                return Boolean.FALSE;
                                                                                                                                            }
                                                                                                                                        });

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                                                                         OBSERVERS              = DNewableObject.OBSERVERS.addAll(Set.of(ROOT_RULE, MODEL_RULE, INDEX_RULE));

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                                                                          SETABLES               = DNewableObject.SETABLES.addAll(Set.of(ROOT, MODEL, USER_OBJECTS, ALL_MPS_ISSUES, INDEX));

    public static Observer<DNode> copyObserver(IAspect aspect, DObserved<DNode, ?> observed, TriConsumer<DNode, DNode, DCopy> action) {
        return DCopyObserver.of(observed, t -> {
            for (Construction c : t.dDerivedConstructions()) {
                if (c.reason() instanceof DCopy && ((DCopy) c.reason()).aspect().equals(aspect)) {
                    DCopy reason = (DCopy) c.reason();
                    action.accept(t, reason.copied(), reason.root());
                }
            }
        }, IAspect.DIRECTION.get(aspect));
    }

    static public class DCopyObserver extends Observer<DNode> {

        private static DCopyObserver of(DObserved<DNode, ?> observed, Consumer<DNode> action, LeafModifier... modifiers) {
            return new DCopyObserver(observed, action, modifiers);
        }

        @SuppressWarnings({"unchecked", "RedundantSuppression"})
        private DCopyObserver(DObserved<DNode, ?> observed, Consumer<DNode> action, LeafModifier... modifiers) {
            super(observed, action, modifiers);
        }

        @SuppressWarnings("unchecked")
        public DObserved<DNode, ?> dObserved() {
            return (DObserved<DNode, ?>) id();
        }

        @Override
        public DCopyTransaction openTransaction(MutableTransaction parent) {
            return ((DClareMPS) parent.universeTransaction().mutable()).dCopyObserverTransactions.get().open(this, parent);
        }

        @Override
        public void closeTransaction(Transaction tx) {
            ((DClareMPS) tx.universeTransaction().mutable()).dCopyObserverTransactions.get().close((DCopyTransaction) tx);
        }

        @Override
        public DCopyTransaction newTransaction(UniverseTransaction universeTransaction) {
            return new DCopyTransaction(universeTransaction);
        }

    }

    public static class DCopyTransaction extends ObserverTransaction {

        private DCopyTransaction(UniverseTransaction root) {
            super(root);
        }

        @Override
        public DNode mutable() {
            return (DNode) super.mutable();
        }

        @Override
        public DCopyObserver observer() {
            return (DCopyObserver) super.observer();
        }

        public DObserved<DNode, ?> dObserved() {
            return observer().dObserved();
        }

    }

    public static DNode of(IRuleSet ruleSet, String anonymousType, Object[] identity, SConcept concept) {
        return quotationConstruct(ruleSet, anonymousType, identity, //
                () -> new DNode(new Object[]{uniqueLong(concept), concept, false}));
    }

    public DNode copy(IRuleSet ruleSet, String anonymousType, DObject ctx) {
        return copyRootConstruct(ruleSet, anonymousType, ctx, this, //
                () -> new DNode(new Object[]{uniqueLong(getConcept()), getConcept(), false}));
    }

    private DNode copy(DCopy root) {
        return copyChildConstruct(root, this, //
                () -> new DNode(new Object[]{uniqueLong(getConcept()), getConcept(), false}));
    }

    protected static long uniqueLong(SConcept concept) {
        return NODE_COUNTER.get(concept).getAndIncrement();
    }

    protected static DNode read(SNode original) {
        return of(original.getConcept(), original.getReference(), original);
    }

    public static DNode of(SNode original) {
        return original instanceof DNode ? (DNode) original : of(original.getConcept(), original.getReference(), original);
    }

    protected static DNode of(SConcept concept, SNodeReference ref) {
        return referenceConstruct(ref, () -> new DNode(new Object[]{uniqueLong(concept), concept, false}));
    }

    protected static DNode of(SConcept concept, SNodeReference ref, SNode original) {
        if (original == null) {
            throw new IllegalArgumentException("Creating a DNode of non-resolveable SNode reference " + ref);
        }
        SModelReference mRef = ref.getModelReference();
        SModel sModel = null;
        if (mRef != null) {
            sModel = dClareMPS().read(() -> mRef.resolve(null));
            if (sModel == null) {
                throw new IllegalArgumentException("Creating a DNode with a non-resolveable SModel " + original);
            }
        }
        Boolean external = sModel != null ? DModel.EXTERNAL.get(sModel) : false;
        return originalConstruct(original, ref, () -> new DNode(new Object[]{uniqueLong(concept), concept, external}));
    }

    @Override
    public SConcept getConcept() {
        return (SConcept) identity[1];
    }

    @Override
    public Long dSortKey() {
        return (Long) identity[0];
    }

    public static SNode wrap(SNode original) {
        if (original instanceof DNode) {
            return original;
        } else {
            LeafTransaction tx = LeafTransaction.getCurrent();
            if (tx == null) {
                return DClareMPS.dClareForObject(original).getOrDerive(() -> of(original.getConcept(), original.getReference(), original));
            } else {
                return of(original.getConcept(), original.getReference(), original);
            }
        }
    }

    protected DNode(Object[] identity) {
        super(identity);
    }

    @Override
    public boolean isExternal() {
        return (Boolean) identity[2];
    }

    @Override
    protected SNode create(SNodeReference ref) {
        SConcept concept = getConcept();
        DModel dModel = getModel();
        SModel sModel = dModel.original();
        return ref != null ? sModel.createNode(concept, ref.getNodeId()) : sModel.createNode(concept);
    }

    @Override
    protected void addOriginal(SNode sNode) {
        SConcept concept = getConcept();
        DObject parent = dObjectParent();
        if (parent instanceof DModel) {
            SModel sParent = ((DModel) parent).original();
            //noinspection ConstantConditions
            if (sNode.getModel() == null) {
                sParent.addRootNode(sNode);
            }
        } else {
            SNode sParent = ((DNode) parent).original();
            //noinspection ConstantConditions
            if (sNode.getParent() == null) {
                Setable<Mutable, ?> containing = dContaining();
                sParent.addChild(containing != null && containing.id() instanceof SContainmentLink ? (SContainmentLink) containing.id() : null, sNode);
            }
        }
        if (concept.isSubConceptOf(SNodeUtil.concept_INamedConcept)) {
            sNode.setProperty(SNodeUtil.property_INamedConcept_name, PROPERTY.get(SNodeUtil.property_INamedConcept_name).get(this));
        }
    }

    @Override
    public String toString() {
        SConcept concept = getConcept();
        Object id = dMatchingIdentity();
        return concept.getName() + (id != null && !id.equals(concept) ? "#" + identity[0] + ":" + id : "#" + identity[0]);
    }

    @Override
    protected DNodeType getType() {
        Set<SLanguage> ls = dClareMPS().getRepository().getType().getLanguages().add(getConcept().getLanguage());
        ls = ls.addAll(getAnonymousLanguages());
        return NODE_TYPE.get(Quintuple.of(ls, getConcept(), getAnonymousTypes(), isExternal(), getCopyAspect()));
    }

    @Override
    public List<DNode> getChildren() {
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

    public Set<DNode> getReferenced() {
        Set<DNode> result = Set.of();
        for (SReferenceLink rl : getConcept().getReferenceLinks()) {
            DNode ref = REFERENCE.get(rl).get(this);
            if (ref != null) {
                result = result.add(ref);
            }
        }
        return result;
    }

    private static List<DNode> copy(List<DNode> children, DCopy root) {
        return children.sequential().map(c -> copy(c, root)).toList();
    }

    private static DNode copy(DNode child, DCopy root) {
        if (child != null) {
            return child.copy(root);
        } else {
            return null;
        }
    }

    private static DNode map(DNode copy, DNode copied, DNode referenced, DNode copiedRoot) {
        if (referenced != null && referenced.hasAncestor(copiedRoot)) {
            while (!referenced.hasAncestor(copied)) {
                copied = copied.getParent();
                copy = copy.getParent();
            }
            while (!referenced.equals(copied)) {
                List<DNode> copiedChildren = copied.getChildren();
                List<DNode> copyChildren = copy.getChildren();
                if (copiedChildren.size() == copyChildren.size()) {
                    for (int i = 0; i < copiedChildren.size(); i++) {
                        copied = copiedChildren.get(i);
                        if (referenced.hasAncestor(copied)) {
                            copy = copyChildren.get(i);
                            break;
                        }
                    }
                } else {
                    return null;
                }
            }
            return copy;
        } else {
            return referenced;
        }
    }

    @Override
    public SNodeId getNodeId() {
        return original().getNodeId();
    }

    @SuppressWarnings("unchecked")
    @Override
    protected void read() {
        INDEX.readAction().trigger(this);
        DNode.CONCEPT_DOBSERVEDS.get(getConcept()).map(DObserved::readAction).forEachOrdered(a -> a.trigger(this));
    }

    @Override
    public Object dNewableType() {
        return getConcept();
    }

    @SuppressWarnings({"rawtypes", "unchecked", "deprecation"})
    @Override
    public Object dIdentity() {
        SConcept concept = getConcept();
        Set<DAttribute> id = TYPE.get(this).getIdentifying();
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
            return getName();
        } else {
            Set<SReferenceLink> references = SINGLE_REFERENCES.get(concept);
            Set<SContainmentLink> containments = SINGLE_CONTAINMENTS.get(concept);
            if (references.isEmpty() && containments.isEmpty()) {
                return concept;
            } else {
                Map<SAbstractLink, Object> map = Map.of();
                for (SReferenceLink rl : references) {
                    DNode referenced = REFERENCE.get(rl).get(this);
                    Object val = referenced != null ? referenced.dMatchingIdentity() : null;
                    if (val == null) {
                        return null;
                    } else {
                        map = map.put(rl, val);
                    }
                }
                for (SContainmentLink cl : containments) {
                    DNode child = SINGLE_CONTAINMENT.get(cl).get(this);
                    Object val = child != null ? child.dMatchingIdentity() : null;
                    if (val == null) {
                        return null;
                    } else {
                        map = map.put(cl, val);
                    }
                }
                return map;
            }
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
        return PROPERTY.get(SNodeUtil.property_INamedConcept_name).get(this);
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
                return r.insert(anchor == null ? r.size() : r.firstIndexOf(anchor), e);
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
                return r.insert(anchor == null ? 0 : (r.firstIndexOf(anchor) + 1), e);
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
            if (dNode.getConcept().isAbstract()) {
                Newable.D_DERIVED_CONSTRUCTIONS.setDefault(dNode);
                Newable.D_DIRECT_CONSTRUCTION.setDefault(dNode);
            }
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

    private boolean derive() {
        return LeafTransaction.getCurrent() instanceof DerivationTransaction || !isActive();
    }

    @Override
    public DNode getParent() {
        if (derive()) {
            SNode parent = dClareMPS().read(() -> {
                SNode sNode = tryOriginal();
                return sNode != null ? sNode.getParent() : null;
            });
            return parent != null ? DNode.of(parent) : null;
        } else {
            Mutable parent = dParent();
            return parent instanceof DNode ? (DNode) parent : null;
        }
    }

    @Override
    public SContainmentLink getContainmentLink() {
        if (derive()) {
            return dClareMPS().read(() -> {
                SNode sNode = tryOriginal();
                return sNode != null ? sNode.getContainmentLink() : null;
            });
        } else {
            Setable<Mutable, ?> containing = dContaining();
            return containing != null && containing.id() instanceof SContainmentLink ? (SContainmentLink) containing.id() : null;
        }
    }

    @Override
    public DNode getContainingRoot() {
        return ROOT.get(this);
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
    public static DObserved dObserved(SConceptFeature feature) {
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
        REFERENCE.get(role).set(this, DNode.of(target));
    }

    @Override
    public DNode getReferenceTarget(SReferenceLink role) {
        return REFERENCE.get(role).get(this);
    }

    public Iterable<? extends DNode> getReferenceSources(SReferenceLink role) {
        return OPPOSITE.get(role).get(this);
    }

    @Override
    public void setReference(SReferenceLink role, SNodeReference target) {
        SNode targetNode = dClareMPS().read(() -> target.resolve(null));
        REFERENCE.get(role).set(this, DNode.of(targetNode.getConcept(), target, targetNode));
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
    public void dropReference(SReferenceLink role) {
        REFERENCE.get(role).setDefault(this);
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
                List<DNode> post = value != null ? Collection.of((Iterable<DNode>) value).notNull().distinct().toList() : null;
                MANY_CONTAINMENT.get(cl).set(this, (b, a) -> a == null || Objects.equals(a, b) ? b : a, post);
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

    @SuppressWarnings("rawtypes")
    @Override
    public boolean dIsOrphan(State state) {
        return dCheckConsistency() && super.dIsOrphan(state);
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

    @Override
    @Deprecated
    public void setReference(SReferenceLink role, SReference reference) {
        REFERENCE.get(role).set(this, DNode.of(reference.getTargetNode()));
    }

    @SuppressWarnings("unchecked")
    protected static List<SNode> children(SNode node, SContainmentLink feature) {
        return Collection.<SNode> of((Iterable<SNode>) node.getChildren(feature)).sequential().toList();
    }

    public boolean hasAncestor(DNode ancestor) {
        DNode parent = this;
        while (parent != null && !parent.equals(ancestor)) {
            parent = parent.getParent();
        }
        return parent != null;
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

    private static final class NodeCounter extends AtomicLong {

        private static final long serialVersionUID = 4263581166804140293L;

        private final SConcept    concept;

        private NodeCounter(SConcept concept) {
            super(0L);
            this.concept = concept;
        }

        @Override
        public int hashCode() {
            return concept.hashCode();
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            } else if (obj == null) {
                return false;
            } else if (!(obj instanceof NodeCounter)) {
                return false;
            } else {
                NodeCounter other = (NodeCounter) obj;
                return concept.equals(other.concept);
            }
        }

        @Override
        public String toString() {
            return concept.getName() + super.toString();
        }

    }

    @Override
    protected boolean isActive() {
        SNode sNode = tryOriginal();
        if (sNode == null) {
            return true;
        } else {
            SModel sModel = getModelFromMPS(sNode.getReference());
            return sModel == null || DModel.of(sModel).isActive();
        }
    }

    protected DModel getDModelFromMPS() {
        SNodeReference ref = reference();
        SModel sModel = ref != null ? getModelFromMPS(ref) : null;
        return sModel != null ? DModel.of(sModel) : null;
    }

    private SModel getModelFromMPS(SNodeReference ref) {
        SModelReference mRef = ref.getModelReference();
        return mRef != null ? dClareMPS().read(() -> mRef.resolve(null)) : null;
    }

}
