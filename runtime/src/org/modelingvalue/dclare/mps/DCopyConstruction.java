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

public class DCopyConstruction extends DDeriveConstruction {

    protected DCopyConstruction(DNode copied, String anonymousType) {
        super(new Object[]{copied, anonymousType});
    }

    protected DCopyConstruction(DNode copied, DCopyConstruction root) {
        super(new Object[]{copied, root});
    }

    private DCopyConstruction(Object[] identity) {
        super(identity);
    }

    public DCopyConstruction root() {
        return array()[1] instanceof DCopyConstruction ? (DCopyConstruction) array()[1] : this;
    }

    public DNode copied() {
        return (DNode) array()[0];
    }

    @Override
    public String getAnonymousType() {
        return (String) root().array()[1];
    }

}
