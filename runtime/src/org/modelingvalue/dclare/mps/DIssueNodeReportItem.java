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

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
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
