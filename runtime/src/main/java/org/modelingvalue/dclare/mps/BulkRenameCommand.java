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

import org.modelingvalue.collections.util.QuadConsumer;

public class BulkRenameCommand {
    public final boolean                                       dry;
    public final boolean                                       inamedConcepts;
    public final boolean                                       allProperties;
    public final boolean                                       stringLiterals;
    public final int                                           row;
    public final String                                        fromPattern;
    public final String                                        toPattern;
    public final QuadConsumer<Integer, String, String, String> resultHandler;

    public BulkRenameCommand(boolean dry, boolean inamedConcepts, boolean allProperties, boolean stringLiterals, int row, String fromPattern, String toPattern, QuadConsumer<Integer, String, String, String> resultHandler) {
        this.dry            = dry;
        this.inamedConcepts = inamedConcepts;
        this.allProperties  = allProperties;
        this.stringLiterals = stringLiterals;
        this.row            = row;
        this.fromPattern    = fromPattern;
        this.toPattern      = toPattern;
        this.resultHandler  = resultHandler;
    }

    @SuppressWarnings("unused")
    public void change(String type, String from, String to) {
        resultHandler.accept(row, type, from, to);
        System.err.printf("  - %4d: %-20s: %-32s -> %s\n", row, type, from, to);
    }
}
