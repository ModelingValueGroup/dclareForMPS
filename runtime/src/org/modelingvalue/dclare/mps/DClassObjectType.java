package org.modelingvalue.dclare.mps;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Triple;

public class DClassObjectType extends DObjectType<Triple<Set<SLanguage>, SClass, Boolean>> {

    public DClassObjectType(Triple<Set<SLanguage>, SClass, Boolean> identity) {
        super(identity);
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public Set<DRule> getRules(Set<IRuleSet> ruleSets) {
        return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getClassRules(id().b()))).toSet();
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
        return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getClassAttributes(id().b()))).toSet();
    }

    @Override
    public Set<SLanguage> getLanguages() {
        return id().a();
    }

    @Override
    public boolean external() {
        return id().c();
    }
}
