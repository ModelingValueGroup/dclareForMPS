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

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.Constant;

public abstract class DMethod<R> implements DFeature {

    @SuppressWarnings("unchecked")
    public static <R> DMethod<R> of(SLanguage language, String id) {
        return (DMethod<R>) DClareMPS.ALL_METHODS_MAP.get(language).get(id);
    }

    @SuppressWarnings("rawtypes")
    private static final Constant<Pair<String, Signature>, DMethod> D_METHOD        = Constant.of("D_METHOD", p -> {
                                                                                        Set<SLanguage> langs = DRepository.ALL_LANGUAGES_WITH_RULES.get(DClareMPS.instance().getRepository());
                                                                                        for (DMethod method : DClareMPS.METHOD_MAP.get(langs).get(Pair.of(p.a(), p.b().size()))) {
                                                                                            if (p.b().isSubOf(method.signature(), true)) {
                                                                                                return method;
                                                                                            }
                                                                                        }
                                                                                        throw new UnsupportedOperationException(p.a() + p.b());
                                                                                    });

    private final Constant<ActualArguments, R>                      METHOD_CONSTANT = Constant.of(Pair.of(this, "D_METHOD_CONSTANT"), null, args -> call(args.identity()));

    @SuppressWarnings({"unchecked", "rawtypes"})
    public R invoke(Object[] args) {
        DMethod dMethod = DMethod.D_METHOD.get(Pair.of(name(), Signature.of(signature(), args)));
        if (dMethod.isConstant()) {
            return (R) dMethod.METHOD_CONSTANT.get(ActualArguments.of(args));
        } else {
            return (R) dMethod.call(args);
        }
    }

    public abstract String name();

    @SuppressWarnings("rawtypes")
    public abstract Signature signature();

    public abstract R call(Object[] arguments);

    public abstract String id();

}
