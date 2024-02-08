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

import org.jetbrains.mps.openapi.model.SNodeReference;
import org.modelingvalue.collections.List;

public class DMessage {
    private static final long  serialVersionUID = -303368640776089669L;

    private final Object       content;
    private final DMessageType type;
    private final DObject      context;
    private final DFeature     feature;
    private List<DMessage>     subMessages      = List.of();

    public DMessage(DObject context, DFeature feature, DMessageType type, Object content) {
        this.context = context;
        this.feature = feature;
        this.type = type;
        this.content = content;
    }

    public DObject context() {
        return context;
    }

    public DFeature feature() {
        return feature;
    }

    public DMessageType type() {
        return type;
    }

    public Object content() {
        return content;
    }

    public SNodeReference source() {
        return feature().getSource();
    }

    public List<DMessage> subMessages() {
        return subMessages;
    }

    public void addSubMessage(DMessage subMessage) {
        subMessages = subMessages.add(subMessage);
    }

}
