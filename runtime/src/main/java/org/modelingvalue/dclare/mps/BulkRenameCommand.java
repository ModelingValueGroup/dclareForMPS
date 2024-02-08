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

import org.modelingvalue.collections.List;
import org.modelingvalue.collections.util.Pair;

import java.util.function.Consumer;

public class BulkRenameCommand {
    public final boolean                     dry;
    public final boolean                     inamedConcepts;
    public final boolean                     allProperties;
    public final boolean                     stringLiterals;
    public final List<Pair<Integer, Rename>> renames;
    public final Consumer<RenameResult>      resultHandler;

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

    public static class Rename {
        public boolean enabled;
        public boolean regexp;
        public String  from;
        public String  to;

        @SuppressWarnings("unused")
        public Rename() {
            this(false, false, "", "");
        }

        public Rename(boolean enabled, boolean regexp, String from, String to) {
            this.enabled = enabled;
            this.regexp  = regexp;
            this.from    = from;
            this.to      = to;
        }

        @SuppressWarnings("FieldMayBeFinal")
        private static java.util.List<Rename> dummy = null;

        public static java.lang.reflect.Type getListType() {
            try {
                return Rename.class.getDeclaredField("dummy").getGenericType();
            } catch (NoSuchFieldException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public BulkRenameCommand(boolean dry, boolean inamedConcepts, boolean allProperties, boolean stringLiterals, List<Pair<Integer, Rename>> renames, Consumer<RenameResult> resultHandler) {
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
