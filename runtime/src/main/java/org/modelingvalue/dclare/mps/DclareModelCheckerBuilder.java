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

import java.util.ArrayList;
import java.util.List;

import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.util.Consumer;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.jetbrains.mps.openapi.util.SubProgressKind;

import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.checkers.AggregatingChecker;
import jetbrains.mps.checkers.CheckingSession;
import jetbrains.mps.checkers.IAbstractChecker;
import jetbrains.mps.checkers.IChecker;
import jetbrains.mps.checkers.IChecker.AbstractRootChecker;
import jetbrains.mps.checkers.ICheckingPostprocessor;
import jetbrains.mps.checkers.ModelCheckerBuilder;
import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.errors.item.NodeReportItem;

public class DclareModelCheckerBuilder extends ModelCheckerBuilder {

    private final DClareMPS dClareMPS;

    DclareModelCheckerBuilder(DClareMPS dClareMPS, ModelExtractor modelExtractor) {
        super(modelExtractor);
        this.dClareMPS = dClareMPS;
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public IAbstractChecker<ItemsToCheck, IssueKindReportItem> createChecker(List<? extends IChecker<?, ? extends IssueKindReportItem>> checkers) {

        List<IChecker<SModule, ? extends IssueKindReportItem>> moduleCheckers = new ArrayList<IChecker<SModule, ? extends IssueKindReportItem>>();
        List<IChecker<SModel, ? extends IssueKindReportItem>> modelCheckers = new ArrayList<IChecker<SModel, ? extends IssueKindReportItem>>();
        List<IChecker<SNode, ? extends IssueKindReportItem>> rootCheckers = new ArrayList<IChecker<SNode, ? extends IssueKindReportItem>>();

        for (IChecker<?, ? extends IssueKindReportItem> it : checkers) {
            IChecker<?, ? extends IssueKindReportItem> checker = it;
            if (checker instanceof IChecker.AbstractModuleChecker) {
                moduleCheckers.add((IChecker<SModule, ? extends IssueKindReportItem>) checker);
            } else if (checker instanceof IChecker.AbstractModelChecker) {
                modelCheckers.add((IChecker<SModel, ? extends IssueKindReportItem>) checker);
            } else if (checker instanceof IChecker.AbstractRootChecker) {
                AbstractRootChecker rootChecker = (IChecker.AbstractRootChecker) checker;
                rootCheckers.add((IChecker<SNode, ? extends IssueKindReportItem>) new AbstractRootChecker<>() {
                    @Override
                    public IssueKindReportItem.CheckerCategory getCategory() {
                        return rootChecker.getCategory();
                    }

                    @Override
                    public ICheckingPostprocessor<NodeReportItem> getPostprocessor() {
                        ICheckingPostprocessor pp = rootChecker.getPostprocessor();
                        return pp != null ? new ICheckingPostprocessor() {
                            @Override
                            public void postProcess(SRepository repository, ProgressMonitor monitor, CheckingSession checkingSession) {
                                dClareMPS.read(() -> pp.postProcess(repository, monitor, checkingSession));
                            }
                        } : null;
                    }

                    @Override
                    public String toString() {
                        return rootChecker.toString();
                    }

                    @Override
                    public void check(SNode root, SRepository repository, Consumer<? super NodeReportItem> errorCollector, ProgressMonitor monitor) {
                        dClareMPS.read(() -> rootChecker.check(root, repository, errorCollector, monitor));
                    }
                });
            } else if (checker instanceof IChecker.AbstractNodeChecker) {
                AbstractRootChecker rootChecker = ((IChecker.AbstractNodeChecker) checker).asRootChecker();
                rootCheckers.add((IChecker<SNode, ? extends IssueKindReportItem>) new AbstractRootChecker<>() {
                    @Override
                    public IssueKindReportItem.CheckerCategory getCategory() {
                        return rootChecker.getCategory();
                    }

                    @Override
                    public ICheckingPostprocessor<NodeReportItem> getPostprocessor() {
                        ICheckingPostprocessor pp = rootChecker.getPostprocessor();
                        return pp != null ? new ICheckingPostprocessor() {
                            @Override
                            public void postProcess(SRepository repository, ProgressMonitor monitor, CheckingSession checkingSession) {
                                dClareMPS.read(() -> pp.postProcess(repository, monitor, checkingSession));
                            }
                        } : null;
                    }

                    @Override
                    public String toString() {
                        return rootChecker.toString();
                    }

                    @Override
                    public void check(SNode root, SRepository repository, Consumer<? super NodeReportItem> errorCollector, ProgressMonitor monitor) {
                        dClareMPS.read(() -> rootChecker.check(root, repository, errorCollector, monitor));
                    }
                });
            }
        }

        IAbstractChecker<SModule, ? extends IssueKindReportItem> generalModuleChecker = new AggregatingChecker<SModule>(moduleCheckers, new _FunctionTypes._return_P1_E0<String, SModule>() {
            @Override
            public String invoke(SModule m) {
                return dClareMPS.read(() -> m.getModuleName());
            }
        });

        IAbstractChecker<SModel, ? extends IssueKindReportItem> generalModelChecker = skipNullModules(new AggregatingChecker<SModel>(modelCheckers, new _FunctionTypes._return_P1_E0<String, SModel>() {
            @Override
            public String invoke(SModel m) {
                return dClareMPS.read(() -> m.getName().getLongName());
            }
        }));

        IAbstractChecker<SNode, ? extends IssueKindReportItem> generalNodeChecker = new AggregatingChecker<SNode>(rootCheckers, new _FunctionTypes._return_P1_E0<String, SNode>() {
            @Override
            public String invoke(SNode n) {
                return dClareMPS.read(() -> n.getName());
            }
        });

        return new IAbstractChecker<ItemsToCheck, IssueKindReportItem>() {

            @Override
            public void check(ItemsToCheck items, SRepository repository, Consumer<? super IssueKindReportItem> errorCollector, ProgressMonitor monitor) {
                RootItemsToCheck r = (RootItemsToCheck) items;
                int work = r.roots.size() + r.models.size() + r.modules.size();
                monitor.start("Checking", work);

                for (SModule module : items.modules) {
                    dClareMPS.read(() -> generalModuleChecker.check(module, repository, errorCollector, monitor.subTask(1, SubProgressKind.REPLACING)));
                    if (monitor.isCanceled()) {
                        break;
                    }
                }

                for (SModel model : items.models) {
                    dClareMPS.read(() -> generalModelChecker.check(model, repository, errorCollector, monitor.subTask(1, SubProgressKind.REPLACING)));
                    if (monitor.isCanceled()) {
                        break;
                    }
                }

                for (SNode roots : r.roots) {
                    generalNodeChecker.check(roots, repository, errorCollector, monitor.subTask(1, SubProgressKind.REPLACING));
                    if (monitor.isCanceled()) {
                        break;
                    }
                }
            }

        };
    }

    public static class RootItemsToCheck extends ModelCheckerBuilder.ItemsToCheck {
        public List<SNode> roots = new ArrayList<SNode>();
    }

}
