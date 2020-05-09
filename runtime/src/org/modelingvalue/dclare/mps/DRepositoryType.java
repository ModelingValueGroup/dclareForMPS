package org.modelingvalue.dclare.mps;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;

public class DRepositoryType extends DObjectType<Set<SLanguage>> {

    public DRepositoryType(Set<SLanguage> identity) {
        super(identity);
    }

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
        return id();
    }

    @Override
    public boolean external() {
        return false;
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected Collection<Observer> observers() {
        return DRepository.OBSERVERS;
    }

    @SuppressWarnings("rawtypes")
    @Override
    public Collection<Setable> setables() {
        return DRepository.SETABLES;
    }
}
