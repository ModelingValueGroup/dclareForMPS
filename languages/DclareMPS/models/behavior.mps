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
    <import index="19uv" ref="r:f4b34c7d-c02f-43b9-b6e7-feff8966461c(jetbrains.mps.lang.quotation.intentions)" />
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
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="8182547171709738802" name="jetbrains.mps.lang.quotation.structure.NodeBuilderList" flags="nn" index="36be1Y">
        <child id="8182547171709738803" name="nodes" index="36be1Z" />
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
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
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
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="13h7C7" id="4KjhF$ZFHDZ">
    <ref role="13h7C2" to="7ggn:3qVwZ8sHWnm" resolve="AssignmentRuleExpression" />
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
  <node concept="13h7C7" id="29R9$zZWsRy">
    <ref role="13h7C2" to="7ggn:29R9$zZUovC" resolve="Rule" />
    <node concept="13i0hz" id="6HWpSUEwIVd" role="13h7CS">
      <property role="TrG5h" value="getContextType" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="29R9$zZWsRH" resolve="getContextType" />
      <node concept="3clFbS" id="6HWpSUEwIVg" role="3clF47">
        <node concept="3clFbF" id="6HWpSUEwIW2" role="3cqZAp">
          <node concept="2OqwBi" id="6HWpSUEwKUG" role="3clFbG">
            <node concept="1PxgMI" id="6HWpSUEwKG6" role="2Oq$k0">
              <node concept="chp4Y" id="6HWpSUEwKHl" role="3oSUPX">
                <ref role="cht4Q" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
              </node>
              <node concept="2OqwBi" id="6HWpSUEwJjY" role="1m5AlR">
                <node concept="13iPFW" id="6HWpSUEwIW1" role="2Oq$k0" />
                <node concept="1mfA1w" id="6HWpSUEwJS2" role="2OqNvi" />
              </node>
            </node>
            <node concept="2qgKlT" id="6HWpSUEwL96" role="2OqNvi">
              <ref role="37wK5l" node="29R9$zZWsRH" resolve="getContextType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6HWpSUEwIVP" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3Tm1VV" id="6HWpSUEwIVQ" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="29R9$zZWsRz" role="13h7CW">
      <node concept="3clFbS" id="29R9$zZWsR$" role="2VODD2">
        <node concept="3clFbF" id="6HWpSUFbKWB" role="3cqZAp">
          <node concept="37vLTI" id="6HWpSUFbMd0" role="3clFbG">
            <node concept="2pJPEk" id="6HWpSUFbMkd" role="37vLTx">
              <node concept="2pJPED" id="6HWpSUFbMsG" role="2pJPEn">
                <ref role="2pJxaS" to="tpee:fzcqZ_H" resolve="VoidType" />
              </node>
            </node>
            <node concept="2OqwBi" id="6HWpSUFbLgx" role="37vLTJ">
              <node concept="13iPFW" id="6HWpSUFbKWA" role="2Oq$k0" />
              <node concept="3TrEf2" id="6HWpSUFbLOE" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="29R9$$07oyf">
    <ref role="13h7C2" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
    <node concept="13i0hz" id="3pElVuqPFEy" role="13h7CS">
      <property role="TrG5h" value="addDerivedRules" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <node concept="3Tm1VV" id="3pElVuqPFEz" role="1B3o_S" />
      <node concept="3clFbS" id="3pElVuqPFE_" role="3clF47">
        <node concept="3clFbF" id="6HWpSUEwdYZ" role="3cqZAp">
          <node concept="2OqwBi" id="6HWpSUEwjSF" role="3clFbG">
            <node concept="2OqwBi" id="6HWpSUEwe8b" role="2Oq$k0">
              <node concept="13iPFW" id="6HWpSUEwdYY" role="2Oq$k0" />
              <node concept="3Tsc0h" id="6HWpSUEwejF" role="2OqNvi">
                <ref role="3TtcxE" to="7ggn:6HWpSUEu3U6" resolve="rules" />
              </node>
            </node>
            <node concept="X8dFx" id="6HWpSUEwopX" role="2OqNvi">
              <node concept="BsUDl" id="6HWpSUEwoYo" role="25WWJ7">
                <ref role="37wK5l" node="3pElVuqPteM" resolve="getDerivedRules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6HWpSUFgbKE" role="3cqZAp">
          <node concept="2GrKxI" id="6HWpSUFgbKG" role="2Gsz3X">
            <property role="TrG5h" value="r" />
          </node>
          <node concept="2OqwBi" id="6HWpSUFgqb4" role="2GsD0m">
            <node concept="13iPFW" id="6HWpSUFgjaB" role="2Oq$k0" />
            <node concept="3Tsc0h" id="6HWpSUFgt6S" role="2OqNvi">
              <ref role="3TtcxE" to="7ggn:6HWpSUEu3U6" resolve="rules" />
            </node>
          </node>
          <node concept="3clFbS" id="6HWpSUFgbKK" role="2LFqv$">
            <node concept="3clFbF" id="6HWpSUFg$9x" role="3cqZAp">
              <node concept="37vLTI" id="6HWpSUFgWbo" role="3clFbG">
                <node concept="2pJPEk" id="6HWpSUFh3jV" role="37vLTx">
                  <node concept="2pJPED" id="6HWpSUFh3t0" role="2pJPEn">
                    <ref role="2pJxaS" to="tpee:fzclF80" resolve="StatementList" />
                    <node concept="2pIpSj" id="6HWpSUFh3Dx" role="2pJxcM">
                      <ref role="2pIpSl" to="tpee:fzcqZ_x" resolve="statement" />
                      <node concept="36be1Y" id="6HWpSUFh3Lc" role="2pJxcZ">
                        <node concept="36biLy" id="6HWpSUFh3Oo" role="36be1Z">
                          <node concept="2OqwBi" id="6HWpSUFhbdE" role="36biLW">
                            <node concept="2OqwBi" id="6HWpSUFh4lj" role="2Oq$k0">
                              <node concept="2GrUjf" id="6HWpSUFh3X2" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="6HWpSUFgbKG" resolve="r" />
                              </node>
                              <node concept="3TrEf2" id="6HWpSUFh5F3" role="2OqNvi">
                                <ref role="3Tt5mk" to="7ggn:6HWpSUFcW9N" resolve="statement" />
                              </node>
                            </node>
                            <node concept="1$rogu" id="6HWpSUFhiMb" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6HWpSUFg$tq" role="37vLTJ">
                  <node concept="2GrUjf" id="6HWpSUFg$9w" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="6HWpSUFgbKG" resolve="r" />
                  </node>
                  <node concept="3TrEf2" id="6HWpSUFgBEs" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3pElVuqXE3X" role="3clF45" />
    </node>
    <node concept="13i0hz" id="6HWpSUEvVjF" role="13h7CS">
      <property role="TrG5h" value="getMembers" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpek:hEwJjl2" resolve="getMembers" />
      <node concept="3clFbS" id="6HWpSUEvVjI" role="3clF47">
        <node concept="3clFbF" id="6HWpSUEvVWa" role="3cqZAp">
          <node concept="2OqwBi" id="6HWpSUEw4FP" role="3clFbG">
            <node concept="2OqwBi" id="6HWpSUEvZQm" role="2Oq$k0">
              <node concept="2OqwBi" id="6HWpSUEvW7o" role="2Oq$k0">
                <node concept="13iPFW" id="6HWpSUEvVW9" role="2Oq$k0" />
                <node concept="3Tsc0h" id="6HWpSUEvWiS" role="2OqNvi">
                  <ref role="3TtcxE" to="7ggn:6HWpSUEu3U8" resolve="attributes" />
                </node>
              </node>
              <node concept="3QWeyG" id="6HWpSUEw2HB" role="2OqNvi">
                <node concept="2OqwBi" id="6HWpSUEw34M" role="576Qk">
                  <node concept="13iPFW" id="6HWpSUEw2NQ" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6HWpSUEw3mi" role="2OqNvi">
                    <ref role="3TtcxE" to="7ggn:6HWpSUEu3U6" resolve="rules" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6HWpSUEw7Yd" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="6HWpSUEvVDi" role="3clF45" />
      <node concept="3Tm1VV" id="6HWpSUEvVDj" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="3pElVuqPteM" role="13h7CS">
      <property role="TrG5h" value="getDerivedRules" />
      <node concept="3Tm6S6" id="6HWpSUEwvxX" role="1B3o_S" />
      <node concept="A3Dl8" id="3pElVuqPtiY" role="3clF45">
        <node concept="3Tqbb2" id="3pElVuqPtjd" role="A3Ik2">
          <ref role="ehGHo" to="7ggn:29R9$zZUovC" resolve="Rule" />
        </node>
      </node>
      <node concept="3clFbS" id="3pElVuqPteP" role="3clF47">
        <node concept="2Gpval" id="1BBe7Sou5Bk" role="3cqZAp">
          <node concept="2GrKxI" id="1BBe7Sou5Bm" role="2Gsz3X">
            <property role="TrG5h" value="q" />
          </node>
          <node concept="3clFbS" id="1BBe7Sou5Bq" role="2LFqv$">
            <node concept="3clFbF" id="1BBe7Sou7Qv" role="3cqZAp">
              <node concept="2OqwBi" id="5oUXqOrkGKs" role="3clFbG">
                <node concept="1P9Npp" id="5oUXqOrkGKy" role="2OqNvi">
                  <node concept="2OqwBi" id="5oUXqOrkGJY" role="1P9ThW">
                    <node concept="2ShNRf" id="5oUXqOrkzLj" role="2Oq$k0">
                      <node concept="1pGfFk" id="5oUXqOrkGJC" role="2ShVmc">
                        <ref role="37wK5l" to="19uv:76efOMRDFzU" resolve="QuotationConverter" />
                        <node concept="2GrUjf" id="1BBe7Soug6l" role="37wK5m">
                          <ref role="2Gs0qQ" node="1BBe7Sou5Bm" resolve="q" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5oUXqOrkGK4" role="2OqNvi">
                      <ref role="37wK5l" to="19uv:76efOMRDF$9" resolve="convert" />
                    </node>
                  </node>
                </node>
                <node concept="2GrUjf" id="1BBe7SoufZt" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1BBe7Sou5Bm" resolve="q" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1BBe7Sou6YW" role="2GsD0m">
            <node concept="13iPFW" id="1BBe7Sou6_J" role="2Oq$k0" />
            <node concept="2Rf3mk" id="1BBe7Sou7nz" role="2OqNvi">
              <node concept="1xMEDy" id="1BBe7Sou7n_" role="1xVPHs">
                <node concept="chp4Y" id="1BBe7Sou7AX" role="ri$Ld">
                  <ref role="cht4Q" to="tp3r:hqc44pp" resolve="Quotation" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2ADKImQ2Vz1" role="3cqZAp">
          <node concept="2GrKxI" id="2ADKImQ2Vz3" role="2Gsz3X">
            <property role="TrG5h" value="b" />
          </node>
          <node concept="2OqwBi" id="2ADKImQ2Wxc" role="2GsD0m">
            <node concept="13iPFW" id="2ADKImQ2W6d" role="2Oq$k0" />
            <node concept="2Rf3mk" id="2ADKImQ2WVD" role="2OqNvi">
              <node concept="1xMEDy" id="2ADKImQ2WVF" role="1xVPHs">
                <node concept="chp4Y" id="2ADKImQ2XcR" role="ri$Ld">
                  <ref role="cht4Q" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2ADKImQ2Vz7" role="2LFqv$">
            <node concept="3clFbF" id="2ADKImQ2Xu9" role="3cqZAp">
              <node concept="2OqwBi" id="2ADKImQ2YaM" role="3clFbG">
                <node concept="2JrnkZ" id="2ADKImQ2XKX" role="2Oq$k0">
                  <node concept="2GrUjf" id="2ADKImQ2Xu8" role="2JrQYb">
                    <ref role="2Gs0qQ" node="2ADKImQ2Vz3" resolve="b" />
                  </node>
                </node>
                <node concept="liA8E" id="2ADKImQ2Yz1" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object):void" resolve="putUserObject" />
                  <node concept="Xl_RD" id="2ADKImQ2YCD" role="37wK5m">
                    <property role="Xl_RC" value="ORIGINAL" />
                  </node>
                  <node concept="2GrUjf" id="2ADKImQ31gw" role="37wK5m">
                    <ref role="2Gs0qQ" node="2ADKImQ2Vz3" resolve="b" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="30GBB6Y_8W4" role="3cqZAp">
          <node concept="2OqwBi" id="30GBB6YGw_q" role="3clFbG">
            <node concept="2OqwBi" id="30GBB6Y_a0T" role="2Oq$k0">
              <node concept="2OqwBi" id="30GBB6Y_bbv" role="2Oq$k0">
                <node concept="2OqwBi" id="30GBB6Y_9b0" role="2Oq$k0">
                  <node concept="13iPFW" id="30GBB6Y_8W2" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6HWpSUEuh7i" role="2OqNvi">
                    <ref role="3TtcxE" to="7ggn:6HWpSUEu3U8" resolve="attributes" />
                  </node>
                </node>
                <node concept="3zZkjj" id="30GBB6Y_br6" role="2OqNvi">
                  <node concept="1bVj0M" id="30GBB6Y_br8" role="23t8la">
                    <node concept="3clFbS" id="30GBB6Y_br9" role="1bW5cS">
                      <node concept="3clFbF" id="30GBB6Y_c7M" role="3cqZAp">
                        <node concept="3y3z36" id="30GBB6Y_dF3" role="3clFbG">
                          <node concept="10Nm6u" id="30GBB6Y_dUc" role="3uHU7w" />
                          <node concept="2OqwBi" id="30GBB6Y_ctq" role="3uHU7B">
                            <node concept="37vLTw" id="30GBB6Y_c7L" role="2Oq$k0">
                              <ref role="3cqZAo" node="30GBB6Y_bra" resolve="a" />
                            </node>
                            <node concept="3TrEf2" id="30GBB6Y_cWc" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:fz3vP1I" resolve="initializer" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="30GBB6Y_bra" role="1bW2Oz">
                      <property role="TrG5h" value="a" />
                      <node concept="2jxLKc" id="30GBB6Y_brb" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="30GBB6Y_aFE" role="2OqNvi">
                <node concept="1bVj0M" id="30GBB6Y_aFG" role="23t8la">
                  <node concept="3clFbS" id="30GBB6Y_aFH" role="1bW5cS">
                    <node concept="3clFbF" id="30GBB6Y_e9b" role="3cqZAp">
                      <node concept="BsUDl" id="30GBB6Y_e9a" role="3clFbG">
                        <ref role="37wK5l" node="6HWpSUEuo_q" resolve="toRule" />
                        <node concept="37vLTw" id="30GBB6Y_fqK" role="37wK5m">
                          <ref role="3cqZAo" node="30GBB6Y_aFI" resolve="a" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="30GBB6Y_aFI" role="1bW2Oz">
                    <property role="TrG5h" value="a" />
                    <node concept="2jxLKc" id="30GBB6Y_aFJ" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3QWeyG" id="30GBB6YGwYO" role="2OqNvi">
              <node concept="2OqwBi" id="3pElVuqPEMt" role="576Qk">
                <node concept="3$u5V9" id="3pElVuqPEUM" role="2OqNvi">
                  <node concept="1bVj0M" id="3pElVuqPEUO" role="23t8la">
                    <node concept="3clFbS" id="3pElVuqPEUP" role="1bW5cS">
                      <node concept="3clFbF" id="3pElVuqPRXD" role="3cqZAp">
                        <node concept="BsUDl" id="1lQ5DPQxbXy" role="3clFbG">
                          <ref role="37wK5l" node="6HWpSUEvzAI" resolve="toRule" />
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
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6HWpSUEuo_q" role="13h7CS">
      <property role="TrG5h" value="toRule" />
      <property role="2Ki8OM" value="false" />
      <node concept="3clFbS" id="6HWpSUEuo_r" role="3clF47">
        <node concept="3cpWs8" id="6HWpSUFfNMp" role="3cqZAp">
          <node concept="3cpWsn" id="6HWpSUFfNMq" role="3cpWs9">
            <property role="TrG5h" value="ruleBody" />
            <node concept="3Tqbb2" id="6HWpSUFfNMo" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fzclF8l" resolve="Statement" />
            </node>
            <node concept="BsUDl" id="6HWpSUFfNMr" role="33vP2m">
              <ref role="37wK5l" node="30GBB6YADEu" resolve="ruleBody" />
              <node concept="37vLTw" id="6HWpSUFfNMs" role="37wK5m">
                <ref role="3cqZAo" node="6HWpSUEuo_Z" resolve="attr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6HWpSUEuo_A" role="3cqZAp">
          <node concept="2pJPEk" id="6HWpSUEuo_B" role="3clFbG">
            <node concept="2pJPED" id="6HWpSUEuo_C" role="2pJPEn">
              <ref role="2pJxaS" to="7ggn:29R9$zZUovC" resolve="Rule" />
              <node concept="2pJxcG" id="6HWpSUEuo_G" role="2pJxcM">
                <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                <node concept="3cpWs3" id="6HWpSUEuo_H" role="2pJxcZ">
                  <node concept="2OqwBi" id="6HWpSUEuo_I" role="3uHU7w">
                    <node concept="2OqwBi" id="6HWpSUEuo_J" role="2Oq$k0">
                      <node concept="2JrnkZ" id="6HWpSUEuo_K" role="2Oq$k0">
                        <node concept="37vLTw" id="6HWpSUEuo_L" role="2JrQYb">
                          <ref role="3cqZAo" node="6HWpSUEuo_Z" resolve="attr" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6HWpSUEuo_M" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6HWpSUEuo_N" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="6HWpSUEuo_O" role="3uHU7B">
                    <node concept="Xl_RD" id="6HWpSUEuo_P" role="3uHU7w">
                      <property role="Xl_RC" value="_" />
                    </node>
                    <node concept="2OqwBi" id="6HWpSUEuo_Q" role="3uHU7B">
                      <node concept="37vLTw" id="6HWpSUEuo_R" role="2Oq$k0">
                        <ref role="3cqZAo" node="6HWpSUEuo_Z" resolve="attr" />
                      </node>
                      <node concept="3TrcHB" id="6HWpSUEuo_S" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2pIpSj" id="6HWpSUEuo_T" role="2pJxcM">
                <ref role="2pIpSl" to="tpee:fzclF7X" resolve="returnType" />
                <node concept="2pJPED" id="6HWpSUEuo_U" role="2pJxcZ">
                  <ref role="2pJxaS" to="tpee:fzcqZ_H" resolve="VoidType" />
                </node>
              </node>
              <node concept="2pIpSj" id="6HWpSUEuo_V" role="2pJxcM">
                <ref role="2pIpSl" to="7ggn:6HWpSUFcW9N" resolve="statement" />
                <node concept="36biLy" id="6HWpSUEvxAd" role="2pJxcZ">
                  <node concept="37vLTw" id="6HWpSUFfNMt" role="36biLW">
                    <ref role="3cqZAo" node="6HWpSUFfNMq" resolve="ruleBody" />
                  </node>
                </node>
              </node>
              <node concept="2pIpSj" id="6HWpSUFfNum" role="2pJxcM">
                <ref role="2pIpSl" to="tpee:fzclF7Z" resolve="body" />
                <node concept="2pJPED" id="6HWpSUFfNun" role="2pJxcZ">
                  <ref role="2pJxaS" to="tpee:fzclF80" resolve="StatementList" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6HWpSUEuo_Z" role="3clF46">
        <property role="TrG5h" value="attr" />
        <node concept="3Tqbb2" id="6HWpSUEuoA0" role="1tU5fm">
          <ref role="ehGHo" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
        </node>
      </node>
      <node concept="3Tqbb2" id="6HWpSUEuoA1" role="3clF45">
        <ref role="ehGHo" to="7ggn:29R9$zZUovC" resolve="Rule" />
      </node>
      <node concept="3Tm6S6" id="6HWpSUEvxIW" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="6HWpSUEvzAI" role="13h7CS">
      <property role="TrG5h" value="toRule" />
      <node concept="37vLTG" id="6HWpSUEv$1T" role="3clF46">
        <property role="TrG5h" value="part" />
        <node concept="3Tqbb2" id="6HWpSUEv$27" role="1tU5fm">
          <ref role="ehGHo" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6HWpSUEvDU$" role="1B3o_S" />
      <node concept="3clFbS" id="6HWpSUEvzAL" role="3clF47">
        <node concept="3cpWs8" id="6HWpSUFfKwo" role="3cqZAp">
          <node concept="3cpWsn" id="6HWpSUFfKwp" role="3cpWs9">
            <property role="TrG5h" value="ruleBody" />
            <node concept="3Tqbb2" id="6HWpSUFfKwn" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fzclF8l" resolve="Statement" />
            </node>
            <node concept="BsUDl" id="6HWpSUFfKwq" role="33vP2m">
              <ref role="37wK5l" node="3pElVurbdgA" resolve="ruleBody" />
              <node concept="37vLTw" id="6HWpSUFfKwr" role="37wK5m">
                <ref role="3cqZAo" node="6HWpSUEv$1T" resolve="part" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6HWpSUEujz7" role="3cqZAp">
          <node concept="2pJPEk" id="6HWpSUEujz8" role="3clFbG">
            <node concept="2pJPED" id="6HWpSUEujz9" role="2pJPEn">
              <ref role="2pJxaS" to="7ggn:29R9$zZUovC" resolve="Rule" />
              <node concept="2pJxcG" id="6HWpSUEujzd" role="2pJxcM">
                <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                <node concept="3cpWs3" id="6HWpSUEujze" role="2pJxcZ">
                  <node concept="3cpWs3" id="6HWpSUEujzf" role="3uHU7B">
                    <node concept="Xl_RD" id="6HWpSUEujzg" role="3uHU7w">
                      <property role="Xl_RC" value="_" />
                    </node>
                    <node concept="BsUDl" id="6HWpSUEujzh" role="3uHU7B">
                      <ref role="37wK5l" node="30GBB6Z7Zy5" resolve="getName" />
                      <node concept="37vLTw" id="6HWpSUEujzi" role="37wK5m">
                        <ref role="3cqZAo" node="6HWpSUEv$1T" resolve="part" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6HWpSUEujzj" role="3uHU7w">
                    <node concept="2OqwBi" id="6HWpSUEujzk" role="2Oq$k0">
                      <node concept="2JrnkZ" id="6HWpSUEujzl" role="2Oq$k0">
                        <node concept="37vLTw" id="6HWpSUEujzm" role="2JrQYb">
                          <ref role="3cqZAo" node="6HWpSUEv$1T" resolve="part" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6HWpSUEujzn" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6HWpSUEujzo" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2pIpSj" id="6HWpSUEujzp" role="2pJxcM">
                <ref role="2pIpSl" to="tpee:fzclF7X" resolve="returnType" />
                <node concept="2pJPED" id="6HWpSUEujzq" role="2pJxcZ">
                  <ref role="2pJxaS" to="tpee:fzcqZ_H" resolve="VoidType" />
                </node>
              </node>
              <node concept="2pIpSj" id="6HWpSUEujzr" role="2pJxcM">
                <ref role="2pIpSl" to="7ggn:6HWpSUFcW9N" resolve="statement" />
                <node concept="36biLy" id="6HWpSUEujzs" role="2pJxcZ">
                  <node concept="37vLTw" id="6HWpSUFfKws" role="36biLW">
                    <ref role="3cqZAo" node="6HWpSUFfKwp" resolve="ruleBody" />
                  </node>
                </node>
              </node>
              <node concept="2pIpSj" id="6HWpSUFfKh6" role="2pJxcM">
                <ref role="2pIpSl" to="tpee:fzclF7Z" resolve="body" />
                <node concept="2pJPED" id="6HWpSUFfKF0" role="2pJxcZ">
                  <ref role="2pJxaS" to="tpee:fzclF80" resolve="StatementList" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6HWpSUEv$1n" role="3clF45">
        <ref role="ehGHo" to="7ggn:29R9$zZUovC" resolve="Rule" />
      </node>
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
              <ref role="ehGHo" to="7ggn:3qVwZ8sHWnm" resolve="AssignmentRuleExpression" />
            </node>
            <node concept="2OqwBi" id="3pElVur3aTO" role="33vP2m">
              <node concept="37vLTw" id="3pElVur3aKQ" role="2Oq$k0">
                <ref role="3cqZAo" node="3pElVuqRKRp" resolve="part" />
              </node>
              <node concept="2Xjw5R" id="3pElVur3b0U" role="2OqNvi">
                <node concept="1xMEDy" id="3pElVur3b0W" role="1xVPHs">
                  <node concept="chp4Y" id="3pElVur3b38" role="ri$Ld">
                    <ref role="cht4Q" to="7ggn:3qVwZ8sHWnm" resolve="AssignmentRuleExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="30GBB6Y_0YR" role="3cqZAp">
          <node concept="3cpWsn" id="30GBB6Y_0YU" role="3cpWs9">
            <property role="TrG5h" value="upperAttribute" />
            <node concept="3Tqbb2" id="30GBB6Y_0YP" role="1tU5fm">
              <ref role="ehGHo" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
            </node>
            <node concept="2OqwBi" id="30GBB6Y_1rt" role="33vP2m">
              <node concept="37vLTw" id="30GBB6Y_1in" role="2Oq$k0">
                <ref role="3cqZAo" node="3pElVuqRKRp" resolve="part" />
              </node>
              <node concept="2Xjw5R" id="30GBB6Y_1yF" role="2OqNvi">
                <node concept="1xMEDy" id="30GBB6Y_1yH" role="1xVPHs">
                  <node concept="chp4Y" id="30GBB6Y_1$T" role="ri$Ld">
                    <ref role="cht4Q" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
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
          </node>
        </node>
        <node concept="3clFbJ" id="30GBB6Y_5JF" role="3cqZAp">
          <node concept="3y3z36" id="1lQ5DPQIc6x" role="3clFbw">
            <node concept="10Nm6u" id="1lQ5DPQIc6y" role="3uHU7w" />
            <node concept="37vLTw" id="1lQ5DPQIc6z" role="3uHU7B">
              <ref role="3cqZAo" node="3pElVuqRKSp" resolve="upperPart" />
            </node>
          </node>
          <node concept="3clFbS" id="30GBB6Y_5JI" role="3clFbx">
            <node concept="3clFbF" id="30GBB6Y_5J7" role="3cqZAp">
              <node concept="37vLTI" id="30GBB6Y_5J8" role="3clFbG">
                <node concept="BsUDl" id="30GBB6Y_5J9" role="37vLTx">
                  <ref role="37wK5l" node="3pElVuqRKKT" resolve="leftExpression" />
                  <node concept="37vLTw" id="30GBB6Y_5Ja" role="37wK5m">
                    <ref role="3cqZAo" node="3pElVuqRKSp" resolve="upperPart" />
                  </node>
                </node>
                <node concept="37vLTw" id="30GBB6Y_5Jb" role="37vLTJ">
                  <ref role="3cqZAo" node="1lQ5DPQIc6k" resolve="base" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="30GBB6Y_6Gs" role="3eNLev">
            <node concept="3clFbS" id="30GBB6Y_6Gt" role="3eOfB_">
              <node concept="3clFbF" id="30GBB6Y_6Gz" role="3cqZAp">
                <node concept="37vLTI" id="30GBB6Y_6G$" role="3clFbG">
                  <node concept="2OqwBi" id="30GBB6Y_6G_" role="37vLTx">
                    <node concept="2OqwBi" id="30GBB6Y_6GA" role="2Oq$k0">
                      <node concept="37vLTw" id="30GBB6Y_6GB" role="2Oq$k0">
                        <ref role="3cqZAo" node="3pElVur3aH_" resolve="upperAssignment" />
                      </node>
                      <node concept="3TrEf2" id="30GBB6Y_6GC" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:fz7vLUn" resolve="lValue" />
                      </node>
                    </node>
                    <node concept="1$rogu" id="30GBB6Y_6GD" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="30GBB6Y_6GE" role="37vLTJ">
                    <ref role="3cqZAo" node="1lQ5DPQIc6k" resolve="base" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="30GBB6Y_6Qa" role="3eO9$A">
              <node concept="10Nm6u" id="30GBB6Y_6Qb" role="3uHU7w" />
              <node concept="37vLTw" id="30GBB6Y_6Qc" role="3uHU7B">
                <ref role="3cqZAo" node="3pElVur3aH_" resolve="upperAssignment" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="30GBB6Y_7aw" role="3eNLev">
            <node concept="3clFbS" id="30GBB6Y_7ay" role="3eOfB_">
              <node concept="3clFbF" id="30GBB6Y_6GM" role="3cqZAp">
                <node concept="37vLTI" id="30GBB6Y_6GN" role="3clFbG">
                  <node concept="2pJPEk" id="30GBB6Y_6GO" role="37vLTx">
                    <node concept="2pJPED" id="30GBB6Y_6GP" role="2pJPEn">
                      <ref role="2pJxaS" to="tpee:hqOqwz4" resolve="DotExpression" />
                      <node concept="2pIpSj" id="30GBB6Y_6GQ" role="2pJxcM">
                        <ref role="2pIpSl" to="tpee:hqOq$gm" resolve="operand" />
                        <node concept="2pJPED" id="30GBB6Y_6GR" role="2pJxcZ">
                          <ref role="2pJxaS" to="7ggn:jVwYUSPLKM" resolve="ThisExpression" />
                        </node>
                      </node>
                      <node concept="2pIpSj" id="30GBB6Y_6GS" role="2pJxcM">
                        <ref role="2pIpSl" to="tpee:hqOqNr4" resolve="operation" />
                        <node concept="2pJPED" id="30GBB6Y_6GT" role="2pJxcZ">
                          <ref role="2pJxaS" to="7ggn:4$MeK2bvRdy" resolve="AttributeCall" />
                          <node concept="2pIpSj" id="30GBB6Y_6GU" role="2pJxcM">
                            <ref role="2pIpSl" to="7ggn:4$MeK2bvUeg" resolve="attribute" />
                            <node concept="36biLy" id="30GBB6Y_6GV" role="2pJxcZ">
                              <node concept="37vLTw" id="30GBB6Y_6GW" role="36biLW">
                                <ref role="3cqZAo" node="30GBB6Y_0YU" resolve="upperAttribute" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="30GBB6Y_6GX" role="37vLTJ">
                    <ref role="3cqZAo" node="1lQ5DPQIc6k" resolve="base" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="30GBB6Y_7e0" role="3eO9$A">
              <node concept="37vLTw" id="30GBB6Y_7e1" role="3uHU7B">
                <ref role="3cqZAo" node="30GBB6Y_0YU" resolve="upperAttribute" />
              </node>
              <node concept="10Nm6u" id="30GBB6Y_7e2" role="3uHU7w" />
            </node>
          </node>
          <node concept="9aQIb" id="30GBB6Y_7xf" role="9aQIa">
            <node concept="3clFbS" id="30GBB6Y_7xg" role="9aQI4">
              <node concept="3clFbF" id="30GBB6Y_6H0" role="3cqZAp">
                <node concept="37vLTI" id="30GBB6Y_6H1" role="3clFbG">
                  <node concept="2pJPEk" id="30GBB6Y_6H2" role="37vLTx">
                    <node concept="2pJPED" id="30GBB6Y_6H3" role="2pJPEn">
                      <ref role="2pJxaS" to="7ggn:jVwYUSPLKM" resolve="ThisExpression" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="30GBB6Y_6H4" role="37vLTJ">
                    <ref role="3cqZAo" node="1lQ5DPQIc6k" resolve="base" />
                  </node>
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
        <ref role="ehGHo" to="tpee:hqOqG0K" resolve="IOperation" />
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
          <node concept="3eNFk2" id="30GBB6YO91G" role="3eNLev">
            <node concept="2OqwBi" id="30GBB6YO9OI" role="3eO9$A">
              <node concept="37vLTw" id="30GBB6YO9y8" role="2Oq$k0">
                <ref role="3cqZAo" node="3pElVurb40B" resolve="part" />
              </node>
              <node concept="1mIQ4w" id="30GBB6YO9X5" role="2OqNvi">
                <node concept="chp4Y" id="30GBB6YOa0u" role="cj9EA">
                  <ref role="cht4Q" to="7ggn:30GBB6Y$vTM" resolve="NodeBuilderInitAttribute" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="30GBB6YO91I" role="3eOfB_">
              <node concept="3cpWs6" id="30GBB6YOa6$" role="3cqZAp">
                <node concept="2pJPEk" id="30GBB6YOaxo" role="3cqZAk">
                  <node concept="2pJPED" id="30GBB6YOaUe" role="2pJPEn">
                    <ref role="2pJxaS" to="7ggn:4$MeK2bvRdy" resolve="AttributeCall" />
                    <node concept="2pIpSj" id="30GBB6YObKd" role="2pJxcM">
                      <ref role="2pIpSl" to="7ggn:4$MeK2bvUeg" resolve="attribute" />
                      <node concept="36biLy" id="30GBB6YOcc4" role="2pJxcZ">
                        <node concept="2OqwBi" id="30GBB6YOcDD" role="36biLW">
                          <node concept="1PxgMI" id="30GBB6YOctM" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="30GBB6YOcuA" role="3oSUPX">
                              <ref role="cht4Q" to="7ggn:30GBB6Y$vTM" resolve="NodeBuilderInitAttribute" />
                            </node>
                            <node concept="37vLTw" id="30GBB6YOccp" role="1m5AlR">
                              <ref role="3cqZAo" node="3pElVurb40B" resolve="part" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="30GBB6YOcOx" role="2OqNvi">
                            <ref role="3Tt5mk" to="7ggn:30GBB6Y$wtJ" resolve="attribute" />
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
    <node concept="13i0hz" id="30GBB6Z7Zy5" role="13h7CS">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm6S6" id="6HWpSUEwy80" role="1B3o_S" />
      <node concept="17QB3L" id="30GBB6Z7ZW8" role="3clF45" />
      <node concept="3clFbS" id="30GBB6Z7Zy8" role="3clF47">
        <node concept="3clFbJ" id="30GBB6Z80L1" role="3cqZAp">
          <node concept="2OqwBi" id="30GBB6Z80L2" role="3clFbw">
            <node concept="37vLTw" id="30GBB6Z80L3" role="2Oq$k0">
              <ref role="3cqZAo" node="30GBB6Z80Kj" resolve="part" />
            </node>
            <node concept="1mIQ4w" id="30GBB6Z80L4" role="2OqNvi">
              <node concept="chp4Y" id="30GBB6Z80L5" role="cj9EA">
                <ref role="cht4Q" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="30GBB6Z80L6" role="3clFbx">
            <node concept="3cpWs6" id="30GBB6Z80L7" role="3cqZAp">
              <node concept="2OqwBi" id="30GBB6Z80La" role="3cqZAk">
                <node concept="2OqwBi" id="30GBB6Z80Lb" role="2Oq$k0">
                  <node concept="1PxgMI" id="30GBB6Z80Lc" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="30GBB6Z80Ld" role="3oSUPX">
                      <ref role="cht4Q" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                    </node>
                    <node concept="37vLTw" id="30GBB6Z80Le" role="1m5AlR">
                      <ref role="3cqZAo" node="30GBB6Z80Kj" resolve="part" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="30GBB6Z80Lf" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                  </node>
                </node>
                <node concept="3TrcHB" id="30GBB6Z82Lp" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="30GBB6Z80Lz" role="3eNLev">
            <node concept="2OqwBi" id="30GBB6Z80L$" role="3eO9$A">
              <node concept="37vLTw" id="30GBB6Z80L_" role="2Oq$k0">
                <ref role="3cqZAo" node="30GBB6Z80Kj" resolve="part" />
              </node>
              <node concept="1mIQ4w" id="30GBB6Z80LA" role="2OqNvi">
                <node concept="chp4Y" id="30GBB6Z80LB" role="cj9EA">
                  <ref role="cht4Q" to="7ggn:30GBB6Y$vTM" resolve="NodeBuilderInitAttribute" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="30GBB6Z80LC" role="3eOfB_">
              <node concept="3cpWs6" id="30GBB6Z838I" role="3cqZAp">
                <node concept="2OqwBi" id="30GBB6Z83PG" role="3cqZAk">
                  <node concept="2OqwBi" id="30GBB6Z80LI" role="2Oq$k0">
                    <node concept="1PxgMI" id="30GBB6Z80LJ" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="30GBB6Z80LK" role="3oSUPX">
                        <ref role="cht4Q" to="7ggn:30GBB6Y$vTM" resolve="NodeBuilderInitAttribute" />
                      </node>
                      <node concept="37vLTw" id="30GBB6Z80LL" role="1m5AlR">
                        <ref role="3cqZAo" node="30GBB6Z80Kj" resolve="part" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="30GBB6Z80LM" role="2OqNvi">
                      <ref role="3Tt5mk" to="7ggn:30GBB6Y$wtJ" resolve="attribute" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="30GBB6Z84ms" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="30GBB6Z80LN" role="9aQIa">
            <node concept="3clFbS" id="30GBB6Z80LO" role="9aQI4">
              <node concept="3cpWs6" id="30GBB6Z80LP" role="3cqZAp">
                <node concept="2OqwBi" id="30GBB6Z85tf" role="3cqZAk">
                  <node concept="2OqwBi" id="30GBB6Z80LU" role="2Oq$k0">
                    <node concept="1PxgMI" id="30GBB6Z80LV" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="30GBB6Z80LW" role="3oSUPX">
                        <ref role="cht4Q" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
                      </node>
                      <node concept="37vLTw" id="30GBB6Z80LX" role="1m5AlR">
                        <ref role="3cqZAo" node="30GBB6Z80Kj" resolve="part" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="30GBB6Z80LY" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="30GBB6Z85T7" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="30GBB6Z80Kj" role="3clF46">
        <property role="TrG5h" value="part" />
        <node concept="3Tqbb2" id="30GBB6Z80Ki" role="1tU5fm">
          <ref role="ehGHo" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
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
      <node concept="3Tm6S6" id="6HWpSUEwymt" role="1B3o_S" />
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
        <node concept="3clFbF" id="6HWpSUFg0Yw" role="3cqZAp">
          <node concept="2pJPEk" id="6HWpSUFg0Yx" role="3clFbG">
            <node concept="2pJPED" id="6HWpSUFg0Yy" role="2pJPEn">
              <ref role="2pJxaS" to="tpee:fzclF8j" resolve="ExpressionStatement" />
              <node concept="2pIpSj" id="6HWpSUFg0Yz" role="2pJxcM">
                <ref role="2pIpSl" to="tpee:fzclF8k" resolve="expression" />
                <node concept="2pJPED" id="6HWpSUFg1fD" role="2pJxcZ">
                  <ref role="2pJxaS" to="7ggn:3qVwZ8sHWnm" resolve="AssignmentRuleExpression" />
                  <node concept="2pIpSj" id="6HWpSUFg1fE" role="2pJxcM">
                    <ref role="2pIpSl" to="tpee:fz7vLUn" resolve="lValue" />
                    <node concept="36biLy" id="6HWpSUFg1fF" role="2pJxcZ">
                      <node concept="37vLTw" id="6HWpSUFg1fG" role="36biLW">
                        <ref role="3cqZAo" node="5ZOs9JxIPjB" resolve="left" />
                      </node>
                    </node>
                  </node>
                  <node concept="2pIpSj" id="6HWpSUFg1fH" role="2pJxcM">
                    <ref role="2pIpSl" to="tpee:fz7vLUp" resolve="rValue" />
                    <node concept="36biLy" id="6HWpSUFg1fI" role="2pJxcZ">
                      <node concept="2OqwBi" id="6HWpSUFg1fJ" role="36biLW">
                        <node concept="37vLTw" id="6HWpSUFg1fK" role="2Oq$k0">
                          <ref role="3cqZAo" node="4$MeK2bt_PB" resolve="right" />
                        </node>
                        <node concept="1$rogu" id="6HWpSUFg1fL" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="2pIpSj" id="6HWpSUFg1fM" role="2pJxcM">
                    <ref role="2pIpSl" to="7ggn:1lQ5DPQzdHE" resolve="originalContext" />
                    <node concept="36biLy" id="6HWpSUFg1fN" role="2pJxcZ">
                      <node concept="37vLTw" id="6HWpSUFg1fO" role="36biLW">
                        <ref role="3cqZAo" node="1lQ5DPQzgK_" resolve="builder" />
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
        <ref role="ehGHo" to="tpee:fzclF8l" resolve="Statement" />
      </node>
    </node>
    <node concept="13i0hz" id="30GBB6YADEu" role="13h7CS">
      <property role="2Ki8OM" value="false" />
      <property role="TrG5h" value="ruleBody" />
      <node concept="37vLTG" id="30GBB6YADEv" role="3clF46">
        <property role="TrG5h" value="attr" />
        <node concept="3Tqbb2" id="30GBB6YADEw" role="1tU5fm">
          <ref role="ehGHo" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6HWpSUEwyoW" role="1B3o_S" />
      <node concept="3clFbS" id="30GBB6YADEy" role="3clF47">
        <node concept="3cpWs8" id="30GBB6YADEz" role="3cqZAp">
          <node concept="3cpWsn" id="30GBB6YADE$" role="3cpWs9">
            <property role="TrG5h" value="left" />
            <node concept="3Tqbb2" id="30GBB6YADE_" role="1tU5fm">
              <ref role="ehGHo" to="tpee:hqOqwz4" resolve="DotExpression" />
            </node>
            <node concept="2pJPEk" id="30GBB6YAF5Y" role="33vP2m">
              <node concept="2pJPED" id="30GBB6YAF8Z" role="2pJPEn">
                <ref role="2pJxaS" to="tpee:hqOqwz4" resolve="DotExpression" />
                <node concept="2pIpSj" id="30GBB6YAFbV" role="2pJxcM">
                  <ref role="2pIpSl" to="tpee:hqOq$gm" resolve="operand" />
                  <node concept="2pJPED" id="30GBB6YAFdx" role="2pJxcZ">
                    <ref role="2pJxaS" to="7ggn:jVwYUSPLKM" resolve="ThisExpression" />
                  </node>
                </node>
                <node concept="2pIpSj" id="30GBB6YAFil" role="2pJxcM">
                  <ref role="2pIpSl" to="tpee:hqOqNr4" resolve="operation" />
                  <node concept="2pJPED" id="30GBB6YAFjZ" role="2pJxcZ">
                    <ref role="2pJxaS" to="7ggn:4$MeK2bvRdy" resolve="AttributeCall" />
                    <node concept="2pIpSj" id="30GBB6YAFkz" role="2pJxcM">
                      <ref role="2pIpSl" to="7ggn:4$MeK2bvUeg" resolve="attribute" />
                      <node concept="36biLy" id="30GBB6YAFkX" role="2pJxcZ">
                        <node concept="37vLTw" id="30GBB6YAFlk" role="36biLW">
                          <ref role="3cqZAo" node="30GBB6YADEv" resolve="attr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="30GBB6YADEC" role="3cqZAp">
          <node concept="3cpWsn" id="30GBB6YADED" role="3cpWs9">
            <property role="TrG5h" value="right" />
            <node concept="3Tqbb2" id="30GBB6YADEE" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
            </node>
            <node concept="2OqwBi" id="30GBB6YAFKj" role="33vP2m">
              <node concept="37vLTw" id="30GBB6YAFuS" role="2Oq$k0">
                <ref role="3cqZAo" node="30GBB6YADEv" resolve="attr" />
              </node>
              <node concept="3TrEf2" id="30GBB6YAGt2" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fz3vP1I" resolve="initializer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6HWpSUFg0rR" role="3cqZAp">
          <node concept="2pJPEk" id="6HWpSUFg0rN" role="3clFbG">
            <node concept="2pJPED" id="6HWpSUFg0uC" role="2pJPEn">
              <ref role="2pJxaS" to="tpee:fzclF8j" resolve="ExpressionStatement" />
              <node concept="2pIpSj" id="6HWpSUFg0_Y" role="2pJxcM">
                <ref role="2pIpSl" to="tpee:fzclF8k" resolve="expression" />
                <node concept="2pJPED" id="6HWpSUFg0HO" role="2pJxcZ">
                  <ref role="2pJxaS" to="7ggn:3qVwZ8sHWnm" resolve="AssignmentRuleExpression" />
                  <node concept="2pIpSj" id="6HWpSUFg0HP" role="2pJxcM">
                    <ref role="2pIpSl" to="tpee:fz7vLUn" resolve="lValue" />
                    <node concept="36biLy" id="6HWpSUFg0HQ" role="2pJxcZ">
                      <node concept="37vLTw" id="6HWpSUFg0HR" role="36biLW">
                        <ref role="3cqZAo" node="30GBB6YADE$" resolve="left" />
                      </node>
                    </node>
                  </node>
                  <node concept="2pIpSj" id="6HWpSUFg0HS" role="2pJxcM">
                    <ref role="2pIpSl" to="tpee:fz7vLUp" resolve="rValue" />
                    <node concept="36biLy" id="6HWpSUFg0HT" role="2pJxcZ">
                      <node concept="2OqwBi" id="6HWpSUFg0HU" role="36biLW">
                        <node concept="37vLTw" id="6HWpSUFg0HV" role="2Oq$k0">
                          <ref role="3cqZAo" node="30GBB6YADED" resolve="right" />
                        </node>
                        <node concept="1$rogu" id="6HWpSUFg0HW" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="30GBB6YADFa" role="3clF45">
        <ref role="ehGHo" to="tpee:fzclF8l" resolve="Statement" />
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
  <node concept="13h7C7" id="4$MeK2bmypo">
    <ref role="13h7C2" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="13i0hz" id="hEwJ4yp" role="13h7CS">
      <property role="13i0is" value="false" />
      <property role="TrG5h" value="isInitializable" />
      <ref role="13i0hy" to="tpek:hEwJfMK" resolve="isInitializable" />
      <node concept="3clFbS" id="hEwJ4yq" role="3clF47">
        <node concept="3clFbF" id="30GBB6Yr9kV" role="3cqZAp">
          <node concept="3clFbT" id="30GBB6Yr9kU" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="hEwJ4yF" role="3clF45" />
      <node concept="3Tm1VV" id="hJrm0_s" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="hEwJ4yG" role="13h7CS">
      <property role="13i0is" value="false" />
      <property role="TrG5h" value="createReference" />
      <ref role="13i0hy" to="tpek:hEwJfME" resolve="createReference" />
      <node concept="3clFbS" id="hEwJ4yH" role="3clF47">
        <node concept="3cpWs8" id="hEwJ4yI" role="3cqZAp">
          <node concept="3cpWsn" id="hEwJ4yJ" role="3cpWs9">
            <property role="TrG5h" value="ref" />
            <node concept="3Tqbb2" id="hEwJ4yK" role="1tU5fm">
              <ref role="ehGHo" to="7ggn:4$MeK2bvRdy" resolve="AttributeCall" />
            </node>
            <node concept="2ShNRf" id="hEwJ4yL" role="33vP2m">
              <node concept="3zrR0B" id="hEwJ4yM" role="2ShVmc">
                <node concept="3Tqbb2" id="hEwJ4yN" role="3zrR0E">
                  <ref role="ehGHo" to="7ggn:4$MeK2bvRdy" resolve="AttributeCall" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hEwJ4yO" role="3cqZAp">
          <node concept="2OqwBi" id="hEwJ4yP" role="3clFbG">
            <node concept="2OqwBi" id="hEwJ4yQ" role="2Oq$k0">
              <node concept="37vLTw" id="3GM_nagT_IE" role="2Oq$k0">
                <ref role="3cqZAo" node="hEwJ4yJ" resolve="ref" />
              </node>
              <node concept="3TrEf2" id="30GBB6YrpoZ" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:4$MeK2bvUeg" resolve="attribute" />
              </node>
            </node>
            <node concept="2oxUTD" id="hEwJ4yT" role="2OqNvi">
              <node concept="13iPFW" id="hEwJ4yU" role="2oxUTC" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="hEwJ4yV" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagT_rb" role="3cqZAk">
            <ref role="3cqZAo" node="hEwJ4yJ" resolve="ref" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="hEwJ4yX" role="3clF45">
        <ref role="ehGHo" to="tpee:fz7vLUo" resolve="VariableReference" />
      </node>
      <node concept="3Tm1VV" id="hJrm0E4" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="hEwJfMP" role="13h7CS">
      <property role="13i0is" value="false" />
      <property role="TrG5h" value="deriveType" />
      <ref role="13i0hy" to="tpek:hEwIVPz" resolve="deriveType" />
      <node concept="3clFbS" id="hEwJfMQ" role="3clF47">
        <node concept="3cpWs8" id="hEwJfMR" role="3cqZAp">
          <node concept="3cpWsn" id="hEwJfMS" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3Tqbb2" id="hEwJfMT" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
            </node>
            <node concept="10Nm6u" id="hEwJfMU" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="hEwJfMV" role="3cqZAp">
          <node concept="3clFbS" id="hEwJfMW" role="3clFbx">
            <node concept="3clFbF" id="hEwJfMX" role="3cqZAp">
              <node concept="37vLTI" id="hEwJfMY" role="3clFbG">
                <node concept="2OqwBi" id="hEwJfMZ" role="37vLTx">
                  <node concept="2OqwBi" id="hEwJfN0" role="2Oq$k0">
                    <node concept="13iPFW" id="hEwJfN1" role="2Oq$k0" />
                    <node concept="3TrEf2" id="hEwJfN2" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                    </node>
                  </node>
                  <node concept="1$rogu" id="hEwJfN3" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="3GM_nagTvWk" role="37vLTJ">
                  <ref role="3cqZAo" node="hEwJfMS" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="hEwJfN5" role="3clFbw">
            <node concept="2OqwBi" id="hEwJfN6" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxghgsN" role="2Oq$k0">
                <ref role="3cqZAo" node="hEwJfNg" resolve="expression" />
              </node>
              <node concept="1BlSNk" id="hEwJfN8" role="2OqNvi">
                <ref role="1BmUXE" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
                <ref role="1Bn3mz" to="tpee:fz3vP1I" resolve="initializer" />
              </node>
            </node>
            <node concept="3clFbC" id="hEwJfN9" role="3uHU7B">
              <node concept="2OqwBi" id="hEwJfNa" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxglg0v" role="2Oq$k0">
                  <ref role="3cqZAo" node="hEwJfNg" resolve="expression" />
                </node>
                <node concept="1mfA1w" id="hEwJfNc" role="2OqNvi" />
              </node>
              <node concept="13iPFW" id="hEwJfNd" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hEwJfNe" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTsxI" role="3clFbG">
            <ref role="3cqZAo" node="hEwJfMS" resolve="type" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hEwJfNg" role="3clF46">
        <property role="TrG5h" value="expression" />
        <node concept="3Tqbb2" id="hEwJfNh" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
        </node>
      </node>
      <node concept="3Tqbb2" id="hEwJfNi" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3Tm1VV" id="hJrm0ts" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="hXbrmRa" role="13h7CS">
      <property role="TrG5h" value="getTypeAnnotation" />
      <ref role="13i0hy" to="tpek:hXbqSv6" resolve="getTypeAnnotation" />
      <node concept="3clFbS" id="hXbrmRc" role="3clF47">
        <node concept="3cpWs6" id="hXbrrMu" role="3cqZAp">
          <node concept="2OqwBi" id="hXbrtDM" role="3cqZAk">
            <node concept="13iPFW" id="hXbrtw3" role="2Oq$k0" />
            <node concept="3TrEf2" id="hXbruyQ" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="hXbrq3A" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13i0hz" id="6HWpSUEwLw3" role="13h7CS">
      <property role="TrG5h" value="getContextType" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="29R9$zZWsRH" resolve="getContextType" />
      <node concept="3clFbS" id="6HWpSUEwLw4" role="3clF47">
        <node concept="3clFbF" id="6HWpSUEwLw5" role="3cqZAp">
          <node concept="2OqwBi" id="6HWpSUEwLw6" role="3clFbG">
            <node concept="1PxgMI" id="6HWpSUEwLw7" role="2Oq$k0">
              <node concept="chp4Y" id="6HWpSUEwLw8" role="3oSUPX">
                <ref role="cht4Q" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
              </node>
              <node concept="2OqwBi" id="6HWpSUEwLw9" role="1m5AlR">
                <node concept="13iPFW" id="6HWpSUEwLwa" role="2Oq$k0" />
                <node concept="1mfA1w" id="6HWpSUEwLwb" role="2OqNvi" />
              </node>
            </node>
            <node concept="2qgKlT" id="6HWpSUEwLwc" role="2OqNvi">
              <ref role="37wK5l" node="29R9$zZWsRH" resolve="getContextType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6HWpSUEwLwd" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3Tm1VV" id="6HWpSUEwLwe" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="4$MeK2bmypp" role="13h7CW">
      <node concept="3clFbS" id="4$MeK2bmypq" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="30GBB6YI50h">
    <ref role="13h7C2" to="7ggn:4$MeK2bvRdy" resolve="AttributeCall" />
    <node concept="13i0hz" id="hEwIBRP" role="13h7CS">
      <property role="13i0is" value="false" />
      <property role="TrG5h" value="getVariableExpectedName" />
      <ref role="13i0hy" to="tpek:hEwIP$B" resolve="getVariableExpectedName" />
      <node concept="3clFbS" id="hEwIBRQ" role="3clF47">
        <node concept="3clFbF" id="hEwIBRR" role="3cqZAp">
          <node concept="2OqwBi" id="hEwIBRS" role="3clFbG">
            <node concept="2OqwBi" id="hEwIBRT" role="2Oq$k0">
              <node concept="13iPFW" id="hEwIBRU" role="2Oq$k0" />
              <node concept="3TrEf2" id="30GBB6YI5KE" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:4$MeK2bvUeg" resolve="attribute" />
              </node>
            </node>
            <node concept="3TrcHB" id="hEwIBRW" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4druX3W0A1h" role="3clF45" />
      <node concept="3Tm1VV" id="hJrm0E9" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="1653mnvAmCI" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="13i0is" value="false" />
      <property role="TrG5h" value="lvalue" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:1653mnvAgvW" resolve="lvalue" />
      <node concept="3Tm1VV" id="1653mnvAmCJ" role="1B3o_S" />
      <node concept="10P_77" id="1653mnvAmCH" role="3clF45" />
      <node concept="3clFbS" id="1653mnvAmCK" role="3clF47">
        <node concept="3cpWs6" id="1653mnvAmCL" role="3cqZAp">
          <node concept="3clFbT" id="1653mnvAmCM" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="30GBB6YI50i" role="13h7CW">
      <node concept="3clFbS" id="30GBB6YI50j" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6HWpSUEu9kB">
    <ref role="13h7C2" to="7ggn:6HWpSUEu3T2" resolve="ModelRuleSet" />
    <node concept="13i0hz" id="6HWpSUEu9kM" role="13h7CS">
      <property role="TrG5h" value="getContextType" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="29R9$zZWsRH" resolve="getContextType" />
      <node concept="3clFbS" id="6HWpSUEu9kP" role="3clF47">
        <node concept="3clFbF" id="6HWpSUEua27" role="3cqZAp">
          <node concept="2pJPEk" id="6HWpSUEwVxs" role="3clFbG">
            <node concept="2pJPED" id="6HWpSUEwV$L" role="2pJPEn">
              <ref role="2pJxaS" to="tp25:gCH_c3d" resolve="SModelType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6HWpSUEu9l2" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3Tm1VV" id="6HWpSUEu9l3" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="6HWpSUEu9kC" role="13h7CW">
      <node concept="3clFbS" id="6HWpSUEu9kD" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6HWpSUEuabt">
    <ref role="13h7C2" to="7ggn:6HWpSUEu3U0" resolve="ModuleRuleSet" />
    <node concept="13i0hz" id="6HWpSUEuacZ" role="13h7CS">
      <property role="TrG5h" value="getContextType" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="29R9$zZWsRH" resolve="getContextType" />
      <node concept="3clFbS" id="6HWpSUEuad2" role="3clF47">
        <node concept="3clFbF" id="6HWpSUEuadr" role="3cqZAp">
          <node concept="2c44tf" id="6HWpSUEuads" role="3clFbG">
            <node concept="3uibUv" id="6HWpSUEuadt" role="2c44tc">
              <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6HWpSUEuadf" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3Tm1VV" id="6HWpSUEuadg" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="6HWpSUEuabu" role="13h7CW">
      <node concept="3clFbS" id="6HWpSUEuabv" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6HWpSUEuarn">
    <ref role="13h7C2" to="7ggn:6HWpSUEuark" resolve="ConceptRuleSet" />
    <node concept="13i0hz" id="6HWpSUF4vHG" role="13h7CS">
      <property role="TrG5h" value="setBaseConcept" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpcn:5r_35Ihc58c" resolve="setBaseConcept" />
      <node concept="3clFbS" id="6HWpSUF4vHJ" role="3clF47">
        <node concept="3clFbF" id="6HWpSUF4wkm" role="3cqZAp">
          <node concept="37vLTI" id="6HWpSUF4x8i" role="3clFbG">
            <node concept="37vLTw" id="6HWpSUF4xdS" role="37vLTx">
              <ref role="3cqZAo" node="6HWpSUF4vLX" resolve="baseConcept" />
            </node>
            <node concept="2OqwBi" id="6HWpSUF4wuQ" role="37vLTJ">
              <node concept="13iPFW" id="6HWpSUF4wkl" role="2Oq$k0" />
              <node concept="3TrEf2" id="6HWpSUF4wHm" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:6HWpSUEuarY" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6HWpSUF4vLX" role="3clF46">
        <property role="TrG5h" value="baseConcept" />
        <node concept="3Tqbb2" id="6HWpSUF4vLY" role="1tU5fm">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
      <node concept="3cqZAl" id="6HWpSUF4vLZ" role="3clF45" />
      <node concept="3Tm1VV" id="6HWpSUF4vM0" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="6HWpSUF4vQ4" role="13h7CS">
      <property role="TrG5h" value="getBaseConcept" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpcn:2hxg_BDjKM8" resolve="getBaseConcept" />
      <node concept="3clFbS" id="6HWpSUF4vQ7" role="3clF47">
        <node concept="3clFbF" id="6HWpSUF4xjj" role="3cqZAp">
          <node concept="2OqwBi" id="6HWpSUF4xw5" role="3clFbG">
            <node concept="13iPFW" id="6HWpSUF4xji" role="2Oq$k0" />
            <node concept="3TrEf2" id="6HWpSUF4xI_" role="2OqNvi">
              <ref role="3Tt5mk" to="7ggn:6HWpSUEuarY" resolve="concept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6HWpSUF4vUr" role="3clF45">
        <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
      <node concept="3Tm1VV" id="6HWpSUF4vUs" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="6HWpSUEuary" role="13h7CS">
      <property role="TrG5h" value="getContextType" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="29R9$zZWsRH" resolve="getContextType" />
      <node concept="3clFbS" id="6HWpSUEuar_" role="3clF47">
        <node concept="3clFbF" id="6HWpSUEuaym" role="3cqZAp">
          <node concept="2pJPEk" id="6HWpSUEuayk" role="3clFbG">
            <node concept="2pJPED" id="6HWpSUEua_E" role="2pJPEn">
              <ref role="2pJxaS" to="tp25:gzTqbfa" resolve="SNodeType" />
              <node concept="2pIpSj" id="6HWpSUEuaDZ" role="2pJxcM">
                <ref role="2pIpSl" to="tp25:g$ehGDh" resolve="concept" />
                <node concept="36biLy" id="6HWpSUEuaNB" role="2pJxcZ">
                  <node concept="2OqwBi" id="6HWpSUEub4A" role="36biLW">
                    <node concept="13iPFW" id="6HWpSUEuaQR" role="2Oq$k0" />
                    <node concept="3TrEf2" id="6HWpSUEubm4" role="2OqNvi">
                      <ref role="3Tt5mk" to="7ggn:6HWpSUEuarY" resolve="concept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6HWpSUEuarM" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3Tm1VV" id="6HWpSUEuarN" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="6HWpSUEuaro" role="13h7CW">
      <node concept="3clFbS" id="6HWpSUEuarp" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6HWpSUEubs1">
    <ref role="13h7C2" to="7ggn:6HWpSUEu3U3" resolve="RepositoryRuleSet" />
    <node concept="13i0hz" id="6HWpSUEubsc" role="13h7CS">
      <property role="TrG5h" value="getContextType" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="29R9$zZWsRH" resolve="getContextType" />
      <node concept="3clFbS" id="6HWpSUEubsf" role="3clF47">
        <node concept="3clFbF" id="6HWpSUEubyc" role="3cqZAp">
          <node concept="2c44tf" id="6HWpSUEubyd" role="3clFbG">
            <node concept="3uibUv" id="6HWpSUEubye" role="2c44tc">
              <ref role="3uigEE" to="t4tl:~DRepository" resolve="DRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6HWpSUEubss" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3Tm1VV" id="6HWpSUEubst" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="6HWpSUEubs2" role="13h7CW">
      <node concept="3clFbS" id="6HWpSUEubs3" role="2VODD2" />
    </node>
  </node>
</model>

