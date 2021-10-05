//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2021 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import static org.modelingvalue.dclare.CoreSetableModifier.containment;
import static org.modelingvalue.dclare.CoreSetableModifier.mandatory;
import static org.modelingvalue.dclare.CoreSetableModifier.softMandatory;
import static org.modelingvalue.dclare.CoreSetableModifier.synthetic;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.Consumer;
import java.util.stream.Collectors;

import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SAbstractLink;
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
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
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
import org.modelingvalue.collections.util.TriFunction;
import org.modelingvalue.dclare.Action;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.Construction;
import org.modelingvalue.dclare.Direction;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.MutableTransaction;
import org.modelingvalue.dclare.Newable;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.ObserverTransaction;
import org.modelingvalue.dclare.Priority;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.State;
import org.modelingvalue.dclare.Transaction;
import org.modelingvalue.dclare.UniverseTransaction;

import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.errors.item.NodeReportItem;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.DynamicReference;
import jetbrains.mps.smodel.SNodeId.Regular;
import jetbrains.mps.smodel.SNodeUtil;

@SuppressWarnings("unused")
public class DNode extends DMatchedObject<DNode, SNodeReference, SNode> implements SNode {

    private static final Constant<Quintuple<Set<SLanguage>, SConcept, Set<String>, Boolean, SLanguage>, DNodeType> NODE_TYPE              = Constant.of("NODE_TYPE", DNodeType::new);

    private static final Constant<SConcept, AtomicLong>                                                            NODE_COUNTER           = Constant.of("NODE_COUNTER", NodeCounter::new);

