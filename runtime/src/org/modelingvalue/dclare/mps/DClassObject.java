package org.modelingvalue.dclare.mps;

import java.util.function.Consumer;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.transactions.ConstantSetable;
import org.modelingvalue.transactions.Getable;
import org.modelingvalue.transactions.Leaf;

public class DClassObject extends DObject<SClassObject> implements SClassObject {

    private static final Getable<Pair<DClareMPS, SClassObject>, DClassObject> DCLASS_OBJECT = ConstantSetable.of("DCLASS_OBJECT", p -> new DClassObject(p.a(), p.b()));

    public static DClassObject of(DClareMPS dClareMPS, SClassObject original) {
        return original instanceof DClassObject && ((DClassObject) original).dClareMPS == dClareMPS ? (DClassObject) original : DCLASS_OBJECT.get(Pair.of(dClareMPS, original));
    }

    public static DClassObject wrap(SClassObject original) {
        return of((DClareMPS) Leaf.getCurrent().root().getId(), original);
    }

    protected DClassObject(DClareMPS dClareMPS, SClassObject original) {
        super(dClareMPS, original);
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected ContainingCollection<? extends DObject> getChildren() {
        return Set.of();
    }

    @SuppressWarnings("unchecked")
    @Override
    protected DType getType() {
        Set<SLanguage> languages = PARENT.get(this).getType().getLanguages();
        SClass cls = original().getDClass();
        return new DType() {

            @SuppressWarnings("rawtypes")
            @Override
            public Set<Consumer> getRules(Set<IRuleSet> ruleSets) {
                return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getClassRules(cls))).toSet();
            }

            @SuppressWarnings("rawtypes")
            @Override
            public Set<DAttribute> getAttributes(Set<IRuleSet> ruleSets) {
                return (Set) ruleSets.flatMap(rs -> Collection.of(rs.getClassAttributes(cls))).toSet();
            }

            @Override
            public Set<SLanguage> getLanguages() {
                return languages;
            }

            @Override
            public Object getIdentity() {
                return Pair.of(languages, cls);
            }
        };
    }

    @Override
    public SClass getDClass() {
        return original().getDClass();
    }

}
