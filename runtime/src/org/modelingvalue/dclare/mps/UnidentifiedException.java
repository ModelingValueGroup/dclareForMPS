//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
<<<<<<< HEAD:runtime/src/org/modelingvalue/dclare/mps/UnidentifiedException.java
// (C) Copyright 2018-2021 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
=======
// (C) Copyright 2018-2020 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
>>>>>>> master:runtime/src/org/modelingvalue/dclare/mps/DDeriveConstruction.java
//                                                                                                                     ~
// Licensed under the GNU Lesser General Public License v3.0 (the 'License'). You may not use this file except in      ~
// compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0  ~
// Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on ~
// an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the  ~
// specific language governing permissions and limitations under the License.                                          ~
//                                                                                                                     ~
// Maintainers:                                                                                                        ~
//     Wim Bast, Tom Brus, Ronald Krijgsheld                                                                           ~
// Contributors:                                                                                                       ~
//     Arjan Kok, Carel Bast                                                                                           ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

<<<<<<< HEAD:runtime/src/org/modelingvalue/dclare/mps/UnidentifiedException.java
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.ex.ConsistencyError;

@SuppressWarnings("unused")
public final class UnidentifiedException extends ConsistencyError {

    private static final long serialVersionUID = 5442977255041372354L;

    @SuppressWarnings("rawtypes")
    public UnidentifiedException(Object object, DRule.DObserver observer, Object value) {
        super(object, observer, 4, "Rule '" + observer.rule() + "' in object '" + object + "' assigns unidentified objects '" + value + "'");
    }

    @SuppressWarnings("rawtypes")
    public UnidentifiedException(Object object, Setable setable, Object value) {
        super(object, setable, 4, "Property '" + setable + "' of object '" + object + "' is assigned with unidentified objects '" + value + "'");
=======
import org.modelingvalue.collections.Set;
import org.modelingvalue.dclare.Observer;

public abstract class DDeriveConstruction extends DConstruction {

    protected DDeriveConstruction(Object[] identity) {
        super(identity);
    }

    public abstract Observer<?> observer();

    public abstract DObject object();

    public abstract String getAnonymousType();

    @SuppressWarnings("rawtypes")
    public Set<DMatchedObject> context() {
        Set<DMatchedObject> result = Set.of();
        for (int i = 0; i < identity.length; i++) {
            if (identity[i] instanceof DMatchedObject) {
                result = result.add((DMatchedObject) identity[i]);
            }
        }
        return result;
>>>>>>> master:runtime/src/org/modelingvalue/dclare/mps/DDeriveConstruction.java
    }

}
