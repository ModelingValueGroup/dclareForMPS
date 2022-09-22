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

import static org.modelingvalue.dclare.UniverseTransaction.Mood.*;

import java.util.function.Supplier;

import org.modelingvalue.dclare.ImperativeTransaction;
import org.modelingvalue.dclare.UniverseStatistics;
import org.modelingvalue.dclare.UniverseTransaction.Status;

public class DclareForMpsStatus {

    private final Status status;

    public DclareForMpsStatus(Status status) {
        this.status = status;
    }

    public boolean isChecking() {
        return status.mood == idle && status.active.anyMatch(a -> a instanceof String);
    }

    public boolean isCommitting() {
        return status.mood == idle && status.active.anyMatch(a -> a instanceof ImperativeTransaction);
    }

    public boolean isIdle() {
        return status.mood == idle || status.mood == starting;
    }

    public boolean isActive() {
        return status.mood == busy;
    }

    public boolean isStopped() {
        return status.mood == stopped;
    }

    public <R> R get(Supplier<R> supplier) {
        return status.state.get(supplier);
    }

    public UniverseStatistics stats() {
        return status.stats;
    }

}
