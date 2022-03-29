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

import java.util.Arrays;
import java.util.Objects;

import org.modelingvalue.dclare.DclareConfig;
import org.modelingvalue.dclare.State;

public class DclareForMpsConfig {
    private static final boolean      ON_MODE_DEFAULT          = Boolean.getBoolean("ON_MODE");
    private static final boolean      COLORFUL_EDITORS_DEFAULT = Boolean.getBoolean("COLORFUL_EDITORS");
    private static final boolean      TRACE_DCLARE_DEFAULT     = Boolean.getBoolean("DCLARE_TRACE");
    private static final boolean      TRACE_ACTIVATION_DEFAULT = Boolean.getBoolean("TRACE_ACTIVATION");
    private static final String[]     INACTIVE_ASPECTS_DEFAULT = new String[0];

    private final DclareConfig        config;
    private final EngineStatusHandler statusHandler;
    private final boolean             onMode;
    private final boolean             colorfulEditors;
    private final boolean             traceDclare;
    private final boolean             traceActivation;
    private final String[]            inactiveAspects;

    //============================================================================
    public DclareForMpsConfig() {
        config = new DclareConfig();
        statusHandler = null;
        onMode = ON_MODE_DEFAULT;
        colorfulEditors = COLORFUL_EDITORS_DEFAULT;
        traceDclare = TRACE_DCLARE_DEFAULT;
        traceActivation = TRACE_ACTIVATION_DEFAULT;
        inactiveAspects = INACTIVE_ASPECTS_DEFAULT;
    }

    //============================================================================
    private DclareForMpsConfig(DclareConfig config, EngineStatusHandler statusHandler, boolean onMode, boolean colorfulEditors, boolean traceDclare, boolean dclareActivation, String[] inactiveAspects) {
        this.config = config;
        this.statusHandler = statusHandler;
        this.onMode = onMode;
        this.colorfulEditors = colorfulEditors;
        this.traceDclare = traceDclare;
        this.traceActivation = dclareActivation;
        this.inactiveAspects = inactiveAspects;
    }

    protected DclareForMpsConfig create(DclareConfig config, EngineStatusHandler statusHandler, boolean onMode, boolean colorfulEditors, boolean dclareTrace, boolean dclareActivation, String[] inactiveAspects) {
        return new DclareForMpsConfig(config, statusHandler, onMode, colorfulEditors, dclareTrace, dclareActivation, inactiveAspects);
    }

    //============================================================================
    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        DclareForMpsConfig that = (DclareForMpsConfig) o;
        return Objects.equals(config, that.config) && Objects.equals(statusHandler, that.statusHandler) && Objects.equals(onMode, that.onMode) && Objects.equals(colorfulEditors, that.colorfulEditors) && //
                Objects.equals(traceDclare, that.traceDclare) && Objects.equals(traceActivation, that.traceActivation) && Arrays.equals(inactiveAspects, that.inactiveAspects);
    }

    @Override
    public int hashCode() {
        return Objects.hash(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, Arrays.hashCode(inactiveAspects));
    }

    //============================================================================
    public DclareForMpsConfig withStatusHandler(EngineStatusHandler statusHandler) {
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withOnMode(boolean onMode) {
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withColorfulEditors(boolean colorfulEditors) {
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withDclareTrace(boolean dclareTrace) {
        return create(config, statusHandler, onMode, colorfulEditors, dclareTrace, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withDclareActivation(boolean dclareActivation) {
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, dclareActivation, inactiveAspects);
    }

    public DclareForMpsConfig withInactiveAspects(String[] inactiveAspects) {
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    //===
    public DclareForMpsConfig withStart(State start) {
        DclareConfig config = this.config.withStart(start);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withDevMode(boolean devMode) {
        DclareConfig config = this.config.withDevMode(devMode);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withCheckOrphanState(boolean checkOrphanState) {
        DclareConfig config = this.config.withCheckOrphanState(checkOrphanState);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withRunSequential(boolean runSequential) {
        DclareConfig config = this.config.withRunSequential(runSequential);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withTraceUniverse(boolean traceUniverse) {
        DclareConfig config = this.config.withTraceUniverse(traceUniverse);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withTraceMutable(boolean traceMutable) {
        DclareConfig config = this.config.withTraceMutable(traceMutable);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withTraceMatching(boolean traceMatching) {
        DclareConfig config = this.config.withTraceMatching(traceMatching);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withTraceActions(boolean traceActions) {
        DclareConfig config = this.config.withTraceActions(traceActions);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withMaxInInQueue(int maxInInQueue) {
        DclareConfig config = this.config.withMaxInInQueue(maxInInQueue);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withMaxTotalNrOfChanges(int maxTotalNrOfChanges) {
        DclareConfig config = this.config.withMaxTotalNrOfChanges(maxTotalNrOfChanges);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withMaxNrOfChanges(int maxNrOfChanges) {
        DclareConfig config = this.config.withMaxNrOfChanges(maxNrOfChanges);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withMaxNrOfObserved(int maxNrOfObserved) {
        DclareConfig config = this.config.withMaxNrOfObserved(maxNrOfObserved);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withMaxNrOfObservers(int maxNrOfObservers) {
        DclareConfig config = this.config.withMaxNrOfObservers(maxNrOfObservers);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    public DclareForMpsConfig withMaxNrOfHistory(int maxNrOfHistory) {
        DclareConfig config = this.config.withMaxNrOfHistory(maxNrOfHistory);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, inactiveAspects);
    }

    //============================================================================
    public EngineStatusHandler getStatusHandler() {
        return statusHandler;
    }

    public boolean isOnMode() {
        return onMode;
    }

    public boolean isColorfulEditors() {
        return colorfulEditors;
    }

    public boolean isTraceDclare() {
        return traceDclare;
    }

    public boolean isTraceActivation() {
        return traceActivation;
    }

    public String[] getInactiveAspects() {
        return inactiveAspects;
    }

    //===
    public DclareConfig getDclareConfig() {
        return config;
    }

    public State getStart() {
        return config.getStart();
    }

    public boolean isDevMode() {
        return config.isDevMode();
    }

    public boolean isCheckOrphanState() {
        return config.isCheckOrphanState();
    }

    public boolean isRunSequential() {
        return config.isRunSequential();
    }

    public boolean isTraceUniverse() {
        return config.isTraceUniverse();
    }

    public boolean isTraceMutable() {
        return config.isTraceMutable();
    }

    public boolean isTraceMatching() {
        return config.isTraceMatching();
    }

    public boolean isTraceActions() {
        return config.isTraceActions();
    }

    public int getMaxInInQueue() {
        return config.getMaxInInQueue();
    }

    public int getMaxTotalNrOfChanges() {
        return config.getMaxTotalNrOfChanges();
    }

    public int getMaxNrOfChanges() {
        return config.getMaxNrOfChanges();
    }

    public int getMaxNrOfObserved() {
        return config.getMaxNrOfObserved();
    }

    public int getMaxNrOfObservers() {
        return config.getMaxNrOfObservers();
    }

    public int getMaxNrOfHistory() {
        return config.getMaxNrOfHistory();
    }

}
