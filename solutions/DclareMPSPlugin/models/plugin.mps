<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:484d68ee-91ab-4199-84e9-f43210a9918b(DclareMPSPlugin.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="2" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
  </languages>
  <imports>
    <import index="t4tl" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.dclare.mps(DclareMPSRuntime/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1210179134063" name="jetbrains.mps.lang.plugin.structure.PreferencesComponentDeclaration" flags="ng" index="34j2dQ">
        <child id="1210179829398" name="persistenPropertyDeclaration" index="34lFYf" />
        <child id="1210684426855" name="preferencePage" index="3yq$HY" />
      </concept>
      <concept id="1210179190070" name="jetbrains.mps.lang.plugin.structure.PersistentPropertyDeclaration" flags="ng" index="34jfKJ" />
      <concept id="1210180874794" name="jetbrains.mps.lang.plugin.structure.PersistentPropertyReference" flags="nn" index="34pFcN" />
      <concept id="1210684385183" name="jetbrains.mps.lang.plugin.structure.PreferencePage" flags="ng" index="3yqqq6">
        <property id="1557260317236259345" name="helpTopic" index="3EcmCg" />
        <child id="1210686845551" name="component" index="3yzNdQ" />
        <child id="1210686936988" name="resetBlock" index="3y$9q5" />
        <child id="1210686956582" name="commitBlock" index="3y$ekZ" />
        <child id="1210763647050" name="isModifiedBlock" index="3B8L_j" />
      </concept>
      <concept id="1210686882550" name="jetbrains.mps.lang.plugin.structure.PreferencePageResetBlock" flags="in" index="3yzWfJ" />
      <concept id="1210686969356" name="jetbrains.mps.lang.plugin.structure.PreferencePageCommitBlock" flags="in" index="3y$hsl" />
      <concept id="1210690798207" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_PreferencePage_component" flags="nn" index="3yMSdA" />
      <concept id="1210763550007" name="jetbrains.mps.lang.plugin.structure.PreferencePageIsModifiedBlock" flags="in" index="3B8pKI" />
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
        <child id="481983775135178838" name="fieldDeclaration" index="2uRRBA" />
      </concept>
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="_0lD0iRHOm" />
  <node concept="2uRRBy" id="2og$lMxAO5u">
    <property role="TrG5h" value="DclarePlugin" />
    <node concept="2BZ0e9" id="2og$lMxAO6b" role="2uRRBA">
      <property role="TrG5h" value="engine" />
      <node concept="3Tm6S6" id="1NSeETt4MxJ" role="1B3o_S" />
      <node concept="3uibUv" id="2og$lMxB51p" role="1tU5fm">
        <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
      </node>
    </node>
    <node concept="2uRRBT" id="2og$lMxAO5v" role="2uRRB$">
      <node concept="3clFbS" id="2og$lMxAO5w" role="2VODD2">
        <node concept="3clFbF" id="2og$lMxB54v" role="3cqZAp">
          <node concept="37vLTI" id="2og$lMxB6S4" role="3clFbG">
            <node concept="2ShNRf" id="2og$lMxB6ZP" role="37vLTx">
              <node concept="1pGfFk" id="2og$lMxB6SK" role="2ShVmc">
                <ref role="37wK5l" to="t4tl:~DClareMPS.&lt;init&gt;(org.jetbrains.mps.openapi.project.Project)" resolve="DClareMPS" />
                <node concept="1KvdUw" id="2og$lMxB70z" role="37wK5m" />
              </node>
            </node>
            <node concept="2OqwBi" id="2og$lMxB54p" role="37vLTJ">
              <node concept="2WthIp" id="2og$lMxB54s" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2og$lMxB54u" role="2OqNvi">
                <ref role="2WH_rO" node="2og$lMxAO6b" resolve="engine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2og$lMxB7pl" role="3cqZAp">
          <node concept="2OqwBi" id="2og$lMxB8cT" role="3clFbG">
            <node concept="2OqwBi" id="2og$lMxB7By" role="2Oq$k0">
              <node concept="2WthIp" id="2og$lMxB7pj" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2og$lMxB7J3" role="2OqNvi">
                <ref role="2WH_rO" node="2og$lMxAO6b" resolve="engine" />
              </node>
            </node>
            <node concept="liA8E" id="2og$lMxB9tK" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DClareMPS.start():void" resolve="start" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="2og$lMxAO5P" role="2uRRB_">
      <node concept="3clFbS" id="2og$lMxAO5Q" role="2VODD2">
        <node concept="3clFbF" id="2og$lMxB9xY" role="3cqZAp">
          <node concept="2OqwBi" id="2og$lMxBadi" role="3clFbG">
            <node concept="2OqwBi" id="2og$lMxB9BV" role="2Oq$k0">
              <node concept="2WthIp" id="2og$lMxB9xX" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2og$lMxB9Js" role="2OqNvi">
                <ref role="2WH_rO" node="2og$lMxAO6b" resolve="engine" />
              </node>
            </node>
            <node concept="liA8E" id="2og$lMxBaSJ" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DClareMPS.stop():void" resolve="stop" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="34j2dQ" id="4Y8BM43M7ZV">
    <property role="TrG5h" value="DclarePreferences" />
    <node concept="34jfKJ" id="4Y8BM43MiH6" role="34lFYf">
      <property role="TrG5h" value="trace" />
      <node concept="10P_77" id="4Y8BM43MiKw" role="1tU5fm" />
      <node concept="3clFbT" id="1NSeETt4jVH" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="3yqqq6" id="4Y8BM43M7ZW" role="3yq$HY">
      <property role="TrG5h" value="Dclare" />
      <property role="3EcmCg" value="switch tracing on and off" />
      <node concept="3B8pKI" id="4Y8BM43M7ZY" role="3B8L_j">
        <node concept="3clFbS" id="4Y8BM43M7ZZ" role="2VODD2">
          <node concept="3clFbF" id="4Y8BM43MyUx" role="3cqZAp">
            <node concept="3y3z36" id="4Y8BM43MPjR" role="3clFbG">
              <node concept="2OqwBi" id="4Y8BM43MMMq" role="3uHU7B">
                <node concept="3yMSdA" id="4Y8BM43MMeJ" role="2Oq$k0" />
                <node concept="liA8E" id="4Y8BM43MOed" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected():boolean" resolve="isSelected" />
                </node>
              </node>
              <node concept="2OqwBi" id="4Y8BM43MP47" role="3uHU7w">
                <node concept="2WthIp" id="4Y8BM43MP4a" role="2Oq$k0" />
                <node concept="34pFcN" id="4Y8BM43MP4c" role="2OqNvi">
                  <ref role="2WH_rO" node="4Y8BM43MiH6" resolve="trace" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3yzWfJ" id="4Y8BM43M800" role="3y$9q5">
        <node concept="3clFbS" id="4Y8BM43M801" role="2VODD2">
          <node concept="3clFbF" id="4Y8BM43M$If" role="3cqZAp">
            <node concept="37vLTI" id="4Y8BM43MAVp" role="3clFbG">
              <node concept="3clFbT" id="4Y8BM43MBaw" role="37vLTx">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="2OqwBi" id="4Y8BM43M$I9" role="37vLTJ">
                <node concept="2WthIp" id="4Y8BM43M$Ic" role="2Oq$k0" />
                <node concept="34pFcN" id="4Y8BM43M$Ie" role="2OqNvi">
                  <ref role="2WH_rO" node="4Y8BM43MiH6" resolve="trace" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4Y8BM43MB$o" role="3cqZAp">
            <node concept="2OqwBi" id="4Y8BM43MKk9" role="3clFbG">
              <node concept="3yMSdA" id="4Y8BM43MB$m" role="2Oq$k0" />
              <node concept="liA8E" id="4Y8BM43MKuH" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean):void" resolve="setSelected" />
                <node concept="3clFbT" id="4Y8BM43MKH1" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3y$hsl" id="4Y8BM43M802" role="3y$ekZ">
        <node concept="3clFbS" id="4Y8BM43M803" role="2VODD2">
          <node concept="3clFbF" id="4Y8BM43MPKp" role="3cqZAp">
            <node concept="37vLTI" id="4Y8BM43MRq_" role="3clFbG">
              <node concept="2OqwBi" id="4Y8BM43MSs6" role="37vLTx">
                <node concept="3yMSdA" id="4Y8BM43MRPW" role="2Oq$k0" />
                <node concept="liA8E" id="4Y8BM43MTvs" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected():boolean" resolve="isSelected" />
                </node>
              </node>
              <node concept="2OqwBi" id="4Y8BM43MPMk" role="37vLTJ">
                <node concept="2WthIp" id="4Y8BM43MPKo" role="2Oq$k0" />
                <node concept="34pFcN" id="4Y8BM43MPOU" role="2OqNvi">
                  <ref role="2WH_rO" node="4Y8BM43MiH6" resolve="trace" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="4Y8BM43Mvo1" role="3yzNdQ">
        <node concept="1pGfFk" id="4Y8BM43Myfs" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;(java.lang.String)" resolve="JCheckBox" />
          <node concept="Xl_RD" id="4Y8BM43MWuq" role="37wK5m">
            <property role="Xl_RC" value="Trace Dclare" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

