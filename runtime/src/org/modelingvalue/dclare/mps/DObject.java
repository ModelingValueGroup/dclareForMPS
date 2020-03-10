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

import java.util.function.Consumer;
import java.util.stream.Collectors;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.module.SRepository;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.Action;
import org.modelingvalue.dclare.Direction;
import org.modelingvalue.dclare.Mutable;
import org.modelingvalue.dclare.NonCheckingObserved;
import org.modelingvalue.dclare.NonCheckingObserver;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;

import jetbrains.mps.errors.item.IssueKindReportItem;

@SuppressWarnings({"rawtypes", "unused"})
public abstract class DObject implements Mutable {

    public static final Observed<DObject, DType>                                    TYPE                      = NonCheckingObserved.of("TYPE", new DType("<DUMMY_TYPE>") {
                                                                                                                  @Override
                                                                                                                  public Set<DRule> getRules(Set<IRuleSet> ruleSets) {
                                                                                                                      return Set.of();
                                                                                                                  }

                                                                                                                  @Override
                                                                                                                  public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
                                                                                                                      return Set.of();
                                                                                                                  }

                                                                                                                  @Override
                                                                                                                  public Set<SLanguage> getLanguages() {
                                                                                                                      return Set.of();
                                                                                                                  }
                                                                                                              });

    protected static final Observer<DObject>                                        TYPE_RULE                 = observer(TYPE, o -> TYPE.set(o, o.getType()));

    public static final Observed<DObject, DAttribute>                               CONTAINING_ATTRIBUTE      = NonCheckingObserved.of("$CONTAINING_ATTRIBUTE", null);

    protected static final Observer<DObject>                                        CONTAINING_ATTRIBUTE_RULE = observer(CONTAINING_ATTRIBUTE, o -> {
                                                                                                                  Pair<Mutable, Setable<Mutable, ?>> pc = Mutable.D_PARENT_CONTAINING.get(o);
                                                                                                                  CONTAINING_ATTRIBUTE.set(o, pc == null || pc.a() instanceof DClareMPS ? null :                              //
                                                                                                                  pc.b() instanceof DAttribute ? (DAttribute) pc.b() : CONTAINING_ATTRIBUTE.get((DObject) pc.a()));
                                                                                                              });

    protected static final Action<DObject>                                          REFRESH_CHILDREN          = Action.of("$REFRESH_CHILDREN", o -> {
                                                                                                                  for (DObject c : o.getAllChildren()) {
                                                                                                                      DObject.REFRESH.trigger(c);
                                                                                                                  }
                                                                                                              }, Direction.forward);

    protected static final Action<DObject>                                          REFRESH                   = Action.of("$REFRESH", o -> {
                                                                                                                  o.read(dClareMPS());
                                                                                                                  DObject.REFRESH_CHILDREN.trigger(o);
                                                                                                              }, Direction.forward);

    public static final DObserved<DObject, Set<Pair<DObject, IssueKindReportItem>>> MPS_ISSUES                = DObserved.of("$MPS_ISSUES", Set.of(), false, false, null, false, null, (tx, o, pre, post) -> {
                                                                                                                  DNode root = o instanceof DNode ? ((DNode) o).getContainingRoot() : null;
                                                                                                                  if (root != null) {
                                                                                                                      Setable.<Set<Pair<DObject, IssueKindReportItem>>, Pair<DObject, IssueKindReportItem>> diff(pre, post,   //
                                                                                                                              a -> DNode.ALL_MPS_ISSUES.set(root, Set::add, a),                                               //
                                                                                                                              r -> DNode.ALL_MPS_ISSUES.set(root, Set::remove, r));
                                                                                                                  }
                                                                                                              }, null);

    public static final Setable<DObject, Set<DIssue>>                               DRULE_ISSUES              = Setable.of("$DRULE_ISSUES", Set.of(), true);

    public static final DObserved<DObject, Set<DIssue>>                             DCLARE_ISSUES             = DObserved.of("$DCLARE_ISSUES", Set.of(), false, false, () -> DIssue.DOBJECT, false, (dObject, pre, post) -> {
                                                                                                              }, null);

    protected static final Set<Observer>                                            OBSERVERS                 = Set.of(TYPE_RULE, CONTAINING_ATTRIBUTE_RULE);

    protected static final Set<Setable>                                             SETABLES                  = Set.of(TYPE, MPS_ISSUES, DRULE_ISSUES, DCLARE_ISSUES, CONTAINING_ATTRIBUTE);

    public static DClareMPS dClareMPS() {
        return DClareMPS.instance();
    }

    public abstract boolean isReadOnly();

    public boolean isOwned() {
        return dParent() != null;
    }

    public java.util.List<DAttribute> getAttributes() {
        return TYPE.get(this).getAttributes().collect(Collectors.toList());
    }

    public java.util.Set<? extends IssueKindReportItem> getIssues() {
        return MPS_ISSUES.get(this).map(Pair::b).collect(Collectors.toSet());
    }

    public java.util.List<DAttribute> getNonSyntheticAttributes() {
        return TYPE.get(this).getNonSyntheticAttributes().collect(Collectors.toList());
    }

    @Override
    public DType dClass() {
        return TYPE.get(this);
    }

    @SuppressWarnings("unchecked")
    public Collection<DObject> getAllChildren() {
        return (Collection<DObject>) dChildren();
    }

    @SuppressWarnings("unchecked")
    public static Set<DObject> getDObjectSet(Object v) {
        if (v instanceof Collection) {
            return ((Collection) v).toSet();
        } else if (v instanceof java.util.Collection) {
            return Set.of((java.util.Collection) v);
        } else {
            return v == null ? Set.of() : Set.of((DObject) v);
        }
    }

    @Override
    public void dActivate() {
        Mutable.super.dActivate();
        start(dClareMPS());
    }

    @Override
    public void dDeactivate() {
        Mutable.super.dDeactivate();
        stop(dClareMPS());
    }

    protected abstract void read(DClareMPS dClareMPS);

    protected void init(DClareMPS dClareMPS) {
    }

    protected void exit(DClareMPS dClareMPS) {
    }

    protected final void start(DClareMPS dClareMPS) {
        init(dClareMPS);
        read(dClareMPS);
    }

    protected void stop(DClareMPS dClareMPS) {
        exit(dClareMPS);
    }

    protected abstract SRepository getOriginalRepository();

    public DObject dObjectParent() {
        Object parent = dParent();
        return parent instanceof DObject ? (DObject) parent : null;
    }

    protected abstract DType getType();

    public static <O extends DObject> NonCheckingObserver<O> observer(Object id, Consumer<O> action) {
        return observer(id, action, Direction.forward);
    }

    public static <O extends DObject> NonCheckingObserver<O> observer(Object id, Consumer<O> action, Direction dir) {
        return NonCheckingObserver.of(id, o -> {
            if (o.isOwned()) {
                action.accept(o);
            }
        }, dir);
    }

    public boolean isDclareOnly() {
        return Mutable.D_PARENT_CONTAINING.get(this) == null || CONTAINING_ATTRIBUTE.get(this) != null;
    }

    protected boolean isExternal() {
        return isReadOnly() || !dClareMPS().getRepository().original().equals(getOriginalRepository());
    }

}
