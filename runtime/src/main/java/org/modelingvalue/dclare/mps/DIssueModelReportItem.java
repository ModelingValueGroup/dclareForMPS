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

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

import org.jetbrains.mps.openapi.model.SModel;

import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.errors.item.ModelReportItemBase;
import jetbrains.mps.errors.item.RuleIdFlavouredItem;

public class DIssueModelReportItem extends ModelReportItemBase implements RuleIdFlavouredItem {

    private static final HashSet<ReportItemFlavour<?, ?>> FLAVOURS = new HashSet<>(Arrays.asList(FLAVOUR_ISSUE_KIND, FLAVOUR_MODEL, FLAVOUR_RULE_ID));

    private final TypesystemRuleId                        ruleId;

    public DIssueModelReportItem(MessageStatus severity, SModel model, String message, TypesystemRuleId ruleId) {
        super(severity, model.getReference(), severity.getPresentation() + ": " + message);
        this.ruleId = ruleId;
    }

    @Override
    public int hashCode() {
        return Objects.hash(ruleId, getSeverity(), getModel(), getMessage());
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        DIssueModelReportItem other = (DIssueModelReportItem) obj;
        return Objects.equals(ruleId, other.ruleId) //
                && Objects.equals(getSeverity(), other.getSeverity()) //
                && Objects.equals(getModel(), other.getModel())//
                && Objects.equals(getMessage(), other.getMessage());
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
    public Collection<TypesystemRuleId> getRuleId() {
        return Collections.singleton(ruleId);
    }

}
