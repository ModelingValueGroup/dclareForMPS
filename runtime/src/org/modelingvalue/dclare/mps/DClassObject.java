package org.modelingvalue.dclare.mps;

import java.util.function.Consumer;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.ContainingCollection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;

public class DClassObject extends DObject<SClassObject> implements SClassObject {

    public static DClassObject of(SClassObject original) {
        return original instanceof DClassObject ? (DClassObject) original : dClareMPS().DCLASS_OBJECT.get(original);
    }

    public static DClassObject wrap(SClassObject original) {
        return of(original);
    }

    protected DClassObject(SClassObject original) {
        super(original);
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected ContainingCollection<? extends DObject> getChildren() {
        return Set.of();
    }

    @SuppressWarnings("unchecked")
    @Override
    protected DType getType() {
        Set<SLanguage> languages = DObject.TYPE.get(PARENT.get(this)).getLanguages();
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

    @Override
    public Object[] getIdentity() {
        return original().getIdentity();
    }

}
