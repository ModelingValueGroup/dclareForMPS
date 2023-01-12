//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2023 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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
        Object[] id = new Object[args.length];
        for (int i = 0; i < id.length; i++) {
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
    public boolean isSubOf(Signature sup) {
        if (size() != sup.size()) {
            return false;
        } else {
            for (int i = 0; i < size(); i++) {
                if (get(i) instanceof SAbstractConcept && sup.get(i) instanceof SAbstractConcept) {
                    if (!((SAbstractConcept) get(i)).isSubConceptOf((SAbstractConcept) sup.get(i))) {
                        return false;
                    }
                } else if (get(i) instanceof SStructClass && sup.get(i) instanceof SStructClass) {
                    if (!((SStructClass) sup.get(i)).isAssignableFrom((SStructClass) get(i))) {
                        return false;
                    }
                } else if (get(i) instanceof Class && sup.get(i) instanceof Class) {
                    if (!((Class) sup.get(i)).isAssignableFrom((Class) get(i))) {
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
        } else if (isSubOf(o)) {
            return -1;
        } else if (o.isSubOf(this)) {
            return 1;
        } else {
            return Integer.compare(hashCode(), o.hashCode());
        }
    }

}
