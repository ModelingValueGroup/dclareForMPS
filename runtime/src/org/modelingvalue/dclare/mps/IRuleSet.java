//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2019 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

public interface IRuleSet {

    List<DAttribute<SNode, ?>> getNodeAttributes(SAbstractConcept concept, String anonymousType);

    List<DAttribute<SModel, ?>> getModelAttributes(String anonymousType);

    List<DAttribute<DModule, ?>> getModuleAttributes();

    List<DAttribute<DRepository, ?>> getRepositoryAttributes();

    List<DAttribute<SStructObject, ?>> getClassAttributes(SStructClass cls);

    List<DRule<SNode>> getNodeRules(SAbstractConcept concept, String anonymousType);

    List<DRule<SModel>> getModelRules(String anonymousType);

    List<DRule<DModule>> getModuleRules();

    List<DRule<DRepository>> getRepositoryRules();

    List<DRule<SStructObject>> getClassRules(SStructClass cls);

    List<DAttribute<?, ?>> getAllAttributes();

    List<SStructClass> getAllStructClasses();

}
