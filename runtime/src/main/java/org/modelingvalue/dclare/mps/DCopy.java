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

import org.modelingvalue.dclare.Construction.Reason;
import org.modelingvalue.dclare.Mutable;

public class DCopy extends DDerive {

    protected DCopy(Mutable thiz, DNode copied, IRuleSet ruleSet, String anonymousType) {
        this(new Object[]{copied, ruleSet, anonymousType});
    }

    protected DCopy(Mutable thiz, DNode copied, DCopy root) {
        this(new Object[]{copied, root});
    }

    private DCopy(Object[] identity) {
        super(null, identity);
    }

    public DCopy root() {
        Object e = get(null, 1);
        return e instanceof DCopy ? (DCopy) e : this;
    }

    public DNode copied() {
        return (DNode) get(null, 0);
    }

    @Override
    public String anonymousType() {
        return (String) root().get(null, 2);
    }

    @Override
    public IRuleSet ruleSet() {
        return (IRuleSet) root().get(null, 1);
    }

    @Override
    protected Reason clone(Mutable thiz, Object[] identity) {
        return new DCopy(identity);
    }

}
