package org.modelingvalue.dclare.mps;

import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.transactions.ConstantSetable;
import org.modelingvalue.transactions.Getable;

public class SClass {

    private static final Getable<Triple<Object, String, Set<SClass>>, SClass> DCLASS = ConstantSetable.of("DCLASS", p -> new SClass(p.a(), p.b(), p.c()));

    public static SClass of(Object id, String name, SClass... supers) {
        return DCLASS.get(Triple.of(id, name, Set.of(supers)));
    }

    private final Object      id;
    private final String      name;
    private final Set<SClass> supers;

    private SClass(Object id, String name, Set<SClass> supers) {
        super();
        this.id = id;
        this.name = name;
        this.supers = supers;
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        } else if (obj == null) {
            return false;
        } else if (getClass() != obj.getClass()) {
            return false;
        } else {
            SClass other = (SClass) obj;
            return id.equals(other.id);
        }
    }

    public boolean isAssignableFrom(SClass sub) {
        return equals(sub) || sub.supers.anyMatch(s -> isAssignableFrom(s));
    }

    @Override
    public String toString() {
        return name;
    }

}
