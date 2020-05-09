package org.modelingvalue.dclare.mps;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;

public class DIsssueType extends DObjectType<Boolean> {

    public DIsssueType(Boolean identity) {
        super(identity);
    }

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

    @Override
    public boolean external() {
        return id();
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected Collection<Observer> observers() {
        return DIssue.OBSERVERS;
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected Collection<Setable> setables() {
        return DIssue.SETABLES;
    }
}