    protected static final Constant<SAbstractConcept, Set<SAbstractConcept>>                                       SUPER_CONCEPTS         = Constant.of("SUPER_CONCEPTS", ac -> {
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

    protected static final Constant<SConcept, Set<SReferenceLink>>                                                 SINGLE_REFERENCES      = Constant.of("SINGLE_REFERENCES", c -> {
                                                                                                                                              return Collection.of(c.getReferenceLinks()).exclude(SReferenceLink::isOptional).                                                                                    //
                                                                                                                                              exclude(SNodeUtil.concept_BaseConcept.getReferenceLinks()::contains).toSet();
                                                                                                                                          });

    @SuppressWarnings("unlikely-arg-type")
    protected static final Constant<SConcept, Set<SContainmentLink>>                                               SINGLE_CONTAINMENTS    = Constant.of("SINGLE_CONTAINMENTS", c -> {
                                                                                                                                              return Collection.of(c.getContainmentLinks()).exclude(SContainmentLink::isMultiple).exclude(SContainmentLink::isOptional).                                          //
                                                                                                                                              exclude(SNodeUtil.concept_BaseConcept.getContainmentLinks()::contains).toSet();
                                                                                                                                          });

    protected static final Observed<DNode, DModel>                                                                 MODEL                  = Observed.of("$MODEL", null, synthetic);

    protected static final Observed<DNode, DNode>                                                                  ROOT                   = Observed.of("$ROOT", null, (tx, o, pre, post) -> {
                                                                                                                                              Set<Pair<DObject, IssueKindReportItem>> items = MPS_ISSUES.get(o);
                                                                                                                                              if (pre != null) {
                                                                                                                                                  DNode.ALL_MPS_ISSUES.set(pre, Set::removeAll, items);
                                                                                                                                              }
                                                                                                                                              if (post != null) {
                                                                                                                                                  DNode.ALL_MPS_ISSUES.set(post, Set::addAll, items);
                                                                                                                                              }
                                                                                                                                          }, synthetic);

    @SuppressWarnings({"unchecked", "rawtypes"})
    protected static final DObserved<DNode, Map<Object, Object>>                                                   USER_OBJECTS           = DObserved.of("USER_OBJECTS", Map.of(), (TriFunction) null);

    @SuppressWarnings("deprecation")
    public static final Constant<SContainmentLink, DObserved<DNode, List<DNode>>>                                  MANY_CONTAINMENT       = Constant.of("MANY_CONTAINMENT", mc -> DObserved.of(mc, List.of(), dNode -> {
                                                                                                                                              SNode sNode = dNode.tryOriginal();
                                                                                                                                              return sNode != null ? Collection.of(sNode.getChildren(mc)).sequential().map(DNode::of).toList() : null;
                                                                                                                                          }, (dNode, pre, post) -> {
                                                                                                                                              SNode sNode = dNode.reParent();
                                                                                                                                              List<SNode> soll = post.map(c -> c.reParent(sNode, mc, c.original())).toList();
                                                                                                                                              List<SNode> ist = children(sNode, mc);
                                                                                                                                              if (!soll.equals(ist)) {
                                                                                                                                                  DObserved.map(ist, soll, (n, a) -> {
                                                                                                                                                  }, sNode::removeChild);
                                                                                                                                                  ist = children(sNode, mc);
                                                                                                                                                  DObserved.map(ist, soll, (n, a) -> sNode.insertChildAfter(mc, n, a), r -> {
                                                                                                                                                  });
                                                                                                                                                  return true;
                                                                                                                                              } else {
                                                                                                                                                  return false;
                                                                                                                                              }
                                                                                                                                          }, mc::getDeclarationNode, containment, softMandatory.ifnot(mc.isOptional())));

    @SuppressWarnings("deprecation")
    public static final Constant<SContainmentLink, DObserved<DNode, DNode>>                                        SINGLE_CONTAINMENT     = Constant.of("SINGLE_CONTAINMENT", sc -> DObserved.of(sc, null, dNode -> {
                                                                                                                                              SNode sNode = dNode.tryOriginal();
                                                                                                                                              SNode child = sNode != null ? children(sNode, sc).first() : null;
                                                                                                                                              return child != null ? DNode.of(child) : null;
                                                                                                                                          }, (dNode, pre, post) -> {
                                                                                                                                              SNode sNode = dNode.reParent();
                                                                                                                                              List<SNode> soll = post != null ? List.of(post.reParent(sNode, sc, post.original())) : List.of();
                                                                                                                                              List<SNode> ist = children(sNode, sc);
                                                                                                                                              if (!soll.equals(ist)) {
                                                                                                                                                  DObserved.map(ist, soll, (n, a) -> {
                                                                                                                                                  }, sNode::removeChild);
                                                                                                                                                  ist = children(sNode, sc);
                                                                                                                                                  DObserved.map(ist, soll, (n, a) -> sNode.addChild(sc, n), r -> {
                                                                                                                                                  });
                                                                                                                                                  return true;
                                                                                                                                              } else {
                                                                                                                                                  return false;
                                                                                                                                              }
                                                                                                                                          }, sc::getDeclarationNode, containment, softMandatory.ifnot(sc.isOptional())));

    @SuppressWarnings("deprecation")
    public static final Constant<SReferenceLink, DObserved<DNode, DNode>>                                          REFERENCE              = Constant.of("REFERENCE", sr -> DObserved.of(sr, null, () -> DNode.OPPOSITE.get(sr), dNode -> {
                                                                                                                                              SNode orig = dNode.tryOriginal();
                                                                                                                                              SReference ref = orig != null ? orig.getReference(sr) : null;
                                                                                                                                              SNode sNode = ref != null ? ref.getTargetNode() : null;
                                                                                                                                              return sNode != null ? DNode.of(sNode) : null;
                                                                                                                                          }, (dNode, pre, post) -> {
                                                                                                                                              SNode sNode = dNode.original();
                                                                                                                                              SReference ref = sNode.getReference(sr);
                                                                                                                                              SNode ist = ref != null ? ref.getTargetNode() : null;
                                                                                                                                              SNode soll = post != null ? post.original() : null;
                                                                                                                                              if (!Objects.equals(ist, soll) || (ref == null) != (soll == null)) {
                                                                                                                                                  sNode.setReferenceTarget(sr, soll);
                                                                                                                                                  return true;
                                                                                                                                              } else {
                                                                                                                                                  return false;
                                                                                                                                              }
                                                                                                                                          }, sr::getDeclarationNode, softMandatory.ifnot(sr.isOptional())));

    @SuppressWarnings("deprecation")
    public static final Constant<SReferenceLink, DObserved<DNode, Set<DNode>>>                                     OPPOSITE               = Constant.of("OPPOSITE", sr -> DObserved.of(Pair.of(sr, "OPPOSITE"), Set.of(), () -> DNode.REFERENCE.get(sr), null, sr::getDeclarationNode, synthetic));
    @SuppressWarnings("deprecation")
    public static final Constant<SProperty, DObserved<DNode, String>>                                              PROPERTY               = Constant.of("PROPERTY", sp -> DObserved.of(sp, null, dNode -> {
                                                                                                                                              SNode sNode = dNode.tryOriginal();
                                                                                                                                              return sNode != null ? sNode.getProperty(sp) : null;
                                                                                                                                          }, (dNode, pre, post) -> {
                                                                                                                                              SNode sNode = dNode.original();
                                                                                                                                              String ist = sNode.getProperty(sp);
                                                                                                                                              if (!Objects.equals(ist, post)) {
                                                                                                                                                  sNode.setProperty(sp, post);
                                                                                                                                                  return true;
                                                                                                                                              } else {
                                                                                                                                                  return false;
                                                                                                                                              }
                                                                                                                                          }, sp::getDeclarationNode, mandatory, softMandatory));

    private static final Observer<DNode>                                                                           MODEL_RULE             = DObject.observer(MODEL, o -> {
                                                                                                                                              DNode p = o.getAncestor(DNode.class);
                                                                                                                                              return p != null ? MODEL.get(p) : o.getAncestor(DModel.class);
                                                                                                                                          });

    private static final Observer<DNode>                                                                           ROOT_RULE              = DObject.observer(ROOT, o -> {
                                                                                                                                              DNode p = o.getParent();
                                                                                                                                              return p != null ? ROOT.get(p) : o;
                                                                                                                                          });
    @SuppressWarnings("rawtypes")
    protected static final Constant<Pair<SConcept, SLanguage>, Set<Observer>>                                      COPY_CONCEPT_OBSERVERS = Constant.of("COPY_CONCEPT_OBSERVERS", p -> {
                                                                                                                                              SConcept c = p.a();
                                                                                                                                              SLanguage l = p.b();
                                                                                                                                              Set<Observer> observers = Set.of();
                                                                                                                                              for (SProperty property : c.getProperties()) {
                                                                                                                                                  DObserved<DNode, String> observed = PROPERTY.get(property);
                                                                                                                                                  observers = observers.add(copyObserver(l, observed,                                                                                                             //
                                                                                                                                                          (t, s, r) -> observed.set(t, observed.get(s))));
                                                                                                                                              }
                                                                                                                                              for (SContainmentLink containment : c.getContainmentLinks()) {
                                                                                                                                                  if (containment.isMultiple()) {
                                                                                                                                                      DObserved<DNode, List<DNode>> observed = MANY_CONTAINMENT.get(containment);
                                                                                                                                                      observers = observers.add(copyObserver(l, observed,                                                                                                         //
                                                                                                                                                              (t, s, r) -> observed.set(t, copy(observed.get(s), r))));
                                                                                                                                                  } else {
                                                                                                                                                      DObserved<DNode, DNode> observed = SINGLE_CONTAINMENT.get(containment);
                                                                                                                                                      observers = observers.add(copyObserver(l, observed,                                                                                                         //
                                                                                                                                                              (t, s, r) -> observed.set(t, copy(observed.get(s), r))));
                                                                                                                                                  }
                                                                                                                                              }
                                                                                                                                              for (SReferenceLink reference : c.getReferenceLinks()) {
                                                                                                                                                  DObserved<DNode, DNode> observed = REFERENCE.get(reference);
                                                                                                                                                  observers = observers.add(copyObserver(l, observed,                                                                                                             //
                                                                                                                                                          (t, s, r) -> observed.set(t, map(t, s, observed.get(s), r.copied()))));
                                                                                                                                              }
                                                                                                                                              return observers;
                                                                                                                                          });

    private static final Action<DNode>                                                                             READ_PROPERTIES        = Action.of("$READ_PROPERTIES", n -> {
                                                                                                                                              SNode sNode = n.tryOriginal();
                                                                                                                                              if (sNode != null) {
                                                                                                                                                  for (SProperty property : n.getConcept().getProperties()) {
                                                                                                                                                      PROPERTY.get(property).set(n, dClareMPS().read(() -> sNode.getProperty(property)));
                                                                                                                                                  }
                                                                                                                                              }
                                                                                                                                          }, Priority.urgent);

    private static final Action<DNode>                                                                             READ_REFERENCES        = Action.of("$READ_REFERENCES", n -> {
                                                                                                                                              SNode sNode = n.tryOriginal();
                                                                                                                                              if (sNode != null) {
                                                                                                                                                  for (SReferenceLink link : n.getConcept().getReferenceLinks()) {
                                                                                                                                                      SReference reference = dClareMPS().read(() -> sNode.getReference(link));
                                                                                                                                                      SNode targetNode = reference != null ? dClareMPS().read(reference::getTargetNode) : null;
                                                                                                                                                      if (reference != null && targetNode == null) {
                                                                                                                                                          throw new IllegalArgumentException("Reading an unresolveable reference " + sNode + "." + link + "=" + reference);
                                                                                                                                                      }
                                                                                                                                                      REFERENCE.get(link).set(n, targetNode != null ? of(targetNode.getConcept(), reference.getTargetNodeReference(), targetNode) : null);
                                                                                                                                                  }
                                                                                                                                              }
                                                                                                                                          }, Priority.urgent);

    private static final Action<DNode>                                                                             READ_CHILDREN          = Action.of("$READ_CHILDREN", n -> {
                                                                                                                                              SNode sNode = n.tryOriginal();
                                                                                                                                              if (sNode != null) {
                                                                                                                                                  for (SContainmentLink link : n.getConcept().getContainmentLinks()) {
                                                                                                                                                      List<DNode> list = dClareMPS().read(() -> Collection.of(sNode.getChildren(link)).sequential().map(DNode::read).toList());
                                                                                                                                                      if (link.isMultiple()) {
                                                                                                                                                          MANY_CONTAINMENT.get(link).set(n, list);
                                                                                                                                                      } else {
                                                                                                                                                          SINGLE_CONTAINMENT.get(link).set(n, list.first());
                                                                                                                                                      }
                                                                                                                                                  }
                                                                                                                                              }
                                                                                                                                          }, Priority.urgent);

    @SuppressWarnings("rawtypes")
    protected static final Constant<SConcept, Set<? extends Setable>>                                              CONCEPT_SETABLES       = Constant.of("$CONCEPT_SETABLES", c -> Collection.concat(                                                                                                              //
            Collection.of(c.getProperties()),                                                                                                                                                                                                                                                                     //
            Collection.of(c.getContainmentLinks()),                                                                                                                                                                                                                                                               //
            Collection.of(c.getReferenceLinks())).map(DNode::setable).toSet());

    @SuppressWarnings("rawtypes")
    protected static final Constant<SConcept, Set<Observer>>                                                       CONCEPT_OBSERVERS      = Constant.of("$CONCEPT_OBSERVERS", c -> Set.of());

    protected static final Setable<DNode, Set<Pair<DObject, IssueKindReportItem>>>                                 ALL_MPS_ISSUES         = Setable.of("$ALL_MPS_ISSUES", Set.of(), (tx, o, pre, post) -> Setable.<Set<Pair<DObject, IssueKindReportItem>>, Pair<DObject, IssueKindReportItem>> diff(pre, post,   //
            a -> DObject.MPS_ISSUES.set(a.a(), Set::add, a),                                                                                                                                                                                                                                                      //
            r -> DObject.MPS_ISSUES.set(r.a(), Set::remove, r)));

    @SuppressWarnings({"rawtypes", "unchecked"})
    protected static final DObserved<DNode, Integer>                                                               INDEX                  = DObserved.of("INDEX", -1, (TriFunction) null, synthetic);

    @SuppressWarnings("rawtypes")
    private static final Observer<DNode>                                                                           INDEX_RULE             = DObject.observer(INDEX, o -> {
                                                                                                                                              Pair<Mutable, Setable<Mutable, ?>> pc = Mutable.D_PARENT_CONTAINING.get(o);
                                                                                                                                              Object children = pc != null ? pc.b().get(pc.a()) : null;
                                                                                                                                              return o.equals(children) ? 0 : children instanceof List ? ((List) children).firstIndexOf(o) : -1;
                                                                                                                                          });

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                                                                           OBSERVERS              = DMatchedObject.OBSERVERS.addAll(Set.of(ROOT_RULE, MODEL_RULE, INDEX_RULE));

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                                                                            SETABLES               = DMatchedObject.SETABLES.addAll(Set.of(ROOT, MODEL, USER_OBJECTS, ALL_MPS_ISSUES, INDEX));

    public static Observer<DNode> copyObserver(SLanguage copyLang, DObserved<DNode, ?> observed, TriConsumer<DNode, DNode, DCopy> action) {
        return DCopyObserver.of(observed, t -> {
            for (Construction c : t.dDerivedConstructions()) {
                if (c.reason() instanceof DCopy && ((DCopy) c.reason()).getAnonymousLanguage().equals(copyLang) && //
                !Newable.D_SUPER_POSITION.get(t).contains(c.reason().direction())) {
                    DCopy reason = (DCopy) c.reason();
                    action.accept(t, reason.copied(), reason.root());
                }
            }
        }, m -> DRule.DIRECTION.get(copyLang));
    }

    static public class DCopyObserver extends Observer<DNode> {

        private static DCopyObserver of(DObserved<DNode, ?> observed, Consumer<DNode> action) {
            return new DCopyObserver(observed, action);
        }

        @SuppressWarnings({"unchecked", "RedundantSuppression"})
        private DCopyObserver(DObserved<DNode, ?> observed, Consumer<DNode> action) {
            super(observed, action, Priority.forward);
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

    public static DNode of(SLanguage anonymousLanguage, String anonymousType, Object[] identity, SConcept concept) {
        return quotationConstruct(anonymousLanguage, anonymousType, identity, //
                () -> new DNode(new Object[]{uniqueLong(concept), concept, false}));
    }

    public DNode copy(SLanguage lang, String anonymousType, DObject ctx) {
        return copyRootConstruct(lang, anonymousType, ctx, this, //
                () -> new DNode(new Object[]{uniqueLong(getConcept()), getConcept(), false}));
    }

    private DNode copy(DCopy root) {
        return copyChildConstruct(root, this, //
                () -> new DNode(new Object[]{uniqueLong(getConcept()), getConcept(), false}));
    }

    private static long uniqueLong(SConcept concept) {
        return NODE_COUNTER.get(concept).getAndIncrement();
    }

    protected static DNode read(SNode original) {
        SConcept concept = original.getConcept();
        DNode dNode = of(concept, original.getReference(), original);
        if (concept.isSubConceptOf(SNodeUtil.concept_INamedConcept)) {
            PROPERTY.get(SNodeUtil.property_INamedConcept_name).set(dNode, original.getName());
        }
        INDEX.set(dNode, SNodeOperations.getIndexInParent(original));
        return dNode;
    }

    public static DNode of(SNode original) {
        return original instanceof DNode ? (DNode) original : of(original.getConcept(), original.getReference(), original);
    }

    public static DNode of(SConcept concept, SNodeReference ref, SNode original) {
        if (original == null) {
            throw new IllegalArgumentException("Creating a DNode of non-resolveable SNode reference " + ref);
        }
        SModel sModel = dClareMPS().read(() -> ref.getModelReference().resolve(null));
        if (sModel == null) {
            throw new IllegalArgumentException("Creating a DNode with a non-resolveable SModel " + original);
        }
        Boolean external = DModel.EXTERNAL.get(sModel);
        return readConstruct(ref, () -> new DNode(new Object[]{uniqueLong(concept), concept, external}), original);
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
                sParent.addChild(getContainmentLink(), sNode);
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
        return NODE_TYPE.get(Quintuple.of(ls, getConcept(), getAnonymousTypes(), isExternal(), copyAnonymousLanguage()));
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
        return new Regular((long) identity[0]);
    }

    @Override
    protected void read() {
        READ_PROPERTIES.trigger(this);
        READ_CHILDREN.trigger(this);
        READ_REFERENCES.trigger(this);
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
            String name = SNodeAccessUtil.getProperty(this, SNodeUtil.property_INamedConcept_name);
            if (name == null) {
                SNode original = tryOriginal();
                if (original != null) {
                    name = dClareMPS().read(() -> SNodeAccessUtil.getProperty(original, SNodeUtil.property_INamedConcept_name));
                }
            }
            return name;
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
        if (!isActive()) {
            SModel model = dClareMPS().read(() -> tryOriginal().getModel());
            return model != null ? DModel.of(model) : null;
        } else {
            return MODEL.get(this);
        }
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
        if (!isActive()) {
            return dClareMPS().read(() -> tryOriginal().getName());
        } else {
            return PROPERTY.get(SNodeUtil.property_INamedConcept_name).get(this);
        }
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
        if (!isActive()) {
            SNode parent = dClareMPS().read(() -> tryOriginal().getParent());
            return parent != null ? DNode.of(parent) : null;
        } else {
            Mutable parent = dParent();
            return parent instanceof DNode ? (DNode) parent : null;
        }
    }

    @Override
    public DNode getContainingRoot() {
        if (!isActive()) {
            SNode root = dClareMPS().read(() -> tryOriginal().getContainingRoot());
            return root != null ? DNode.of(root) : null;
        } else {
            return ROOT.get(this);
        }
    }

    @Override
    public SContainmentLink getContainmentLink() {
        if (!isActive()) {
            return dClareMPS().read(() -> tryOriginal().getContainmentLink());
        } else {
            Setable<Mutable, ?> containing = dContaining();
            return containing != null && containing.id() instanceof SContainmentLink ? (SContainmentLink) containing.id() : null;
        }
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
    public void setReference(SReferenceLink role, SReference reference) {
        REFERENCE.get(role).set(this, DNode.of(reference.getTargetNode()));
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
        return !isExternal() && isActive() && super.dIsOrphan(state);
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
    public Direction dDirection() {
        return DRule.DIRECTION.get(getConcept().getLanguage());
    }

    @Override
    protected boolean isActive() {
        SNodeReference ref = reference();
        if (ref == null) {
            return true;
        } else {
            SModelReference mRef = ref.getModelReference();
            SModel sModel = mRef != null ? dClareMPS().read(() -> mRef.resolve(null)) : null;
            return sModel != null && DModel.of(sModel).isActive();
        }
    }

}
