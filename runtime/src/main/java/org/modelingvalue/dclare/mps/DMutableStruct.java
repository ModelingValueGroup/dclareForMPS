//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//  (C) Copyright 2018-2024 Modeling Value Group B.V. (http://modelingvalue.org)                                         ~
//                                                                                                                       ~
//  Licensed under the GNU Lesser General Public License v3.0 (the 'License'). You may not use this file except in       ~
//  compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0   ~
//  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on  ~
//  an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the   ~
//  specific language governing permissions and limitations under the License.                                           ~
//                                                                                                                       ~
//  Maintainers:                                                                                                         ~
//      Wim Bast, Tom Brus                                                                                               ~
//                                                                                                                       ~
//  Contributors:                                                                                                        ~
//      Ronald Krijgsheld ✝, Arjan Kok, Carel Bast                                                                       ~
// --------------------------------------------------------------------------------------------------------------------- ~
//  In Memory of Ronald Krijgsheld, 1972 - 2023                                                                          ~
//      Ronald was suddenly and unexpectedly taken from us. He was not only our long-term colleague and team member      ~
//      but also our friend. "He will live on in many of the lines of code you see below."                               ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

import java.util.Arrays;
import java.util.Objects;

import org.jetbrains.mps.openapi.language.SLanguage;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.dclare.Constant;

@SuppressWarnings("unused")
public class DMutableStruct extends DIdentifiedMutable implements SStructObject {

    private static final Constant<Triple<Set<SLanguage>, Set<String>, SStructClass>, DStructClass> CLASS_OBJECT_TYPE = Constant.of("CLASS_OBJECT_TYPE", DStructClass::new);

    public static SStructObject of(IRuleSet ruleSet, String anonymousType, Object[] ctx, SStructClass cls, Object[] identity) {
        return quotationConstruct(ruleSet, anonymousType, ctx, () -> of(cls, identity));
    }

    @SuppressWarnings("unchecked")
    public static DMutableStruct of(SStructClass cls, Object[] identity) {
        assert !cls.isValueClass();
        for (int i = 0; i < identity.length; i++) {
            Objects.requireNonNull(identity[i]);
        }
        identity = Arrays.copyOf(identity, identity.length + 1);
        identity[identity.length - 1] = cls;
        return new DMutableStruct(identity);
    }

    private DMutableStruct(Object[] identity) {
        super(identity);
    }

    @Override
    public boolean isExternal() {
        return false;
    }

    @Override
    public String toString() {
        return getSClass() + Arrays.toString(Arrays.copyOf(identity, identity.length - 1));
    }

    @Override
    protected DStructClass getType() {
        DMutable dParent = dObjectParent();
        Set<SLanguage> ls = (dParent != null && !dParent.isExternal() ? dParent : getContextObject()).dClass().getLanguages();
        SLanguage lang = getSClass().getLanguage();
        if (!DClareMPS.ACTIVE_RULE_SETS.get(lang).isEmpty()) {
            ls = ls.add(lang);
        }
        ls = ls.addAll(getAnonymousLanguages());
        return CLASS_OBJECT_TYPE.get(Triple.of(ls, getAnonymousTypes(), getSClass()));
    }

    @Override
    protected DStructClass getBootstrapType() {
        return CLASS_OBJECT_TYPE.get(Triple.of(Set.of(), Set.of(), getSClass()));
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public void dActivate() {
        super.dActivate();
        for (DAttribute id : getSClass().getIdentity()) {
            if (id.isComposite()) {
                id.activate(this);
            }
        }
    }

    @Override
    public SStructClass getSClass() {
        return (SStructClass) identity[identity.length - 1];
    }

    @Override
    public Object[] getIdentity() {
        return identity;
    }

    @Override
    protected void read(DClareMPS dClareMPS) {
    }

    @Override
    public boolean isDclareOnly() {
        return true;
    }

    @Override
    protected boolean isRead() {
        return false;
    }

    @Override
    protected Pair<DMutable, DObserved<DMutable, ?>> readParent() {
        throw new UnsupportedOperationException();
    }

}
