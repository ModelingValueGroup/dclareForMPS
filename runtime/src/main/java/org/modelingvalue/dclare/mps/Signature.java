package org.modelingvalue.dclare.mps;

import java.util.Arrays;

import org.jetbrains.mps.openapi.language.SConcept;
import org.modelingvalue.collections.util.IdentifiedByArray;

import jetbrains.mps.smodel.SNode;

public class Signature extends IdentifiedByArray implements Comparable<Signature> {

    public static Signature of(Signature def, Object[] args) {
        Object[] id = new Object[args.length];
        for (int i = 0; i < id.length; i++) {
            if (args[i] == null) {
                id[i] = def.get(i);
            } else if (args[i] instanceof SNode) {
                id[i] = ((SNode) args[i]).getConcept();
            } else if (args[i] instanceof SStructObject) {
                id[i] = ((SStructObject) args[i]).getSClass();
            } else {
                id[i] = args[i].getClass();
            }
        }
        return of(id);
    }

    public static Signature of(Object[] types) {
        return new Signature(types);
    }

    private Signature(Object[] id) {
        super(id);
    }

    @Override
    public String toString() {
        return Arrays.toString(identity()).replace('[', '(').replace(']', ')');
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    public boolean isSubOf(Signature sup) {
        if (size() != sup.size()) {
            return false;
        } else {
            for (int i = 0; i < size(); i++) {
                if (get(i) instanceof SConcept && sup.get(i) instanceof SConcept) {
                    if (!((SConcept) get(i)).isSubConceptOf((SConcept) sup.get(i))) {
                        return false;
                    }
                } else if (get(i) instanceof SStructClass && sup.get(i) instanceof SStructClass) {
                    if (!((SStructClass) sup.get(i)).isAssignableFrom((SStructClass) get(i))) {
                        return false;
                    }
                } else if (get(i) instanceof Class && sup.get(i) instanceof Class) {
                    if (!((Class) sup.get(i)).isAssignableFrom((Class) get(i))) {
                        return false;
                    }
                } else {
                    return false;
                }
            }
            return true;
        }
    }

    @Override
    public int compareTo(Signature o) {
        if (equals(o)) {
            return 0;
        } else if (isSubOf(o)) {
            return -1;
        } else if (o.isSubOf(this)) {
            return 1;
        } else {
            return Integer.compare(hashCode(), o.hashCode());
        }
    }

}
