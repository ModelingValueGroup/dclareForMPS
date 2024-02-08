//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//  (C) Copyright 2018-2024 Modeling Value Group B.V. (http://modelingvalue.org)                                         ~
//                                                                                                                       ~
//  Licensed under the GNU Lesser General Public License v3.0 (the 'License'). You may not use this file except in       ~
//  compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0   ~
//  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on  ~
//  an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the   ~
//  specific language governing permissions and limitations under the License.                                           ~
//                                                                                                                       ~
//  Maintainers:                                                                                                         ~
//      Wim Bast, Tom Brus                                                                                               ~
//                                                                                                                       ~
//  Contributors:                                                                                                        ~
//      Ronald Krijgsheld ✝, Arjan Kok, Carel Bast                                                                       ~
// --------------------------------------------------------------------------------------------------------------------- ~
//  In Memory of Ronald Krijgsheld, 1972 - 2023                                                                          ~
//      Ronald was suddenly and unexpectedly taken from us. He was not only our long-term colleague and team member      ~
//      but also our friend. "He will live on in many of the lines of code you see below."                               ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

import java.util.Arrays;

import org.modelingvalue.dclare.Construction.Reason;
import org.modelingvalue.dclare.Mutable;

public class DQuotation extends DDerive {

    protected DQuotation(Mutable thiz, IRuleSet ruleSet, String anonymousType, Object[] ctx) {
        super(thiz, init(ctx, ruleSet, anonymousType));
    }

    private DQuotation(Mutable thiz, Object[] identity) {
        super(thiz, identity);
    }

    private static Object[] init(Object[] ctx, IRuleSet ruleSet, String anonymousType) {
        Object[] array = Arrays.copyOf(ctx, ctx.length + 2);
        array[array.length - 2] = ruleSet;
        array[array.length - 1] = anonymousType;
        return array;
    }

    @Override
    public IRuleSet ruleSet() {
        return (IRuleSet) get(null, size() - 2);
    }

    @Override
    public String anonymousType() {
        return (String) get(null, size() - 1);
    }

    @Override
    protected Reason clone(Mutable thiz, Object[] identity) {
        return new DQuotation(thiz, identity);
    }

}
