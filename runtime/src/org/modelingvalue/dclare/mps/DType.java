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

import org.modelingvalue.collections.Set;
import org.modelingvalue.transactions.Compound;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.Root;
import org.modelingvalue.transactions.Setable;

@SuppressWarnings("rawtypes")
public abstract class DType {

    private static final Setable<DType, Set<Consumer<DObject>>> RULES = Observed.of("RULES", Set.of());

    public abstract Set<Consumer<DObject>> getRules();

    public Set<Consumer<DObject>> getDerivedRules() {
        return RULES.get(this);
    }

    public abstract Object getIdentity();

    @Override
    public int hashCode() {
        return getClass().hashCode() + getIdentity().hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return getClass().equals(obj.getClass()) && getIdentity().equals(((DType) obj).getIdentity());
    }

    public void start(Root root) {
        Compound tx = Compound.of(this, root);
        Observer.of(RULES, tx, this::refresh).trigger();
    }

    public void refresh() {
        RULES.set(DType.this, getRules());
    }

    public void stop(Root root) {
    }

    @Override
    public String toString() {
        return getClass().getSimpleName() + ":" + getIdentity();
    }
}
