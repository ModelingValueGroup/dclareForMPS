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

import java.util.function.Consumer;
import java.util.stream.Collectors;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.module.SRepository;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.transactions.Direction;
import org.modelingvalue.transactions.Mutable;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Priority;
import org.modelingvalue.transactions.Setable;

@SuppressWarnings("rawtypes")
public abstract class DObject<O> implements Mutable {

    public static final Setable<DObject, DType> TYPE      = Observed.of("TYPE", new DType("<DUMMY_TYPE>") {
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

    protected static final Observer<DObject>    TYPE_RULE = observer(TYPE, o -> {
                                                              TYPE.set(o, o.getType());
                                                          }, Priority.preDepth);

    protected static final Set<Observer>        RULES     = Set.of(TYPE_RULE);

    public static DClareMPS dClareMPS() {
        return DClareMPS.instance();
    }

    protected final O original;

    protected DObject(O original) {
        this.original = original;
    }

    public O original() {
        return original;
    }

    @Override
    public int hashCode() {
        return original.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        } else if (obj instanceof DObject) {
            DObject other = (DObject) obj;
            return original.equals(other.original);
        } else {
            return false;
        }
    }

    public abstract boolean isReadOnly();

    public boolean isOwned() {
        return dParent() != null;
    }

    @Override
    public String toString() {
        return original().toString();
    }

    public java.util.List<DAttribute> getAttributes() {
        return TYPE.get(this).getAttributes().collect(Collectors.toList());
    }

    public java.util.List<DAttribute> getNonSyntheticAttributes() {
        return TYPE.get(this).getNonSyntheticAttributes().collect(Collectors.toList());
    }

    @Override
    public DType dClass() {
        return TYPE.get(this);
    }

    @Override
    public Collection<? extends Observer<?>> dMutableObservers() {
        return Set.of();
    }

    @SuppressWarnings("unchecked")
    public Collection<? extends DObject> getAllChildren() {
        return (Collection<? extends DObject>) dChildren();
    }

    @SuppressWarnings("unchecked")
    public static Set<DObject<?>> getDObjectSet(Object v) {
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
        return observer(id, action, Priority.postDepth);
    }

    public static <O extends DObject> NonCheckingObserver<O> observer(Object id, Consumer<O> action, Priority prio) {
        return observer(id, action, Direction.forward, prio);
    }

    public static <O extends DObject> NonCheckingObserver<O> observer(Object id, Consumer<O> action, Direction dir, Priority prio) {
        return NonCheckingObserver.of(id, o -> {
            if (o.isOwned()) {
                action.accept(o);
            }
        }, dir, prio);
    }

}
