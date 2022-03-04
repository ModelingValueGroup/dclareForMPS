//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2022 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import java.io.FileWriter;
import java.io.IOException;
import java.util.function.Predicate;

import org.modelingvalue.collections.Map;
import org.modelingvalue.collections.util.Pair;
import org.modelingvalue.dclare.Setable;
import org.modelingvalue.dclare.State;
import org.modelingvalue.dclare.UniverseTransaction;
import org.modelingvalue.dclare.sync.DeltaAdaptor;
import org.modelingvalue.dclare.sync.SerializationHelper;

public class MPSDeltaAdapter extends DeltaAdaptor<DObjectType<DObject>, DObject, Setable<DObject, Object>> {

    public MPSDeltaAdapter(String name, UniverseTransaction tx, SerializationHelper<DObjectType<DObject>, DObject, Setable<DObject, Object>> helper) {
        super(name, tx, helper);
    }

    @Override
    @SuppressWarnings({"unchecked", "rawtypes"})
    protected void queueDelta(State pre, State post, Boolean last) {
        Map<Object, Map<Setable, Pair<Object, Object>>> deltaMap = pre.diff(post, getObjectFilter(), (Predicate<Setable>) (Object) helper.setableFilter()).toMap(e1 -> e1);
        if (!deltaMap.isEmpty()) {
            try {
                String delta = ToJsonDeltas.toJson(deltaMap);
                //System.err.println("SENDING:\n" + Json.pretty(delta));
                deltaQueue.put(delta);
                FileWriter w = new FileWriter("f:\\mps.json");
                w.write(delta);
                w.flush();
                w.close();

                //read in file, to test al id's are resolvable!
                //accept(delta);
            } catch (InterruptedException e) {
                //e.printStackTrace();//TOMTOMTOM
                throw new Error(e);
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

}
