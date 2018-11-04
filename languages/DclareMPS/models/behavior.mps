<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e7d7a1fa-fb58-4cf6-bc1d-e5ed722e0c61(DclareMPS.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="t4tl" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.dclare.mps(DclareMPSRuntime/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpeu" ref="r:00000000-0000-4000-0000-011c895902fa(jetbrains.mps.lang.smodel.behavior)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="tp3r" ref="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
        <property id="1225194472833" name="isPrivate" index="13i0is" />
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194628440" name="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" flags="nn" index="13iAh5" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="13h7C7" id="4SfaQIrYtVV">
    <ref role="13h7C2" to="7ggn:4SfaQIrYs9U" resolve="RuleSet" />
    <node concept="13i0hz" id="29R9$$07pwg" role="13h7CS">
      <property role="TrG5h" value="getRules" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="29R9$$07oyq" resolve="getRules" />
      <node concept="3Tm1VV" id="29R9$$07pwh" role="1B3o_S" />
      <node concept="3clFbS" id="29R9$$07pwi" role="3clF47">
        <node concept="3clFbF" id="3pElVuqnxGd" role="3cqZAp">
          <node concept="2OqwBi" id="5ZOs9Jxrxba" role="3clFbG">
            <node concept="2OqwBi" id="3pElVuqnxRt" role="2Oq$k0">
              <node concept="13iPFW" id="3pElVuqnxGc" role="2Oq$k0" />
              <node concept="3Tsc0h" id="3pElVuqny32" role="2OqNvi">
                <ref role="3TtcxE" to="7ggn:1Sb3mAPvInz" resolve="elements" />
              </node>
            </node>
            <node concept="v3k3i" id="5ZOs9Jxrycd" role="2OqNvi">
              <node concept="chp4Y" id="5ZOs9Jxryfo" role="v3oSu">
                <ref role="cht4Q" to="7ggn:29R9$zZUovC" resolve="AbstractRule" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5ZOs9JxrvIB" role="3clF45">
        <node concept="3Tqbb2" id="5ZOs9JxrvMM" role="A3Ik2">
          <ref role="ehGHo" to="7ggn:29R9$zZUovC" resolve="AbstractRule" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1lQ5DPQzE1a" role="13h7CS">
      <property role="TrG5h" value="getAttributes" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="1lQ5DPQzkip" resolve="getAttributes" />
      <node concept="3clFbS" id="1lQ5DPQzE1b" role="3clF47">
        <node concept="3clFbF" id="1lQ5DPQzE1c" role="3cqZAp">
          <node concept="2OqwBi" id="1lQ5DPQzE1d" role="3clFbG">
            <node concept="2OqwBi" id="1lQ5DPQzE1e" role="2Oq$k0">
              <node concept="13iPFW" id="1lQ5DPQzE1f" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1lQ5DPQzE1g" role="2OqNvi">
                <ref role="3TtcxE" to="7ggn:1Sb3mAPvInz" resolve="elements" />
              </node>
            </node>
            <node concept="v3k3i" id="1lQ5DPQzE1h" role="2OqNvi">
              <node concept="chp4Y" id="1lQ5DPQzE1i" role="v3oSu">
                <ref role="cht4Q" to="7ggn:4$MeK2bmw9s" resolve="AbstractAttribute" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="1lQ5DPQzE1j" role="3clF45">
        <node concept="3Tqbb2" id="1lQ5DPQzE1k" role="A3Ik2">
          <ref role="ehGHo" to="7ggn:4$MeK2bmw9s" resolve="AbstractAttribute" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1lQ5DPQzE1l" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="4SfaQIrYtVW" role="13h7CW">
      <node concept="3clFbS" id="4SfaQIrYtVX" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7UtH1mcE10l" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0is" value="false" />
      <property role="TrG5h" value="getMembers" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:hEwJjl2" resolve="getMembers" />
      <node concept="3Tm1VV" id="7UtH1mcE10q" role="1B3o_S" />
      <node concept="3clFbS" id="7UtH1mcE10r" role="3clF47">
        <node concept="3clFbF" id="7UtH1mcE10E" role="3cqZAp">
          <node concept="2OqwBi" id="7UtH1mcE1b6" role="3clFbG">
            <node concept="13iPFW" id="7UtH1mcE10D" role="2Oq$k0" />
            <node concept="3Tsc0h" id="7UtH1mcE1l6" role="2OqNvi">
              <ref role="3TtcxE" to="7ggn:1Sb3mAPvInz" resolve="elements" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="7UtH1mcE10s" role="3clF45" />
    </node>
    <node concept="13i0hz" id="3pElVuqYdko" role="13h7CS">
      <property role="TrG5h" value="addDerivedRules" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="3pElVuqPFEy" resolve="addDerived" />
      <node concept="3clFbS" id="3pElVuqYdkp" role="3clF47">
        <node concept="3clFbF" id="3pElVuqYdkq" role="3cqZAp">
          <node concept="2OqwBi" id="3pElVuqYdkr" role="3clFbG">
            <node concept="2OqwBi" id="3pElVuqYdks" role="2Oq$k0">
              <node concept="13iPFW" id="3pElVuqYdkt" role="2Oq$k0" />
              <node concept="3Tsc0h" id="3pElVuqYdku" role="2OqNvi">
                <ref role="3TtcxE" to="7ggn:1Sb3mAPvInz" resolve="elements" />
              </node>
            </node>
            <node concept="X8dFx" id="3pElVuqYdkv" role="2OqNvi">
              <node concept="10QFUN" id="3pElVuqYdkw" role="25WWJ7">
                <node concept="A3Dl8" id="3pElVuqYdkx" role="10QFUM">
                  <node concept="3Tqbb2" id="3pElVuqYdky" role="A3Ik2">
                    <ref role="ehGHo" to="7ggn:1Sb3mAPvh8b" resolve="Rule" />
                  </node>
                </node>
                <node concept="BsUDl" id="3pElVuqYdkz" role="10QFUP">
                  <ref role="37wK5l" node="3pElVuqPteM" resolve="getDerivedRules" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3pElVuqYdk$" role="3clF45" />
      <node concept="3Tm1VV" id="3pElVuqYdk_" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="5ZOs9JxFXE6" role="13h7CS">
      <property role="TrG5h" value="toRule" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="5ZOs9JxFLiV" resolve="toRule" />
      <node concept="3clFbS" id="5ZOs9JxFXE7" role="3clF47">
        <node concept="3cpWs8" id="5ZOs9JxFZYS" role="3cqZAp">
          <node concept="3cpWsn" id="5ZOs9JxFZYV" role="3cpWs9">
            <property role="TrG5h" value="rule" />
            <node concept="3Tqbb2" id="5ZOs9JxFZYQ" role="1tU5fm">
              <ref role="ehGHo" to="7ggn:1Sb3mAPvh8b" resolve="Rule" />
            </node>
            <node concept="2OqwBi" id="5ZOs9JxG0bW" role="33vP2m">
              <node concept="37vLTw" id="5ZOs9JxG02C" role="2Oq$k0">
                <ref role="3cqZAo" node="5ZOs9JxFXEl" resolve="part" />
              </node>
              <node concept="2Xjw5R" id="5ZOs9JxG0jo" role="2OqNvi">
                <node concept="1xMEDy" id="5ZOs9JxG0jq" role="1xVPHs">
                  <node concept="chp4Y" id="5ZOs9JxG0lS" role="ri$Ld">
                    <ref role="cht4Q" to="7ggn:1Sb3mAPvh8b" resolve="Rule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5ZOs9JxGcUX" role="3cqZAp">
          <node concept="3cpWsn" id="5ZOs9JxGcV0" role="3cpWs9">
            <property role="TrG5h" value="map" />
            <node concept="3Tqbb2" id="5ZOs9JxGcUV" role="1tU5fm">
              <ref role="ehGHo" to="7ggn:5ZOs9JxpqPU" resolve="Mapping" />
            </node>
            <node concept="2OqwBi" id="5ZOs9JxGd8V" role="33vP2m">
              <node concept="37vLTw" id="5ZOs9JxGcZB" role="2Oq$k0">
                <ref role="3cqZAo" node="5ZOs9JxFXEl" resolve="part" />
              </node>
              <node concept="2Xjw5R" id="5ZOs9JxGdgn" role="2OqNvi">
                <node concept="1xMEDy" id="5ZOs9JxGdgp" role="1xVPHs">
                  <node concept="chp4Y" id="5ZOs9JxGdiR" role="ri$Ld">
                    <ref role="cht4Q" to="7ggn:5ZOs9JxpqPU" resolve="Mapping" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5ZOs9JxG5Vn" role="3cqZAp">
          <node concept="3cpWsn" id="5ZOs9JxG5Vq" role="3cpWs9">
            <property role="TrG5h" value="ctx" />
            <node concept="3Tqbb2" id="5ZOs9JxG5Vl" role="1tU5fm">
              <ref role="ehGHo" to="7ggn:jVwYUSRkKt" resolve="ContextType" />
            </node>
            <node concept="3K4zz7" id="5ZOs9JxGaqN" role="33vP2m">
              <node concept="2OqwBi" id="5ZOs9JxGcdE" role="3K4E3e">
                <node concept="2OqwBi" id="5ZOs9JxGaMl" role="2Oq$k0">
                  <node concept="37vLTw" id="5ZOs9JxGasg" role="2Oq$k0">
                    <ref role="3cqZAo" node="5ZOs9JxFZYV" resolve="rule" />
                  </node>
                  <node concept="3TrEf2" id="5ZOs9JxGbqE" role="2OqNvi">
                    <ref role="3Tt5mk" to="7ggn:1Sb3mAPxB$N" resolve="context" />
                  </node>
                </node>
                <node concept="1$rogu" id="5ZOs9JxGcrN" role="2OqNvi" />
              </node>
              <node concept="2pJPEk" id="5ZOs9JxGcsF" role="3K4GZi">
                <node concept="2pJPED" id="5ZOs9JxGc$v" role="2pJPEn">
                  <ref role="2pJxaS" to="7ggn:1Sb3mAPxLpZ" resolve="NodeType" />
                  <node concept="2pIpSj" id="5ZOs9JxGcLr" role="2pJxcM">
                    <ref role="2pIpSl" to="7ggn:jVwYUSRpzw" resolve="concept" />
                    <node concept="36biLy" id="5ZOs9JxGcS1" role="2pJxcZ">
                      <node concept="2OqwBi" id="5ZOs9JxGew4" role="36biLW">
                        <node concept="37vLTw" id="5ZOs9JxGhim" role="2Oq$k0">
                          <ref role="3cqZAo" node="5ZOs9JxGcV0" resolve="map" />
                        </node>
                        <node concept="3TrEf2" id="5ZOs9JxGi_X" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:4IP40Bi2KaL" resolve="concept" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5ZOs9JxGahy" role="3K4Cdx">
                <node concept="10Nm6u" id="5ZOs9JxGam9" role="3uHU7w" />
                <node concept="37vLTw" id="5ZOs9JxG96z" role="3uHU7B">
                  <ref role="3cqZAo" node="5ZOs9JxFZYV" resolve="rule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ZOs9JxFXE8" role="3cqZAp">
          <node concept="2pJPEk" id="5ZOs9JxFXE9" role="3clFbG">
            <node concept="2pJPED" id="5ZOs9JxFXEa" role="2pJPEn">
              <ref role="2pJxaS" to="7ggn:1Sb3mAPvh8b" resolve="Rule" />
              <node concept="2pIpSj" id="5ZOs9JxFZCX" role="2pJxcM">
                <ref role="2pIpSl" to="7ggn:1Sb3mAPxB$N" resolve="context" />
                <node concept="36biLy" id="5ZOs9JxG5tU" role="2pJxcZ">
                  <node concept="37vLTw" id="5ZOs9JxGhdm" role="36biLW">
                    <ref role="3cqZAo" node="5ZOs9JxG5Vq" resolve="ctx" />
                  </node>
                </node>
              </node>
              <node concept="2pJxcG" id="5ZOs9JxFXEb" role="2pJxcM">
                <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                <node concept="3cpWs3" id="4$MeK2bwzBH" role="2pJxcZ">
                  <node concept="Xl_RD" id="4$MeK2bwz0j" role="3uHU7B">
                    <property role="Xl_RC" value="_" />
                  </node>
                  <node concept="2OqwBi" id="4$MeK2bwybn" role="3uHU7w">
                    <node concept="2OqwBi" id="4$MeK2bwxSi" role="2Oq$k0">
                      <node concept="2JrnkZ" id="4$MeK2bwxDf" role="2Oq$k0">
                        <node concept="37vLTw" id="4$MeK2bwwz6" role="2JrQYb">
                          <ref role="3cqZAo" node="5ZOs9JxFXEl" resolve="part" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4$MeK2bwy3n" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4$MeK2bwynB" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2pIpSj" id="5ZOs9JxFXEf" role="2pJxcM">
                <ref role="2pIpSl" to="tpee:fzclF7X" resolve="returnType" />
                <node concept="2pJPED" id="5ZOs9JxFXEg" role="2pJxcZ">
                  <ref role="2pJxaS" to="tpee:fzcqZ_H" resolve="VoidType" />
                </node>
              </node>
              <node concept="2pIpSj" id="5ZOs9JxFXEh" role="2pJxcM">
                <ref role="2pIpSl" to="tpee:fzclF7Z" resolve="body" />
                <node concept="36biLy" id="5ZOs9JxFXEi" role="2pJxcZ">
                  <node concept="BsUDl" id="5ZOs9JxFXEj" role="36biLW">
                    <ref role="37wK5l" node="3pElVurbdgA" resolve="ruleBody" />
                    <node concept="37vLTw" id="5ZOs9JxFXEk" role="37wK5m">
                      <ref role="3cqZAo" node="5ZOs9JxFXEl" resolve="part" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5ZOs9JxFXEl" role="3clF46">
        <property role="TrG5h" value="part" />
        <node concept="3Tqbb2" id="5ZOs9JxFXEm" role="1tU5fm">
          <ref role="ehGHo" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
        </node>
      </node>
      <node concept="3Tqbb2" id="5ZOs9JxFXEp" role="3clF45">
        <ref role="ehGHo" to="7ggn:29R9$zZUovC" resolve="AbstractRule" />
      </node>
      <node concept="3Tm1VV" id="5ZOs9JxFXEq" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="1Sb3mAPvyrM">
    <ref role="13h7C2" to="7ggn:1Sb3mAPvh8b" resolve="Rule" />
    <node concept="13hLZK" id="1Sb3mAPwFiC" role="13h7CW">
      <node concept="3clFbS" id="1Sb3mAPwFiD" role="2VODD2">
        <node concept="3clFbF" id="7UtH1mcF4ER" role="3cqZAp">
          <node concept="37vLTI" id="7UtH1mcF5SS" role="3clFbG">
            <node concept="2ShNRf" id="7UtH1mcF5Zw" role="37vLTx">
              <node concept="3zrR0B" id="7UtH1mcF5X$" role="2ShVmc">
                <node concept="3Tqbb2" id="7UtH1mcF5X_" role="3zrR0E">
                  <ref role="ehGHo" to="tpee:fzcqZ_H" resolve="VoidType" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7UtH1mcF4Yb" role="37vLTJ">
              <node concept="13iPFW" id="7UtH1mcF4EP" role="2Oq$k0" />
              <node concept="3TrEf2" id="7UtH1mcF5x1" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="29R9$zZYuAV" role="13h7CS">
      <property role="TrG5h" value="getContextType" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="29R9$zZWsRH" resolve="getContextType" />
      <node concept="3Tm1VV" id="29R9$zZYuAW" role="1B3o_S" />
      <node concept="3clFbS" id="29R9$zZYuAZ" role="3clF47">
        <node concept="3clFbF" id="29R9$zZYuGX" role="3cqZAp">
          <node concept="2OqwBi" id="29R9$zZYwuw" role="3clFbG">
            <node concept="2OqwBi" id="29R9$zZYv95" role="2Oq$k0">
              <node concept="13iPFW" id="29R9$zZYuGW" role="2Oq$k0" />
              <node concept="3TrEf2" id="29R9$zZYvHw" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:1Sb3mAPxB$N" resolve="context" />
              </node>
            </node>
            <node concept="2qgKlT" id="29R9$zZYwFu" role="2OqNvi">
              <ref role="37wK5l" node="jVwYUSRkJq" resolve="getType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="29R9$zZYuB0" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="jVwYUSRkKY">
    <ref role="13h7C2" to="7ggn:jVwYUSRkKt" resolve="ContextType" />
    <node concept="13i0hz" id="jVwYUSRkJq" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="jVwYUSRkJr" role="1B3o_S" />
      <node concept="3Tqbb2" id="jVwYUSRkJE" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3clFbS" id="jVwYUSRkJt" role="3clF47" />
    </node>
    <node concept="13hLZK" id="jVwYUSRkKZ" role="13h7CW">
      <node concept="3clFbS" id="jVwYUSRkL0" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="jVwYUSRqTO">
    <ref role="13h7C2" to="7ggn:30fQumnEbzJ" resolve="ModelType" />
    <node concept="13hLZK" id="jVwYUSRqTP" role="13h7CW">
      <node concept="3clFbS" id="jVwYUSRqTQ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="jVwYUSRqTZ" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getType" />
      <ref role="13i0hy" node="jVwYUSRkJq" resolve="getType" />
      <node concept="3Tm1VV" id="jVwYUSRqU0" role="1B3o_S" />
      <node concept="3clFbS" id="jVwYUSRqU3" role="3clF47">
        <node concept="3clFbF" id="jVwYUSRqUj" role="3cqZAp">
          <node concept="2ShNRf" id="jVwYUSRqUh" role="3clFbG">
            <node concept="3zrR0B" id="jVwYUSRr98" role="2ShVmc">
              <node concept="3Tqbb2" id="jVwYUSRr9a" role="3zrR0E">
                <ref role="ehGHo" to="tp25:gCH_c3d" resolve="SModelType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="jVwYUSRqU4" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13i0hz" id="33eq5YkzlT4" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3clFbS" id="33eq5YkzlT7" role="3clF47">
        <node concept="3clFbF" id="33eq5YkzlTD" role="3cqZAp">
          <node concept="Xl_RD" id="33eq5YkzlTC" role="3clFbG">
            <property role="Xl_RC" value="model" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="33eq5YkzlTs" role="3clF45" />
      <node concept="3Tm1VV" id="33eq5YkzlTt" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="jVwYUSRraB">
    <ref role="13h7C2" to="7ggn:1Sb3mAPxLpZ" resolve="NodeType" />
    <node concept="13hLZK" id="jVwYUSRraC" role="13h7CW">
      <node concept="3clFbS" id="jVwYUSRraD" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="jVwYUSRraM" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getType" />
      <ref role="13i0hy" node="jVwYUSRkJq" resolve="getType" />
      <node concept="3Tm1VV" id="jVwYUSRraN" role="1B3o_S" />
      <node concept="3clFbS" id="jVwYUSRraQ" role="3clF47">
        <node concept="3cpWs8" id="jVwYUSRrn4" role="3cqZAp">
          <node concept="3cpWsn" id="jVwYUSRrn5" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3Tqbb2" id="jVwYUSRrn2" role="1tU5fm">
              <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
            </node>
            <node concept="2ShNRf" id="jVwYUSRrn6" role="33vP2m">
              <node concept="3zrR0B" id="jVwYUSRrn7" role="2ShVmc">
                <node concept="3Tqbb2" id="jVwYUSRrn8" role="3zrR0E">
                  <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jVwYUSRrsp" role="3cqZAp">
          <node concept="37vLTI" id="jVwYUSRshe" role="3clFbG">
            <node concept="2OqwBi" id="jVwYUSRs$g" role="37vLTx">
              <node concept="13iPFW" id="jVwYUSRsnj" role="2Oq$k0" />
              <node concept="3TrEf2" id="jVwYUSRsMm" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:jVwYUSRpzw" resolve="concept" />
              </node>
            </node>
            <node concept="2OqwBi" id="jVwYUSRrAH" role="37vLTJ">
              <node concept="37vLTw" id="jVwYUSRrsn" role="2Oq$k0">
                <ref role="3cqZAo" node="jVwYUSRrn5" resolve="type" />
              </node>
              <node concept="3TrEf2" id="jVwYUSRrNd" role="2OqNvi">
                <ref role="3Tt5mk" to="tp25:g$ehGDh" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jVwYUSRrb6" role="3cqZAp">
          <node concept="37vLTw" id="jVwYUSRrn9" role="3clFbG">
            <ref role="3cqZAo" node="jVwYUSRrn5" resolve="type" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="jVwYUSRraR" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13i0hz" id="33eq5Ykzm6M" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3clFbS" id="33eq5Ykzm6N" role="3clF47">
        <node concept="3clFbF" id="33eq5Ykzm6O" role="3cqZAp">
          <node concept="Xl_RD" id="33eq5Ykzm6P" role="3clFbG">
            <property role="Xl_RC" value="node" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="33eq5Ykzm6Q" role="3clF45" />
      <node concept="3Tm1VV" id="33eq5Ykzm6R" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="5myXc37OIKa">
    <ref role="13h7C2" to="7ggn:5myXc37OIo9" resolve="ModuleType" />
    <node concept="13i0hz" id="5myXc37PnWv" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getType" />
      <ref role="13i0hy" node="jVwYUSRkJq" resolve="getType" />
      <node concept="3Tm1VV" id="5myXc37PnWw" role="1B3o_S" />
      <node concept="3clFbS" id="5myXc37PnWx" role="3clF47">
        <node concept="3clFbF" id="5myXc37PnWK" role="3cqZAp">
          <node concept="2c44tf" id="5myXc37PFk6" role="3clFbG">
            <node concept="3uibUv" id="lrd3tQKjSQ" role="2c44tc">
              <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5myXc37PnWM" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13i0hz" id="33eq5YkzlZE" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3clFbS" id="33eq5YkzlZF" role="3clF47">
        <node concept="3clFbF" id="33eq5YkzlZG" role="3cqZAp">
          <node concept="Xl_RD" id="33eq5YkzlZH" role="3clFbG">
            <property role="Xl_RC" value="module" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="33eq5YkzlZI" role="3clF45" />
      <node concept="3Tm1VV" id="33eq5YkzlZJ" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="5myXc37OIKb" role="13h7CW">
      <node concept="3clFbS" id="5myXc37OIKc" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5myXc37Ppyi">
    <ref role="13h7C2" to="7ggn:5myXc37PpxZ" resolve="RepositoryType" />
    <node concept="13i0hz" id="5myXc37PpAH" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getType" />
      <ref role="13i0hy" node="jVwYUSRkJq" resolve="getType" />
      <node concept="3Tm1VV" id="5myXc37PpAI" role="1B3o_S" />
      <node concept="3clFbS" id="5myXc37PpAJ" role="3clF47">
        <node concept="3clFbF" id="lrd3tQKkAC" role="3cqZAp">
          <node concept="2c44tf" id="hqIMTHL" role="3clFbG">
            <node concept="3uibUv" id="lrd3tQKjVS" role="2c44tc">
              <ref role="3uigEE" to="t4tl:~DRepository" resolve="DRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5myXc37PpAY" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13i0hz" id="33eq5YkzmeW" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3clFbS" id="33eq5YkzmeX" role="3clF47">
        <node concept="3clFbF" id="33eq5YkzmeY" role="3cqZAp">
          <node concept="Xl_RD" id="33eq5YkzmeZ" role="3clFbG">
            <property role="Xl_RC" value="repository" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="33eq5Ykzmf0" role="3clF45" />
      <node concept="3Tm1VV" id="33eq5Ykzmf1" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="5myXc37Ppyj" role="13h7CW">
      <node concept="3clFbS" id="5myXc37Ppyk" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4KjhF$ZFHDZ">
    <ref role="13h7C2" to="7ggn:3qVwZ8sHWnm" resolve="RuleAssignmentExpression" />
    <node concept="13i0hz" id="4KjhF$ZFHEa" role="13h7CS">
      <property role="TrG5h" value="isNodeCreator" />
      <node concept="3Tm1VV" id="4KjhF$ZFHEb" role="1B3o_S" />
      <node concept="10P_77" id="4KjhF$ZFHEu" role="3clF45" />
      <node concept="3clFbS" id="4KjhF$ZFHEd" role="3clF47">
        <node concept="3clFbF" id="4KjhF$ZFHJI" role="3cqZAp">
          <node concept="22lmx$" id="1lQ5DPQBsNq" role="3clFbG">
            <node concept="2OqwBi" id="1lQ5DPQBuIq" role="3uHU7w">
              <node concept="2OqwBi" id="1lQ5DPQBtwH" role="2Oq$k0">
                <node concept="13iPFW" id="1lQ5DPQBt4K" role="2Oq$k0" />
                <node concept="3TrEf2" id="1lQ5DPQBu23" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fz7vLUp" resolve="rValue" />
                </node>
              </node>
              <node concept="1mIQ4w" id="1lQ5DPQBvcA" role="2OqNvi">
                <node concept="chp4Y" id="1lQ5DPQBvxI" role="cj9EA">
                  <ref role="cht4Q" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="3pElVuqzVvD" role="3uHU7B">
              <node concept="1eOMI4" id="3pElVuqzSya" role="3uHU7B">
                <node concept="1Wc70l" id="4KjhF$ZGPiB" role="1eOMHV">
                  <node concept="2OqwBi" id="4KjhF$ZGTky" role="3uHU7w">
                    <node concept="2OqwBi" id="4KjhF$ZGRTL" role="2Oq$k0">
                      <node concept="1PxgMI" id="4KjhF$ZGRqb" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="4KjhF$ZGRBX" role="3oSUPX">
                          <ref role="cht4Q" to="tpee:gEShNN5" resolve="GenericNewExpression" />
                        </node>
                        <node concept="2OqwBi" id="4KjhF$ZGPJu" role="1m5AlR">
                          <node concept="13iPFW" id="4KjhF$ZGPr1" role="2Oq$k0" />
                          <node concept="3TrEf2" id="4KjhF$ZGQ9e" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:fz7vLUp" resolve="rValue" />
                          </node>
                        </node>
                      </node>
                      <node concept="3TrEf2" id="4KjhF$ZGSf2" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:gEShVi6" resolve="creator" />
                      </node>
                    </node>
                    <node concept="1mIQ4w" id="4KjhF$ZGTF7" role="2OqNvi">
                      <node concept="chp4Y" id="4KjhF$ZGTUJ" role="cj9EA">
                        <ref role="cht4Q" to="tp25:hbzrR4P" resolve="SNodeCreator" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3qVwZ8t5ONs" role="3uHU7B">
                    <node concept="2OqwBi" id="3qVwZ8t5Nzf" role="2Oq$k0">
                      <node concept="3TrEf2" id="3qVwZ8t5O5i" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:fz7vLUp" resolve="rValue" />
                      </node>
                      <node concept="13iPFW" id="4KjhF$ZFOPR" role="2Oq$k0" />
                    </node>
                    <node concept="1mIQ4w" id="3qVwZ8t5PfS" role="2OqNvi">
                      <node concept="chp4Y" id="4KjhF$ZF$lr" role="cj9EA">
                        <ref role="cht4Q" to="tpee:gEShNN5" resolve="GenericNewExpression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3pElVuqzXdB" role="3uHU7w">
                <node concept="2OqwBi" id="3pElVuqzW7r" role="2Oq$k0">
                  <node concept="13iPFW" id="3pElVuqzVHU" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3pElVuqzWAf" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fz7vLUp" resolve="rValue" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="3pElVuqzY7f" role="2OqNvi">
                  <node concept="chp4Y" id="3pElVuqzYo2" role="cj9EA">
                    <ref role="cht4Q" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1lQ5DPQBWWL" role="13h7CS">
      <property role="TrG5h" value="getOriginalBuilder" />
      <node concept="3Tm1VV" id="1lQ5DPQBWWM" role="1B3o_S" />
      <node concept="3Tqbb2" id="1lQ5DPQBXve" role="3clF45">
        <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
      </node>
      <node concept="3clFbS" id="1lQ5DPQBWWO" role="3clF47">
        <node concept="3clFbJ" id="1lQ5DPQBXBK" role="3cqZAp">
          <node concept="2OqwBi" id="1lQ5DPQBYt7" role="3clFbw">
            <node concept="1mIQ4w" id="1lQ5DPQBYEZ" role="2OqNvi">
              <node concept="chp4Y" id="1lQ5DPQBYL$" role="cj9EA">
                <ref role="cht4Q" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="1pPEdD6Pa59" role="2Oq$k0">
              <node concept="13iPFW" id="1pPEdD6Pa5a" role="2Oq$k0" />
              <node concept="3TrEf2" id="1pPEdD6Pa5b" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:1pPEdD6OAAJ" resolve="originalRight" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1lQ5DPQBXBM" role="3clFbx">
            <node concept="3cpWs6" id="1lQ5DPQC1Ti" role="3cqZAp">
              <node concept="1PxgMI" id="1lQ5DPQBZih" role="3cqZAk">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="1lQ5DPQBZjs" role="3oSUPX">
                  <ref role="cht4Q" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                </node>
                <node concept="2OqwBi" id="1pPEdD6Pagt" role="1m5AlR">
                  <node concept="13iPFW" id="1pPEdD6Pagu" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1pPEdD6Pagv" role="2OqNvi">
                    <ref role="3Tt5mk" to="7ggn:1pPEdD6OAAJ" resolve="originalRight" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1lQ5DPQBZoJ" role="3eNLev">
            <node concept="3clFbS" id="1lQ5DPQBZoL" role="3eOfB_">
              <node concept="3cpWs6" id="1lQ5DPQC285" role="3cqZAp">
                <node concept="2OqwBi" id="1lQ5DPQC0Ep" role="3cqZAk">
                  <node concept="1PxgMI" id="1lQ5DPQC0tT" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="1lQ5DPQC0xr" role="3oSUPX">
                      <ref role="cht4Q" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
                    </node>
                    <node concept="2OqwBi" id="1pPEdD6Pawd" role="1m5AlR">
                      <node concept="13iPFW" id="1pPEdD6Pawe" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1pPEdD6Pawf" role="2OqNvi">
                        <ref role="3Tt5mk" to="7ggn:1pPEdD6OAAJ" resolve="originalRight" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="1lQ5DPQC12M" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:4IP40Bi2$Eu" resolve="quotedNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1lQ5DPQC0gr" role="3eO9$A">
              <node concept="1mIQ4w" id="1lQ5DPQC0gv" role="2OqNvi">
                <node concept="chp4Y" id="1lQ5DPQC0nj" role="cj9EA">
                  <ref role="cht4Q" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
                </node>
              </node>
              <node concept="2OqwBi" id="1pPEdD6PaMi" role="2Oq$k0">
                <node concept="13iPFW" id="1pPEdD6PaMj" role="2Oq$k0" />
                <node concept="3TrEf2" id="1pPEdD6PaMk" role="2OqNvi">
                  <ref role="3Tt5mk" to="7ggn:1pPEdD6OAAJ" resolve="originalRight" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1pPEdD6Pb$s" role="9aQIa">
            <node concept="3clFbS" id="1pPEdD6Pb$t" role="9aQI4">
              <node concept="3cpWs6" id="1lQ5DPQC1ad" role="3cqZAp">
                <node concept="10Nm6u" id="1lQ5DPQBZJZ" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4KjhF$ZG4HG" role="13h7CS">
      <property role="TrG5h" value="isSLinkAcces" />
      <node concept="3Tm1VV" id="4KjhF$ZG4HH" role="1B3o_S" />
      <node concept="10P_77" id="4KjhF$ZG4HI" role="3clF45" />
      <node concept="3clFbS" id="4KjhF$ZG4HJ" role="3clF47">
        <node concept="3clFbF" id="4KjhF$ZG4HK" role="3cqZAp">
          <node concept="1Wc70l" id="4KjhF$ZG4HX" role="3clFbG">
            <node concept="2OqwBi" id="4KjhF$ZG4HY" role="3uHU7B">
              <node concept="2OqwBi" id="4KjhF$ZG4HZ" role="2Oq$k0">
                <node concept="3TrEf2" id="4KjhF$ZG4I0" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fz7vLUn" resolve="lValue" />
                </node>
                <node concept="13iPFW" id="4KjhF$ZG4I1" role="2Oq$k0" />
              </node>
              <node concept="1mIQ4w" id="4KjhF$ZG4I2" role="2OqNvi">
                <node concept="chp4Y" id="4KjhF$ZG4I3" role="cj9EA">
                  <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4KjhF$ZG4I4" role="3uHU7w">
              <node concept="2OqwBi" id="4KjhF$ZG4I5" role="2Oq$k0">
                <node concept="1PxgMI" id="4KjhF$ZG4I6" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="4KjhF$ZG4I7" role="3oSUPX">
                    <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                  </node>
                  <node concept="2OqwBi" id="4KjhF$ZG4I8" role="1m5AlR">
                    <node concept="3TrEf2" id="4KjhF$ZG4I9" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fz7vLUn" resolve="lValue" />
                    </node>
                    <node concept="13iPFW" id="4KjhF$ZG4Ia" role="2Oq$k0" />
                  </node>
                </node>
                <node concept="3TrEf2" id="4KjhF$ZG4Ib" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                </node>
              </node>
              <node concept="1mIQ4w" id="4KjhF$ZG4Ic" role="2OqNvi">
                <node concept="chp4Y" id="4KjhF$ZG4Id" role="cj9EA">
                  <ref role="cht4Q" to="tp25:gzTrEba" resolve="SLinkAccess" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4KjhF$ZGhnA" role="13h7CS">
      <property role="TrG5h" value="isNodeListCreator" />
      <node concept="3Tm1VV" id="4KjhF$ZGhnB" role="1B3o_S" />
      <node concept="10P_77" id="4KjhF$ZGhnC" role="3clF45" />
      <node concept="3clFbS" id="4KjhF$ZGhnD" role="3clF47">
        <node concept="3clFbF" id="4KjhF$ZGhnE" role="3cqZAp">
          <node concept="1Wc70l" id="4KjhF$ZGN6h" role="3clFbG">
            <node concept="2OqwBi" id="4KjhF$ZGhnH" role="3uHU7B">
              <node concept="2OqwBi" id="4KjhF$ZGhnI" role="2Oq$k0">
                <node concept="13iPFW" id="4KjhF$ZGhnJ" role="2Oq$k0" />
                <node concept="3TrEf2" id="4KjhF$ZGhnK" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fz7vLUp" resolve="rValue" />
                </node>
              </node>
              <node concept="1mIQ4w" id="4KjhF$ZGhnL" role="2OqNvi">
                <node concept="chp4Y" id="4KjhF$ZGhnM" role="cj9EA">
                  <ref role="cht4Q" to="tpee:gEShNN5" resolve="GenericNewExpression" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4KjhF$ZGUa7" role="3uHU7w">
              <node concept="2OqwBi" id="4KjhF$ZGUa8" role="2Oq$k0">
                <node concept="1PxgMI" id="4KjhF$ZGUa9" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="4KjhF$ZGUaa" role="3oSUPX">
                    <ref role="cht4Q" to="tpee:gEShNN5" resolve="GenericNewExpression" />
                  </node>
                  <node concept="2OqwBi" id="4KjhF$ZGUab" role="1m5AlR">
                    <node concept="13iPFW" id="4KjhF$ZGUac" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4KjhF$ZGUad" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fz7vLUp" resolve="rValue" />
                    </node>
                  </node>
                </node>
                <node concept="3TrEf2" id="4KjhF$ZGUae" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:gEShVi6" resolve="creator" />
                </node>
              </node>
              <node concept="1mIQ4w" id="4KjhF$ZGUaf" role="2OqNvi">
                <node concept="chp4Y" id="4KjhF$ZGUyj" role="cj9EA">
                  <ref role="cht4Q" to="tp25:gET8V_a" resolve="SNodeListCreator" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4KjhF$ZFPTd" role="13h7CS">
      <property role="TrG5h" value="isLinkListAccess" />
      <node concept="3Tm1VV" id="4KjhF$ZFPTe" role="1B3o_S" />
      <node concept="10P_77" id="4KjhF$ZFPTf" role="3clF45" />
      <node concept="3clFbS" id="4KjhF$ZFPTg" role="3clF47">
        <node concept="3clFbF" id="4KjhF$ZFPTh" role="3cqZAp">
          <node concept="1Wc70l" id="4KjhF$ZFPTu" role="3clFbG">
            <node concept="2OqwBi" id="4KjhF$ZFPTv" role="3uHU7B">
              <node concept="2OqwBi" id="4KjhF$ZFPTw" role="2Oq$k0">
                <node concept="3TrEf2" id="4KjhF$ZFPTx" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fz7vLUn" resolve="lValue" />
                </node>
                <node concept="13iPFW" id="4KjhF$ZFPTy" role="2Oq$k0" />
              </node>
              <node concept="1mIQ4w" id="4KjhF$ZFPTz" role="2OqNvi">
                <node concept="chp4Y" id="4KjhF$ZFPT$" role="cj9EA">
                  <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4KjhF$ZFPT_" role="3uHU7w">
              <node concept="2OqwBi" id="4KjhF$ZFPTA" role="2Oq$k0">
                <node concept="1PxgMI" id="4KjhF$ZFPTB" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="4KjhF$ZFPTC" role="3oSUPX">
                    <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                  </node>
                  <node concept="2OqwBi" id="4KjhF$ZFPTD" role="1m5AlR">
                    <node concept="3TrEf2" id="4KjhF$ZFPTE" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fz7vLUn" resolve="lValue" />
                    </node>
                    <node concept="13iPFW" id="4KjhF$ZFPTF" role="2Oq$k0" />
                  </node>
                </node>
                <node concept="3TrEf2" id="4KjhF$ZFPTG" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                </node>
              </node>
              <node concept="1mIQ4w" id="4KjhF$ZFPTH" role="2OqNvi">
                <node concept="chp4Y" id="4KjhF$ZG3xw" role="cj9EA">
                  <ref role="cht4Q" to="tp25:gzTsc4p" resolve="SLinkListAccess" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4KjhF$ZGq5s" role="13h7CS">
      <property role="TrG5h" value="isModelRoots" />
      <node concept="3Tm1VV" id="4KjhF$ZGq5t" role="1B3o_S" />
      <node concept="10P_77" id="4KjhF$ZGq5u" role="3clF45" />
      <node concept="3clFbS" id="4KjhF$ZGq5v" role="3clF47">
        <node concept="3clFbF" id="4KjhF$ZGq5w" role="3cqZAp">
          <node concept="1Wc70l" id="4KjhF$ZGq5D" role="3clFbG">
            <node concept="2OqwBi" id="4KjhF$ZGq5E" role="3uHU7B">
              <node concept="2OqwBi" id="4KjhF$ZGq5F" role="2Oq$k0">
                <node concept="3TrEf2" id="4KjhF$ZGq5G" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fz7vLUn" resolve="lValue" />
                </node>
                <node concept="13iPFW" id="4KjhF$ZGq5H" role="2Oq$k0" />
              </node>
              <node concept="1mIQ4w" id="4KjhF$ZGq5I" role="2OqNvi">
                <node concept="chp4Y" id="4KjhF$ZGq5J" role="cj9EA">
                  <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4KjhF$ZGq5K" role="3uHU7w">
              <node concept="2OqwBi" id="4KjhF$ZGq5L" role="2Oq$k0">
                <node concept="1PxgMI" id="4KjhF$ZGq5M" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="4KjhF$ZGq5N" role="3oSUPX">
                    <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                  </node>
                  <node concept="2OqwBi" id="4KjhF$ZGq5O" role="1m5AlR">
                    <node concept="3TrEf2" id="4KjhF$ZGq5P" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fz7vLUn" resolve="lValue" />
                    </node>
                    <node concept="13iPFW" id="4KjhF$ZGq5Q" role="2Oq$k0" />
                  </node>
                </node>
                <node concept="3TrEf2" id="4KjhF$ZGq5R" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                </node>
              </node>
              <node concept="1mIQ4w" id="4KjhF$ZGq5S" role="2OqNvi">
                <node concept="chp4Y" id="4KjhF$ZGvxJ" role="cj9EA">
                  <ref role="cht4Q" to="tp25:h2RRcAW" resolve="Model_RootsOperation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4KjhF$ZFHE0" role="13h7CW">
      <node concept="3clFbS" id="4KjhF$ZFHE1" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="29R9$zYWkOt">
    <ref role="13h7C2" to="7ggn:29R9$zYWiFR" resolve="OppositeLinkAccess" />
    <node concept="13hLZK" id="29R9$zYWkOu" role="13h7CW">
      <node concept="3clFbS" id="29R9$zYWkOv" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="29R9$zYWkOC" role="13h7CS">
      <property role="13i0is" value="false" />
      <property role="TrG5h" value="getVariableExpectedName" />
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:hEwIP$B" resolve="getVariableExpectedName" />
      <node concept="3Tm1VV" id="29R9$zYWkOL" role="1B3o_S" />
      <node concept="3clFbS" id="29R9$zYWkOM" role="3clF47">
        <node concept="3clFbF" id="29R9$zYWkOR" role="3cqZAp">
          <node concept="3cpWs3" id="29R9$zYWmDI" role="3clFbG">
            <node concept="2OqwBi" id="29R9$zYWmUN" role="3uHU7w">
              <node concept="13iAh5" id="29R9$zYWna8" role="2Oq$k0" />
              <node concept="2qgKlT" id="29R9$zYWnmm" role="2OqNvi">
                <ref role="37wK5l" to="tpek:hEwIP$B" resolve="getVariableExpectedName" />
              </node>
            </node>
            <node concept="Xl_RD" id="29R9$zYWm2T" role="3uHU7B">
              <property role="Xl_RC" value="~" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="29R9$zYWkON" role="3clF45" />
    </node>
    <node concept="13i0hz" id="29R9$zYWnxC" role="13h7CS">
      <property role="TrG5h" value="isAggregation" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpeu:3vpu_siOTrm" resolve="isAggregation" />
      <node concept="3clFbS" id="29R9$zYWnxF" role="3clF47">
        <node concept="3clFbF" id="29R9$zYWnOU" role="3cqZAp">
          <node concept="3clFbT" id="29R9$zYWnOT" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="29R9$zYWnG0" role="3clF45" />
      <node concept="3Tm1VV" id="29R9$zYWnG1" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="29R9$zYWnPb" role="13h7CS">
      <property role="TrG5h" value="getTargetConcept" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpeu:3vpu_siOTrr" resolve="getTargetConcept" />
      <node concept="3clFbS" id="29R9$zYWnPe" role="3clF47">
        <node concept="3clFbF" id="29R9$zYWo9O" role="3cqZAp">
          <node concept="2OqwBi" id="29R9$zYWoZe" role="3clFbG">
            <node concept="2OqwBi" id="29R9$zYWolO" role="2Oq$k0">
              <node concept="13iPFW" id="29R9$zYWo9N" role="2Oq$k0" />
              <node concept="3TrEf2" id="29R9$zYWoyO" role="2OqNvi">
                <ref role="3Tt5mk" to="tp25:gzTtc_y" resolve="link" />
              </node>
            </node>
            <node concept="2Xjw5R" id="29R9$zYWqh_" role="2OqNvi">
              <node concept="1xMEDy" id="29R9$zYWqhB" role="1xVPHs">
                <node concept="chp4Y" id="29R9$zYWqnz" role="ri$Ld">
                  <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="29R9$zYWnZD" role="3clF45">
        <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
      <node concept="3Tm1VV" id="29R9$zYWnZE" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="29R9$zZU4Id">
    <ref role="13h7C2" to="7ggn:29R9$zZU3__" resolve="ConceptRule" />
    <node concept="13i0hz" id="29R9$zZYx0P" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getContextType" />
      <ref role="13i0hy" node="29R9$zZWsRH" resolve="getContextType" />
      <node concept="3Tm1VV" id="29R9$zZYx0Q" role="1B3o_S" />
      <node concept="3clFbS" id="29R9$zZYx0R" role="3clF47">
        <node concept="3cpWs8" id="29R9$zZYx0S" role="3cqZAp">
          <node concept="3cpWsn" id="29R9$zZYx0T" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3Tqbb2" id="29R9$zZYx0U" role="1tU5fm">
              <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
            </node>
            <node concept="2ShNRf" id="29R9$zZYx0V" role="33vP2m">
              <node concept="3zrR0B" id="29R9$zZYx0W" role="2ShVmc">
                <node concept="3Tqbb2" id="29R9$zZYx0X" role="3zrR0E">
                  <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="29R9$zZYx0Y" role="3cqZAp">
          <node concept="37vLTI" id="29R9$zZYx0Z" role="3clFbG">
            <node concept="2OqwBi" id="29R9$zZYyT3" role="37vLTx">
              <node concept="2OqwBi" id="29R9$zZYx10" role="2Oq$k0">
                <node concept="13iPFW" id="29R9$zZYx11" role="2Oq$k0" />
                <node concept="2Xjw5R" id="29R9$zZYyw6" role="2OqNvi">
                  <node concept="1xMEDy" id="29R9$zZYyw8" role="1xVPHs">
                    <node concept="chp4Y" id="29R9$zZYyB6" role="ri$Ld">
                      <ref role="cht4Q" to="7ggn:29R9$zZU3_j" resolve="ConceptRuleSet" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="29R9$zZYzcv" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:29R9$zZU3_y" resolve="concept" />
              </node>
            </node>
            <node concept="2OqwBi" id="29R9$zZYx13" role="37vLTJ">
              <node concept="37vLTw" id="29R9$zZYx14" role="2Oq$k0">
                <ref role="3cqZAo" node="29R9$zZYx0T" resolve="type" />
              </node>
              <node concept="3TrEf2" id="29R9$zZYx15" role="2OqNvi">
                <ref role="3Tt5mk" to="tp25:g$ehGDh" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="29R9$zZYx16" role="3cqZAp">
          <node concept="37vLTw" id="29R9$zZYx17" role="3clFbG">
            <ref role="3cqZAo" node="29R9$zZYx0T" resolve="type" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="29R9$zZYx18" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13hLZK" id="29R9$zZU4Ie" role="13h7CW">
      <node concept="3clFbS" id="29R9$zZU4If" role="2VODD2">
        <node concept="3clFbF" id="29R9$zZUnVf" role="3cqZAp">
          <node concept="37vLTI" id="29R9$zZUnVg" role="3clFbG">
            <node concept="2ShNRf" id="29R9$zZUnVh" role="37vLTx">
              <node concept="3zrR0B" id="29R9$zZUnVi" role="2ShVmc">
                <node concept="3Tqbb2" id="29R9$zZUnVj" role="3zrR0E">
                  <ref role="ehGHo" to="tpee:fzcqZ_H" resolve="VoidType" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="29R9$zZUnVk" role="37vLTJ">
              <node concept="13iPFW" id="29R9$zZUnVl" role="2Oq$k0" />
              <node concept="3TrEf2" id="29R9$zZUnVm" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="29R9$zZU4Wo">
    <ref role="13h7C2" to="7ggn:29R9$zZU3_j" resolve="ConceptRuleSet" />
    <node concept="13i0hz" id="4$$3zrO4flE" role="13h7CS">
      <property role="TrG5h" value="getBaseConcept" />
      <property role="13i0it" value="true" />
      <ref role="13i0hy" to="tpcn:2hxg_BDjKM8" resolve="getBaseConcept" />
      <node concept="3Tm1VV" id="4$$3zrO4flF" role="1B3o_S" />
      <node concept="3clFbS" id="4$$3zrO4flG" role="3clF47">
        <node concept="3clFbF" id="4$$3zrO4flM" role="3cqZAp">
          <node concept="2OqwBi" id="4$$3zrO4flO" role="3clFbG">
            <node concept="13iPFW" id="4$$3zrO4flN" role="2Oq$k0" />
            <node concept="3TrEf2" id="29R9$zZU5ao" role="2OqNvi">
              <ref role="3Tt5mk" to="7ggn:29R9$zZU3_y" resolve="concept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4$$3zrO4flH" role="3clF45">
        <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5r_35Ihc8Wq" role="13h7CS">
      <property role="TrG5h" value="setBaseConcept" />
      <property role="13i0it" value="true" />
      <ref role="13i0hy" to="tpcn:5r_35Ihc58c" resolve="setBaseConcept" />
      <node concept="3Tm1VV" id="5r_35Ihc8Wr" role="1B3o_S" />
      <node concept="3clFbS" id="5r_35Ihc8Ws" role="3clF47">
        <node concept="3clFbF" id="5r_35Ihc8WE" role="3cqZAp">
          <node concept="2OqwBi" id="5r_35Ihc8WL" role="3clFbG">
            <node concept="2OqwBi" id="5r_35Ihc8WG" role="2Oq$k0">
              <node concept="13iPFW" id="5r_35Ihc8WF" role="2Oq$k0" />
              <node concept="3TrEf2" id="5r_35Ihc8WK" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:29R9$zZU3_y" resolve="concept" />
              </node>
            </node>
            <node concept="2oxUTD" id="5r_35Ihc8WP" role="2OqNvi">
              <node concept="37vLTw" id="2BHiRxglGaC" role="2oxUTC">
                <ref role="3cqZAo" node="5r_35Ihc8Wt" resolve="baseConcept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5r_35Ihc8Wt" role="3clF46">
        <property role="TrG5h" value="baseConcept" />
        <node concept="3Tqbb2" id="5r_35Ihc8Wu" role="1tU5fm">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
      <node concept="3cqZAl" id="5r_35Ihc8Wv" role="3clF45" />
    </node>
    <node concept="13i0hz" id="29R9$zZUnz_" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0is" value="false" />
      <property role="TrG5h" value="getMembers" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:hEwJjl2" resolve="getMembers" />
      <node concept="3Tm1VV" id="29R9$zZUnzA" role="1B3o_S" />
      <node concept="3clFbS" id="29R9$zZUnzB" role="3clF47">
        <node concept="3clFbF" id="29R9$zZUnzC" role="3cqZAp">
          <node concept="2OqwBi" id="29R9$zZUnzD" role="3clFbG">
            <node concept="13iPFW" id="29R9$zZUnzE" role="2Oq$k0" />
            <node concept="3Tsc0h" id="29R9$zZUnzF" role="2OqNvi">
              <ref role="3TtcxE" to="7ggn:29R9$zZU3_D" resolve="elements" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="29R9$zZUnzG" role="3clF45" />
    </node>
    <node concept="13hLZK" id="29R9$zZU4Wp" role="13h7CW">
      <node concept="3clFbS" id="29R9$zZU4Wq" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="29R9$$07oCu" role="13h7CS">
      <property role="TrG5h" value="getRules" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="29R9$$07oyq" resolve="getRules" />
      <node concept="3Tm1VV" id="29R9$$07oCv" role="1B3o_S" />
      <node concept="3clFbS" id="29R9$$07oCy" role="3clF47">
        <node concept="3clFbF" id="29R9$$07oHA" role="3cqZAp">
          <node concept="2OqwBi" id="5ZOs9JxrqLZ" role="3clFbG">
            <node concept="2OqwBi" id="29R9$$07oTC" role="2Oq$k0">
              <node concept="13iPFW" id="29R9$$07oH_" role="2Oq$k0" />
              <node concept="3Tsc0h" id="29R9$$07pjg" role="2OqNvi">
                <ref role="3TtcxE" to="7ggn:29R9$zZU3_D" resolve="elements" />
              </node>
            </node>
            <node concept="v3k3i" id="5ZOs9JxrsYl" role="2OqNvi">
              <node concept="chp4Y" id="5ZOs9Jxrt1D" role="v3oSu">
                <ref role="cht4Q" to="7ggn:29R9$zZUovC" resolve="AbstractRule" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5ZOs9JxrpcN" role="3clF45">
        <node concept="3Tqbb2" id="5ZOs9Jxrph7" role="A3Ik2">
          <ref role="ehGHo" to="7ggn:29R9$zZUovC" resolve="AbstractRule" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1lQ5DPQzva7" role="13h7CS">
      <property role="TrG5h" value="getAttributes" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="1lQ5DPQzkip" resolve="getAttributes" />
      <node concept="3clFbS" id="1lQ5DPQzvaa" role="3clF47">
        <node concept="3clFbF" id="1lQ5DPQzzGh" role="3cqZAp">
          <node concept="2OqwBi" id="1lQ5DPQz_yc" role="3clFbG">
            <node concept="2OqwBi" id="1lQ5DPQzzSm" role="2Oq$k0">
              <node concept="13iPFW" id="1lQ5DPQzzGg" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1lQ5DPQz$5r" role="2OqNvi">
                <ref role="3TtcxE" to="7ggn:29R9$zZU3_D" resolve="elements" />
              </node>
            </node>
            <node concept="v3k3i" id="1lQ5DPQzAzG" role="2OqNvi">
              <node concept="chp4Y" id="1lQ5DPQzABd" role="v3oSu">
                <ref role="cht4Q" to="7ggn:4$MeK2bmw9s" resolve="AbstractAttribute" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="1lQ5DPQzxu1" role="3clF45">
        <node concept="3Tqbb2" id="1lQ5DPQzxu2" role="A3Ik2">
          <ref role="ehGHo" to="7ggn:4$MeK2bmw9s" resolve="AbstractAttribute" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1lQ5DPQzxu3" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="3pElVuqXEy9" role="13h7CS">
      <property role="TrG5h" value="addDerivedRules" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="3pElVuqPFEy" resolve="addDerived" />
      <node concept="3clFbS" id="3pElVuqXEyc" role="3clF47">
        <node concept="3clFbF" id="3pElVuqXEJg" role="3cqZAp">
          <node concept="2OqwBi" id="3pElVuqXL9I" role="3clFbG">
            <node concept="2OqwBi" id="3pElVuqXET8" role="2Oq$k0">
              <node concept="13iPFW" id="3pElVuqXEJf" role="2Oq$k0" />
              <node concept="3Tsc0h" id="3pElVuqXF6d" role="2OqNvi">
                <ref role="3TtcxE" to="7ggn:29R9$zZU3_D" resolve="elements" />
              </node>
            </node>
            <node concept="X8dFx" id="3pElVuqXQ0O" role="2OqNvi">
              <node concept="10QFUN" id="3pElVuqY1HI" role="25WWJ7">
                <node concept="A3Dl8" id="3pElVuqY6zi" role="10QFUM">
                  <node concept="3Tqbb2" id="3pElVuqY6RL" role="A3Ik2">
                    <ref role="ehGHo" to="7ggn:29R9$zZU3__" resolve="ConceptRule" />
                  </node>
                </node>
                <node concept="BsUDl" id="3pElVuqXQri" role="10QFUP">
                  <ref role="37wK5l" node="3pElVuqPteM" resolve="getDerivedRules" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3pElVuqXEE0" role="3clF45" />
      <node concept="3Tm1VV" id="3pElVuqXEE1" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="3pElVuqRUNR" role="13h7CS">
      <property role="TrG5h" value="toRule" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="5ZOs9JxFLiV" resolve="toRule" />
      <node concept="3clFbS" id="3pElVuqRUNS" role="3clF47">
        <node concept="3clFbF" id="3pElVuqRUO1" role="3cqZAp">
          <node concept="2pJPEk" id="3pElVuqRUO2" role="3clFbG">
            <node concept="2pJPED" id="3pElVuqRUO3" role="2pJPEn">
              <ref role="2pJxaS" to="7ggn:29R9$zZU3__" resolve="ConceptRule" />
              <node concept="2pJxcG" id="4$MeK2bwBWs" role="2pJxcM">
                <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                <node concept="3cpWs3" id="4$MeK2bwBWt" role="2pJxcZ">
                  <node concept="Xl_RD" id="4$MeK2bwBWu" role="3uHU7B">
                    <property role="Xl_RC" value="_" />
                  </node>
                  <node concept="2OqwBi" id="4$MeK2bwBWv" role="3uHU7w">
                    <node concept="2OqwBi" id="4$MeK2bwBWw" role="2Oq$k0">
                      <node concept="2JrnkZ" id="4$MeK2bwBWx" role="2Oq$k0">
                        <node concept="37vLTw" id="4$MeK2bwC8m" role="2JrQYb">
                          <ref role="3cqZAo" node="5ZOs9JxFRcV" resolve="part" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4$MeK2bwBWz" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4$MeK2bwBW$" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2pIpSj" id="3pElVuqRUOh" role="2pJxcM">
                <ref role="2pIpSl" to="tpee:fzclF7X" resolve="returnType" />
                <node concept="2pJPED" id="3pElVuqRUOi" role="2pJxcZ">
                  <ref role="2pJxaS" to="tpee:fzcqZ_H" resolve="VoidType" />
                </node>
              </node>
              <node concept="2pIpSj" id="3pElVuqRUOj" role="2pJxcM">
                <ref role="2pIpSl" to="tpee:fzclF7Z" resolve="body" />
                <node concept="36biLy" id="3pElVurcF4x" role="2pJxcZ">
                  <node concept="BsUDl" id="3pElVurbdgH" role="36biLW">
                    <ref role="37wK5l" node="3pElVurbdgA" resolve="ruleBody" />
                    <node concept="37vLTw" id="3pElVurbvMU" role="37wK5m">
                      <ref role="3cqZAo" node="5ZOs9JxFRcV" resolve="part" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5ZOs9JxFRcV" role="3clF46">
        <property role="TrG5h" value="part" />
        <node concept="3Tqbb2" id="5ZOs9JxFRcW" role="1tU5fm">
          <ref role="ehGHo" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
        </node>
      </node>
      <node concept="3Tqbb2" id="5ZOs9JxFRcZ" role="3clF45">
        <ref role="ehGHo" to="7ggn:29R9$zZUovC" resolve="AbstractRule" />
      </node>
      <node concept="3Tm1VV" id="5ZOs9JxFRd0" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="29R9$zZWsRy">
    <ref role="13h7C2" to="7ggn:29R9$zZUovC" resolve="AbstractRule" />
    <node concept="13hLZK" id="29R9$zZWsRz" role="13h7CW">
      <node concept="3clFbS" id="29R9$zZWsR$" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="29R9$$07oyf">
    <ref role="13h7C2" to="7ggn:29R9$zZUovD" resolve="AbstractRuleSet" />
    <node concept="13i0hz" id="29R9$$07oyq" role="13h7CS">
      <property role="TrG5h" value="getRules" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="29R9$$07oyr" role="1B3o_S" />
      <node concept="3clFbS" id="29R9$$07oyt" role="3clF47" />
      <node concept="A3Dl8" id="5ZOs9JxpBJB" role="3clF45">
        <node concept="3Tqbb2" id="5ZOs9JxpBJO" role="A3Ik2">
          <ref role="ehGHo" to="7ggn:29R9$zZUovC" resolve="AbstractRule" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1lQ5DPQzkip" role="13h7CS">
      <property role="TrG5h" value="getAttributes" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="1lQ5DPQzkiq" role="1B3o_S" />
      <node concept="A3Dl8" id="1lQ5DPQzkAW" role="3clF45">
        <node concept="3Tqbb2" id="1lQ5DPQzkBb" role="A3Ik2">
          <ref role="ehGHo" to="7ggn:4$MeK2bmw9s" resolve="AbstractAttribute" />
        </node>
      </node>
      <node concept="3clFbS" id="1lQ5DPQzkis" role="3clF47" />
    </node>
    <node concept="13i0hz" id="3pElVuqPFEy" role="13h7CS">
      <property role="TrG5h" value="addDerived" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="3pElVuqPFEz" role="1B3o_S" />
      <node concept="3clFbS" id="3pElVuqPFE_" role="3clF47" />
      <node concept="3cqZAl" id="3pElVuqXE3X" role="3clF45" />
    </node>
    <node concept="13i0hz" id="3pElVuqPteM" role="13h7CS">
      <property role="TrG5h" value="getDerivedRules" />
      <node concept="3Tm1VV" id="3pElVuqXE7k" role="1B3o_S" />
      <node concept="A3Dl8" id="3pElVuqPtiY" role="3clF45">
        <node concept="3Tqbb2" id="3pElVuqPtjd" role="A3Ik2">
          <ref role="ehGHo" to="7ggn:29R9$zZUovC" resolve="AbstractRule" />
        </node>
      </node>
      <node concept="3clFbS" id="3pElVuqPteP" role="3clF47">
        <node concept="3cpWs8" id="3pElVuqRAJr" role="3cqZAp">
          <node concept="3cpWsn" id="3pElVuqRAJs" role="3cpWs9">
            <property role="TrG5h" value="parts" />
            <node concept="_YKpA" id="3pElVuqRBc3" role="1tU5fm">
              <node concept="3Tqbb2" id="3pElVuqRBc5" role="_ZDj9">
                <ref role="ehGHo" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
              </node>
            </node>
            <node concept="2OqwBi" id="4$MeK2bw679" role="33vP2m">
              <node concept="2OqwBi" id="4$MeK2bw4GF" role="2Oq$k0">
                <node concept="13iPFW" id="4$MeK2bw4GG" role="2Oq$k0" />
                <node concept="2Rf3mk" id="4$MeK2bw4GH" role="2OqNvi">
                  <node concept="1xMEDy" id="4$MeK2bw4GI" role="1xVPHs">
                    <node concept="chp4Y" id="4$MeK2bw4GJ" role="ri$Ld">
                      <ref role="cht4Q" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="4$MeK2bw7oI" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pElVuqPEtg" role="3cqZAp">
          <node concept="2OqwBi" id="3pElVuqPEMt" role="3clFbG">
            <node concept="37vLTw" id="3pElVuqRAJu" role="2Oq$k0">
              <ref role="3cqZAo" node="3pElVuqRAJs" resolve="parts" />
            </node>
            <node concept="3$u5V9" id="3pElVuqPEUM" role="2OqNvi">
              <node concept="1bVj0M" id="3pElVuqPEUO" role="23t8la">
                <node concept="3clFbS" id="3pElVuqPEUP" role="1bW5cS">
                  <node concept="3clFbF" id="3pElVuqPRXD" role="3cqZAp">
                    <node concept="BsUDl" id="1lQ5DPQxbXy" role="3clFbG">
                      <ref role="37wK5l" node="5ZOs9JxFLiV" resolve="toRule" />
                      <node concept="37vLTw" id="1lQ5DPQxbXz" role="37wK5m">
                        <ref role="3cqZAo" node="3pElVuqPEUQ" resolve="p" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3pElVuqPEUQ" role="1bW2Oz">
                  <property role="TrG5h" value="p" />
                  <node concept="2jxLKc" id="3pElVuqPEUR" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5ZOs9JxFLiV" role="13h7CS">
      <property role="TrG5h" value="toRule" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="37vLTG" id="5ZOs9JxFLrs" role="3clF46">
        <property role="TrG5h" value="part" />
        <node concept="3Tqbb2" id="5ZOs9JxFLrG" role="1tU5fm">
          <ref role="ehGHo" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5ZOs9JxFLiW" role="1B3o_S" />
      <node concept="3Tqbb2" id="5ZOs9JxFLqo" role="3clF45">
        <ref role="ehGHo" to="7ggn:29R9$zZUovC" resolve="AbstractRule" />
      </node>
      <node concept="3clFbS" id="5ZOs9JxFLiY" role="3clF47" />
    </node>
    <node concept="13i0hz" id="3pElVuqRKKT" role="13h7CS">
      <property role="TrG5h" value="leftExpression" />
      <node concept="37vLTG" id="3pElVuqRKRp" role="3clF46">
        <property role="TrG5h" value="part" />
        <node concept="3Tqbb2" id="3pElVuqRKRD" role="1tU5fm">
          <ref role="ehGHo" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5ZOs9JxDBk7" role="1B3o_S" />
      <node concept="3Tqbb2" id="3pElVuqRKQh" role="3clF45">
        <ref role="ehGHo" to="tpee:hqOqwz4" resolve="DotExpression" />
      </node>
      <node concept="3clFbS" id="3pElVuqRKKW" role="3clF47">
        <node concept="3cpWs8" id="3pElVuqRKSm" role="3cqZAp">
          <node concept="3cpWsn" id="3pElVuqRKSp" role="3cpWs9">
            <property role="TrG5h" value="upperPart" />
            <node concept="3Tqbb2" id="3pElVuqRKSl" role="1tU5fm">
              <ref role="ehGHo" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
            </node>
            <node concept="2OqwBi" id="3pElVuqRL1g" role="33vP2m">
              <node concept="37vLTw" id="3pElVuqRKTW" role="2Oq$k0">
                <ref role="3cqZAo" node="3pElVuqRKRp" resolve="part" />
              </node>
              <node concept="2Xjw5R" id="3pElVuqRL8k" role="2OqNvi">
                <node concept="1xMEDy" id="3pElVuqRL8m" role="1xVPHs">
                  <node concept="chp4Y" id="3pElVuqRLaw" role="ri$Ld">
                    <ref role="cht4Q" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3pElVur3aHy" role="3cqZAp">
          <node concept="3cpWsn" id="3pElVur3aH_" role="3cpWs9">
            <property role="TrG5h" value="upperAssignment" />
            <node concept="3Tqbb2" id="3pElVur3aHw" role="1tU5fm">
              <ref role="ehGHo" to="7ggn:3qVwZ8sHWnm" resolve="RuleAssignmentExpression" />
            </node>
            <node concept="2OqwBi" id="3pElVur3aTO" role="33vP2m">
              <node concept="37vLTw" id="3pElVur3aKQ" role="2Oq$k0">
                <ref role="3cqZAo" node="3pElVuqRKRp" resolve="part" />
              </node>
              <node concept="2Xjw5R" id="3pElVur3b0U" role="2OqNvi">
                <node concept="1xMEDy" id="3pElVur3b0W" role="1xVPHs">
                  <node concept="chp4Y" id="3pElVur3b38" role="ri$Ld">
                    <ref role="cht4Q" to="7ggn:3qVwZ8sHWnm" resolve="RuleAssignmentExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1lQ5DPQIc6j" role="3cqZAp">
          <node concept="3cpWsn" id="1lQ5DPQIc6k" role="3cpWs9">
            <property role="TrG5h" value="base" />
            <node concept="3Tqbb2" id="1lQ5DPQIc5W" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
            </node>
            <node concept="3K4zz7" id="1lQ5DPQIc6l" role="33vP2m">
              <node concept="3K4zz7" id="1lQ5DPQIc6m" role="3K4GZi">
                <node concept="2OqwBi" id="1lQ5DPQIc6n" role="3K4E3e">
                  <node concept="2OqwBi" id="1lQ5DPQIc6o" role="2Oq$k0">
                    <node concept="37vLTw" id="1lQ5DPQIc6p" role="2Oq$k0">
                      <ref role="3cqZAo" node="3pElVur3aH_" resolve="upperAssignment" />
                    </node>
                    <node concept="3TrEf2" id="1lQ5DPQIc6q" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fz7vLUn" resolve="lValue" />
                    </node>
                  </node>
                  <node concept="1$rogu" id="1lQ5DPQIc6r" role="2OqNvi" />
                </node>
                <node concept="2pJPEk" id="1lQ5DPQIc6s" role="3K4GZi">
                  <node concept="2pJPED" id="1lQ5DPQIc6t" role="2pJPEn">
                    <ref role="2pJxaS" to="7ggn:jVwYUSPLKM" resolve="ThisExpression" />
                  </node>
                </node>
                <node concept="3y3z36" id="1lQ5DPQIc6u" role="3K4Cdx">
                  <node concept="10Nm6u" id="1lQ5DPQIc6v" role="3uHU7w" />
                  <node concept="37vLTw" id="1lQ5DPQIc6w" role="3uHU7B">
                    <ref role="3cqZAo" node="3pElVur3aH_" resolve="upperAssignment" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1lQ5DPQIc6x" role="3K4Cdx">
                <node concept="10Nm6u" id="1lQ5DPQIc6y" role="3uHU7w" />
                <node concept="37vLTw" id="1lQ5DPQIc6z" role="3uHU7B">
                  <ref role="3cqZAo" node="3pElVuqRKSp" resolve="upperPart" />
                </node>
              </node>
              <node concept="BsUDl" id="1lQ5DPQIc6$" role="3K4E3e">
                <ref role="37wK5l" node="3pElVuqRKKT" resolve="leftExpression" />
                <node concept="37vLTw" id="1lQ5DPQIc6_" role="37wK5m">
                  <ref role="3cqZAo" node="3pElVuqRKSp" resolve="upperPart" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4$MeK2bvC_5" role="3cqZAp">
          <node concept="2pJPEk" id="1lQ5DPQIcki" role="3clFbG">
            <node concept="2pJPED" id="1lQ5DPQIcnZ" role="2pJPEn">
              <ref role="2pJxaS" to="tpee:hqOqwz4" resolve="DotExpression" />
              <node concept="2pIpSj" id="1lQ5DPQId83" role="2pJxcM">
                <ref role="2pIpSl" to="tpee:hqOq$gm" resolve="operand" />
                <node concept="36biLy" id="1lQ5DPQIggo" role="2pJxcZ">
                  <node concept="37vLTw" id="1lQ5DPQIgiV" role="36biLW">
                    <ref role="3cqZAo" node="1lQ5DPQIc6k" resolve="base" />
                  </node>
                </node>
              </node>
              <node concept="2pIpSj" id="1lQ5DPQIcIx" role="2pJxcM">
                <ref role="2pIpSl" to="tpee:hqOqNr4" resolve="operation" />
                <node concept="36biLy" id="1lQ5DPQIcUM" role="2pJxcZ">
                  <node concept="BsUDl" id="1lQ5DPQIcXl" role="36biLW">
                    <ref role="37wK5l" node="3pElVurb4gX" resolve="nodeOper" />
                    <node concept="37vLTw" id="1lQ5DPQIgls" role="37wK5m">
                      <ref role="3cqZAo" node="3pElVuqRKRp" resolve="part" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3pElVurb4gX" role="13h7CS">
      <property role="2Ki8OM" value="false" />
      <property role="TrG5h" value="nodeOper" />
      <node concept="3Tm6S6" id="3pElVurb4gY" role="1B3o_S" />
      <node concept="3Tqbb2" id="3pElVurb4gZ" role="3clF45">
        <ref role="ehGHo" to="tp25:g$eCIIG" resolve="SNodeOperation" />
      </node>
      <node concept="37vLTG" id="3pElVurb40B" role="3clF46">
        <property role="TrG5h" value="part" />
        <node concept="3Tqbb2" id="3pElVurb40C" role="1tU5fm">
          <ref role="ehGHo" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
        </node>
      </node>
      <node concept="3clFbS" id="3pElVurb3JY" role="3clF47">
        <node concept="3clFbJ" id="1pPEdD6NoR6" role="3cqZAp">
          <node concept="2OqwBi" id="3pElVurb40z" role="3clFbw">
            <node concept="37vLTw" id="3pElVurb40E" role="2Oq$k0">
              <ref role="3cqZAo" node="3pElVurb40B" resolve="part" />
            </node>
            <node concept="1mIQ4w" id="3pElVurb40_" role="2OqNvi">
              <node concept="chp4Y" id="3pElVurb40A" role="cj9EA">
                <ref role="cht4Q" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1pPEdD6NoR9" role="3clFbx">
            <node concept="3cpWs6" id="1pPEdD6NoQs" role="3cqZAp">
              <node concept="1eOMI4" id="1pPEdD6NoQt" role="3cqZAk">
                <node concept="3K4zz7" id="1pPEdD6NoQu" role="1eOMHV">
                  <node concept="2OqwBi" id="1pPEdD6NoQv" role="3K4Cdx">
                    <node concept="2OqwBi" id="1pPEdD6NoQw" role="2Oq$k0">
                      <node concept="1PxgMI" id="1pPEdD6NoQx" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="1pPEdD6NoQy" role="3oSUPX">
                          <ref role="cht4Q" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                        </node>
                        <node concept="37vLTw" id="1pPEdD6NoQz" role="1m5AlR">
                          <ref role="3cqZAo" node="3pElVurb40B" resolve="part" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="1pPEdD6NoQ$" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="1pPEdD6NoQ_" role="2OqNvi">
                      <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                    </node>
                  </node>
                  <node concept="2pJPEk" id="1pPEdD6NoQA" role="3K4E3e">
                    <node concept="2pJPED" id="1pPEdD6NoQB" role="2pJPEn">
                      <ref role="2pJxaS" to="tp25:gzTrEba" resolve="SLinkAccess" />
                      <node concept="2pIpSj" id="1pPEdD6NoQC" role="2pJxcM">
                        <ref role="2pIpSl" to="tp25:gzTt5is" resolve="link" />
                        <node concept="36biLy" id="1pPEdD6NoQD" role="2pJxcZ">
                          <node concept="2OqwBi" id="1pPEdD6NoQE" role="36biLW">
                            <node concept="1PxgMI" id="1pPEdD6NoQF" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="1pPEdD6NoQG" role="3oSUPX">
                                <ref role="cht4Q" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                              </node>
                              <node concept="37vLTw" id="1pPEdD6NoQH" role="1m5AlR">
                                <ref role="3cqZAo" node="3pElVurb40B" resolve="part" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="1pPEdD6NoQI" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2pJPEk" id="1pPEdD6NoQJ" role="3K4GZi">
                    <node concept="2pJPED" id="1pPEdD6NoQK" role="2pJPEn">
                      <ref role="2pJxaS" to="tp25:gzTsc4p" resolve="SLinkListAccess" />
                      <node concept="2pIpSj" id="1pPEdD6NoQL" role="2pJxcM">
                        <ref role="2pIpSl" to="tp25:gzTtc_y" resolve="link" />
                        <node concept="36biLy" id="1pPEdD6NoQM" role="2pJxcZ">
                          <node concept="2OqwBi" id="1pPEdD6NoQN" role="36biLW">
                            <node concept="1PxgMI" id="1pPEdD6NoQO" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="1pPEdD6NoQP" role="3oSUPX">
                                <ref role="cht4Q" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                              </node>
                              <node concept="37vLTw" id="1pPEdD6NoQQ" role="1m5AlR">
                                <ref role="3cqZAo" node="3pElVurb40B" resolve="part" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="1pPEdD6NoQR" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
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
          <node concept="9aQIb" id="1pPEdD6NoQS" role="9aQIa">
            <node concept="3clFbS" id="1pPEdD6NoQU" role="9aQI4">
              <node concept="3cpWs6" id="1pPEdD6NoQW" role="3cqZAp">
                <node concept="2pJPEk" id="1pPEdD6NoQX" role="3cqZAk">
                  <node concept="2pJPED" id="1pPEdD6NoQY" role="2pJPEn">
                    <ref role="2pJxaS" to="tp25:gzTrcDJ" resolve="SPropertyAccess" />
                    <node concept="2pIpSj" id="1pPEdD6NoQZ" role="2pJxcM">
                      <ref role="2pIpSl" to="tp25:gzTsBJd" resolve="property" />
                      <node concept="36biLy" id="1pPEdD6NoR0" role="2pJxcZ">
                        <node concept="2OqwBi" id="1pPEdD6NoR1" role="36biLW">
                          <node concept="1PxgMI" id="1pPEdD6NoR2" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="1pPEdD6NoR3" role="3oSUPX">
                              <ref role="cht4Q" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
                            </node>
                            <node concept="37vLTw" id="1pPEdD6NoR4" role="1m5AlR">
                              <ref role="3cqZAo" node="3pElVurb40B" resolve="part" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="1pPEdD6NoR5" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
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
      </node>
    </node>
    <node concept="13i0hz" id="3pElVur6T68" role="13h7CS">
      <property role="2Ki8OM" value="false" />
      <property role="TrG5h" value="rightExpression" />
      <node concept="3Tm6S6" id="5ZOs9JxDB98" role="1B3o_S" />
      <node concept="3Tqbb2" id="3pElVur6T6a" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
      </node>
      <node concept="37vLTG" id="3pElVur6T5L" role="3clF46">
        <property role="TrG5h" value="part" />
        <node concept="3Tqbb2" id="3pElVur6T5M" role="1tU5fm">
          <ref role="ehGHo" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
        </node>
      </node>
      <node concept="3clFbS" id="3pElVur6T5n" role="3clF47">
        <node concept="3cpWs8" id="5ZOs9JxIM2U" role="3cqZAp">
          <node concept="3cpWsn" id="5ZOs9JxIM2X" role="3cpWs9">
            <property role="TrG5h" value="expr" />
            <node concept="3Tqbb2" id="5ZOs9JxIM2S" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
            </node>
            <node concept="2OqwBi" id="5ZOs9JxIMnf" role="33vP2m">
              <node concept="37vLTw" id="5ZOs9JxIMe9" role="2Oq$k0">
                <ref role="3cqZAo" node="3pElVur6T5L" resolve="part" />
              </node>
              <node concept="3TrEf2" id="5ZOs9JxIMut" role="2OqNvi">
                <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcQ" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5ZOs9JxINa6" role="3cqZAp">
          <node concept="3clFbS" id="5ZOs9JxINa8" role="3clFbx">
            <node concept="3clFbF" id="5ZOs9JxINGH" role="3cqZAp">
              <node concept="37vLTI" id="5ZOs9JxIO0l" role="3clFbG">
                <node concept="37vLTw" id="5ZOs9JxINGF" role="37vLTJ">
                  <ref role="3cqZAo" node="5ZOs9JxIM2X" resolve="expr" />
                </node>
                <node concept="2OqwBi" id="5ZOs9JxIO0P" role="37vLTx">
                  <node concept="1PxgMI" id="5ZOs9JxIO0Q" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="5ZOs9JxIO0R" role="3oSUPX">
                      <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                    </node>
                    <node concept="37vLTw" id="5ZOs9JxIP6B" role="1m5AlR">
                      <ref role="3cqZAo" node="5ZOs9JxIM2X" resolve="expr" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="5ZOs9JxIO0V" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5ZOs9JxIN__" role="3clFbw">
            <node concept="1mIQ4w" id="5ZOs9JxIN_D" role="2OqNvi">
              <node concept="chp4Y" id="5ZOs9JxIN_E" role="cj9EA">
                <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
              </node>
            </node>
            <node concept="37vLTw" id="5ZOs9JxIORJ" role="2Oq$k0">
              <ref role="3cqZAo" node="5ZOs9JxIM2X" resolve="expr" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ZOs9JxIOkL" role="3cqZAp">
          <node concept="37vLTw" id="5ZOs9JxIOkJ" role="3clFbG">
            <ref role="3cqZAo" node="5ZOs9JxIM2X" resolve="expr" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3pElVurbdgA" role="13h7CS">
      <property role="2Ki8OM" value="false" />
      <property role="TrG5h" value="ruleBody" />
      <node concept="37vLTG" id="3pElVurbkUo" role="3clF46">
        <property role="TrG5h" value="part" />
        <node concept="3Tqbb2" id="3pElVurbkVI" role="1tU5fm">
          <ref role="ehGHo" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5ZOs9JxFLhK" role="1B3o_S" />
      <node concept="3clFbS" id="3pElVurbdeT" role="3clF47">
        <node concept="3cpWs8" id="5ZOs9JxIPjA" role="3cqZAp">
          <node concept="3cpWsn" id="5ZOs9JxIPjB" role="3cpWs9">
            <property role="TrG5h" value="left" />
            <node concept="3Tqbb2" id="5ZOs9JxIPj$" role="1tU5fm">
              <ref role="ehGHo" to="tpee:hqOqwz4" resolve="DotExpression" />
            </node>
            <node concept="BsUDl" id="5ZOs9JxIPjC" role="33vP2m">
              <ref role="37wK5l" node="3pElVuqRKKT" resolve="leftExpression" />
              <node concept="37vLTw" id="5ZOs9JxIPjD" role="37wK5m">
                <ref role="3cqZAo" node="3pElVurbkUo" resolve="part" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4$MeK2bt_PA" role="3cqZAp">
          <node concept="3cpWsn" id="4$MeK2bt_PB" role="3cpWs9">
            <property role="TrG5h" value="right" />
            <node concept="3Tqbb2" id="4$MeK2bt_PC" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
            </node>
            <node concept="BsUDl" id="4$MeK2bt_PD" role="33vP2m">
              <ref role="37wK5l" node="3pElVur6T68" resolve="rightExpression" />
              <node concept="37vLTw" id="4$MeK2bt_PE" role="37wK5m">
                <ref role="3cqZAo" node="3pElVurbkUo" resolve="part" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1lQ5DPQzgKy" role="3cqZAp">
          <node concept="3cpWsn" id="1lQ5DPQzgK_" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3Tqbb2" id="1lQ5DPQzgKw" role="1tU5fm">
              <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
            </node>
            <node concept="2OqwBi" id="1lQ5DPQzgXY" role="33vP2m">
              <node concept="37vLTw" id="1lQ5DPQzgP0" role="2Oq$k0">
                <ref role="3cqZAo" node="3pElVurbkUo" resolve="part" />
              </node>
              <node concept="2Xjw5R" id="1lQ5DPQzh54" role="2OqNvi">
                <node concept="1xMEDy" id="1lQ5DPQzh56" role="1xVPHs">
                  <node concept="chp4Y" id="1lQ5DPQzh7i" role="ri$Ld">
                    <ref role="cht4Q" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ZOs9JxIR3D" role="3cqZAp">
          <node concept="2pJPEk" id="5ZOs9JxIQOJ" role="3clFbG">
            <node concept="2pJPED" id="5ZOs9JxIQQC" role="2pJPEn">
              <ref role="2pJxaS" to="tpee:fzclF80" resolve="StatementList" />
              <node concept="2pIpSj" id="1lQ5DPQx7WR" role="2pJxcM">
                <ref role="2pIpSl" to="tpee:fzcqZ_x" resolve="statement" />
                <node concept="2pJPED" id="1lQ5DPQx7ZL" role="2pJxcZ">
                  <ref role="2pJxaS" to="tpee:fzclF8j" resolve="ExpressionStatement" />
                  <node concept="2pIpSj" id="1lQ5DPQx85t" role="2pJxcM">
                    <ref role="2pIpSl" to="tpee:fzclF8k" resolve="expression" />
                    <node concept="2pJPED" id="1lQ5DPQx88r" role="2pJxcZ">
                      <ref role="2pJxaS" to="7ggn:3qVwZ8sHWnm" resolve="RuleAssignmentExpression" />
                      <node concept="2pIpSj" id="1lQ5DPQx8e5" role="2pJxcM">
                        <ref role="2pIpSl" to="tpee:fz7vLUn" resolve="lValue" />
                        <node concept="36biLy" id="1lQ5DPQIgHz" role="2pJxcZ">
                          <node concept="37vLTw" id="1lQ5DPQIgKu" role="36biLW">
                            <ref role="3cqZAo" node="5ZOs9JxIPjB" resolve="left" />
                          </node>
                        </node>
                      </node>
                      <node concept="2pIpSj" id="1lQ5DPQx8I_" role="2pJxcM">
                        <ref role="2pIpSl" to="tpee:fz7vLUp" resolve="rValue" />
                        <node concept="36biLy" id="1lQ5DPQx8LM" role="2pJxcZ">
                          <node concept="2OqwBi" id="1pPEdD6P1ex" role="36biLW">
                            <node concept="37vLTw" id="1lQ5DPQx8OG" role="2Oq$k0">
                              <ref role="3cqZAo" node="4$MeK2bt_PB" resolve="right" />
                            </node>
                            <node concept="1$rogu" id="1pPEdD6P1oc" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="2pIpSj" id="1lQ5DPQzg$M" role="2pJxcM">
                        <ref role="2pIpSl" to="7ggn:1lQ5DPQzdHE" resolve="originalContext" />
                        <node concept="36biLy" id="1lQ5DPQzgC5" role="2pJxcZ">
                          <node concept="37vLTw" id="2GrW9c465xs" role="36biLW">
                            <ref role="3cqZAo" node="1lQ5DPQzgK_" resolve="builder" />
                          </node>
                        </node>
                      </node>
                      <node concept="2pIpSj" id="1pPEdD6OFH1" role="2pJxcM">
                        <ref role="2pIpSl" to="7ggn:1pPEdD6OAAJ" resolve="originalRight" />
                        <node concept="36biLy" id="1pPEdD6OFKh" role="2pJxcZ">
                          <node concept="37vLTw" id="1pPEdD6P8k2" role="36biLW">
                            <ref role="3cqZAo" node="4$MeK2bt_PB" resolve="right" />
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
      </node>
      <node concept="3Tqbb2" id="3pElVurbkQp" role="3clF45">
        <ref role="ehGHo" to="tpee:fzclF80" resolve="StatementList" />
      </node>
    </node>
    <node concept="13hLZK" id="29R9$$07oyg" role="13h7CW">
      <node concept="3clFbS" id="29R9$$07oyh" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="61p65V8xB8g">
    <ref role="13h7C2" to="7ggn:61p65V8x$6I" resolve="ThisContext" />
    <node concept="13i0hz" id="29R9$zZWsRH" role="13h7CS">
      <property role="TrG5h" value="getContextType" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="29R9$zZWsRI" role="1B3o_S" />
      <node concept="3Tqbb2" id="29R9$zZYuwG" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3clFbS" id="29R9$zZWsRK" role="3clF47" />
    </node>
    <node concept="13hLZK" id="61p65V8xB8h" role="13h7CW">
      <node concept="3clFbS" id="61p65V8xB8i" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5ZOs9JxyM$N">
    <ref role="13h7C2" to="7ggn:5ZOs9JxpqPU" resolve="Mapping" />
    <node concept="13i0hz" id="5ZOs9Jx$9jv" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getContextType" />
      <ref role="13i0hy" node="29R9$zZWsRH" resolve="getContextType" />
      <node concept="3Tm1VV" id="5ZOs9Jx$9jw" role="1B3o_S" />
      <node concept="3clFbS" id="5ZOs9Jx$9jx" role="3clF47">
        <node concept="3cpWs8" id="5ZOs9Jx$9jy" role="3cqZAp">
          <node concept="3cpWsn" id="5ZOs9Jx$9jz" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3Tqbb2" id="5ZOs9Jx$9j$" role="1tU5fm">
              <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
            </node>
            <node concept="2ShNRf" id="5ZOs9Jx$9j_" role="33vP2m">
              <node concept="3zrR0B" id="5ZOs9Jx$9jA" role="2ShVmc">
                <node concept="3Tqbb2" id="5ZOs9Jx$9jB" role="3zrR0E">
                  <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ZOs9Jx$9jC" role="3cqZAp">
          <node concept="37vLTI" id="5ZOs9Jx$9jD" role="3clFbG">
            <node concept="2OqwBi" id="5ZOs9Jx$9jE" role="37vLTx">
              <node concept="13iPFW" id="5ZOs9Jx$9jF" role="2Oq$k0" />
              <node concept="3TrEf2" id="5ZOs9Jx$9jG" role="2OqNvi">
                <ref role="3Tt5mk" to="tp3r:4IP40Bi2KaL" resolve="concept" />
              </node>
            </node>
            <node concept="2OqwBi" id="5ZOs9Jx$9jH" role="37vLTJ">
              <node concept="37vLTw" id="5ZOs9Jx$9jI" role="2Oq$k0">
                <ref role="3cqZAo" node="5ZOs9Jx$9jz" resolve="type" />
              </node>
              <node concept="3TrEf2" id="5ZOs9Jx$9jJ" role="2OqNvi">
                <ref role="3Tt5mk" to="tp25:g$ehGDh" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ZOs9Jx$9jK" role="3cqZAp">
          <node concept="37vLTw" id="5ZOs9Jx$9jL" role="3clFbG">
            <ref role="3cqZAo" node="5ZOs9Jx$9jz" resolve="type" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5ZOs9Jx$9jM" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13hLZK" id="5ZOs9JxyM$O" role="13h7CW">
      <node concept="3clFbS" id="5ZOs9JxyM$P" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5ZOs9Jx$9UN">
    <ref role="13h7C2" to="7ggn:5ZOs9JxpqPV" resolve="LinkMapping" />
    <node concept="13i0hz" id="5ZOs9Jx$9UY" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getContextType" />
      <ref role="13i0hy" node="29R9$zZWsRH" resolve="getContextType" />
      <node concept="3Tm1VV" id="5ZOs9Jx$9UZ" role="1B3o_S" />
      <node concept="3clFbS" id="5ZOs9Jx$9V0" role="3clF47">
        <node concept="3cpWs8" id="5ZOs9Jx$9V1" role="3cqZAp">
          <node concept="3cpWsn" id="5ZOs9Jx$9V2" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3Tqbb2" id="5ZOs9Jx$9V3" role="1tU5fm">
              <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
            </node>
            <node concept="2ShNRf" id="5ZOs9Jx$9V4" role="33vP2m">
              <node concept="3zrR0B" id="5ZOs9Jx$9V5" role="2ShVmc">
                <node concept="3Tqbb2" id="5ZOs9Jx$9V6" role="3zrR0E">
                  <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ZOs9Jx$9V7" role="3cqZAp">
          <node concept="37vLTI" id="5ZOs9Jx$9V8" role="3clFbG">
            <node concept="2OqwBi" id="5ZOs9Jx$9V9" role="37vLTx">
              <node concept="2OqwBi" id="5ZOs9Jx$9Va" role="2Oq$k0">
                <node concept="13iPFW" id="5ZOs9Jx$9Vb" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5ZOs9Jx$9Vc" role="2OqNvi">
                  <node concept="1xMEDy" id="5ZOs9Jx$9Vd" role="1xVPHs">
                    <node concept="chp4Y" id="5ZOs9Jx$9Ve" role="ri$Ld">
                      <ref role="cht4Q" to="7ggn:29R9$zZU3_j" resolve="ConceptRuleSet" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="5ZOs9Jx$9Vf" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:29R9$zZU3_y" resolve="concept" />
              </node>
            </node>
            <node concept="2OqwBi" id="5ZOs9Jx$9Vg" role="37vLTJ">
              <node concept="37vLTw" id="5ZOs9Jx$9Vh" role="2Oq$k0">
                <ref role="3cqZAo" node="5ZOs9Jx$9V2" resolve="type" />
              </node>
              <node concept="3TrEf2" id="5ZOs9Jx$9Vi" role="2OqNvi">
                <ref role="3Tt5mk" to="tp25:g$ehGDh" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ZOs9Jx$9Vj" role="3cqZAp">
          <node concept="37vLTw" id="5ZOs9Jx$9Vk" role="3clFbG">
            <ref role="3cqZAo" node="5ZOs9Jx$9V2" resolve="type" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5ZOs9Jx$9Vl" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13hLZK" id="5ZOs9Jx$9UO" role="13h7CW">
      <node concept="3clFbS" id="5ZOs9Jx$9UP" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5ZOs9Jx$agK">
    <ref role="13h7C2" to="7ggn:5ZOs9JxpqPW" resolve="PropertyMapping" />
    <node concept="13i0hz" id="5ZOs9Jx$agV" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getContextType" />
      <ref role="13i0hy" node="29R9$zZWsRH" resolve="getContextType" />
      <node concept="3Tm1VV" id="5ZOs9Jx$agW" role="1B3o_S" />
      <node concept="3clFbS" id="5ZOs9Jx$agX" role="3clF47">
        <node concept="3cpWs8" id="5ZOs9Jx$agY" role="3cqZAp">
          <node concept="3cpWsn" id="5ZOs9Jx$agZ" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3Tqbb2" id="5ZOs9Jx$ah0" role="1tU5fm">
              <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
            </node>
            <node concept="2ShNRf" id="5ZOs9Jx$ah1" role="33vP2m">
              <node concept="3zrR0B" id="5ZOs9Jx$ah2" role="2ShVmc">
                <node concept="3Tqbb2" id="5ZOs9Jx$ah3" role="3zrR0E">
                  <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ZOs9Jx$ah4" role="3cqZAp">
          <node concept="37vLTI" id="5ZOs9Jx$ah5" role="3clFbG">
            <node concept="2OqwBi" id="5ZOs9Jx$ah6" role="37vLTx">
              <node concept="2OqwBi" id="5ZOs9Jx$ah7" role="2Oq$k0">
                <node concept="13iPFW" id="5ZOs9Jx$ah8" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5ZOs9Jx$ah9" role="2OqNvi">
                  <node concept="1xMEDy" id="5ZOs9Jx$aha" role="1xVPHs">
                    <node concept="chp4Y" id="5ZOs9Jx$ahb" role="ri$Ld">
                      <ref role="cht4Q" to="7ggn:29R9$zZU3_j" resolve="ConceptRuleSet" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="5ZOs9Jx$ahc" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:29R9$zZU3_y" resolve="concept" />
              </node>
            </node>
            <node concept="2OqwBi" id="5ZOs9Jx$ahd" role="37vLTJ">
              <node concept="37vLTw" id="5ZOs9Jx$ahe" role="2Oq$k0">
                <ref role="3cqZAo" node="5ZOs9Jx$agZ" resolve="type" />
              </node>
              <node concept="3TrEf2" id="5ZOs9Jx$ahf" role="2OqNvi">
                <ref role="3Tt5mk" to="tp25:g$ehGDh" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ZOs9Jx$ahg" role="3cqZAp">
          <node concept="37vLTw" id="5ZOs9Jx$ahh" role="3clFbG">
            <ref role="3cqZAo" node="5ZOs9Jx$agZ" resolve="type" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5ZOs9Jx$ahi" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13hLZK" id="5ZOs9Jx$agL" role="13h7CW">
      <node concept="3clFbS" id="5ZOs9Jx$agM" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4$MeK2bmypo">
    <ref role="13h7C2" to="7ggn:4$MeK2bmw9s" resolve="AbstractAttribute" />
    <node concept="13hLZK" id="4$MeK2bmypp" role="13h7CW">
      <node concept="3clFbS" id="4$MeK2bmypq" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4$MeK2bmzF6">
    <ref role="13h7C2" to="7ggn:4$MeK2bmkiB" resolve="Attribute" />
    <node concept="13i0hz" id="4$MeK2bmzPn" role="13h7CS">
      <property role="TrG5h" value="getContextType" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="29R9$zZWsRH" resolve="getContextType" />
      <node concept="3Tm1VV" id="4$MeK2bmzPo" role="1B3o_S" />
      <node concept="3clFbS" id="4$MeK2bmzPp" role="3clF47">
        <node concept="3clFbF" id="4$MeK2bmzPq" role="3cqZAp">
          <node concept="2OqwBi" id="4$MeK2bmzPr" role="3clFbG">
            <node concept="2OqwBi" id="4$MeK2bmzPs" role="2Oq$k0">
              <node concept="13iPFW" id="4$MeK2bmzPt" role="2Oq$k0" />
              <node concept="3TrEf2" id="4$MeK2bmzPu" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:4$MeK2bmypm" resolve="context" />
              </node>
            </node>
            <node concept="2qgKlT" id="4$MeK2bmzPv" role="2OqNvi">
              <ref role="37wK5l" node="jVwYUSRkJq" resolve="getType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4$MeK2bmzPw" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13hLZK" id="4$MeK2bmzF7" role="13h7CW">
      <node concept="3clFbS" id="4$MeK2bmzF8" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4$MeK2bm$gn">
    <ref role="13h7C2" to="7ggn:4$MeK2bmw9b" resolve="ConceptAttribute" />
    <node concept="13i0hz" id="4$MeK2bm$gy" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getContextType" />
      <ref role="13i0hy" node="29R9$zZWsRH" resolve="getContextType" />
      <node concept="3Tm1VV" id="4$MeK2bm$gz" role="1B3o_S" />
      <node concept="3clFbS" id="4$MeK2bm$g$" role="3clF47">
        <node concept="3cpWs8" id="4$MeK2bm$g_" role="3cqZAp">
          <node concept="3cpWsn" id="4$MeK2bm$gA" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3Tqbb2" id="4$MeK2bm$gB" role="1tU5fm">
              <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
            </node>
            <node concept="2ShNRf" id="4$MeK2bm$gC" role="33vP2m">
              <node concept="3zrR0B" id="4$MeK2bm$gD" role="2ShVmc">
                <node concept="3Tqbb2" id="4$MeK2bm$gE" role="3zrR0E">
                  <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4$MeK2bm$gF" role="3cqZAp">
          <node concept="37vLTI" id="4$MeK2bm$gG" role="3clFbG">
            <node concept="2OqwBi" id="4$MeK2bm$gH" role="37vLTx">
              <node concept="2OqwBi" id="4$MeK2bm$gI" role="2Oq$k0">
                <node concept="13iPFW" id="4$MeK2bm$gJ" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4$MeK2bm$gK" role="2OqNvi">
                  <node concept="1xMEDy" id="4$MeK2bm$gL" role="1xVPHs">
                    <node concept="chp4Y" id="4$MeK2bm$gM" role="ri$Ld">
                      <ref role="cht4Q" to="7ggn:29R9$zZU3_j" resolve="ConceptRuleSet" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="4$MeK2bm$gN" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:29R9$zZU3_y" resolve="concept" />
              </node>
            </node>
            <node concept="2OqwBi" id="4$MeK2bm$gO" role="37vLTJ">
              <node concept="37vLTw" id="4$MeK2bm$gP" role="2Oq$k0">
                <ref role="3cqZAo" node="4$MeK2bm$gA" resolve="type" />
              </node>
              <node concept="3TrEf2" id="4$MeK2bm$gQ" role="2OqNvi">
                <ref role="3Tt5mk" to="tp25:g$ehGDh" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4$MeK2bm$gR" role="3cqZAp">
          <node concept="37vLTw" id="4$MeK2bm$gS" role="3clFbG">
            <ref role="3cqZAo" node="4$MeK2bm$gA" resolve="type" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4$MeK2bm$gT" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13hLZK" id="4$MeK2bm$go" role="13h7CW">
      <node concept="3clFbS" id="4$MeK2bm$gp" role="2VODD2" />
    </node>
  </node>
</model>

