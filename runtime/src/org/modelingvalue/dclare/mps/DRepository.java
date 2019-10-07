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

import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.RepositoryAccess;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.module.SRepositoryListener;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Entry;
import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.QualifiedSet;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.transactions.ConsistencyError;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.EmptyMandatoryException;
import org.modelingvalue.transactions.LeafTransaction;
import org.modelingvalue.transactions.Mutable;
import org.modelingvalue.transactions.NonDeterministicException;
import org.modelingvalue.transactions.Observed;
import org.modelingvalue.transactions.Observer;
import org.modelingvalue.transactions.OutOfScopeException;
import org.modelingvalue.transactions.ReferencedOrphanException;
import org.modelingvalue.transactions.Setable;
import org.modelingvalue.transactions.TooManyChangesException;
import org.modelingvalue.transactions.TooManyObservedException;
import org.modelingvalue.transactions.TooManyObserversException;

@SuppressWarnings("deprecation")
public class DRepository extends DObject<SRepository> implements SRepository {

    private static final Set<DMessageType>                                                                                    MESSAGE_TYPES    = Collection.of(DMessageType.values()).toSet();

    @SuppressWarnings("rawtypes")
    private static final QualifiedSet<Triple<DObject, DFeature, String>, DMessage>                                            MESSAGE_QSET     = QualifiedSet.of(m -> Triple.of(m.context(), m.feature(), m.id()));

    @SuppressWarnings("rawtypes")
    private static final Map<DMessageType, QualifiedSet<Triple<DObject, DFeature, String>, DMessage>>                         MESSAGE_QSET_MAP = MESSAGE_TYPES.sequential().toMap(t -> Entry.of(t, MESSAGE_QSET));

    @SuppressWarnings("rawtypes")
    protected static final Setable<DRepository, Map<DMessageType, QualifiedSet<Triple<DObject, DFeature, String>, DMessage>>> MESSAGES         = Setable.of("MESSAGES", MESSAGE_QSET_MAP);

    private static final Constant<SRepository, DRepository>                                                                   DREPOSITORY      = Constant.of("DREPOSITORY", r -> new DRepository(r));

    private static final Constant<Set<SLanguage>, DType>                                                                      REPOSITORY_TYPE  = Constant.of("REPOSITORY_TYPE", ls -> new DType(ls) {
                                                                                                                                                   @SuppressWarnings({"rawtypes", "unchecked"})
                                                                                                                                                   @Override
                                                                                                                                                   public Set<DRule> getRules(Set<IRuleSet> ruleSets) {
                                                                                                                                                       return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getRepositoryRules())).toSet();
                                                                                                                                                   }

