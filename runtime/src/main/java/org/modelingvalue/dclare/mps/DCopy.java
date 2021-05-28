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

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.dclare.Direction;
import org.modelingvalue.dclare.Mutable;

public class DCopy extends DDerive {

    protected DCopy(Mutable thiz, DNode copied, SLanguage anonymousLanguage, String anonymousType) {
        this(new Object[]{copied, anonymousLanguage, anonymousType});
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
    public String getAnonymousType() {
        return (String) root().get(null, 2);
    }

    @Override
    public SLanguage getAnonymousLanguage() {
        return (SLanguage) root().get(null, 1);
    }

    @Override
    public Direction direction() {
        return Direction.of(getAnonymousLanguage());
    }

}