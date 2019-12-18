//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018 Modeling Value Group B.V. (http://modelingvalue.org)                                             ~
//                                                                                                                     ~
// Licensed under the GNU Lesser General Public License v3.0 (the "License"). You may not use this file except in      ~
// compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0  ~
// Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on ~
// an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the  ~
// specific language governing permissions and limitations under the License.                                          ~
//                                                                                                                     ~
// Contributors:                                                                                                       ~
//     Wim Bast, Carel Bast, Tom Brus, Arjan Kok, Ronald Krijgsheld                                                    ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

import java.util.function.Supplier;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.module.SRepository;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.LeafTransaction;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.mps.DRule.DObserver;

import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.errors.item.IssueKindReportItem.CheckerCategory;
import jetbrains.mps.errors.item.IssueKindReportItem.ItemKind;
import jetbrains.mps.errors.item.IssueKindReportItem.KindLevel;
import jetbrains.mps.errors.messageTargets.MessageTarget;

public class DIssue extends DIdentifiedObject {

    public static final CheckerCategory                  CHECKER_CATEGORY = new IssueKindReportItem.CheckerCategory(KindLevel.MANUAL, "Dclare");

    public static final ItemKind                         ITEM_KIND        = CHECKER_CATEGORY.deriveItemKind();

    private static final Constant<Set<SLanguage>, DType> ISSUE_TYPE       = Constant.of("ISSUE_TYPE", p -> new DType(p) {
                                                                              @SuppressWarnings("rawtypes")
                                                                              @Override
                                                                              public Set<DRule> getRules(Set<IRuleSet> ruleSets) {
                                                                                  return Set.of();
                                                                              }

                                                                              @SuppressWarnings("rawtypes")
                                                                              @Override
                                                                              public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
                                                                                  return Set.of();
                                                                              }

                                                                              @Override
                                                                              public Set<SLanguage> getLanguages() {
                                                                                  return Set.of();
                                                                              }

                                                                              @SuppressWarnings("rawtypes")
                                                                              @Override
                                                                              protected Collection<Observer> observers() {
                                                                                  return OBSERVERS;
                                                                              }

                                                                              @SuppressWarnings("rawtypes")
                                                                              @Override
                                                                              protected Collection<Setable> setables() {
                                                                                  return SETABLES;
                                                                              }
                                                                          });

    private static final Setable<DIssue, String>         MESSAGE          = Setable.of("$MESSAGE", null);

    private static final Observer<DIssue>                MESSAGE_RULE     = DObject.<DIssue> observer(MESSAGE, o -> MESSAGE.set(o, o.message.get()));

    public static final Setable<DIssue, DObject>         DOBJECT          = Setable.of("$DOBJECT", null, () -> DObject.DCLARE_ISSUES);

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                 OBSERVERS        = DObject.OBSERVERS.add(MESSAGE_RULE);

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                  SETABLES         = DObject.SETABLES.addAll(Set.of(MESSAGE, DOBJECT));

    public static DIssue of(DObject object, MessageStatus severity, MessageTarget feature, Supplier<String> message, Object[] identity) {
        return new DIssue(((DObserver<?>) LeafTransaction.getCurrent().cls()).rule(), object, severity, feature, message, identity);
    }

    private final Supplier<String> message;
    private final DRule<?>         rule;
    private final MessageStatus    severity;
    private final MessageTarget    feature;

    private DIssue(DRule<?> rule, DObject object, MessageStatus severity, MessageTarget feature, Supplier<String> message, Object[] identity) {
        super(identity);
        this.rule = rule;
        this.message = message;
        this.severity = severity;
        this.feature = feature;
        DOBJECT.set(this, object);
        DRule.DISUES.set(Set::add, this);
    }

    public MessageTarget getFeature() {
        return feature;
    }

    public MessageStatus getSeverity() {
        return severity;
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

    public IssueKindReportItem getItem() {
        DObject o = getObject();
        if (o instanceof DModule) {
            return new DIssueModuleReportItem(getSeverity(), ((DModule) o).original(), getMessage());
        } else if (o instanceof DModel) {
            return new DIssueModelReportItem(getSeverity(), ((DModel) o).original(), getMessage());
        } else {
            return new DIssueNodeReportItem(getSeverity(), ((DNode) o).sNode(true), getFeature(), getMessage());
        }
    }

    @Override
    public boolean isReadOnly() {
        return false;
    }

    @Override
    protected SRepository getOriginalRepository() {
        return dClareMPS().getRepository().original();
    }

    @Override
    protected DType getType() {
        return ISSUE_TYPE.get(TYPE.get(dObjectParent()).getLanguages());
    }

    @Override
    protected void read(DClareMPS dClareMPS) {
    }

    @Override
    public boolean isDclareOnly() {
        return true;
    }
}
