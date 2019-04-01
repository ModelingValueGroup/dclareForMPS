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

import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SNode;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.transactions.AbstractLeaf;
import org.modelingvalue.transactions.Compound;
import org.modelingvalue.transactions.Constant;
import org.modelingvalue.transactions.Observed;

public class DCopy extends DNode {

    private static final Constant<Pair<SNode, DNode>, DCopy> DCOPY       = Constant.of("DCOPY", p -> new DCopy(p.a(), p.b(), null));

    private static final Observed<Pair<DCopy, DNode>, DCopy> DCHILD_COPY = Observed.of("DCHILD_COPY", null);

    public static DCopy of(SNode copy, DNode copied) {
        return DCOPY.get(Pair.of(copy, copied));
    }

    private final DNode copied;
    private final DCopy root;

    protected DCopy(SNode copy, DNode copied, DCopy root) {
        super(copy);
        this.copied = copied;
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

    private DNode map(DNode referenced) {
        return referenced != null && referenced.hasAncestor(root.copied) ? //
                (referenced.equals(root.copied) ? root : copy(referenced)) : //
                referenced;
    }

    private DNode copy(DNode child) {
        if (child != null) {
            Pair<DCopy, DNode> key = Pair.of(root, child);
            DCopy copy = DCHILD_COPY.get(key);
            if (copy != null) {
                DNode repl = DNode.REPLACEMENT.get(copy);
                if (repl != null) {
                    copy = new DCopy(repl.original(), key.b(), key.a());
                    DCHILD_COPY.set(key, copy);
                }
            } else {
                copy = new DCopy(DNode.newSNode(key.b().getConcept()), key.b(), key.a());
                DCHILD_COPY.set(key, copy);
                DNode.CREATOR.set(copy, AbstractLeaf.getCurrent().transaction());
            }
            return copy;
        } else {
            return null;
        }
    }

    public DNode getCopied() {
        return copied;
    }

    public DCopy getRoot() {
        return root;
    }

}
