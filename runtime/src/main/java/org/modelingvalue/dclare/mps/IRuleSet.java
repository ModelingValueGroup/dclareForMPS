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

import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.modelingvalue.collections.Set;

public interface IRuleSet {

    List<DAttribute<SNode, ?>> getNodeAttributes(SAbstractConcept concept, Set<String> anonymousTypes);

    List<DAttribute<SModel, ?>> getModelAttributes(Set<String> anonymousTypes);

    List<DAttribute<DModule, ?>> getModuleAttributes();

    List<DAttribute<DRepository, ?>> getRepositoryAttributes();

    List<DAttribute<SStructObject, ?>> getStructAttributes(SStructClass cls);

    List<DRule<SNode>> getNodeRules(SAbstractConcept concept, Set<String> anonymousTypes);

    List<DRule<SModel>> getModelRules(Set<String> anonymousTypes);

    List<DRule<DModule>> getModuleRules();

    List<DRule<DRepository>> getRepositoryRules();

    List<DRule<SStructObject>> getStructRules(SStructClass cls);

    List<INative<SNode>> getNodeNatives(SAbstractConcept concept, Set<String> anonymousTypes);

    List<INative<SModel>> getModelNatives(Set<String> anonymousTypes);

    List<INative<DModule>> getModuleNatives();

    List<INative<DRepository>> getRepositoryNatives();

    List<INative<SStructObject>> getStructNatives(SStructClass cls);

    List<DMethod<?>> getAllMethods();

    List<DAttribute<?, ?>> getAllAttributes();

    List<DRule<?>> getAllRules();

    List<INative<?>> getAllNatives();

    IAspect getAspect();

    String getAnonymousType();

    SLanguage getLanguage();

}
