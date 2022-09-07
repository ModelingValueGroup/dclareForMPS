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

import java.util.Arrays;

import org.modelingvalue.dclare.Construction.Reason;
import org.modelingvalue.dclare.Mutable;

public class DCopy extends DDerive {

    protected DCopy(Mutable thiz, DNode copiedRoot, IRuleSet ruleSet, String anonymousType, Object[] ctx) {
        this(thiz, init(ctx, copiedRoot, ruleSet, anonymousType));
    }

    private static Object[] init(Object[] ctx, DNode copiedRoot, IRuleSet ruleSet, String anonymousType) {
        Object[] array = Arrays.copyOf(ctx, ctx.length + 3);
        array[array.length - 3] = copiedRoot;
        array[array.length - 2] = ruleSet;
        array[array.length - 1] = anonymousType;
        return array;
    }

    protected DCopy(DNode copiedChild, DCopy root) {
        this(null, new Object[]{copiedChild, root});
    }

    private DCopy(Mutable thiz, Object[] identity) {
        super(thiz, identity);
    }

    public DCopy root() {
        Object e = get(null, 1);
        return e instanceof DCopy ? (DCopy) e : this;
    }

    public DNode copied() {
        DCopy root = root();
        return root == this ? (DNode) get(null, root.size() - 3) : (DNode) get(null, 0);
    }

    @Override
    public IRuleSet ruleSet() {
        DCopy root = root();
        return (IRuleSet) root.get(null, root.size() - 2);
    }

    @Override
    public String anonymousType() {
        DCopy root = root();
        return (String) root.get(null, root.size() - 1);
    }

    @Override
    protected Reason clone(Mutable thiz, Object[] identity) {
        return new DCopy(thiz, identity);
    }

}
