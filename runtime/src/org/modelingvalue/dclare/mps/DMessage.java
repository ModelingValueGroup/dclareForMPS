//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2021 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

import org.jetbrains.mps.openapi.model.SNode;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.util.Triple;

public class DMessage extends Triple<DObject, DFeature, String> {
    private static final long  serialVersionUID = -303368640776089669L;

    private final Object       content;
    private List<DMessage>     subMessages      = List.of();
    private final DMessageType type;

    public DMessage(DObject context, DFeature feature, DMessageType type, String id, Object content) {
        super(context, feature, id);
        this.content = content;
        this.type = type;
    }

    public DObject context() {
        return a();
    }

    public DFeature feature() {
        return b();
    }

    public String id() {
        return c();
    }

    public DMessageType type() {
        return type;
    }

    public Object content() {
        return content;
    }

    public SNode source() {
        return feature().getSource();
    }

    public List<DMessage> subMessages() {
        return subMessages;
    }

    public void addSubMessage(DMessage subMessage) {
        subMessages = subMessages.add(subMessage);
    }

}
