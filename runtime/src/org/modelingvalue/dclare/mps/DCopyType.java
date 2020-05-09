package org.modelingvalue.dclare.mps;

import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Quadruple;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.mps.DRule.DObserver;

public class DCopyType extends DNodeType {

    public DCopyType(Quadruple<Set<SLanguage>, SConcept, String, Boolean> q) {
        super(q);
    }

    @SuppressWarnings("rawtypes")
    @Override
    public Set<DObserver> getObservers() {
        return Set.of();
    }

    @SuppressWarnings("rawtypes")
    @Override
    public Set<DAttribute> getAttributes() {
        return Set.of();
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected Collection<Observer> observers() {
        return Collection.concat(DNode.OBSERVERS, DCopy.CONCEPT_OBSERVERS.get(getConcept()));
    }

}
