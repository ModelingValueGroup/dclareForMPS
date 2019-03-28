<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:36c1ea3b-fbca-41f9-87cc-9bacb8f18c30(DclareMessages.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="t4tl" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.dclare.mps(DclareMPSRuntime/)" />
    <import index="wknp" ref="r:9a42e459-6b0e-4c37-8fab-9b46bab588bd(DclareMessages.structure)" />
    <import index="zrbp" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.collections(DclareMPSRuntime/)" />
    <import index="42m3" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.collections.util(DclareMPSRuntime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
      </concept>
      <concept id="5455284157993911097" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitPart" flags="ng" index="2pJxcK">
        <child id="5455284157993911094" name="expression" index="2pJxcZ" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6973815483243445083" name="jetbrains.mps.lang.smodel.structure.EnumMemberValueRefExpression" flags="nn" index="3f7Wdw">
        <reference id="6973815483243565416" name="member" index="3f7u_j" />
        <reference id="6973815483243564601" name="enum" index="3f7vo2" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
    </language>
  </registry>
  <node concept="13h7C7" id="30f$n$3ce3p">
    <ref role="13h7C2" to="wknp:7e_PmaZxfwQ" resolve="Message" />
    <node concept="13i0hz" id="30f$n$3cdv6" role="13h7CS">
      <property role="TrG5h" value="getType" />
      <property role="2Ki8OM" value="true" />
      <node concept="3clFbS" id="U92pZAFBjd" role="3clF47">
        <node concept="3clFbJ" id="U92pZAGtmA" role="3cqZAp">
          <node concept="3clFbS" id="U92pZAGtmB" role="3clFbx">
            <node concept="3cpWs6" id="U92pZAGtmC" role="3cqZAp">
              <node concept="3f7Wdw" id="U92pZAGtmD" role="3cqZAk">
                <ref role="3f7vo2" to="wknp:5FinwQP4DTw" resolve="MessageType" />
                <ref role="3f7u_j" to="wknp:5FinwQP4DTD" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="U92pZAGtmE" role="3clFbw">
            <node concept="Rm8GO" id="U92pZAHr0S" role="3uHU7w">
              <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
              <ref role="Rm8GQ" to="t4tl:~DMessageType.debug" resolve="debug" />
            </node>
            <node concept="37vLTw" id="U92pZAGtmG" role="3uHU7B">
              <ref role="3cqZAo" node="U92pZAFUpe" resolve="type" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="U92pZAG5oU" role="3cqZAp">
          <node concept="3clFbS" id="U92pZAG5oW" role="3clFbx">
            <node concept="3cpWs6" id="U92pZAFBjh" role="3cqZAp">
              <node concept="3f7Wdw" id="U92pZAFBji" role="3cqZAk">
                <ref role="3f7u_j" to="wknp:5FinwQP4DTx" />
                <ref role="3f7vo2" to="wknp:5FinwQP4DTw" resolve="MessageType" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="U92pZAGdzl" role="3clFbw">
            <node concept="Rm8GO" id="U92pZAGeiI" role="3uHU7w">
              <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
              <ref role="Rm8GQ" to="t4tl:~DMessageType.error" resolve="error" />
            </node>
            <node concept="37vLTw" id="U92pZAGaWH" role="3uHU7B">
              <ref role="3cqZAo" node="U92pZAFUpe" resolve="type" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="U92pZAGAKc" role="3cqZAp">
          <node concept="3clFbS" id="U92pZAGAKd" role="3clFbx">
            <node concept="3cpWs6" id="U92pZAGAKe" role="3cqZAp">
              <node concept="3f7Wdw" id="U92pZAGAKf" role="3cqZAk">
                <ref role="3f7vo2" to="wknp:5FinwQP4DTw" resolve="MessageType" />
                <ref role="3f7u_j" to="wknp:5FinwQP4DT_" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="U92pZAGAKg" role="3clFbw">
            <node concept="Rm8GO" id="U92pZAHvPp" role="3uHU7w">
              <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
              <ref role="Rm8GQ" to="t4tl:~DMessageType.info" resolve="info" />
            </node>
            <node concept="37vLTw" id="U92pZAGAKi" role="3uHU7B">
              <ref role="3cqZAo" node="U92pZAFUpe" resolve="type" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="U92pZAGKcG" role="3cqZAp">
          <node concept="3clFbS" id="U92pZAGKcH" role="3clFbx">
            <node concept="3cpWs6" id="U92pZAGKcI" role="3cqZAp">
              <node concept="3f7Wdw" id="U92pZAGKcJ" role="3cqZAk">
                <ref role="3f7vo2" to="wknp:5FinwQP4DTw" resolve="MessageType" />
                <ref role="3f7u_j" to="wknp:5FinwQP4DTy" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="U92pZAGKcK" role="3clFbw">
            <node concept="Rm8GO" id="U92pZAH_vu" role="3uHU7w">
              <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
              <ref role="Rm8GQ" to="t4tl:~DMessageType.warning" resolve="warning" />
            </node>
            <node concept="37vLTw" id="U92pZAGKcM" role="3uHU7B">
              <ref role="3cqZAo" node="U92pZAFUpe" resolve="type" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="U92pZAGUw5" role="3cqZAp">
          <node concept="10Nm6u" id="U92pZAGZKU" role="3cqZAk" />
        </node>
      </node>
      <node concept="17QB3L" id="U92pZAFBjp" role="3clF45" />
      <node concept="37vLTG" id="U92pZAFUpe" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="U92pZAFUpd" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DMessageType" resolve="DMessageType" />
        </node>
      </node>
      <node concept="3Tm1VV" id="30f$n$3cdxN" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="5j905zHg5d1" role="13h7CS">
      <property role="TrG5h" value="initializeChildren" />
      <node concept="3Tm1VV" id="5j905zHg5d2" role="1B3o_S" />
      <node concept="3cqZAl" id="5j905zHg5ko" role="3clF45" />
      <node concept="3clFbS" id="5j905zHg5d4" role="3clF47">
        <node concept="3cpWs8" id="5j905zHgnuw" role="3cqZAp">
          <node concept="3cpWsn" id="5j905zHgnux" role="3cpWs9">
            <property role="TrG5h" value="dObject" />
            <node concept="3uibUv" id="5j905zHgnuy" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
            </node>
            <node concept="BsUDl" id="5j905zHgo64" role="33vP2m">
              <ref role="37wK5l" node="5j905zH3p3U" resolve="dObject" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1KqhpdFRBWf" role="3cqZAp">
          <node concept="3cpWsn" id="1KqhpdFRBWg" role="3cpWs9">
            <property role="TrG5h" value="dMessage" />
            <node concept="3uibUv" id="1KqhpdFRH2d" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
            </node>
            <node concept="BsUDl" id="1KqhpdFRGKb" role="33vP2m">
              <ref role="37wK5l" node="1KqhpdFQcyk" resolve="dMessage" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5j905zHgti6" role="3cqZAp">
          <node concept="3cpWsn" id="5j905zHgti7" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3uibUv" id="5j905zHgti8" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DMessageType" resolve="DMessageType" />
            </node>
            <node concept="BsUDl" id="5j905zHgtRI" role="33vP2m">
              <ref role="37wK5l" node="5j905zHfN9d" resolve="type" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5j905zHgyHV" role="3cqZAp">
          <node concept="3cpWsn" id="5j905zHgyHW" role="3cpWs9">
            <property role="TrG5h" value="getter" />
            <node concept="3uibUv" id="5j905zHgyHU" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~Getter" resolve="Getter" />
            </node>
            <node concept="BsUDl" id="5j905zHgyHX" role="33vP2m">
              <ref role="37wK5l" node="5j905zH3nNX" resolve="getter" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5TKknZxas_s" role="3cqZAp">
          <node concept="3cpWsn" id="5TKknZxas_t" role="3cpWs9">
            <property role="TrG5h" value="dClareMPS" />
            <node concept="3uibUv" id="5TKknZxas_u" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
            </node>
            <node concept="2OqwBi" id="5TKknZxav6p" role="33vP2m">
              <node concept="37vLTw" id="5TKknZxav0l" role="2Oq$k0">
                <ref role="3cqZAo" node="5j905zHgyHW" resolve="getter" />
              </node>
              <node concept="liA8E" id="5TKknZxavct" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~Getter.get(java.util.function.Supplier):java.lang.Object" resolve="get" />
                <node concept="1bVj0M" id="5TKknZxavd1" role="37wK5m">
                  <node concept="3clFbS" id="5TKknZxavd2" role="1bW5cS">
                    <node concept="3clFbF" id="5TKknZxavkS" role="3cqZAp">
                      <node concept="2YIFZM" id="5TKknZxavlL" role="3clFbG">
                        <ref role="37wK5l" to="t4tl:~DClareMPS.instance():org.modelingvalue.dclare.mps.DClareMPS" resolve="instance" />
                        <ref role="1Pybhc" to="t4tl:~DClareMPS" resolve="DClareMPS" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5TKknZxaxkL" role="3cqZAp">
          <node concept="2OqwBi" id="5TKknZxaznJ" role="3clFbG">
            <node concept="37vLTw" id="5TKknZxaxkJ" role="2Oq$k0">
              <ref role="3cqZAo" node="5TKknZxas_t" resolve="dClareMPS" />
            </node>
            <node concept="liA8E" id="5TKknZxazAr" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DClareMPS.command(java.lang.Runnable):void" resolve="command" />
              <node concept="1bVj0M" id="5TKknZxazAT" role="37wK5m">
                <node concept="3clFbS" id="5TKknZxazAU" role="1bW5cS">
                  <node concept="3clFbJ" id="1KqhpdFKLJ1" role="3cqZAp">
                    <node concept="3clFbS" id="1KqhpdFKLJ3" role="3clFbx">
                      <node concept="3clFbJ" id="1KqhpdFRPGz" role="3cqZAp">
                        <node concept="3clFbS" id="1KqhpdFRPG_" role="3clFbx">
                          <node concept="3cpWs8" id="1KqhpdFS8Pc" role="3cqZAp">
                            <node concept="3cpWsn" id="1KqhpdFS8Pf" role="3cpWs9">
                              <property role="TrG5h" value="messages" />
                              <node concept="3uibUv" id="1KqhpdFS8Pg" role="1tU5fm">
                                <ref role="3uigEE" to="zrbp:~Set" resolve="Set" />
                                <node concept="3Tqbb2" id="1KqhpdFS8Ph" role="11_B2D">
                                  <ref role="ehGHo" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1KqhpdFS8Pi" role="33vP2m">
                                <node concept="2OqwBi" id="1KqhpdFS8Pj" role="2Oq$k0">
                                  <node concept="1eOMI4" id="1KqhpdFS8Pk" role="2Oq$k0">
                                    <node concept="10QFUN" id="1KqhpdFS8Pl" role="1eOMHV">
                                      <node concept="3uibUv" id="1KqhpdFS8Pm" role="10QFUM">
                                        <ref role="3uigEE" to="zrbp:~List" resolve="List" />
                                        <node concept="3uibUv" id="1KqhpdFS8Pq" role="11_B2D">
                                          <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="1KqhpdFS8Pr" role="10QFUP">
                                        <node concept="liA8E" id="1KqhpdFS8Ps" role="2OqNvi">
                                          <ref role="37wK5l" to="t4tl:~Getter.get(java.util.function.Supplier):java.lang.Object" resolve="get" />
                                          <node concept="1bVj0M" id="1KqhpdFS8Pt" role="37wK5m">
                                            <node concept="3clFbS" id="1KqhpdFS8Pu" role="1bW5cS">
                                              <node concept="3clFbF" id="1KqhpdFS8Pv" role="3cqZAp">
                                                <node concept="2OqwBi" id="1KqhpdFS8Pw" role="3clFbG">
                                                  <node concept="37vLTw" id="1KqhpdFSCGB" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="1KqhpdFRBWg" resolve="dMessage" />
                                                  </node>
                                                  <node concept="liA8E" id="1KqhpdFS8Py" role="2OqNvi">
                                                    <ref role="37wK5l" to="t4tl:~DMessage.subMessages():org.modelingvalue.collections.List" resolve="subMessages" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="1KqhpdFS8P$" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5j905zHgyHW" resolve="getter" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="1KqhpdFS8P_" role="2OqNvi">
                                    <ref role="37wK5l" to="zrbp:~Collection.map(java.util.function.Function):org.modelingvalue.collections.Collection" resolve="map" />
                                    <node concept="1bVj0M" id="1KqhpdFS8PA" role="37wK5m">
                                      <node concept="3clFbS" id="1KqhpdFS8PB" role="1bW5cS">
                                        <node concept="3clFbF" id="1KqhpdFS8PC" role="3cqZAp">
                                          <node concept="2OqwBi" id="1KqhpdFS8PD" role="3clFbG">
                                            <node concept="35c_gC" id="1KqhpdFS8PE" role="2Oq$k0">
                                              <ref role="35c_gD" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                                            </node>
                                            <node concept="2qgKlT" id="1KqhpdFS8PF" role="2OqNvi">
                                              <ref role="37wK5l" node="1KqhpdFNfb5" resolve="create" />
                                              <node concept="37vLTw" id="1KqhpdFS8PG" role="37wK5m">
                                                <ref role="3cqZAo" node="1KqhpdFS8PJ" resolve="m" />
                                              </node>
                                              <node concept="37vLTw" id="1KqhpdFS8PH" role="37wK5m">
                                                <ref role="3cqZAo" node="5j905zHgyHW" resolve="getter" />
                                              </node>
                                              <node concept="37vLTw" id="1KqhpdFS8PI" role="37wK5m">
                                                <ref role="3cqZAo" node="5j905zHgti7" resolve="type" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTG" id="1KqhpdFS8PJ" role="1bW2Oz">
                                        <property role="TrG5h" value="m" />
                                        <node concept="3uibUv" id="1KqhpdFS8PK" role="1tU5fm">
                                          <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="1KqhpdFS8PL" role="2OqNvi">
                                  <ref role="37wK5l" to="zrbp:~Collection.toSet():org.modelingvalue.collections.Set" resolve="toSet" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1KqhpdFSl5n" role="3cqZAp">
                            <node concept="2OqwBi" id="1KqhpdFSl5o" role="3clFbG">
                              <node concept="2OqwBi" id="1KqhpdFSl5p" role="2Oq$k0">
                                <node concept="13iPFW" id="1KqhpdFSl5q" role="2Oq$k0" />
                                <node concept="3Tsc0h" id="1KqhpdFSl5r" role="2OqNvi">
                                  <ref role="3TtcxE" to="wknp:7e_PmaZxfxA" resolve="children" />
                                </node>
                              </node>
                              <node concept="X8dFx" id="1KqhpdFSl5s" role="2OqNvi">
                                <node concept="37vLTw" id="1KqhpdFSl5t" role="25WWJ7">
                                  <ref role="3cqZAo" node="1KqhpdFS8Pf" resolve="messages" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="1KqhpdFS2nT" role="3clFbw">
                          <node concept="10Nm6u" id="1KqhpdFS6Cv" role="3uHU7w" />
                          <node concept="37vLTw" id="1KqhpdFRUvi" role="3uHU7B">
                            <ref role="3cqZAo" node="1KqhpdFRBWg" resolve="dMessage" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="5j905zHgoGB" role="3cqZAp">
                        <node concept="3clFbS" id="5j905zHgoGD" role="3clFbx">
                          <node concept="3cpWs8" id="1KqhpdFMss$" role="3cqZAp">
                            <node concept="3cpWsn" id="1KqhpdFMss_" role="3cpWs9">
                              <property role="TrG5h" value="messages" />
                              <node concept="3uibUv" id="1KqhpdFMssA" role="1tU5fm">
                                <ref role="3uigEE" to="zrbp:~Set" resolve="Set" />
                                <node concept="3Tqbb2" id="1KqhpdFMssB" role="11_B2D">
                                  <ref role="ehGHo" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1KqhpdFMssC" role="33vP2m">
                                <node concept="2OqwBi" id="1KqhpdFMssD" role="2Oq$k0">
                                  <node concept="1eOMI4" id="1KqhpdFNT4j" role="2Oq$k0">
                                    <node concept="10QFUN" id="1KqhpdFNWiD" role="1eOMHV">
                                      <node concept="3uibUv" id="1KqhpdFO2b0" role="10QFUM">
                                        <ref role="3uigEE" to="zrbp:~QualifiedSet" resolve="QualifiedSet" />
                                        <node concept="3uibUv" id="1KqhpdFOg2S" role="11_B2D">
                                          <ref role="3uigEE" to="42m3:~Pair" resolve="Pair" />
                                          <node concept="3uibUv" id="1KqhpdFOucZ" role="11_B2D">
                                            <ref role="3uigEE" to="t4tl:~DFeature" resolve="DFeature" />
                                          </node>
                                          <node concept="3uibUv" id="1KqhpdFOz2H" role="11_B2D">
                                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                          </node>
                                        </node>
                                        <node concept="3uibUv" id="1KqhpdFO7fB" role="11_B2D">
                                          <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="1KqhpdFMssU" role="10QFUP">
                                        <node concept="liA8E" id="1KqhpdFMssV" role="2OqNvi">
                                          <ref role="37wK5l" to="t4tl:~Getter.get(java.util.function.Supplier):java.lang.Object" resolve="get" />
                                          <node concept="1bVj0M" id="1KqhpdFMssW" role="37wK5m">
                                            <node concept="3clFbS" id="1KqhpdFMssX" role="1bW5cS">
                                              <node concept="3clFbF" id="1KqhpdFMssY" role="3cqZAp">
                                                <node concept="2OqwBi" id="1KqhpdFMssZ" role="3clFbG">
                                                  <node concept="37vLTw" id="1KqhpdFMst0" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="5j905zHgnux" resolve="dObject" />
                                                  </node>
                                                  <node concept="liA8E" id="1KqhpdFMst1" role="2OqNvi">
                                                    <ref role="37wK5l" to="t4tl:~DObject.getMessages(org.modelingvalue.dclare.mps.DMessageType):org.modelingvalue.collections.QualifiedSet" resolve="getMessages" />
                                                    <node concept="37vLTw" id="1KqhpdFMst2" role="37wK5m">
                                                      <ref role="3cqZAo" node="5j905zHgti7" resolve="type" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="1KqhpdFMst3" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5j905zHgyHW" resolve="getter" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="1KqhpdFOGd0" role="2OqNvi">
                                    <ref role="37wK5l" to="zrbp:~Collection.map(java.util.function.Function):org.modelingvalue.collections.Collection" resolve="map" />
                                    <node concept="1bVj0M" id="1KqhpdFOOzY" role="37wK5m">
                                      <node concept="3clFbS" id="1KqhpdFOO$0" role="1bW5cS">
                                        <node concept="3clFbF" id="1KqhpdFP61V" role="3cqZAp">
                                          <node concept="2OqwBi" id="1KqhpdFP61X" role="3clFbG">
                                            <node concept="35c_gC" id="1KqhpdFP61Y" role="2Oq$k0">
                                              <ref role="35c_gD" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                                            </node>
                                            <node concept="2qgKlT" id="1KqhpdFP61Z" role="2OqNvi">
                                              <ref role="37wK5l" node="1KqhpdFNfb5" resolve="create" />
                                              <node concept="37vLTw" id="1KqhpdFP$2M" role="37wK5m">
                                                <ref role="3cqZAo" node="1KqhpdFORO_" resolve="m" />
                                              </node>
                                              <node concept="37vLTw" id="1KqhpdFPGLa" role="37wK5m">
                                                <ref role="3cqZAo" node="5j905zHgyHW" resolve="getter" />
                                              </node>
                                              <node concept="37vLTw" id="1KqhpdFP622" role="37wK5m">
                                                <ref role="3cqZAo" node="5j905zHgti7" resolve="type" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTG" id="1KqhpdFORO_" role="1bW2Oz">
                                        <property role="TrG5h" value="m" />
                                        <node concept="3uibUv" id="1KqhpdFOVGw" role="1tU5fm">
                                          <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="1KqhpdFMst4" role="2OqNvi">
                                  <ref role="37wK5l" to="zrbp:~Collection.toSet():org.modelingvalue.collections.Set" resolve="toSet" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="1KqhpdFKec5" role="3cqZAp">
                            <node concept="3cpWsn" id="5TKknZx2vkT" role="3cpWs9">
                              <property role="TrG5h" value="children" />
                              <node concept="3uibUv" id="5TKknZx2vkf" role="1tU5fm">
                                <ref role="3uigEE" to="zrbp:~Set" resolve="Set" />
                                <node concept="3Tqbb2" id="5TKknZx38qs" role="11_B2D">
                                  <ref role="ehGHo" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="5TKknZx2E8G" role="33vP2m">
                                <node concept="2OqwBi" id="5TKknZx2y$O" role="2Oq$k0">
                                  <node concept="liA8E" id="5TKknZx2$$j" role="2OqNvi">
                                    <ref role="37wK5l" to="zrbp:~Collection.map(java.util.function.Function):org.modelingvalue.collections.Collection" resolve="map" />
                                    <node concept="1bVj0M" id="5TKknZx2_lw" role="37wK5m">
                                      <node concept="3clFbS" id="5TKknZx2_lx" role="1bW5cS">
                                        <node concept="3clFbF" id="5TKknZx2CSM" role="3cqZAp">
                                          <node concept="2OqwBi" id="5j905zH3P0i" role="3clFbG">
                                            <node concept="35c_gC" id="5j905zH3P0j" role="2Oq$k0">
                                              <ref role="35c_gD" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                                            </node>
                                            <node concept="2qgKlT" id="5j905zH3P0k" role="2OqNvi">
                                              <ref role="37wK5l" node="5j905zH3rvX" resolve="create" />
                                              <node concept="37vLTw" id="5TKknZx319U" role="37wK5m">
                                                <ref role="3cqZAo" node="5TKknZx2Aj6" resolve="e" />
                                              </node>
                                              <node concept="37vLTw" id="5j905zH3P0m" role="37wK5m">
                                                <ref role="3cqZAo" node="5j905zHgyHW" resolve="getter" />
                                              </node>
                                              <node concept="37vLTw" id="1KqhpdFMdM5" role="37wK5m">
                                                <ref role="3cqZAo" node="5j905zHgti7" resolve="type" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTG" id="5TKknZx2Aj6" role="1bW2Oz">
                                        <property role="TrG5h" value="e" />
                                        <node concept="3uibUv" id="5TKknZx2B2p" role="1tU5fm">
                                          <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="1eOMI4" id="5TKknZx35Lf" role="2Oq$k0">
                                    <node concept="10QFUN" id="5TKknZx2vkU" role="1eOMHV">
                                      <node concept="3uibUv" id="5TKknZx2vl5" role="10QFUM">
                                        <ref role="3uigEE" to="zrbp:~Set" resolve="Set" />
                                        <node concept="3uibUv" id="5TKknZx2vl6" role="11_B2D">
                                          <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="5TKknZx2vkV" role="10QFUP">
                                        <node concept="liA8E" id="5TKknZx2vkW" role="2OqNvi">
                                          <ref role="37wK5l" to="t4tl:~Getter.get(java.util.function.Supplier):java.lang.Object" resolve="get" />
                                          <node concept="1bVj0M" id="5TKknZx2vkX" role="37wK5m">
                                            <node concept="3clFbS" id="5TKknZx2vkY" role="1bW5cS">
                                              <node concept="3clFbF" id="5TKknZx2vkZ" role="3cqZAp">
                                                <node concept="2OqwBi" id="5TKknZx2vl0" role="3clFbG">
                                                  <node concept="37vLTw" id="5TKknZx2vl1" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="5j905zHgnux" resolve="dObject" />
                                                  </node>
                                                  <node concept="liA8E" id="5TKknZx2vl2" role="2OqNvi">
                                                    <ref role="37wK5l" to="t4tl:~DObject.getMessageChildren(org.modelingvalue.dclare.mps.DMessageType):org.modelingvalue.collections.Set" resolve="getMessageChildren" />
                                                    <node concept="37vLTw" id="5TKknZx2vl3" role="37wK5m">
                                                      <ref role="3cqZAo" node="5j905zHgti7" resolve="type" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="5TKknZx2vl4" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5j905zHgyHW" resolve="getter" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="5TKknZx2GrJ" role="2OqNvi">
                                  <ref role="37wK5l" to="zrbp:~Collection.toSet():org.modelingvalue.collections.Set" resolve="toSet" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1KqhpdFMD1x" role="3cqZAp">
                            <node concept="2OqwBi" id="1KqhpdFMKGG" role="3clFbG">
                              <node concept="2OqwBi" id="1KqhpdFMEVN" role="2Oq$k0">
                                <node concept="13iPFW" id="1KqhpdFMD1v" role="2Oq$k0" />
                                <node concept="3Tsc0h" id="1KqhpdFMGkq" role="2OqNvi">
                                  <ref role="3TtcxE" to="wknp:7e_PmaZxfxA" resolve="children" />
                                </node>
                              </node>
                              <node concept="X8dFx" id="1KqhpdFMOf2" role="2OqNvi">
                                <node concept="37vLTw" id="1KqhpdFMSm5" role="25WWJ7">
                                  <ref role="3cqZAo" node="1KqhpdFMss_" resolve="messages" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="30f$n$3hxKU" role="3cqZAp">
                            <node concept="2OqwBi" id="5TKknZx2Mo6" role="3clFbG">
                              <node concept="2OqwBi" id="5TKknZx2KiN" role="2Oq$k0">
                                <node concept="13iPFW" id="5TKknZx2JIJ" role="2Oq$k0" />
                                <node concept="3Tsc0h" id="5TKknZx2KPj" role="2OqNvi">
                                  <ref role="3TtcxE" to="wknp:7e_PmaZxfxA" resolve="children" />
                                </node>
                              </node>
                              <node concept="X8dFx" id="5TKknZx2O6x" role="2OqNvi">
                                <node concept="37vLTw" id="5TKknZx2ZpJ" role="25WWJ7">
                                  <ref role="3cqZAo" node="5TKknZx2vkT" resolve="children" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="5j905zHgp$K" role="3clFbw">
                          <node concept="10Nm6u" id="5j905zHgp_d" role="3uHU7w" />
                          <node concept="37vLTw" id="5j905zHgpk7" role="3uHU7B">
                            <ref role="3cqZAo" node="5j905zHgnux" resolve="dObject" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1KqhpdFKVVS" role="3clFbw">
                      <node concept="2OqwBi" id="1KqhpdFKPY7" role="2Oq$k0">
                        <node concept="13iPFW" id="1KqhpdFKOLM" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="1KqhpdFKT8n" role="2OqNvi">
                          <ref role="3TtcxE" to="wknp:7e_PmaZxfxA" resolve="children" />
                        </node>
                      </node>
                      <node concept="1v1jN8" id="1KqhpdFKYIs" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1KqhpdFNfb5" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="create" />
      <node concept="37vLTG" id="1KqhpdFNfb6" role="3clF46">
        <property role="TrG5h" value="dMessage" />
        <node concept="3uibUv" id="1KqhpdFNmP7" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
        </node>
      </node>
      <node concept="37vLTG" id="1KqhpdFNfb8" role="3clF46">
        <property role="TrG5h" value="getter" />
        <node concept="3uibUv" id="1KqhpdFNfb9" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~Getter" resolve="Getter" />
        </node>
      </node>
      <node concept="37vLTG" id="1KqhpdFNfba" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="1KqhpdFNfbb" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DMessageType" resolve="DMessageType" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1KqhpdFNfbc" role="1B3o_S" />
      <node concept="3Tqbb2" id="1KqhpdFNfbd" role="3clF45">
        <ref role="ehGHo" to="wknp:7e_PmaZxfwQ" resolve="Message" />
      </node>
      <node concept="3clFbS" id="1KqhpdFNfbe" role="3clF47">
        <node concept="3cpWs8" id="1KqhpdFNfbf" role="3cqZAp">
          <node concept="3cpWsn" id="1KqhpdFNfbg" role="3cpWs9">
            <property role="TrG5h" value="message" />
            <node concept="3Tqbb2" id="1KqhpdFNfbh" role="1tU5fm">
              <ref role="ehGHo" to="wknp:7e_PmaZxfwQ" resolve="Message" />
            </node>
            <node concept="2pJPEk" id="1KqhpdFNfbi" role="33vP2m">
              <node concept="2pJPED" id="1KqhpdFNfbj" role="2pJPEn">
                <ref role="2pJxaS" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                <node concept="2pJxcG" id="1KqhpdFQ3Pv" role="2pJxcM">
                  <ref role="2pJxcJ" to="wknp:IcHFOtrcMv" resolve="id" />
                  <node concept="2OqwBi" id="1KqhpdFQ5Bh" role="2pJxcZ">
                    <node concept="37vLTw" id="1KqhpdFQ4h$" role="2Oq$k0">
                      <ref role="3cqZAo" node="1KqhpdFNfb6" resolve="dMessage" />
                    </node>
                    <node concept="liA8E" id="1KqhpdFQ72W" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DMessage.id():java.lang.String" resolve="id" />
                    </node>
                  </node>
                </node>
                <node concept="2pJxcG" id="1KqhpdFNfbk" role="2pJxcM">
                  <ref role="2pJxcJ" to="wknp:IcHFOtrcNa" resolve="text" />
                  <node concept="2OqwBi" id="1KqhpdFPPmd" role="2pJxcZ">
                    <node concept="2OqwBi" id="1KqhpdFPLPk" role="2Oq$k0">
                      <node concept="37vLTw" id="1KqhpdFPKvB" role="2Oq$k0">
                        <ref role="3cqZAo" node="1KqhpdFNfb6" resolve="dMessage" />
                      </node>
                      <node concept="liA8E" id="1KqhpdFPPh7" role="2OqNvi">
                        <ref role="37wK5l" to="t4tl:~DMessage.content():java.lang.Object" resolve="content" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1KqhpdFPPr9" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                </node>
                <node concept="2pJxcG" id="1KqhpdFPZRR" role="2pJxcM">
                  <ref role="2pJxcJ" to="wknp:4hagRHmzsU3" resolve="context" />
                  <node concept="2OqwBi" id="1KqhpdFQ3ck" role="2pJxcZ">
                    <node concept="2OqwBi" id="1KqhpdFQ1CH" role="2Oq$k0">
                      <node concept="37vLTw" id="1KqhpdFQ0j0" role="2Oq$k0">
                        <ref role="3cqZAo" node="1KqhpdFNfb6" resolve="dMessage" />
                      </node>
                      <node concept="liA8E" id="1KqhpdFQ34o" role="2OqNvi">
                        <ref role="37wK5l" to="t4tl:~DMessage.context():org.modelingvalue.dclare.mps.DObject" resolve="context" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1KqhpdFQ3jR" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DObject.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                </node>
                <node concept="2pJxcG" id="1KqhpdFNfbq" role="2pJxcM">
                  <ref role="2pJxcJ" to="wknp:5FinwQP4DTI" resolve="type" />
                  <node concept="BsUDl" id="1KqhpdFNfbr" role="2pJxcZ">
                    <ref role="37wK5l" node="30f$n$3cdv6" resolve="getType" />
                    <node concept="37vLTw" id="1KqhpdFNfbs" role="37wK5m">
                      <ref role="3cqZAo" node="1KqhpdFNfba" resolve="type" />
                    </node>
                  </node>
                </node>
                <node concept="2pIpSj" id="1KqhpdFNfbt" role="2pJxcM">
                  <ref role="2pIpSl" to="wknp:7e_PmaZxfxC" resolve="source" />
                  <node concept="36biLy" id="1KqhpdFNfbu" role="2pJxcZ">
                    <node concept="2OqwBi" id="1KqhpdFPRd$" role="36biLW">
                      <node concept="37vLTw" id="1KqhpdFPPRP" role="2Oq$k0">
                        <ref role="3cqZAo" node="1KqhpdFNfb6" resolve="dMessage" />
                      </node>
                      <node concept="liA8E" id="1KqhpdFPSDh" role="2OqNvi">
                        <ref role="37wK5l" to="t4tl:~DMessage.source():org.jetbrains.mps.openapi.model.SNode" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KqhpdFNfbD" role="3cqZAp">
          <node concept="2OqwBi" id="1KqhpdFNfbE" role="3clFbG">
            <node concept="2JrnkZ" id="1KqhpdFNfbF" role="2Oq$k0">
              <node concept="37vLTw" id="1KqhpdFNfbG" role="2JrQYb">
                <ref role="3cqZAo" node="1KqhpdFNfbg" resolve="message" />
              </node>
            </node>
            <node concept="liA8E" id="1KqhpdFNfbH" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object):void" resolve="putUserObject" />
              <node concept="Xl_RD" id="1KqhpdFNfbI" role="37wK5m">
                <property role="Xl_RC" value="D_MESSAGE" />
              </node>
              <node concept="37vLTw" id="1KqhpdFNfbJ" role="37wK5m">
                <ref role="3cqZAo" node="1KqhpdFNfb6" resolve="dMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KqhpdFNfbK" role="3cqZAp">
          <node concept="2OqwBi" id="1KqhpdFNfbL" role="3clFbG">
            <node concept="2JrnkZ" id="1KqhpdFNfbM" role="2Oq$k0">
              <node concept="37vLTw" id="1KqhpdFNfbN" role="2JrQYb">
                <ref role="3cqZAo" node="1KqhpdFNfbg" resolve="message" />
              </node>
            </node>
            <node concept="liA8E" id="1KqhpdFNfbO" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object):void" resolve="putUserObject" />
              <node concept="Xl_RD" id="1KqhpdFNfbP" role="37wK5m">
                <property role="Xl_RC" value="GETTER" />
              </node>
              <node concept="37vLTw" id="1KqhpdFNfbQ" role="37wK5m">
                <ref role="3cqZAo" node="1KqhpdFNfb8" resolve="getter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KqhpdFNfbR" role="3cqZAp">
          <node concept="2OqwBi" id="1KqhpdFNfbS" role="3clFbG">
            <node concept="2JrnkZ" id="1KqhpdFNfbT" role="2Oq$k0">
              <node concept="37vLTw" id="1KqhpdFNfbU" role="2JrQYb">
                <ref role="3cqZAo" node="1KqhpdFNfbg" resolve="message" />
              </node>
            </node>
            <node concept="liA8E" id="1KqhpdFNfbV" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object):void" resolve="putUserObject" />
              <node concept="Xl_RD" id="1KqhpdFNfbW" role="37wK5m">
                <property role="Xl_RC" value="D_TYPE" />
              </node>
              <node concept="37vLTw" id="1KqhpdFNfbX" role="37wK5m">
                <ref role="3cqZAo" node="1KqhpdFNfba" resolve="type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KqhpdFNfbY" role="3cqZAp">
          <node concept="37vLTw" id="1KqhpdFNfbZ" role="3clFbG">
            <ref role="3cqZAo" node="1KqhpdFNfbg" resolve="message" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5j905zH3rvX" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="create" />
      <node concept="37vLTG" id="5j905zH3rzL" role="3clF46">
        <property role="TrG5h" value="dObject" />
        <node concept="3uibUv" id="5j905zH3rzZ" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
        </node>
      </node>
      <node concept="37vLTG" id="5j905zH3AoH" role="3clF46">
        <property role="TrG5h" value="getter" />
        <node concept="3uibUv" id="5j905zH3AsB" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~Getter" resolve="Getter" />
        </node>
      </node>
      <node concept="37vLTG" id="5j905zH6rFZ" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="5j905zH6rQP" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DMessageType" resolve="DMessageType" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5j905zH3rvY" role="1B3o_S" />
      <node concept="3Tqbb2" id="5j905zH3wOd" role="3clF45">
        <ref role="ehGHo" to="wknp:7e_PmaZxfwQ" resolve="Message" />
      </node>
      <node concept="3clFbS" id="5j905zH3rw0" role="3clF47">
        <node concept="3cpWs8" id="5j905zH3$24" role="3cqZAp">
          <node concept="3cpWsn" id="5j905zH3$25" role="3cpWs9">
            <property role="TrG5h" value="message" />
            <node concept="3Tqbb2" id="5j905zH3$1X" role="1tU5fm">
              <ref role="ehGHo" to="wknp:7e_PmaZxfwQ" resolve="Message" />
            </node>
            <node concept="2pJPEk" id="5j905zH3$26" role="33vP2m">
              <node concept="2pJPED" id="5j905zH3$27" role="2pJPEn">
                <ref role="2pJxaS" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                <node concept="2pJxcG" id="5j905zH3$28" role="2pJxcM">
                  <ref role="2pJxcJ" to="wknp:IcHFOtrcNa" resolve="text" />
                  <node concept="2OqwBi" id="1KqhpdG7lHo" role="2pJxcZ">
                    <node concept="37vLTw" id="5j905zH3$2b" role="2Oq$k0">
                      <ref role="3cqZAo" node="5j905zH3rzL" resolve="dObject" />
                    </node>
                    <node concept="liA8E" id="1KqhpdG7lMY" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DObject.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                </node>
                <node concept="2pJxcG" id="5j905zH3$2c" role="2pJxcM">
                  <ref role="2pJxcJ" to="wknp:5FinwQP4DTI" resolve="type" />
                  <node concept="BsUDl" id="5j905zH6r6o" role="2pJxcZ">
                    <ref role="37wK5l" node="30f$n$3cdv6" resolve="getType" />
                    <node concept="37vLTw" id="5j905zH6rX2" role="37wK5m">
                      <ref role="3cqZAo" node="5j905zH6rFZ" resolve="type" />
                    </node>
                  </node>
                </node>
                <node concept="2pIpSj" id="5j905zH3$2e" role="2pJxcM">
                  <ref role="2pIpSl" to="wknp:7e_PmaZxfxC" resolve="source" />
                  <node concept="36biLy" id="5j905zH3$2f" role="2pJxcZ">
                    <node concept="3K4zz7" id="5j905zH3$2g" role="36biLW">
                      <node concept="2OqwBi" id="1KqhpdFTLn_" role="3K4E3e">
                        <node concept="1eOMI4" id="5j905zH3$2h" role="2Oq$k0">
                          <node concept="10QFUN" id="5j905zH3$2i" role="1eOMHV">
                            <node concept="3uibUv" id="5j905zH3$2j" role="10QFUM">
                              <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                            </node>
                            <node concept="37vLTw" id="5j905zH3$2k" role="10QFUP">
                              <ref role="3cqZAo" node="5j905zH3rzL" resolve="dObject" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="1KqhpdFTLHj" role="2OqNvi">
                          <ref role="37wK5l" to="t4tl:~DObject.original():java.lang.Object" resolve="original" />
                        </node>
                      </node>
                      <node concept="10Nm6u" id="5j905zH3$2l" role="3K4GZi" />
                      <node concept="1eOMI4" id="5j905zH3$2m" role="3K4Cdx">
                        <node concept="2ZW3vV" id="5j905zH3$2n" role="1eOMHV">
                          <node concept="3uibUv" id="5j905zH3$2o" role="2ZW6by">
                            <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                          </node>
                          <node concept="37vLTw" id="5j905zH3$2p" role="2ZW6bz">
                            <ref role="3cqZAo" node="5j905zH3rzL" resolve="dObject" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5j905zH1Bjk" role="3cqZAp">
          <node concept="2OqwBi" id="5j905zH1Bjl" role="3clFbG">
            <node concept="2JrnkZ" id="5j905zH1Bjm" role="2Oq$k0">
              <node concept="37vLTw" id="5j905zH1Bjn" role="2JrQYb">
                <ref role="3cqZAo" node="5j905zH3$25" resolve="message" />
              </node>
            </node>
            <node concept="liA8E" id="5j905zH1Bjo" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object):void" resolve="putUserObject" />
              <node concept="Xl_RD" id="5j905zH1Bjp" role="37wK5m">
                <property role="Xl_RC" value="D_OBJECT" />
              </node>
              <node concept="37vLTw" id="5j905zH3_fo" role="37wK5m">
                <ref role="3cqZAo" node="5j905zH3rzL" resolve="dObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5j905zH26Is" role="3cqZAp">
          <node concept="2OqwBi" id="5j905zH26It" role="3clFbG">
            <node concept="2JrnkZ" id="5j905zH26Iu" role="2Oq$k0">
              <node concept="37vLTw" id="5j905zH26Iv" role="2JrQYb">
                <ref role="3cqZAo" node="5j905zH3$25" resolve="message" />
              </node>
            </node>
            <node concept="liA8E" id="5j905zH26Iw" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object):void" resolve="putUserObject" />
              <node concept="Xl_RD" id="5j905zH26Ix" role="37wK5m">
                <property role="Xl_RC" value="GETTER" />
              </node>
              <node concept="37vLTw" id="5j905zH2qcY" role="37wK5m">
                <ref role="3cqZAo" node="5j905zH3AoH" resolve="getter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5j905zHfMLj" role="3cqZAp">
          <node concept="2OqwBi" id="5j905zHfMLk" role="3clFbG">
            <node concept="2JrnkZ" id="5j905zHfMLl" role="2Oq$k0">
              <node concept="37vLTw" id="5j905zHfMLm" role="2JrQYb">
                <ref role="3cqZAo" node="5j905zH3$25" resolve="message" />
              </node>
            </node>
            <node concept="liA8E" id="5j905zHfMLn" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object):void" resolve="putUserObject" />
              <node concept="Xl_RD" id="5j905zHfMLo" role="37wK5m">
                <property role="Xl_RC" value="D_TYPE" />
              </node>
              <node concept="37vLTw" id="5j905zHfMW8" role="37wK5m">
                <ref role="3cqZAo" node="5j905zH6rFZ" resolve="type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5j905zH3sPH" role="3cqZAp">
          <node concept="37vLTw" id="5j905zH3$2q" role="3clFbG">
            <ref role="3cqZAo" node="5j905zH3$25" resolve="message" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5j905zHfN9d" role="13h7CS">
      <property role="TrG5h" value="type" />
      <node concept="3Tm1VV" id="5j905zHfN9e" role="1B3o_S" />
      <node concept="3uibUv" id="5j905zHfNoq" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DMessageType" resolve="DMessageType" />
      </node>
      <node concept="3clFbS" id="5j905zHfN9g" role="3clF47">
        <node concept="3cpWs6" id="5j905zHfN9h" role="3cqZAp">
          <node concept="10QFUN" id="5j905zHfN9i" role="3cqZAk">
            <node concept="3uibUv" id="5j905zHfNq6" role="10QFUM">
              <ref role="3uigEE" to="t4tl:~DMessageType" resolve="DMessageType" />
            </node>
            <node concept="2OqwBi" id="5j905zHfN9k" role="10QFUP">
              <node concept="2JrnkZ" id="5j905zHfN9l" role="2Oq$k0">
                <node concept="13iPFW" id="5j905zHfN9m" role="2JrQYb" />
              </node>
              <node concept="liA8E" id="5j905zHfN9n" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object):java.lang.Object" resolve="getUserObject" />
                <node concept="Xl_RD" id="5j905zHfN9o" role="37wK5m">
                  <property role="Xl_RC" value="D_TYPE" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5j905zH3nNX" role="13h7CS">
      <property role="TrG5h" value="getter" />
      <node concept="3Tm1VV" id="5j905zH3nNY" role="1B3o_S" />
      <node concept="3uibUv" id="5j905zH3ojp" role="3clF45">
        <ref role="3uigEE" to="t4tl:~Getter" resolve="Getter" />
      </node>
      <node concept="3clFbS" id="5j905zH3nO0" role="3clF47">
        <node concept="3cpWs6" id="5j905zH3oVx" role="3cqZAp">
          <node concept="10QFUN" id="5j905zH3oXl" role="3cqZAk">
            <node concept="3uibUv" id="5j905zH3oZT" role="10QFUM">
              <ref role="3uigEE" to="t4tl:~Getter" resolve="Getter" />
            </node>
            <node concept="2OqwBi" id="5j905zH3oVy" role="10QFUP">
              <node concept="2JrnkZ" id="5j905zH3oVz" role="2Oq$k0">
                <node concept="13iPFW" id="5j905zH3oV$" role="2JrQYb" />
              </node>
              <node concept="liA8E" id="5j905zH3oV_" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object):java.lang.Object" resolve="getUserObject" />
                <node concept="Xl_RD" id="5j905zH3oVA" role="37wK5m">
                  <property role="Xl_RC" value="GETTER" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5j905zH3p3U" role="13h7CS">
      <property role="TrG5h" value="dObject" />
      <node concept="3Tm1VV" id="5j905zH3p3V" role="1B3o_S" />
      <node concept="3uibUv" id="5j905zH3qJj" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
      </node>
      <node concept="3clFbS" id="5j905zH3p3X" role="3clF47">
        <node concept="3cpWs6" id="5j905zH3p3Y" role="3cqZAp">
          <node concept="10QFUN" id="5j905zH3p3Z" role="3cqZAk">
            <node concept="3uibUv" id="5j905zH3qMa" role="10QFUM">
              <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
            </node>
            <node concept="2OqwBi" id="5j905zH3p41" role="10QFUP">
              <node concept="2JrnkZ" id="5j905zH3p42" role="2Oq$k0">
                <node concept="13iPFW" id="5j905zH3p43" role="2JrQYb" />
              </node>
              <node concept="liA8E" id="5j905zH3p44" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object):java.lang.Object" resolve="getUserObject" />
                <node concept="Xl_RD" id="5j905zH3p45" role="37wK5m">
                  <property role="Xl_RC" value="D_OBJECT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1KqhpdFQcyk" role="13h7CS">
      <property role="TrG5h" value="dMessage" />
      <node concept="3Tm1VV" id="1KqhpdFQcyl" role="1B3o_S" />
      <node concept="3uibUv" id="1KqhpdFQiiw" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
      </node>
      <node concept="3clFbS" id="1KqhpdFQcyn" role="3clF47">
        <node concept="3cpWs6" id="1KqhpdFQcyo" role="3cqZAp">
          <node concept="10QFUN" id="1KqhpdFQcyp" role="3cqZAk">
            <node concept="3uibUv" id="1KqhpdFQj1u" role="10QFUM">
              <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
            </node>
            <node concept="2OqwBi" id="1KqhpdFQcyr" role="10QFUP">
              <node concept="2JrnkZ" id="1KqhpdFQcys" role="2Oq$k0">
                <node concept="13iPFW" id="1KqhpdFQcyt" role="2JrQYb" />
              </node>
              <node concept="liA8E" id="1KqhpdFQcyu" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object):java.lang.Object" resolve="getUserObject" />
                <node concept="Xl_RD" id="1KqhpdFQcyv" role="37wK5m">
                  <property role="Xl_RC" value="D_MESSAGE" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="30f$n$3ce3q" role="13h7CW">
      <node concept="3clFbS" id="30f$n$3ce3r" role="2VODD2" />
    </node>
  </node>
</model>

