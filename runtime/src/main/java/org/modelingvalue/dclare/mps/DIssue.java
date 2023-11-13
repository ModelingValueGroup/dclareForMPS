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

import java.util.function.Consumer;
import java.util.function.Supplier;

import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.mps.DRule.DObserver;
import org.modelingvalue.dclare.mps.DRule.DObserverTransaction;

import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.errors.item.IssueKindReportItem.CheckerCategory;
import jetbrains.mps.errors.item.IssueKindReportItem.ItemKind;
import jetbrains.mps.errors.item.IssueKindReportItem.KindLevel;
import jetbrains.mps.errors.item.RuleIdFlavouredItem.TypesystemRuleId;
import jetbrains.mps.errors.messageTargets.MessageTarget;

public class DIssue extends DIdentifiedObject {

    protected static final CheckerCategory                   CHECKER_CATEGORY = new IssueKindReportItem.CheckerCategory(KindLevel.MANUAL, "Dclare");

    protected static final ItemKind                          ITEM_KIND        = CHECKER_CATEGORY.deriveItemKind();

    private static final Constant<MessageStatus, DIssueType> ISSUE_TYPE       = Constant.of("ISSUE_TYPE", DIssueType::new);

    private static final Setable<DIssue, String>             MESSAGE          = Setable.of("$MESSAGE", null);

    private static final Observer<DIssue>                    MESSAGE_RULE     = DObject.observer(MESSAGE, o -> o.message.get());

    public static final Setable<DIssue, DObject>             DOBJECT          = Setable.of("$DOBJECT", null, () -> DObject.DCLARE_ISSUES);

    private static final Observer<DIssue>                    DOBJECT_RULE     = DObject.observer(DOBJECT, o -> o.dObject.get());

    protected static final Setable<DIssue, MessageStatus>    SEVERITY         = Setable.of("$SEVERITY", null);

    private static final Observer<DIssue>                    SEVERITY_RULE    = DObject.observer(SEVERITY, o -> o.severity.get());

    protected static final Setable<DIssue, MessageTarget>    FEATURE          = Setable.of("$FEATURE", null);

    private static final Observer<DIssue>                    FEATURE_RULE     = DObject.observer(FEATURE, o -> o.feature.get());

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                     OBSERVERS        = DObject.OBSERVERS.addAll(Set.of(MESSAGE_RULE, DOBJECT_RULE, SEVERITY_RULE, FEATURE_RULE));

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                      SETABLES         = DObject.SETABLES.addAll(Set.of(MESSAGE, DOBJECT, SEVERITY, FEATURE));

    public static DIssue of(Supplier<DObject> object, Supplier<MessageStatus> severity, Supplier<MessageTarget> feature, Supplier<String> message, Object[] identity) {
        LeafTransaction tx = LeafTransaction.getCurrent();
        if (!(tx instanceof DObserverTransaction)) {
            // we can not store this issue, so we just return null
            return null;
        }
        DObserverTransaction obTx = (DObserverTransaction) tx;
        DIssue issue = new DIssue(((DObserver<?>) obTx.cls()).rule(), object, severity, feature, message, identity);
        obTx.issues.change(s -> s.add(issue));
        return issue;
    }

    private final Supplier<String>        message;
    private final Supplier<DObject>       dObject;
    private final DRule<?>                rule;
    private final Supplier<MessageStatus> severity;
    private final Supplier<MessageTarget> feature;

    private DIssue(DRule<?> rule, Supplier<DObject> dObject, Supplier<MessageStatus> severity, Supplier<MessageTarget> feature, Supplier<String> message, Object[] identity) {
        super(identity);
        this.rule = rule;
        this.message = message;
        this.severity = severity;
        this.feature = () -> {
            try {
                return feature.get();
            } catch (NullPointerException npe) {
                return null;
            }
        };
        this.dObject = dObject;
    }

    public MessageTarget getFeature() {
        return FEATURE.get(this);
    }

    public MessageStatus getSeverity() {
        return SEVERITY.get(this);
    }

    public DRule<?> getRule() {
        return rule;
    }

    public DObject getObject() {
        return DOBJECT.get(this);
    }

    public String getMessage() {
        return MESSAGE.get(this);
    }

    public void getItem(Consumer<IssueKindReportItem> consumer) {
        DObject o = getObject();
        if (o instanceof DModule) {
            SModule original = ((DModule) o).original();
            if (original != null) {
                consumer.accept(new DIssueModuleReportItem(getSeverity(), original, getMessage(), ruleId()));
            }
        } else if (o instanceof DModel) {
            SModel original = ((DModel) o).tryOriginal();
            if (original != null) {
                consumer.accept(new DIssueModelReportItem(getSeverity(), original, getMessage(), ruleId()));
            }
        } else if (o instanceof DNode) {
            SNode original = ((DNode) o).tryOriginal();
            if (original != null) {
                consumer.accept(new DIssueNodeReportItem(getSeverity(), original, getFeature(), getMessage(), ruleId()));
            }
        }
    }

    private TypesystemRuleId ruleId() {
        return new TypesystemRuleId(rule.getSource());
    }

    @Override
    protected DIssueType getType() {
        MessageStatus severity = getSeverity();
        return ISSUE_TYPE.get(severity != null ? severity : MessageStatus.OK);
    }

    @Override
    protected DIssueType getBootstrapType() {
        return ISSUE_TYPE.get(MessageStatus.OK);
    }

    @Override
    protected void read(DClareMPS dClareMPS) {
    }

    @Override
    protected boolean isDclareOnly() {
        return true;
    }

    @Override
    public boolean isExternal() {
        return false;
    }

    @Override
    public String toString() {
        return "DIssue" + super.toString();
    }

    @Override
    protected boolean isRead() {
        return false;
    }

    @Override
    protected Pair<DObject, DObserved<DObject, ?>> readParent() {
        throw new UnsupportedOperationException();
    }

}
