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

import static org.modelingvalue.dclare.SetableModifier.*;

import java.util.Optional;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.Consumer;
import java.util.function.Function;

import org.jetbrains.annotations.NotNull;
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
import org.modelingvalue.collections.util.Quadruple;
import org.modelingvalue.collections.util.TriConsumer;
import org.modelingvalue.dclare.*;

import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.errors.item.NodeReportItem;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.DynamicReference;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.adapter.structure.property.InvalidProperty;

@SuppressWarnings("unused")
public class DNode extends DNewableObject<DNode, SNodeReference, SNode> implements SNode {

    private static final SConcept                                                                            QUOTATION_CONCEPT                = MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104659L, "jetbrains.mps.lang.quotation.structure.Quotation");
    private static final SConcept                                                                            ANTI_QUOTATION_CONCEPT           = MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104658L, "jetbrains.mps.lang.quotation.structure.Antiquotation");
    private static final SConcept                                                                            LIST_ANTI_QUOTATION_CONCEPT      = MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465eL, "jetbrains.mps.lang.quotation.structure.ListAntiquotation");
    private static final SConcept                                                                            PROPERTY_ANTI_QUOTATION_CONCEPT  = MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x116aac96587L, "jetbrains.mps.lang.quotation.structure.PropertyAntiquotation");
    private static final SConcept                                                                            REFERENCE_ANTI_QUOTATION_CONCEPT = MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465dL, "jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation");

    protected static final SProperty                                                                         PARENT_PROPERTY                  = new InvalidProperty("$PARENT_PROPERTY", "PARENT_PROPERTY");

    @SuppressWarnings("rawtypes")
    protected static Constant<SAbstractConcept, Set<DRule<SNode>>>                                           RULES                            = Constant.of("RULES", c -> {
                                                                                                                                                  Set<SLanguage> langs = DRepository.ALL_LANGUAGES_WITH_RULES.get(DClareMPS.instance().getRepository());
                                                                                                                                                  return langs.flatMap(l -> DClareMPS.ACTIVE_RULE_SETS.get(l)).flatMap(rs -> Collection.of(rs.getNodeRules(c, Set.of()))).asSet();
                                                                                                                                              });

    private static final Constant<Quadruple<Set<SLanguage>, SConcept, Set<String>, Set<IAspect>>, DNodeType> NODE_TYPE                        = Constant.of("NODE_TYPE", DNodeType::new);

    private static final Constant<SConcept, AtomicLong>                                                      NODE_COUNTER                     = Constant.of("NODE_COUNTER", NodeCounter::new, durable);

    protected static final Constant<SAbstractConcept, Set<SAbstractConcept>>                                 SUPER_CONCEPTS                   = Constant.of("SUPER_CONCEPTS", ac -> {
                                                                                                                                                  if (ac instanceof SInterfaceConcept) {
                                                                                                                                                      SInterfaceConcept i = (SInterfaceConcept) ac;
                                                                                                                                                      Set<SAbstractConcept> supers = Collection.of(i.getSuperInterfaces()).flatMap(DNode.SUPER_CONCEPTS::get).asSet();
                                                                                                                                                      return supers.add(ac);
                                                                                                                                                  } else {
                                                                                                                                                      SConcept c = (SConcept) ac;
                                                                                                                                                      Set<SAbstractConcept> supers = Collection.of(c.getSuperInterfaces()).flatMap(DNode.SUPER_CONCEPTS::get).asSet();
                                                                                                                                                      SConcept sc = c.getSuperConcept();
                                                                                                                                                      if (sc != null) {
                                                                                                                                                          supers = supers.addAll(DNode.SUPER_CONCEPTS.get(sc));
                                                                                                                                                      }
                                                                                                                                                      return supers.add(ac);
                                                                                                                                                  }
                                                                                                                                              });

    protected static final Constant<SConcept, Set<SReferenceLink>>                                           SINGLE_REFERENCES                = Constant.of("SINGLE_REFERENCES", c -> {
                                                                                                                                                  return Collection.of(c.getReferenceLinks()).exclude(SReferenceLink::isOptional).                                                                                                 //
                                                                                                                                                          exclude(SNodeUtil.concept_BaseConcept.getReferenceLinks()::contains).asSet();
                                                                                                                                              });

    @SuppressWarnings("unlikely-arg-type")
    protected static final Constant<SConcept, Set<SContainmentLink>>                                         SINGLE_CONTAINMENTS              = Constant.of("SINGLE_CONTAINMENTS", c -> {
                                                                                                                                                  return Collection.of(c.getContainmentLinks()).exclude(SContainmentLink::isMultiple).exclude(SContainmentLink::isOptional).                                                       //
                                                                                                                                                          exclude(SNodeUtil.concept_BaseConcept.getContainmentLinks()::contains).asSet();
                                                                                                                                              });

    protected static final DObserved<DNode, DModel>                                                          MODEL                            = DObserved.of("$MODEL", null, dNode -> {
                                                                                                                                                  SNode sNode = dNode.tryOriginal();
                                                                                                                                                  SModel sModel = sNode != null ? sNode.getModel() : null;
                                                                                                                                                  return sModel != null ? DModel.of(sModel) : null;
                                                                                                                                              }, null, plumbing);

    protected static final DObserved<DNode, DNode>                                                           ROOT                             = DObserved.of("$ROOT", null, dNode -> {
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
                                                                                                                                              }, plumbing);
    @SuppressWarnings({"unchecked", "rawtypes"})
    protected static final DObserved<DNode, Map<Object, Object>>                                             USER_OBJECTS                     = DObserved.of("USER_OBJECTS", Map.of(), (Function) null, (TriConsumer) null);

    @SuppressWarnings({"deprecation", "removal"})
    public static final Constant<SProperty, DObserved<DNode, String>>                                        PROPERTY                         = Constant.of("PROPERTY", sp -> DObserved.of(sp, null, dNode -> {
                                                                                                                                                  SNode sNode = dNode.tryOriginal();
                                                                                                                                                  return sNode != null ? sNode.getProperty(sp) : null;
                                                                                                                                              }, (dNode, pre, post) -> {
                                                                                                                                                  SNode sNode = dNode.tryOriginal();
                                                                                                                                                  sNode.setProperty(sp, post);
                                                                                                                                              }, () -> sp.getDeclarationNode().getReference()));

    @SuppressWarnings({"deprecation", "removal"})
    public static final Constant<SContainmentLink, DObserved<DNode, List<DNode>>>                            MANY_CONTAINMENT                 = Constant.of("MANY_CONTAINMENT", mc -> DObserved.of(mc, List.of(), dNode -> {
                                                                                                                                                  SNode sNode = dNode.tryOriginal();
                                                                                                                                                  return sNode != null ? children(sNode, mc).map(DNode::of).asList() : List.of();
                                                                                                                                              }, (dNode, pre, post) -> {
                                                                                                                                                  SNode sNode = dNode.tryOriginal();
                                                                                                                                                  DObserved.<DNode> map(pre, post, (n, a) -> {
                                                                                                                                                      SNode s = n.original();
                                                                                                                                                      removeWhenAllreadyContained(sNode, mc, s);
                                                                                                                                                      sNode.insertChildAfter(mc, s, a != null ? a.tryOriginal() : null);
                                                                                                                                                      n.init(s);
                                                                                                                                                  }, r -> {
                                                                                                                                                      SNode s = r.tryOriginal();
                                                                                                                                                      sNode.removeChild(s);
                                                                                                                                                  });
                                                                                                                                              }, () -> mc.getDeclarationNode().getReference(), containment));

    @SuppressWarnings({"deprecation", "removal"})
    public static final Constant<SContainmentLink, DObserved<DNode, DNode>>                                  SINGLE_CONTAINMENT               = Constant.of("SINGLE_CONTAINMENT", sc -> DObserved.of(sc, null, dNode -> {
                                                                                                                                                  SNode sNode = dNode.tryOriginal();
                                                                                                                                                  SNode child = sNode != null ? children(sNode, sc).first() : null;
                                                                                                                                                  return child != null ? DNode.of(child) : null;
                                                                                                                                              }, (dNode, pre, post) -> {
                                                                                                                                                  SNode sNode = dNode.tryOriginal();
                                                                                                                                                  if (pre != null) {
                                                                                                                                                      SNode s = pre.tryOriginal();
                                                                                                                                                      sNode.removeChild(s);
                                                                                                                                                  }
                                                                                                                                                  if (post != null) {
                                                                                                                                                      SNode s = post.original();
                                                                                                                                                      removeWhenAllreadyContained(sNode, sc, s);
                                                                                                                                                      sNode.addChild(sc, s);
                                                                                                                                                      post.init(s);
                                                                                                                                                  }
                                                                                                                                              }, () -> sc.getDeclarationNode().getReference(), containment));

    @SuppressWarnings({"deprecation", "removal"})
    public static final Constant<SReferenceLink, DObserved<DNode, DNode>>                                    REFERENCE                        = Constant.of("REFERENCE", sr -> DObserved.of(sr, null, hasOpposite(sr) ? () -> DNode.OPPOSITE.get(sr) : null, dNode -> {
                                                                                                                                                  SNode orig = dNode.tryOriginal();
                                                                                                                                                  SReference ref = orig != null ? orig.getReference(sr) : null;
                                                                                                                                                  SNode sNode = ref != null ? ref.getTargetNode() : null;
                                                                                                                                                  return sNode != null ? DNode.of(sNode) : ref != null ? referenceConstruct(ref.getTargetNodeReference(), null) : null;
                                                                                                                                              }, (dNode, pre, post) -> {
                                                                                                                                                  SNode sNode = dNode.tryOriginal();
                                                                                                                                                  SNode soll = post != null ? post.tryOriginal() : null;
                                                                                                                                                  sNode.setReferenceTarget(sr, soll);
                                                                                                                                              }, () -> sr.getDeclarationNode().getReference(), orphansAllowed));
    @SuppressWarnings({"deprecation", "removal"})
    public static final Constant<SReferenceLink, DObserved<DNode, Set<DNode>>>                               OPPOSITE                         = Constant.of("OPPOSITE", sr -> DObserved.of(Pair.of(sr, "OPPOSITE"), Set.of(), () -> DNode.REFERENCE.get(sr), null, null, () -> sr.getDeclarationNode().getReference(), synthetic));

    private static final Observer<DNode>                                                                     MODEL_RULE                       = DObject.observer(MODEL, o -> {
                                                                                                                                                  DNode p = o.getAncestor(DNode.class);
                                                                                                                                                  return p != null ? MODEL.get(p) : o.getAncestor(DModel.class);
                                                                                                                                              });

    @SuppressWarnings("unchecked")
    private static final Observer<DNode>                                                                     ACTIVATE_RULE                    = DObject.observer("$NODE_ACTIVATE_RULE", n -> {
                                                                                                                                                  if (!n.isExternal() && n.isShared() && n.isRead()) {
                                                                                                                                                      DNode.INDEX.triggerInitRead(n);
                                                                                                                                                      DNode.ROOT.triggerInitRead(n);
                                                                                                                                                      DNode.CONCEPT_DOBSERVEDS.get(n.getConcept()).forEachOrdered(o -> o.triggerInitRead(n));
                                                                                                                                                  }
                                                                                                                                              });

    private static final Observer<DNode>                                                                     ROOT_RULE                        = DObject.observer(ROOT, o -> {
                                                                                                                                                  DNode p = o.getParent();
                                                                                                                                                  return p != null ? ROOT.get(p) : o;
                                                                                                                                              });

    @SuppressWarnings("rawtypes")
    private static final Constant<Pair<SProperty, IAspect>, Observer>                                        COPY_PROPERTY_OBSERVER           = Constant.of("COPY_PROPERTY_OBSERVER", p -> {
                                                                                                                                                  DObserved<DNode, String> o = PROPERTY.get(p.a());
                                                                                                                                                  return copyObserver(p.b(), o, (t, s, r) -> o.set(t, o.get(s)));
                                                                                                                                              });

    @SuppressWarnings("rawtypes")
    private static final Constant<Pair<SReferenceLink, IAspect>, Observer>                                   COPY_REFERENCE_OBSERVER          = Constant.of("COPY_REFERENCE_OBSERVER", p -> {
                                                                                                                                                  DObserved<DNode, DNode> o = REFERENCE.get(p.a());
                                                                                                                                                  return copyObserver(p.b(), o, (t, s, r) -> o.set(t, map(t, s, o.get(s), r)));
                                                                                                                                              });

    @SuppressWarnings("rawtypes")
    private static final Constant<Pair<SContainmentLink, IAspect>, Observer>                                 COPY_MANY_CONTAINMENT_OBSERVER   = Constant.of("COPY_MANY_CONTAINMENT_OBSERVER", p -> {
                                                                                                                                                  DObserved<DNode, List<DNode>> o = MANY_CONTAINMENT.get(p.a());
                                                                                                                                                  return copyObserver(p.b(), o, (t, s, r) -> o.set(t, copy(o.get(s), r)));
                                                                                                                                              });

    @SuppressWarnings("rawtypes")
    private static final Constant<Pair<SContainmentLink, IAspect>, Observer>                                 COPY_SINGLE_CONTAINMENT_OBSERVER = Constant.of("COPY_SINGLE_CONTAINMENT_OBSERVER", p -> {
                                                                                                                                                  DObserved<DNode, DNode> o = SINGLE_CONTAINMENT.get(p.a());
                                                                                                                                                  return copyObserver(p.b(), o, (t, s, r) -> o.set(t, copy(o.get(s), r)));
                                                                                                                                              });

    @SuppressWarnings("rawtypes")
    protected static final Constant<Pair<SConcept, IAspect>, Set<Observer>>                                  COPY_CONCEPT_OBSERVERS           = Constant.of("COPY_CONCEPT_OBSERVERS", p -> {
                                                                                                                                                  Set<Observer> observers = Set.of();
                                                                                                                                                  for (SProperty pr : p.a().getProperties()) {
                                                                                                                                                      observers = observers.add(COPY_PROPERTY_OBSERVER.get(Pair.of(pr, p.b())));
                                                                                                                                                  }
                                                                                                                                                  for (SContainmentLink cl : p.a().getContainmentLinks()) {
                                                                                                                                                      if (cl.isMultiple()) {
                                                                                                                                                          observers = observers.add(COPY_MANY_CONTAINMENT_OBSERVER.get(Pair.of(cl, p.b())));
                                                                                                                                                      } else {
                                                                                                                                                          observers = observers.add(COPY_SINGLE_CONTAINMENT_OBSERVER.get(Pair.of(cl, p.b())));
                                                                                                                                                      }
                                                                                                                                                  }
                                                                                                                                                  for (SReferenceLink rl : p.a().getReferenceLinks()) {
                                                                                                                                                      observers = observers.add(COPY_REFERENCE_OBSERVER.get(Pair.of(rl, p.b())));
                                                                                                                                                  }
                                                                                                                                                  return observers;
                                                                                                                                              });

    @SuppressWarnings("rawtypes")
    protected static final Constant<SConcept, Set<DObserved>>                                                CONCEPT_DOBSERVEDS               = Constant.of("$CONCEPT_DOBSERVEDS", c -> Collection.concat(                                                                                                                         //
            Collection.of(c.getProperties()),                                                                                                                                                                                                                                                                                      //
            Collection.of(c.getContainmentLinks()),                                                                                                                                                                                                                                                                                //
            Collection.of(c.getReferenceLinks())).map(DNode::dObserved).asSet());

    @SuppressWarnings("rawtypes")
    private static final Constant<SConcept, Set<DObserved>>                                                  CONCEPT_INIT_DOBSERVEDS          = Constant.of("$CONCEPT_INIT_DOBSERVEDS", c -> Collection.concat(                                                                                                                    //
            Collection.of(c.getContainmentLinks()),                                                                                                                                                                                                                                                                                //
            Collection.of(c.getReferenceLinks()).filter(DNode::hasOpposite)).map(DNode::dObserved).asSet());

    @SuppressWarnings("rawtypes")
    protected static final Constant<SConcept, Set<Observer>>                                                 CONCEPT_OBSERVERS                = Constant.of("$CONCEPT_OBSERVERS", c -> Set.of());

    protected static final Setable<DNode, Set<Pair<DObject, IssueKindReportItem>>>                           ALL_MPS_ISSUES                   = Setable.of("$ALL_MPS_ISSUES", Set.of(), (tx, o, pre, post) -> {
                                                                                                                                                  DRepository repos = DClareMPS.instance().getRepository();
                                                                                                                                                  Setable.<Set<Pair<DObject, IssueKindReportItem>>, Pair<DObject, IssueKindReportItem>> diff(pre, post,                                                                            //
                                                                                                                                                          a -> {
                                                                                                                                                              DObject.MPS_ISSUES.set(a.a(), Set::add, a);
                                                                                                                                                              DRepository.ALL_MPS_ISSUES.set(repos, Set::add, a.b());
                                                                                                                                                          },                                                                                                                                                                       //
                                                                                                                                                          r -> {
                                                                                                                                                              DObject.MPS_ISSUES.set(r.a(), Set::remove, r);
                                                                                                                                                              DRepository.ALL_MPS_ISSUES.set(repos, Set::remove, r.b());
                                                                                                                                                          });
                                                                                                                                              });

    @SuppressWarnings({"rawtypes", "unchecked"})
    protected static final DObserved<DNode, Integer>                                                         INDEX                            = DObserved.of("INDEX", -1, dNode -> {
                                                                                                                                                  SNode sNode = dNode.tryOriginal();
                                                                                                                                                  return sNode != null ? SNodeOperations.getIndexInParent(sNode) : -1;
                                                                                                                                              }, null, plumbing);

    @SuppressWarnings("rawtypes")
    private static final Observer<DNode>                                                                     INDEX_RULE                       = DObject.observer(INDEX, o -> {
                                                                                                                                                  Pair<Mutable, Setable<Mutable, ?>> pc = o.dParentContaining();
                                                                                                                                                  Object children = pc != null ? pc.b().get(pc.a()) : null;
                                                                                                                                                  return o.equals(children) ? 0 : children instanceof List ? ((List) children).firstIndexOf(o) : -1;
                                                                                                                                              });

    @SuppressWarnings({"rawtypes", "unchecked"})
    protected static final Observed<DNode, Boolean>                                                          QUOTED                           = Observed.of("QUOTED", Boolean.FALSE, plumbing);

    @SuppressWarnings("rawtypes")
    private static final Observer<DNode>                                                                     QUOTED_RULE                      = DObject.observer(QUOTED, o -> {
                                                                                                                                                  DNode p = o.getParent();
                                                                                                                                                  return p != null && (p.isQuotation() || (!p.isAntiQuotation() && QUOTED.get(p)));
                                                                                                                                              });

    private static final Setable<DNode, SNodeId>                                                             NODE_ID                          = Setable.of("NODE_ID", null);

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                                                                     OBSERVERS                        = DNewableObject.OBSERVERS.addAll(Set.of(ROOT_RULE, MODEL_RULE, INDEX_RULE, ACTIVATE_RULE, QUOTED_RULE));

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                                                                      SETABLES                         = DNewableObject.SETABLES.addAll(Set.of(ROOT, MODEL, USER_OBJECTS, ALL_MPS_ISSUES, INDEX, NODE_ID, QUOTED));

    private static void removeWhenAllreadyContained(SNode newParent, SContainmentLink link, SNode node) {
        SNode oldParent = node.getParent();
        if (oldParent != null && (oldParent != newParent || link != node.getContainmentLink())) {
            oldParent.removeChild(node);
        }
    }

    public static Observer<DNode> copyObserver(IAspect aspect, DObserved<DNode, ?> observed, TriConsumer<DNode, DNode, DCopy> action) {
        Direction direction = IAspect.DIRECTION.get(aspect);
        return DCopyObserver.of(aspect, observed, node -> {
            DCopy reason = (DCopy) node.dAllDerivations().get(direction).reason();
            action.accept(node, reason.copied(), reason.root());
        }, direction);
    }

    private static boolean hasOpposite(SReferenceLink sr) {
        return DClareMPS.REFERENCES_WITH_OPPOSITE.get(DClareMPS.LANGUAGE.get(sr.getOwner())).contains(sr) || //
                DClareMPS.REFERENCES_WITH_OPPOSITE.get(DClareMPS.LANGUAGE.get(sr.getTargetConcept())).contains(sr);
    }

    static public class DCopyObserver extends Observer<DNode> {

        private static DCopyObserver of(IAspect aspect, DObserved<DNode, ?> observed, Consumer<DNode> action, LeafModifier... modifiers) {
            return new DCopyObserver(aspect, observed, action, modifiers);
        }

        @SuppressWarnings({"unchecked", "RedundantSuppression"})
        private DCopyObserver(IAspect aspect, DObserved<DNode, ?> observed, Consumer<DNode> action, LeafModifier... modifiers) {
            super(Pair.of(aspect, observed), action, Set.of(observed), modifiers);
        }

        @SuppressWarnings("unchecked")
        public DObserved<DNode, ?> dObserved() {
            return ((Pair<IAspect, DObserved<DNode, ?>>) id()).b();
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

    public DNode copy(IRuleSet ruleSet, String anonymousType, Object[] identity) {
        return copyRootConstruct(ruleSet, anonymousType, identity, this, //
                () -> new DNode(new Object[]{uniqueLong(getConcept()), getConcept(), false}));
    }

    private DNode copy(DCopy root) {
        return copyChildConstruct(root, this, //
                () -> new DNode(new Object[]{uniqueLong(getConcept()), getConcept(), false}));
    }

    protected static long uniqueLong(SConcept concept) {
        return NODE_COUNTER.get(concept).getAndIncrement();
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

    @NotNull
    @Override
    public SConcept getConcept() {
        return (SConcept) identity[1];
    }

    private final boolean isINamedConcept;

    protected DNode(Object[] identity) {
        super(identity);
        isINamedConcept = isInstanceOfConcept(SNodeUtil.concept_INamedConcept);
    }

    @Override
    public boolean isExternal() {
        return (Boolean) identity[2];
    }

    @Override
    protected SNode create(SNodeReference ref) {
        SConcept concept = getConcept();
        DModel dModel = getModel();
        SModel sModel = dModel.tryOriginal();
        SNodeId nodeId = ref != null ? ref.getNodeId() : NODE_ID.get(this);
        return nodeId != null ? sModel.createNode(concept, nodeId) : sModel.createNode(concept);
    }

    private void setMPSName(SNode sNode) {
        if (isINamedConcept) {
            sNode.setProperty(SNodeUtil.property_INamedConcept_name, PROPERTY.get(SNodeUtil.property_INamedConcept_name).get(this));
        }
    }

    @Override
    public String toString() {
        return getConcept().getName() + "#" + identity[0] + toStringNameIfAvailable();
    }

    private String toStringNameIfAvailable() {
        if (isINamedConcept) {
            LeafTransaction current = LeafTransaction.getCurrent();
            if (current != null) {
                String name = current.state().get(() -> PROPERTY.get(SNodeUtil.property_INamedConcept_name).get(this));
                if (name != null) {
                    return '\'' + name + '\'';
                }
            }
        }
        return "";
    }

    @Override
    protected DNodeType getType() {
        DObject dParent = dObjectParent();
        Set<SLanguage> ls = (dParent != null && !dParent.isExternal() ? dParent : getContextObject()).dClass().getLanguages();
        if (QUOTED.get(this)) {
            return NODE_TYPE.get(Quadruple.of(ls, SNodeUtil.concept_BaseConcept, Set.of(), Set.of()));
        } else {
            ls = ls.addAll(getAnonymousLanguages());
            SLanguage l = DClareMPS.LANGUAGE.get(getConcept());
            if (!DClareMPS.ACTIVE_RULE_SETS.get(l).isEmpty()) {
                ls = ls.add(l);
            }
            return NODE_TYPE.get(Quadruple.of(ls, getConcept(), getAnonymousTypes(), getCopyAspects()));
        }
    }

    @Override
    protected DNodeType getBootstrapType() {
        return NODE_TYPE.get(Quadruple.of(Set.of(), SNodeUtil.concept_BaseConcept, Set.of(), Set.of()));
    }

    @NotNull
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

    private List<DNode> getChildrenFromMPS() {
        List<DNode> result = List.of();
        for (SContainmentLink cl : getConcept().getContainmentLinks()) {
            if (cl.isMultiple()) {
                result = result.appendList(MANY_CONTAINMENT.get(cl).fromMPS(this));
            } else {
                DNode child = SINGLE_CONTAINMENT.get(cl).fromMPS(this);
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
        return children.sequential().map(c -> copy(c, root)).asList();
    }

    private static DNode copy(DNode child, DCopy root) {
        if (child != null) {
            return child.copy(root);
        } else {
            return null;
        }
    }

    private static DNode map(DNode copy, DNode copied, DNode referenced, DCopy root) {
        DNode copiedRoot = root.copied();
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
        SNodeReference ref = reference();
        if (ref != null) {
            return ref.getNodeId();
        } else {
            SNodeId nodeId = NODE_ID.current(this);
            if (nodeId == null) {
                nodeId = jetbrains.mps.smodel.SModel.generateUniqueId();
                NODE_ID.set(this, nodeId);
            }
            return nodeId;
        }
    }

    @Override
    public Object dNewableType() {
        return getConcept();
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public Object dIdentity() {
        if (LeafTransaction.getCurrent() instanceof IdentityDerivationTransaction) {
            Optional<DCopy> copy = deriveReasons().filter(DCopy.class).findFirst();
            if (copy.isPresent()) {
                DNode copied = copy.get().copied();
                assert (!equals(copied));
                return copied.dIdentity();
            }
        }
        DObjectType<?> dObjectType = dClass();
        Set<DAttribute> id = dObjectType.getIdentifying();
        if (!id.isEmpty()) {
            Map<DAttribute, Object> map = Map.of();
            for (DAttribute attr : id) {
                map = map.put(attr, attr.get(this));
            }
            return map;
        } else if (isINamedConcept) {
            return getName();
        } else {
            SConcept concept = getConcept();
            Set<SReferenceLink> references = SINGLE_REFERENCES.get(concept);
            Set<SContainmentLink> containments = SINGLE_CONTAINMENTS.get(concept);
            if (references.isEmpty() && containments.isEmpty()) {
                return concept;
            } else {
                Map<SAbstractLink, Object> map = Map.of();
                for (SReferenceLink rl : references) {
                    DNode referenced = REFERENCE.get(rl).get(this);
                    map = map.put(rl, referenced != null ? referenced.dIdentity() : null);
                }
                for (SContainmentLink cl : containments) {
                    DNode child = SINGLE_CONTAINMENT.get(cl).get(this);
                    map = map.put(cl, child != null ? child.dIdentity() : null);
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

    @Override
    public boolean isInstanceOfConcept(@NotNull SAbstractConcept c) {
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
    public void addChild(SContainmentLink role, @NotNull SNode child) {
        DNode dNode = of(child);
        if (role.isMultiple()) {
            MANY_CONTAINMENT.get(role).set(this, List::addUnique, dNode);
        } else {
            SINGLE_CONTAINMENT.get(role).set(this, dNode);
        }
    }

    @Override
    public void insertChildBefore(SContainmentLink role, @NotNull SNode child, SNode anchor) {
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
    public void insertChildAfter(SContainmentLink role, @NotNull SNode child, SNode anchor) {
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
    public void removeChild(@NotNull SNode child) {
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
    public SContainmentLink getContainmentLink() {
        Setable<Mutable, ?> containing = dContaining();
        return containing != null && containing.id() instanceof SContainmentLink ? (SContainmentLink) containing.id() : null;
    }

    @NotNull
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

    @NotNull
    @Override
    public Iterable<? extends DNode> getChildren(SContainmentLink role) {
        return role.isMultiple() ? MANY_CONTAINMENT.get(role).get(this) : SINGLE_CONTAINMENT.get(role).<DNode> getCollection(this).asList();
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
    public void setReferenceTarget(@NotNull SReferenceLink role, SNode target) {
        REFERENCE.get(role).set(this, DNode.of(target));
    }

    @Override
    public DNode getReferenceTarget(@NotNull SReferenceLink role) {
        return REFERENCE.get(role).get(this);
    }

    public Iterable<? extends DNode> getReferenceSources(SReferenceLink role) {
        return OPPOSITE.get(role).get(this);
    }

    @Override
    public void setReference(@NotNull SReferenceLink role, @NotNull SNodeReference target) {
        SNode targetNode = dClareMPS().read(() -> target.resolve(null));
        REFERENCE.get(role).set(this, DNode.of(targetNode.getConcept(), target, targetNode));
    }

    @Override
    public SReference getReference(@NotNull SReferenceLink role) {
        DNode target = REFERENCE.get(role).get(this);
        return target != null ? new SReference() {

            @SuppressWarnings("deprecation")
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
    public void dropReference(@NotNull SReferenceLink role) {
        REFERENCE.get(role).setDefault(this);
    }

    @Override
    public void setReference(@NotNull SReferenceLink role, ResolveInfo resolveInfo) {
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
                List<DNode> post = value != null ? Collection.of((Iterable<DNode>) value).notNull().distinct().asList() : null;
                if (post != null) {
                    MANY_CONTAINMENT.get(cl).set(this, post);
                }
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
                return MANY_CONTAINMENT.get(cl).get(this).toMutable();
            } else {
                return SINGLE_CONTAINMENT.get(cl).get(this);
            }
        } else {
            return REFERENCE.get((SReferenceLink) feature).get(this);
        }
    }

    @SuppressWarnings("rawtypes")
    public static DObserved getDObserved(SConceptFeature feature) {
        if (feature instanceof SProperty) {
            return PROPERTY.get((SProperty) feature);
        } else if (feature instanceof SContainmentLink) {
            SContainmentLink cl = (SContainmentLink) feature;
            if (cl.isMultiple()) {
                return MANY_CONTAINMENT.get(cl);
            } else {
                return SINGLE_CONTAINMENT.get(cl);
            }
        } else {
            return REFERENCE.get((SReferenceLink) feature);
        }
    }

    @NotNull
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
    public boolean dIsOrphan(State state) {
        return dCheckConsistency() && super.dIsOrphan(state);
    }

    @NotNull
    @Override
    public Iterable<SProperty> getProperties() {
        return getConcept().getProperties();
    }

    @Override
    public boolean hasProperty(@NotNull SProperty property) {
        return getProperty(property) != null;
    }

    @Override
    public String getProperty(@NotNull SProperty property) {
        return PROPERTY.get(property).get(this);
    }

    @Override
    public void setProperty(@NotNull SProperty property, String propertyValue) {
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

    @NotNull
    @Override
    public SNodeReference getReference() {
        return reference();
    }

    @Override
    @Deprecated
    public String getRoleInParent() {
        throw new UnsupportedOperationException();
    }

    @SuppressWarnings("removal")
    @Override
    @Deprecated
    public boolean hasProperty(String propertyName) {
        throw new UnsupportedOperationException();
    }

    @SuppressWarnings("removal")
    @Override
    @Deprecated
    public String getProperty(String propertyName) {
        throw new UnsupportedOperationException();
    }

    @SuppressWarnings("removal")
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

    @SuppressWarnings("removal")
    @Override
    @Deprecated
    public void setReferenceTarget(String role, SNode target) {
        throw new UnsupportedOperationException();
    }

    @SuppressWarnings("removal")
    @Override
    @Deprecated
    public SNode getReferenceTarget(String role) {
        throw new UnsupportedOperationException();
    }

    @SuppressWarnings("removal")
    @Override
    @Deprecated
    public SReference getReference(String role) {
        throw new UnsupportedOperationException();
    }

    @SuppressWarnings("removal")
    @Override
    @Deprecated
    public void setReference(String role, SReference reference) {
        throw new UnsupportedOperationException();
    }

    @SuppressWarnings("removal")
    @Override
    @Deprecated
    public void insertChildBefore(String role, SNode child, SNode anchor) {
        throw new UnsupportedOperationException();
    }

    @SuppressWarnings("removal")
    @Override
    @Deprecated
    public void addChild(String role, SNode child) {
        throw new UnsupportedOperationException();
    }

    @SuppressWarnings("removal")
    @Override
    @Deprecated
    public Iterable<? extends SNode> getChildren(String role) {
        throw new UnsupportedOperationException();
    }

    @SuppressWarnings("DeprecatedIsStillUsed")
    @Override
    @Deprecated
    public void setReference(@NotNull SReferenceLink role, SReference reference) {
        REFERENCE.get(role).set(this, DNode.of(reference.getTargetNode()));
    }

    protected static List<SNode> children(SNode node, SContainmentLink feature) {
        List<SNode> children = List.of();
        for (SNode child : node.getChildren(feature)) {
            children = children.add(child);
        }
        return children;
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
    protected void init(DClareMPS dClareMPS, SNode original) {
    }

    @Override
    protected void exit(DClareMPS dClareMPS, SNode original) {
    }

    @SuppressWarnings("unchecked")
    @Override
    protected void read() {
        DNode.CONCEPT_INIT_DOBSERVEDS.get(getConcept()).forEachOrdered(o -> o.triggerInitRead(this));
        MODEL.triggerInitRead(this);
        if (isINamedConcept) {
            PROPERTY.get(SNodeUtil.property_INamedConcept_name).triggerInitRead(this);
        }
    }

    @Override
    @SuppressWarnings("rawtypes")
    protected void readObservedDeep() {
        Set<Observed> read = DNewableObject.READ_OBSERVEDS.get(this);
        readObserved(read, INDEX);
        readObserved(read, ROOT);
        readObserved(read, MODEL);
        DNode.CONCEPT_DOBSERVEDS.get(getConcept()).forEachOrdered(o -> readObserved(read, o));
    }

    @Override
    protected void activate() {
        if (!isExternal() && isAction() && isRead() && !isActive()) {
            SNode root = dClareMPS().read(() -> tryOriginal().getContainingRoot());
            if (root != null) {
                SModel model = dClareMPS().read(root::getModel);
                if (model != null) {
                    DModel.of(model).triggerAddRoot(DNode.of(root));
                }
            }
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

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    protected Pair<DObject, DObserved<DObject, ?>> readParent() {
        SNode original = tryOriginal();
        if (original == null) {
            throw new NullPointerException("original of " + this + " returned null in readParent()");
        }
        DClareMPS dClareMPS = dClareMPS();
        SNode parentNode = dClareMPS.read(original::getParent);
        if (parentNode != null) {
            SContainmentLink link = original.getContainmentLink();
            DNode parent = DNode.of(parentNode);
            DObserved observed = getDObserved(link);
            return Pair.of(parent, observed);
        } else {
            SModel parentModel = dClareMPS.read(original::getModel);
            if (parentModel == null) {
                return null;
            }
            DModel parent = DModel.of(parentModel);
            return (Pair) Pair.of(parent, DModel.ROOTS);
        }
    }

    public boolean isShared() {
        DModel model = MODEL.get(this);
        return model != null && model.isShared();
    }

    private boolean isQuotation() {
        return getConcept().equals(QUOTATION_CONCEPT);
    }

    private boolean isAntiQuotation() {
        return getConcept().equals(ANTI_QUOTATION_CONCEPT) || getConcept().equals(LIST_ANTI_QUOTATION_CONCEPT) || //
                getConcept().equals(PROPERTY_ANTI_QUOTATION_CONCEPT) || getConcept().equals(REFERENCE_ANTI_QUOTATION_CONCEPT);
    }

}
