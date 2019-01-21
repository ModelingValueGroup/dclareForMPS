package org.modelingvalue.dclare.mps;

import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SNode;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.transactions.Compound;
import org.modelingvalue.transactions.Observed;

public class DCopy extends DNode {

    public static DCopy of(SNode copy, SNode copied) {
        return dClareMPS().DCOPY.get(Pair.of(copy, copied));
    }

    private final DNode copied;
    private final DCopy root;

    protected DCopy(SNode copy, SNode copied, DCopy root) {
        super(copy);
        this.copied = DNode.of(copied);
        this.root = root != null ? root : this;
    }

    @SuppressWarnings("rawtypes")
    @Override
    protected Compound activate(DObject parent, Compound parentTx) {
        Compound tx = super.activate(parent, parentTx);
        SConcept c = original().getConcept();
        for (SProperty property : c.getProperties()) {
            Observed<DNode, String> observed = PROPERTY.get(property);
            rule(observed, tx, () -> observed.set(this, observed.get(copied)));
        }
        for (SContainmentLink containment : c.getContainmentLinks()) {
            if (containment.isMultiple()) {
                Observed<DNode, List<DNode>> observed = MANY_CONTAINMENT.get(containment);
                rule(observed, tx, () -> observed.set(this, copy(observed.get(copied))));
            } else {
                Observed<DNode, DNode> observed = SINGLE_CONTAINMENT.get(containment);
                rule(observed, tx, () -> observed.set(this, copy(observed.get(copied))));
            }
        }
        for (SReferenceLink reference : c.getReferenceLinks()) {
            Observed<DNode, DNode> observed = REFERENCE.get(reference);
            rule(observed, tx, () -> observed.set(this, map(observed.get(copied))));
        }
        return tx;
    }

    private List<DNode> copy(List<DNode> children) {
        return children.map(this::copy).toList();
    }

    private DNode copy(DNode child) {
        return dClareMPS().DCHILD_COPY.get(Pair.of(root, copied));
    }

    private DNode map(DNode referenced) {
        return referenced.hasAncestor(root.copied) ? dClareMPS().DCHILD_COPY.get(Pair.of(root, referenced)) : referenced;
    }

}
