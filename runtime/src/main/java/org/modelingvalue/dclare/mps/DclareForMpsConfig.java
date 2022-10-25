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

import org.modelingvalue.dclare.DclareConfig;

import java.util.Arrays;
import java.util.Objects;

@SuppressWarnings("unused")
public class DclareForMpsConfig {
    private static final boolean  ON_MODE_DEFAULT          = Boolean.getBoolean("ON_MODE");
    private static final boolean  COLORFUL_EDITORS_DEFAULT = Boolean.getBoolean("COLORFUL_EDITORS");
    private static final boolean  TRACE_DCLARE_DEFAULT     = Boolean.getBoolean("DCLARE_TRACE");
    private static final boolean  TRACE_ACTIVATION_DEFAULT = Boolean.getBoolean("TRACE_ACTIVATION");
    private static final boolean  TRACE_MPS_MODEL_CHANGES  = Boolean.getBoolean("TRACE_MPS_MODEL_CHANGES");
    private static final boolean  AUTO_MODEL_CHECK         = Boolean.getBoolean("AUTO_MODEL_CHECK");
    private static final String[] INACTIVE_ASPECTS_DEFAULT = new String[0];

    private final DclareConfig        config;
    private final EngineStatusHandler statusHandler;
    private final boolean             onMode;
    private final boolean             colorfulEditors;
    private final boolean             traceDclare;
    private final boolean             traceActivation;
    private final boolean             traceMPSModelChanges;
    private final boolean             disableAutoModelCheck;
    private final String[]            inactiveAspects;

    //============================================================================
    public DclareForMpsConfig() {
        config                = new DclareConfig();
        statusHandler         = null;
        onMode                = ON_MODE_DEFAULT;
        colorfulEditors       = COLORFUL_EDITORS_DEFAULT;
        traceDclare           = TRACE_DCLARE_DEFAULT;
        traceActivation       = TRACE_ACTIVATION_DEFAULT;
        inactiveAspects       = INACTIVE_ASPECTS_DEFAULT;
        traceMPSModelChanges  = TRACE_MPS_MODEL_CHANGES;
        disableAutoModelCheck = AUTO_MODEL_CHECK;
    }

    //============================================================================
    private DclareForMpsConfig(DclareConfig config, EngineStatusHandler statusHandler, boolean onMode, boolean colorfulEditors, boolean traceDclare, boolean dclareActivation, boolean traceMPSModelChanges, boolean disableAutoModelCheck, String[] inactiveAspects) {
        this.config                = config;
        this.statusHandler         = statusHandler;
        this.onMode                = onMode;
        this.colorfulEditors       = colorfulEditors;
        this.traceDclare           = traceDclare;
        this.traceActivation       = dclareActivation;
        this.inactiveAspects       = inactiveAspects;
        this.traceMPSModelChanges  = traceMPSModelChanges;
        this.disableAutoModelCheck = disableAutoModelCheck;
    }

    protected DclareForMpsConfig create(DclareConfig config, EngineStatusHandler statusHandler, boolean onMode, boolean colorfulEditors, boolean dclareTrace, boolean dclareActivation, boolean traceMPSModelChanges, boolean disableAutoModelCheck, String[] inactiveAspects) {
        return new DclareForMpsConfig(config, statusHandler, onMode, colorfulEditors, dclareTrace, dclareActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
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
        return Objects.equals(config, that.config)
               && Objects.equals(statusHandler, that.statusHandler)
               && Objects.equals(onMode, that.onMode)
               && Objects.equals(colorfulEditors, that.colorfulEditors)
               && Objects.equals(traceDclare, that.traceDclare)
               && Objects.equals(traceActivation, that.traceActivation)
               && Objects.equals(traceMPSModelChanges, that.traceMPSModelChanges)
               && Objects.equals(disableAutoModelCheck, that.disableAutoModelCheck)
               && Arrays.equals(inactiveAspects, that.inactiveAspects);
    }

    @Override
    public int hashCode() {
        return Objects.hash(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, Arrays.hashCode(inactiveAspects));
    }

    //============================================================================
    public DclareForMpsConfig withStatusHandler(EngineStatusHandler statusHandler) {
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withOnMode(boolean onMode) {
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withColorfulEditors(boolean colorfulEditors) {
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withDclareTrace(boolean dclareTrace) {
        return create(config, statusHandler, onMode, colorfulEditors, dclareTrace, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withDclareActivation(boolean dclareActivation) {
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, dclareActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withMPSModelChangesTrace(boolean traceMPSModelChanges) {
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withDisableAutoModelCheck(boolean disableAutoModelCheck) {
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withInactiveAspects(String[] inactiveAspects) {
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    //=== base config entries
    public DclareForMpsConfig withDevMode(boolean devMode) {
        DclareConfig config = this.config.withDevMode(devMode);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withCheckOrphanState(boolean checkOrphanState) {
        DclareConfig config = this.config.withCheckOrphanState(checkOrphanState);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withRunSequential(boolean runSequential) {
        DclareConfig config = this.config.withRunSequential(runSequential);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withTraceUniverse(boolean traceUniverse) {
        DclareConfig config = this.config.withTraceUniverse(traceUniverse);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withTraceMutable(boolean traceMutable) {
        DclareConfig config = this.config.withTraceMutable(traceMutable);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withTraceMatching(boolean traceMatching) {
        DclareConfig config = this.config.withTraceMatching(traceMatching);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withTraceActions(boolean traceActions) {
        DclareConfig config = this.config.withTraceActions(traceActions);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withTraceRippleOut(boolean traceRippleOut) {
        DclareConfig config = this.config.withTraceRippleOut(traceRippleOut);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withTraceDerivation(boolean traceDerivation) {
        DclareConfig config = this.config.withTraceDerivation(traceDerivation);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withMaxInInQueue(int maxInInQueue) {
        DclareConfig config = this.config.withMaxInInQueue(maxInInQueue);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withMaxTotalNrOfChanges(int maxTotalNrOfChanges) {
        DclareConfig config = this.config.withMaxTotalNrOfChanges(maxTotalNrOfChanges);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withMaxNrOfChanges(int maxNrOfChanges) {
        DclareConfig config = this.config.withMaxNrOfChanges(maxNrOfChanges);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withMaxNrOfObserved(int maxNrOfObserved) {
        DclareConfig config = this.config.withMaxNrOfObserved(maxNrOfObserved);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withMaxNrOfObservers(int maxNrOfObservers) {
        DclareConfig config = this.config.withMaxNrOfObservers(maxNrOfObservers);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
    }

    public DclareForMpsConfig withMaxNrOfHistory(int maxNrOfHistory) {
        DclareConfig config = this.config.withMaxNrOfHistory(maxNrOfHistory);
        return create(config, statusHandler, onMode, colorfulEditors, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, inactiveAspects);
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
        return isDevMode() && traceDclare;
    }

    public boolean isTraceActivation() {
        return isDevMode() && traceActivation;
    }

    public boolean isTraceMPSModelChanges() {
        return isDevMode() && traceMPSModelChanges;
    }

    public boolean isDisableAutoModelCheck() {
        return isDevMode() && disableAutoModelCheck;
    }

    public String[] getInactiveAspects() {
        return inactiveAspects;
    }

    //=== base config entries
    public DclareConfig getDclareConfig() {
        return config;
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

    public boolean isTraceRippleOut() {
        return config.isTraceRippleOut();
    }

    public boolean isTraceDerivation() {
        return config.isTraceDerivation();
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
