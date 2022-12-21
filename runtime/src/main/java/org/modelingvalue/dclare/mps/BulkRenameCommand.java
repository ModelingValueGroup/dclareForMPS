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

import org.modelingvalue.collections.List;
import org.modelingvalue.collections.util.Triple;

import java.util.function.Consumer;

public class BulkRenameCommand {
    public final boolean                               dry;
    public final boolean                               inamedConcepts;
    public final boolean                               allProperties;
    public final boolean                               stringLiterals;
    public final List<Triple<Integer, String, String>> renames;
    public final Consumer<RenameResult>                resultHandler;

    public static class RenameResult {
        public final List<Integer> rows;
        public final String        type;
        public final String        from;
        public final String        to;
        public final String        modelName;
        public final String        nodeName;

        public RenameResult(List<Integer> rows, String type, String from, String to, String modelName, String nodeName) {
            this.rows      = rows;
            this.type      = type;
            this.from      = from;
            this.to        = to;
            this.modelName = modelName;
            this.nodeName  = nodeName;
        }
    }

    public BulkRenameCommand(boolean dry, boolean inamedConcepts, boolean allProperties, boolean stringLiterals, List<Triple<Integer, String, String>> renames, Consumer<RenameResult> resultHandler) {
        this.dry            = dry;
        this.inamedConcepts = inamedConcepts;
        this.allProperties  = allProperties;
        this.stringLiterals = stringLiterals;
        this.renames        = renames;
        this.resultHandler  = resultHandler;
    }

    @SuppressWarnings("unused")
    public void change(List<Integer> rows, String type, String from, String to, String modelName, String nodeName) {
        resultHandler.accept(new RenameResult(rows, type, from, to, modelName, nodeName));
        System.err.printf("  - %32s: %-20s: %-32s -> %-32s  [%s - %s]\n", rows, type, from, to, modelName, nodeName);
    }
}
