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

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.Constant;

public interface DMethod<R> extends DFeature {

    @SuppressWarnings("unchecked")
    static <R> DMethod<R> of(SLanguage language, String id) {
        return (DMethod<R>) DClareMPS.ALL_METHODS_MAP.get(language).get(id);
    }

    @SuppressWarnings("rawtypes")
    Constant<Pair<String, Signature>, DMethod> D_METHOD = Constant.of("D_METHOD", p -> {
        Set<SLanguage> langs = DRepository.ALL_LANGUAGES_WITH_RULES.get(DClareMPS.instance().getRepository());
        for (DMethod method : DClareMPS.METHOD_MAP.get(langs).get(Pair.of(p.a(), p.b().size()))) {
            if (p.b().isSubOf(method.signature())) {
                return method;
            }
        }
        throw new UnsupportedOperationException(p.a() + p.b());
    });

    @SuppressWarnings("unchecked")
    default R invoke(Object[] args) {
        return (R) DMethod.D_METHOD.get(Pair.of(name(), Signature.of(signature(), args))).call(args);
    }

    String name();

    @SuppressWarnings("rawtypes")
    Signature signature();

    R call(Object[] arguments);

    String id();

}
