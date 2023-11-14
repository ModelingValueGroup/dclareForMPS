//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2023 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

@SuppressWarnings("unused")
public class DclareForMpsConfig {
    private static final boolean      ON_MODE_DEFAULT                             = Boolean.getBoolean("ON_MODE");
    private static final boolean      COLORFUL_EDITORS_DEFAULT                    = Boolean.getBoolean("COLORFUL_EDITORS");
    private static final boolean      SHOW_ASPECT_RULE_SETS_IN_RULES_TAB_DEFAULT  = Boolean.getBoolean("SHOW_ASPECT_RULE_SETS_IN_RULES_TAB_DEFAULT");
    private static final boolean      TRACE_DCLARE_DEFAULT                        = Boolean.getBoolean("DCLARE_TRACE");
    private static final boolean      TRACE_ACTIVATION_DEFAULT                    = Boolean.getBoolean("TRACE_ACTIVATION");
    private static final boolean      TRACE_MPS_MODEL_CHANGES_DEFAULT             = Boolean.getBoolean("TRACE_MPS_MODEL_CHANGES");
    private static final boolean      AUTO_MODEL_CHECK_DEFAULT                    = Boolean.getBoolean("AUTO_MODEL_CHECK");
    private static final boolean      REMOTE_MODEL_SYNCHRONIZATION_DEFAULT        = Boolean.getBoolean("REMOTE_MODEL_SYNCHRONIZATION");
    private static final String       REMOTE_MODEL_SYNCHRONIZATION_SERVER_DEFAULT = System.getProperty("REMOTE_MODEL_SYNCHRONIZATION_SERVER");
    private static final String[]     INACTIVE_ASPECTS_DEFAULT                    = Arrays.stream(System.getProperty("INACTIVE_ASPECTS", "").replaceAll("\\s+", "").split("[,;/|]")).filter(s -> !s.isBlank()).toArray(String[]::new);

    private final DclareConfig        config;
    private final EngineStatusHandler statusHandler;
    private final boolean             onMode;
    private final boolean             colorfulEditors;
    private final boolean             showAspectRuleSetsInRulesTab;
    private final boolean             traceDclare;
    private final boolean             traceActivation;
    private final boolean             traceMPSModelChanges;
    private final boolean             disableAutoModelCheck;
    private final boolean             remoteModelSynchronization;
    private final String              remoteModelSynchronizationServer;
    private final String[]            inactiveAspects;

    //============================================================================
    public DclareForMpsConfig() {
        config = new DclareConfig();
        statusHandler = null;
        onMode = ON_MODE_DEFAULT;
        colorfulEditors = COLORFUL_EDITORS_DEFAULT;
        showAspectRuleSetsInRulesTab = SHOW_ASPECT_RULE_SETS_IN_RULES_TAB_DEFAULT;
        traceDclare = TRACE_DCLARE_DEFAULT;
        traceActivation = TRACE_ACTIVATION_DEFAULT;
        traceMPSModelChanges = TRACE_MPS_MODEL_CHANGES_DEFAULT;
        disableAutoModelCheck = AUTO_MODEL_CHECK_DEFAULT;
        remoteModelSynchronization = REMOTE_MODEL_SYNCHRONIZATION_DEFAULT;
        remoteModelSynchronizationServer = REMOTE_MODEL_SYNCHRONIZATION_SERVER_DEFAULT;
        inactiveAspects = INACTIVE_ASPECTS_DEFAULT;
    }

    //============================================================================
    private DclareForMpsConfig(DclareConfig config, EngineStatusHandler statusHandler, boolean onMode, boolean colorfulEditors, boolean showAspectRuleSetsInRulesTab, boolean traceDclare, boolean dclareActivation, boolean traceMPSModelChanges, boolean disableAutoModelCheck, boolean remoteModelSynchronization, String remoteModelSynchronizationServer, String[] inactiveAspects) {
        this.config = config;
        this.statusHandler = statusHandler;
        this.onMode = onMode;
        this.colorfulEditors = colorfulEditors;
        this.showAspectRuleSetsInRulesTab = showAspectRuleSetsInRulesTab;
        this.traceDclare = traceDclare;
        this.traceActivation = dclareActivation;
        this.traceMPSModelChanges = traceMPSModelChanges;
        this.disableAutoModelCheck = disableAutoModelCheck;
        this.remoteModelSynchronization = remoteModelSynchronization;
        this.remoteModelSynchronizationServer = remoteModelSynchronizationServer;
        this.inactiveAspects = inactiveAspects;
    }

