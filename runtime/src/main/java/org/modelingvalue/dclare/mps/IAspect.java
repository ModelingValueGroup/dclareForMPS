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

import java.util.List;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.Direction;

public interface IAspect {

    @SuppressWarnings("unchecked")
    static <C, V> IAspect of(SLanguage language, String id) {
        return DClareMPS.ASPECT_MAP.get(language).get(id);
    }

    Constant<IAspect, Direction>    DIRECTION        = Constant.of("DIRECTION", a -> Direction.of(a, () -> {
                                                         return Collection.of(a.getOpposites()).sequential().map(o -> IAspect.DIRECTION.get(o)).toSet();
                                                     }));

    Constant<IAspect, Set<IAspect>> ALL_DEPENDENCIES = Constant.of("ALL_DEPENDENCIES", a -> {
                                                         return Collection.of(a.getDependencies()).flatMap(d -> IAspect.ALL_DEPENDENCIES.get(d)).toSet().add(a);
                                                     });

    String getId();

    String getName();

    List<IAspect> getDependencies();

    List<IAspect> getOpposites();

    SLanguage getLanguage();

}