                                                                                                                                                   @SuppressWarnings({"rawtypes", "unchecked"})
                                                                                                                                                   @Override
                                                                                                                                                   public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
                                                                                                                                                       return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getRepositoryAttributes())).toSet();
                                                                                                                                                   }

                                                                                                                                                   @Override
                                                                                                                                                   public Set<SLanguage> getLanguages() {
                                                                                                                                                       return ls;
                                                                                                                                                   }

                                                                                                                                                   @Override
                                                                                                                                                   public Collection<? extends Setable<? extends Mutable, ?>> dContainers() {
                                                                                                                                                       return Collection.concat(Set.of(MODULES), super.dContainers());
                                                                                                                                                   }

                                                                                                                                               });

    public static final DObserved<DRepository, Set<DModule>>                                                                  MODULES          = DObserved.of("MODULES", Set.of(), false, true, null, false, false, (o, pre, post, first) -> {
                                                                                                                                               }, null);

    public static final DObserved<DRepository, Set<?>>                                                                        EXCEPTIONS       = DObserved.of("EXCEPTIONS", Set.of(), false, false, null, false, false, (o, pre, post, first) -> {
                                                                                                                                               }, null);

    public static DRepository of(SRepository original) {
        return original instanceof DRepository ? (DRepository) original : DREPOSITORY.get(original);
    }

    protected DRepository(SRepository original) {
        super(original);
    }

    @Override
    public boolean isReadOnly() {
        return false;
    }

    @Override
    protected SRepository getOriginalRepository() {
        return original();
    }

    @Override
    protected DType getType() {
        return REPOSITORY_TYPE.get(DClareMPS.ALL_LANGUAGES.get(dClareMPS()).filter(l -> !DClareMPS.RULE_SETS.get(l).isEmpty()).toSet());
    }

    @Override
    protected void read(DClareMPS dClareMPS) {
        MODULES.set(this, dClareMPS.read(() -> modules()).map(m -> DModule.of(m)).toSet());
    }

    protected static Set<SModule> modules() {
        return Collection.of(dClareMPS().project.getProjectModules()).toSet();
    }

    @Override
    protected void init(DClareMPS dClareMPS) {
        super.init(dClareMPS);
        addRepositoryListener(new Listener(this, dClareMPS));
    }

    @Override
    protected void exit(DClareMPS dClareMPS) {
        super.exit(dClareMPS);
        removeRepositoryListener(new Listener(this, dClareMPS));
    }

    @Override
    protected void stop(DClareMPS dClareMPS) {
        super.stop(dClareMPS);
        for (DModule child : modules().map(m -> DModule.of(m))) {
            child.stop(dClareMPS);
        }
    }

    @Override
    public SModule getModule(SModuleId moduleId) {
        return MODULES.get(this).filter(m -> m.getModuleId().equals(moduleId)).findAny().orElse(null);
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public Iterable<SModule> getModules() {
        return (Set) MODULES.get(this);
    }

    @Override
    public ModelAccess getModelAccess() {
        return original().getModelAccess();
    }

    @Override
    public RepositoryAccess getRepositoryAccess() {
        return original().getRepositoryAccess();
    }

    @Override
    public void saveAll() {
        original().saveAll();
    }

    @Override
    public void addRepositoryListener(SRepositoryListener listener) {
        original().addRepositoryListener(listener);
    }

    @Override
    public void removeRepositoryListener(SRepositoryListener listener) {
        original().removeRepositoryListener(listener);
    }

    @Override
    public DRepository getParent() {
        return null;
    }

    @SuppressWarnings("rawtypes")
    protected void addMessage(ConsistencyError t) {
        DObject object = t.getObject() instanceof DObject ? (DObject) t.getObject() : this;
        DFeature feature = t.getFeature() instanceof DFeature ? (DFeature) t.getFeature() : EXCEPTIONS;
        if (t instanceof OutOfScopeException) {
            addOutOfScopeExceptionMessage(object, feature, (OutOfScopeException) t);
        } else if (t instanceof NonDeterministicException) {
            addNonDeterministicExceptionMessage(object, feature, (NonDeterministicException) t);
        } else if (t instanceof EmptyMandatoryException) {
            addEmptyMandatoryExceptionMessage(object, feature, (EmptyMandatoryException) t);
        } else if (t instanceof ReferencedOrphanException) {
            addReferencedOrphanExceptionMessage(object, feature, (ReferencedOrphanException) t);
        } else if (t instanceof TooManyChangesException) {
            addTooManyChangesExceptionMessage(object, feature, (TooManyChangesException) t);
        } else if (t instanceof TooManyObservedException) {
            addTooManyObservedExceptionMessage(object, feature, (TooManyObservedException) t);
        } else if (t instanceof TooManyObserversException) {
            addTooManyObserversExceptionMessage(object, feature, (TooManyObserversException) t);
        } else {
            throw new Error(t.getClass().getSimpleName() + " not expected");
        }
    }

    @SuppressWarnings("rawtypes")
    private void addTooManyChangesExceptionMessage(DObject context, DFeature feature, TooManyChangesException tmce) {
        String id = "CONFLICTING_RULES";
        DMessage message = new DMessage(context, feature, DMessageType.error, id, "Conflicting rules, running " + feature + " changes=" + tmce.getNrOfChanges());
        tmce.getLast().trace(message, (m, r) -> {
            m.addSubMessage(new DMessage((DObject) r.mutable(), ((DRule.DObserver) r.observer()).rule(), DMessageType.error, id, //
                    "run: " + r.mutable() + "." + ((DRule.DObserver) r.observer()).rule() + " nr: " + r.nrOfChanges()));
        }, (m, r, s) -> {
            m.addSubMessage(new DMessage((DObject) s.mutable(), (DObserved) s.observed(), DMessageType.error, id, //
                    "read: " + s.mutable() + "." + s.observed() + "=" + r.read().get(s)));
        }, (m, w, s) -> {
            m.subMessages().last().addSubMessage(new DMessage((DObject) s.mutable(), (DObserved) s.observed(), DMessageType.error, id, //
                    "write: " + s.mutable() + "." + s.observed() + "=" + w.written().get(s)));
        }, m -> m.subMessages().last(), tmce.getState().universeTransaction().maxNrOfChanges());
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private void addTooManyObservedExceptionMessage(DObject context, DFeature feature, TooManyObservedException tmse) {
        String id = "TOO_MANY_OBSERVED";
        DMessage message = new DMessage(context, feature, DMessageType.warning, id, tmse.getSimpleMessage());
        int number = 0;
        for (Entry<Observed, Set<Mutable>> e : tmse.getObserved()) {
            if (e.getKey() instanceof DObserved) {
                number++;
                message.addSubMessage(new DMessage(this, (DObserved) e.getKey(), DMessageType.warning, number + ")", e.getValue().toString()));
            }
        }
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private void addTooManyObserversExceptionMessage(DObject context, DFeature feature, TooManyObserversException tmse) {
        String id = "TOO_MANY_OBSERVERS";
        DMessage message = new DMessage(context, feature, DMessageType.warning, id, tmse.getSimpleMessage());
        int number = 0;
        for (Entry<Observer, Set<Mutable>> e : tmse.getObservers()) {
            if (e.getKey() instanceof DRule.DObserver) {
                number++;
                message.addSubMessage(new DMessage(this, ((DRule.DObserver) e.getKey()).rule(), DMessageType.warning, number + ")", e.getValue().toString()));
            }
        }
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private void addReferencedOrphanExceptionMessage(DObject context, DFeature feature, ReferencedOrphanException roe) {
        String id = "REFERENCED_ORPHAN";
        DMessage message = new DMessage(context, feature, DMessageType.warning, id, roe.getMessage());
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private void addEmptyMandatoryExceptionMessage(DObject context, DFeature feature, EmptyMandatoryException eme) {
        String id = "EMPTY_MANDATORY";
        DMessage message = new DMessage(context, feature, DMessageType.warning, id, eme.getMessage());
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private void addNonDeterministicExceptionMessage(DObject context, DFeature feature, NonDeterministicException nde) {
        String id = "NON_DETERMINISTIC";
        DMessage message = new DMessage(context, feature, DMessageType.warning, id, nde.getMessage());
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    private void addOutOfScopeExceptionMessage(DObject context, DFeature feature, OutOfScopeException oose) {
        String id = "OUT_OF_SCOPE";
        DMessage message = new DMessage(context, feature, DMessageType.warning, id, oose.getMessage());
        addMessage(message);
    }

    @SuppressWarnings("rawtypes")
    protected void addThrowableMessage(DObject context, DFeature feature, Throwable t) {
        String id = "EXCEPTION";
        DMessage message = new DMessage(context, feature, DMessageType.error, id, t);
        for (StackTraceElement ste : t.getStackTrace()) {
            message.addSubMessage(new DMessage(this, feature, DMessageType.error, id, ste));
        }
        addMessage(message);
    }

    private void addMessage(DMessage message) {
        LeafTransaction.getCurrent().runNonObserving(() -> MESSAGES.set(this, (m, a) -> m.put(message.type(), m.get(message.type()).add(a)), message));
    }

    @SuppressWarnings("rawtypes")
    public QualifiedSet<Triple<DObject, DFeature, String>, DMessage> getMessages(DMessageType type) {
        return MESSAGES.get(this).get(type);
    }

    private class Listener extends Pair<DRepository, DClareMPS> implements SRepositoryListener {
        private static final long serialVersionUID = -8833673849931733478L;

        private Listener(DRepository dRepository, DClareMPS dClareMPS) {
            super(dRepository, dClareMPS);
        }

        @Override
        public void moduleAdded(SModule sModule) {
            b().handleMPSChange(() -> {
                if (b().project.getProjectModules().contains(sModule)) {
                    DModule dModule = DModule.of(sModule);
                    MODULES.set(DRepository.this, Set::add, dModule);
                }
            });
        }

        @Override
        public void beforeModuleRemoved(SModule sModule) {
            b().handleMPSChange(() -> {
                if (b().project.getProjectModules().contains(sModule)) {
                    DModule dModule = DModule.of(sModule);
                    MODULES.set(DRepository.this, Set::remove, dModule);
                }
            });
        }

        @Override
        public void moduleRemoved(SModuleReference module) {
        }

        @Override
        public void commandStarted(SRepository repository) {
        }

        @Override
        public void commandFinished(SRepository repository) {
        }

        @Override
        public void updateStarted(SRepository repository) {
        }

        @Override
        public void updateFinished(SRepository repository) {
        }

        @Override
        public void repositoryCommandStarted(SRepository repository) {
        }

        @Override
        public void repositoryCommandFinished(SRepository repository) {
        }
    }

}
