//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//  (C) Copyright 2018-2024 Modeling Value Group B.V. (http://modelingvalue.org)                                         ~
//                                                                                                                       ~
//  Licensed under the GNU Lesser General Public License v3.0 (the 'License'). You may not use this file except in       ~
//  compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0   ~
//  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on  ~
//  an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the   ~
//  specific language governing permissions and limitations under the License.                                           ~
//                                                                                                                       ~
//  Maintainers:                                                                                                         ~
//      Wim Bast, Tom Brus                                                                                               ~
//                                                                                                                       ~
//  Contributors:                                                                                                        ~
//      Ronald Krijgsheld ✝, Arjan Kok, Carel Bast                                                                       ~
// --------------------------------------------------------------------------------------------------------------------- ~
//  In Memory of Ronald Krijgsheld, 1972 - 2023                                                                          ~
//      Ronald was suddenly and unexpectedly taken from us. He was not only our long-term colleague and team member      ~
//      but also our friend. "He will live on in many of the lines of code you see below."                               ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

import org.jetbrains.mps.openapi.model.SNode;

import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.errors.item.NodeReportItemBase;
import jetbrains.mps.errors.item.RuleIdFlavouredItem;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;

public class DIssueNodeReportItem extends NodeReportItemBase implements RuleIdFlavouredItem {

    private static final NodeMessageTarget                NODE_MESSAGE_TARGET = new NodeMessageTarget();

    private static final HashSet<ReportItemFlavour<?, ?>> FLAVOURS            = new HashSet<>(Arrays.asList(FLAVOUR_ISSUE_KIND, FLAVOUR_NODE, FLAVOUR_RULE_ID));

    private final MessageTarget                           messageTarget;
    private final TypesystemRuleId                        ruleId;

    public DIssueNodeReportItem(MessageStatus severity, SNode node, MessageTarget messageTarget, String message, TypesystemRuleId ruleId) {
        super(severity, node.getReference(), message);
        this.messageTarget = messageTarget != null ? messageTarget : NODE_MESSAGE_TARGET;
        this.ruleId = ruleId;
    }

    @Override
    public int hashCode() {
        return Objects.hash(messageTarget, ruleId, getSeverity(), getNode(), getMessage());
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        DIssueNodeReportItem other = (DIssueNodeReportItem) obj;
        return Objects.equals(messageTarget, other.messageTarget)//
                && Objects.equals(ruleId, other.ruleId) //
                && Objects.equals(getSeverity(), other.getSeverity()) //
                && Objects.equals(getNode(), other.getNode())//
                && Objects.equals(getMessage(), other.getMessage());
    }

    @Override
    public Set<ReportItemFlavour<?, ?>> getIdFlavours() {
        return FLAVOURS;
    }

    @Override
    public MessageTarget getMessageTarget() {
        return messageTarget;
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
