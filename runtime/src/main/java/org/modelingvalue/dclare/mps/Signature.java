//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2024 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.model.SNode;
import org.modelingvalue.collections.util.IdentifiedByArray;

public class Signature extends IdentifiedByArray implements Comparable<Signature> {

    public static Signature of(Signature def, Object[] args) {
        Object[] id = new Object[args.length + 2];
        for (int i = 0; i < args.length; i++) {
            if (args[i] == null) {
                id[i] = def.get(i);
            } else if (args[i] instanceof SNode) {
                id[i] = ((SNode) args[i]).getConcept();
            } else if (args[i] instanceof SStructObject) {
                id[i] = ((SStructObject) args[i]).getSClass();
            } else {
                id[i] = args[i].getClass();
            }
        }
        id[args.length] = def.get(args.length);
        id[args.length + 1] = def.get(args.length + 1);
        return of(id);
    }

    public static Signature of(Object[] types) {
        return new Signature(types);
    }

    private Signature(Object[] id) {
        super(id);
    }

    @Override
    public String toString() {
        return Arrays.toString(identity()).replace('[', '(').replace(']', ')');
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    public boolean isSubOf(Signature sup, boolean flipLast2) {
        if (size() != sup.size()) {
            return false;
        } else {
            int flipIndex = flipLast2 ? size() - 2 : size();
            for (int i = 0; i < size(); i++) {
                Object subType = i >= flipIndex ? sup.get(i) : get(i);
                Object supType = i >= flipIndex ? get(i) : sup.get(i);
                if (subType instanceof SAbstractConcept && supType instanceof SAbstractConcept) {
                    if (!((SAbstractConcept) subType).isSubConceptOf((SAbstractConcept) supType)) {
                        return false;
                    }
                } else if (subType instanceof SStructClass && supType instanceof SStructClass) {
                    if (!((SStructClass) supType).isAssignableFrom((SStructClass) subType)) {
                        return false;
                    }
                } else if (subType instanceof IAspect && supType instanceof IAspect) {
                    if (!IAspect.ALL_DEPENDENCIES.get((IAspect) subType).contains((IAspect) supType)) {
                        return false;
                    }
                } else if (subType instanceof Class && supType instanceof Class) {
                    if (!((Class) supType).isAssignableFrom((Class) subType)) {
                        return false;
                    }
                } else if ((subType instanceof SAbstractConcept || subType instanceof SStructClass || subType instanceof IAspect) && supType instanceof Class) {
                    if (supType != Object.class) {
                        return false;
                    }
                } else {
                    return false;
                }
            }
            return true;
        }
    }

    @Override
    public int compareTo(Signature o) {
        if (equals(o)) {
            return 0;
        } else if (isSubOf(o, false)) {
            return -1;
        } else if (o.isSubOf(this, false)) {
            return 1;
        } else {
            return Integer.compare(hashCode(), o.hashCode());
        }
    }

}
