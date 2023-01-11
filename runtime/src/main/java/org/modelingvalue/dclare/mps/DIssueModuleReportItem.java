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
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;

import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.errors.item.ModuleReportItem;
import jetbrains.mps.errors.item.RuleIdFlavouredItem;

public class DIssueModuleReportItem implements ModuleReportItem, RuleIdFlavouredItem {

    private static final HashSet<ReportItemFlavour<?, ?>> FLAVOURS = new HashSet<>(Arrays.asList(FLAVOUR_ISSUE_KIND, FLAVOUR_MODULE, FLAVOUR_RULE_ID));

    private final MessageStatus                           severity;
    private final SModuleReference                        module;
    private final String                                  message;
    private final TypesystemRuleId                        ruleId;

    public DIssueModuleReportItem(MessageStatus severity, SModule module, String message, TypesystemRuleId ruleId) {
        this.severity = severity;
        this.module = module.getModuleReference();
        this.message = severity.getPresentation() + ": " + message;
        this.ruleId = ruleId;
    }

    @Override
    public int hashCode() {
        return Objects.hash(message, module, ruleId, severity);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        DIssueModuleReportItem other = (DIssueModuleReportItem) obj;
        return Objects.equals(message, other.message) //
                && Objects.equals(module, other.module) //
                && Objects.equals(ruleId, other.ruleId) //
                && severity == other.severity;
    }

    @Override
    public Set<ReportItemFlavour<?, ?>> getIdFlavours() {
        return FLAVOURS;
    }

    @Override
    public ItemKind getIssueKind() {
        return DIssue.ITEM_KIND;
    }

    @Override
    public SModuleReference getModule() {
        return module;
    }

    @Override
    public String getMessage() {
        return message;
    }

    @Override
    public MessageStatus getSeverity() {
        return severity;
    }

    @Override
    public Collection<TypesystemRuleId> getRuleId() {
        return Collections.singleton(ruleId);
    }

}
