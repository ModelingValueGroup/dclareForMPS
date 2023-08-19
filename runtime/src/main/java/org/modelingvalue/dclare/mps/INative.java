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

import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.modelingvalue.collections.List;
import org.modelingvalue.dclare.Constant;

public interface INative<O> extends DFeature {

    @SuppressWarnings({"rawtypes", "unchecked"})
    static final Constant<INative, List<IChangeHandler>> ALL_HANDLERS = Constant.of("ALL_HANDLERS", List.of(), n -> {
        return List.of(n.getChangeHandlers());
    });

    void init(O context, DObject parent, INativeRunner nativeRunner);

    void exit(O context, DObject parent, INativeRunner nativeRunner);

    @SuppressWarnings("rawtypes")
    java.util.List<IChangeHandler> getChangeHandlers();

    Object type();

    INativeGroup group();

    @SuppressWarnings({"rawtypes", "unchecked"})
    static int compare(INative a, INative b) {
        if (a.equals(b)) {
            return 0;
        } else {
            Object at = a.type();
            Object bt = b.type();
            if (at instanceof SAbstractConcept && bt instanceof SAbstractConcept) {
                SAbstractConcept ac = (SAbstractConcept) at;
                SAbstractConcept bc = (SAbstractConcept) bt;
                if (ac.isSubConceptOf(bc)) {
                    return -1;
                } else if (bc.isSubConceptOf(ac)) {
                    return 1;
                }
            } else if (at instanceof SStructClass && bt instanceof SStructClass) {
                SStructClass ac = (SStructClass) at;
                SStructClass bc = (SStructClass) bt;
                if (ac.isAssignableFrom(bc)) {
                    return 1;
                } else if (bc.isAssignableFrom(ac)) {
                    return -1;
                }
            } else if (at instanceof Class && bt instanceof Class) {
                Class ac = (Class) at;
                Class bc = (Class) bt;
                if (ac.isAssignableFrom(bc)) {
                    return 1;
                } else if (bc.isAssignableFrom(ac)) {
                    return -1;
                }
            }
            return Integer.compare(a.hashCode(), b.hashCode());
        }
    }

}