    protected DclareForMpsConfig create(DclareConfig config, EngineStatusHandler statusHandler, boolean onMode, boolean colorfulEditors, boolean showAspectRuleSetsInRulesTab, boolean dclareTrace, boolean dclareActivation, boolean traceMPSModelChanges, boolean disableAutoModelCheck, boolean remoteModelSynchronization, String remoteModelSynchronizationServer, String[] inactiveAspects) {
        return new DclareForMpsConfig(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, dclareTrace, dclareActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
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
        return Objects.equals(config, that.config) && Objects.equals(statusHandler, that.statusHandler) && Objects.equals(onMode, that.onMode) && Objects.equals(colorfulEditors, that.colorfulEditors) && Objects.equals(showAspectRuleSetsInRulesTab, that.showAspectRuleSetsInRulesTab) && Objects.equals(traceDclare, that.traceDclare) && Objects.equals(traceActivation, that.traceActivation) && //
                Objects.equals(traceMPSModelChanges, that.traceMPSModelChanges) && Objects.equals(disableAutoModelCheck, that.disableAutoModelCheck) && Objects.equals(remoteModelSynchronization, that.remoteModelSynchronization) && Objects.equals(remoteModelSynchronizationServer, that.remoteModelSynchronizationServer) && Arrays.equals(inactiveAspects, that.inactiveAspects);
    }

    @Override
    public int hashCode() {
        return Objects.hash(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, Arrays.hashCode(inactiveAspects));
    }

    //============================================================================
    public DclareForMpsConfig withStatusHandler(EngineStatusHandler statusHandler) {
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withOnMode(boolean onMode) {
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withColorfulEditors(boolean colorfulEditors) {
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withShowAspectRuleSetsInRulesTab(boolean showAspectRuleSetsInRulesTab) {
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withDclareTrace(boolean dclareTrace) {
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, dclareTrace, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withDclareActivation(boolean dclareActivation) {
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, dclareActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withMPSModelChangesTrace(boolean traceMPSModelChanges) {
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withDisableAutoModelCheck(boolean disableAutoModelCheck) {
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withRemoteModelSynchronization(boolean remoteModelSynchronization) {
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withRemoteModelSynchronizationServer(String remoteModelSynchronizationServer) {
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withInactiveAspects(String[] inactiveAspects) {
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    //=== base config entries
    public DclareForMpsConfig withDevMode(boolean devMode) {
        DclareConfig config = this.config.withDevMode(devMode);
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withCheckOrphanState(boolean checkOrphanState) {
        DclareConfig config = this.config.withCheckOrphanState(checkOrphanState);
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withRunSequential(boolean runSequential) {
        DclareConfig config = this.config.withRunSequential(runSequential);
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withTraceUniverse(boolean traceUniverse) {
        DclareConfig config = this.config.withTraceUniverse(traceUniverse);
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withTraceMutable(boolean traceMutable) {
        DclareConfig config = this.config.withTraceMutable(traceMutable);
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withTraceMatching(boolean traceMatching) {
        DclareConfig config = this.config.withTraceMatching(traceMatching);
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withTraceActions(boolean traceActions) {
        DclareConfig config = this.config.withTraceActions(traceActions);
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withTraceRippleOut(boolean traceRippleOut) {
        DclareConfig config = this.config.withTraceRippleOut(traceRippleOut);
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withTraceDerivation(boolean traceDerivation) {
        DclareConfig config = this.config.withTraceDerivation(traceDerivation);
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withMaxInInQueue(int maxInInQueue) {
        DclareConfig config = this.config.withMaxInInQueue(maxInInQueue);
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withMaxTotalNrOfChanges(int maxTotalNrOfChanges) {
        DclareConfig config = this.config.withMaxTotalNrOfChanges(maxTotalNrOfChanges);
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withMaxNrOfChanges(int maxNrOfChanges) {
        DclareConfig config = this.config.withMaxNrOfChanges(maxNrOfChanges);
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withMaxNrOfObserved(int maxNrOfObserved) {
        DclareConfig config = this.config.withMaxNrOfObserved(maxNrOfObserved);
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withMaxNrOfObservers(int maxNrOfObservers) {
        DclareConfig config = this.config.withMaxNrOfObservers(maxNrOfObservers);
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
    }

    public DclareForMpsConfig withMaxNrOfHistory(int maxNrOfHistory) {
        DclareConfig config = this.config.withMaxNrOfHistory(maxNrOfHistory);
        return create(config, statusHandler, onMode, colorfulEditors, showAspectRuleSetsInRulesTab, traceDclare, traceActivation, traceMPSModelChanges, disableAutoModelCheck, remoteModelSynchronization, remoteModelSynchronizationServer, inactiveAspects);
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

    public boolean isShowAspectRuleSetsInRulesTab() {
        return showAspectRuleSetsInRulesTab;
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

    public boolean isRemoteModelSynchronization() {
        return isDevMode() && remoteModelSynchronization;
    }

    public String getRemoteModelSynchronizationServer() {
        return remoteModelSynchronizationServer;
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
