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

import java.util.Arrays;

public final class SClassObjectImpl implements SClassObject {

    private final SClass sClass;
    private Object[]     identity;

    public SClassObjectImpl(SClass sClass, Object[] identity) {
        this.sClass = sClass;
        this.identity = identity;
    }

    @Override
    public SClass getSClass() {
        return sClass;
    }

    @Override
    public Object[] getIdentity() {
        return identity;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        } else if (obj == null) {
            return false;
        } else if (!(obj instanceof SClassObjectImpl)) {
            return false;
        }
        SClassObjectImpl other = (SClassObjectImpl) obj;
        if (!sClass.equals(other.sClass)) {
            return false;
        } else if (other.identity == identity) {
            return true;
        } else if (!Arrays.equals(identity, other.identity)) {
            return false;
        } else {
            identity = other.identity;
            return true;
        }
    }

    @Override
    public int hashCode() {
        return sClass.hashCode() + Arrays.hashCode(identity);
    }

    @Override
    public String toString() {
        return sClass + Arrays.toString(identity);
    }

}
