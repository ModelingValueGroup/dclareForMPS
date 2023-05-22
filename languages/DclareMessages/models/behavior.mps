<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:36c1ea3b-fbca-41f9-87cc-9bacb8f18c30(DclareMessages.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="t4tl" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.dclare.mps(DclareMPSRuntime/)" />
    <import index="wknp" ref="r:9a42e459-6b0e-4c37-8fab-9b46bab588bd(DclareMessages.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="u4ym" ref="r:1a96ceaa-2946-43e0-af3f-cd05d77ee6d1(DclareMPSRuntime.util)" />
    <import index="zrbp" ref="e584ff77-930e-4637-8df0-b4c8d3b6de91/java:org.modelingvalue.collections(DclareRuntime/)" />
    <import index="kag7" ref="e584ff77-930e-4637-8df0-b4c8d3b6de91/java:org.modelingvalue.dclare(DclareRuntime/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="mpcv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.ref(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
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
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1179360813171" name="jetbrains.mps.baseLanguage.structure.HexIntegerLiteral" flags="nn" index="2nou5x">
        <property id="1179360856892" name="value" index="2noCCI" />
      </concept>
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
        <child id="1595412875168045201" name="initValue" index="28ntcv" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="6985522012210254362" name="jetbrains.mps.lang.quotation.structure.NodeBuilderPropertyExpression" flags="nn" index="WxPPo">
        <child id="6985522012210254363" name="expression" index="WxPPp" />
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1240170042401" name="jetbrains.mps.lang.smodel.structure.SEnumerationMemberType" flags="in" index="2ZThk1">
        <reference id="1240170836027" name="enum" index="2ZWj4r" />
      </concept>
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
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
              <node concept="2OqwBi" id="7$u7SPmR_Ai" role="3cqZAk">
                <node concept="1XH99k" id="7$u7SPmR_Aj" role="2Oq$k0">
                  <ref role="1XH99l" to="wknp:7$u7SPmR_wI" resolve="MessageType" />
                </node>
                <node concept="2ViDtV" id="7$u7SPmR_Ak" role="2OqNvi">
                  <ref role="2ViDtZ" to="wknp:7$u7SPmR_wN" resolve="DEBUG" />
                </node>
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
              <node concept="2OqwBi" id="7$u7SPmR_Ao" role="3cqZAk">
                <node concept="1XH99k" id="7$u7SPmR_Ap" role="2Oq$k0">
                  <ref role="1XH99l" to="wknp:7$u7SPmR_wI" resolve="MessageType" />
                </node>
                <node concept="2ViDtV" id="7$u7SPmR_Aq" role="2OqNvi">
                  <ref role="2ViDtZ" to="wknp:7$u7SPmR_wK" resolve="ERROR" />
                </node>
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
              <node concept="2OqwBi" id="7$u7SPmR_Au" role="3cqZAk">
                <node concept="1XH99k" id="7$u7SPmR_Av" role="2Oq$k0">
                  <ref role="1XH99l" to="wknp:7$u7SPmR_wI" resolve="MessageType" />
                </node>
                <node concept="2ViDtV" id="7$u7SPmR_Aw" role="2OqNvi">
                  <ref role="2ViDtZ" to="wknp:7$u7SPmR_wM" resolve="INFO" />
                </node>
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
              <node concept="2OqwBi" id="7$u7SPmR_A$" role="3cqZAk">
                <node concept="1XH99k" id="7$u7SPmR_A_" role="2Oq$k0">
                  <ref role="1XH99l" to="wknp:7$u7SPmR_wI" resolve="MessageType" />
                </node>
                <node concept="2ViDtV" id="7$u7SPmR_AA" role="2OqNvi">
                  <ref role="2ViDtZ" to="wknp:7$u7SPmR_wL" resolve="WARNING" />
                </node>
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
      <node concept="2ZThk1" id="11FVKMOExgh" role="3clF45">
        <ref role="2ZWj4r" to="wknp:7$u7SPmR_wI" resolve="MessageType" />
      </node>
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
            <property role="TrG5h" value="status" />
            <node concept="3uibUv" id="5j905zHgyHU" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DclareForMpsStatus" resolve="DclareForMpsStatus" />
            </node>
            <node concept="BsUDl" id="5j905zHgyHX" role="33vP2m">
              <ref role="37wK5l" node="5j905zH3nNX" resolve="status" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3x34RIMk1Jh" role="3cqZAp">
          <node concept="3clFbS" id="3x34RIMk1Jj" role="3clFbx">
            <node concept="3clFbF" id="5TKknZxaxkL" role="3cqZAp">
              <node concept="2OqwBi" id="5TKknZxaznJ" role="3clFbG">
                <node concept="2OqwBi" id="4CIdWMF5C6f" role="2Oq$k0">
                  <node concept="37vLTw" id="5TKknZxaxkJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5j905zHgyHW" resolve="status" />
                  </node>
                  <node concept="liA8E" id="4CIdWMF5CSm" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DclareForMpsStatus.dClareMPS()" resolve="dClareMPS" />
                  </node>
                </node>
                <node concept="liA8E" id="5TKknZxazAr" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DClareMPS.commandInEDT(java.lang.Runnable)" resolve="commandInEDT" />
                  <node concept="1bVj0M" id="5TKknZxazAT" role="37wK5m">
                    <node concept="3clFbS" id="5TKknZxazAU" role="1bW5cS">
                      <node concept="3clFbJ" id="1KqhpdFKLJ1" role="3cqZAp">
                        <node concept="3clFbS" id="1KqhpdFKLJ3" role="3clFbx">
                          <node concept="3cpWs8" id="1KqhpdFS8Pc" role="3cqZAp">
                            <node concept="3cpWsn" id="1KqhpdFS8Pf" role="3cpWs9">
                              <property role="TrG5h" value="messages" />
                              <node concept="3uibUv" id="1KqhpdFS8Pg" role="1tU5fm">
                                <ref role="3uigEE" to="zrbp:~List" resolve="List" />
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
                                          <ref role="37wK5l" to="t4tl:~DclareForMpsStatus.get(java.util.function.Supplier)" resolve="get" />
                                          <node concept="1bVj0M" id="1KqhpdFS8Pt" role="37wK5m">
                                            <node concept="3clFbS" id="1KqhpdFS8Pu" role="1bW5cS">
                                              <node concept="3clFbF" id="1KqhpdFS8Pv" role="3cqZAp">
                                                <node concept="2OqwBi" id="1KqhpdFS8Pw" role="3clFbG">
                                                  <node concept="37vLTw" id="1KqhpdFSCGB" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="1KqhpdFRBWg" resolve="dMessage" />
                                                  </node>
                                                  <node concept="liA8E" id="1KqhpdFS8Py" role="2OqNvi">
                                                    <ref role="37wK5l" to="t4tl:~DMessage.subMessages()" resolve="subMessages" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="1KqhpdFS8P$" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5j905zHgyHW" resolve="status" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="1KqhpdFS8P_" role="2OqNvi">
                                    <ref role="37wK5l" to="zrbp:~Collection.map(java.util.function.Function)" resolve="map" />
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
                                                <ref role="3cqZAo" node="5j905zHgyHW" resolve="status" />
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
                                  <ref role="37wK5l" to="zrbp:~Collection.toList()" resolve="toList" />
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
          <node concept="3y3z36" id="3x34RIMk8MC" role="3clFbw">
            <node concept="10Nm6u" id="3x34RIMkakV" role="3uHU7w" />
            <node concept="37vLTw" id="3x34RIMk44u" role="3uHU7B">
              <ref role="3cqZAo" node="1KqhpdFRBWg" resolve="dMessage" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5mT2CTpGohL" role="13h7CS">
      <property role="TrG5h" value="collapsChildren" />
      <node concept="3Tm1VV" id="5mT2CTpGohM" role="1B3o_S" />
      <node concept="3cqZAl" id="5mT2CTpGuPv" role="3clF45" />
      <node concept="3clFbS" id="5mT2CTpGohO" role="3clF47" />
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
        <property role="TrG5h" value="status" />
        <node concept="3uibUv" id="1KqhpdFNfb9" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DclareForMpsStatus" resolve="DclareForMpsStatus" />
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
            <node concept="2OqwBi" id="5MBAdvC69an" role="33vP2m">
              <node concept="37vLTw" id="5MBAdvC691u" role="2Oq$k0">
                <ref role="3cqZAo" node="1KqhpdFNfb8" resolve="status" />
              </node>
              <node concept="liA8E" id="5MBAdvC69zU" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMpsStatus.get(java.util.function.Supplier)" resolve="get" />
                <node concept="1bVj0M" id="5MBAdvC6agi" role="37wK5m">
                  <node concept="3clFbS" id="5MBAdvC6agj" role="1bW5cS">
                    <node concept="3clFbF" id="5MBAdvC6aAI" role="3cqZAp">
                      <node concept="2pJPEk" id="1KqhpdFNfbi" role="3clFbG">
                        <node concept="2pJPED" id="1KqhpdFNfbj" role="2pJPEn">
                          <ref role="2pJxaS" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                          <node concept="2pJxcG" id="1KqhpdFNfbk" role="2pJxcM">
                            <ref role="2pJxcJ" to="wknp:IcHFOtrcNa" resolve="text" />
                            <node concept="WxPPo" id="3$9XYwYvYHk" role="28ntcv">
                              <node concept="2OqwBi" id="1KqhpdFPPmd" role="WxPPp">
                                <node concept="2OqwBi" id="1KqhpdFPLPk" role="2Oq$k0">
                                  <node concept="37vLTw" id="1KqhpdFPKvB" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KqhpdFNfb6" resolve="dMessage" />
                                  </node>
                                  <node concept="liA8E" id="1KqhpdFPPh7" role="2OqNvi">
                                    <ref role="37wK5l" to="t4tl:~DMessage.content()" resolve="content" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="1KqhpdFPPr9" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2pJxcG" id="24xnmkF8r0K" role="2pJxcM">
                            <ref role="2pJxcJ" to="wknp:24xnmkF8lZy" resolve="context" />
                            <node concept="WxPPo" id="3$9XYwYvYHl" role="28ntcv">
                              <node concept="2OqwBi" id="24xnmkF8v77" role="WxPPp">
                                <node concept="2OqwBi" id="24xnmkF8sWX" role="2Oq$k0">
                                  <node concept="37vLTw" id="24xnmkF8r8q" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KqhpdFNfb6" resolve="dMessage" />
                                  </node>
                                  <node concept="liA8E" id="24xnmkF8uMH" role="2OqNvi">
                                    <ref role="37wK5l" to="t4tl:~DMessage.context()" resolve="context" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="24xnmkF8vJx" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2pJxcG" id="1KqhpdFNfbq" role="2pJxcM">
                            <ref role="2pJxcJ" to="wknp:7$u7SPmR_x3" resolve="type" />
                            <node concept="WxPPo" id="3$9XYwYvYHm" role="28ntcv">
                              <node concept="BsUDl" id="1KqhpdFNfbr" role="WxPPp">
                                <ref role="37wK5l" node="30f$n$3cdv6" resolve="getType" />
                                <node concept="37vLTw" id="1KqhpdFNfbs" role="37wK5m">
                                  <ref role="3cqZAo" node="1KqhpdFNfba" resolve="type" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2pIpSj" id="1KqhpdFNfbt" role="2pJxcM">
                            <ref role="2pIpSl" to="wknp:7e_PmaZxfxC" resolve="source" />
                            <node concept="36biLy" id="1KqhpdFNfbu" role="28nt2d">
                              <node concept="BsUDl" id="1TqOjdHBEKi" role="36biLW">
                                <ref role="37wK5l" node="1TqOjdHBEKe" resolve="getSource" />
                                <node concept="37vLTw" id="1TqOjdHBEKh" role="37wK5m">
                                  <ref role="3cqZAo" node="1KqhpdFNfb6" resolve="dMessage" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2pIpSj" id="24xnmkFecSN" role="2pJxcM">
                            <ref role="2pIpSl" to="wknp:24xnmkFe4UT" resolve="node" />
                            <node concept="36biLy" id="24xnmkFegrb" role="28nt2d">
                              <node concept="3K4zz7" id="24xnmkFelgp" role="36biLW">
                                <node concept="10Nm6u" id="24xnmkFelGB" role="3K4GZi" />
                                <node concept="2ZW3vV" id="24xnmkFekl7" role="3K4Cdx">
                                  <node concept="3uibUv" id="24xnmkFekRo" role="2ZW6by">
                                    <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                                  </node>
                                  <node concept="2OqwBi" id="24xnmkFegTH" role="2ZW6bz">
                                    <node concept="37vLTw" id="24xnmkFegTI" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1KqhpdFNfb6" resolve="dMessage" />
                                    </node>
                                    <node concept="liA8E" id="24xnmkFegTJ" role="2OqNvi">
                                      <ref role="37wK5l" to="t4tl:~DMessage.context()" resolve="context" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="24xnmkFeppC" role="3K4E3e">
                                  <node concept="1eOMI4" id="24xnmkFeo1n" role="2Oq$k0">
                                    <node concept="10QFUN" id="24xnmkFeo9K" role="1eOMHV">
                                      <node concept="3uibUv" id="24xnmkFeoDn" role="10QFUM">
                                        <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                                      </node>
                                      <node concept="2OqwBi" id="24xnmkFelNU" role="10QFUP">
                                        <node concept="37vLTw" id="24xnmkFelNV" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1KqhpdFNfb6" resolve="dMessage" />
                                        </node>
                                        <node concept="liA8E" id="24xnmkFelNW" role="2OqNvi">
                                          <ref role="37wK5l" to="t4tl:~DMessage.context()" resolve="context" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="22j9zcgQKeL" role="2OqNvi">
                                    <ref role="37wK5l" to="t4tl:~DNewableObject.tryOriginal()" resolve="tryOriginal" />
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
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object)" resolve="putUserObject" />
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
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object)" resolve="putUserObject" />
              <node concept="Xl_RD" id="1KqhpdFNfbP" role="37wK5m">
                <property role="Xl_RC" value="D_STATUS" />
              </node>
              <node concept="37vLTw" id="1KqhpdFNfbQ" role="37wK5m">
                <ref role="3cqZAo" node="1KqhpdFNfb8" resolve="status" />
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
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object)" resolve="putUserObject" />
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
                <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object)" resolve="getUserObject" />
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
      <property role="TrG5h" value="status" />
      <node concept="3Tm1VV" id="5j905zH3nNY" role="1B3o_S" />
      <node concept="3uibUv" id="5j905zH3ojp" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DclareForMpsStatus" resolve="DclareForMpsStatus" />
      </node>
      <node concept="3clFbS" id="5j905zH3nO0" role="3clF47">
        <node concept="3cpWs6" id="5j905zH3oVx" role="3cqZAp">
          <node concept="10QFUN" id="5j905zH3oXl" role="3cqZAk">
            <node concept="3uibUv" id="5j905zH3oZT" role="10QFUM">
              <ref role="3uigEE" to="t4tl:~DclareForMpsStatus" resolve="DclareForMpsStatus" />
            </node>
            <node concept="2OqwBi" id="5j905zH3oVy" role="10QFUP">
              <node concept="2JrnkZ" id="5j905zH3oVz" role="2Oq$k0">
                <node concept="13iPFW" id="5j905zH3oV$" role="2JrQYb" />
              </node>
              <node concept="liA8E" id="5j905zH3oV_" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object)" resolve="getUserObject" />
                <node concept="Xl_RD" id="5j905zH3oVA" role="37wK5m">
                  <property role="Xl_RC" value="D_STATUS" />
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
                <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object)" resolve="getUserObject" />
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
    <node concept="13i0hz" id="1TqOjdHBEKe" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getSource" />
      <node concept="3Tm6S6" id="1TqOjdHBEKf" role="1B3o_S" />
      <node concept="3uibUv" id="1TqOjdHBEKg" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="37vLTG" id="1TqOjdHBEKa" role="3clF46">
        <property role="TrG5h" value="dMessage" />
        <node concept="3uibUv" id="1TqOjdHBEKb" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
        </node>
      </node>
      <node concept="3clFbS" id="1TqOjdHBEK2" role="3clF47">
        <node concept="3cpWs8" id="1TqOjdHBHiO" role="3cqZAp">
          <node concept="3cpWsn" id="1TqOjdHBHiP" role="3cpWs9">
            <property role="TrG5h" value="source" />
            <node concept="3uibUv" id="1TqOjdHBGnM" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="2OqwBi" id="1TqOjdHBHiQ" role="33vP2m">
              <node concept="37vLTw" id="1TqOjdHBHiR" role="2Oq$k0">
                <ref role="3cqZAo" node="1TqOjdHBEKa" resolve="dMessage" />
              </node>
              <node concept="liA8E" id="1TqOjdHBHiS" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DMessage.source()" resolve="source" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1TqOjdHBEK3" role="3cqZAp">
          <node concept="3K4zz7" id="1TqOjdHBY$D" role="3cqZAk">
            <node concept="10Nm6u" id="1TqOjdHC37a" role="3K4GZi" />
            <node concept="3y3z36" id="1TqOjdHBSli" role="3K4Cdx">
              <node concept="10Nm6u" id="1TqOjdHBV4i" role="3uHU7w" />
              <node concept="37vLTw" id="1TqOjdHBPL5" role="3uHU7B">
                <ref role="3cqZAo" node="1TqOjdHBHiP" resolve="source" />
              </node>
            </node>
            <node concept="2OqwBi" id="1TqOjdHBEK4" role="3K4E3e">
              <node concept="37vLTw" id="1TqOjdHBHiT" role="2Oq$k0">
                <ref role="3cqZAo" node="1TqOjdHBHiP" resolve="source" />
              </node>
              <node concept="liA8E" id="1TqOjdHBEK8" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                <node concept="10Nm6u" id="1TqOjdHBEK9" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3zaVTDewaf5">
    <property role="TrG5h" value="Const" />
    <node concept="Wx3nA" id="1O8e97NsGOO" role="jymVt">
      <property role="TrG5h" value="OFF_BG_Color" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1O8e97NsGOR" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="1O8e97NsGOS" role="33vP2m">
        <node concept="1pGfFk" id="1O8e97NsGOT" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
          <node concept="2nou5x" id="1O8e97NsGOU" role="37wK5m">
            <property role="2noCCI" value="e0e0e0" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1O8e97NsGOQ" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="1O8e97NsGYU" role="jymVt">
      <property role="TrG5h" value="IDLE_BG_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1O8e97NsGYX" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="1O8e97NsGYY" role="33vP2m">
        <node concept="1pGfFk" id="1O8e97NsGYZ" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
          <node concept="2nou5x" id="1O8e97NsGZ0" role="37wK5m">
            <property role="2noCCI" value="caf6ce" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1O8e97NsGYW" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="1O8e97NsH7R" role="jymVt">
      <property role="TrG5h" value="ACTIVE_BG_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1O8e97NsH7U" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="1O8e97NsH7V" role="33vP2m">
        <node concept="1pGfFk" id="1O8e97NsH7W" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
          <node concept="2nou5x" id="1O8e97NsH7X" role="37wK5m">
            <property role="2noCCI" value="7ad3ff" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1O8e97NsH7T" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="1O8e97NsHfm" role="jymVt">
      <property role="TrG5h" value="IN_ERROR_BG_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1O8e97NsHfp" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="1O8e97NsHfq" role="33vP2m">
        <node concept="1pGfFk" id="1O8e97NsHfr" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
          <node concept="2nou5x" id="1O8e97NsHfs" role="37wK5m">
            <property role="2noCCI" value="f3a9be" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1O8e97NsHfo" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="1O8e97MWR6l" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="STATUS_USER_OBJECT_KEY" />
      <node concept="3Tm1VV" id="1O8e97MWR6i" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MWR6j" role="1tU5fm" />
      <node concept="Xl_RD" id="1O8e97MWR6k" role="33vP2m">
        <property role="Xl_RC" value="D_STATUS" />
      </node>
    </node>
    <node concept="Wx3nA" id="1O8e97ML8Pl" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MESSAGE_INFO_USER_OBJECT_KEY" />
      <node concept="3Tm1VV" id="1O8e97NurYo" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97ML8Pj" role="1tU5fm" />
      <node concept="2OqwBi" id="1O8e97MTZkX" role="33vP2m">
        <node concept="3VsKOn" id="1O8e97MTYyr" role="2Oq$k0">
          <ref role="3VsUkX" node="1O8e97MKRRd" resolve="MessageSetInfo" />
        </node>
        <node concept="liA8E" id="1O8e97MU0JU" role="2OqNvi">
          <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8e97NsK8z" role="jymVt" />
    <node concept="Wx3nA" id="12jv95xk_qy" role="jymVt">
      <property role="TrG5h" value="maxDigitsInEngineState" />
      <node concept="3Tm1VV" id="12jv95xk_pV" role="1B3o_S" />
      <node concept="10Oyi0" id="12jv95xk_qn" role="1tU5fm" />
      <node concept="3cmrfG" id="12jv95xk_r3" role="33vP2m">
        <property role="3cmrfH" value="4" />
      </node>
    </node>
    <node concept="2tJIrI" id="1O8e97MXhgU" role="jymVt" />
    <node concept="2YIFZL" id="1O8e97MXnhF" role="jymVt">
      <property role="TrG5h" value="getDclareForMpsStatus" />
      <node concept="3clFbS" id="1O8e97MXhhU" role="3clF47">
        <node concept="3clFbF" id="1O8e97MXhpT" role="3cqZAp">
          <node concept="10QFUN" id="1O8e97MXhpV" role="3clFbG">
            <node concept="3uibUv" id="1O8e97MXhpW" role="10QFUM">
              <ref role="3uigEE" to="t4tl:~DclareForMpsStatus" resolve="DclareForMpsStatus" />
            </node>
            <node concept="2OqwBi" id="1O8e97MXhpX" role="10QFUP">
              <node concept="2JrnkZ" id="1O8e97MXhpY" role="2Oq$k0">
                <node concept="37vLTw" id="1O8e97MXhMh" role="2JrQYb">
                  <ref role="3cqZAo" node="1O8e97MXhjL" resolve="node" />
                </node>
              </node>
              <node concept="liA8E" id="1O8e97MXhq0" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object)" resolve="getUserObject" />
                <node concept="37vLTw" id="1O8e97MXhSK" role="37wK5m">
                  <ref role="3cqZAo" node="1O8e97MWR6l" resolve="STATUS_USER_OBJECT_KEY" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1O8e97MXhjL" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1O8e97MXhjK" role="1tU5fm">
          <ref role="ehGHo" to="wknp:7e_PmaZxgoP" resolve="MessageSet" />
        </node>
      </node>
      <node concept="3uibUv" id="1O8e97MXhGe" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DclareForMpsStatus" resolve="DclareForMpsStatus" />
      </node>
      <node concept="3Tm1VV" id="1O8e97MXhhT" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="1O8e97MZXyw" role="jymVt">
      <property role="TrG5h" value="setDclareForMpsStatus" />
      <node concept="3clFbS" id="1O8e97MY871" role="3clF47">
        <node concept="3clFbF" id="1O8e97MY8gI" role="3cqZAp">
          <node concept="2OqwBi" id="WqIZmh34Pm" role="3clFbG">
            <node concept="2JrnkZ" id="WqIZmh2P7_" role="2Oq$k0">
              <node concept="37vLTw" id="WqIZmh24Ls" role="2JrQYb">
                <ref role="3cqZAo" node="1O8e97MY8_k" resolve="node" />
              </node>
            </node>
            <node concept="liA8E" id="WqIZmh3i6P" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object)" resolve="putUserObject" />
              <node concept="37vLTw" id="1O8e97MY98m" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97MWR6l" resolve="STATUS_USER_OBJECT_KEY" />
              </node>
              <node concept="37vLTw" id="WqIZmh4H1C" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97MY8Dp" resolve="status" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1O8e97MY8_k" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1O8e97MY8_l" role="1tU5fm">
          <ref role="ehGHo" to="wknp:7e_PmaZxgoP" resolve="MessageSet" />
        </node>
      </node>
      <node concept="37vLTG" id="1O8e97MY8Dp" role="3clF46">
        <property role="TrG5h" value="status" />
        <node concept="3uibUv" id="1O8e97MY8K1" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DclareForMpsStatus" resolve="DclareForMpsStatus" />
        </node>
      </node>
      <node concept="3cqZAl" id="1O8e97MY86Z" role="3clF45" />
      <node concept="3Tm1VV" id="1O8e97MY870" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="3zaVTDewaf6" role="1B3o_S" />
  </node>
  <node concept="13h7C7" id="12jv95xewuh">
    <ref role="13h7C2" to="wknp:7e_PmaZxgoP" resolve="MessageSet" />
    <node concept="13i0hz" id="1O8e97NtGZa" role="13h7CS">
      <property role="TrG5h" value="info" />
      <node concept="3Tm1VV" id="1O8e97NtGZb" role="1B3o_S" />
      <node concept="3uibUv" id="1O8e97NtH7a" role="3clF45">
        <ref role="3uigEE" node="1O8e97MKRRd" resolve="MessageSetInfo" />
      </node>
      <node concept="3clFbS" id="1O8e97NtGZd" role="3clF47">
        <node concept="3cpWs8" id="1O8e97Nuuhp" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97Nuuhq" role="3cpWs9">
            <property role="TrG5h" value="status" />
            <node concept="3uibUv" id="1O8e97Nuuhr" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DclareForMpsStatus" resolve="DclareForMpsStatus" />
            </node>
            <node concept="2YIFZM" id="1O8e97Nuuhs" role="33vP2m">
              <ref role="37wK5l" node="1O8e97MXnhF" resolve="getDclareForMpsStatus" />
              <ref role="1Pybhc" node="3zaVTDewaf5" resolve="Const" />
              <node concept="13iPFW" id="1O8e97NuBRP" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97Nuuhu" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97Nuuhv" role="3cpWs9">
            <property role="TrG5h" value="stats" />
            <node concept="3uibUv" id="1O8e97Nuuhw" role="1tU5fm">
              <ref role="3uigEE" to="kag7:~UniverseStatistics" resolve="UniverseStatistics" />
            </node>
            <node concept="3K4zz7" id="1O8e97Nuuhx" role="33vP2m">
              <node concept="3clFbC" id="1O8e97Nuuhy" role="3K4Cdx">
                <node concept="37vLTw" id="1O8e97Nuuhz" role="3uHU7B">
                  <ref role="3cqZAo" node="1O8e97Nuuhq" resolve="status" />
                </node>
                <node concept="10Nm6u" id="1O8e97Nuuh$" role="3uHU7w" />
              </node>
              <node concept="10Nm6u" id="1O8e97Nuuh_" role="3K4E3e" />
              <node concept="2OqwBi" id="1O8e97NuuhA" role="3K4GZi">
                <node concept="37vLTw" id="1O8e97NuuhB" role="2Oq$k0">
                  <ref role="3cqZAo" node="1O8e97Nuuhq" resolve="status" />
                </node>
                <node concept="liA8E" id="1O8e97NuuhC" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DclareForMpsStatus.stats()" resolve="stats" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97NuuhD" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97NuuhE" role="3cpWs9">
            <property role="TrG5h" value="info" />
            <node concept="3uibUv" id="1O8e97NuuhF" role="1tU5fm">
              <ref role="3uigEE" node="1O8e97MKRRd" resolve="MessageSetInfo" />
            </node>
            <node concept="10QFUN" id="1O8e97NuuhG" role="33vP2m">
              <node concept="3uibUv" id="1O8e97NuuhH" role="10QFUM">
                <ref role="3uigEE" node="1O8e97MKRRd" resolve="MessageSetInfo" />
              </node>
              <node concept="2OqwBi" id="1O8e97NuuhI" role="10QFUP">
                <node concept="liA8E" id="1O8e97NuuhJ" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object)" resolve="getUserObject" />
                  <node concept="10M0yZ" id="1O8e97NuuhK" role="37wK5m">
                    <ref role="3cqZAo" node="1O8e97ML8Pl" resolve="MESSAGE_INFO_USER_OBJECT_KEY" />
                    <ref role="1PxDUh" node="3zaVTDewaf5" resolve="Const" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="1O8e97NuuhL" role="2Oq$k0">
                  <node concept="13iPFW" id="1O8e97NuBRO" role="2JrQYb" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1O8e97NuuhN" role="3cqZAp">
          <node concept="3clFbS" id="1O8e97NuuhO" role="3clFbx">
            <node concept="3clFbF" id="1O8e97NuuhP" role="3cqZAp">
              <node concept="37vLTI" id="1O8e97NuuhQ" role="3clFbG">
                <node concept="10Nm6u" id="1O8e97NuuhR" role="37vLTx" />
                <node concept="37vLTw" id="1O8e97NuuhS" role="37vLTJ">
                  <ref role="3cqZAo" node="1O8e97NuuhE" resolve="info" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1O8e97NuuhT" role="3clFbw">
            <node concept="3y3z36" id="1O8e97NuuhU" role="3uHU7B">
              <node concept="37vLTw" id="1O8e97NuuhV" role="3uHU7B">
                <ref role="3cqZAo" node="1O8e97NuuhE" resolve="info" />
              </node>
              <node concept="10Nm6u" id="1O8e97NuuhW" role="3uHU7w" />
            </node>
            <node concept="3fqX7Q" id="1O8e97NuuhX" role="3uHU7w">
              <node concept="2YIFZM" id="1O8e97NuuhY" role="3fr31v">
                <ref role="37wK5l" to="33ny:~Objects.equals(java.lang.Object,java.lang.Object)" resolve="equals" />
                <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
                <node concept="2OqwBi" id="1O8e97NuuhZ" role="37wK5m">
                  <node concept="37vLTw" id="1O8e97Nuui0" role="2Oq$k0">
                    <ref role="3cqZAo" node="1O8e97NuuhE" resolve="info" />
                  </node>
                  <node concept="liA8E" id="1O8e97Nuui1" role="2OqNvi">
                    <ref role="37wK5l" node="1O8e97NtXp9" resolve="getStats" />
                  </node>
                </node>
                <node concept="37vLTw" id="1O8e97Nuui2" role="37wK5m">
                  <ref role="3cqZAo" node="1O8e97Nuuhv" resolve="stats" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1O8e97Nuui3" role="3cqZAp">
          <node concept="3clFbS" id="1O8e97Nuui4" role="3clFbx">
            <node concept="3clFbF" id="1O8e97Nuui5" role="3cqZAp">
              <node concept="37vLTI" id="1O8e97Nuui6" role="3clFbG">
                <node concept="2ShNRf" id="1O8e97Nuui7" role="37vLTx">
                  <node concept="1pGfFk" id="1O8e97Nuui8" role="2ShVmc">
                    <ref role="37wK5l" node="1O8e97MLjO5" resolve="MessageSetInfo" />
                    <node concept="37vLTw" id="1O8e97Nuui9" role="37wK5m">
                      <ref role="3cqZAo" node="1O8e97Nuuhq" resolve="status" />
                    </node>
                    <node concept="37vLTw" id="1O8e97Nuuia" role="37wK5m">
                      <ref role="3cqZAo" node="1O8e97Nuuhv" resolve="stats" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1O8e97Nuuib" role="37vLTJ">
                  <ref role="3cqZAo" node="1O8e97NuuhE" resolve="info" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1O8e97Nuuic" role="3cqZAp">
              <node concept="2OqwBi" id="1O8e97Nuuid" role="3clFbG">
                <node concept="liA8E" id="1O8e97Nuuie" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object)" resolve="putUserObject" />
                  <node concept="10M0yZ" id="1O8e97Nuuif" role="37wK5m">
                    <ref role="3cqZAo" node="1O8e97ML8Pl" resolve="MESSAGE_INFO_USER_OBJECT_KEY" />
                    <ref role="1PxDUh" node="3zaVTDewaf5" resolve="Const" />
                  </node>
                  <node concept="37vLTw" id="1O8e97Nuuig" role="37wK5m">
                    <ref role="3cqZAo" node="1O8e97NuuhE" resolve="info" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="1O8e97Nuuih" role="2Oq$k0">
                  <node concept="13iPFW" id="1O8e97NuBRN" role="2JrQYb" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1O8e97Nuuij" role="3clFbw">
            <node concept="10Nm6u" id="1O8e97Nuuik" role="3uHU7w" />
            <node concept="37vLTw" id="1O8e97Nuuil" role="3uHU7B">
              <ref role="3cqZAo" node="1O8e97NuuhE" resolve="info" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1O8e97NtHPS" role="3cqZAp">
          <node concept="37vLTw" id="1O8e97Nuuiv" role="3cqZAk">
            <ref role="3cqZAo" node="1O8e97NuuhE" resolve="info" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1O8e97NsqrN" role="13h7CS">
      <property role="TrG5h" value="bgColor" />
      <node concept="3Tm1VV" id="1O8e97NsqrO" role="1B3o_S" />
      <node concept="3uibUv" id="1O8e97Ns$xS" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="3clFbS" id="1O8e97NsqrQ" role="3clF47">
        <node concept="3cpWs8" id="1O8e97NsnFg" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97NsnFh" role="3cpWs9">
            <property role="TrG5h" value="status" />
            <node concept="3uibUv" id="1O8e97NsnFi" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DclareForMpsStatus" resolve="DclareForMpsStatus" />
            </node>
            <node concept="2YIFZM" id="1O8e97NsFM3" role="33vP2m">
              <ref role="37wK5l" node="1O8e97MXnhF" resolve="getDclareForMpsStatus" />
              <ref role="1Pybhc" node="3zaVTDewaf5" resolve="Const" />
              <node concept="13iPFW" id="1O8e97NsG0t" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1O8e97NsnFq" role="3cqZAp">
          <node concept="3clFbS" id="1O8e97NsnFr" role="3clFbx">
            <node concept="3cpWs6" id="1O8e97NsnFs" role="3cqZAp">
              <node concept="10M0yZ" id="1O8e97NsHkd" role="3cqZAk">
                <ref role="3cqZAo" node="1O8e97NsHfm" resolve="IN_ERROR_BG_COLOR" />
                <ref role="1PxDUh" node="3zaVTDewaf5" resolve="Const" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1O8e97NsnFu" role="3clFbw">
            <node concept="2OqwBi" id="1O8e97NsnFv" role="2Oq$k0">
              <node concept="13iPFW" id="1O8e97NsEbD" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1O8e97NsnFx" role="2OqNvi">
                <ref role="3TtcxE" to="wknp:7e_PmaZxgoQ" resolve="errors" />
              </node>
            </node>
            <node concept="3GX2aA" id="1O8e97NsnFy" role="2OqNvi" />
          </node>
          <node concept="3eNFk2" id="1O8e97NsnFz" role="3eNLev">
            <node concept="3clFbS" id="1O8e97NsnF$" role="3eOfB_">
              <node concept="3clFbJ" id="1O8e97NsnF_" role="3cqZAp">
                <node concept="3clFbS" id="1O8e97NsnFA" role="3clFbx">
                  <node concept="3cpWs6" id="1O8e97NsnFB" role="3cqZAp">
                    <node concept="10M0yZ" id="1O8e97NsH_q" role="3cqZAk">
                      <ref role="3cqZAo" node="1O8e97NsH7R" resolve="ACTIVE_BG_COLOR" />
                      <ref role="1PxDUh" node="3zaVTDewaf5" resolve="Const" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1O8e97NsnFD" role="3clFbw">
                  <node concept="37vLTw" id="1O8e97NsnFE" role="2Oq$k0">
                    <ref role="3cqZAo" node="1O8e97NsnFh" resolve="status" />
                  </node>
                  <node concept="liA8E" id="1O8e97NsnFF" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DclareForMpsStatus.isActive()" resolve="isActive" />
                  </node>
                </node>
                <node concept="3eNFk2" id="1O8e97NsnFG" role="3eNLev">
                  <node concept="2OqwBi" id="1O8e97NsnFH" role="3eO9$A">
                    <node concept="37vLTw" id="1O8e97NsnFI" role="2Oq$k0">
                      <ref role="3cqZAo" node="1O8e97NsnFh" resolve="status" />
                    </node>
                    <node concept="liA8E" id="1O8e97NsnFJ" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DclareForMpsStatus.isIdle()" resolve="isIdle" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1O8e97NsnFK" role="3eOfB_">
                    <node concept="3cpWs6" id="1O8e97NsnFL" role="3cqZAp">
                      <node concept="10M0yZ" id="1O8e97NsHL0" role="3cqZAk">
                        <ref role="3cqZAo" node="1O8e97NsGYU" resolve="IDLE_BG_COLOR" />
                        <ref role="1PxDUh" node="3zaVTDewaf5" resolve="Const" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="1O8e97NsnFN" role="3eO9$A">
              <node concept="2OqwBi" id="1O8e97NsnFO" role="3uHU7B">
                <node concept="13iPFW" id="1O8e97NsEFU" role="2Oq$k0" />
                <node concept="3TrcHB" id="1O8e97NsnFQ" role="2OqNvi">
                  <ref role="3TsBF5" to="wknp:1DUQ$OwrN1P" resolve="on" />
                </node>
              </node>
              <node concept="3y3z36" id="1O8e97NsnFR" role="3uHU7w">
                <node concept="37vLTw" id="1O8e97NsnFS" role="3uHU7B">
                  <ref role="3cqZAo" node="1O8e97NsnFh" resolve="status" />
                </node>
                <node concept="10Nm6u" id="1O8e97NsnFT" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1O8e97NsnFU" role="3cqZAp">
          <node concept="10M0yZ" id="1O8e97NsHZo" role="3cqZAk">
            <ref role="3cqZAo" node="1O8e97NsGOO" resolve="OFF_BG_Color" />
            <ref role="1PxDUh" node="3zaVTDewaf5" resolve="Const" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="12jv95xewui" role="13h7CW">
      <node concept="3clFbS" id="12jv95xewuj" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3_wkb9eGwrA">
    <ref role="13h7C2" to="wknp:3gm2YTwH79_" resolve="AspectSettings" />
    <node concept="13i0hz" id="3_wkb9eGyaj" role="13h7CS">
      <property role="TrG5h" value="setActive" />
      <node concept="37vLTG" id="3_wkb9eGybm" role="3clF46">
        <property role="TrG5h" value="active" />
        <node concept="10P_77" id="3_wkb9eGyb$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3_wkb9eGyy6" role="3clF46">
        <property role="TrG5h" value="prefs" />
        <node concept="3uibUv" id="3_wkb9eGySm" role="1tU5fm">
          <ref role="3uigEE" to="u4ym:22ExA6fKnVF" resolve="IAspectPrefs" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3_wkb9eGyak" role="1B3o_S" />
      <node concept="3cqZAl" id="3_wkb9eGyaz" role="3clF45" />
      <node concept="3clFbS" id="3_wkb9eGyam" role="3clF47">
        <node concept="3clFbF" id="22ExA6fG_66" role="3cqZAp">
          <node concept="37vLTI" id="22ExA6fG_I4" role="3clFbG">
            <node concept="2OqwBi" id="22ExA6fG_ee" role="37vLTJ">
              <node concept="13iPFW" id="3_wkb9eG$RA" role="2Oq$k0" />
              <node concept="3TrcHB" id="22ExA6fG_oT" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:3gm2YTwH79H" resolve="active" />
              </node>
            </node>
            <node concept="37vLTw" id="3_wkb9eG$MV" role="37vLTx">
              <ref role="3cqZAo" node="3_wkb9eGybm" resolve="active" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="22ExA6g7c5Z" role="3cqZAp">
          <node concept="2OqwBi" id="22ExA6g7ciJ" role="3clFbG">
            <node concept="37vLTw" id="22ExA6g7c5X" role="2Oq$k0">
              <ref role="3cqZAo" node="3_wkb9eGyy6" resolve="prefs" />
            </node>
            <node concept="liA8E" id="22ExA6g7cti" role="2OqNvi">
              <ref role="37wK5l" to="u4ym:22ExA6fKnZs" resolve="setActive" />
              <node concept="2OqwBi" id="yC2uzd1g9M" role="37wK5m">
                <node concept="13iPFW" id="3_wkb9eG_p7" role="2Oq$k0" />
                <node concept="3TrcHB" id="yC2uzd1gfD" role="2OqNvi">
                  <ref role="3TsBF5" to="wknp:yC2uzcPUIs" resolve="id" />
                </node>
              </node>
              <node concept="37vLTw" id="3_wkb9eG_DO" role="37wK5m">
                <ref role="3cqZAo" node="3_wkb9eGybm" resolve="active" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3_wkb9eGA4F" role="3cqZAp">
          <node concept="3clFbS" id="3_wkb9eGA4H" role="3clFbx">
            <node concept="2Gpval" id="3_wkb9eGAbF" role="3cqZAp">
              <node concept="2GrKxI" id="3_wkb9eGAbH" role="2Gsz3X">
                <property role="TrG5h" value="sup" />
              </node>
              <node concept="2OqwBi" id="3_wkb9eGC9f" role="2GsD0m">
                <node concept="2OqwBi" id="3_wkb9eGAqb" role="2Oq$k0">
                  <node concept="13iPFW" id="3_wkb9eGAd4" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3_wkb9eGAKt" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:3_wkb9eGAzO" resolve="dependencies" />
                  </node>
                </node>
                <node concept="13MTOL" id="3_wkb9eGDxn" role="2OqNvi">
                  <ref role="13MTZf" to="wknp:3_wkb9eGwqy" resolve="aspect" />
                </node>
              </node>
              <node concept="3clFbS" id="3_wkb9eGAbL" role="2LFqv$">
                <node concept="3clFbJ" id="3_wkb9eGDYM" role="3cqZAp">
                  <node concept="3fqX7Q" id="3_wkb9eGEsK" role="3clFbw">
                    <node concept="2OqwBi" id="3_wkb9eGEsM" role="3fr31v">
                      <node concept="2GrUjf" id="3_wkb9eGEsN" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="3_wkb9eGAbH" resolve="sup" />
                      </node>
                      <node concept="3TrcHB" id="3_wkb9eGEsO" role="2OqNvi">
                        <ref role="3TsBF5" to="wknp:3gm2YTwH79H" resolve="active" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="3_wkb9eGDYO" role="3clFbx">
                    <node concept="3clFbF" id="3_wkb9eGEuX" role="3cqZAp">
                      <node concept="2OqwBi" id="3_wkb9eGEEU" role="3clFbG">
                        <node concept="2GrUjf" id="3_wkb9eGEuW" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="3_wkb9eGAbH" resolve="sup" />
                        </node>
                        <node concept="2qgKlT" id="3_wkb9eGER_" role="2OqNvi">
                          <ref role="37wK5l" node="3_wkb9eGyaj" resolve="setActive" />
                          <node concept="3clFbT" id="3_wkb9eGU0K" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                          <node concept="37vLTw" id="3_wkb9eGF7L" role="37wK5m">
                            <ref role="3cqZAo" node="3_wkb9eGyy6" resolve="prefs" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3_wkb9eGA8u" role="3clFbw">
            <ref role="3cqZAo" node="3_wkb9eGybm" resolve="active" />
          </node>
          <node concept="9aQIb" id="3_wkb9eGFbA" role="9aQIa">
            <node concept="3clFbS" id="3_wkb9eGFbB" role="9aQI4">
              <node concept="2Gpval" id="3_wkb9eGFet" role="3cqZAp">
                <node concept="2GrKxI" id="3_wkb9eGFeu" role="2Gsz3X">
                  <property role="TrG5h" value="sub" />
                </node>
                <node concept="2OqwBi" id="3_wkb9eGI3R" role="2GsD0m">
                  <node concept="2OqwBi" id="3_wkb9eGGeG" role="2Oq$k0">
                    <node concept="2OqwBi" id="3_wkb9eGFBF" role="2Oq$k0">
                      <node concept="13iPFW" id="3_wkb9eGFrj" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="3_wkb9eGFUw" role="2OqNvi">
                        <node concept="1xMEDy" id="3_wkb9eGFUy" role="1xVPHs">
                          <node concept="chp4Y" id="3_wkb9eGFZ1" role="ri$Ld">
                            <ref role="cht4Q" to="wknp:7e_PmaZxgoP" resolve="MessageSet" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="3_wkb9eGGoN" role="2OqNvi">
                      <ref role="3TtcxE" to="wknp:3gm2YTwH79v" resolve="aspects" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="3_wkb9eGJDb" role="2OqNvi">
                    <node concept="1bVj0M" id="3_wkb9eGJDd" role="23t8la">
                      <node concept="3clFbS" id="3_wkb9eGJDe" role="1bW5cS">
                        <node concept="3clFbF" id="3_wkb9eGJUn" role="3cqZAp">
                          <node concept="2OqwBi" id="3_wkb9eGMy$" role="3clFbG">
                            <node concept="2OqwBi" id="3_wkb9eGK87" role="2Oq$k0">
                              <node concept="37vLTw" id="3_wkb9eGJUm" role="2Oq$k0">
                                <ref role="3cqZAo" node="3_wkb9eGJDf" resolve="a" />
                              </node>
                              <node concept="3Tsc0h" id="3_wkb9eGKrh" role="2OqNvi">
                                <ref role="3TtcxE" to="wknp:3_wkb9eGAzO" resolve="dependencies" />
                              </node>
                            </node>
                            <node concept="2HwmR7" id="3_wkb9eGO6w" role="2OqNvi">
                              <node concept="1bVj0M" id="3_wkb9eGO6y" role="23t8la">
                                <node concept="3clFbS" id="3_wkb9eGO6z" role="1bW5cS">
                                  <node concept="3clFbF" id="3_wkb9eGOx3" role="3cqZAp">
                                    <node concept="17R0WA" id="3_wkb9eGON1" role="3clFbG">
                                      <node concept="13iPFW" id="3_wkb9eGP3L" role="3uHU7w" />
                                      <node concept="2OqwBi" id="3_wkb9eGPiw" role="3uHU7B">
                                        <node concept="37vLTw" id="3_wkb9eGOx2" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3_wkb9eGO6$" resolve="sup" />
                                        </node>
                                        <node concept="3TrEf2" id="3_wkb9eGPHM" role="2OqNvi">
                                          <ref role="3Tt5mk" to="wknp:3_wkb9eGwqy" resolve="aspect" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="3_wkb9eGO6$" role="1bW2Oz">
                                  <property role="TrG5h" value="sup" />
                                  <node concept="2jxLKc" id="3_wkb9eGO6_" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3_wkb9eGJDf" role="1bW2Oz">
                        <property role="TrG5h" value="a" />
                        <node concept="2jxLKc" id="3_wkb9eGJDg" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="3_wkb9eGFew" role="2LFqv$">
                  <node concept="3clFbJ" id="3_wkb9eGSwt" role="3cqZAp">
                    <node concept="3clFbS" id="3_wkb9eGSwv" role="3clFbx">
                      <node concept="3clFbF" id="3_wkb9eGPUS" role="3cqZAp">
                        <node concept="2OqwBi" id="3_wkb9eGQcc" role="3clFbG">
                          <node concept="2GrUjf" id="3_wkb9eGPUR" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="3_wkb9eGFeu" resolve="sub" />
                          </node>
                          <node concept="2qgKlT" id="3_wkb9eGRBf" role="2OqNvi">
                            <ref role="37wK5l" node="3_wkb9eGyaj" resolve="setActive" />
                            <node concept="3clFbT" id="3_wkb9eGUhH" role="37wK5m" />
                            <node concept="37vLTw" id="3_wkb9eGSfd" role="37wK5m">
                              <ref role="3cqZAo" node="3_wkb9eGyy6" resolve="prefs" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3_wkb9eGT3x" role="3clFbw">
                      <node concept="2GrUjf" id="3_wkb9eGSK3" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="3_wkb9eGFeu" resolve="sub" />
                      </node>
                      <node concept="3TrcHB" id="3_wkb9eGTAR" role="2OqNvi">
                        <ref role="3TsBF5" to="wknp:3gm2YTwH79H" resolve="active" />
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
    <node concept="13hLZK" id="3_wkb9eGwrB" role="13h7CW">
      <node concept="3clFbS" id="3_wkb9eGwrC" role="2VODD2" />
    </node>
  </node>
  <node concept="312cEu" id="1O8e97MKRRd">
    <property role="TrG5h" value="MessageSetInfo" />
    <node concept="312cEg" id="1O8e97ML9PB" role="jymVt">
      <property role="TrG5h" value="weakStats" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1O8e97ML9L1" role="1B3o_S" />
      <node concept="3uibUv" id="1O8e97ML9Z_" role="1tU5fm">
        <ref role="3uigEE" to="mpcv:~WeakReference" resolve="WeakReference" />
        <node concept="3uibUv" id="1O8e97MLa0A" role="11_B2D">
          <ref role="3uigEE" to="kag7:~UniverseStatistics" resolve="UniverseStatistics" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8e97MLayy" role="jymVt" />
    <node concept="312cEg" id="1O8e97MMC3y" role="jymVt">
      <property role="TrG5h" value="devMode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MN5Kc" role="1B3o_S" />
      <node concept="10P_77" id="1O8e97MNzsK" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1O8e97MPu0H" role="jymVt" />
    <node concept="312cEg" id="1O8e97MNsEO" role="jymVt">
      <property role="TrG5h" value="maxTotalNrOfChanges" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MNsEP" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MNsEQ" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1O8e97MNhGq" role="jymVt">
      <property role="TrG5h" value="maxNrOfChanges" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MNhGr" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MNhGs" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1O8e97MNhQh" role="jymVt">
      <property role="TrG5h" value="maxNrOfObserved" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MNhQi" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MNhQj" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1O8e97MNi0e" role="jymVt">
      <property role="TrG5h" value="maxNrOfObservers" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MNi0f" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MNi0g" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1O8e97MPykS" role="jymVt" />
    <node concept="312cEg" id="1O8e97MO4Qq" role="jymVt">
      <property role="TrG5h" value="mainLineNumbers" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MO4Qr" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MO4Qs" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1O8e97MO9fV" role="jymVt">
      <property role="TrG5h" value="devLine1Numbers" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MO9fW" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MO9fX" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1O8e97MO9rM" role="jymVt">
      <property role="TrG5h" value="devLine2Numbers" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MO9rN" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MO9rO" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1O8e97MOfi$" role="jymVt">
      <property role="TrG5h" value="devLine3Numbers" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MOfi_" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MOfiA" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1O8e97MOghB" role="jymVt">
      <property role="TrG5h" value="devLine4Numbers" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MOghC" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MOghD" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1O8e97MPCJE" role="jymVt" />
    <node concept="312cEg" id="1O8e97MO9NM" role="jymVt">
      <property role="TrG5h" value="devLine2Ref1" />
      <node concept="3Tm1VV" id="1O8e97MO9NN" role="1B3o_S" />
      <node concept="3uibUv" id="1O8e97MOxJB" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="312cEg" id="1O8e97MOf6f" role="jymVt">
      <property role="TrG5h" value="devLine2Ref2" />
      <node concept="3Tm1VV" id="1O8e97MOf6g" role="1B3o_S" />
      <node concept="3uibUv" id="1O8e97MOxx7" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="312cEg" id="1O8e97MOfFw" role="jymVt">
      <property role="TrG5h" value="devLine3Ref1" />
      <node concept="3Tm1VV" id="1O8e97MOfFx" role="1B3o_S" />
      <node concept="3uibUv" id="1O8e97MOxCn" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="312cEg" id="1O8e97MOg4O" role="jymVt">
      <property role="TrG5h" value="devLine3Ref2" />
      <node concept="3Tm1VV" id="1O8e97MOg4P" role="1B3o_S" />
      <node concept="3uibUv" id="1O8e97MOxpR" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="312cEg" id="1O8e97MOgFv" role="jymVt">
      <property role="TrG5h" value="devLine4Ref1" />
      <node concept="3Tm1VV" id="1O8e97MOgFw" role="1B3o_S" />
      <node concept="3uibUv" id="1O8e97MOx67" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="312cEg" id="1O8e97MOnul" role="jymVt">
      <property role="TrG5h" value="devLine4Ref2" />
      <node concept="3Tm1VV" id="1O8e97MOnum" role="1B3o_S" />
      <node concept="3uibUv" id="1O8e97MOwYR" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="1O8e97MVTRO" role="jymVt" />
    <node concept="312cEg" id="1O8e97MO9BJ" role="jymVt">
      <property role="TrG5h" value="devLine2Text1" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MO9BK" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MO9BL" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1O8e97MOeU0" role="jymVt">
      <property role="TrG5h" value="devLine2Text2" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MOeU1" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MOeU2" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1O8e97MOfuZ" role="jymVt">
      <property role="TrG5h" value="devLine3Text1" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MOfv0" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MOfv1" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1O8e97MOfS7" role="jymVt">
      <property role="TrG5h" value="devLine3Text2" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MOfS8" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MOfS9" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1O8e97MOguw" role="jymVt">
      <property role="TrG5h" value="devLine4Text1" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MOgux" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MOguy" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1O8e97MOnha" role="jymVt">
      <property role="TrG5h" value="devLine4Text2" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1O8e97MOnhb" role="1B3o_S" />
      <node concept="17QB3L" id="1O8e97MOnhc" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1O8e97N6IDw" role="jymVt" />
    <node concept="3clFbW" id="1O8e97MLjO5" role="jymVt">
      <node concept="3cqZAl" id="1O8e97MLjO7" role="3clF45" />
      <node concept="3Tm1VV" id="1O8e97MLjO8" role="1B3o_S" />
      <node concept="3clFbS" id="1O8e97MLjO9" role="3clF47">
        <node concept="3clFbF" id="1O8e97MWM4W" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97MWMCK" role="3clFbG">
            <node concept="2ShNRf" id="1O8e97MWNit" role="37vLTx">
              <node concept="1pGfFk" id="1O8e97MWOBP" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="mpcv:~WeakReference.&lt;init&gt;(java.lang.Object)" resolve="WeakReference" />
                <node concept="37vLTw" id="1O8e97MWOU$" role="37wK5m">
                  <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1O8e97MWM4U" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97ML9PB" resolve="weakStats" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1O8e97N97Dx" role="3cqZAp" />
        <node concept="3cpWs8" id="1O8e97N9a_y" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97N9a__" role="3cpWs9">
            <property role="TrG5h" value="runCount_" />
            <node concept="17QB3L" id="1O8e97N9a_w" role="1tU5fm" />
            <node concept="Xl_RD" id="1O8e97N9FnD" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97Njayt" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97Njayu" role="3cpWs9">
            <property role="TrG5h" value="maxTotalNrOfChanges_" />
            <node concept="17QB3L" id="1O8e97Njayv" role="1tU5fm" />
            <node concept="Xl_RD" id="1O8e97Njayw" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97N9eoQ" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97N9eoR" role="3cpWs9">
            <property role="TrG5h" value="maxNrOfChanges_" />
            <node concept="17QB3L" id="1O8e97N9eoS" role="1tU5fm" />
            <node concept="Xl_RD" id="1O8e97N9HNL" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97N9ezx" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97N9ezy" role="3cpWs9">
            <property role="TrG5h" value="maxNrOfObserved_" />
            <node concept="17QB3L" id="1O8e97N9ezz" role="1tU5fm" />
            <node concept="Xl_RD" id="1O8e97N9KfT" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97N9eIi" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97N9eIj" role="3cpWs9">
            <property role="TrG5h" value="maxNrOfObservers_" />
            <node concept="17QB3L" id="1O8e97N9eIk" role="1tU5fm" />
            <node concept="Xl_RD" id="1O8e97N9MG1" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97N9eT9" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97N9eTa" role="3cpWs9">
            <property role="TrG5h" value="totalChanges_" />
            <node concept="17QB3L" id="1O8e97N9eTb" role="1tU5fm" />
            <node concept="Xl_RD" id="1O8e97N9OUS" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97N9f46" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97N9f47" role="3cpWs9">
            <property role="TrG5h" value="totalChangesEver_" />
            <node concept="17QB3L" id="1O8e97N9f48" role="1tU5fm" />
            <node concept="Xl_RD" id="1O8e97N9Rax" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97N9ff9" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97N9ffa" role="3cpWs9">
            <property role="TrG5h" value="mostTotalChangesEver_" />
            <node concept="17QB3L" id="1O8e97N9ffb" role="1tU5fm" />
            <node concept="Xl_RD" id="1O8e97N9TtZ" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97N9fqi" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97N9fqj" role="3cpWs9">
            <property role="TrG5h" value="mostChangesPerInstance_" />
            <node concept="17QB3L" id="1O8e97N9fqk" role="1tU5fm" />
            <node concept="Xl_RD" id="1O8e97N9VU7" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97N9f_x" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97N9f_y" role="3cpWs9">
            <property role="TrG5h" value="mostChangesPerInstanceEver_" />
            <node concept="17QB3L" id="1O8e97N9f_z" role="1tU5fm" />
            <node concept="Xl_RD" id="1O8e97N9Ymf" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97N9fKQ" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97N9fKR" role="3cpWs9">
            <property role="TrG5h" value="mostObserved_" />
            <node concept="17QB3L" id="1O8e97N9fKS" role="1tU5fm" />
            <node concept="Xl_RD" id="1O8e97Na0Mn" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97N9uQA" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97N9uQB" role="3cpWs9">
            <property role="TrG5h" value="mostObservedEver_" />
            <node concept="17QB3L" id="1O8e97N9uQC" role="1tU5fm" />
            <node concept="Xl_RD" id="1O8e97Na3ev" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97N9v27" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97N9v28" role="3cpWs9">
            <property role="TrG5h" value="mostObservers_" />
            <node concept="17QB3L" id="1O8e97N9v29" role="1tU5fm" />
            <node concept="Xl_RD" id="1O8e97Na5EB" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97N9vdI" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97N9vdJ" role="3cpWs9">
            <property role="TrG5h" value="mostObserversEver_" />
            <node concept="17QB3L" id="1O8e97N9vdK" role="1tU5fm" />
            <node concept="Xl_RD" id="1O8e97Na86J" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1O8e97N9Bdc" role="3cqZAp" />
        <node concept="3clFbJ" id="1O8e97MO_D4" role="3cqZAp">
          <node concept="3clFbS" id="1O8e97MO_D6" role="3clFbx">
            <node concept="3clFbF" id="1O8e97Nfkqj" role="3cqZAp">
              <node concept="37vLTI" id="1O8e97Nfn9y" role="3clFbG">
                <node concept="3clFbT" id="1O8e97NfpYh" role="37vLTx" />
                <node concept="37vLTw" id="1O8e97Nfkqi" role="37vLTJ">
                  <ref role="3cqZAo" node="1O8e97MMC3y" resolve="devMode" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1O8e97NfuS3" role="3cqZAp">
              <node concept="37vLTI" id="1O8e97NfynT" role="3clFbG">
                <node concept="10Nm6u" id="1O8e97Nf$Rd" role="37vLTx" />
                <node concept="37vLTw" id="1O8e97NfuS1" role="37vLTJ">
                  <ref role="3cqZAo" node="1O8e97MO9NM" resolve="devLine2Ref1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1O8e97NfBTB" role="3cqZAp">
              <node concept="37vLTI" id="1O8e97NfBTC" role="3clFbG">
                <node concept="10Nm6u" id="1O8e97NfBTD" role="37vLTx" />
                <node concept="37vLTw" id="1O8e97NfBTE" role="37vLTJ">
                  <ref role="3cqZAo" node="1O8e97MOf6f" resolve="devLine2Ref2" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1O8e97NfLjd" role="3cqZAp">
              <node concept="37vLTI" id="1O8e97NfLje" role="3clFbG">
                <node concept="10Nm6u" id="1O8e97NfLjf" role="37vLTx" />
                <node concept="37vLTw" id="1O8e97NfLjg" role="37vLTJ">
                  <ref role="3cqZAo" node="1O8e97MOfFw" resolve="devLine3Ref1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1O8e97NfLj9" role="3cqZAp">
              <node concept="37vLTI" id="1O8e97NfLja" role="3clFbG">
                <node concept="10Nm6u" id="1O8e97NfLjb" role="37vLTx" />
                <node concept="37vLTw" id="1O8e97NfLjc" role="37vLTJ">
                  <ref role="3cqZAo" node="1O8e97MOg4O" resolve="devLine3Ref2" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1O8e97NfLit" role="3cqZAp">
              <node concept="37vLTI" id="1O8e97NfLiu" role="3clFbG">
                <node concept="10Nm6u" id="1O8e97NfLiv" role="37vLTx" />
                <node concept="37vLTw" id="1O8e97NfLiw" role="37vLTJ">
                  <ref role="3cqZAo" node="1O8e97MOgFv" resolve="devLine4Ref1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1O8e97NfLip" role="3cqZAp">
              <node concept="37vLTI" id="1O8e97NfLiq" role="3clFbG">
                <node concept="10Nm6u" id="1O8e97NfLir" role="37vLTx" />
                <node concept="37vLTw" id="1O8e97NfLis" role="37vLTJ">
                  <ref role="3cqZAo" node="1O8e97MOnul" resolve="devLine4Ref2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="1O8e97MOMuT" role="3clFbw">
            <node concept="3clFbC" id="1O8e97MORCp" role="3uHU7w">
              <node concept="10Nm6u" id="1O8e97MOSQy" role="3uHU7w" />
              <node concept="37vLTw" id="1O8e97MOOeW" role="3uHU7B">
                <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
              </node>
            </node>
            <node concept="3clFbC" id="1O8e97MOEn2" role="3uHU7B">
              <node concept="37vLTw" id="1O8e97MOD7s" role="3uHU7B">
                <ref role="3cqZAo" node="1O8e97MW5Xe" resolve="status" />
              </node>
              <node concept="10Nm6u" id="1O8e97MOHeM" role="3uHU7w" />
            </node>
          </node>
          <node concept="9aQIb" id="1O8e97MOTYW" role="9aQIa">
            <node concept="3clFbS" id="1O8e97MOTYX" role="9aQI4">
              <node concept="3clFbF" id="1O8e97MNCTZ" role="3cqZAp">
                <node concept="37vLTI" id="1O8e97MNEgr" role="3clFbG">
                  <node concept="2OqwBi" id="1O8e97MNGxo" role="37vLTx">
                    <node concept="37vLTw" id="1O8e97MNFpg" role="2Oq$k0">
                      <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                    </node>
                    <node concept="liA8E" id="1O8e97MNK3T" role="2OqNvi">
                      <ref role="37wK5l" to="kag7:~UniverseStatistics.devMode()" resolve="devMode" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1O8e97MNCTX" role="37vLTJ">
                    <ref role="3cqZAo" node="1O8e97MMC3y" resolve="devMode" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1O8e97MPLkT" role="3cqZAp" />
              <node concept="3clFbF" id="1O8e97MMJMq" role="3cqZAp">
                <node concept="37vLTI" id="1O8e97MMNnD" role="3clFbG">
                  <node concept="37vLTw" id="1O8e97MMJMo" role="37vLTJ">
                    <ref role="3cqZAo" node="1O8e97N9a__" resolve="runCount_" />
                  </node>
                  <node concept="1rXfSq" id="1O8e97MN3yH" role="37vLTx">
                    <ref role="37wK5l" node="1O8e97NmceL" resolve="formatValue" />
                    <node concept="2OqwBi" id="1O8e97MLFnl" role="37wK5m">
                      <node concept="37vLTw" id="1O8e97MLFnm" role="2Oq$k0">
                        <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                      </node>
                      <node concept="liA8E" id="1O8e97MLFnn" role="2OqNvi">
                        <ref role="37wK5l" to="kag7:~UniverseStatistics.runCount()" resolve="runCount" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1O8e97NjlXZ" role="3cqZAp">
                <node concept="37vLTI" id="1O8e97NjlY0" role="3clFbG">
                  <node concept="37vLTw" id="1O8e97NjlY1" role="37vLTJ">
                    <ref role="3cqZAo" node="1O8e97Njayu" resolve="maxTotalNrOfChanges_" />
                  </node>
                  <node concept="1rXfSq" id="1O8e97NjlY2" role="37vLTx">
                    <ref role="37wK5l" node="1O8e97Nmjhg" resolve="formatValue" />
                    <node concept="2OqwBi" id="1O8e97NjlY3" role="37wK5m">
                      <node concept="37vLTw" id="1O8e97NjlY4" role="2Oq$k0">
                        <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                      </node>
                      <node concept="liA8E" id="1O8e97NjlY5" role="2OqNvi">
                        <ref role="37wK5l" to="kag7:~UniverseStatistics.maxTotalNrOfChanges()" resolve="maxTotalNrOfChanges" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1O8e97MNL5s" role="3cqZAp">
                <node concept="37vLTI" id="1O8e97MNL5t" role="3clFbG">
                  <node concept="37vLTw" id="1O8e97MNL5u" role="37vLTJ">
                    <ref role="3cqZAo" node="1O8e97N9eoR" resolve="maxNrOfChanges_" />
                  </node>
                  <node concept="1rXfSq" id="1O8e97MNL5v" role="37vLTx">
                    <ref role="37wK5l" node="1O8e97Nmjhg" resolve="formatValue" />
                    <node concept="2OqwBi" id="1O8e97MNL5B" role="37wK5m">
                      <node concept="37vLTw" id="1O8e97MNL5C" role="2Oq$k0">
                        <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                      </node>
                      <node concept="liA8E" id="1O8e97MNL5D" role="2OqNvi">
                        <ref role="37wK5l" to="kag7:~UniverseStatistics.maxNrOfChanges()" resolve="maxNrOfChanges" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1O8e97MNL6I" role="3cqZAp">
                <node concept="37vLTI" id="1O8e97MNL6J" role="3clFbG">
                  <node concept="37vLTw" id="1O8e97MNL6K" role="37vLTJ">
                    <ref role="3cqZAo" node="1O8e97N9ezy" resolve="maxNrOfObserved_" />
                  </node>
                  <node concept="1rXfSq" id="1O8e97MNL6L" role="37vLTx">
                    <ref role="37wK5l" node="1O8e97Nmjhg" resolve="formatValue" />
                    <node concept="2OqwBi" id="1O8e97MNL6T" role="37wK5m">
                      <node concept="37vLTw" id="1O8e97MNL6U" role="2Oq$k0">
                        <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                      </node>
                      <node concept="liA8E" id="1O8e97MNL6V" role="2OqNvi">
                        <ref role="37wK5l" to="kag7:~UniverseStatistics.maxNrOfObserved()" resolve="maxNrOfObserved" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1O8e97MNL8s" role="3cqZAp">
                <node concept="37vLTI" id="1O8e97MNL8t" role="3clFbG">
                  <node concept="37vLTw" id="1O8e97MNL8u" role="37vLTJ">
                    <ref role="3cqZAo" node="1O8e97N9eIj" resolve="maxNrOfObservers_" />
                  </node>
                  <node concept="1rXfSq" id="1O8e97MNL8v" role="37vLTx">
                    <ref role="37wK5l" node="1O8e97Nmjhg" resolve="formatValue" />
                    <node concept="2OqwBi" id="1O8e97MNL8B" role="37wK5m">
                      <node concept="37vLTw" id="1O8e97MNL8C" role="2Oq$k0">
                        <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                      </node>
                      <node concept="liA8E" id="1O8e97MNL8D" role="2OqNvi">
                        <ref role="37wK5l" to="kag7:~UniverseStatistics.maxNrOfObservers()" resolve="maxNrOfObservers" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1O8e97Nb8LN" role="3cqZAp">
                <node concept="37vLTI" id="1O8e97Nb8LO" role="3clFbG">
                  <node concept="37vLTw" id="1O8e97Nb8LP" role="37vLTJ">
                    <ref role="3cqZAo" node="1O8e97N9eTa" resolve="totalChanges_" />
                  </node>
                  <node concept="1rXfSq" id="1O8e97Nb8LQ" role="37vLTx">
                    <ref role="37wK5l" node="1O8e97Nmjhg" resolve="formatValue" />
                    <node concept="2OqwBi" id="1O8e97Nb8LR" role="37wK5m">
                      <node concept="37vLTw" id="1O8e97Nb8LS" role="2Oq$k0">
                        <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                      </node>
                      <node concept="liA8E" id="1O8e97Nb8LT" role="2OqNvi">
                        <ref role="37wK5l" to="kag7:~UniverseStatistics.totalChanges()" resolve="totalChanges" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1O8e97NbaN0" role="3cqZAp">
                <node concept="37vLTI" id="1O8e97NbaN1" role="3clFbG">
                  <node concept="37vLTw" id="1O8e97NbaN2" role="37vLTJ">
                    <ref role="3cqZAo" node="1O8e97N9f47" resolve="totalChangesEver_" />
                  </node>
                  <node concept="1rXfSq" id="1O8e97NbaN3" role="37vLTx">
                    <ref role="37wK5l" node="1O8e97NmceL" resolve="formatValue" />
                    <node concept="2OqwBi" id="1O8e97NbaN4" role="37wK5m">
                      <node concept="37vLTw" id="1O8e97NbaN5" role="2Oq$k0">
                        <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                      </node>
                      <node concept="liA8E" id="1O8e97NbaN6" role="2OqNvi">
                        <ref role="37wK5l" to="kag7:~UniverseStatistics.totalChangesEver()" resolve="totalChangesEver" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1O8e97NbbhT" role="3cqZAp">
                <node concept="37vLTI" id="1O8e97NbbhU" role="3clFbG">
                  <node concept="37vLTw" id="1O8e97NbbhV" role="37vLTJ">
                    <ref role="3cqZAo" node="1O8e97N9ffa" resolve="mostTotalChangesEver_" />
                  </node>
                  <node concept="1rXfSq" id="1O8e97NbbhW" role="37vLTx">
                    <ref role="37wK5l" node="1O8e97NmceL" resolve="formatValue" />
                    <node concept="2OqwBi" id="1O8e97NbbhX" role="37wK5m">
                      <node concept="37vLTw" id="1O8e97NbbhY" role="2Oq$k0">
                        <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                      </node>
                      <node concept="liA8E" id="1O8e97NbbhZ" role="2OqNvi">
                        <ref role="37wK5l" to="kag7:~UniverseStatistics.mostTotalChangesEver()" resolve="mostTotalChangesEver" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1O8e97Nbdef" role="3cqZAp">
                <node concept="37vLTI" id="1O8e97Nbdeg" role="3clFbG">
                  <node concept="37vLTw" id="1O8e97Nbdeh" role="37vLTJ">
                    <ref role="3cqZAo" node="1O8e97N9fqj" resolve="mostChangesPerInstance_" />
                  </node>
                  <node concept="1rXfSq" id="1O8e97Nbdei" role="37vLTx">
                    <ref role="37wK5l" node="1O8e97Nmjhg" resolve="formatValue" />
                    <node concept="2OqwBi" id="1O8e97Nbdej" role="37wK5m">
                      <node concept="37vLTw" id="1O8e97Nbdek" role="2Oq$k0">
                        <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                      </node>
                      <node concept="liA8E" id="1O8e97Nbdel" role="2OqNvi">
                        <ref role="37wK5l" to="kag7:~UniverseStatistics.mostChangesPerInstance()" resolve="mostChangesPerInstance" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1O8e97NbeCa" role="3cqZAp">
                <node concept="37vLTI" id="1O8e97NbeCb" role="3clFbG">
                  <node concept="37vLTw" id="1O8e97NbeCc" role="37vLTJ">
                    <ref role="3cqZAo" node="1O8e97N9f_y" resolve="mostChangesPerInstanceEver_" />
                  </node>
                  <node concept="1rXfSq" id="1O8e97NbeCd" role="37vLTx">
                    <ref role="37wK5l" node="1O8e97NmceL" resolve="formatValue" />
                    <node concept="2OqwBi" id="1O8e97NbeCe" role="37wK5m">
                      <node concept="37vLTw" id="1O8e97NbeCf" role="2Oq$k0">
                        <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                      </node>
                      <node concept="liA8E" id="1O8e97NbeCg" role="2OqNvi">
                        <ref role="37wK5l" to="kag7:~UniverseStatistics.mostChangesPerInstanceEver()" resolve="mostChangesPerInstanceEver" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1O8e97NbgHR" role="3cqZAp">
                <node concept="37vLTI" id="1O8e97NbgHS" role="3clFbG">
                  <node concept="37vLTw" id="1O8e97NbgHT" role="37vLTJ">
                    <ref role="3cqZAo" node="1O8e97N9fKR" resolve="mostObserved_" />
                  </node>
                  <node concept="1rXfSq" id="1O8e97NbgHU" role="37vLTx">
                    <ref role="37wK5l" node="1O8e97Nmjhg" resolve="formatValue" />
                    <node concept="2OqwBi" id="1O8e97NbgHV" role="37wK5m">
                      <node concept="37vLTw" id="1O8e97NbgHW" role="2Oq$k0">
                        <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                      </node>
                      <node concept="liA8E" id="1O8e97NbgHX" role="2OqNvi">
                        <ref role="37wK5l" to="kag7:~UniverseStatistics.mostObserved()" resolve="mostObserved" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1O8e97NbinD" role="3cqZAp">
                <node concept="37vLTI" id="1O8e97NbinE" role="3clFbG">
                  <node concept="37vLTw" id="1O8e97NbinF" role="37vLTJ">
                    <ref role="3cqZAo" node="1O8e97N9uQB" resolve="mostObservedEver_" />
                  </node>
                  <node concept="1rXfSq" id="1O8e97NbinG" role="37vLTx">
                    <ref role="37wK5l" node="1O8e97NmceL" resolve="formatValue" />
                    <node concept="2OqwBi" id="1O8e97NbinH" role="37wK5m">
                      <node concept="37vLTw" id="1O8e97NbinI" role="2Oq$k0">
                        <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                      </node>
                      <node concept="liA8E" id="1O8e97NbinJ" role="2OqNvi">
                        <ref role="37wK5l" to="kag7:~UniverseStatistics.mostObservedEver()" resolve="mostObservedEver" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1O8e97NbiTw" role="3cqZAp">
                <node concept="37vLTI" id="1O8e97NbiTx" role="3clFbG">
                  <node concept="37vLTw" id="1O8e97NbiTy" role="37vLTJ">
                    <ref role="3cqZAo" node="1O8e97N9v28" resolve="mostObservers_" />
                  </node>
                  <node concept="1rXfSq" id="1O8e97NbiTz" role="37vLTx">
                    <ref role="37wK5l" node="1O8e97Nmjhg" resolve="formatValue" />
                    <node concept="2OqwBi" id="1O8e97NbiT$" role="37wK5m">
                      <node concept="37vLTw" id="1O8e97NbiT_" role="2Oq$k0">
                        <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                      </node>
                      <node concept="liA8E" id="1O8e97NbiTA" role="2OqNvi">
                        <ref role="37wK5l" to="kag7:~UniverseStatistics.mostObservers()" resolve="mostObservers" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1O8e97NbkHE" role="3cqZAp">
                <node concept="37vLTI" id="1O8e97NbkHF" role="3clFbG">
                  <node concept="37vLTw" id="1O8e97NbkHG" role="37vLTJ">
                    <ref role="3cqZAo" node="1O8e97N9vdJ" resolve="mostObserversEver_" />
                  </node>
                  <node concept="1rXfSq" id="1O8e97NbkHH" role="37vLTx">
                    <ref role="37wK5l" node="1O8e97NmceL" resolve="formatValue" />
                    <node concept="2OqwBi" id="1O8e97NbkHI" role="37wK5m">
                      <node concept="37vLTw" id="1O8e97NbkHJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                      </node>
                      <node concept="liA8E" id="1O8e97NbkHK" role="2OqNvi">
                        <ref role="37wK5l" to="kag7:~UniverseStatistics.mostObserversEver()" resolve="mostObserversEver" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1O8e97NcXFh" role="3cqZAp" />
              <node concept="3clFbF" id="1O8e97MSm3H" role="3cqZAp">
                <node concept="2OqwBi" id="1O8e97MTn2a" role="3clFbG">
                  <node concept="37vLTw" id="1O8e97MSm3F" role="2Oq$k0">
                    <ref role="3cqZAo" node="1O8e97MW5Xe" resolve="status" />
                  </node>
                  <node concept="liA8E" id="1O8e97MTqvJ" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DclareForMpsStatus.run(java.lang.Runnable)" resolve="run" />
                    <node concept="1bVj0M" id="1O8e97MTrNz" role="37wK5m">
                      <node concept="3clFbS" id="1O8e97MTrN$" role="1bW5cS">
                        <node concept="3clFbF" id="1O8e97MQjV5" role="3cqZAp">
                          <node concept="37vLTI" id="1O8e97MQlnj" role="3clFbG">
                            <node concept="1rXfSq" id="1O8e97N415v" role="37vLTx">
                              <ref role="37wK5l" node="1O8e97Nmq9i" resolve="calcSNodeOrNull" />
                              <node concept="1bVj0M" id="1O8e97N42by" role="37wK5m">
                                <node concept="3clFbS" id="1O8e97N42bz" role="1bW5cS">
                                  <node concept="3clFbF" id="1O8e97N447l" role="3cqZAp">
                                    <node concept="2OqwBi" id="1O8e97N26rY" role="3clFbG">
                                      <node concept="1eOMI4" id="4RbflAQdDwY" role="2Oq$k0">
                                        <node concept="10QFUN" id="1O8e97N26s0" role="1eOMHV">
                                          <node concept="3uibUv" id="1O8e97N26s1" role="10QFUM">
                                            <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                                          </node>
                                          <node concept="2OqwBi" id="1O8e97N26s2" role="10QFUP">
                                            <node concept="2OwXpG" id="1O8e97N26s3" role="2OqNvi">
                                              <ref role="2Oxat5" to="kag7:~UniverseStatistics$ChampionChangesPerInstance.mutable" resolve="mutable" />
                                            </node>
                                            <node concept="2OqwBi" id="4RbflAQdyap" role="2Oq$k0">
                                              <node concept="37vLTw" id="4RbflAQdyaq" role="2Oq$k0">
                                                <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                                              </node>
                                              <node concept="liA8E" id="4RbflAQdyar" role="2OqNvi">
                                                <ref role="37wK5l" to="kag7:~UniverseStatistics.championChangesPerInstance()" resolve="championChangesPerInstance" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="1O8e97N26s7" role="2OqNvi">
                                        <ref role="37wK5l" to="t4tl:~DNewableObject.tryOriginal()" resolve="tryOriginal" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="1O8e97MQjV3" role="37vLTJ">
                              <ref role="3cqZAo" node="1O8e97MO9NM" resolve="devLine2Ref1" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1O8e97N4ZF2" role="3cqZAp">
                          <node concept="37vLTI" id="1O8e97N4ZF3" role="3clFbG">
                            <node concept="1rXfSq" id="1O8e97N4ZF4" role="37vLTx">
                              <ref role="37wK5l" node="1O8e97Nmq9i" resolve="calcSNodeOrNull" />
                              <node concept="1bVj0M" id="1O8e97N4ZF5" role="37wK5m">
                                <node concept="3clFbS" id="1O8e97N4ZF6" role="1bW5cS">
                                  <node concept="3clFbF" id="1O8e97N4ZF7" role="3cqZAp">
                                    <node concept="2OqwBi" id="1O8e97N4ZF8" role="3clFbG">
                                      <node concept="1eOMI4" id="4RbflAQeNqx" role="2Oq$k0">
                                        <node concept="10QFUN" id="1O8e97N4ZFa" role="1eOMHV">
                                          <node concept="3uibUv" id="1O8e97N4ZFb" role="10QFUM">
                                            <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                                          </node>
                                          <node concept="2OqwBi" id="1O8e97N4ZFc" role="10QFUP">
                                            <node concept="2OwXpG" id="1O8e97N4ZFd" role="2OqNvi">
                                              <ref role="2Oxat5" to="kag7:~UniverseStatistics$ChampionObserved.mutable" resolve="mutable" />
                                            </node>
                                            <node concept="2OqwBi" id="4RbflAQd$64" role="2Oq$k0">
                                              <node concept="37vLTw" id="4RbflAQd$65" role="2Oq$k0">
                                                <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                                              </node>
                                              <node concept="liA8E" id="4RbflAQd$66" role="2OqNvi">
                                                <ref role="37wK5l" to="kag7:~UniverseStatistics.championObserved()" resolve="championObserved" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="1O8e97N4ZFh" role="2OqNvi">
                                        <ref role="37wK5l" to="t4tl:~DNewableObject.tryOriginal()" resolve="tryOriginal" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="1O8e97N4ZFi" role="37vLTJ">
                              <ref role="3cqZAo" node="1O8e97MOfFw" resolve="devLine3Ref1" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1O8e97N4ZAc" role="3cqZAp">
                          <node concept="37vLTI" id="1O8e97N4ZAd" role="3clFbG">
                            <node concept="1rXfSq" id="1O8e97N4ZAe" role="37vLTx">
                              <ref role="37wK5l" node="1O8e97Nmq9i" resolve="calcSNodeOrNull" />
                              <node concept="1bVj0M" id="1O8e97N4ZAf" role="37wK5m">
                                <node concept="3clFbS" id="1O8e97N4ZAg" role="1bW5cS">
                                  <node concept="3clFbF" id="1O8e97N4ZAh" role="3cqZAp">
                                    <node concept="2OqwBi" id="1O8e97N4ZAi" role="3clFbG">
                                      <node concept="1eOMI4" id="4RbflAQeZwT" role="2Oq$k0">
                                        <node concept="10QFUN" id="1O8e97N4ZAk" role="1eOMHV">
                                          <node concept="3uibUv" id="1O8e97N4ZAl" role="10QFUM">
                                            <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                                          </node>
                                          <node concept="2OqwBi" id="1O8e97N4ZAm" role="10QFUP">
                                            <node concept="2OwXpG" id="1O8e97N4ZAn" role="2OqNvi">
                                              <ref role="2Oxat5" to="kag7:~UniverseStatistics$ChampionObserver.mutable" resolve="mutable" />
                                            </node>
                                            <node concept="2OqwBi" id="4RbflAQd_Z4" role="2Oq$k0">
                                              <node concept="37vLTw" id="4RbflAQd_Z5" role="2Oq$k0">
                                                <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                                              </node>
                                              <node concept="liA8E" id="4RbflAQd_Z6" role="2OqNvi">
                                                <ref role="37wK5l" to="kag7:~UniverseStatistics.championObservers()" resolve="championObservers" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="1O8e97N4ZAr" role="2OqNvi">
                                        <ref role="37wK5l" to="t4tl:~DNewableObject.tryOriginal()" resolve="tryOriginal" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="1O8e97N4ZAs" role="37vLTJ">
                              <ref role="3cqZAo" node="1O8e97MOgFv" resolve="devLine4Ref1" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="1O8e97N4Ycr" role="3cqZAp" />
                        <node concept="3clFbF" id="1O8e97MQuGv" role="3cqZAp">
                          <node concept="37vLTI" id="1O8e97MQw9m" role="3clFbG">
                            <node concept="37vLTw" id="1O8e97MQuGt" role="37vLTJ">
                              <ref role="3cqZAo" node="1O8e97MOf6f" resolve="devLine2Ref2" />
                            </node>
                            <node concept="1rXfSq" id="1O8e97N45Ev" role="37vLTx">
                              <ref role="37wK5l" node="1O8e97Nmq9i" resolve="calcSNodeOrNull" />
                              <node concept="1bVj0M" id="1O8e97N45Ew" role="37wK5m">
                                <node concept="3clFbS" id="1O8e97N45Ex" role="1bW5cS">
                                  <node concept="3clFbF" id="1O8e97N45Ey" role="3cqZAp">
                                    <node concept="2OqwBi" id="1O8e97N47ia" role="3clFbG">
                                      <node concept="2OqwBi" id="1O8e97N47ib" role="2Oq$k0">
                                        <node concept="2OqwBi" id="1O8e97N47ic" role="2Oq$k0">
                                          <node concept="1eOMI4" id="4RbflAQdKWq" role="2Oq$k0">
                                            <node concept="10QFUN" id="1O8e97N47ie" role="1eOMHV">
                                              <node concept="3uibUv" id="1O8e97N47if" role="10QFUM">
                                                <ref role="3uigEE" to="t4tl:~DRule$DObserver" resolve="DObserver" />
                                              </node>
                                              <node concept="2OqwBi" id="1O8e97N47ig" role="10QFUP">
                                                <node concept="2OwXpG" id="1O8e97N47ik" role="2OqNvi">
                                                  <ref role="2Oxat5" to="kag7:~UniverseStatistics$ChampionChangesPerInstance.observer" resolve="observer" />
                                                </node>
                                                <node concept="2OqwBi" id="4RbflAQdyat" role="2Oq$k0">
                                                  <node concept="37vLTw" id="4RbflAQdyau" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                                                  </node>
                                                  <node concept="liA8E" id="4RbflAQdyav" role="2OqNvi">
                                                    <ref role="37wK5l" to="kag7:~UniverseStatistics.championChangesPerInstance()" resolve="championChangesPerInstance" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="1O8e97N47il" role="2OqNvi">
                                            <ref role="37wK5l" to="t4tl:~DRule$DObserver.rule()" resolve="rule" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="1O8e97N47im" role="2OqNvi">
                                          <ref role="37wK5l" to="t4tl:~DFeature.getSource()" resolve="getSource" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="1O8e97N47in" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                        <node concept="10Nm6u" id="1O8e97N47io" role="37wK5m" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1O8e97N4ZEG" role="3cqZAp">
                          <node concept="37vLTI" id="1O8e97N4ZEH" role="3clFbG">
                            <node concept="37vLTw" id="1O8e97N4ZEI" role="37vLTJ">
                              <ref role="3cqZAo" node="1O8e97MOg4O" resolve="devLine3Ref2" />
                            </node>
                            <node concept="1rXfSq" id="1O8e97N4ZEJ" role="37vLTx">
                              <ref role="37wK5l" node="1O8e97Nmq9i" resolve="calcSNodeOrNull" />
                              <node concept="1bVj0M" id="1O8e97N4ZEK" role="37wK5m">
                                <node concept="3clFbS" id="1O8e97N4ZEL" role="1bW5cS">
                                  <node concept="3clFbF" id="1O8e97N4ZEM" role="3cqZAp">
                                    <node concept="2OqwBi" id="1O8e97N4ZEN" role="3clFbG">
                                      <node concept="2OqwBi" id="1O8e97N4ZEO" role="2Oq$k0">
                                        <node concept="2OqwBi" id="1O8e97N4ZEP" role="2Oq$k0">
                                          <node concept="1eOMI4" id="4RbflAQeQuU" role="2Oq$k0">
                                            <node concept="10QFUN" id="1O8e97N4ZER" role="1eOMHV">
                                              <node concept="3uibUv" id="1O8e97N4ZES" role="10QFUM">
                                                <ref role="3uigEE" to="t4tl:~DRule$DObserver" resolve="DObserver" />
                                              </node>
                                              <node concept="2OqwBi" id="1O8e97N4ZET" role="10QFUP">
                                                <node concept="2OqwBi" id="4RbflAQd$60" role="2Oq$k0">
                                                  <node concept="37vLTw" id="4RbflAQd$61" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                                                  </node>
                                                  <node concept="liA8E" id="4RbflAQd$62" role="2OqNvi">
                                                    <ref role="37wK5l" to="kag7:~UniverseStatistics.championObserved()" resolve="championObserved" />
                                                  </node>
                                                </node>
                                                <node concept="2OwXpG" id="1O8e97N4ZEX" role="2OqNvi">
                                                  <ref role="2Oxat5" to="kag7:~UniverseStatistics$ChampionObserved.observer" resolve="observer" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="1O8e97N4ZEY" role="2OqNvi">
                                            <ref role="37wK5l" to="t4tl:~DRule$DObserver.rule()" resolve="rule" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="1O8e97N4ZEZ" role="2OqNvi">
                                          <ref role="37wK5l" to="t4tl:~DFeature.getSource()" resolve="getSource" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="1O8e97N4ZF0" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                        <node concept="10Nm6u" id="1O8e97N4ZF1" role="37wK5m" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1O8e97N4Z_Q" role="3cqZAp">
                          <node concept="37vLTI" id="1O8e97N4Z_R" role="3clFbG">
                            <node concept="37vLTw" id="1O8e97N4Z_S" role="37vLTJ">
                              <ref role="3cqZAo" node="1O8e97MOnul" resolve="devLine4Ref2" />
                            </node>
                            <node concept="1rXfSq" id="1O8e97N4Z_T" role="37vLTx">
                              <ref role="37wK5l" node="1O8e97Nmq9i" resolve="calcSNodeOrNull" />
                              <node concept="1bVj0M" id="1O8e97N4Z_U" role="37wK5m">
                                <node concept="3clFbS" id="1O8e97N4Z_V" role="1bW5cS">
                                  <node concept="3clFbF" id="1O8e97N4Z_W" role="3cqZAp">
                                    <node concept="2OqwBi" id="1O8e97N4Z_X" role="3clFbG">
                                      <node concept="2OqwBi" id="1O8e97N4Z_Y" role="2Oq$k0">
                                        <node concept="1eOMI4" id="4RbflAQf2AY" role="2Oq$k0">
                                          <node concept="10QFUN" id="1O8e97N4ZA1" role="1eOMHV">
                                            <node concept="3uibUv" id="1O8e97N4ZA2" role="10QFUM">
                                              <ref role="3uigEE" to="t4tl:~DObserved" resolve="DObserved" />
                                            </node>
                                            <node concept="2OqwBi" id="1O8e97N4ZA3" role="10QFUP">
                                              <node concept="2OwXpG" id="1O8e97N4ZA7" role="2OqNvi">
                                                <ref role="2Oxat5" to="kag7:~UniverseStatistics$ChampionObserver.observed" resolve="observed" />
                                              </node>
                                              <node concept="2OqwBi" id="4RbflAQd_Z0" role="2Oq$k0">
                                                <node concept="37vLTw" id="4RbflAQd_Z1" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                                                </node>
                                                <node concept="liA8E" id="4RbflAQd_Z2" role="2OqNvi">
                                                  <ref role="37wK5l" to="kag7:~UniverseStatistics.championObservers()" resolve="championObservers" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="1O8e97N4ZA9" role="2OqNvi">
                                          <ref role="37wK5l" to="t4tl:~DObserved.getSource()" resolve="getSource" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="1O8e97N4ZAa" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                        <node concept="10Nm6u" id="1O8e97N4ZAb" role="37wK5m" />
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
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97Nechn" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97Necho" role="3cpWs9">
            <property role="TrG5h" value="fmtMain" />
            <node concept="17QB3L" id="1O8e97Ne9zM" role="1tU5fm" />
            <node concept="1rXfSq" id="1O8e97NmMuz" role="33vP2m">
              <ref role="37wK5l" node="1O8e97Nndmj" resolve="maxWidthFmtAndUpdate" />
              <node concept="37vLTw" id="1O8e97Nechq" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9a__" resolve="runCount_" />
              </node>
              <node concept="37vLTw" id="1YYl$fTf3cW" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Njayu" resolve="maxTotalNrOfChanges_" />
              </node>
              <node concept="37vLTw" id="1YYl$fTf3cX" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9eoR" resolve="maxNrOfChanges_" />
              </node>
              <node concept="37vLTw" id="1YYl$fTf3cY" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9ezy" resolve="maxNrOfObserved_" />
              </node>
              <node concept="37vLTw" id="1YYl$fTf3cZ" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9eIj" resolve="maxNrOfObservers_" />
              </node>
              <node concept="37vLTw" id="1O8e97Nechu" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9eTa" resolve="totalChanges_" />
              </node>
              <node concept="37vLTw" id="1O8e97Nechv" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9f47" resolve="totalChangesEver_" />
              </node>
              <node concept="37vLTw" id="1O8e97Nechw" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9ffa" resolve="mostTotalChangesEver_" />
              </node>
              <node concept="37vLTw" id="1O8e97Nechx" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9fqj" resolve="mostChangesPerInstance_" />
              </node>
              <node concept="37vLTw" id="1O8e97Nechy" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9f_y" resolve="mostChangesPerInstanceEver_" />
              </node>
              <node concept="37vLTw" id="1O8e97Nechz" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9fKR" resolve="mostObserved_" />
              </node>
              <node concept="37vLTw" id="1O8e97Nech$" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9uQB" resolve="mostObservedEver_" />
              </node>
              <node concept="37vLTw" id="1O8e97Nech_" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9v28" resolve="mostObservers_" />
              </node>
              <node concept="37vLTw" id="1O8e97NechA" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9vdJ" resolve="mostObserversEver_" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8e97MOZLT" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97MP3gq" role="3clFbG">
            <node concept="37vLTw" id="1O8e97MOZLR" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97MO4Qq" resolve="mainLineNumbers" />
            </node>
            <node concept="1rXfSq" id="1O8e97NmT8J" role="37vLTx">
              <ref role="37wK5l" node="1O8e97Nm6Me" resolve="reformatLine" />
              <node concept="37vLTw" id="1O8e97Nk1N7" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Necho" resolve="fmtMain" />
              </node>
              <node concept="37vLTw" id="1O8e97Nk59v" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9a__" resolve="runCount_" />
              </node>
              <node concept="37vLTw" id="1O8e97Nkd4P" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9eTa" resolve="totalChanges_" />
              </node>
              <node concept="37vLTw" id="1O8e97NkhJd" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9f47" resolve="totalChangesEver_" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8e97MPTwz" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97MPVog" role="3clFbG">
            <node concept="1rXfSq" id="1O8e97MPYX6" role="37vLTx">
              <ref role="37wK5l" node="1O8e97Nm6Me" resolve="reformatLine" />
              <node concept="37vLTw" id="1O8e97NkpMz" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Necho" resolve="fmtMain" />
              </node>
              <node concept="37vLTw" id="1O8e97NkwkY" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9eTa" resolve="totalChanges_" />
              </node>
              <node concept="37vLTw" id="1O8e97NkNl0" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9ffa" resolve="mostTotalChangesEver_" />
              </node>
            </node>
            <node concept="37vLTw" id="1O8e97MPTwx" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97MO9fV" resolve="devLine1Numbers" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8e97MQ8o$" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97MQ9_B" role="3clFbG">
            <node concept="1rXfSq" id="1O8e97MQ_9b" role="37vLTx">
              <ref role="37wK5l" node="1O8e97Nm6Me" resolve="reformatLine" />
              <node concept="37vLTw" id="1O8e97NkqQL" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Necho" resolve="fmtMain" />
              </node>
              <node concept="37vLTw" id="1O8e97NkAng" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9fqj" resolve="mostChangesPerInstance_" />
              </node>
              <node concept="37vLTw" id="1O8e97NkQue" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9f_y" resolve="mostChangesPerInstanceEver_" />
              </node>
            </node>
            <node concept="37vLTw" id="1O8e97MQ8oy" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97MO9rM" resolve="devLine2Numbers" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8e97N4toN" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97N4toO" role="3clFbG">
            <node concept="1rXfSq" id="1O8e97N4toP" role="37vLTx">
              <ref role="37wK5l" node="1O8e97Nm6Me" resolve="reformatLine" />
              <node concept="37vLTw" id="1O8e97NkrSH" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Necho" resolve="fmtMain" />
              </node>
              <node concept="37vLTw" id="1O8e97NkEKQ" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9fKR" resolve="mostObserved_" />
              </node>
              <node concept="37vLTw" id="1O8e97NkTHW" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9uQB" resolve="mostObservedEver_" />
              </node>
            </node>
            <node concept="37vLTw" id="1O8e97N4toQ" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97MOfi$" resolve="devLine3Numbers" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8e97N4ttz" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97N4tt$" role="3clFbG">
            <node concept="1rXfSq" id="1O8e97N4tt_" role="37vLTx">
              <ref role="37wK5l" node="1O8e97Nm6Me" resolve="reformatLine" />
              <node concept="37vLTw" id="1O8e97NktcC" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Necho" resolve="fmtMain" />
              </node>
              <node concept="37vLTw" id="1O8e97NkJ5c" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9v28" resolve="mostObservers_" />
              </node>
              <node concept="37vLTw" id="1O8e97NkWFC" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9vdJ" resolve="mostObserversEver_" />
              </node>
            </node>
            <node concept="37vLTw" id="1O8e97N4ttA" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97MOghB" resolve="devLine4Numbers" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1O8e97NgL$m" role="3cqZAp" />
        <node concept="3clFbF" id="1O8e97NgSUT" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97NgSUU" role="3clFbG">
            <node concept="37vLTw" id="1O8e97NgSUV" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97MNsEO" resolve="maxTotalNrOfChanges" />
            </node>
            <node concept="1rXfSq" id="1O8e97NgSUW" role="37vLTx">
              <ref role="37wK5l" node="1O8e97NlZFA" resolve="reformatValue" />
              <node concept="37vLTw" id="1O8e97No44q" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Necho" resolve="fmtMain" />
              </node>
              <node concept="37vLTw" id="1O8e97No0ZU" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Njayu" resolve="maxTotalNrOfChanges_" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8e97NgSV0" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97NgSV1" role="3clFbG">
            <node concept="37vLTw" id="1O8e97NgSV2" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97MNhGq" resolve="maxNrOfChanges" />
            </node>
            <node concept="1rXfSq" id="1O8e97NgSV3" role="37vLTx">
              <ref role="37wK5l" node="1O8e97NlZFA" resolve="reformatValue" />
              <node concept="37vLTw" id="1O8e97Noa07" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Necho" resolve="fmtMain" />
              </node>
              <node concept="37vLTw" id="1O8e97Nofxb" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9eoR" resolve="maxNrOfChanges_" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8e97NgSV7" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97NgSV8" role="3clFbG">
            <node concept="37vLTw" id="1O8e97NgSV9" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97MNhQh" resolve="maxNrOfObserved" />
            </node>
            <node concept="1rXfSq" id="1O8e97NgSVa" role="37vLTx">
              <ref role="37wK5l" node="1O8e97NlZFA" resolve="reformatValue" />
              <node concept="37vLTw" id="1O8e97Nob2w" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Necho" resolve="fmtMain" />
              </node>
              <node concept="37vLTw" id="1O8e97NojsD" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9ezy" resolve="maxNrOfObserved_" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8e97NgSVe" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97NgSVf" role="3clFbG">
            <node concept="37vLTw" id="1O8e97NgSVg" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97MNi0e" resolve="maxNrOfObservers" />
            </node>
            <node concept="1rXfSq" id="1O8e97NgSVh" role="37vLTx">
              <ref role="37wK5l" node="1O8e97NlZFA" resolve="reformatValue" />
              <node concept="37vLTw" id="1O8e97NoclC" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Necho" resolve="fmtMain" />
              </node>
              <node concept="37vLTw" id="1O8e97NolSs" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97N9eIj" resolve="maxNrOfObservers_" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1O8e97NgPQc" role="3cqZAp" />
        <node concept="3cpWs8" id="4RbflAQq2hW" role="3cqZAp">
          <node concept="3cpWsn" id="4RbflAQq2hZ" role="3cpWs9">
            <property role="TrG5h" value="text1" />
            <node concept="10Q1$e" id="4RbflAQq3Y2" role="1tU5fm">
              <node concept="17QB3L" id="4RbflAQq2hU" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="4RbflAQq9Pw" role="33vP2m">
              <node concept="3$_iS1" id="4RbflAQqfhV" role="2ShVmc">
                <node concept="3$GHV9" id="4RbflAQqfhX" role="3$GQph">
                  <node concept="3cmrfG" id="4RbflAQqgRT" role="3$I4v7">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
                <node concept="17QB3L" id="4RbflAQqfeO" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4RbflAQqEpK" role="3cqZAp">
          <node concept="3cpWsn" id="4RbflAQqEpL" role="3cpWs9">
            <property role="TrG5h" value="text2" />
            <node concept="10Q1$e" id="4RbflAQqEpM" role="1tU5fm">
              <node concept="17QB3L" id="4RbflAQqEpN" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="4RbflAQqEpO" role="33vP2m">
              <node concept="3$_iS1" id="4RbflAQqEpP" role="2ShVmc">
                <node concept="3$GHV9" id="4RbflAQqEpQ" role="3$GQph">
                  <node concept="3cmrfG" id="4RbflAQqEpR" role="3$I4v7">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
                <node concept="17QB3L" id="4RbflAQqEpS" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4RbflAQqkWL" role="3cqZAp">
          <node concept="2OqwBi" id="4RbflAQqnxc" role="3clFbG">
            <node concept="37vLTw" id="4RbflAQqkWJ" role="2Oq$k0">
              <ref role="3cqZAo" node="1O8e97MW5Xe" resolve="status" />
            </node>
            <node concept="liA8E" id="4RbflAQqpbI" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DclareForMpsStatus.run(java.lang.Runnable)" resolve="run" />
              <node concept="1bVj0M" id="4RbflAQqqR4" role="37wK5m">
                <node concept="3clFbS" id="4RbflAQqqR5" role="1bW5cS">
                  <node concept="3clFbF" id="4RbflAQqxuk" role="3cqZAp">
                    <node concept="37vLTI" id="4RbflAQqAUI" role="3clFbG">
                      <node concept="AH0OO" id="4RbflAQqzie" role="37vLTJ">
                        <node concept="3cmrfG" id="4RbflAQq$Zp" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="4RbflAQqxui" role="AHHXb">
                          <ref role="3cqZAo" node="4RbflAQq2hZ" resolve="text1" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="4RbflAQqCCD" role="37vLTx">
                        <ref role="37wK5l" node="4RbflAQgiJQ" resolve="calcToStringOrBlank" />
                        <node concept="37vLTw" id="4RbflAQqCCE" role="37wK5m">
                          <ref role="3cqZAo" node="1O8e97MO9NM" resolve="devLine2Ref1" />
                        </node>
                        <node concept="1bVj0M" id="4RbflAQqCCF" role="37wK5m">
                          <node concept="3clFbS" id="4RbflAQqCCG" role="1bW5cS">
                            <node concept="3clFbF" id="4RbflAQqCCH" role="3cqZAp">
                              <node concept="2OqwBi" id="4RbflAQqCCI" role="3clFbG">
                                <node concept="2OwXpG" id="4RbflAQqCCJ" role="2OqNvi">
                                  <ref role="2Oxat5" to="kag7:~UniverseStatistics$ChampionChangesPerInstance.mutable" resolve="mutable" />
                                </node>
                                <node concept="2OqwBi" id="4RbflAQqCCK" role="2Oq$k0">
                                  <node concept="37vLTw" id="4RbflAQqCCL" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                                  </node>
                                  <node concept="liA8E" id="4RbflAQqCCM" role="2OqNvi">
                                    <ref role="37wK5l" to="kag7:~UniverseStatistics.championChangesPerInstance()" resolve="championChangesPerInstance" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4RbflAQqIws" role="3cqZAp">
                    <node concept="37vLTI" id="4RbflAQqIwt" role="3clFbG">
                      <node concept="AH0OO" id="4RbflAQqIwu" role="37vLTJ">
                        <node concept="3cmrfG" id="4RbflAQqIwv" role="AHEQo">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="4RbflAQqIww" role="AHHXb">
                          <ref role="3cqZAo" node="4RbflAQq2hZ" resolve="text1" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="4RbflAQqMdm" role="37vLTx">
                        <ref role="37wK5l" node="4RbflAQgiJQ" resolve="calcToStringOrBlank" />
                        <node concept="37vLTw" id="4RbflAQqMdn" role="37wK5m">
                          <ref role="3cqZAo" node="1O8e97MOfFw" resolve="devLine3Ref1" />
                        </node>
                        <node concept="1bVj0M" id="4RbflAQqMdo" role="37wK5m">
                          <node concept="3clFbS" id="4RbflAQqMdp" role="1bW5cS">
                            <node concept="3clFbF" id="4RbflAQqMdq" role="3cqZAp">
                              <node concept="2OqwBi" id="4RbflAQqMdr" role="3clFbG">
                                <node concept="2OwXpG" id="4RbflAQqMds" role="2OqNvi">
                                  <ref role="2Oxat5" to="kag7:~UniverseStatistics$ChampionObserved.mutable" resolve="mutable" />
                                </node>
                                <node concept="2OqwBi" id="4RbflAQqMdt" role="2Oq$k0">
                                  <node concept="37vLTw" id="4RbflAQqMdu" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                                  </node>
                                  <node concept="liA8E" id="4RbflAQqMdv" role="2OqNvi">
                                    <ref role="37wK5l" to="kag7:~UniverseStatistics.championObserved()" resolve="championObserved" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4RbflAQqKgk" role="3cqZAp">
                    <node concept="37vLTI" id="4RbflAQqKgl" role="3clFbG">
                      <node concept="AH0OO" id="4RbflAQqKgm" role="37vLTJ">
                        <node concept="3cmrfG" id="4RbflAQqKgn" role="AHEQo">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="37vLTw" id="4RbflAQqKgo" role="AHHXb">
                          <ref role="3cqZAo" node="4RbflAQq2hZ" resolve="text1" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="4RbflAQqO2X" role="37vLTx">
                        <ref role="37wK5l" node="4RbflAQgiJQ" resolve="calcToStringOrBlank" />
                        <node concept="37vLTw" id="4RbflAQqO2Y" role="37wK5m">
                          <ref role="3cqZAo" node="1O8e97MOgFv" resolve="devLine4Ref1" />
                        </node>
                        <node concept="1bVj0M" id="4RbflAQqO2Z" role="37wK5m">
                          <node concept="3clFbS" id="4RbflAQqO30" role="1bW5cS">
                            <node concept="3clFbF" id="4RbflAQqO31" role="3cqZAp">
                              <node concept="2OqwBi" id="4RbflAQqO32" role="3clFbG">
                                <node concept="2OwXpG" id="4RbflAQqO33" role="2OqNvi">
                                  <ref role="2Oxat5" to="kag7:~UniverseStatistics$ChampionObserver.mutable" resolve="mutable" />
                                </node>
                                <node concept="2OqwBi" id="4RbflAQqO34" role="2Oq$k0">
                                  <node concept="37vLTw" id="4RbflAQqO35" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                                  </node>
                                  <node concept="liA8E" id="4RbflAQqO36" role="2OqNvi">
                                    <ref role="37wK5l" to="kag7:~UniverseStatistics.championObservers()" resolve="championObservers" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4RbflAQqu1D" role="3cqZAp" />
                  <node concept="3clFbF" id="4RbflAQqWGq" role="3cqZAp">
                    <node concept="37vLTI" id="4RbflAQqWGr" role="3clFbG">
                      <node concept="AH0OO" id="4RbflAQqWGs" role="37vLTJ">
                        <node concept="3cmrfG" id="4RbflAQqWGt" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="4RbflAQqWGu" role="AHHXb">
                          <ref role="3cqZAo" node="4RbflAQqEpL" resolve="text2" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="4RbflAQr6eR" role="37vLTx">
                        <ref role="37wK5l" node="4RbflAQgiJQ" resolve="calcToStringOrBlank" />
                        <node concept="37vLTw" id="4RbflAQr6eS" role="37wK5m">
                          <ref role="3cqZAo" node="1O8e97MOf6f" resolve="devLine2Ref2" />
                        </node>
                        <node concept="1bVj0M" id="4RbflAQr6eT" role="37wK5m">
                          <node concept="3clFbS" id="4RbflAQr6eU" role="1bW5cS">
                            <node concept="3clFbF" id="4RbflAQr6eV" role="3cqZAp">
                              <node concept="2OqwBi" id="4RbflAQr6eW" role="3clFbG">
                                <node concept="2OwXpG" id="4RbflAQr6eX" role="2OqNvi">
                                  <ref role="2Oxat5" to="kag7:~UniverseStatistics$ChampionChangesPerInstance.observer" resolve="observer" />
                                </node>
                                <node concept="2OqwBi" id="4RbflAQr6eY" role="2Oq$k0">
                                  <node concept="37vLTw" id="4RbflAQr6eZ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                                  </node>
                                  <node concept="liA8E" id="4RbflAQr6f0" role="2OqNvi">
                                    <ref role="37wK5l" to="kag7:~UniverseStatistics.championChangesPerInstance()" resolve="championChangesPerInstance" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4RbflAQqWGb" role="3cqZAp">
                    <node concept="37vLTI" id="4RbflAQqWGc" role="3clFbG">
                      <node concept="AH0OO" id="4RbflAQqWGd" role="37vLTJ">
                        <node concept="3cmrfG" id="4RbflAQqWGe" role="AHEQo">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="4RbflAQqWGf" role="AHHXb">
                          <ref role="3cqZAo" node="4RbflAQqEpL" resolve="text2" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="4RbflAQr8kj" role="37vLTx">
                        <ref role="37wK5l" node="4RbflAQgiJQ" resolve="calcToStringOrBlank" />
                        <node concept="37vLTw" id="4RbflAQr8kk" role="37wK5m">
                          <ref role="3cqZAo" node="1O8e97MOg4O" resolve="devLine3Ref2" />
                        </node>
                        <node concept="1bVj0M" id="4RbflAQr8kl" role="37wK5m">
                          <node concept="3clFbS" id="4RbflAQr8km" role="1bW5cS">
                            <node concept="3clFbF" id="4RbflAQr8kn" role="3cqZAp">
                              <node concept="2OqwBi" id="4RbflAQr8ko" role="3clFbG">
                                <node concept="2OwXpG" id="4RbflAQr8kp" role="2OqNvi">
                                  <ref role="2Oxat5" to="kag7:~UniverseStatistics$ChampionObserved.observer" resolve="observer" />
                                </node>
                                <node concept="2OqwBi" id="4RbflAQr8kq" role="2Oq$k0">
                                  <node concept="37vLTw" id="4RbflAQr8kr" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                                  </node>
                                  <node concept="liA8E" id="4RbflAQr8ks" role="2OqNvi">
                                    <ref role="37wK5l" to="kag7:~UniverseStatistics.championObserved()" resolve="championObserved" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4RbflAQqWFW" role="3cqZAp">
                    <node concept="37vLTI" id="4RbflAQqWFX" role="3clFbG">
                      <node concept="AH0OO" id="4RbflAQqWFY" role="37vLTJ">
                        <node concept="3cmrfG" id="4RbflAQqWFZ" role="AHEQo">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="37vLTw" id="4RbflAQqWG0" role="AHHXb">
                          <ref role="3cqZAo" node="4RbflAQqEpL" resolve="text2" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="4RbflAQrahF" role="37vLTx">
                        <ref role="37wK5l" node="4RbflAQgiJQ" resolve="calcToStringOrBlank" />
                        <node concept="37vLTw" id="4RbflAQrahG" role="37wK5m">
                          <ref role="3cqZAo" node="1O8e97MOnul" resolve="devLine4Ref2" />
                        </node>
                        <node concept="1bVj0M" id="4RbflAQrahH" role="37wK5m">
                          <node concept="3clFbS" id="4RbflAQrahI" role="1bW5cS">
                            <node concept="3clFbF" id="4RbflAQrahJ" role="3cqZAp">
                              <node concept="2OqwBi" id="4RbflAQrahK" role="3clFbG">
                                <node concept="2OwXpG" id="4RbflAQrahL" role="2OqNvi">
                                  <ref role="2Oxat5" to="kag7:~UniverseStatistics$ChampionObserver.observed" resolve="observed" />
                                </node>
                                <node concept="2OqwBi" id="4RbflAQrahM" role="2Oq$k0">
                                  <node concept="37vLTw" id="4RbflAQrahN" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1O8e97MW5Xg" resolve="stats" />
                                  </node>
                                  <node concept="liA8E" id="4RbflAQrahO" role="2OqNvi">
                                    <ref role="37wK5l" to="kag7:~UniverseStatistics.championObservers()" resolve="championObservers" />
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
          </node>
        </node>
        <node concept="3cpWs8" id="1O8e97NpS_1" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97NpS_4" role="3cpWs9">
            <property role="TrG5h" value="fmt1" />
            <node concept="17QB3L" id="1O8e97NpS$Z" role="1tU5fm" />
            <node concept="1rXfSq" id="1O8e97Nqiwp" role="33vP2m">
              <ref role="37wK5l" node="1YYl$fTaIjx" resolve="maxWidthFmtLeft" />
              <node concept="AH0OO" id="4RbflAQriAR" role="37wK5m">
                <node concept="3cmrfG" id="4RbflAQrkY2" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="1O8e97NqoAi" role="AHHXb">
                  <ref role="3cqZAo" node="4RbflAQq2hZ" resolve="text1" />
                </node>
              </node>
              <node concept="AH0OO" id="4RbflAQrngd" role="37wK5m">
                <node concept="3cmrfG" id="4RbflAQrnge" role="AHEQo">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="4RbflAQrngf" role="AHHXb">
                  <ref role="3cqZAo" node="4RbflAQq2hZ" resolve="text1" />
                </node>
              </node>
              <node concept="AH0OO" id="4RbflAQrpv8" role="37wK5m">
                <node concept="3cmrfG" id="4RbflAQrpv9" role="AHEQo">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="4RbflAQrpva" role="AHHXb">
                  <ref role="3cqZAo" node="4RbflAQq2hZ" resolve="text1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8e97NriaX" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97NriaY" role="3clFbG">
            <node concept="37vLTw" id="1O8e97NriaZ" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97MO9BJ" resolve="devLine2Text1" />
            </node>
            <node concept="1rXfSq" id="1O8e97Nrib0" role="37vLTx">
              <ref role="37wK5l" node="1O8e97NlZFA" resolve="reformatValue" />
              <node concept="37vLTw" id="1O8e97Nrib1" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97NpS_4" resolve="fmt1" />
              </node>
              <node concept="AH0OO" id="4RbflAQrrIM" role="37wK5m">
                <node concept="3cmrfG" id="4RbflAQrrIN" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="4RbflAQrrIO" role="AHHXb">
                  <ref role="3cqZAo" node="4RbflAQq2hZ" resolve="text1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8e97NriaR" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97NriaS" role="3clFbG">
            <node concept="37vLTw" id="1O8e97NriaT" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97MOfuZ" resolve="devLine3Text1" />
            </node>
            <node concept="1rXfSq" id="1O8e97NriaU" role="37vLTx">
              <ref role="37wK5l" node="1O8e97NlZFA" resolve="reformatValue" />
              <node concept="37vLTw" id="1O8e97NriaV" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97NpS_4" resolve="fmt1" />
              </node>
              <node concept="AH0OO" id="4RbflAQrtQ0" role="37wK5m">
                <node concept="3cmrfG" id="4RbflAQrtQ1" role="AHEQo">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="4RbflAQrtQ2" role="AHHXb">
                  <ref role="3cqZAo" node="4RbflAQq2hZ" resolve="text1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8e97NriaL" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97NriaM" role="3clFbG">
            <node concept="37vLTw" id="1O8e97NriaN" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97MOguw" resolve="devLine4Text1" />
            </node>
            <node concept="1rXfSq" id="1O8e97NriaO" role="37vLTx">
              <ref role="37wK5l" node="1O8e97NlZFA" resolve="reformatValue" />
              <node concept="37vLTw" id="1O8e97NriaP" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97NpS_4" resolve="fmt1" />
              </node>
              <node concept="AH0OO" id="4RbflAQrvTM" role="37wK5m">
                <node concept="3cmrfG" id="4RbflAQrvTN" role="AHEQo">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="4RbflAQrvTO" role="AHHXb">
                  <ref role="3cqZAo" node="4RbflAQq2hZ" resolve="text1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1O8e97NpMl0" role="3cqZAp" />
        <node concept="3cpWs8" id="1O8e97Nr1NH" role="3cqZAp">
          <node concept="3cpWsn" id="1O8e97Nr1NI" role="3cpWs9">
            <property role="TrG5h" value="fmt2" />
            <node concept="17QB3L" id="1O8e97Nr1NJ" role="1tU5fm" />
            <node concept="1rXfSq" id="1O8e97Nr1NK" role="33vP2m">
              <ref role="37wK5l" node="1YYl$fTaIjx" resolve="maxWidthFmtLeft" />
              <node concept="AH0OO" id="4RbflAQrKyC" role="37wK5m">
                <node concept="3cmrfG" id="4RbflAQrKyD" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="4RbflAQrKyE" role="AHHXb">
                  <ref role="3cqZAo" node="4RbflAQqEpL" resolve="text2" />
                </node>
              </node>
              <node concept="AH0OO" id="4RbflAQrKyF" role="37wK5m">
                <node concept="3cmrfG" id="4RbflAQrKyG" role="AHEQo">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="4RbflAQrKyH" role="AHHXb">
                  <ref role="3cqZAo" node="4RbflAQqEpL" resolve="text2" />
                </node>
              </node>
              <node concept="AH0OO" id="4RbflAQrKyI" role="37wK5m">
                <node concept="3cmrfG" id="4RbflAQrKyJ" role="AHEQo">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="4RbflAQrKyK" role="AHHXb">
                  <ref role="3cqZAo" node="4RbflAQqEpL" resolve="text2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8e97N1I2f" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97N1I2g" role="3clFbG">
            <node concept="37vLTw" id="1O8e97N1I2h" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97MOeU0" resolve="devLine2Text2" />
            </node>
            <node concept="1rXfSq" id="1O8e97NqGPN" role="37vLTx">
              <ref role="37wK5l" node="1O8e97NlZFA" resolve="reformatValue" />
              <node concept="37vLTw" id="1O8e97NqIu8" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Nr1NI" resolve="fmt2" />
              </node>
              <node concept="AH0OO" id="4RbflAQrS3Z" role="37wK5m">
                <node concept="3cmrfG" id="4RbflAQrS40" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="4RbflAQrS41" role="AHHXb">
                  <ref role="3cqZAo" node="4RbflAQqEpL" resolve="text2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8e97N4ZEx" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97N4ZEy" role="3clFbG">
            <node concept="37vLTw" id="1O8e97N4ZEz" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97MOfS7" resolve="devLine3Text2" />
            </node>
            <node concept="1rXfSq" id="1O8e97NqNkU" role="37vLTx">
              <ref role="37wK5l" node="1O8e97NlZFA" resolve="reformatValue" />
              <node concept="37vLTw" id="1O8e97NqNkV" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Nr1NI" resolve="fmt2" />
              </node>
              <node concept="AH0OO" id="4RbflAQrTQL" role="37wK5m">
                <node concept="3cmrfG" id="4RbflAQrTQM" role="AHEQo">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="4RbflAQrTQN" role="AHHXb">
                  <ref role="3cqZAo" node="4RbflAQqEpL" resolve="text2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8e97N4Z_F" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97N4Z_G" role="3clFbG">
            <node concept="37vLTw" id="1O8e97N4Z_H" role="37vLTJ">
              <ref role="3cqZAo" node="1O8e97MOnha" resolve="devLine4Text2" />
            </node>
            <node concept="1rXfSq" id="1O8e97NqRpA" role="37vLTx">
              <ref role="37wK5l" node="1O8e97NlZFA" resolve="reformatValue" />
              <node concept="37vLTw" id="1O8e97NqRpB" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Nr1NI" resolve="fmt2" />
              </node>
              <node concept="AH0OO" id="4RbflAQrVA7" role="37wK5m">
                <node concept="3cmrfG" id="4RbflAQrVA8" role="AHEQo">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="4RbflAQrVA9" role="AHHXb">
                  <ref role="3cqZAo" node="4RbflAQqEpL" resolve="text2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1O8e97MW5Xe" role="3clF46">
        <property role="TrG5h" value="status" />
        <node concept="3uibUv" id="1O8e97MW5Xf" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DclareForMpsStatus" resolve="DclareForMpsStatus" />
        </node>
      </node>
      <node concept="37vLTG" id="1O8e97MW5Xg" role="3clF46">
        <property role="TrG5h" value="stats" />
        <node concept="3uibUv" id="1O8e97MW5Xh" role="1tU5fm">
          <ref role="3uigEE" to="kag7:~UniverseStatistics" resolve="UniverseStatistics" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8e97NtOYF" role="jymVt" />
    <node concept="3clFb_" id="1O8e97NtXp9" role="jymVt">
      <property role="TrG5h" value="getStats" />
      <node concept="3uibUv" id="1O8e97Nu7cV" role="3clF45">
        <ref role="3uigEE" to="kag7:~UniverseStatistics" resolve="UniverseStatistics" />
      </node>
      <node concept="3Tm1VV" id="1O8e97NtXpc" role="1B3o_S" />
      <node concept="3clFbS" id="1O8e97NtXpd" role="3clF47">
        <node concept="3cpWs6" id="1O8e97Nuabn" role="3cqZAp">
          <node concept="2OqwBi" id="1O8e97Nugdg" role="3cqZAk">
            <node concept="37vLTw" id="1O8e97Nud84" role="2Oq$k0">
              <ref role="3cqZAo" node="1O8e97ML9PB" resolve="weakStats" />
            </node>
            <node concept="liA8E" id="1O8e97Nuj0i" role="2OqNvi">
              <ref role="37wK5l" to="mpcv:~Reference.get()" resolve="get" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8e97MO0Ab" role="jymVt" />
    <node concept="2YIFZL" id="1O8e97Nmq9i" role="jymVt">
      <property role="TrG5h" value="calcSNodeOrNull" />
      <node concept="3clFbS" id="1O8e97N1Kmw" role="3clF47">
        <node concept="3J1_TO" id="1O8e97N2b0F" role="3cqZAp">
          <node concept="3uVAMA" id="1O8e97N2N5L" role="1zxBo5">
            <node concept="XOnhg" id="1O8e97N2N5M" role="1zc67B">
              <property role="TrG5h" value="t" />
              <node concept="nSUau" id="1O8e97N2N5N" role="1tU5fm">
                <node concept="3uibUv" id="1O8e97N2PqX" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1O8e97N2N5O" role="1zc67A">
              <node concept="3cpWs6" id="1O8e97N2T4M" role="3cqZAp">
                <node concept="10Nm6u" id="1O8e97N3BzG" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1O8e97N2b0G" role="1zxBo7">
            <node concept="3cpWs6" id="1O8e97N2s7r" role="3cqZAp">
              <node concept="2OqwBi" id="1O8e97N2Z0O" role="3cqZAk">
                <node concept="37vLTw" id="1O8e97N2Z0P" role="2Oq$k0">
                  <ref role="3cqZAo" node="1O8e97N213j" resolve="f" />
                </node>
                <node concept="1Bd96e" id="1O8e97N2Z0Q" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1O8e97N213j" role="3clF46">
        <property role="TrG5h" value="f" />
        <node concept="1ajhzC" id="1O8e97N24fi" role="1tU5fm">
          <node concept="3uibUv" id="1O8e97N27KF" role="1ajl9A">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1O8e97N3i5e" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="1O8e97N1Kmv" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="4RbflAQgiJQ" role="jymVt">
      <property role="TrG5h" value="calcToStringOrBlank" />
      <node concept="17QB3L" id="4RbflAQglpI" role="3clF45" />
      <node concept="3Tm1VV" id="4RbflAQgiJT" role="1B3o_S" />
      <node concept="3clFbS" id="4RbflAQgiJU" role="3clF47">
        <node concept="3J1_TO" id="4RbflAQhg9M" role="3cqZAp">
          <node concept="3uVAMA" id="4RbflAQhg9N" role="1zxBo5">
            <node concept="XOnhg" id="4RbflAQhg9O" role="1zc67B">
              <property role="TrG5h" value="t" />
              <node concept="nSUau" id="4RbflAQhg9P" role="1tU5fm">
                <node concept="3uibUv" id="4RbflAQhg9Q" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4RbflAQhg9R" role="1zc67A">
              <node concept="3cpWs6" id="4RbflAQhg9S" role="3cqZAp">
                <node concept="Xl_RD" id="4RbflAQsGaS" role="3cqZAk">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4RbflAQhg9U" role="1zxBo7">
            <node concept="3clFbJ" id="4RbflAQjHKN" role="3cqZAp">
              <node concept="3y3z36" id="4RbflAQgXCJ" role="3clFbw">
                <node concept="10Nm6u" id="4RbflAQgZs$" role="3uHU7w" />
                <node concept="37vLTw" id="4RbflAQh4rj" role="3uHU7B">
                  <ref role="3cqZAo" node="4RbflAQguza" resolve="o" />
                </node>
              </node>
              <node concept="3clFbS" id="4RbflAQjHKQ" role="3clFbx">
                <node concept="3cpWs6" id="4RbflAQjZY3" role="3cqZAp">
                  <node concept="3cpWs3" id="4RbflAQsQzn" role="3cqZAk">
                    <node concept="Xl_RD" id="4RbflAQsQzo" role="3uHU7w">
                      <property role="Xl_RC" value="]" />
                    </node>
                    <node concept="3cpWs3" id="4RbflAQsQzp" role="3uHU7B">
                      <node concept="3cpWs3" id="4RbflAQsQzq" role="3uHU7B">
                        <node concept="1eOMI4" id="4RbflAQtGrq" role="3uHU7B">
                          <node concept="3K4zz7" id="4RbflAQtIPW" role="1eOMHV">
                            <node concept="3clFbC" id="4RbflAQtPef" role="3K4Cdx">
                              <node concept="2OqwBi" id="4RbflAQtN8D" role="3uHU7B">
                                <node concept="37vLTw" id="4RbflAQtN8E" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4RbflAQguza" resolve="o1" />
                                </node>
                                <node concept="liA8E" id="4RbflAQtN8F" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                </node>
                              </node>
                              <node concept="10Nm6u" id="4RbflAQtN8C" role="3uHU7w" />
                            </node>
                            <node concept="2OqwBi" id="4RbflAQtRjS" role="3K4E3e">
                              <node concept="37vLTw" id="4RbflAQtRjT" role="2Oq$k0">
                                <ref role="3cqZAo" node="4RbflAQguza" resolve="o1" />
                              </node>
                              <node concept="liA8E" id="4RbflAQtRjU" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4RbflAQu65u" role="3K4GZi">
                              <node concept="37vLTw" id="4RbflAQu65v" role="2Oq$k0">
                                <ref role="3cqZAo" node="4RbflAQguza" resolve="o1" />
                              </node>
                              <node concept="liA8E" id="4RbflAQu65w" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="4RbflAQsQzz" role="3uHU7w">
                          <property role="Xl_RC" value=" [" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4RbflAQvcbR" role="3uHU7w">
                        <node concept="2OqwBi" id="4RbflAQv7BZ" role="2Oq$k0">
                          <node concept="37vLTw" id="4RbflAQv5lr" role="2Oq$k0">
                            <ref role="3cqZAo" node="4RbflAQguza" resolve="o1" />
                          </node>
                          <node concept="liA8E" id="4RbflAQv9RF" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4RbflAQverx" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="4RbflAQjHKC" role="9aQIa">
                <node concept="3clFbS" id="4RbflAQjHKE" role="9aQI4">
                  <node concept="3cpWs8" id="4RbflAQkhkL" role="3cqZAp">
                    <node concept="3cpWsn" id="4RbflAQkhkM" role="3cpWs9">
                      <property role="TrG5h" value="o2" />
                      <node concept="3uibUv" id="4RbflAQjIFm" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="2OqwBi" id="4RbflAQkhkN" role="33vP2m">
                        <node concept="37vLTw" id="4RbflAQkhkO" role="2Oq$k0">
                          <ref role="3cqZAo" node="4RbflAQgx5O" resolve="f" />
                        </node>
                        <node concept="1Bd96e" id="4RbflAQkhkP" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4RbflAQkIqd" role="3cqZAp">
                    <property role="TyiWK" value="true" />
                    <node concept="3eNFk2" id="4RbflAQvnmT" role="3eNLev">
                      <node concept="2ZW3vV" id="4RbflAQvrsa" role="3eO9$A">
                        <node concept="3uibUv" id="4RbflAQvtTZ" role="2ZW6by">
                          <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
                        </node>
                        <node concept="37vLTw" id="4RbflAQvpxO" role="2ZW6bz">
                          <ref role="3cqZAo" node="4RbflAQkhkM" resolve="o2" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4RbflAQvnmV" role="3eOfB_">
                        <node concept="3cpWs6" id="4RbflAQvWHn" role="3cqZAp">
                          <node concept="3cpWs3" id="4RbflAQvGMn" role="3cqZAk">
                            <node concept="Xl_RD" id="4RbflAQvGOh" role="3uHU7w">
                              <property role="Xl_RC" value=" [module]" />
                            </node>
                            <node concept="2OqwBi" id="4RbflAQvAyH" role="3uHU7B">
                              <node concept="1eOMI4" id="4RbflAQvxZK" role="2Oq$k0">
                                <node concept="10QFUN" id="4RbflAQvxZH" role="1eOMHV">
                                  <node concept="3uibUv" id="4RbflAQvxZM" role="10QFUM">
                                    <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
                                  </node>
                                  <node concept="37vLTw" id="4RbflAQv$4p" role="10QFUP">
                                    <ref role="3cqZAo" node="4RbflAQkhkM" resolve="o2" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="4RbflAQvEm8" role="2OqNvi">
                                <ref role="37wK5l" to="t4tl:~DModule.getModuleName()" resolve="getModuleName" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eNFk2" id="4RbflAQw52C" role="3eNLev">
                      <node concept="2ZW3vV" id="4RbflAQw52D" role="3eO9$A">
                        <node concept="3uibUv" id="4RbflAQw52E" role="2ZW6by">
                          <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                        </node>
                        <node concept="37vLTw" id="4RbflAQw52F" role="2ZW6bz">
                          <ref role="3cqZAo" node="4RbflAQkhkM" resolve="o2" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4RbflAQw52G" role="3eOfB_">
                        <node concept="3cpWs6" id="4RbflAQw52H" role="3cqZAp">
                          <node concept="3cpWs3" id="4RbflAQw52I" role="3cqZAk">
                            <node concept="Xl_RD" id="4RbflAQw52J" role="3uHU7w">
                              <property role="Xl_RC" value=" [model]" />
                            </node>
                            <node concept="2OqwBi" id="4RbflAQw52K" role="3uHU7B">
                              <node concept="1eOMI4" id="4RbflAQw52L" role="2Oq$k0">
                                <node concept="10QFUN" id="4RbflAQw52M" role="1eOMHV">
                                  <node concept="3uibUv" id="4RbflAQw52N" role="10QFUM">
                                    <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                                  </node>
                                  <node concept="37vLTw" id="4RbflAQw52O" role="10QFUP">
                                    <ref role="3cqZAo" node="4RbflAQkhkM" resolve="o2" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="4RbflAQw52P" role="2OqNvi">
                                <ref role="37wK5l" to="t4tl:~DModel.getNameString()" resolve="getNameString" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="4RbflAQkIqf" role="3clFbx">
                      <node concept="3cpWs6" id="4RbflAQkQf_" role="3cqZAp">
                        <node concept="Xl_RD" id="4RbflAQkTJU" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="4RbflAQkMdZ" role="3clFbw">
                      <node concept="10Nm6u" id="4RbflAQkOhc" role="3uHU7w" />
                      <node concept="37vLTw" id="4RbflAQkKl8" role="3uHU7B">
                        <ref role="3cqZAo" node="4RbflAQkhkM" resolve="object" />
                      </node>
                    </node>
                    <node concept="3eNFk2" id="4RbflAQlw4s" role="3eNLev">
                      <node concept="2ZW3vV" id="4RbflAQlzS0" role="3eO9$A">
                        <node concept="3uibUv" id="4RbflAQl_qE" role="2ZW6by">
                          <ref role="3uigEE" to="kag7:~Newable" resolve="Newable" />
                        </node>
                        <node concept="37vLTw" id="4RbflAQly$U" role="2ZW6bz">
                          <ref role="3cqZAo" node="4RbflAQkhkM" resolve="o2" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4RbflAQlw4u" role="3eOfB_">
                        <node concept="3cpWs6" id="4RbflAQmoPt" role="3cqZAp">
                          <node concept="3cpWs3" id="4RbflAQnglk" role="3cqZAk">
                            <node concept="Xl_RD" id="4RbflAQngll" role="3uHU7w">
                              <property role="Xl_RC" value="]" />
                            </node>
                            <node concept="3cpWs3" id="4RbflAQnglm" role="3uHU7B">
                              <node concept="3cpWs3" id="4RbflAQngln" role="3uHU7B">
                                <node concept="2OqwBi" id="4RbflAQmsIq" role="3uHU7B">
                                  <node concept="2OqwBi" id="4RbflAQmx3h" role="2Oq$k0">
                                    <node concept="1eOMI4" id="4RbflAQmzv_" role="2Oq$k0">
                                      <node concept="10QFUN" id="4RbflAQmzvy" role="1eOMHV">
                                        <node concept="3uibUv" id="4RbflAQmzvz" role="10QFUM">
                                          <ref role="3uigEE" to="kag7:~Newable" resolve="Newable" />
                                        </node>
                                        <node concept="37vLTw" id="4RbflAQmzv$" role="10QFUP">
                                          <ref role="3cqZAo" node="4RbflAQkhkM" resolve="o2" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4RbflAQmx3j" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~Newable.dIdentity()" resolve="dIdentity" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4RbflAQmuEU" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="4RbflAQnglr" role="3uHU7w">
                                  <property role="Xl_RC" value=" [" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4RbflAQngls" role="3uHU7w">
                                <node concept="2OqwBi" id="4RbflAQnglt" role="2Oq$k0">
                                  <node concept="37vLTw" id="4RbflAQnglu" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4RbflAQkhkM" resolve="o2" />
                                  </node>
                                  <node concept="liA8E" id="4RbflAQnglv" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4RbflAQnglw" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="4RbflAQkXml" role="9aQIa">
                      <node concept="3clFbS" id="4RbflAQkXmm" role="9aQI4">
                        <node concept="3cpWs6" id="4RbflAQjHKG" role="3cqZAp">
                          <node concept="3cpWs3" id="4RbflAQmDZ$" role="3cqZAk">
                            <node concept="Xl_RD" id="4RbflAQmE1u" role="3uHU7w">
                              <property role="Xl_RC" value="]" />
                            </node>
                            <node concept="3cpWs3" id="4RbflAQktWN" role="3uHU7B">
                              <node concept="3cpWs3" id="4RbflAQknbg" role="3uHU7B">
                                <node concept="2OqwBi" id="4RbflAQjHKH" role="3uHU7B">
                                  <node concept="37vLTw" id="4RbflAQkhkQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4RbflAQkhkM" resolve="o2" />
                                  </node>
                                  <node concept="liA8E" id="4RbflAQjHKM" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="4RbflAQkprY" role="3uHU7w">
                                  <property role="Xl_RC" value=" [" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4RbflAQkB9q" role="3uHU7w">
                                <node concept="2OqwBi" id="4RbflAQkyt7" role="2Oq$k0">
                                  <node concept="37vLTw" id="4RbflAQkwB3" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4RbflAQkhkM" resolve="o2" />
                                  </node>
                                  <node concept="liA8E" id="4RbflAQk$l1" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4RbflAQkEEX" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
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
        </node>
      </node>
      <node concept="37vLTG" id="4RbflAQguza" role="3clF46">
        <property role="TrG5h" value="o1" />
        <node concept="3uibUv" id="4RbflAQguz9" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4RbflAQgx5O" role="3clF46">
        <property role="TrG5h" value="f" />
        <node concept="1ajhzC" id="4RbflAQgNTC" role="1tU5fm">
          <node concept="3uibUv" id="4RbflAQhFzR" role="1ajl9A">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="1O8e97Nmjhg" role="jymVt">
      <property role="TrG5h" value="formatValue" />
      <node concept="3clFbS" id="1O8e97MLHhw" role="3clF47">
        <node concept="3clFbF" id="1O8e97NahE2" role="3cqZAp">
          <node concept="3K4zz7" id="1YYl$fTjfKc" role="3clFbG">
            <node concept="3clFbC" id="1YYl$fTjfKd" role="3K4Cdx">
              <node concept="10M0yZ" id="1YYl$fTjfKe" role="3uHU7w">
                <ref role="1PxDUh" to="wyt6:~Integer" resolve="Integer" />
                <ref role="3cqZAo" to="wyt6:~Integer.MAX_VALUE" resolve="MAX_VALUE" />
              </node>
              <node concept="37vLTw" id="1YYl$fTjfKf" role="3uHU7B">
                <ref role="3cqZAo" node="1O8e97MLHhM" resolve="value" />
              </node>
            </node>
            <node concept="Xl_RD" id="1YYl$fTjfKg" role="3K4E3e">
              <property role="Xl_RC" value="∞" />
            </node>
            <node concept="2YIFZM" id="1YYl$fTjfKh" role="3K4GZi">
              <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="Xl_RD" id="1YYl$fTjfKi" role="37wK5m">
                <property role="Xl_RC" value="%,d" />
              </node>
              <node concept="37vLTw" id="1YYl$fTjfKj" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97MLHhM" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1O8e97MLHhM" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10Oyi0" id="1O8e97Nasbu" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="1O8e97MLHhL" role="3clF45" />
      <node concept="3Tm6S6" id="1O8e97MLHhO" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="1O8e97NmceL" role="jymVt">
      <property role="TrG5h" value="formatValue" />
      <node concept="3clFbS" id="1O8e97Nalcn" role="3clF47">
        <node concept="3clFbF" id="1YYl$fTiVig" role="3cqZAp">
          <node concept="3K4zz7" id="1YYl$fTiVi8" role="3clFbG">
            <node concept="3clFbC" id="1YYl$fTj0aY" role="3K4Cdx">
              <node concept="10M0yZ" id="1YYl$fTj50H" role="3uHU7w">
                <ref role="3cqZAo" to="wyt6:~Long.MAX_VALUE" resolve="MAX_VALUE" />
                <ref role="1PxDUh" to="wyt6:~Long" resolve="Long" />
              </node>
              <node concept="37vLTw" id="1YYl$fTiWXm" role="3uHU7B">
                <ref role="3cqZAo" node="1O8e97Nalct" resolve="value" />
              </node>
            </node>
            <node concept="Xl_RD" id="1YYl$fTj6$z" role="3K4E3e">
              <property role="Xl_RC" value="∞" />
            </node>
            <node concept="2YIFZM" id="1O8e97Nalcp" role="3K4GZi">
              <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="Xl_RD" id="1O8e97Nalcq" role="37wK5m">
                <property role="Xl_RC" value="%,d" />
              </node>
              <node concept="37vLTw" id="1O8e97Nalcr" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Nalct" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1O8e97Nalct" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3cpWsb" id="1O8e97Nalcu" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="1O8e97Nalcs" role="3clF45" />
      <node concept="3Tm6S6" id="1O8e97Nalcv" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="1O8e97Nm6Me" role="jymVt">
      <property role="TrG5h" value="reformatLine" />
      <node concept="3clFbS" id="1O8e97MLHfZ" role="3clF47">
        <node concept="3cpWs6" id="1O8e97MLHgv" role="3cqZAp">
          <node concept="3cpWs3" id="1O8e97MLHgw" role="3cqZAk">
            <node concept="Xl_RD" id="1O8e97MLHgx" role="3uHU7w">
              <property role="Xl_RC" value=" |" />
            </node>
            <node concept="2OqwBi" id="1O8e97MLHgy" role="3uHU7B">
              <node concept="2OqwBi" id="1O8e97MLHgz" role="2Oq$k0">
                <node concept="2OqwBi" id="1O8e97Nip1C" role="2Oq$k0">
                  <node concept="37vLTw" id="1O8e97MLHg$" role="2Oq$k0">
                    <ref role="3cqZAo" node="1O8e97MLHgM" resolve="fields" />
                  </node>
                  <node concept="39bAoz" id="1O8e97Nisqq" role="2OqNvi" />
                </node>
                <node concept="3$u5V9" id="1O8e97MLHg_" role="2OqNvi">
                  <node concept="1bVj0M" id="1O8e97MLHgA" role="23t8la">
                    <node concept="3clFbS" id="1O8e97MLHgB" role="1bW5cS">
                      <node concept="3clFbF" id="1O8e97MLHgC" role="3cqZAp">
                        <node concept="2YIFZM" id="1O8e97MLHgD" role="3clFbG">
                          <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <node concept="3cpWs3" id="1O8e97MLHgE" role="37wK5m">
                            <node concept="Xl_RD" id="1O8e97MLHgF" role="3uHU7B">
                              <property role="Xl_RC" value="| " />
                            </node>
                            <node concept="37vLTw" id="1O8e97MLHgG" role="3uHU7w">
                              <ref role="3cqZAo" node="1O8e97Ni3fu" resolve="fmt" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1O8e97MLHgH" role="37wK5m">
                            <ref role="3cqZAo" node="1O8e97MLHgI" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="1O8e97MLHgI" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="1O8e97MLHgJ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uJxvA" id="1O8e97MLHgK" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1O8e97Ni3fu" role="3clF46">
        <property role="TrG5h" value="fmt" />
        <node concept="17QB3L" id="1O8e97Ni5yf" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1O8e97MLHgM" role="3clF46">
        <property role="TrG5h" value="fields" />
        <node concept="8X2XB" id="1O8e97MLHgN" role="1tU5fm">
          <node concept="17QB3L" id="1O8e97Nib3c" role="8Xvag" />
        </node>
      </node>
      <node concept="17QB3L" id="1O8e97MLHgL" role="3clF45" />
      <node concept="3Tm6S6" id="1O8e97MLHgP" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="1O8e97NlZFA" role="jymVt">
      <property role="TrG5h" value="reformatValue" />
      <node concept="3clFbS" id="1O8e97Nh7JW" role="3clF47">
        <node concept="3clFbF" id="1O8e97Nh7JX" role="3cqZAp">
          <node concept="2YIFZM" id="1O8e97Nh7JY" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
            <node concept="37vLTw" id="1O8e97NhKH0" role="37wK5m">
              <ref role="3cqZAo" node="1O8e97Nh7K2" resolve="fmt" />
            </node>
            <node concept="37vLTw" id="1O8e97Nh7K0" role="37wK5m">
              <ref role="3cqZAo" node="1O8e97NhxLV" resolve="val" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1O8e97Nh7K2" role="3clF46">
        <property role="TrG5h" value="fmt" />
        <node concept="17QB3L" id="1O8e97Nhr6n" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1O8e97NhxLV" role="3clF46">
        <property role="TrG5h" value="val" />
        <node concept="17QB3L" id="1O8e97Nhzz4" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="1O8e97Nh7K1" role="3clF45" />
      <node concept="3Tm6S6" id="1O8e97Nh7K4" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="1O8e97NlUBt" role="jymVt">
      <property role="TrG5h" value="maxWidthFmtRight" />
      <node concept="3clFbS" id="1O8e97MLHgU" role="3clF47">
        <node concept="3clFbF" id="1O8e97MLHhh" role="3cqZAp">
          <node concept="3cpWs3" id="1O8e97MLHhi" role="3clFbG">
            <node concept="Xl_RD" id="1O8e97MLHhj" role="3uHU7w">
              <property role="Xl_RC" value="s" />
            </node>
            <node concept="3cpWs3" id="1O8e97MLHhk" role="3uHU7B">
              <node concept="Xl_RD" id="1O8e97MLHhl" role="3uHU7B">
                <property role="Xl_RC" value="%" />
              </node>
              <node concept="2YIFZM" id="1O8e97NltSk" role="3uHU7w">
                <ref role="37wK5l" node="1O8e97NltSg" resolve="calcMaxWidth" />
                <ref role="1Pybhc" node="1O8e97MKRRd" resolve="MessageSetInfo" />
                <node concept="3cmrfG" id="1O8e97NnoST" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="1O8e97NltSj" role="37wK5m">
                  <ref role="3cqZAo" node="1O8e97MLHho" resolve="fields" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1O8e97MLHho" role="3clF46">
        <property role="TrG5h" value="fields" />
        <node concept="8X2XB" id="1O8e97Nepx6" role="1tU5fm">
          <node concept="17QB3L" id="1O8e97NelQ9" role="8Xvag" />
        </node>
      </node>
      <node concept="17QB3L" id="1O8e97MLHhn" role="3clF45" />
      <node concept="3Tm6S6" id="1O8e97MLHhr" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="1YYl$fTaIjx" role="jymVt">
      <property role="TrG5h" value="maxWidthFmtLeft" />
      <node concept="3clFbS" id="1YYl$fTaIjy" role="3clF47">
        <node concept="3clFbF" id="1YYl$fTaIjz" role="3cqZAp">
          <node concept="3cpWs3" id="1YYl$fTaIj$" role="3clFbG">
            <node concept="Xl_RD" id="1YYl$fTaIj_" role="3uHU7w">
              <property role="Xl_RC" value="s" />
            </node>
            <node concept="3cpWs3" id="1YYl$fTaIjA" role="3uHU7B">
              <node concept="Xl_RD" id="1YYl$fTaIjB" role="3uHU7B">
                <property role="Xl_RC" value="%-" />
              </node>
              <node concept="2YIFZM" id="1YYl$fTaIjC" role="3uHU7w">
                <ref role="37wK5l" node="1O8e97NltSg" resolve="calcMaxWidth" />
                <ref role="1Pybhc" node="1O8e97MKRRd" resolve="MessageSetInfo" />
                <node concept="3cmrfG" id="1YYl$fTaIjD" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="1YYl$fTaIjE" role="37wK5m">
                  <ref role="3cqZAo" node="1YYl$fTaIjF" resolve="fields" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1YYl$fTaIjF" role="3clF46">
        <property role="TrG5h" value="fields" />
        <node concept="8X2XB" id="1YYl$fTaIjG" role="1tU5fm">
          <node concept="17QB3L" id="1YYl$fTaIjH" role="8Xvag" />
        </node>
      </node>
      <node concept="17QB3L" id="1YYl$fTaIjI" role="3clF45" />
      <node concept="3Tm6S6" id="1YYl$fTaIjJ" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="1O8e97Nndmj" role="jymVt">
      <property role="TrG5h" value="maxWidthFmtAndUpdate" />
      <node concept="3clFbS" id="1O8e97Nndmk" role="3clF47">
        <node concept="3clFbF" id="1O8e97Nndml" role="3cqZAp">
          <node concept="37vLTI" id="1O8e97Nndmm" role="3clFbG">
            <node concept="10M0yZ" id="1O8e97Nndmn" role="37vLTJ">
              <ref role="3cqZAo" node="12jv95xk_qy" resolve="maxDigitsInEngineState" />
              <ref role="1PxDUh" node="3zaVTDewaf5" resolve="Const" />
            </node>
            <node concept="2YIFZM" id="1O8e97Nndmo" role="37vLTx">
              <ref role="1Pybhc" node="1O8e97MKRRd" resolve="MessageSetInfo" />
              <ref role="37wK5l" node="1O8e97NltSg" resolve="calcMaxWidth" />
              <node concept="10M0yZ" id="1O8e97Nndmp" role="37wK5m">
                <ref role="1PxDUh" node="3zaVTDewaf5" resolve="Const" />
                <ref role="3cqZAo" node="12jv95xk_qy" resolve="maxDigitsInEngineState" />
              </node>
              <node concept="37vLTw" id="1O8e97Nndmq" role="37wK5m">
                <ref role="3cqZAo" node="1O8e97Nndmx" resolve="fields" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8e97Nndmr" role="3cqZAp">
          <node concept="3cpWs3" id="1O8e97Nndms" role="3clFbG">
            <node concept="Xl_RD" id="1O8e97Nndmt" role="3uHU7w">
              <property role="Xl_RC" value="s" />
            </node>
            <node concept="3cpWs3" id="1O8e97Nndmu" role="3uHU7B">
              <node concept="Xl_RD" id="1O8e97Nndmv" role="3uHU7B">
                <property role="Xl_RC" value="%" />
              </node>
              <node concept="10M0yZ" id="1O8e97Nndmw" role="3uHU7w">
                <ref role="3cqZAo" node="12jv95xk_qy" resolve="maxDigitsInEngineState" />
                <ref role="1PxDUh" node="3zaVTDewaf5" resolve="Const" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1O8e97Nndmx" role="3clF46">
        <property role="TrG5h" value="fields" />
        <node concept="8X2XB" id="1O8e97Nndmy" role="1tU5fm">
          <node concept="17QB3L" id="1O8e97Nndmz" role="8Xvag" />
        </node>
      </node>
      <node concept="17QB3L" id="1O8e97Nndm$" role="3clF45" />
      <node concept="3Tm6S6" id="1O8e97Nndm_" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="1O8e97MKRRe" role="1B3o_S" />
    <node concept="2YIFZL" id="1O8e97NltSg" role="jymVt">
      <property role="TrG5h" value="calcMaxWidth" />
      <node concept="3Tm6S6" id="1O8e97NltSh" role="1B3o_S" />
      <node concept="10Oyi0" id="1O8e97NltSi" role="3clF45" />
      <node concept="37vLTG" id="1O8e97NlA5I" role="3clF46">
        <property role="TrG5h" value="w" />
        <node concept="10Oyi0" id="1O8e97NlDrz" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1O8e97NltSb" role="3clF46">
        <property role="TrG5h" value="fields" />
        <node concept="8X2XB" id="1O8e97NltSc" role="1tU5fm">
          <node concept="17QB3L" id="1O8e97NltSd" role="8Xvag" />
        </node>
      </node>
      <node concept="3clFbS" id="1O8e97NltRQ" role="3clF47">
        <node concept="3cpWs6" id="1O8e97NltRR" role="3cqZAp">
          <node concept="2YIFZM" id="1O8e97NltRS" role="3cqZAk">
            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
            <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
            <node concept="37vLTw" id="1O8e97NlOuP" role="37wK5m">
              <ref role="3cqZAo" node="1O8e97NlA5I" resolve="w" />
            </node>
            <node concept="2OqwBi" id="1O8e97NltRU" role="37wK5m">
              <node concept="2OqwBi" id="1O8e97NltRV" role="2Oq$k0">
                <node concept="2OqwBi" id="1O8e97NltRW" role="2Oq$k0">
                  <node concept="2YIFZM" id="1O8e97NltRX" role="2Oq$k0">
                    <ref role="37wK5l" to="1ctc:~Stream.of(java.lang.Object...)" resolve="of" />
                    <ref role="1Pybhc" to="1ctc:~Stream" resolve="Stream" />
                    <node concept="37vLTw" id="1O8e97NltSe" role="37wK5m">
                      <ref role="3cqZAo" node="1O8e97NltSb" resolve="fields" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1O8e97NltRZ" role="2OqNvi">
                    <ref role="37wK5l" to="1ctc:~Stream.mapToInt(java.util.function.ToIntFunction)" resolve="mapToInt" />
                    <node concept="1bVj0M" id="1O8e97NltS0" role="37wK5m">
                      <node concept="3clFbS" id="1O8e97NltS1" role="1bW5cS">
                        <node concept="3clFbF" id="1O8e97NltS2" role="3cqZAp">
                          <node concept="2OqwBi" id="1O8e97NltS3" role="3clFbG">
                            <node concept="37vLTw" id="1O8e97NltS4" role="2Oq$k0">
                              <ref role="3cqZAo" node="1O8e97NltS6" resolve="s" />
                            </node>
                            <node concept="liA8E" id="1O8e97NltS5" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="1O8e97NltS6" role="1bW2Oz">
                        <property role="TrG5h" value="s" />
                        <node concept="17QB3L" id="1O8e97NltS7" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1O8e97NltS8" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~IntStream.max()" resolve="max" />
                </node>
              </node>
              <node concept="liA8E" id="1O8e97NltS9" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~OptionalInt.orElse(int)" resolve="orElse" />
                <node concept="3cmrfG" id="1O8e97NltSa" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

