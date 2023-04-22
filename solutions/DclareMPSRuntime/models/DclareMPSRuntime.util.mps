<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1a96ceaa-2946-43e0-af3f-cd05d77ee6d1(DclareMPSRuntime.util)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
  </languages>
  <imports>
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="t4tl" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.dclare.mps(DclareMPSRuntime/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="d6hs" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.item(MPS.Core/)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="zavc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.messageTargets(MPS.Core/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="iwsx" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.fileEditor(MPS.IDEA/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="zrbp" ref="e584ff77-930e-4637-8df0-b4c8d3b6de91/java:org.modelingvalue.collections(DclareRuntime/)" />
    <import index="42m3" ref="e584ff77-930e-4637-8df0-b4c8d3b6de91/java:org.modelingvalue.collections.util(DclareRuntime/)" />
    <import index="kag7" ref="e584ff77-930e-4637-8df0-b4c8d3b6de91/java:org.modelingvalue.dclare(DclareRuntime/)" />
    <import index="9aa5" ref="e584ff77-930e-4637-8df0-b4c8d3b6de91/java:org.modelingvalue.collections.mutable(DclareRuntime/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="kcid" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cellLayout(MPS.Editor/)" />
    <import index="hhnx" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="22ra" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.update(MPS.Editor/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="7oz1" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.configuration(MPS.Editor/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="wvnl" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.extensions(MPS.Editor/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188206331916" name="jetbrains.mps.baseLanguage.structure.Annotation" flags="ig" index="2ABs$o" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="312cEu" id="30fQumnG8Au">
    <property role="TrG5h" value="DclareUtil" />
    <node concept="2tJIrI" id="3z4syYPQ_0j" role="jymVt" />
    <node concept="Wx3nA" id="4o9njCw5asw" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="ENGINES" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4o9njCw5abN" role="1B3o_S" />
      <node concept="3uibUv" id="4o9njCw5gJO" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="4o9njCw5CO3" role="11_B2D">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="3uibUv" id="MKle5XG9su" role="11_B2D">
          <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
        </node>
      </node>
      <node concept="2ShNRf" id="4o9njCw5irz" role="33vP2m">
        <node concept="1pGfFk" id="4o9njCw5mpg" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~WeakHashMap.&lt;init&gt;()" resolve="WeakHashMap" />
          <node concept="3uibUv" id="4o9njCw5CYn" role="1pMfVU">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
          <node concept="3uibUv" id="MKle5XG9Hk" role="1pMfVU">
            <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="3z4syYPPA$1" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="IASPECT_PREFS" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3z4syYPPA$2" role="1B3o_S" />
      <node concept="3uibUv" id="3z4syYPPA$3" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="3z4syYPPA$4" role="11_B2D">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="3uibUv" id="3z4syYPPA$5" role="11_B2D">
          <ref role="3uigEE" node="22ExA6fKnVF" resolve="IAspectPrefs" />
        </node>
      </node>
      <node concept="2ShNRf" id="3z4syYPPA$6" role="33vP2m">
        <node concept="1pGfFk" id="3z4syYPPA$7" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~WeakHashMap.&lt;init&gt;()" resolve="WeakHashMap" />
          <node concept="3uibUv" id="3z4syYPPA$8" role="1pMfVU">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
          <node concept="3uibUv" id="3z4syYPPA$9" role="1pMfVU">
            <ref role="3uigEE" node="22ExA6fKnVF" resolve="IAspectPrefs" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="3z4syYPPQ76" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="ISHARING_PREFS" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3z4syYPPQ77" role="1B3o_S" />
      <node concept="3uibUv" id="3z4syYPPQ78" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="3z4syYPPQ79" role="11_B2D">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="3uibUv" id="3z4syYPPQ7a" role="11_B2D">
          <ref role="3uigEE" node="3z4syYPQlIm" resolve="IModelPrefs" />
        </node>
      </node>
      <node concept="2ShNRf" id="3z4syYPPQ7b" role="33vP2m">
        <node concept="1pGfFk" id="3z4syYPPQ7c" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~WeakHashMap.&lt;init&gt;()" resolve="WeakHashMap" />
          <node concept="3uibUv" id="3z4syYPPQ7d" role="1pMfVU">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
          <node concept="3uibUv" id="3z4syYPPQ7e" role="1pMfVU">
            <ref role="3uigEE" node="3z4syYPQlIm" resolve="IModelPrefs" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3z4syYPPJrG" role="jymVt" />
    <node concept="2YIFZL" id="6g03R83sM9t" role="jymVt">
      <property role="TrG5h" value="getIAspectPrefs" />
      <node concept="37vLTG" id="6g03R83sVui" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6g03R83sVuj" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="6g03R83sM9w" role="3clF47">
        <node concept="3cpWs6" id="6g03R83sVX5" role="3cqZAp">
          <node concept="2OqwBi" id="6g03R83sWoX" role="3cqZAk">
            <node concept="37vLTw" id="6g03R83sWpk" role="2Oq$k0">
              <ref role="3cqZAo" node="3z4syYPPA$1" resolve="IASPECT_PREFS" />
            </node>
            <node concept="liA8E" id="6g03R83sWoY" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="6g03R83sWoZ" role="37wK5m">
                <ref role="3cqZAo" node="6g03R83sVui" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6g03R83sBYa" role="1B3o_S" />
      <node concept="3uibUv" id="6g03R83sLH$" role="3clF45">
        <ref role="3uigEE" node="22ExA6fKnVF" resolve="IAspectPrefs" />
      </node>
    </node>
    <node concept="2tJIrI" id="3z4syYPR6zl" role="jymVt" />
    <node concept="2YIFZL" id="3z4syYPRc41" role="jymVt">
      <property role="TrG5h" value="getISharingPrefs" />
      <node concept="37vLTG" id="3z4syYPRc42" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3z4syYPRc43" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="3z4syYPRc44" role="3clF47">
        <node concept="3cpWs6" id="3z4syYPRc45" role="3cqZAp">
          <node concept="2OqwBi" id="3z4syYPRc46" role="3cqZAk">
            <node concept="37vLTw" id="3z4syYPRc4C" role="2Oq$k0">
              <ref role="3cqZAo" node="3z4syYPPQ76" resolve="ISHARING_PREFS" />
            </node>
            <node concept="liA8E" id="3z4syYPRc47" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="3z4syYPRc48" role="37wK5m">
                <ref role="3cqZAo" node="3z4syYPRc42" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3z4syYPRc49" role="1B3o_S" />
      <node concept="3uibUv" id="3z4syYPRc4a" role="3clF45">
        <ref role="3uigEE" node="3z4syYPQlIm" resolve="IModelPrefs" />
      </node>
    </node>
    <node concept="2tJIrI" id="3z4syYPRhbi" role="jymVt" />
    <node concept="2YIFZL" id="3z4syYPRmGX" role="jymVt">
      <property role="TrG5h" value="getEngine" />
      <node concept="37vLTG" id="3z4syYPRmGY" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3z4syYPRmGZ" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="3z4syYPRmH0" role="3clF47">
        <node concept="3cpWs6" id="3z4syYPRmH1" role="3cqZAp">
          <node concept="2OqwBi" id="3z4syYPRmH2" role="3cqZAk">
            <node concept="37vLTw" id="3z4syYPRmH$" role="2Oq$k0">
              <ref role="3cqZAo" node="4o9njCw5asw" resolve="ENGINES" />
            </node>
            <node concept="liA8E" id="3z4syYPRmH3" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="3z4syYPRmH4" role="37wK5m">
                <ref role="3cqZAo" node="3z4syYPRmGY" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3z4syYPRmH5" role="1B3o_S" />
      <node concept="3uibUv" id="3z4syYPRmH6" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
      </node>
    </node>
    <node concept="2tJIrI" id="3z4syYPSxD0" role="jymVt" />
    <node concept="2YIFZL" id="3z4syYPqLgF" role="jymVt">
      <property role="TrG5h" value="getProject" />
      <node concept="3Tm1VV" id="3z4syYPqLgG" role="1B3o_S" />
      <node concept="3uibUv" id="3z4syYPqLgH" role="3clF45">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
      <node concept="37vLTG" id="3z4syYPqLgB" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="3z4syYPqLgC" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="3z4syYPqLgw" role="3clF47">
        <node concept="3cpWs6" id="3z4syYPqLgx" role="3cqZAp">
          <node concept="2YIFZM" id="3z4syYPqLgy" role="3cqZAk">
            <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
            <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
            <node concept="2YIFZM" id="3z4syYPqLgz" role="37wK5m">
              <ref role="37wK5l" to="alof:~ProjectHelper.getProject(org.jetbrains.mps.openapi.module.SRepository)" resolve="getProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="2OqwBi" id="3z4syYPqLg$" role="37wK5m">
                <node concept="37vLTw" id="3z4syYPqLgD" role="2Oq$k0">
                  <ref role="3cqZAo" node="3z4syYPqLgB" resolve="editorContext" />
                </node>
                <node concept="liA8E" id="3z4syYPqLgA" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3z4syYPR75C" role="jymVt" />
    <node concept="2YIFZL" id="6g03R83trNJ" role="jymVt">
      <property role="TrG5h" value="getEngine" />
      <node concept="37vLTG" id="6g03R83tIJF" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="6g03R83tIJG" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="6g03R83trNM" role="3clF47">
        <node concept="3cpWs6" id="6g03R83trNN" role="3cqZAp">
          <node concept="2OqwBi" id="6g03R83trNO" role="3cqZAk">
            <node concept="37vLTw" id="6g03R83trNP" role="2Oq$k0">
              <ref role="3cqZAo" node="4o9njCw5asw" resolve="ENGINES" />
            </node>
            <node concept="liA8E" id="6g03R83trNQ" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="2YIFZM" id="3z4syYPqLgJ" role="37wK5m">
                <ref role="1Pybhc" node="30fQumnG8Au" resolve="DclareUtil" />
                <ref role="37wK5l" node="3z4syYPqLgF" resolve="getProject" />
                <node concept="37vLTw" id="3z4syYPqLgI" role="37wK5m">
                  <ref role="3cqZAo" node="6g03R83tIJF" resolve="editorContext" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6g03R83trNS" role="1B3o_S" />
      <node concept="3uibUv" id="6g03R83trNT" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
      </node>
    </node>
    <node concept="2tJIrI" id="3z4syYPr2Df" role="jymVt" />
    <node concept="2YIFZL" id="4FbMPtV5fvT" role="jymVt">
      <property role="TrG5h" value="setConfig" />
      <node concept="3clFbS" id="4FbMPtV5fvW" role="3clF47">
        <node concept="3cpWs8" id="4FbMPtV5MBJ" role="3cqZAp">
          <node concept="3cpWsn" id="4FbMPtV5MBK" role="3cpWs9">
            <property role="TrG5h" value="engine" />
            <node concept="3uibUv" id="4FbMPtV5MBL" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
            </node>
            <node concept="1rXfSq" id="6g03R83tKD_" role="33vP2m">
              <ref role="37wK5l" node="3z4syYPRmGX" resolve="getEngine" />
              <node concept="37vLTw" id="6g03R83tLkV" role="37wK5m">
                <ref role="3cqZAo" node="4FbMPtV5owi" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="GCs2xBiEBF" role="3cqZAp">
          <node concept="3cpWsn" id="GCs2xBiEBG" role="3cpWs9">
            <property role="TrG5h" value="config" />
            <node concept="3uibUv" id="GCs2xBiE08" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DclareForMpsConfig" resolve="DclareForMpsConfig" />
            </node>
            <node concept="2OqwBi" id="GCs2xBiEBH" role="33vP2m">
              <node concept="37vLTw" id="GCs2xBiEBI" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtV5MBK" resolve="engine" />
              </node>
              <node concept="liA8E" id="GCs2xBiEBJ" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.getConfig()" resolve="getConfig" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="GCs2xBj2yU" role="3cqZAp">
          <node concept="2OqwBi" id="GCs2xBj3mV" role="3clFbG">
            <node concept="37vLTw" id="GCs2xBj2yS" role="2Oq$k0">
              <ref role="3cqZAo" node="4FbMPtV5MBK" resolve="engine" />
            </node>
            <node concept="liA8E" id="6g03R83o8Es" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setConfig(org.modelingvalue.dclare.mps.DclareForMpsConfig)" resolve="setConfig" />
              <node concept="37vLTw" id="6g03R83ol9C" role="37wK5m">
                <ref role="3cqZAo" node="GCs2xBiPKF" resolve="newConfig" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="GCs2xBiNzr" role="3cqZAp" />
        <node concept="3clFbJ" id="4FbMPtV5ux0" role="3cqZAp">
          <node concept="3clFbS" id="4FbMPtV5ux2" role="3clFbx">
            <node concept="3SKdUt" id="2HLAWGTi4sR" role="3cqZAp">
              <node concept="1PaTwC" id="2HLAWGTi4sS" role="1aUNEU">
                <node concept="3oM_SD" id="6g03R83ol2K" role="1PaTwD">
                  <property role="3oM_SC" value="refresh" />
                </node>
                <node concept="3oM_SD" id="2HLAWGTi4tJ" role="1PaTwD">
                  <property role="3oM_SC" value="all" />
                </node>
                <node concept="3oM_SD" id="2HLAWGTi4tN" role="1PaTwD">
                  <property role="3oM_SC" value="open" />
                </node>
                <node concept="3oM_SD" id="2HLAWGTi4tS" role="1PaTwD">
                  <property role="3oM_SC" value="editors" />
                </node>
                <node concept="3oM_SD" id="2HLAWGTi4tY" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="2HLAWGTi4u5" role="1PaTwD">
                  <property role="3oM_SC" value="reflect" />
                </node>
                <node concept="3oM_SD" id="2HLAWGTi4ud" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="2HLAWGTi4um" role="1PaTwD">
                  <property role="3oM_SC" value="change:" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2HLAWGTi4eJ" role="3cqZAp">
              <node concept="3cpWsn" id="2HLAWGTi4eK" role="3cpWs9">
                <property role="TrG5h" value="editors" />
                <node concept="A3Dl8" id="2HLAWGTi4bC" role="1tU5fm">
                  <node concept="3uibUv" id="2HLAWGTi4bF" role="A3Ik2">
                    <ref role="3uigEE" to="k3nr:~MPSFileNodeEditor" resolve="MPSFileNodeEditor" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2HLAWGTi4eL" role="33vP2m">
                  <node concept="2OqwBi" id="2HLAWGTi4eM" role="2Oq$k0">
                    <node concept="2OqwBi" id="2HLAWGTi4eN" role="2Oq$k0">
                      <node concept="2YIFZM" id="2HLAWGTi4eO" role="2Oq$k0">
                        <ref role="37wK5l" to="iwsx:~FileEditorManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                        <ref role="1Pybhc" to="iwsx:~FileEditorManager" resolve="FileEditorManager" />
                        <node concept="37vLTw" id="2HLAWGTi4eP" role="37wK5m">
                          <ref role="3cqZAo" node="4FbMPtV5owi" resolve="project" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2HLAWGTi4eQ" role="2OqNvi">
                        <ref role="37wK5l" to="iwsx:~FileEditorManager.getAllEditors()" resolve="getAllEditors" />
                      </node>
                    </node>
                    <node concept="39bAoz" id="2HLAWGTi4eR" role="2OqNvi" />
                  </node>
                  <node concept="UnYns" id="2HLAWGTi4eS" role="2OqNvi">
                    <node concept="3uibUv" id="2HLAWGTi4eT" role="UnYnz">
                      <ref role="3uigEE" to="k3nr:~MPSFileNodeEditor" resolve="MPSFileNodeEditor" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4KK_HU4c_mm" role="3cqZAp">
              <node concept="3cpWsn" id="4KK_HU4c_mn" role="3cpWs9">
                <property role="TrG5h" value="mpsProject" />
                <node concept="3uibUv" id="4KK_HU4cx4M" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
                </node>
                <node concept="2YIFZM" id="4KK_HU4c_mo" role="33vP2m">
                  <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="37vLTw" id="4KK_HU4c_mp" role="37wK5m">
                    <ref role="3cqZAo" node="4FbMPtV5owi" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4KK_HU4cAt8" role="3cqZAp">
              <node concept="3clFbS" id="4KK_HU4cAta" role="3clFbx">
                <node concept="3clFbF" id="2HLAWGThujL" role="3cqZAp">
                  <node concept="2OqwBi" id="2HLAWGThw9u" role="3clFbG">
                    <node concept="2OqwBi" id="2HLAWGThv_L" role="2Oq$k0">
                      <node concept="37vLTw" id="4KK_HU4c_mq" role="2Oq$k0">
                        <ref role="3cqZAo" node="4KK_HU4c_mn" resolve="mpsProject" />
                      </node>
                      <node concept="liA8E" id="2HLAWGThw4K" role="2OqNvi">
                        <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2HLAWGThwhG" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                      <node concept="1bVj0M" id="2HLAWGThwmf" role="37wK5m">
                        <node concept="3clFbS" id="2HLAWGThwmg" role="1bW5cS">
                          <node concept="3clFbF" id="4FbMPtV5BtK" role="3cqZAp">
                            <node concept="2OqwBi" id="4FbMPtV5Jii" role="3clFbG">
                              <node concept="37vLTw" id="2HLAWGTi4eU" role="2Oq$k0">
                                <ref role="3cqZAo" node="2HLAWGTi4eK" resolve="editors" />
                              </node>
                              <node concept="2es0OD" id="4FbMPtV5L84" role="2OqNvi">
                                <node concept="1bVj0M" id="4FbMPtV5L86" role="23t8la">
                                  <node concept="3clFbS" id="4FbMPtV5L87" role="1bW5cS">
                                    <node concept="3clFbF" id="2HLAWGTgTmq" role="3cqZAp">
                                      <node concept="2OqwBi" id="2HLAWGTgUWS" role="3clFbG">
                                        <node concept="2OqwBi" id="2HLAWGTgUtM" role="2Oq$k0">
                                          <node concept="2OqwBi" id="2HLAWGTgTKk" role="2Oq$k0">
                                            <node concept="37vLTw" id="2HLAWGTgTmo" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4FbMPtV5L88" resolve="it" />
                                            </node>
                                            <node concept="liA8E" id="2HLAWGTgUj5" role="2OqNvi">
                                              <ref role="37wK5l" to="k3nr:~MPSFileNodeEditor.getNodeEditor()" resolve="getNodeEditor" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="2HLAWGTgUJj" role="2OqNvi">
                                            <ref role="37wK5l" to="cj4x:~Editor.getCurrentEditorComponent()" resolve="getCurrentEditorComponent" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="2HLAWGTgVaA" role="2OqNvi">
                                          <ref role="37wK5l" to="cj4x:~EditorComponent.rebuildEditorContent()" resolve="rebuildEditorContent" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="4FbMPtV5L88" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="4FbMPtV5L89" role="1tU5fm" />
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
              <node concept="3y3z36" id="4KK_HU4cBSo" role="3clFbw">
                <node concept="10Nm6u" id="4KK_HU4cC9W" role="3uHU7w" />
                <node concept="37vLTw" id="4KK_HU4cB4V" role="3uHU7B">
                  <ref role="3cqZAo" node="4KK_HU4c_mn" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4FbMPtV5yUV" role="3clFbw">
            <node concept="2YIFZM" id="4FbMPtV5yUX" role="3fr31v">
              <ref role="37wK5l" to="33ny:~Objects.equals(java.lang.Object,java.lang.Object)" resolve="equals" />
              <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
              <node concept="2OqwBi" id="6g03R83ofSG" role="37wK5m">
                <node concept="37vLTw" id="6g03R83of9E" role="2Oq$k0">
                  <ref role="3cqZAo" node="GCs2xBiEBG" resolve="config" />
                </node>
                <node concept="liA8E" id="6g03R83ogDG" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.isColorfulEditors()" resolve="isColorfulEditors" />
                </node>
              </node>
              <node concept="2OqwBi" id="6g03R83oicl" role="37wK5m">
                <node concept="37vLTw" id="6g03R83ohos" role="2Oq$k0">
                  <ref role="3cqZAo" node="GCs2xBiPKF" resolve="newConfig" />
                </node>
                <node concept="liA8E" id="6g03R83oiZ_" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.isColorfulEditors()" resolve="isColorfulEditors" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4FbMPtV5f6r" role="1B3o_S" />
      <node concept="3cqZAl" id="4FbMPtV5fvR" role="3clF45" />
      <node concept="37vLTG" id="4FbMPtV5owi" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2HLAWGRWsB_" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="GCs2xBiPKF" role="3clF46">
        <property role="TrG5h" value="newConfig" />
        <node concept="3uibUv" id="GCs2xBiQ_E" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DclareForMpsConfig" resolve="DclareForMpsConfig" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2HLAWGSe8MD" role="jymVt" />
    <node concept="2YIFZL" id="2HLAWGSyA7R" role="jymVt">
      <property role="TrG5h" value="isColorfulEditors" />
      <node concept="3Tm6S6" id="2HLAWGSyA7S" role="1B3o_S" />
      <node concept="10P_77" id="2HLAWGSyB0Z" role="3clF45" />
      <node concept="37vLTG" id="2HLAWGSyA7J" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="2HLAWGSyA7K" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="2HLAWGSyA7$" role="3clF47">
        <node concept="3cpWs8" id="6g03R83oqnh" role="3cqZAp">
          <node concept="3cpWsn" id="6g03R83oqni" role="3cpWs9">
            <property role="TrG5h" value="engine" />
            <node concept="3uibUv" id="6g03R83opMz" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
            </node>
            <node concept="1rXfSq" id="6g03R83tMGc" role="33vP2m">
              <ref role="37wK5l" node="6g03R83trNJ" resolve="getEngine" />
              <node concept="37vLTw" id="6g03R83tNNN" role="37wK5m">
                <ref role="3cqZAo" node="2HLAWGSyA7J" resolve="editorContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6g03R83osaB" role="3cqZAp">
          <node concept="1Wc70l" id="6g03R83ozUH" role="3cqZAk">
            <node concept="3y3z36" id="6g03R83oyOw" role="3uHU7B">
              <node concept="37vLTw" id="6g03R83oqnr" role="3uHU7B">
                <ref role="3cqZAo" node="6g03R83oqni" resolve="engine" />
              </node>
              <node concept="10Nm6u" id="6g03R83otw3" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="6g03R83oyO$" role="3uHU7w">
              <node concept="2OqwBi" id="6g03R83oyO_" role="2Oq$k0">
                <node concept="37vLTw" id="6g03R83oyOA" role="2Oq$k0">
                  <ref role="3cqZAo" node="6g03R83oqni" resolve="engine" />
                </node>
                <node concept="liA8E" id="6g03R83oyOB" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.getConfig()" resolve="getConfig" />
                </node>
              </node>
              <node concept="liA8E" id="6g03R83oyOC" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.isColorfulEditors()" resolve="isColorfulEditors" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2HLAWGSejCW" role="jymVt">
      <property role="TrG5h" value="ifColor" />
      <node concept="3clFbS" id="2HLAWGSejCZ" role="3clF47">
        <node concept="3clFbF" id="2HLAWGSeUdw" role="3cqZAp">
          <node concept="3K4zz7" id="4FbMPtV43W5" role="3clFbG">
            <node concept="2ShNRf" id="4FbMPtV440j" role="3K4E3e">
              <node concept="1pGfFk" id="4FbMPtV44wp" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
                <node concept="37vLTw" id="2HLAWGSeYyX" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSeqaY" resolve="onColor" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="2HLAWGSy$lm" role="3K4GZi">
              <node concept="1pGfFk" id="2HLAWGSy$R$" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
                <node concept="37vLTw" id="2HLAWGSy$Tx" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSyunO" resolve="offColor" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="2HLAWGSyA7V" role="3K4Cdx">
              <ref role="1Pybhc" node="30fQumnG8Au" resolve="DclareUtil" />
              <ref role="37wK5l" node="2HLAWGSyA7R" resolve="isColorfulEditors" />
              <node concept="37vLTw" id="2HLAWGSyA7U" role="37wK5m">
                <ref role="3cqZAo" node="2HLAWGSeo9d" resolve="editorContext" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2HLAWGSee$2" role="1B3o_S" />
      <node concept="3uibUv" id="2HLAWGSejfP" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="37vLTG" id="2HLAWGSeo9d" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="2HLAWGSeJW1" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2HLAWGSeqaY" role="3clF46">
        <property role="TrG5h" value="onColor" />
        <node concept="10Oyi0" id="2HLAWGSeqhr" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2HLAWGSyunO" role="3clF46">
        <property role="TrG5h" value="offColor" />
        <node concept="10Oyi0" id="2HLAWGSyupp" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="2HLAWGSyups" role="jymVt">
      <property role="TrG5h" value="ifColor" />
      <node concept="3clFbS" id="2HLAWGSyupt" role="3clF47">
        <node concept="3clFbF" id="2HLAWGSyupu" role="3cqZAp">
          <node concept="3K4zz7" id="2HLAWGSyupv" role="3clFbG">
            <node concept="2ShNRf" id="2HLAWGSyupw" role="3K4E3e">
              <node concept="1pGfFk" id="2HLAWGSyupx" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
                <node concept="37vLTw" id="2HLAWGSyupy" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSyupL" resolve="onColor" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2HLAWGSyuSR" role="3K4GZi">
              <ref role="3cqZAo" node="2HLAWGSyupN" resolve="offColor" />
            </node>
            <node concept="2YIFZM" id="2HLAWGSyA$i" role="3K4Cdx">
              <ref role="1Pybhc" node="30fQumnG8Au" resolve="DclareUtil" />
              <ref role="37wK5l" node="2HLAWGSyA7R" resolve="isColorfulEditors" />
              <node concept="37vLTw" id="2HLAWGSyA$h" role="37wK5m">
                <ref role="3cqZAo" node="2HLAWGSyupJ" resolve="editorContext" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2HLAWGSyupH" role="1B3o_S" />
      <node concept="3uibUv" id="2HLAWGSyupI" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="37vLTG" id="2HLAWGSyupJ" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="2HLAWGSyupK" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2HLAWGSyupL" role="3clF46">
        <property role="TrG5h" value="onColor" />
        <node concept="10Oyi0" id="2HLAWGSyupM" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2HLAWGSyupN" role="3clF46">
        <property role="TrG5h" value="offColor" />
        <node concept="3uibUv" id="2HLAWGSyuQS" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2HLAWGSyB12" role="jymVt">
      <property role="TrG5h" value="ifColor" />
      <node concept="3clFbS" id="2HLAWGSyB13" role="3clF47">
        <node concept="3clFbF" id="2HLAWGSyB14" role="3cqZAp">
          <node concept="3K4zz7" id="2HLAWGSyB15" role="3clFbG">
            <node concept="2YIFZM" id="2HLAWGSyB1a" role="3K4Cdx">
              <ref role="1Pybhc" node="30fQumnG8Au" resolve="DclareUtil" />
              <ref role="37wK5l" node="2HLAWGSyA7R" resolve="isColorfulEditors" />
              <node concept="37vLTw" id="2HLAWGSyB1b" role="37wK5m">
                <ref role="3cqZAo" node="2HLAWGSyB1e" resolve="editorContext" />
              </node>
            </node>
            <node concept="37vLTw" id="2HLAWGSyB18" role="3K4E3e">
              <ref role="3cqZAo" node="2HLAWGSyB1g" resolve="onColor" />
            </node>
            <node concept="2ShNRf" id="2HLAWGSyBVR" role="3K4GZi">
              <node concept="1pGfFk" id="2HLAWGSyBVS" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
                <node concept="37vLTw" id="2HLAWGSyBVT" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSyB1i" resolve="offColor" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2HLAWGSyB1c" role="1B3o_S" />
      <node concept="3uibUv" id="2HLAWGSyB1d" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="37vLTG" id="2HLAWGSyB1e" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="2HLAWGSyB1f" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2HLAWGSyB1g" role="3clF46">
        <property role="TrG5h" value="onColor" />
        <node concept="3uibUv" id="2HLAWGSyBVi" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="37vLTG" id="2HLAWGSyB1i" role="3clF46">
        <property role="TrG5h" value="offColor" />
        <node concept="10Oyi0" id="2HLAWGSyBVN" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="2HLAWGSyBtM" role="jymVt">
      <property role="TrG5h" value="ifColor" />
      <node concept="3clFbS" id="2HLAWGSyBtN" role="3clF47">
        <node concept="3clFbF" id="2HLAWGSyBtO" role="3cqZAp">
          <node concept="3K4zz7" id="2HLAWGSyBtP" role="3clFbG">
            <node concept="37vLTw" id="2HLAWGSyBtT" role="3K4GZi">
              <ref role="3cqZAo" node="2HLAWGSyBu2" resolve="offColor" />
            </node>
            <node concept="2YIFZM" id="2HLAWGSyBtU" role="3K4Cdx">
              <ref role="1Pybhc" node="30fQumnG8Au" resolve="DclareUtil" />
              <ref role="37wK5l" node="2HLAWGSyA7R" resolve="isColorfulEditors" />
              <node concept="37vLTw" id="2HLAWGSyBtV" role="37wK5m">
                <ref role="3cqZAo" node="2HLAWGSyBtY" resolve="editorContext" />
              </node>
            </node>
            <node concept="37vLTw" id="2HLAWGSyBtS" role="3K4E3e">
              <ref role="3cqZAo" node="2HLAWGSyBu0" resolve="onColor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2HLAWGSyBtW" role="1B3o_S" />
      <node concept="3uibUv" id="2HLAWGSyBtX" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="37vLTG" id="2HLAWGSyBtY" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="2HLAWGSyBtZ" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2HLAWGSyBu0" role="3clF46">
        <property role="TrG5h" value="onColor" />
        <node concept="3uibUv" id="2HLAWGSyBWr" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="37vLTG" id="2HLAWGSyBu2" role="3clF46">
        <property role="TrG5h" value="offColor" />
        <node concept="3uibUv" id="2HLAWGSyBu3" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2HLAWGTiCfM" role="jymVt">
      <property role="TrG5h" value="ifStyle" />
      <node concept="3clFbS" id="2HLAWGTiCfN" role="3clF47">
        <node concept="3clFbF" id="2HLAWGTiCfO" role="3cqZAp">
          <node concept="3K4zz7" id="2HLAWGTiCfP" role="3clFbG">
            <node concept="37vLTw" id="2HLAWGTiCfQ" role="3K4GZi">
              <ref role="3cqZAo" node="2HLAWGTiCg0" resolve="off" />
            </node>
            <node concept="2YIFZM" id="2HLAWGTiCfR" role="3K4Cdx">
              <ref role="1Pybhc" node="30fQumnG8Au" resolve="DclareUtil" />
              <ref role="37wK5l" node="2HLAWGSyA7R" resolve="isColorfulEditors" />
              <node concept="37vLTw" id="2HLAWGTiCfS" role="37wK5m">
                <ref role="3cqZAo" node="2HLAWGTiCfW" resolve="editorContext" />
              </node>
            </node>
            <node concept="37vLTw" id="2HLAWGTiCfT" role="3K4E3e">
              <ref role="3cqZAo" node="2HLAWGTiCfY" resolve="on" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2HLAWGTiCfU" role="1B3o_S" />
      <node concept="10Oyi0" id="2HLAWGTl1Y6" role="3clF45" />
      <node concept="37vLTG" id="2HLAWGTiCfW" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="2HLAWGTiCfX" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2HLAWGTiCfY" role="3clF46">
        <property role="TrG5h" value="on" />
        <node concept="10Oyi0" id="2HLAWGTl1YB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2HLAWGTiCg0" role="3clF46">
        <property role="TrG5h" value="off" />
        <node concept="10Oyi0" id="2HLAWGTl1Z8" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="5lm94DJqGCT" role="jymVt">
      <property role="TrG5h" value="separatorHeight" />
      <node concept="3clFbS" id="5lm94DJqGCU" role="3clF47">
        <node concept="3clFbF" id="5lm94DJqGCV" role="3cqZAp">
          <node concept="3cmrfG" id="5lm94DJPunN" role="3clFbG">
            <property role="3cmrfH" value="3" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5lm94DJqGD1" role="1B3o_S" />
      <node concept="10Oyi0" id="5lm94DJqGD2" role="3clF45" />
      <node concept="37vLTG" id="5lm94DJqGD3" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="5lm94DJqGD4" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2HLAWGTiBM_" role="jymVt" />
    <node concept="2YIFZL" id="4Y8BM43o88y" role="jymVt">
      <property role="TrG5h" value="getAttributes" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="4Y8BM43o88_" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="4Y8BM43o88A" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="4Y8BM43o88B" role="3clF47">
        <node concept="3clFbF" id="4Y8BM43o9KK" role="3cqZAp">
          <node concept="10QFUN" id="4Y8BM43oaMd" role="3clFbG">
            <node concept="2OqwBi" id="4Y8BM43oaqz" role="10QFUP">
              <node concept="1eOMI4" id="4Y8BM43oadw" role="2Oq$k0">
                <node concept="10QFUN" id="4Y8BM43oagw" role="1eOMHV">
                  <node concept="3uibUv" id="4wbMdoJv1ie" role="10QFUM">
                    <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                  </node>
                  <node concept="37vLTw" id="4Y8BM43o9KJ" role="10QFUP">
                    <ref role="3cqZAo" node="4Y8BM43o88_" resolve="object" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4Y8BM43oaxi" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DObject.getNonSyntheticAttributes()" resolve="getNonSyntheticAttributes" />
              </node>
            </node>
            <node concept="A3Dl8" id="4Y8BM43oaMe" role="10QFUM">
              <node concept="3uibUv" id="4Y8BM43odSo" role="A3Ik2">
                <ref role="3uigEE" to="t4tl:~DAttribute" resolve="DAttribute" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Y8BM43o88M" role="1B3o_S" />
      <node concept="A3Dl8" id="4Y8BM43o9lz" role="3clF45">
        <node concept="3uibUv" id="4Y8BM43oeiT" role="A3Ik2">
          <ref role="3uigEE" to="t4tl:~DAttribute" resolve="DAttribute" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Y8BM43o7rh" role="jymVt" />
    <node concept="2YIFZL" id="41CotWWs3bj" role="jymVt">
      <property role="TrG5h" value="dIssue" />
      <node concept="3clFbS" id="45beoc8yCW7" role="3clF47">
        <node concept="3clFbF" id="7qx2SEVuXsj" role="3cqZAp">
          <node concept="1rXfSq" id="7qx2SEVuXsk" role="3clFbG">
            <ref role="37wK5l" node="7qx2SEVuLBV" resolve="toNonMutable" />
            <node concept="37vLTw" id="7qx2SEVuYhq" role="37wK5m">
              <ref role="3cqZAo" node="2iL65LTRmg0" resolve="identity" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2iL65LTRi45" role="3cqZAp">
          <node concept="2YIFZM" id="2iL65LTRi7m" role="3clFbG">
            <ref role="1Pybhc" to="t4tl:~DIssue" resolve="DIssue" />
            <ref role="37wK5l" to="t4tl:~DIssue.of(java.util.function.Supplier,java.util.function.Supplier,java.util.function.Supplier,java.util.function.Supplier,java.lang.Object[])" resolve="of" />
            <node concept="2ShNRf" id="1eAr2aCjf8b" role="37wK5m">
              <node concept="YeOm9" id="1eAr2aCjlPh" role="2ShVmc">
                <node concept="1Y3b0j" id="1eAr2aCjlPk" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="82uw:~Supplier" resolve="Supplier" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="1eAr2aCjlPl" role="1B3o_S" />
                  <node concept="3clFb_" id="1eAr2aCjlPq" role="jymVt">
                    <property role="TrG5h" value="get" />
                    <node concept="3Tm1VV" id="1eAr2aCjlPr" role="1B3o_S" />
                    <node concept="3uibUv" id="1eAr2aCjlP$" role="3clF45">
                      <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                    </node>
                    <node concept="3clFbS" id="1eAr2aCjlPu" role="3clF47">
                      <node concept="3clFbF" id="1eAr2aCjnHe" role="3cqZAp">
                        <node concept="10QFUN" id="1eAr2aCjnSN" role="3clFbG">
                          <node concept="3uibUv" id="1eAr2aCjnW8" role="10QFUM">
                            <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                          </node>
                          <node concept="2OqwBi" id="1eAr2aCjnJV" role="10QFUP">
                            <node concept="37vLTw" id="1eAr2aCjnHd" role="2Oq$k0">
                              <ref role="3cqZAo" node="45beoc8yKDs" resolve="object" />
                            </node>
                            <node concept="1Bd96e" id="1eAr2aCjnMT" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="1eAr2aCjlPw" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="1eAr2aCjlPz" role="2Ghqu4">
                    <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="4A0PXFczPwX" role="37wK5m">
              <node concept="YeOm9" id="4A0PXFczWiG" role="2ShVmc">
                <node concept="1Y3b0j" id="4A0PXFczWiJ" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="82uw:~Supplier" resolve="Supplier" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="4A0PXFczWiK" role="1B3o_S" />
                  <node concept="3clFb_" id="4A0PXFczWiP" role="jymVt">
                    <property role="TrG5h" value="get" />
                    <node concept="3Tm1VV" id="4A0PXFczWiQ" role="1B3o_S" />
                    <node concept="3uibUv" id="4A0PXFczWiZ" role="3clF45">
                      <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                    </node>
                    <node concept="3clFbS" id="4A0PXFczWiT" role="3clF47">
                      <node concept="3clFbF" id="4A0PXFczYbL" role="3cqZAp">
                        <node concept="2OqwBi" id="4A0PXFczYeW" role="3clFbG">
                          <node concept="37vLTw" id="4A0PXFczYbK" role="2Oq$k0">
                            <ref role="3cqZAo" node="45beoc8yLLT" resolve="severity" />
                          </node>
                          <node concept="1Bd96e" id="4A0PXFczYio" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="4A0PXFczWiV" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4A0PXFczWiY" role="2Ghqu4">
                    <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="4A0PXFczYNW" role="37wK5m">
              <node concept="YeOm9" id="4A0PXFczZgU" role="2ShVmc">
                <node concept="1Y3b0j" id="4A0PXFczZgX" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="82uw:~Supplier" resolve="Supplier" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="4A0PXFczZgY" role="1B3o_S" />
                  <node concept="3clFb_" id="4A0PXFczZh3" role="jymVt">
                    <property role="TrG5h" value="get" />
                    <node concept="3Tm1VV" id="4A0PXFczZh4" role="1B3o_S" />
                    <node concept="3uibUv" id="4A0PXFczZhd" role="3clF45">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="3clFbS" id="4A0PXFczZh7" role="3clF47">
                      <node concept="3clFbF" id="4A0PXFc$1dU" role="3cqZAp">
                        <node concept="2OqwBi" id="4A0PXFc$1hj" role="3clFbG">
                          <node concept="37vLTw" id="4A0PXFc$1dT" role="2Oq$k0">
                            <ref role="3cqZAo" node="6NZFdbTOB$E" resolve="feature" />
                          </node>
                          <node concept="1Bd96e" id="4A0PXFc$1kJ" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="4A0PXFczZh9" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4A0PXFczZhc" role="2Ghqu4">
                    <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="2iL65LTRvCz" role="37wK5m">
              <node concept="YeOm9" id="2iL65LTRvC$" role="2ShVmc">
                <node concept="1Y3b0j" id="2iL65LTRvC_" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="82uw:~Supplier" resolve="Supplier" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="2iL65LTRvCA" role="1B3o_S" />
                  <node concept="3clFb_" id="2iL65LTRvCB" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="get" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <node concept="3Tm1VV" id="2iL65LTRvCC" role="1B3o_S" />
                    <node concept="3uibUv" id="2iL65LTRx_Y" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="3clFbS" id="2iL65LTRvCE" role="3clF47">
                      <node concept="3clFbF" id="2iL65LTRvCF" role="3cqZAp">
                        <node concept="2OqwBi" id="2iL65LTRvCG" role="3clFbG">
                          <node concept="37vLTw" id="2iL65LTRxMB" role="2Oq$k0">
                            <ref role="3cqZAo" node="2iL65LTRo1G" resolve="message" />
                          </node>
                          <node concept="1Bd96e" id="2iL65LTRvCI" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="2iL65LTRxq1" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6GOaSdwDed_" role="37wK5m">
              <ref role="3cqZAo" node="2iL65LTRmg0" resolve="identity" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45beoc8yKDs" role="3clF46">
        <property role="TrG5h" value="object" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="1eAr2aCjajs" role="1tU5fm">
          <node concept="3uibUv" id="1eAr2aCjczU" role="1ajl9A">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="45beoc8yLLT" role="3clF46">
        <property role="TrG5h" value="severity" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="wH5jBlReRc" role="1tU5fm">
          <node concept="3uibUv" id="wH5jBlRf1C" role="1ajl9A">
            <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6NZFdbTOB$E" role="3clF46">
        <property role="TrG5h" value="feature" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="wH5jBlRfc3" role="1tU5fm">
          <node concept="3uibUv" id="wH5jBlRfmV" role="1ajl9A">
            <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2iL65LTRo1G" role="3clF46">
        <property role="TrG5h" value="message" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="2iL65LTRo4v" role="1tU5fm">
          <node concept="17QB3L" id="2iL65LTRo6s" role="1ajl9A" />
        </node>
      </node>
      <node concept="37vLTG" id="2iL65LTRmg0" role="3clF46">
        <property role="TrG5h" value="identity" />
        <node concept="10Q1$e" id="6GOaSdwDatf" role="1tU5fm">
          <node concept="3uibUv" id="6GOaSdwDatg" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2iL65LTRhTw" role="3clF45" />
      <node concept="3Tm1VV" id="45beoc8yCWe" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="45beoc8yGKp" role="jymVt" />
    <node concept="2YIFZL" id="45beoc8qq9a" role="jymVt">
      <property role="TrG5h" value="getIssues" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="45beoc8qq9b" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="QAunT1ZFTB" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="45beoc8qq9d" role="3clF47">
        <node concept="3clFbF" id="45beoc8qq9e" role="3cqZAp">
          <node concept="2OqwBi" id="45beoc8qq9g" role="3clFbG">
            <node concept="1eOMI4" id="45beoc8qq9h" role="2Oq$k0">
              <node concept="10QFUN" id="45beoc8qq9i" role="1eOMHV">
                <node concept="3uibUv" id="QAunT1ZZ98" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                </node>
                <node concept="37vLTw" id="45beoc8qq9k" role="10QFUP">
                  <ref role="3cqZAo" node="45beoc8qq9b" resolve="object" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="45beoc8qtIg" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DNode.getIssues()" resolve="getIssues" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="45beoc8qq9o" role="1B3o_S" />
      <node concept="2hMVRd" id="45beoc8qu0a" role="3clF45">
        <node concept="3uibUv" id="QAunT1Zpke" role="2hN53Y">
          <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="QAunT1ZyXo" role="jymVt" />
    <node concept="2YIFZL" id="QAunT1ZqJ_" role="jymVt">
      <property role="TrG5h" value="getIssues" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="QAunT1ZqJA" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="QAunT1ZDL1" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="QAunT1ZqJC" role="3clF47">
        <node concept="3clFbF" id="QAunT1ZqJD" role="3cqZAp">
          <node concept="2OqwBi" id="QAunT1ZqJF" role="3clFbG">
            <node concept="1eOMI4" id="QAunT1ZqJG" role="2Oq$k0">
              <node concept="10QFUN" id="QAunT1ZqJH" role="1eOMHV">
                <node concept="3uibUv" id="QAunT1ZZj3" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                </node>
                <node concept="37vLTw" id="QAunT1ZqJJ" role="10QFUP">
                  <ref role="3cqZAo" node="QAunT1ZqJA" resolve="object" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="QAunT1ZqJK" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DModel.getIssues()" resolve="getIssues" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="QAunT1ZqJN" role="1B3o_S" />
      <node concept="2hMVRd" id="QAunT1ZqJO" role="3clF45">
        <node concept="3uibUv" id="QAunT1Z$xO" role="2hN53Y">
          <ref role="3uigEE" to="d6hs:~ModelReportItem" resolve="ModelReportItem" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="QAunT1Zs9W" role="jymVt" />
    <node concept="2YIFZL" id="QAunT1ZtFk" role="jymVt">
      <property role="TrG5h" value="getIssues" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="QAunT1ZtFl" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="QAunT1ZFHp" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3clFbS" id="QAunT1ZtFn" role="3clF47">
        <node concept="3clFbF" id="QAunT1ZtFo" role="3cqZAp">
          <node concept="2OqwBi" id="QAunT1ZtFq" role="3clFbG">
            <node concept="1eOMI4" id="QAunT1ZtFr" role="2Oq$k0">
              <node concept="10QFUN" id="QAunT1ZtFs" role="1eOMHV">
                <node concept="3uibUv" id="QAunT1ZZtP" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
                </node>
                <node concept="37vLTw" id="QAunT1ZtFu" role="10QFUP">
                  <ref role="3cqZAo" node="QAunT1ZtFl" resolve="object" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="QAunT1ZtFv" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DModule.getIssues()" resolve="getIssues" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="QAunT1ZtFy" role="1B3o_S" />
      <node concept="2hMVRd" id="QAunT1ZtFz" role="3clF45">
        <node concept="3uibUv" id="QAunT1Z$S4" role="2hN53Y">
          <ref role="3uigEE" to="d6hs:~ModuleReportItem" resolve="ModuleReportItem" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1prswk9imf$" role="jymVt" />
    <node concept="2YIFZL" id="1prswk9iwp4" role="jymVt">
      <property role="TrG5h" value="getAspect" />
      <node concept="37vLTG" id="1prswk9iwp5" role="3clF46">
        <property role="TrG5h" value="language" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1prswk9iwp6" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="37vLTG" id="1prswk9iwp7" role="3clF46">
        <property role="TrG5h" value="id" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="1prswk9iwp8" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1prswk9iwp9" role="3clF47">
        <node concept="3cpWs6" id="1prswk9iwpa" role="3cqZAp">
          <node concept="2YIFZM" id="1prswk9iwpb" role="3cqZAk">
            <ref role="1Pybhc" to="t4tl:~IAspect" resolve="IAspect" />
            <ref role="37wK5l" to="t4tl:~IAspect.of(org.jetbrains.mps.openapi.language.SLanguage,java.lang.String)" resolve="of" />
            <node concept="37vLTw" id="1prswk9iwpc" role="37wK5m">
              <ref role="3cqZAo" node="1prswk9iwp5" resolve="language" />
            </node>
            <node concept="37vLTw" id="1prswk9iwpd" role="37wK5m">
              <ref role="3cqZAo" node="1prswk9iwp7" resolve="id" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1prswk9iwpe" role="1B3o_S" />
      <node concept="3uibUv" id="1prswk9j7_q" role="3clF45">
        <ref role="3uigEE" to="t4tl:~IAspect" resolve="IAspect" />
      </node>
    </node>
    <node concept="2tJIrI" id="1prswk9iryn" role="jymVt" />
    <node concept="2YIFZL" id="4xaBPI8df35" role="jymVt">
      <property role="TrG5h" value="getAttribute" />
      <node concept="37vLTG" id="4xaBPI8dvpK" role="3clF46">
        <property role="TrG5h" value="language" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4xaBPI8dvpL" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="37vLTG" id="4xaBPI8dvpM" role="3clF46">
        <property role="TrG5h" value="id" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="4xaBPI8dvpN" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4xaBPI8df38" role="3clF47">
        <node concept="3cpWs6" id="4xaBPI8doIM" role="3cqZAp">
          <node concept="2YIFZM" id="4xaBPI8dtFL" role="3cqZAk">
            <ref role="37wK5l" to="t4tl:~DAttribute.of(org.jetbrains.mps.openapi.language.SLanguage,java.lang.String)" resolve="of" />
            <ref role="1Pybhc" to="t4tl:~DAttribute" resolve="DAttribute" />
            <node concept="37vLTw" id="4xaBPI8dx64" role="37wK5m">
              <ref role="3cqZAo" node="4xaBPI8dvpK" resolve="language" />
            </node>
            <node concept="37vLTw" id="4xaBPI8dxTH" role="37wK5m">
              <ref role="3cqZAo" node="4xaBPI8dvpM" resolve="id" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xaBPI8d1WA" role="1B3o_S" />
      <node concept="3uibUv" id="4xaBPI8ddqk" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DAttribute" resolve="DAttribute" />
        <node concept="16syzq" id="4xaBPI8dqh0" role="11_B2D">
          <ref role="16sUi3" node="4xaBPI8dp4Q" resolve="O" />
        </node>
        <node concept="16syzq" id="4xaBPI8dqBw" role="11_B2D">
          <ref role="16sUi3" node="4xaBPI8dpqS" resolve="T" />
        </node>
      </node>
      <node concept="16euLQ" id="4xaBPI8dp4Q" role="16eVyc">
        <property role="TrG5h" value="O" />
      </node>
      <node concept="16euLQ" id="4xaBPI8dpqS" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="1Xoy$rYf$7d" role="jymVt" />
    <node concept="2YIFZL" id="1Xoy$rYfEN7" role="jymVt">
      <property role="TrG5h" value="getAttributeValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1Xoy$rYfENe" role="3clF47">
        <node concept="3clFbJ" id="2VzmrKH_CvC" role="3cqZAp">
          <node concept="3clFbS" id="2VzmrKH_CvE" role="3clFbx">
            <node concept="3cpWs6" id="5Ne7YwZK5ia" role="3cqZAp">
              <node concept="1rXfSq" id="5Ne7YwZK5AA" role="3cqZAk">
                <ref role="37wK5l" node="5$bRKnREcAj" resolve="getAttributeValue" />
                <node concept="2YIFZM" id="71pC$ATHXi$" role="37wK5m">
                  <ref role="1Pybhc" to="t4tl:~DAttribute" resolve="DAttribute" />
                  <ref role="37wK5l" to="t4tl:~DAttribute.of(org.jetbrains.mps.openapi.language.SLanguage,java.lang.String)" resolve="of" />
                  <node concept="37vLTw" id="3oiY5XYZWQf" role="37wK5m">
                    <ref role="3cqZAo" node="3oiY5XYY1Jv" resolve="language" />
                  </node>
                  <node concept="37vLTw" id="71pC$ATHXi_" role="37wK5m">
                    <ref role="3cqZAo" node="1Xoy$rYfRJu" resolve="id" />
                  </node>
                  <node concept="16syzq" id="71pC$ATHXiA" role="3PaCim">
                    <ref role="16sUi3" node="1Xoy$rYfENI" resolve="O" />
                  </node>
                  <node concept="16syzq" id="71pC$ATHXiB" role="3PaCim">
                    <ref role="16sUi3" node="1Xoy$rYfENJ" resolve="T" />
                  </node>
                </node>
                <node concept="37vLTw" id="5Ne7YwZK7fF" role="37wK5m">
                  <ref role="3cqZAo" node="1Xoy$rYfENc" resolve="object" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2VzmrKH_D7o" role="3clFbw">
            <node concept="3uibUv" id="2VzmrKH_EyT" role="2ZW6by">
              <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
            </node>
            <node concept="37vLTw" id="2VzmrKH_CP5" role="2ZW6bz">
              <ref role="3cqZAo" node="1Xoy$rYfENc" resolve="object" />
            </node>
          </node>
          <node concept="9aQIb" id="2VzmrKH_G1Z" role="9aQIa">
            <node concept="3clFbS" id="2VzmrKH_G20" role="9aQI4">
              <node concept="3cpWs6" id="54lhvuXGzMP" role="3cqZAp">
                <node concept="2YIFZM" id="1bjvCAOm7X4" role="3cqZAk">
                  <ref role="37wK5l" to="t4tl:~DClareMPS.get(java.lang.Object,java.util.function.Supplier)" resolve="get" />
                  <ref role="1Pybhc" to="t4tl:~DClareMPS" resolve="DClareMPS" />
                  <node concept="37vLTw" id="1bjvCAOmait" role="37wK5m">
                    <ref role="3cqZAo" node="1Xoy$rYfENc" resolve="object" />
                  </node>
                  <node concept="2ShNRf" id="6z6Ucdn5y8Y" role="37wK5m">
                    <node concept="YeOm9" id="6z6Ucdn5Apq" role="2ShVmc">
                      <node concept="1Y3b0j" id="6z6Ucdn5Apt" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <ref role="1Y3XeK" to="82uw:~Supplier" resolve="Supplier" />
                        <node concept="3Tm1VV" id="6z6Ucdn5Apu" role="1B3o_S" />
                        <node concept="3clFb_" id="6z6Ucdn5Apz" role="jymVt">
                          <property role="TrG5h" value="get" />
                          <node concept="3Tm1VV" id="6z6Ucdn5Ap$" role="1B3o_S" />
                          <node concept="16syzq" id="6z6Ucdn5KpG" role="3clF45">
                            <ref role="16sUi3" node="1Xoy$rYfENJ" resolve="T" />
                          </node>
                          <node concept="3clFbS" id="6z6Ucdn5ApB" role="3clF47">
                            <node concept="3cpWs8" id="6z6Ucdn5PVP" role="3cqZAp">
                              <node concept="3cpWsn" id="6z6Ucdn5PVQ" role="3cpWs9">
                                <property role="TrG5h" value="attr" />
                                <node concept="3uibUv" id="6z6Ucdn5PVN" role="1tU5fm">
                                  <ref role="3uigEE" to="t4tl:~DAttribute" resolve="DAttribute" />
                                  <node concept="16syzq" id="6z6Ucdn5QhH" role="11_B2D">
                                    <ref role="16sUi3" node="1Xoy$rYfENI" resolve="O" />
                                  </node>
                                  <node concept="16syzq" id="6z6Ucdn5QzK" role="11_B2D">
                                    <ref role="16sUi3" node="1Xoy$rYfENJ" resolve="T" />
                                  </node>
                                </node>
                                <node concept="2YIFZM" id="6Q3AoF0bSo1" role="33vP2m">
                                  <ref role="1Pybhc" to="t4tl:~DAttribute" resolve="DAttribute" />
                                  <ref role="37wK5l" to="t4tl:~DAttribute.of(org.jetbrains.mps.openapi.language.SLanguage,java.lang.String)" resolve="of" />
                                  <node concept="37vLTw" id="3oiY5XYZVE$" role="37wK5m">
                                    <ref role="3cqZAo" node="3oiY5XYY1Jv" resolve="language" />
                                  </node>
                                  <node concept="37vLTw" id="6Q3AoF0bSo2" role="37wK5m">
                                    <ref role="3cqZAo" node="1Xoy$rYfRJu" resolve="id" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="5Sei4qNmz2$" role="3cqZAp">
                              <node concept="2YIFZM" id="4sx0mC_nOHM" role="3cqZAk">
                                <ref role="37wK5l" node="7cS5T_tZIIK" resolve="toSObject" />
                                <ref role="1Pybhc" node="30fQumnG8Au" resolve="DclareUtil" />
                                <node concept="37vLTw" id="4sx0mC_nOHN" role="37wK5m">
                                  <ref role="3cqZAo" node="6z6Ucdn5PVQ" resolve="attr" />
                                </node>
                                <node concept="2OqwBi" id="4sx0mC_nOHO" role="37wK5m">
                                  <node concept="liA8E" id="4sx0mC_nOHP" role="2OqNvi">
                                    <ref role="37wK5l" to="t4tl:~DAttribute.get(java.lang.Object)" resolve="get" />
                                    <node concept="1rXfSq" id="4sx0mC_nOHQ" role="37wK5m">
                                      <ref role="37wK5l" node="7cS5T_tZh5f" resolve="toDObject" />
                                      <node concept="37vLTw" id="4sx0mC_nOHR" role="37wK5m">
                                        <ref role="3cqZAo" node="1Xoy$rYfENc" resolve="object" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="4sx0mC_nOHS" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6z6Ucdn5PVQ" resolve="attr" />
                                  </node>
                                </node>
                                <node concept="16syzq" id="4sx0mC_nVTV" role="3PaCim">
                                  <ref role="16sUi3" node="1Xoy$rYfENJ" resolve="T" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="6z6Ucdn5ApD" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                        <node concept="16syzq" id="6z6Ucdn5K0n" role="2Ghqu4">
                          <ref role="16sUi3" node="1Xoy$rYfENJ" resolve="T" />
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
      <node concept="3Tm1VV" id="1Xoy$rYfENG" role="1B3o_S" />
      <node concept="16syzq" id="1Xoy$rYfENH" role="3clF45">
        <ref role="16sUi3" node="1Xoy$rYfENJ" resolve="T" />
      </node>
      <node concept="16euLQ" id="1Xoy$rYfENI" role="16eVyc">
        <property role="TrG5h" value="O" />
      </node>
      <node concept="16euLQ" id="1Xoy$rYfENJ" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="37vLTG" id="3oiY5XYY1Jv" role="3clF46">
        <property role="TrG5h" value="language" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3oiY5XYY1Jw" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="37vLTG" id="1Xoy$rYfRJu" role="3clF46">
        <property role="TrG5h" value="id" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="1Xoy$rYfUel" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1Xoy$rYfENc" role="3clF46">
        <property role="TrG5h" value="object" />
        <property role="3TUv4t" value="true" />
        <node concept="16syzq" id="1Xoy$rYfENd" role="1tU5fm">
          <ref role="16sUi3" node="1Xoy$rYfENI" resolve="O" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5$bRKnRE9nF" role="jymVt" />
    <node concept="2YIFZL" id="5$bRKnREcAj" role="jymVt">
      <property role="TrG5h" value="getAttributeValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="5$bRKnREcAk" role="3clF46">
        <property role="TrG5h" value="attr" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="by_B4PA59g" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DAttribute" resolve="DAttribute" />
          <node concept="16syzq" id="by_B4PAu1S" role="11_B2D">
            <ref role="16sUi3" node="5$bRKnREcA$" resolve="O" />
          </node>
          <node concept="16syzq" id="by_B4PAuHr" role="11_B2D">
            <ref role="16sUi3" node="5$bRKnREcA_" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5$bRKnREcAo" role="3clF46">
        <property role="TrG5h" value="object" />
        <property role="3TUv4t" value="true" />
        <node concept="16syzq" id="5$bRKnREcAp" role="1tU5fm">
          <ref role="16sUi3" node="5$bRKnREcA$" resolve="O" />
        </node>
      </node>
      <node concept="3clFbS" id="5$bRKnREcAq" role="3clF47">
        <node concept="3cpWs6" id="7cS5T_tZ9e5" role="3cqZAp">
          <node concept="2YIFZM" id="7cS5T_tZ9kV" role="3cqZAk">
            <ref role="37wK5l" node="3DB41z9GGdu" resolve="toMutable" />
            <ref role="1Pybhc" node="30fQumnG8Au" resolve="DclareUtil" />
            <node concept="37vLTw" id="7cS5T_tZ9kW" role="37wK5m">
              <ref role="3cqZAo" node="5$bRKnREcAk" resolve="attr" />
            </node>
            <node concept="2OqwBi" id="7cS5T_tZ9kX" role="37wK5m">
              <node concept="liA8E" id="7cS5T_tZ9kY" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DAttribute.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="7cS5T_tZ9kZ" role="37wK5m">
                  <ref role="3cqZAo" node="5$bRKnREcAo" resolve="object" />
                </node>
              </node>
              <node concept="37vLTw" id="7cS5T_tZ9l0" role="2Oq$k0">
                <ref role="3cqZAo" node="5$bRKnREcAk" resolve="attr" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5$bRKnREcAy" role="1B3o_S" />
      <node concept="16syzq" id="5$bRKnREcAz" role="3clF45">
        <ref role="16sUi3" node="5$bRKnREcA_" resolve="T" />
      </node>
      <node concept="16euLQ" id="5$bRKnREcA$" role="16eVyc">
        <property role="TrG5h" value="O" />
      </node>
      <node concept="16euLQ" id="5$bRKnREcA_" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="21fkvY4MAWi" role="jymVt" />
    <node concept="2YIFZL" id="1lQ5DPQt_o8" role="jymVt">
      <property role="TrG5h" value="setAttributeValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="1lQ5DPQt_o9" role="3clF46">
        <property role="TrG5h" value="attr" />
        <node concept="3uibUv" id="1GhXIFRY9YB" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DAttribute" resolve="DAttribute" />
          <node concept="16syzq" id="1GhXIFRYbNN" role="11_B2D">
            <ref role="16sUi3" node="1GhXIFRYbFD" resolve="O" />
          </node>
          <node concept="16syzq" id="1GhXIFRYbVT" role="11_B2D">
            <ref role="16sUi3" node="1lQ5DPQt_oo" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1lQ5DPQt_ob" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="16syzq" id="1GhXIFRYf4q" role="1tU5fm">
          <ref role="16sUi3" node="1GhXIFRYbFD" resolve="O" />
        </node>
      </node>
      <node concept="37vLTG" id="1lQ5DPQtAgA" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="3u6Ya6vHVI9" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="1lQ5DPQt_od" role="3clF47">
        <node concept="3clFbF" id="1lQ5DPQt_oe" role="3cqZAp">
          <node concept="2OqwBi" id="1lQ5DPQt_of" role="3clFbG">
            <node concept="liA8E" id="1lQ5DPQt_oi" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DAttribute.set(java.lang.Object,java.lang.Object)" resolve="set" />
              <node concept="37vLTw" id="1lQ5DPQt_oj" role="37wK5m">
                <ref role="3cqZAo" node="1lQ5DPQt_ob" resolve="object" />
              </node>
              <node concept="2YIFZM" id="3DB41z9GPiE" role="37wK5m">
                <ref role="1Pybhc" node="30fQumnG8Au" resolve="DclareUtil" />
                <ref role="37wK5l" node="3DB41z9GPiA" resolve="toNonMutable" />
                <node concept="37vLTw" id="1GhXIFRYeno" role="37wK5m">
                  <ref role="3cqZAo" node="1lQ5DPQt_o9" resolve="attr" />
                </node>
                <node concept="37vLTw" id="3DB41z9GPiD" role="37wK5m">
                  <ref role="3cqZAo" node="1lQ5DPQtAgA" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1GhXIFRYdtw" role="2Oq$k0">
              <ref role="3cqZAo" node="1lQ5DPQt_o9" resolve="attr" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1lQ5DPQt_ok" role="1B3o_S" />
      <node concept="3cqZAl" id="1lQ5DPQt_ol" role="3clF45" />
      <node concept="16euLQ" id="1GhXIFRYbFD" role="16eVyc">
        <property role="TrG5h" value="O" />
      </node>
      <node concept="16euLQ" id="1lQ5DPQt_oo" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="4dRWk3pe7bv" role="jymVt" />
    <node concept="2YIFZL" id="7cS5T_tZIIK" role="jymVt">
      <property role="TrG5h" value="toSObject" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="4sx0mC_nRp5" role="3clF46">
        <property role="TrG5h" value="attr" />
        <node concept="3uibUv" id="4sx0mC_nRp6" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DAttribute" resolve="DAttribute" />
          <node concept="3qTvmN" id="4sx0mC_nRp7" role="11_B2D" />
          <node concept="16syzq" id="4sx0mC_nS6b" role="11_B2D">
            <ref role="16sUi3" node="7cS5T_tZIJF" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7cS5T_tZIIL" role="3clF46">
        <property role="TrG5h" value="dObject" />
        <node concept="16syzq" id="7cS5T_tZIIM" role="1tU5fm">
          <ref role="16sUi3" node="7cS5T_tZIJF" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="7cS5T_tZIIN" role="3clF47">
        <node concept="3cpWs8" id="4sx0mC_o0g9" role="3cqZAp">
          <node concept="3cpWsn" id="4sx0mC_o0ga" role="3cpWs9">
            <property role="TrG5h" value="cls" />
            <node concept="3uibUv" id="4sx0mC_o0gb" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
              <node concept="3qTvmN" id="4sx0mC_o0gc" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="4sx0mC_o0gd" role="33vP2m">
              <node concept="37vLTw" id="4sx0mC_o0ge" role="2Oq$k0">
                <ref role="3cqZAo" node="4sx0mC_nRp5" resolve="attr" />
              </node>
              <node concept="liA8E" id="4sx0mC_o0gf" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DAttribute.cls()" resolve="cls" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4sx0mC_nWq3" role="3cqZAp">
          <node concept="3clFbS" id="4sx0mC_nWq4" role="3clFbx">
            <node concept="3cpWs6" id="4sx0mC_opNC" role="3cqZAp">
              <node concept="10QFUN" id="4sx0mC_nWq8" role="3cqZAk">
                <node concept="16syzq" id="4sx0mC_oh94" role="10QFUM">
                  <ref role="16sUi3" node="7cS5T_tZIJF" resolve="T" />
                </node>
                <node concept="2OqwBi" id="4sx0mC_nWqa" role="10QFUP">
                  <node concept="2OqwBi" id="4sx0mC_rtwQ" role="2Oq$k0">
                    <node concept="1eOMI4" id="4sx0mC_nWqb" role="2Oq$k0">
                      <node concept="10QFUN" id="4sx0mC_nWqc" role="1eOMHV">
                        <node concept="3uibUv" id="4sx0mC_nWqd" role="10QFUM">
                          <ref role="3uigEE" to="zrbp:~Collection" resolve="Collection" />
                          <node concept="3uibUv" id="4sx0mC_uHYe" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4sx0mC_omo$" role="10QFUP">
                          <ref role="3cqZAo" node="7cS5T_tZIIL" resolve="dObject" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4sx0mC_rwBu" role="2OqNvi">
                      <ref role="37wK5l" to="zrbp:~Collection.map(java.util.function.Function)" resolve="map" />
                      <node concept="1bVj0M" id="4sx0mC_s8lC" role="37wK5m">
                        <node concept="3clFbS" id="4sx0mC_s8lE" role="1bW5cS">
                          <node concept="3clFbF" id="4sx0mC_sfKk" role="3cqZAp">
                            <node concept="1rXfSq" id="4sx0mC_sfKj" role="3clFbG">
                              <ref role="37wK5l" node="4sx0mC_spGq" resolve="toSObject" />
                              <node concept="37vLTw" id="4sx0mC_tWFI" role="37wK5m">
                                <ref role="3cqZAo" node="4sx0mC_tMQW" resolve="e" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="4sx0mC_tMQW" role="1bW2Oz">
                          <property role="TrG5h" value="e" />
                          <node concept="3uibUv" id="4sx0mC_tRuD" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4sx0mC_nWqf" role="2OqNvi">
                    <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                    <node concept="2YIFZM" id="4sx0mC_nWqg" role="37wK5m">
                      <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                      <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4sx0mC_nWqh" role="3eNLev">
            <node concept="3clFbS" id="4sx0mC_nWqi" role="3eOfB_">
              <node concept="3cpWs6" id="4sx0mC_ouNI" role="3cqZAp">
                <node concept="10QFUN" id="4sx0mC_nWqm" role="3cqZAk">
                  <node concept="16syzq" id="4sx0mC_nWqn" role="10QFUM">
                    <ref role="16sUi3" node="7cS5T_tZIJF" resolve="T" />
                  </node>
                  <node concept="2OqwBi" id="4sx0mC_nWqo" role="10QFUP">
                    <node concept="2OqwBi" id="4sx0mC_rysp" role="2Oq$k0">
                      <node concept="1eOMI4" id="4sx0mC_nWqp" role="2Oq$k0">
                        <node concept="10QFUN" id="4sx0mC_nWqq" role="1eOMHV">
                          <node concept="3uibUv" id="4sx0mC_nWqr" role="10QFUM">
                            <ref role="3uigEE" to="zrbp:~Collection" resolve="Collection" />
                            <node concept="3uibUv" id="4sx0mC_uLvO" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="4sx0mC_onVC" role="10QFUP">
                            <ref role="3cqZAo" node="7cS5T_tZIIL" resolve="dObject" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4sx0mC_r_BI" role="2OqNvi">
                        <ref role="37wK5l" to="zrbp:~Collection.map(java.util.function.Function)" resolve="map" />
                        <node concept="1bVj0M" id="4sx0mC_sL0_" role="37wK5m">
                          <node concept="3clFbS" id="4sx0mC_sL0A" role="1bW5cS">
                            <node concept="3clFbF" id="4sx0mC_sL0B" role="3cqZAp">
                              <node concept="1rXfSq" id="4sx0mC_sL0C" role="3clFbG">
                                <ref role="37wK5l" node="4sx0mC_spGq" resolve="toSObject" />
                                <node concept="37vLTw" id="4sx0mC_sL0D" role="37wK5m">
                                  <ref role="3cqZAo" node="4sx0mC_sL0E" resolve="e" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="4sx0mC_sL0E" role="1bW2Oz">
                            <property role="TrG5h" value="e" />
                            <node concept="3uibUv" id="4sx0mC_sL0F" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4sx0mC_nWqt" role="2OqNvi">
                      <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                      <node concept="2YIFZM" id="4sx0mC_nWqu" role="37wK5m">
                        <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                        <ref role="37wK5l" to="1ctc:~Collectors.toSet()" resolve="toSet" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="4sx0mC_nWqv" role="3eO9$A">
              <node concept="2ZW3vV" id="4sx0mC_nWqw" role="3uHU7w">
                <node concept="3uibUv" id="2vH_zCMh0Ce" role="2ZW6by">
                  <ref role="3uigEE" to="zrbp:~Collection" resolve="Collection" />
                </node>
                <node concept="37vLTw" id="4sx0mC_omD$" role="2ZW6bz">
                  <ref role="3cqZAo" node="7cS5T_tZIIL" resolve="dObject" />
                </node>
              </node>
              <node concept="3clFbC" id="4sx0mC_nWqz" role="3uHU7B">
                <node concept="37vLTw" id="4sx0mC_nWq$" role="3uHU7B">
                  <ref role="3cqZAo" node="4sx0mC_o0ga" resolve="cls" />
                </node>
                <node concept="3VsKOn" id="4sx0mC_nWq_" role="3uHU7w">
                  <ref role="3VsUkX" to="33ny:~Set" resolve="Set" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4sx0mC_nWqA" role="3eNLev">
            <node concept="3clFbS" id="4sx0mC_nWqB" role="3eOfB_">
              <node concept="3cpWs6" id="4sx0mC_ozMb" role="3cqZAp">
                <node concept="15s5l7" id="4sx0mC_ro7w" role="lGtFl">
                  <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type ? super p15 is not a subtype of org.modelingvalue.collections.Entry&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590337(jetbrains.mps.baseLanguage.closures.typesystem)/8701449112292740706,r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5977092449933510825]&quot;;" />
                  <property role="huDt6" value="Error: type ? super p15 is not a subtype of org.modelingvalue.collections.Entry" />
                </node>
                <node concept="10QFUN" id="4sx0mC_nWqF" role="3cqZAk">
                  <node concept="16syzq" id="4sx0mC_nWqG" role="10QFUM">
                    <ref role="16sUi3" node="7cS5T_tZIJF" resolve="T" />
                  </node>
                  <node concept="2OqwBi" id="4sx0mC_nWqH" role="10QFUP">
                    <node concept="1eOMI4" id="4sx0mC_nWqI" role="2Oq$k0">
                      <node concept="10QFUN" id="4sx0mC_nWqJ" role="1eOMHV">
                        <node concept="3uibUv" id="4sx0mC_nWqK" role="10QFUM">
                          <ref role="3uigEE" to="zrbp:~Map" resolve="Map" />
                          <node concept="3uibUv" id="4sx0mC_uTES" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                          <node concept="3uibUv" id="4sx0mC_uS5x" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4sx0mC_on$E" role="10QFUP">
                          <ref role="3cqZAo" node="7cS5T_tZIIL" resolve="dObject" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4sx0mC_nWqM" role="2OqNvi">
                      <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                      <node concept="2YIFZM" id="4sx0mC_nWqN" role="37wK5m">
                        <ref role="37wK5l" to="1ctc:~Collectors.toMap(java.util.function.Function,java.util.function.Function)" resolve="toMap" />
                        <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                        <node concept="1bVj0M" id="4sx0mC_nWqO" role="37wK5m">
                          <node concept="3clFbS" id="4sx0mC_nWqP" role="1bW5cS">
                            <node concept="3clFbF" id="4sx0mC_nWqQ" role="3cqZAp">
                              <node concept="1rXfSq" id="4sx0mC_rTbr" role="3clFbG">
                                <ref role="37wK5l" node="4sx0mC_spGq" resolve="toSObject" />
                                <node concept="2OqwBi" id="4sx0mC_nWqR" role="37wK5m">
                                  <node concept="37vLTw" id="4sx0mC_nWqS" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4sx0mC_nWqU" resolve="e" />
                                  </node>
                                  <node concept="liA8E" id="4sx0mC_nWqT" role="2OqNvi">
                                    <ref role="37wK5l" to="zrbp:~Entry.getKey()" resolve="getKey" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="4sx0mC_nWqU" role="1bW2Oz">
                            <property role="TrG5h" value="e" />
                            <node concept="3uibUv" id="4sx0mC_nWqV" role="1tU5fm">
                              <ref role="3uigEE" to="zrbp:~Entry" resolve="Entry" />
                            </node>
                          </node>
                        </node>
                        <node concept="1bVj0M" id="4sx0mC_nWqW" role="37wK5m">
                          <node concept="3clFbS" id="4sx0mC_nWqX" role="1bW5cS">
                            <node concept="3clFbF" id="4sx0mC_nWqY" role="3cqZAp">
                              <node concept="1rXfSq" id="4sx0mC_s0kk" role="3clFbG">
                                <ref role="37wK5l" node="4sx0mC_spGq" resolve="toSObject" />
                                <node concept="2OqwBi" id="4sx0mC_nWqZ" role="37wK5m">
                                  <node concept="37vLTw" id="4sx0mC_nWr0" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4sx0mC_nWr2" resolve="e" />
                                  </node>
                                  <node concept="liA8E" id="4sx0mC_nWr1" role="2OqNvi">
                                    <ref role="37wK5l" to="zrbp:~Entry.getValue()" resolve="getValue" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="4sx0mC_nWr2" role="1bW2Oz">
                            <property role="TrG5h" value="e" />
                            <node concept="3uibUv" id="4sx0mC_nWr3" role="1tU5fm">
                              <ref role="3uigEE" to="zrbp:~Entry" resolve="Entry" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="4sx0mC_nWr5" role="3eO9$A">
              <node concept="2ZW3vV" id="4sx0mC_nWr6" role="3uHU7w">
                <node concept="3uibUv" id="2vH_zCMh2Mv" role="2ZW6by">
                  <ref role="3uigEE" to="zrbp:~Map" resolve="Map" />
                </node>
                <node concept="37vLTw" id="4sx0mC_on7f" role="2ZW6bz">
                  <ref role="3cqZAo" node="7cS5T_tZIIL" resolve="dObject" />
                </node>
              </node>
              <node concept="3clFbC" id="4sx0mC_nWr9" role="3uHU7B">
                <node concept="37vLTw" id="4sx0mC_nWra" role="3uHU7B">
                  <ref role="3cqZAo" node="4sx0mC_o0ga" resolve="cls" />
                </node>
                <node concept="3VsKOn" id="4sx0mC_nWrb" role="3uHU7w">
                  <ref role="3VsUkX" to="33ny:~Map" resolve="Map" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4sx0mC_nWrc" role="3clFbw">
            <node concept="2ZW3vV" id="4sx0mC_nWrd" role="3uHU7w">
              <node concept="3uibUv" id="2vH_zCMgYtW" role="2ZW6by">
                <ref role="3uigEE" to="zrbp:~Collection" resolve="Collection" />
              </node>
              <node concept="37vLTw" id="4sx0mC_olRw" role="2ZW6bz">
                <ref role="3cqZAo" node="7cS5T_tZIIL" resolve="dObject" />
              </node>
            </node>
            <node concept="3clFbC" id="4sx0mC_nWrg" role="3uHU7B">
              <node concept="37vLTw" id="4sx0mC_nWrh" role="3uHU7B">
                <ref role="3cqZAo" node="4sx0mC_o0ga" resolve="cls" />
              </node>
              <node concept="3VsKOn" id="4sx0mC_nWri" role="3uHU7w">
                <ref role="3VsUkX" to="33ny:~List" resolve="List" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4sx0mC_smi0" role="9aQIa">
            <node concept="3clFbS" id="4sx0mC_smi1" role="9aQI4">
              <node concept="3cpWs6" id="4sx0mC_sDdT" role="3cqZAp">
                <node concept="1rXfSq" id="4sx0mC_sAVH" role="3cqZAk">
                  <ref role="37wK5l" node="4sx0mC_spGq" resolve="toSObject" />
                  <node concept="37vLTw" id="4sx0mC_sB7O" role="37wK5m">
                    <ref role="3cqZAo" node="7cS5T_tZIIL" resolve="dObject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7cS5T_tZIJE" role="1B3o_S" />
      <node concept="16euLQ" id="7cS5T_tZIJF" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16syzq" id="7cS5T_tZIJG" role="3clF45">
        <ref role="16sUi3" node="7cS5T_tZIJF" resolve="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="4dRWk3pfaBu" role="jymVt" />
    <node concept="2YIFZL" id="4sx0mC_spGq" role="jymVt">
      <property role="TrG5h" value="toSObject" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="4sx0mC_spGv" role="3clF46">
        <property role="TrG5h" value="dObject" />
        <node concept="16syzq" id="4sx0mC_spGw" role="1tU5fm">
          <ref role="16sUi3" node="4sx0mC_spJ1" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="4sx0mC_spGx" role="3clF47">
        <node concept="3clFbJ" id="4sx0mC_spGy" role="3cqZAp">
          <node concept="2ZW3vV" id="4sx0mC_spGz" role="3clFbw">
            <node concept="3uibUv" id="4sx0mC_spG$" role="2ZW6by">
              <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
            </node>
            <node concept="37vLTw" id="4sx0mC_spG_" role="2ZW6bz">
              <ref role="3cqZAo" node="4sx0mC_spGv" resolve="dObject" />
            </node>
          </node>
          <node concept="3clFbS" id="4sx0mC_spGA" role="3clFbx">
            <node concept="3cpWs6" id="4sx0mC_spGB" role="3cqZAp">
              <node concept="10QFUN" id="4sx0mC_spGC" role="3cqZAk">
                <node concept="16syzq" id="4sx0mC_spGD" role="10QFUM">
                  <ref role="16sUi3" node="4sx0mC_spJ1" resolve="T" />
                </node>
                <node concept="2OqwBi" id="4sx0mC_spGE" role="10QFUP">
                  <node concept="1eOMI4" id="4sx0mC_spGF" role="2Oq$k0">
                    <node concept="10QFUN" id="4sx0mC_spGG" role="1eOMHV">
                      <node concept="3uibUv" id="4sx0mC_spGH" role="10QFUM">
                        <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                      </node>
                      <node concept="37vLTw" id="4sx0mC_spGI" role="10QFUP">
                        <ref role="3cqZAo" node="4sx0mC_spGv" resolve="dObject" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1HidMk5hqIM" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DNewableObject.tryOriginal()" resolve="tryOriginal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4sx0mC_spGK" role="3eNLev">
            <node concept="2ZW3vV" id="4sx0mC_spGL" role="3eO9$A">
              <node concept="3uibUv" id="4sx0mC_spGM" role="2ZW6by">
                <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
              </node>
              <node concept="37vLTw" id="4sx0mC_spGN" role="2ZW6bz">
                <ref role="3cqZAo" node="4sx0mC_spGv" resolve="dObject" />
              </node>
            </node>
            <node concept="3clFbS" id="4sx0mC_spGO" role="3eOfB_">
              <node concept="3cpWs6" id="4sx0mC_spGP" role="3cqZAp">
                <node concept="10QFUN" id="4sx0mC_spGQ" role="3cqZAk">
                  <node concept="16syzq" id="4sx0mC_spGR" role="10QFUM">
                    <ref role="16sUi3" node="4sx0mC_spJ1" resolve="T" />
                  </node>
                  <node concept="2OqwBi" id="4sx0mC_spGS" role="10QFUP">
                    <node concept="1eOMI4" id="4sx0mC_spGT" role="2Oq$k0">
                      <node concept="10QFUN" id="4sx0mC_spGU" role="1eOMHV">
                        <node concept="3uibUv" id="4sx0mC_spGV" role="10QFUM">
                          <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                        </node>
                        <node concept="37vLTw" id="4sx0mC_spGW" role="10QFUP">
                          <ref role="3cqZAo" node="4sx0mC_spGv" resolve="dObject" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1HidMk5hu08" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DNewableObject.tryOriginal()" resolve="tryOriginal" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4sx0mC_spGY" role="3eNLev">
            <node concept="2ZW3vV" id="4sx0mC_spGZ" role="3eO9$A">
              <node concept="3uibUv" id="4sx0mC_spH0" role="2ZW6by">
                <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
              </node>
              <node concept="37vLTw" id="4sx0mC_spH1" role="2ZW6bz">
                <ref role="3cqZAo" node="4sx0mC_spGv" resolve="dObject" />
              </node>
            </node>
            <node concept="3clFbS" id="4sx0mC_spH2" role="3eOfB_">
              <node concept="3cpWs6" id="4sx0mC_spH3" role="3cqZAp">
                <node concept="10QFUN" id="4sx0mC_spH4" role="3cqZAk">
                  <node concept="16syzq" id="4sx0mC_spH5" role="10QFUM">
                    <ref role="16sUi3" node="4sx0mC_spJ1" resolve="T" />
                  </node>
                  <node concept="2OqwBi" id="4sx0mC_spH6" role="10QFUP">
                    <node concept="1eOMI4" id="4sx0mC_spH7" role="2Oq$k0">
                      <node concept="10QFUN" id="4sx0mC_spH8" role="1eOMHV">
                        <node concept="3uibUv" id="4sx0mC_spH9" role="10QFUM">
                          <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
                        </node>
                        <node concept="37vLTw" id="4sx0mC_spHa" role="10QFUP">
                          <ref role="3cqZAo" node="4sx0mC_spGv" resolve="dObject" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4sx0mC_spHb" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DFromOriginalObject.original()" resolve="original" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4sx0mC_spHc" role="3eNLev">
            <node concept="2ZW3vV" id="4sx0mC_spHd" role="3eO9$A">
              <node concept="3uibUv" id="4sx0mC_spHe" role="2ZW6by">
                <ref role="3uigEE" to="t4tl:~DRepository" resolve="DRepository" />
              </node>
              <node concept="37vLTw" id="4sx0mC_spHf" role="2ZW6bz">
                <ref role="3cqZAo" node="4sx0mC_spGv" resolve="dObject" />
              </node>
            </node>
            <node concept="3clFbS" id="4sx0mC_spHg" role="3eOfB_">
              <node concept="3cpWs6" id="4sx0mC_spHh" role="3cqZAp">
                <node concept="10QFUN" id="4sx0mC_spHi" role="3cqZAk">
                  <node concept="16syzq" id="4sx0mC_spHj" role="10QFUM">
                    <ref role="16sUi3" node="4sx0mC_spJ1" resolve="T" />
                  </node>
                  <node concept="2OqwBi" id="4sx0mC_spHk" role="10QFUP">
                    <node concept="1eOMI4" id="4sx0mC_spHl" role="2Oq$k0">
                      <node concept="10QFUN" id="4sx0mC_spHm" role="1eOMHV">
                        <node concept="3uibUv" id="4sx0mC_spHn" role="10QFUM">
                          <ref role="3uigEE" to="t4tl:~DRepository" resolve="DRepository" />
                        </node>
                        <node concept="37vLTw" id="4sx0mC_spHo" role="10QFUP">
                          <ref role="3cqZAo" node="4sx0mC_spGv" resolve="dObject" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4sx0mC_spHp" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DFromOriginalObject.original()" resolve="original" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4sx0mC_spHq" role="9aQIa">
            <node concept="3clFbS" id="4sx0mC_spHr" role="9aQI4">
              <node concept="3cpWs6" id="4sx0mC_spIY" role="3cqZAp">
                <node concept="37vLTw" id="4sx0mC_spIZ" role="3cqZAk">
                  <ref role="3cqZAo" node="4sx0mC_spGv" resolve="dObject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2vH_zCMmfKr" role="3eNLev">
            <node concept="2ZW3vV" id="2vH_zCMmhSo" role="3eO9$A">
              <node concept="3uibUv" id="2vH_zCMmi1u" role="2ZW6by">
                <ref role="3uigEE" node="2vH_zCMmdeS" resolve="DclareObject" />
              </node>
              <node concept="37vLTw" id="2vH_zCMmhFM" role="2ZW6bz">
                <ref role="3cqZAo" node="4sx0mC_spGv" resolve="dObject" />
              </node>
            </node>
            <node concept="3clFbS" id="2vH_zCMmfKt" role="3eOfB_">
              <node concept="3cpWs6" id="2vH_zCMmi3r" role="3cqZAp">
                <node concept="10QFUN" id="2vH_zCMmoXV" role="3cqZAk">
                  <node concept="16syzq" id="2vH_zCMmqUb" role="10QFUM">
                    <ref role="16sUi3" node="4sx0mC_spJ1" resolve="T" />
                  </node>
                  <node concept="2OqwBi" id="2vH_zCMmlT7" role="10QFUP">
                    <node concept="1eOMI4" id="2vH_zCMmjS_" role="2Oq$k0">
                      <node concept="10QFUN" id="2vH_zCMmjSy" role="1eOMHV">
                        <node concept="3uibUv" id="2vH_zCMmjSB" role="10QFUM">
                          <ref role="3uigEE" node="2vH_zCMmdeS" resolve="DclareObject" />
                        </node>
                        <node concept="37vLTw" id="2vH_zCMmjSC" role="10QFUP">
                          <ref role="3cqZAo" node="4sx0mC_spGv" resolve="dObject" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2vH_zCMmnNF" role="2OqNvi">
                      <ref role="37wK5l" node="2vH_zCMmdg4" resolve="toMPSObject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7L8nq$MzLrP" role="3eNLev">
            <node concept="2ZW3vV" id="7L8nq$MzR58" role="3eO9$A">
              <node concept="3uibUv" id="7L8nq$MzTkH" role="2ZW6by">
                <ref role="3uigEE" to="zrbp:~ContainingCollection" resolve="ContainingCollection" />
              </node>
              <node concept="37vLTw" id="7L8nq$MzP4P" role="2ZW6bz">
                <ref role="3cqZAo" node="4sx0mC_spGv" resolve="dObject" />
              </node>
            </node>
            <node concept="3clFbS" id="7L8nq$MzLrR" role="3eOfB_">
              <node concept="3cpWs6" id="7L8nq$M$uW9" role="3cqZAp">
                <node concept="10QFUN" id="7L8nq$M$UNi" role="3cqZAk">
                  <node concept="16syzq" id="7L8nq$M_2hV" role="10QFUM">
                    <ref role="16sUi3" node="4sx0mC_spJ1" resolve="T" />
                  </node>
                  <node concept="2OqwBi" id="7L8nq$M$i2y" role="10QFUP">
                    <node concept="2OqwBi" id="7L8nq$M$bci" role="2Oq$k0">
                      <node concept="1eOMI4" id="7L8nq$M$7Sy" role="2Oq$k0">
                        <node concept="10QFUN" id="7L8nq$MzZt2" role="1eOMHV">
                          <node concept="37vLTw" id="7L8nq$MzWsT" role="10QFUP">
                            <ref role="3cqZAo" node="4sx0mC_spGv" resolve="dObject" />
                          </node>
                          <node concept="3uibUv" id="7L8nq$M_gob" role="10QFUM">
                            <ref role="3uigEE" to="zrbp:~ContainingCollection" resolve="ContainingCollection" />
                            <node concept="3uibUv" id="7L8nq$M_goc" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7L8nq$M$ei4" role="2OqNvi">
                        <ref role="37wK5l" to="zrbp:~ContainingCollection.clear()" resolve="clear" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7L8nq$M$lvV" role="2OqNvi">
                      <ref role="37wK5l" to="zrbp:~ContainingCollection.addAll(org.modelingvalue.collections.Collection)" resolve="addAll" />
                      <node concept="2OqwBi" id="7L8nq$M$Du$" role="37wK5m">
                        <node concept="1eOMI4" id="7L8nq$M$_qq" role="2Oq$k0">
                          <node concept="10QFUN" id="7L8nq$M$_qr" role="1eOMHV">
                            <node concept="3uibUv" id="7L8nq$M$_qs" role="10QFUM">
                              <ref role="3uigEE" to="zrbp:~ContainingCollection" resolve="ContainingCollection" />
                              <node concept="3uibUv" id="7L8nq$M_9eo" role="11_B2D">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="7L8nq$M$_qt" role="10QFUP">
                              <ref role="3cqZAo" node="4sx0mC_spGv" resolve="dObject" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7L8nq$M$HVx" role="2OqNvi">
                          <ref role="37wK5l" to="zrbp:~Collection.map(java.util.function.Function)" resolve="map" />
                          <node concept="1bVj0M" id="7L8nq$M$Nr$" role="37wK5m">
                            <node concept="3clFbS" id="7L8nq$M$Nr_" role="1bW5cS">
                              <node concept="3clFbF" id="7L8nq$M$NrA" role="3cqZAp">
                                <node concept="1rXfSq" id="7L8nq$M$NrB" role="3clFbG">
                                  <ref role="37wK5l" node="4sx0mC_spGq" resolve="toSObject" />
                                  <node concept="37vLTw" id="7L8nq$M$NrC" role="37wK5m">
                                    <ref role="3cqZAo" node="7L8nq$M$NrD" resolve="e" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="7L8nq$M$NrD" role="1bW2Oz">
                              <property role="TrG5h" value="e" />
                              <node concept="3uibUv" id="7L8nq$M$NrE" role="1tU5fm">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
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
      <node concept="3Tm1VV" id="4sx0mC_spJ0" role="1B3o_S" />
      <node concept="16euLQ" id="4sx0mC_spJ1" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16syzq" id="4sx0mC_spJ2" role="3clF45">
        <ref role="16sUi3" node="4sx0mC_spJ1" resolve="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="7cS5T_tZHLn" role="jymVt" />
    <node concept="2YIFZL" id="7cS5T_tZh5f" role="jymVt">
      <property role="TrG5h" value="toDObject" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="7cS5T_tZj0C" role="3clF46">
        <property role="TrG5h" value="sObject" />
        <node concept="16syzq" id="7cS5T_tZj5W" role="1tU5fm">
          <ref role="16sUi3" node="7cS5T_tZiW8" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="7cS5T_tZh5i" role="3clF47">
        <node concept="3clFbJ" id="7cS5T_tZjuu" role="3cqZAp">
          <node concept="3eNFk2" id="4dRWk3pfCXE" role="3eNLev">
            <node concept="3clFbS" id="4dRWk3pfCXG" role="3eOfB_">
              <node concept="3cpWs6" id="4dRWk3pfI30" role="3cqZAp">
                <node concept="10QFUN" id="4dRWk3pfKzn" role="3cqZAk">
                  <node concept="2YIFZM" id="4dRWk3pfKzo" role="10QFUP">
                    <ref role="37wK5l" to="t4tl:~DNode.of(org.jetbrains.mps.openapi.model.SNode)" resolve="of" />
                    <ref role="1Pybhc" to="t4tl:~DNode" resolve="DNode" />
                    <node concept="1eOMI4" id="4dRWk3pfKzp" role="37wK5m">
                      <node concept="10QFUN" id="4dRWk3pfKzq" role="1eOMHV">
                        <node concept="3uibUv" id="4dRWk3pfKzr" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="37vLTw" id="4dRWk3pfKzs" role="10QFUP">
                          <ref role="3cqZAo" node="7cS5T_tZj0C" resolve="sObject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="16syzq" id="4dRWk3pfKzt" role="10QFUM">
                    <ref role="16sUi3" node="7cS5T_tZiW8" resolve="T" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="7cS5T_tZjCm" role="3eO9$A">
              <node concept="3uibUv" id="7cS5T_tZjHO" role="2ZW6by">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="37vLTw" id="7cS5T_tZjvu" role="2ZW6bz">
                <ref role="3cqZAo" node="7cS5T_tZj0C" resolve="sObject" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7cS5T_tZjuw" role="3clFbx">
            <node concept="3cpWs6" id="7cS5T_tZjZE" role="3cqZAp">
              <node concept="37vLTw" id="4dRWk3pfVrs" role="3cqZAk">
                <ref role="3cqZAo" node="7cS5T_tZj0C" resolve="sObject" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7cS5T_tZlwK" role="3eNLev">
            <node concept="2ZW3vV" id="7cS5T_tZlJO" role="3eO9$A">
              <node concept="3uibUv" id="7cS5T_tZlPk" role="2ZW6by">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
              <node concept="37vLTw" id="7cS5T_tZlAU" role="2ZW6bz">
                <ref role="3cqZAo" node="7cS5T_tZj0C" resolve="sObject" />
              </node>
            </node>
            <node concept="3clFbS" id="7cS5T_tZlwM" role="3eOfB_">
              <node concept="3cpWs6" id="7cS5T_tZlZb" role="3cqZAp">
                <node concept="10QFUN" id="7cS5T_tZlZc" role="3cqZAk">
                  <node concept="2YIFZM" id="7cS5T_tZlZd" role="10QFUP">
                    <ref role="1Pybhc" to="t4tl:~DModel" resolve="DModel" />
                    <ref role="37wK5l" to="t4tl:~DModel.of(org.jetbrains.mps.openapi.model.SModel)" resolve="of" />
                    <node concept="1eOMI4" id="7cS5T_tZlZe" role="37wK5m">
                      <node concept="10QFUN" id="7cS5T_tZlZf" role="1eOMHV">
                        <node concept="3uibUv" id="7cS5T_tZm$I" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                        <node concept="37vLTw" id="7cS5T_tZlZh" role="10QFUP">
                          <ref role="3cqZAo" node="7cS5T_tZj0C" resolve="sObject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="16syzq" id="7cS5T_tZlZi" role="10QFUM">
                    <ref role="16sUi3" node="7cS5T_tZiW8" resolve="T" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7cS5T_tZmUA" role="3eNLev">
            <node concept="2ZW3vV" id="7cS5T_tZmUB" role="3eO9$A">
              <node concept="3uibUv" id="7cS5T_tZn8l" role="2ZW6by">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
              <node concept="37vLTw" id="7cS5T_tZmUD" role="2ZW6bz">
                <ref role="3cqZAo" node="7cS5T_tZj0C" resolve="sObject" />
              </node>
            </node>
            <node concept="3clFbS" id="7cS5T_tZmUE" role="3eOfB_">
              <node concept="3cpWs6" id="7cS5T_tZmUF" role="3cqZAp">
                <node concept="10QFUN" id="7cS5T_tZmUG" role="3cqZAk">
                  <node concept="2YIFZM" id="7cS5T_tZmUH" role="10QFUP">
                    <ref role="1Pybhc" to="t4tl:~DModule" resolve="DModule" />
                    <ref role="37wK5l" to="t4tl:~DModule.of(org.jetbrains.mps.openapi.module.SModule)" resolve="of" />
                    <node concept="1eOMI4" id="7cS5T_tZmUI" role="37wK5m">
                      <node concept="10QFUN" id="7cS5T_tZmUJ" role="1eOMHV">
                        <node concept="3uibUv" id="7cS5T_tZnDD" role="10QFUM">
                          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                        </node>
                        <node concept="37vLTw" id="7cS5T_tZmUL" role="10QFUP">
                          <ref role="3cqZAo" node="7cS5T_tZj0C" resolve="sObject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="16syzq" id="7cS5T_tZmUM" role="10QFUM">
                    <ref role="16sUi3" node="7cS5T_tZiW8" resolve="T" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7cS5T_tZpCz" role="3eNLev">
            <node concept="2ZW3vV" id="7cS5T_tZpC$" role="3eO9$A">
              <node concept="3uibUv" id="7cS5T_tZqpI" role="2ZW6by">
                <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
              </node>
              <node concept="37vLTw" id="7cS5T_tZpCA" role="2ZW6bz">
                <ref role="3cqZAo" node="7cS5T_tZj0C" resolve="sObject" />
              </node>
            </node>
            <node concept="3clFbS" id="7cS5T_tZpCB" role="3eOfB_">
              <node concept="3cpWs6" id="7cS5T_tZpCC" role="3cqZAp">
                <node concept="10QFUN" id="7cS5T_tZpCD" role="3cqZAk">
                  <node concept="16syzq" id="7cS5T_tZpCJ" role="10QFUM">
                    <ref role="16sUi3" node="7cS5T_tZiW8" resolve="T" />
                  </node>
                  <node concept="2OqwBi" id="7cS5T_tZEKp" role="10QFUP">
                    <node concept="2YIFZM" id="7cS5T_tZE4d" role="2Oq$k0">
                      <ref role="37wK5l" to="t4tl:~DClareMPS.instance()" resolve="instance" />
                      <ref role="1Pybhc" to="t4tl:~DClareMPS" resolve="DClareMPS" />
                    </node>
                    <node concept="liA8E" id="7cS5T_tZFAw" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DClareMPS.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7cS5T_tZq2T" role="9aQIa">
            <node concept="3clFbS" id="7cS5T_tZq2U" role="9aQI4">
              <node concept="3cpWs6" id="7cS5T_tZqe2" role="3cqZAp">
                <node concept="37vLTw" id="7cS5T_tZCCD" role="3cqZAk">
                  <ref role="3cqZAo" node="7cS5T_tZj0C" resolve="sObject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="4dRWk3pfvGf" role="3clFbw">
            <node concept="3uibUv" id="4dRWk3pfxFh" role="2ZW6by">
              <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
            </node>
            <node concept="37vLTw" id="4dRWk3pfttN" role="2ZW6bz">
              <ref role="3cqZAo" node="7cS5T_tZj0C" resolve="sObject" />
            </node>
          </node>
          <node concept="3eNFk2" id="7L8nq$MAzIf" role="3eNLev">
            <node concept="3clFbS" id="7L8nq$MAzIh" role="3eOfB_">
              <node concept="3cpWs6" id="7L8nq$MAJe4" role="3cqZAp">
                <node concept="10QFUN" id="7L8nq$MAJe5" role="3cqZAk">
                  <node concept="16syzq" id="7L8nq$MAJe6" role="10QFUM">
                    <ref role="16sUi3" node="7cS5T_tZiW8" resolve="T" />
                  </node>
                  <node concept="2OqwBi" id="7L8nq$MAJe7" role="10QFUP">
                    <node concept="2OqwBi" id="7L8nq$MAJe8" role="2Oq$k0">
                      <node concept="1eOMI4" id="7L8nq$MAJe9" role="2Oq$k0">
                        <node concept="10QFUN" id="7L8nq$MAJea" role="1eOMHV">
                          <node concept="37vLTw" id="7L8nq$MAJeb" role="10QFUP">
                            <ref role="3cqZAo" node="7cS5T_tZj0C" resolve="sObject" />
                          </node>
                          <node concept="3uibUv" id="7L8nq$MAJec" role="10QFUM">
                            <ref role="3uigEE" to="zrbp:~ContainingCollection" resolve="ContainingCollection" />
                            <node concept="3uibUv" id="7L8nq$MAJed" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7L8nq$MAJee" role="2OqNvi">
                        <ref role="37wK5l" to="zrbp:~ContainingCollection.clear()" resolve="clear" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7L8nq$MAJef" role="2OqNvi">
                      <ref role="37wK5l" to="zrbp:~ContainingCollection.addAll(org.modelingvalue.collections.Collection)" resolve="addAll" />
                      <node concept="2OqwBi" id="7L8nq$MAJeg" role="37wK5m">
                        <node concept="1eOMI4" id="7L8nq$MAJeh" role="2Oq$k0">
                          <node concept="10QFUN" id="7L8nq$MAJei" role="1eOMHV">
                            <node concept="3uibUv" id="7L8nq$MAJej" role="10QFUM">
                              <ref role="3uigEE" to="zrbp:~ContainingCollection" resolve="ContainingCollection" />
                              <node concept="3uibUv" id="7L8nq$MAJek" role="11_B2D">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="7L8nq$MAJel" role="10QFUP">
                              <ref role="3cqZAo" node="7cS5T_tZj0C" resolve="sObject" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7L8nq$MAJem" role="2OqNvi">
                          <ref role="37wK5l" to="zrbp:~Collection.map(java.util.function.Function)" resolve="map" />
                          <node concept="1bVj0M" id="7L8nq$MAJen" role="37wK5m">
                            <node concept="3clFbS" id="7L8nq$MAJeo" role="1bW5cS">
                              <node concept="3clFbF" id="7L8nq$MAJep" role="3cqZAp">
                                <node concept="1rXfSq" id="7L8nq$MAJeq" role="3clFbG">
                                  <ref role="37wK5l" node="7cS5T_tZh5f" resolve="toDObject" />
                                  <node concept="37vLTw" id="7L8nq$MAJer" role="37wK5m">
                                    <ref role="3cqZAo" node="7L8nq$MAJes" resolve="e" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="7L8nq$MAJes" role="1bW2Oz">
                              <property role="TrG5h" value="e" />
                              <node concept="3uibUv" id="7L8nq$MAJet" role="1tU5fm">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
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
            <node concept="2ZW3vV" id="7L8nq$MABym" role="3eO9$A">
              <node concept="3uibUv" id="7L8nq$MAByn" role="2ZW6by">
                <ref role="3uigEE" to="zrbp:~ContainingCollection" resolve="ContainingCollection" />
              </node>
              <node concept="37vLTw" id="7L8nq$MAByo" role="2ZW6bz">
                <ref role="3cqZAo" node="7cS5T_tZj0C" resolve="sObject" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7cS5T_tZfj4" role="1B3o_S" />
      <node concept="16euLQ" id="7cS5T_tZiW8" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16syzq" id="7cS5T_tZjp7" role="3clF45">
        <ref role="16sUi3" node="7cS5T_tZiW8" resolve="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="1lQ5DPQt_c7" role="jymVt" />
    <node concept="2YIFZL" id="3DB41z9GGdu" role="jymVt">
      <property role="TrG5h" value="toMutable" />
      <node concept="3Tm1VV" id="3DB41z9L7BG" role="1B3o_S" />
      <node concept="16syzq" id="3DB41z9GGdw" role="3clF45">
        <ref role="16sUi3" node="3DB41z9H8Ju" resolve="T" />
      </node>
      <node concept="37vLTG" id="5GTBd9D1Bb5" role="3clF46">
        <property role="TrG5h" value="attr" />
        <node concept="3uibUv" id="6Ct1cXsyf31" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DAttribute" resolve="DAttribute" />
          <node concept="3qTvmN" id="6Ct1cXsyiyb" role="11_B2D" />
          <node concept="16syzq" id="6Ct1cXsyjx_" role="11_B2D">
            <ref role="16sUi3" node="3DB41z9H8Ju" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3DB41z9GGdg" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="3u6Ya6vHTsm" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="3DB41z9GGc7" role="3clF47">
        <node concept="3cpWs8" id="6Ct1cXsymEZ" role="3cqZAp">
          <node concept="3cpWsn" id="6Ct1cXsymF0" role="3cpWs9">
            <property role="TrG5h" value="cls" />
            <node concept="3uibUv" id="6Ct1cXsykXB" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
              <node concept="3qTvmN" id="6Ct1cXsykXE" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="6Ct1cXsymF1" role="33vP2m">
              <node concept="37vLTw" id="6Ct1cXsymF2" role="2Oq$k0">
                <ref role="3cqZAo" node="5GTBd9D1Bb5" resolve="attr" />
              </node>
              <node concept="liA8E" id="6Ct1cXsymF3" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DAttribute.cls()" resolve="cls" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3DB41z9GGca" role="3cqZAp">
          <node concept="3clFbS" id="3DB41z9GGcb" role="3clFbx">
            <node concept="3clFbF" id="3DB41z9GGcc" role="3cqZAp">
              <node concept="37vLTI" id="3DB41z9GGcd" role="3clFbG">
                <node concept="37vLTw" id="3DB41z9GGdr" role="37vLTJ">
                  <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
                </node>
                <node concept="10QFUN" id="3DB41z9GGcf" role="37vLTx">
                  <node concept="16syzq" id="3DB41z9GGcg" role="10QFUM">
                    <ref role="16sUi3" node="3DB41z9H8Ju" resolve="T" />
                  </node>
                  <node concept="2OqwBi" id="3DB41z9GGch" role="10QFUP">
                    <node concept="1eOMI4" id="3DB41z9GGci" role="2Oq$k0">
                      <node concept="10QFUN" id="3DB41z9GGcj" role="1eOMHV">
                        <node concept="3uibUv" id="37Y5i25LfhL" role="10QFUM">
                          <ref role="3uigEE" to="zrbp:~List" resolve="List" />
                          <node concept="3uibUv" id="4sx0mC_vG6y" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3DB41z9GGdj" role="10QFUP">
                          <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7PGAB9IQZyc" role="2OqNvi">
                      <ref role="37wK5l" to="zrbp:~List.toMutable()" resolve="toMutable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7PGAB9IQEib" role="3eNLev">
            <node concept="3clFbS" id="7PGAB9IQEic" role="3eOfB_">
              <node concept="3clFbF" id="7PGAB9IQEid" role="3cqZAp">
                <node concept="37vLTI" id="7PGAB9IQEie" role="3clFbG">
                  <node concept="37vLTw" id="7PGAB9IQEif" role="37vLTJ">
                    <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
                  </node>
                  <node concept="10QFUN" id="7PGAB9IQEig" role="37vLTx">
                    <node concept="16syzq" id="7PGAB9IQEih" role="10QFUM">
                      <ref role="16sUi3" node="3DB41z9H8Ju" resolve="T" />
                    </node>
                    <node concept="2OqwBi" id="7PGAB9IQEii" role="10QFUP">
                      <node concept="1eOMI4" id="7PGAB9IQEij" role="2Oq$k0">
                        <node concept="10QFUN" id="7PGAB9IQEik" role="1eOMHV">
                          <node concept="3uibUv" id="7PGAB9IQEil" role="10QFUM">
                            <ref role="3uigEE" to="zrbp:~Collection" resolve="Collection" />
                            <node concept="3uibUv" id="7PGAB9IQEim" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7PGAB9IQEin" role="10QFUP">
                            <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7PGAB9IQEio" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                        <node concept="2YIFZM" id="7PGAB9IR5rX" role="37wK5m">
                          <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7PGAB9IQEiq" role="3eO9$A">
              <node concept="2ZW3vV" id="7PGAB9IQEir" role="3uHU7w">
                <node concept="3uibUv" id="7PGAB9IQEis" role="2ZW6by">
                  <ref role="3uigEE" to="zrbp:~Collection" resolve="Collection" />
                </node>
                <node concept="37vLTw" id="7PGAB9IQEit" role="2ZW6bz">
                  <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
                </node>
              </node>
              <node concept="3clFbC" id="7PGAB9IQEiu" role="3uHU7B">
                <node concept="37vLTw" id="7PGAB9IQEiv" role="3uHU7B">
                  <ref role="3cqZAo" node="6Ct1cXsymF0" resolve="cls" />
                </node>
                <node concept="3VsKOn" id="7PGAB9IQEiw" role="3uHU7w">
                  <ref role="3VsUkX" to="zrbp:~List" resolve="List" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="3DB41z9GGcr" role="3eNLev">
            <node concept="3clFbS" id="3DB41z9GGcv" role="3eOfB_">
              <node concept="3clFbF" id="3DB41z9GGcw" role="3cqZAp">
                <node concept="37vLTI" id="3DB41z9GGcx" role="3clFbG">
                  <node concept="37vLTw" id="3DB41z9GGdm" role="37vLTJ">
                    <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
                  </node>
                  <node concept="10QFUN" id="3DB41z9GGcz" role="37vLTx">
                    <node concept="16syzq" id="3DB41z9GGc$" role="10QFUM">
                      <ref role="16sUi3" node="3DB41z9H8Ju" resolve="T" />
                    </node>
                    <node concept="2OqwBi" id="3DB41z9GGc_" role="10QFUP">
                      <node concept="1eOMI4" id="3DB41z9GGcA" role="2Oq$k0">
                        <node concept="10QFUN" id="3DB41z9GGcB" role="1eOMHV">
                          <node concept="3uibUv" id="37Y5i25LgwT" role="10QFUM">
                            <ref role="3uigEE" to="zrbp:~Set" resolve="Set" />
                            <node concept="3uibUv" id="4sx0mC_vIHN" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3DB41z9GGdk" role="10QFUP">
                            <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7PGAB9IRyt9" role="2OqNvi">
                        <ref role="37wK5l" to="zrbp:~Set.toMutable()" resolve="toMutable" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="5GTBd9DBQJ0" role="3eO9$A">
              <node concept="2ZW3vV" id="5GTBd9DBTh9" role="3uHU7w">
                <node concept="3uibUv" id="6S5EomdC3yN" role="2ZW6by">
                  <ref role="3uigEE" to="zrbp:~Set" resolve="Set" />
                </node>
                <node concept="37vLTw" id="5GTBd9DBSjg" role="2ZW6bz">
                  <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
                </node>
              </node>
              <node concept="3clFbC" id="5GTBd9D1P3A" role="3uHU7B">
                <node concept="37vLTw" id="6Ct1cXsymF5" role="3uHU7B">
                  <ref role="3cqZAo" node="6Ct1cXsymF0" resolve="cls" />
                </node>
                <node concept="3VsKOn" id="5GTBd9D1QQ2" role="3uHU7w">
                  <ref role="3VsUkX" to="33ny:~Set" resolve="Set" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7PGAB9IQyo$" role="3eNLev">
            <node concept="3clFbS" id="7PGAB9IQyo_" role="3eOfB_">
              <node concept="3clFbF" id="7PGAB9IQyoA" role="3cqZAp">
                <node concept="37vLTI" id="7PGAB9IQyoB" role="3clFbG">
                  <node concept="37vLTw" id="7PGAB9IQyoC" role="37vLTJ">
                    <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
                  </node>
                  <node concept="10QFUN" id="7PGAB9IQyoD" role="37vLTx">
                    <node concept="16syzq" id="7PGAB9IQyoE" role="10QFUM">
                      <ref role="16sUi3" node="3DB41z9H8Ju" resolve="T" />
                    </node>
                    <node concept="2OqwBi" id="7PGAB9IQyoF" role="10QFUP">
                      <node concept="1eOMI4" id="7PGAB9IQyoG" role="2Oq$k0">
                        <node concept="10QFUN" id="7PGAB9IQyoH" role="1eOMHV">
                          <node concept="3uibUv" id="7PGAB9IQyoI" role="10QFUM">
                            <ref role="3uigEE" to="zrbp:~Collection" resolve="Collection" />
                            <node concept="3uibUv" id="7PGAB9IQyoJ" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7PGAB9IQyoK" role="10QFUP">
                            <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7PGAB9IQyoL" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                        <node concept="2YIFZM" id="7PGAB9IQyoM" role="37wK5m">
                          <ref role="37wK5l" to="1ctc:~Collectors.toSet()" resolve="toSet" />
                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7PGAB9IQyoN" role="3eO9$A">
              <node concept="2ZW3vV" id="7PGAB9IQyoO" role="3uHU7w">
                <node concept="3uibUv" id="7PGAB9IQyoP" role="2ZW6by">
                  <ref role="3uigEE" to="zrbp:~Collection" resolve="Collection" />
                </node>
                <node concept="37vLTw" id="7PGAB9IQyoQ" role="2ZW6bz">
                  <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
                </node>
              </node>
              <node concept="3clFbC" id="7PGAB9IQyoR" role="3uHU7B">
                <node concept="37vLTw" id="7PGAB9IQyoS" role="3uHU7B">
                  <ref role="3cqZAo" node="6Ct1cXsymF0" resolve="cls" />
                </node>
                <node concept="3VsKOn" id="7PGAB9IQyoT" role="3uHU7w">
                  <ref role="3VsUkX" to="33ny:~Set" resolve="Set" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="3DB41z9GGcG" role="3eNLev">
            <node concept="3clFbS" id="3DB41z9GGcK" role="3eOfB_">
              <node concept="3clFbF" id="3DB41z9GGcL" role="3cqZAp">
                <node concept="37vLTI" id="3DB41z9GGcM" role="3clFbG">
                  <node concept="37vLTw" id="3DB41z9GGdq" role="37vLTJ">
                    <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
                  </node>
                  <node concept="10QFUN" id="3DB41z9GGcO" role="37vLTx">
                    <node concept="16syzq" id="3DB41z9GGcP" role="10QFUM">
                      <ref role="16sUi3" node="3DB41z9H8Ju" resolve="T" />
                    </node>
                    <node concept="2OqwBi" id="3DB41z9GGcQ" role="10QFUP">
                      <node concept="1eOMI4" id="3DB41z9GGcR" role="2Oq$k0">
                        <node concept="10QFUN" id="3DB41z9GGcS" role="1eOMHV">
                          <node concept="3uibUv" id="1cUpE405vqY" role="10QFUM">
                            <ref role="3uigEE" to="zrbp:~Map" resolve="Map" />
                            <node concept="3uibUv" id="4sx0mC_vLtu" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                            <node concept="3uibUv" id="4sx0mC_vOjz" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3DB41z9GGdo" role="10QFUP">
                            <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7PGAB9IRXGe" role="2OqNvi">
                        <ref role="37wK5l" to="zrbp:~Map.toMutable()" resolve="toMutable" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="15s5l7" id="3DB41z9GGdd" role="lGtFl">
                  <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type ? super j48 is not a subtype of org.modelingvalue.collections.Entry&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590337(jetbrains.mps.baseLanguage.closures.typesystem)/8701449112292740706,r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5977092449933510825]&quot;;" />
                  <property role="huDt6" value="Error: type ? super j48 is not a subtype of org.modelingvalue.collections.Entry" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="5GTBd9DBUL6" role="3eO9$A">
              <node concept="2ZW3vV" id="5GTBd9DBX9B" role="3uHU7w">
                <node concept="3uibUv" id="6S5EomdC5H2" role="2ZW6by">
                  <ref role="3uigEE" to="zrbp:~Map" resolve="Map" />
                </node>
                <node concept="37vLTw" id="5GTBd9DBWbI" role="2ZW6bz">
                  <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
                </node>
              </node>
              <node concept="3clFbC" id="5GTBd9D1TZc" role="3uHU7B">
                <node concept="37vLTw" id="6Ct1cXsymF6" role="3uHU7B">
                  <ref role="3cqZAo" node="6Ct1cXsymF0" resolve="cls" />
                </node>
                <node concept="3VsKOn" id="5GTBd9D1V$6" role="3uHU7w">
                  <ref role="3VsUkX" to="33ny:~Map" resolve="Map" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="5GTBd9DBHeE" role="3clFbw">
            <node concept="2ZW3vV" id="5GTBd9DBK2N" role="3uHU7w">
              <node concept="3uibUv" id="6S5EomdBUy7" role="2ZW6by">
                <ref role="3uigEE" to="zrbp:~List" resolve="List" />
              </node>
              <node concept="37vLTw" id="5GTBd9DBJ4U" role="2ZW6bz">
                <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
              </node>
            </node>
            <node concept="3clFbC" id="5GTBd9D1Jrp" role="3uHU7B">
              <node concept="37vLTw" id="6Ct1cXsymF4" role="3uHU7B">
                <ref role="3cqZAo" node="6Ct1cXsymF0" resolve="cls" />
              </node>
              <node concept="3VsKOn" id="5GTBd9D1M4i" role="3uHU7w">
                <ref role="3VsUkX" to="33ny:~List" resolve="List" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3DB41z9GGde" role="3cqZAp">
          <node concept="10QFUN" id="3u6Ya6vHWFf" role="3cqZAk">
            <node concept="37vLTw" id="3DB41z9GGdl" role="10QFUP">
              <ref role="3cqZAo" node="3DB41z9GGdg" resolve="value" />
            </node>
            <node concept="16syzq" id="3u6Ya6vHWFg" role="10QFUM">
              <ref role="16sUi3" node="3DB41z9H8Ju" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="3DB41z9H8Ju" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="3DB41z9GTqx" role="jymVt" />
    <node concept="2YIFZL" id="3DB41z9GPiA" role="jymVt">
      <property role="TrG5h" value="toNonMutable" />
      <node concept="3Tm1VV" id="3DB41z9L5rq" role="1B3o_S" />
      <node concept="16syzq" id="3DB41z9GPiC" role="3clF45">
        <ref role="16sUi3" node="3DB41z9GX$V" resolve="T" />
      </node>
      <node concept="37vLTG" id="5GTBd9D12a_" role="3clF46">
        <property role="TrG5h" value="attr" />
        <node concept="3uibUv" id="5GTBd9D14l$" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DAttribute" resolve="DAttribute" />
          <node concept="3qTvmN" id="5GTBd9D179L" role="11_B2D" />
          <node concept="16syzq" id="6Ct1cXsyi6m" role="11_B2D">
            <ref role="16sUi3" node="3DB41z9GX$V" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3DB41z9GPio" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="3u6Ya6vHXNK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="3DB41z9GPhm" role="3clF47">
        <node concept="3cpWs8" id="6Ct1cXsysfT" role="3cqZAp">
          <node concept="3cpWsn" id="6Ct1cXsysfU" role="3cpWs9">
            <property role="TrG5h" value="cls" />
            <node concept="3uibUv" id="6Ct1cXsyrjY" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
              <node concept="3qTvmN" id="6Ct1cXsyrk1" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="6Ct1cXsysfV" role="33vP2m">
              <node concept="37vLTw" id="6Ct1cXsysfW" role="2Oq$k0">
                <ref role="3cqZAo" node="5GTBd9D12a_" resolve="attr" />
              </node>
              <node concept="liA8E" id="6Ct1cXsysfX" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DAttribute.cls()" resolve="cls" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3DB41z9GPhp" role="3cqZAp">
          <node concept="3clFbS" id="3DB41z9GPhq" role="3clFbx">
            <node concept="3clFbF" id="3DB41z9GPhr" role="3cqZAp">
              <node concept="37vLTI" id="3DB41z9GPhs" role="3clFbG">
                <node concept="10QFUN" id="3DB41z9GPht" role="37vLTx">
                  <node concept="16syzq" id="3DB41z9GPhu" role="10QFUM">
                    <ref role="16sUi3" node="3DB41z9GX$V" resolve="T" />
                  </node>
                  <node concept="2OqwBi" id="2$eQdABoqs_" role="10QFUP">
                    <node concept="1eOMI4" id="2$eQdABoqsA" role="2Oq$k0">
                      <node concept="10QFUN" id="2$eQdABoqsB" role="1eOMHV">
                        <node concept="3uibUv" id="2$eQdABoqsC" role="10QFUM">
                          <ref role="3uigEE" to="9aa5:~Mutable" resolve="Mutable" />
                        </node>
                        <node concept="37vLTw" id="2$eQdABoqsD" role="10QFUP">
                          <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2$eQdABoqsE" role="2OqNvi">
                      <ref role="37wK5l" to="9aa5:~Mutable.toImmutable()" resolve="toImmutable" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3DB41z9GPiq" role="37vLTJ">
                  <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2$eQdABmZYe" role="3eNLev">
            <node concept="3clFbS" id="2$eQdABmZYg" role="3eOfB_">
              <node concept="3clFbF" id="2$eQdABndle" role="3cqZAp">
                <node concept="37vLTI" id="2$eQdABndlf" role="3clFbG">
                  <node concept="10QFUN" id="2$eQdABndlg" role="37vLTx">
                    <node concept="16syzq" id="2$eQdABndlh" role="10QFUM">
                      <ref role="16sUi3" node="3DB41z9GX$V" resolve="T" />
                    </node>
                    <node concept="2OqwBi" id="2$eQdABndli" role="10QFUP">
                      <node concept="2OqwBi" id="2$eQdABndlj" role="2Oq$k0">
                        <node concept="2OqwBi" id="2$eQdABndlk" role="2Oq$k0">
                          <node concept="2YIFZM" id="2$eQdABndll" role="2Oq$k0">
                            <ref role="1Pybhc" to="zrbp:~Collection" resolve="Collection" />
                            <ref role="37wK5l" to="zrbp:~Collection.of(java.lang.Iterable)" resolve="of" />
                            <node concept="10QFUN" id="2$eQdABndlm" role="37wK5m">
                              <node concept="3uibUv" id="2$eQdABndln" role="10QFUM">
                                <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                                <node concept="3qTvmN" id="2$eQdABndlo" role="11_B2D" />
                              </node>
                              <node concept="37vLTw" id="2$eQdABndlp" role="10QFUP">
                                <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="2$eQdABndlq" role="2OqNvi">
                            <ref role="37wK5l" to="zrbp:~Collection.distinct()" resolve="distinct" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2$eQdABndlr" role="2OqNvi">
                          <ref role="37wK5l" to="zrbp:~Collection.notNull()" resolve="notNull" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2$eQdABndls" role="2OqNvi">
                        <ref role="37wK5l" to="zrbp:~Collection.toList()" resolve="toList" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2$eQdABndlt" role="37vLTJ">
                    <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="2$eQdABn5XV" role="3eO9$A">
              <node concept="2OqwBi" id="2$eQdABn5XW" role="3uHU7w">
                <node concept="37vLTw" id="2$eQdABn5XX" role="2Oq$k0">
                  <ref role="3cqZAo" node="5GTBd9D12a_" resolve="attr" />
                </node>
                <node concept="liA8E" id="2$eQdABn5XY" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DAttribute.isComposite()" resolve="isComposite" />
                </node>
              </node>
              <node concept="1Wc70l" id="2$eQdABn5XZ" role="3uHU7B">
                <node concept="3clFbC" id="2$eQdABn5Y0" role="3uHU7B">
                  <node concept="37vLTw" id="2$eQdABn5Y1" role="3uHU7B">
                    <ref role="3cqZAo" node="6Ct1cXsysfU" resolve="cls" />
                  </node>
                  <node concept="3VsKOn" id="2$eQdABn5Y2" role="3uHU7w">
                    <ref role="3VsUkX" to="33ny:~List" resolve="List" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="2$eQdABn5Y3" role="3uHU7w">
                  <node concept="3uibUv" id="2$eQdABn5Y4" role="2ZW6by">
                    <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                  </node>
                  <node concept="37vLTw" id="2$eQdABn5Y5" role="2ZW6bz">
                    <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="6Ct1cXsyzlT" role="3eNLev">
            <node concept="3clFbS" id="6Ct1cXsyzlV" role="3eOfB_">
              <node concept="3clFbF" id="6Ct1cXsyFOw" role="3cqZAp">
                <node concept="37vLTI" id="6Ct1cXsyFOy" role="3clFbG">
                  <node concept="10QFUN" id="6Ct1cXsyFOz" role="37vLTx">
                    <node concept="16syzq" id="6Ct1cXsyFO$" role="10QFUM">
                      <ref role="16sUi3" node="3DB41z9GX$V" resolve="T" />
                    </node>
                    <node concept="2OqwBi" id="6Ct1cXsyFO_" role="10QFUP">
                      <node concept="2OqwBi" id="2$eQdABlYKn" role="2Oq$k0">
                        <node concept="2YIFZM" id="6Ct1cXsyFOA" role="2Oq$k0">
                          <ref role="1Pybhc" to="zrbp:~Collection" resolve="Collection" />
                          <ref role="37wK5l" to="zrbp:~Collection.of(java.lang.Iterable)" resolve="of" />
                          <node concept="10QFUN" id="6Ct1cXsyFOB" role="37wK5m">
                            <node concept="3uibUv" id="6Ct1cXsyFOC" role="10QFUM">
                              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                              <node concept="3qTvmN" id="6Ct1cXsyFOD" role="11_B2D" />
                            </node>
                            <node concept="37vLTw" id="6Ct1cXsyFOE" role="10QFUP">
                              <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="2$eQdABm7io" role="2OqNvi">
                          <ref role="37wK5l" to="zrbp:~Collection.notNull()" resolve="notNull" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6Ct1cXsyFOF" role="2OqNvi">
                        <ref role="37wK5l" to="zrbp:~Collection.toList()" resolve="toList" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6Ct1cXsyFOG" role="37vLTJ">
                    <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="6Ct1cXsyDhT" role="3eO9$A">
              <node concept="3fqX7Q" id="6Ct1cXsyEuf" role="3uHU7w">
                <node concept="2OqwBi" id="6Ct1cXsyF5w" role="3fr31v">
                  <node concept="37vLTw" id="6Ct1cXsyENn" role="2Oq$k0">
                    <ref role="3cqZAo" node="5GTBd9D12a_" resolve="attr" />
                  </node>
                  <node concept="liA8E" id="6Ct1cXsyFHN" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DAttribute.isComposite()" resolve="isComposite" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="6Ct1cXsy_l$" role="3uHU7B">
                <node concept="3clFbC" id="6Ct1cXsy_lC" role="3uHU7B">
                  <node concept="37vLTw" id="6Ct1cXsy_lD" role="3uHU7B">
                    <ref role="3cqZAo" node="6Ct1cXsysfU" resolve="cls" />
                  </node>
                  <node concept="3VsKOn" id="6Ct1cXsy_lE" role="3uHU7w">
                    <ref role="3VsUkX" to="33ny:~List" resolve="List" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="6Ct1cXsy_l_" role="3uHU7w">
                  <node concept="3uibUv" id="6Ct1cXsy_lA" role="2ZW6by">
                    <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                  </node>
                  <node concept="37vLTw" id="6Ct1cXsy_lB" role="2ZW6bz">
                    <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="3DB41z9GPhC" role="3eNLev">
            <node concept="3clFbS" id="3DB41z9GPhG" role="3eOfB_">
              <node concept="3clFbF" id="3DB41z9GPhH" role="3cqZAp">
                <node concept="37vLTI" id="3DB41z9GPhI" role="3clFbG">
                  <node concept="37vLTw" id="3DB41z9GPiw" role="37vLTJ">
                    <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
                  </node>
                  <node concept="10QFUN" id="3DB41z9GPhK" role="37vLTx">
                    <node concept="16syzq" id="3DB41z9GPhL" role="10QFUM">
                      <ref role="16sUi3" node="3DB41z9GX$V" resolve="T" />
                    </node>
                    <node concept="2OqwBi" id="2$eQdABlN1S" role="10QFUP">
                      <node concept="2OqwBi" id="1cUpE405m$X" role="2Oq$k0">
                        <node concept="2YIFZM" id="3DB41z9GPhM" role="2Oq$k0">
                          <ref role="1Pybhc" to="zrbp:~Collection" resolve="Collection" />
                          <ref role="37wK5l" to="zrbp:~Collection.of(java.lang.Iterable)" resolve="of" />
                          <node concept="10QFUN" id="3DB41z9GPhN" role="37wK5m">
                            <node concept="3uibUv" id="3DB41z9GPhO" role="10QFUM">
                              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                              <node concept="3qTvmN" id="3DB41z9GPhP" role="11_B2D" />
                            </node>
                            <node concept="37vLTw" id="3DB41z9GPix" role="10QFUP">
                              <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="1cUpE405pbB" role="2OqNvi">
                          <ref role="37wK5l" to="zrbp:~Collection.notNull()" resolve="notNull" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2$eQdABlS8l" role="2OqNvi">
                        <ref role="37wK5l" to="zrbp:~Collection.toSet()" resolve="toSet" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="5GTBd9DBzB9" role="3eO9$A">
              <node concept="2ZW3vV" id="5GTBd9DBA0L" role="3uHU7w">
                <node concept="3uibUv" id="1cUpE40570i" role="2ZW6by">
                  <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                </node>
                <node concept="37vLTw" id="5GTBd9DB_9W" role="2ZW6bz">
                  <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
                </node>
              </node>
              <node concept="3clFbC" id="5GTBd9D1sGB" role="3uHU7B">
                <node concept="37vLTw" id="6Ct1cXsysfZ" role="3uHU7B">
                  <ref role="3cqZAo" node="6Ct1cXsysfU" resolve="cls" />
                </node>
                <node concept="3VsKOn" id="5GTBd9D1vyg" role="3uHU7w">
                  <ref role="3VsUkX" to="33ny:~Set" resolve="Set" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="3DB41z9GPhR" role="3eNLev">
            <node concept="3clFbS" id="3DB41z9GPhV" role="3eOfB_">
              <node concept="3clFbF" id="3DB41z9GPhW" role="3cqZAp">
                <node concept="37vLTI" id="3DB41z9GPhX" role="3clFbG">
                  <node concept="37vLTw" id="3DB41z9GPit" role="37vLTJ">
                    <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
                  </node>
                  <node concept="10QFUN" id="3DB41z9GPhZ" role="37vLTx">
                    <node concept="16syzq" id="3DB41z9GPi0" role="10QFUM">
                      <ref role="16sUi3" node="3DB41z9GX$V" resolve="T" />
                    </node>
                    <node concept="2OqwBi" id="3DB41z9GPi1" role="10QFUP">
                      <node concept="2OqwBi" id="2$eQdABloz6" role="2Oq$k0">
                        <node concept="2YIFZM" id="3DB41z9GPi2" role="2Oq$k0">
                          <ref role="1Pybhc" to="zrbp:~Collection" resolve="Collection" />
                          <ref role="37wK5l" to="zrbp:~Collection.of(java.lang.Iterable)" resolve="of" />
                          <node concept="2OqwBi" id="3DB41z9GPi3" role="37wK5m">
                            <node concept="1eOMI4" id="3DB41z9GPi4" role="2Oq$k0">
                              <node concept="10QFUN" id="3DB41z9GPi5" role="1eOMHV">
                                <node concept="3uibUv" id="3DB41z9GPi6" role="10QFUM">
                                  <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                                  <node concept="3uibUv" id="3BqGZvwU$vT" role="11_B2D">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="3uibUv" id="3BqGZvwUBhE" role="11_B2D">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="3DB41z9GPiy" role="10QFUP">
                                  <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="3DB41z9GPi8" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Map.entrySet()" resolve="entrySet" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="2$eQdABlzGf" role="2OqNvi">
                          <ref role="37wK5l" to="zrbp:~Collection.notNull()" resolve="notNull" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3DB41z9GPi9" role="2OqNvi">
                        <ref role="37wK5l" to="zrbp:~Collection.toMap(java.util.function.Function)" resolve="toMap" />
                        <node concept="1bVj0M" id="3DB41z9GPia" role="37wK5m">
                          <node concept="3clFbS" id="3DB41z9GPib" role="1bW5cS">
                            <node concept="3clFbF" id="3DB41z9GPic" role="3cqZAp">
                              <node concept="2YIFZM" id="3DB41z9GPid" role="3clFbG">
                                <ref role="1Pybhc" to="zrbp:~Entry" resolve="Entry" />
                                <ref role="37wK5l" to="zrbp:~Entry.of(java.lang.Object,java.lang.Object)" resolve="of" />
                                <node concept="2OqwBi" id="3DB41z9GPie" role="37wK5m">
                                  <node concept="37vLTw" id="3DB41z9GPif" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3DB41z9GPik" resolve="e" />
                                  </node>
                                  <node concept="liA8E" id="3DB41z9GPig" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Map$Entry.getKey()" resolve="getKey" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="3DB41z9GPih" role="37wK5m">
                                  <node concept="37vLTw" id="3DB41z9GPii" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3DB41z9GPik" resolve="e" />
                                  </node>
                                  <node concept="liA8E" id="3DB41z9GPij" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Map$Entry.getValue()" resolve="getValue" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="3DB41z9GPik" role="1bW2Oz">
                            <property role="TrG5h" value="e" />
                            <node concept="3uibUv" id="3DB41z9GPil" role="1tU5fm">
                              <ref role="3uigEE" to="33ny:~Map$Entry" resolve="Map.Entry" />
                              <node concept="3uibUv" id="3BqGZvwUIee" role="11_B2D">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="3uibUv" id="3BqGZvwUJnA" role="11_B2D">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
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
            <node concept="1Wc70l" id="5GTBd9DBCsH" role="3eO9$A">
              <node concept="2ZW3vV" id="5GTBd9DBFeT" role="3uHU7w">
                <node concept="3uibUv" id="37Y5i25LkI5" role="2ZW6by">
                  <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                </node>
                <node concept="37vLTw" id="5GTBd9DBE0b" role="2ZW6bz">
                  <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
                </node>
              </node>
              <node concept="3clFbC" id="5GTBd9D1zSY" role="3uHU7B">
                <node concept="37vLTw" id="6Ct1cXsysg0" role="3uHU7B">
                  <ref role="3cqZAo" node="6Ct1cXsysfU" resolve="cls" />
                </node>
                <node concept="3VsKOn" id="5GTBd9D1Ahj" role="3uHU7w">
                  <ref role="3VsUkX" to="33ny:~Map" resolve="Map" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2$eQdABocu8" role="3clFbw">
            <node concept="3uibUv" id="2$eQdABocu9" role="2ZW6by">
              <ref role="3uigEE" to="9aa5:~Mutable" resolve="Mutable" />
            </node>
            <node concept="37vLTw" id="2$eQdABocua" role="2ZW6bz">
              <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3DB41z9GPim" role="3cqZAp">
          <node concept="10QFUN" id="3u6Ya6vHZBE" role="3cqZAk">
            <node concept="37vLTw" id="3DB41z9GPiu" role="10QFUP">
              <ref role="3cqZAo" node="3DB41z9GPio" resolve="value" />
            </node>
            <node concept="16syzq" id="3u6Ya6vHZBF" role="10QFUM">
              <ref role="16sUi3" node="3DB41z9GX$V" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="3DB41z9GX$V" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="6QNGPTyqSNj" role="jymVt" />
    <node concept="2YIFZL" id="7qx2SEVljem" role="jymVt">
      <property role="TrG5h" value="toNonMutable" />
      <node concept="3Tm6S6" id="7qx2SEVl_XN" role="1B3o_S" />
      <node concept="3uibUv" id="7qx2SEVpFsH" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="7qx2SEVljet" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="7qx2SEVljeu" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="7qx2SEVljev" role="3clF47">
        <node concept="3clFbJ" id="7qx2SEVljeB" role="3cqZAp">
          <node concept="3clFbS" id="7qx2SEVljeC" role="3clFbx">
            <node concept="3clFbF" id="2$eQdABmK6d" role="3cqZAp">
              <node concept="37vLTI" id="2$eQdABmNox" role="3clFbG">
                <node concept="2OqwBi" id="2$eQdABmTWp" role="37vLTx">
                  <node concept="1eOMI4" id="2$eQdABmQD$" role="2Oq$k0">
                    <node concept="10QFUN" id="2$eQdABmQDx" role="1eOMHV">
                      <node concept="3uibUv" id="2$eQdABmQDA" role="10QFUM">
                        <ref role="3uigEE" to="9aa5:~Mutable" resolve="Mutable" />
                      </node>
                      <node concept="37vLTw" id="2$eQdABmQDB" role="10QFUP">
                        <ref role="3cqZAo" node="7qx2SEVljet" resolve="value" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="2$eQdABmXiE" role="2OqNvi">
                    <ref role="37wK5l" to="9aa5:~Mutable.toImmutable()" resolve="toImmutable" />
                  </node>
                </node>
                <node concept="37vLTw" id="2$eQdABmK6c" role="37vLTJ">
                  <ref role="3cqZAo" node="7qx2SEVljet" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2$eQdABnlm5" role="3eNLev">
            <node concept="3clFbS" id="2$eQdABnlm7" role="3eOfB_">
              <node concept="3clFbF" id="7qx2SEVljfj" role="3cqZAp">
                <node concept="37vLTI" id="7qx2SEVljfk" role="3clFbG">
                  <node concept="37vLTw" id="7qx2SEVljfl" role="37vLTJ">
                    <ref role="3cqZAo" node="7qx2SEVljet" resolve="value" />
                  </node>
                  <node concept="2OqwBi" id="7qx2SEVmU07" role="37vLTx">
                    <node concept="2OqwBi" id="7qx2SEVmkcq" role="2Oq$k0">
                      <node concept="2YIFZM" id="7qx2SEVljfp" role="2Oq$k0">
                        <ref role="1Pybhc" to="zrbp:~Collection" resolve="Collection" />
                        <ref role="37wK5l" to="zrbp:~Collection.of(java.lang.Iterable)" resolve="of" />
                        <node concept="10QFUN" id="7qx2SEVljfq" role="37wK5m">
                          <node concept="3uibUv" id="7qx2SEVljfr" role="10QFUM">
                            <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                            <node concept="3uibUv" id="7qx2SEVmG$V" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7qx2SEVljft" role="10QFUP">
                            <ref role="3cqZAo" node="7qx2SEVljet" resolve="value" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="7qx2SEVmD6e" role="3PaCim">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7qx2SEVmnYs" role="2OqNvi">
                        <ref role="37wK5l" to="zrbp:~Collection.map(java.util.function.Function)" resolve="map" />
                        <node concept="1bVj0M" id="7qx2SEVmrzG" role="37wK5m">
                          <node concept="37vLTG" id="7qx2SEVms5N" role="1bW2Oz">
                            <property role="TrG5h" value="e" />
                            <node concept="3uibUv" id="7qx2SEVmsam" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="7qx2SEVmrzI" role="1bW5cS">
                            <node concept="3clFbF" id="7qx2SEVmw05" role="3cqZAp">
                              <node concept="1rXfSq" id="7qx2SEVmw04" role="3clFbG">
                                <ref role="37wK5l" node="7qx2SEVljem" resolve="toNonMutable" />
                                <node concept="37vLTw" id="7qx2SEVmxaB" role="37wK5m">
                                  <ref role="3cqZAo" node="7qx2SEVms5N" resolve="e" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="7qx2SEVmQg3" role="3PaCim">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7qx2SEVmYv8" role="2OqNvi">
                      <ref role="37wK5l" to="zrbp:~Collection.toSet()" resolve="toSet" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="7qx2SEVljgh" role="3eO9$A">
              <node concept="3uibUv" id="7qx2SEVmfaJ" role="2ZW6by">
                <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              </node>
              <node concept="37vLTw" id="7qx2SEVljgj" role="2ZW6bz">
                <ref role="3cqZAo" node="7qx2SEVljet" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7qx2SEVljfh" role="3eNLev">
            <node concept="3clFbS" id="7qx2SEVljfi" role="3eOfB_">
              <node concept="3clFbF" id="7qx2SEVljfC" role="3cqZAp">
                <node concept="37vLTI" id="7qx2SEVljfD" role="3clFbG">
                  <node concept="37vLTw" id="7qx2SEVljfE" role="37vLTJ">
                    <ref role="3cqZAo" node="7qx2SEVljet" resolve="value" />
                  </node>
                  <node concept="2OqwBi" id="7qx2SEVljfH" role="37vLTx">
                    <node concept="2YIFZM" id="7qx2SEVljfI" role="2Oq$k0">
                      <ref role="1Pybhc" to="zrbp:~Collection" resolve="Collection" />
                      <ref role="37wK5l" to="zrbp:~Collection.of(java.lang.Iterable)" resolve="of" />
                      <node concept="2OqwBi" id="7qx2SEVljfJ" role="37wK5m">
                        <node concept="1eOMI4" id="7qx2SEVljfK" role="2Oq$k0">
                          <node concept="10QFUN" id="7qx2SEVljfL" role="1eOMHV">
                            <node concept="3uibUv" id="7qx2SEVljfM" role="10QFUM">
                              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                              <node concept="3uibUv" id="7qx2SEVneOM" role="11_B2D">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="3uibUv" id="7qx2SEVniHN" role="11_B2D">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="7qx2SEVljfN" role="10QFUP">
                              <ref role="3cqZAo" node="7qx2SEVljet" resolve="value" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7qx2SEVljfO" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Map.entrySet()" resolve="entrySet" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7qx2SEVljfP" role="2OqNvi">
                      <ref role="37wK5l" to="zrbp:~Collection.toMap(java.util.function.Function)" resolve="toMap" />
                      <node concept="1bVj0M" id="7qx2SEVljfQ" role="37wK5m">
                        <node concept="3clFbS" id="7qx2SEVljfR" role="1bW5cS">
                          <node concept="3clFbF" id="7qx2SEVljfS" role="3cqZAp">
                            <node concept="2YIFZM" id="7qx2SEVljfT" role="3clFbG">
                              <ref role="1Pybhc" to="zrbp:~Entry" resolve="Entry" />
                              <ref role="37wK5l" to="zrbp:~Entry.of(java.lang.Object,java.lang.Object)" resolve="of" />
                              <node concept="3uibUv" id="7qx2SEVno1P" role="3PaCim">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="3uibUv" id="7qx2SEVnoMs" role="3PaCim">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="1rXfSq" id="7qx2SEVopam" role="37wK5m">
                                <ref role="37wK5l" node="7qx2SEVljem" resolve="toNonMutable" />
                                <node concept="2OqwBi" id="7qx2SEVopan" role="37wK5m">
                                  <node concept="37vLTw" id="7qx2SEVopao" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7qx2SEVljg0" resolve="e" />
                                  </node>
                                  <node concept="liA8E" id="7qx2SEVoqW3" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Map$Entry.getKey()" resolve="getKey" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1rXfSq" id="7qx2SEVnb4h" role="37wK5m">
                                <ref role="37wK5l" node="7qx2SEVljem" resolve="toNonMutable" />
                                <node concept="2OqwBi" id="7qx2SEVljfX" role="37wK5m">
                                  <node concept="37vLTw" id="7qx2SEVljfY" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7qx2SEVljg0" resolve="e" />
                                  </node>
                                  <node concept="liA8E" id="7qx2SEVljfZ" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Map$Entry.getValue()" resolve="getValue" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="7qx2SEVljg0" role="1bW2Oz">
                          <property role="TrG5h" value="e" />
                          <node concept="3uibUv" id="7qx2SEVljg1" role="1tU5fm">
                            <ref role="3uigEE" to="33ny:~Map$Entry" resolve="Map.Entry" />
                            <node concept="3uibUv" id="7qx2SEVntF1" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                            <node concept="3uibUv" id="7qx2SEVnyz7" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="7qx2SEVljfw" role="3eO9$A">
              <node concept="3uibUv" id="7qx2SEVmg8C" role="2ZW6by">
                <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              </node>
              <node concept="37vLTw" id="7qx2SEVljfy" role="2ZW6bz">
                <ref role="3cqZAo" node="7qx2SEVljet" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7qx2SEVljfA" role="3eNLev">
            <node concept="3clFbS" id="7qx2SEVljfB" role="3eOfB_">
              <node concept="3clFbF" id="7qx2SEVljeD" role="3cqZAp">
                <node concept="37vLTI" id="7qx2SEVljeE" role="3clFbG">
                  <node concept="2OqwBi" id="7qx2SEVljeH" role="37vLTx">
                    <node concept="2OqwBi" id="7qx2SEVnHny" role="2Oq$k0">
                      <node concept="2YIFZM" id="7qx2SEVljeJ" role="2Oq$k0">
                        <ref role="1Pybhc" to="zrbp:~Collection" resolve="Collection" />
                        <ref role="37wK5l" to="zrbp:~Collection.of(java.lang.Iterable)" resolve="of" />
                        <node concept="10QFUN" id="7qx2SEVljeK" role="37wK5m">
                          <node concept="3uibUv" id="7qx2SEVljeL" role="10QFUM">
                            <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                            <node concept="3uibUv" id="7qx2SEVnBFV" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7qx2SEVljeN" role="10QFUP">
                            <ref role="3cqZAo" node="7qx2SEVljet" resolve="value" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7qx2SEVnM0_" role="2OqNvi">
                        <ref role="37wK5l" to="zrbp:~Collection.map(java.util.function.Function)" resolve="map" />
                        <node concept="1bVj0M" id="7qx2SEVnPgu" role="37wK5m">
                          <node concept="37vLTG" id="7qx2SEVnPgv" role="1bW2Oz">
                            <property role="TrG5h" value="e" />
                            <node concept="3uibUv" id="7qx2SEVnPgw" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="7qx2SEVnPgx" role="1bW5cS">
                            <node concept="3clFbF" id="7qx2SEVnPgy" role="3cqZAp">
                              <node concept="1rXfSq" id="7qx2SEVnPgz" role="3clFbG">
                                <ref role="37wK5l" node="7qx2SEVljem" resolve="toNonMutable" />
                                <node concept="37vLTw" id="7qx2SEVnPg$" role="37wK5m">
                                  <ref role="3cqZAo" node="7qx2SEVnPgv" resolve="e" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="7qx2SEVnUBM" role="3PaCim">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7qx2SEVljeP" role="2OqNvi">
                      <ref role="37wK5l" to="zrbp:~Collection.toList()" resolve="toList" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7qx2SEVljeQ" role="37vLTJ">
                    <ref role="3cqZAo" node="7qx2SEVljet" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="1idF2JyWGzj" role="3eO9$A">
              <node concept="3fqX7Q" id="1idF2JyWQwf" role="3uHU7w">
                <node concept="1eOMI4" id="1idF2JyWQwh" role="3fr31v">
                  <node concept="2ZW3vV" id="1idF2JyWZEl" role="1eOMHV">
                    <node concept="3uibUv" id="1idF2JyX2Xd" role="2ZW6by">
                      <ref role="3uigEE" to="zrbp:~ContainingCollection" resolve="ContainingCollection" />
                    </node>
                    <node concept="37vLTw" id="1idF2JyWWiY" role="2ZW6bz">
                      <ref role="3cqZAo" node="7qx2SEVljet" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="7qx2SEVljg3" role="3uHU7B">
                <node concept="3uibUv" id="7qx2SEVmyke" role="2ZW6by">
                  <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                </node>
                <node concept="37vLTw" id="7qx2SEVljg5" role="2ZW6bz">
                  <ref role="3cqZAo" node="7qx2SEVljet" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2$eQdABmyMT" role="3clFbw">
            <node concept="3uibUv" id="2$eQdABm_Mb" role="2ZW6by">
              <ref role="3uigEE" to="9aa5:~Mutable" resolve="Mutable" />
            </node>
            <node concept="37vLTw" id="2$eQdABmvvT" role="2ZW6bz">
              <ref role="3cqZAo" node="7qx2SEVljet" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7qx2SEVljgk" role="3cqZAp">
          <node concept="1rXfSq" id="4dRWk3pfhwu" role="3cqZAk">
            <ref role="37wK5l" node="7cS5T_tZh5f" resolve="toDObject" />
            <node concept="37vLTw" id="4dRWk3pfmq7" role="37wK5m">
              <ref role="3cqZAo" node="7qx2SEVljet" resolve="value" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qx2SEVlf3Q" role="jymVt" />
    <node concept="2YIFZL" id="7qx2SEVuLBV" role="jymVt">
      <property role="TrG5h" value="toNonMutable" />
      <node concept="3clFbS" id="7qx2SEVuLC0" role="3clF47">
        <node concept="1Dw8fO" id="7qx2SEVuLC1" role="3cqZAp">
          <node concept="3cpWsn" id="7qx2SEVuLC2" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="7qx2SEVuLC3" role="1tU5fm" />
            <node concept="3cmrfG" id="7qx2SEVuLC4" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="7qx2SEVuLC5" role="2LFqv$">
            <node concept="3clFbF" id="7qx2SEVuLC6" role="3cqZAp">
              <node concept="37vLTI" id="7qx2SEVuLC7" role="3clFbG">
                <node concept="AH0OO" id="7qx2SEVuLC8" role="37vLTJ">
                  <node concept="37vLTw" id="7qx2SEVuLC9" role="AHEQo">
                    <ref role="3cqZAo" node="7qx2SEVuLC2" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="7qx2SEVuLCa" role="AHHXb">
                    <ref role="3cqZAo" node="7qx2SEVuLBX" resolve="array" />
                  </node>
                </node>
                <node concept="1rXfSq" id="7qx2SEVuLCb" role="37vLTx">
                  <ref role="37wK5l" node="7qx2SEVljem" resolve="toNonMutable" />
                  <node concept="AH0OO" id="7qx2SEVuLCc" role="37wK5m">
                    <node concept="37vLTw" id="7qx2SEVuLCd" role="AHEQo">
                      <ref role="3cqZAo" node="7qx2SEVuLC2" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="7qx2SEVuLCe" role="AHHXb">
                      <ref role="3cqZAo" node="7qx2SEVuLBX" resolve="array" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="7qx2SEVuLCf" role="1Dwp0S">
            <node concept="2OqwBi" id="7qx2SEVuLCg" role="3uHU7w">
              <node concept="37vLTw" id="7qx2SEVuLCh" role="2Oq$k0">
                <ref role="3cqZAo" node="7qx2SEVuLBX" resolve="array" />
              </node>
              <node concept="1Rwk04" id="7qx2SEVuLCi" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="7qx2SEVuLCj" role="3uHU7B">
              <ref role="3cqZAo" node="7qx2SEVuLC2" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="7qx2SEVuLCk" role="1Dwrff">
            <node concept="37vLTw" id="7qx2SEVuLCl" role="2$L3a6">
              <ref role="3cqZAo" node="7qx2SEVuLC2" resolve="i" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7qx2SEVuLCn" role="3clF45" />
      <node concept="37vLTG" id="7qx2SEVuLBX" role="3clF46">
        <property role="TrG5h" value="array" />
        <node concept="10Q1$e" id="7qx2SEVuLBY" role="1tU5fm">
          <node concept="3uibUv" id="7qx2SEVuLBZ" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7qx2SEVuLCm" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1bjvCAPc3Ey" role="jymVt" />
    <node concept="2YIFZL" id="1bjvCAPcAhJ" role="jymVt">
      <property role="TrG5h" value="toDObject" />
      <node concept="37vLTG" id="1bjvCAPcSxq" role="3clF46">
        <property role="TrG5h" value="array" />
        <node concept="10Q1$e" id="1bjvCAPcT9M" role="1tU5fm">
          <node concept="3uibUv" id="1bjvCAPcT9J" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1bjvCAPcAhM" role="3clF47">
        <node concept="1Dw8fO" id="1bjvCAPd0vu" role="3cqZAp">
          <node concept="3cpWsn" id="1bjvCAPd0vv" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="1bjvCAPd0vw" role="1tU5fm" />
            <node concept="3cmrfG" id="1bjvCAPd0vx" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="1bjvCAPd0vy" role="2LFqv$">
            <node concept="3clFbF" id="1bjvCAPd0vz" role="3cqZAp">
              <node concept="37vLTI" id="1bjvCAPd0v$" role="3clFbG">
                <node concept="AH0OO" id="1bjvCAPd0v_" role="37vLTJ">
                  <node concept="37vLTw" id="1bjvCAPd0vA" role="AHEQo">
                    <ref role="3cqZAo" node="1bjvCAPd0vv" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="1bjvCAPd0vB" role="AHHXb">
                    <ref role="3cqZAo" node="1bjvCAPcSxq" resolve="array" />
                  </node>
                </node>
                <node concept="1rXfSq" id="1bjvCAPd0vC" role="37vLTx">
                  <ref role="37wK5l" node="7cS5T_tZh5f" resolve="toDObject" />
                  <node concept="AH0OO" id="1bjvCAPd0vD" role="37wK5m">
                    <node concept="37vLTw" id="1bjvCAPd0vE" role="AHEQo">
                      <ref role="3cqZAo" node="1bjvCAPd0vv" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="1bjvCAPd0vF" role="AHHXb">
                      <ref role="3cqZAo" node="1bjvCAPcSxq" resolve="array" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="1bjvCAPd0vG" role="1Dwp0S">
            <node concept="2OqwBi" id="1bjvCAPd0vH" role="3uHU7w">
              <node concept="37vLTw" id="1bjvCAPd0vI" role="2Oq$k0">
                <ref role="3cqZAo" node="1bjvCAPcSxq" resolve="array" />
              </node>
              <node concept="1Rwk04" id="1bjvCAPd0vJ" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="1bjvCAPd0vK" role="3uHU7B">
              <ref role="3cqZAo" node="1bjvCAPd0vv" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="1bjvCAPd0vL" role="1Dwrff">
            <node concept="37vLTw" id="1bjvCAPd0vM" role="2$L3a6">
              <ref role="3cqZAo" node="1bjvCAPd0vv" resolve="i" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1bjvCAPcjus" role="1B3o_S" />
      <node concept="3cqZAl" id="1bjvCAPc_Ix" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7qx2SEVoSkY" role="jymVt" />
    <node concept="2YIFZL" id="2v4o0zdF2x_" role="jymVt">
      <property role="TrG5h" value="setRootNodes" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2v4o0zdF2xC" role="3clF47">
        <node concept="3clFbF" id="2v4o0zdF645" role="3cqZAp">
          <node concept="2OqwBi" id="2v4o0zdF6q$" role="3clFbG">
            <node concept="1eOMI4" id="2v4o0zdF643" role="2Oq$k0">
              <node concept="10QFUN" id="2v4o0zdF640" role="1eOMHV">
                <node concept="3uibUv" id="2v4o0zdF64q" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                </node>
                <node concept="37vLTw" id="2v4o0zdF6by" role="10QFUP">
                  <ref role="3cqZAo" node="2v4o0zdF5Y0" resolve="model" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2v4o0zdF6NA" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DModel.setRootNodes(org.jetbrains.mps.openapi.language.SAbstractConcept,java.lang.Iterable)" resolve="setRootNodes" />
              <node concept="37vLTw" id="2v4o0zdGzaE" role="37wK5m">
                <ref role="3cqZAo" node="2v4o0zdGz0T" resolve="concept" />
              </node>
              <node concept="10QFUN" id="1cUpE408tx3" role="37wK5m">
                <node concept="37vLTw" id="2v4o0zdF6Ry" role="10QFUP">
                  <ref role="3cqZAo" node="2v4o0zdF5ZA" resolve="roots" />
                </node>
                <node concept="3uibUv" id="1cUpE408wrl" role="10QFUM">
                  <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2v4o0zdF1Sr" role="1B3o_S" />
      <node concept="3cqZAl" id="2v4o0zdF2wN" role="3clF45" />
      <node concept="37vLTG" id="2v4o0zdF5Y0" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="2v4o0zdF5XZ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="2v4o0zdGz0T" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="2v4o0zdGz2W" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="2v4o0zdF5ZA" role="3clF46">
        <property role="TrG5h" value="roots" />
        <node concept="3uibUv" id="2v4o0zdF60S" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3qUE_q" id="2v4o0zdFeLu" role="11_B2D">
            <node concept="3uibUv" id="2v4o0zdFeN9" role="3qUE_r">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5cJeDifmj0l" role="jymVt" />
    <node concept="2YIFZL" id="5cJeDifmojj" role="jymVt">
      <property role="TrG5h" value="getRootNodes" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5cJeDifmojk" role="3clF47">
        <node concept="3clFbF" id="5cJeDifmojl" role="3cqZAp">
          <node concept="2OqwBi" id="5cJeDifmojm" role="3clFbG">
            <node concept="1eOMI4" id="5cJeDifmojn" role="2Oq$k0">
              <node concept="10QFUN" id="5cJeDifmojo" role="1eOMHV">
                <node concept="3uibUv" id="5cJeDifmojp" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                </node>
                <node concept="37vLTw" id="5cJeDifmojq" role="10QFUP">
                  <ref role="3cqZAo" node="5cJeDifmojy" resolve="model" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5cJeDifmojr" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DModel.getRootNodes(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="getRootNodes" />
              <node concept="37vLTw" id="5cJeDifmojs" role="37wK5m">
                <ref role="3cqZAo" node="5cJeDifmoj$" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5cJeDifmojw" role="1B3o_S" />
      <node concept="37vLTG" id="5cJeDifmojy" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="5cJeDifmojz" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="5cJeDifmoj$" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="5cJeDifmoj_" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="2I9FWS" id="7DAUlEsVGT4" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5cJeDifmmJT" role="jymVt" />
    <node concept="2YIFZL" id="6agMp$f5NMN" role="jymVt">
      <property role="TrG5h" value="setModels" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6agMp$f5NMO" role="3clF47">
        <node concept="3clFbF" id="6agMp$f5NMR" role="3cqZAp">
          <node concept="2OqwBi" id="6agMp$f5NMS" role="3clFbG">
            <node concept="1eOMI4" id="6agMp$f5NMT" role="2Oq$k0">
              <node concept="10QFUN" id="6agMp$f5NMU" role="1eOMHV">
                <node concept="3uibUv" id="6agMp$f5Z2E" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
                </node>
                <node concept="37vLTw" id="6agMp$f5NMW" role="10QFUP">
                  <ref role="3cqZAo" node="6agMp$f5NN7" resolve="module" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6agMp$f5NMX" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DModule.setModels(java.lang.Iterable)" resolve="setModels" />
              <node concept="10QFUN" id="6agMp$f5NMZ" role="37wK5m">
                <node concept="37vLTw" id="6agMp$f5NN0" role="10QFUP">
                  <ref role="3cqZAo" node="6agMp$f5NNb" resolve="models" />
                </node>
                <node concept="3uibUv" id="6agMp$f5NN1" role="10QFUM">
                  <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6agMp$f5NN5" role="1B3o_S" />
      <node concept="3cqZAl" id="6agMp$f5NN6" role="3clF45" />
      <node concept="37vLTG" id="6agMp$f5NN7" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="6agMp$f5T1t" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="6agMp$f5NNb" role="3clF46">
        <property role="TrG5h" value="models" />
        <node concept="3uibUv" id="6agMp$f5NNc" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3qUE_q" id="6agMp$f5NNd" role="11_B2D">
            <node concept="3uibUv" id="6agMp$f5V3A" role="3qUE_r">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6agMp$f5N1C" role="jymVt" />
    <node concept="2YIFZL" id="6QNGPTyqUHH" role="jymVt">
      <property role="TrG5h" value="setFeatureValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6QNGPTyqUHK" role="3clF47">
        <node concept="3clFbF" id="2v4o0zdEWvc" role="3cqZAp">
          <node concept="2OqwBi" id="2v4o0zdEXze" role="3clFbG">
            <node concept="1eOMI4" id="2v4o0zdEWva" role="2Oq$k0">
              <node concept="10QFUN" id="2v4o0zdEWv7" role="1eOMHV">
                <node concept="3uibUv" id="2v4o0zdEWY9" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                </node>
                <node concept="37vLTw" id="2v4o0zdEXbf" role="10QFUP">
                  <ref role="3cqZAo" node="6QNGPTyqVlX" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2v4o0zdEXQ8" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DNode.setFeature(org.jetbrains.mps.openapi.language.SConceptFeature,java.lang.Object)" resolve="setFeature" />
              <node concept="37vLTw" id="2v4o0zdEXYw" role="37wK5m">
                <ref role="3cqZAo" node="6QNGPTyqVnp" resolve="feature" />
              </node>
              <node concept="37vLTw" id="2v4o0zdEY8J" role="37wK5m">
                <ref role="3cqZAo" node="6QNGPTyqYXx" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6QNGPTyqHYV" role="1B3o_S" />
      <node concept="3cqZAl" id="6QNGPTyqUGV" role="3clF45" />
      <node concept="37vLTG" id="6QNGPTyqVlX" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="6QNGPTyqVlW" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="6QNGPTyqVnp" role="3clF46">
        <property role="TrG5h" value="feature" />
        <node concept="3uibUv" id="2v4o0zdEWoJ" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConceptFeature" resolve="SConceptFeature" />
        </node>
      </node>
      <node concept="37vLTG" id="6QNGPTyqYXx" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="6QNGPTyqYYP" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1e$h3QEW80w" role="jymVt" />
    <node concept="2YIFZL" id="1e$h3QEWkaA" role="jymVt">
      <property role="TrG5h" value="setFeatureElementValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1e$h3QEWkaB" role="3clF47">
        <node concept="3cpWs8" id="1e$h3QEXaXT" role="3cqZAp">
          <node concept="3cpWsn" id="1e$h3QEXaXU" role="3cpWs9">
            <property role="TrG5h" value="list" />
            <node concept="3uibUv" id="1e$h3QEXaaZ" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="1e$h3QEXoxm" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="10QFUN" id="1e$h3QEXvu4" role="33vP2m">
              <node concept="3uibUv" id="1e$h3QEXxnc" role="10QFUM">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
              </node>
              <node concept="2OqwBi" id="1e$h3QEXaXV" role="10QFUP">
                <node concept="1eOMI4" id="1e$h3QEXaXW" role="2Oq$k0">
                  <node concept="10QFUN" id="1e$h3QEXaXX" role="1eOMHV">
                    <node concept="3uibUv" id="1e$h3QEXaXY" role="10QFUM">
                      <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                    </node>
                    <node concept="37vLTw" id="1e$h3QEXaXZ" role="10QFUP">
                      <ref role="3cqZAo" node="1e$h3QEWkaN" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1e$h3QEXaY0" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DNode.getFeature(org.jetbrains.mps.openapi.language.SConceptFeature)" resolve="getFeature" />
                  <node concept="37vLTw" id="1e$h3QEXaY1" role="37wK5m">
                    <ref role="3cqZAo" node="1e$h3QEWkaP" resolve="feature" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3VsksCuEiJl" role="3cqZAp">
          <node concept="2OqwBi" id="1e$h3QEXAGk" role="3clFbG">
            <node concept="37vLTw" id="1e$h3QEXaY2" role="2Oq$k0">
              <ref role="3cqZAo" node="1e$h3QEXaXU" resolve="list" />
            </node>
            <node concept="liA8E" id="1e$h3QEXC97" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.set(int,java.lang.Object)" resolve="set" />
              <node concept="37vLTw" id="1e$h3QEXDIL" role="37wK5m">
                <ref role="3cqZAo" node="1e$h3QEWGRo" resolve="index" />
              </node>
              <node concept="37vLTw" id="1e$h3QEXFlh" role="37wK5m">
                <ref role="3cqZAo" node="1e$h3QEWkaR" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1e$h3QEWkaC" role="3cqZAp">
          <node concept="2OqwBi" id="1e$h3QEWkaD" role="3clFbG">
            <node concept="1eOMI4" id="1e$h3QEWkaE" role="2Oq$k0">
              <node concept="10QFUN" id="1e$h3QEWkaF" role="1eOMHV">
                <node concept="3uibUv" id="1e$h3QEWkaG" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                </node>
                <node concept="37vLTw" id="1e$h3QEWkaH" role="10QFUP">
                  <ref role="3cqZAo" node="1e$h3QEWkaN" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1e$h3QEWkaI" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DNode.setFeature(org.jetbrains.mps.openapi.language.SConceptFeature,java.lang.Object)" resolve="setFeature" />
              <node concept="37vLTw" id="1e$h3QEWkaJ" role="37wK5m">
                <ref role="3cqZAo" node="1e$h3QEWkaP" resolve="feature" />
              </node>
              <node concept="37vLTw" id="3VsksCuElox" role="37wK5m">
                <ref role="3cqZAo" node="1e$h3QEXaXU" resolve="list" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1e$h3QEWkaL" role="1B3o_S" />
      <node concept="3cqZAl" id="1e$h3QEWkaM" role="3clF45" />
      <node concept="37vLTG" id="1e$h3QEWkaN" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1e$h3QEWkaO" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="1e$h3QEWkaP" role="3clF46">
        <property role="TrG5h" value="feature" />
        <node concept="3uibUv" id="1e$h3QEWkaQ" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="1e$h3QEWGRo" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="1e$h3QEWHyu" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1e$h3QEWkaR" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="1e$h3QEWkaS" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1lQ5DPQtrAA" role="jymVt" />
    <node concept="2YIFZL" id="29R9$zZq4Ie" role="jymVt">
      <property role="TrG5h" value="getOpposite" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="29R9$zZq4Ig" role="3clF47">
        <node concept="3clFbF" id="29R9$zZq4Ih" role="3cqZAp">
          <node concept="10QFUN" id="29R9$zZq4Ii" role="3clFbG">
            <node concept="2OqwBi" id="29R9$zZq4Ij" role="10QFUP">
              <node concept="1eOMI4" id="29R9$zZq4Ik" role="2Oq$k0">
                <node concept="10QFUN" id="29R9$zZq4Il" role="1eOMHV">
                  <node concept="3uibUv" id="29R9$zZq4Im" role="10QFUM">
                    <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                  </node>
                  <node concept="37vLTw" id="29R9$zZq4In" role="10QFUP">
                    <ref role="3cqZAo" node="29R9$zZq4Iv" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="29R9$zZq4Io" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DNode.getReferenceSources(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceSources" />
                <node concept="37vLTw" id="29R9$zZq4Ip" role="37wK5m">
                  <ref role="3cqZAo" node="29R9$zZq4Ix" resolve="oppos" />
                </node>
              </node>
            </node>
            <node concept="A3Dl8" id="29R9$zZq4Iq" role="10QFUM" />
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="29R9$zZq4It" role="3clF45">
        <node concept="3Tqbb2" id="29R9$zZq4Iu" role="A3Ik2" />
      </node>
      <node concept="37vLTG" id="29R9$zZq4Iv" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="29R9$zZq4Iw" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="29R9$zZq4Ix" role="3clF46">
        <property role="TrG5h" value="oppos" />
        <node concept="3uibUv" id="29R9$zZq4Iy" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="3Tm1VV" id="29R9$zZq4Is" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5hwIp2JLcq3" role="jymVt" />
    <node concept="2YIFZL" id="2mO6frpEN8y" role="jymVt">
      <property role="TrG5h" value="setUsedLanguages" />
      <node concept="3clFbS" id="2mO6frpEN8_" role="3clF47">
        <node concept="3clFbF" id="2mO6frpEY6S" role="3cqZAp">
          <node concept="2OqwBi" id="2mO6frpEY6U" role="3clFbG">
            <node concept="1eOMI4" id="2mO6frpEY6V" role="2Oq$k0">
              <node concept="10QFUN" id="2mO6frpEY6W" role="1eOMHV">
                <node concept="3uibUv" id="2mO6frpEY6X" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                </node>
                <node concept="37vLTw" id="2mO6frpEY6Y" role="10QFUP">
                  <ref role="3cqZAo" node="2mO6frpEReE" resolve="model" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2mO6frpEZw0" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DModel.setUsedLanguages(java.lang.Iterable)" resolve="setUsedLanguages" />
              <node concept="37vLTw" id="2mO6frpF08e" role="37wK5m">
                <ref role="3cqZAo" node="2mO6frpES6w" resolve="languages" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2mO6frpEIss" role="1B3o_S" />
      <node concept="3cqZAl" id="2mO6frpEMSe" role="3clF45" />
      <node concept="37vLTG" id="2mO6frpEReE" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="2mO6frpEReD" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="2mO6frpES6w" role="3clF46">
        <property role="TrG5h" value="languages" />
        <node concept="3uibUv" id="2mO6frpESRK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="2mO6frpEW$C" role="11_B2D">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2mO6frpEEoa" role="jymVt" />
    <node concept="2YIFZL" id="546l1t9$rDM" role="jymVt">
      <property role="TrG5h" value="getUsedLanguages" />
      <node concept="37vLTG" id="546l1t9$v5I" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="546l1t9$vks" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="546l1t9$rDP" role="3clF47">
        <node concept="3clFbF" id="546l1t9$w3h" role="3cqZAp">
          <node concept="2OqwBi" id="546l1t9$y7u" role="3clFbG">
            <node concept="1eOMI4" id="546l1t9$xgy" role="2Oq$k0">
              <node concept="10QFUN" id="546l1t9$wob" role="1eOMHV">
                <node concept="3uibUv" id="546l1t9$wF0" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                </node>
                <node concept="37vLTw" id="546l1t9$w3g" role="10QFUP">
                  <ref role="3cqZAo" node="546l1t9$v5I" resolve="model" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="546l1t9$yZl" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DModel.getUsedLanguages()" resolve="getUsedLanguages" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="546l1t9$nBO" role="1B3o_S" />
      <node concept="2hMVRd" id="546l1t9$rkJ" role="3clF45">
        <node concept="3uibUv" id="546l1t9$r_Z" role="2hN53Y">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2D4CO$foM$4" role="jymVt" />
    <node concept="2YIFZL" id="2mO6frpF57i" role="jymVt">
      <property role="TrG5h" value="setUsedModels" />
      <node concept="3clFbS" id="2mO6frpF57j" role="3clF47">
        <node concept="3clFbF" id="2mO6frpF57k" role="3cqZAp">
          <node concept="2OqwBi" id="2mO6frpF57l" role="3clFbG">
            <node concept="1eOMI4" id="2mO6frpF57m" role="2Oq$k0">
              <node concept="10QFUN" id="2mO6frpF57n" role="1eOMHV">
                <node concept="3uibUv" id="2mO6frpF57o" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                </node>
                <node concept="37vLTw" id="2mO6frpF57p" role="10QFUP">
                  <ref role="3cqZAo" node="2mO6frpF57u" resolve="model" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2mO6frpF57q" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DModel.setUsedModels(java.lang.Iterable)" resolve="setUsedModels" />
              <node concept="10QFUN" id="2mO6frpFoBz" role="37wK5m">
                <node concept="3uibUv" id="2mO6frpFq1O" role="10QFUM">
                  <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                </node>
                <node concept="37vLTw" id="2mO6frpF57r" role="10QFUP">
                  <ref role="3cqZAo" node="2mO6frpF57w" resolve="imports" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2mO6frpF57s" role="1B3o_S" />
      <node concept="3cqZAl" id="2mO6frpF57t" role="3clF45" />
      <node concept="37vLTG" id="2mO6frpF57u" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="2mO6frpF57v" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="2mO6frpF57w" role="3clF46">
        <property role="TrG5h" value="imports" />
        <node concept="3uibUv" id="2mO6frpF57x" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3qUE_q" id="2mO6frpFp5g" role="11_B2D">
            <node concept="3uibUv" id="2mO6frpFp5h" role="3qUE_r">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2mO6frpF0Ya" role="jymVt" />
    <node concept="2YIFZL" id="2D4CO$foPTP" role="jymVt">
      <property role="TrG5h" value="getUsedModels" />
      <node concept="37vLTG" id="2D4CO$foPTQ" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="2D4CO$foPTR" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="2D4CO$foPTS" role="3clF47">
        <node concept="3clFbF" id="2D4CO$foPTT" role="3cqZAp">
          <node concept="2OqwBi" id="48vpoA8WCcN" role="3clFbG">
            <node concept="1eOMI4" id="48vpoA8WCcO" role="2Oq$k0">
              <node concept="10QFUN" id="48vpoA8WCcP" role="1eOMHV">
                <node concept="3uibUv" id="48vpoA8WCcQ" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                </node>
                <node concept="37vLTw" id="48vpoA8WCcR" role="10QFUP">
                  <ref role="3cqZAo" node="2D4CO$foPTQ" resolve="model" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="48vpoA8WCcS" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DModel.getUsedModels()" resolve="getUsedModels" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2D4CO$foPU0" role="1B3o_S" />
      <node concept="2hMVRd" id="2mO6frptYIX" role="3clF45">
        <node concept="3uibUv" id="2mO6frptYIZ" role="2hN53Y">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="21fkvY57P$_" role="jymVt" />
    <node concept="2YIFZL" id="21fkvY58myd" role="jymVt">
      <property role="TrG5h" value="elseIfNull" />
      <node concept="37vLTG" id="21fkvY58AVl" role="3clF46">
        <property role="TrG5h" value="perhaps" />
        <node concept="16syzq" id="21fkvY58E3m" role="1tU5fm">
          <ref role="16sUi3" node="21fkvY58CSI" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="21fkvY58BuB" role="3clF46">
        <property role="TrG5h" value="function" />
        <node concept="1ajhzC" id="p2Pioth1pj" role="1tU5fm">
          <node concept="16syzq" id="p2Pioth1pl" role="1ajl9A">
            <ref role="16sUi3" node="21fkvY58CSI" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="21fkvY58myg" role="3clF47">
        <node concept="3cpWs6" id="21fkvY58IqX" role="3cqZAp">
          <node concept="3K4zz7" id="21fkvY58LZm" role="3cqZAk">
            <node concept="37vLTw" id="21fkvY58Mk2" role="3K4E3e">
              <ref role="3cqZAo" node="21fkvY58AVl" resolve="perhaps" />
            </node>
            <node concept="2OqwBi" id="p2Piothhte" role="3K4GZi">
              <node concept="37vLTw" id="21fkvY58NtS" role="2Oq$k0">
                <ref role="3cqZAo" node="21fkvY58BuB" resolve="f" />
              </node>
              <node concept="1Bd96e" id="p2PiothilF" role="2OqNvi" />
            </node>
            <node concept="3y3z36" id="21fkvY58KGL" role="3K4Cdx">
              <node concept="10Nm6u" id="21fkvY58LxH" role="3uHU7w" />
              <node concept="37vLTw" id="21fkvY58Kfi" role="3uHU7B">
                <ref role="3cqZAo" node="21fkvY58AVl" resolve="perhaps" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="21fkvY586c2" role="1B3o_S" />
      <node concept="16euLQ" id="21fkvY58CSI" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16syzq" id="21fkvY58Dud" role="3clF45">
        <ref role="16sUi3" node="21fkvY58CSI" resolve="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="3uKaL20ARhn" role="jymVt" />
    <node concept="2YIFZL" id="3uKaL20AW52" role="jymVt">
      <property role="TrG5h" value="nullIfNull" />
      <node concept="37vLTG" id="3uKaL20AW53" role="3clF46">
        <property role="TrG5h" value="base" />
        <node concept="16syzq" id="3uKaL20AW54" role="1tU5fm">
          <ref role="16sUi3" node="3uKaL20AW5g" resolve="B" />
        </node>
      </node>
      <node concept="37vLTG" id="3uKaL20BfSG" role="3clF46">
        <property role="TrG5h" value="function" />
        <node concept="1ajhzC" id="3uKaL20Bi7y" role="1tU5fm">
          <node concept="16syzq" id="3uKaL20BkVp" role="1ajw0F">
            <ref role="16sUi3" node="3uKaL20AW5g" resolve="B" />
          </node>
          <node concept="16syzq" id="3uKaL20BjRP" role="1ajl9A">
            <ref role="16sUi3" node="3uKaL20BgqW" resolve="R" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3uKaL20AW57" role="3clF47">
        <node concept="3cpWs6" id="3uKaL20AW58" role="3cqZAp">
          <node concept="3K4zz7" id="3uKaL20AW59" role="3cqZAk">
            <node concept="10Nm6u" id="3uKaL20BqNH" role="3K4E3e" />
            <node concept="2OqwBi" id="3uKaL20BnDU" role="3K4GZi">
              <node concept="37vLTw" id="3uKaL20AW5b" role="2Oq$k0">
                <ref role="3cqZAo" node="3uKaL20BfSG" resolve="function" />
              </node>
              <node concept="1Bd96e" id="3uKaL20BoaK" role="2OqNvi">
                <node concept="37vLTw" id="3uKaL20Bp8V" role="1BdPVh">
                  <ref role="3cqZAo" node="3uKaL20AW53" resolve="base" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3uKaL20Bqb5" role="3K4Cdx">
              <node concept="37vLTw" id="3uKaL20AW5e" role="3uHU7B">
                <ref role="3cqZAo" node="3uKaL20AW53" resolve="base" />
              </node>
              <node concept="10Nm6u" id="3uKaL20AW5d" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3uKaL20AW5f" role="1B3o_S" />
      <node concept="16euLQ" id="3uKaL20AW5g" role="16eVyc">
        <property role="TrG5h" value="B" />
      </node>
      <node concept="16euLQ" id="3uKaL20BgqW" role="16eVyc">
        <property role="TrG5h" value="R" />
      </node>
      <node concept="16syzq" id="3uKaL20AW5h" role="3clF45">
        <ref role="16sUi3" node="3uKaL20BgqW" resolve="R" />
      </node>
    </node>
    <node concept="2tJIrI" id="4NL1SF0XTGl" role="jymVt" />
    <node concept="2YIFZL" id="4NL1SF0Ydq0" role="jymVt">
      <property role="TrG5h" value="npeIfNull" />
      <node concept="37vLTG" id="4NL1SF0Ydq1" role="3clF46">
        <property role="TrG5h" value="base" />
        <node concept="16syzq" id="4NL1SF0Ydq2" role="1tU5fm">
          <ref role="16sUi3" node="4NL1SF0Ydqk" resolve="B" />
        </node>
      </node>
      <node concept="3clFbS" id="4NL1SF0Ydq7" role="3clF47">
        <node concept="3clFbJ" id="4NL1SF0ZbZx" role="3cqZAp">
          <node concept="3clFbS" id="4NL1SF0ZbZz" role="3clFbx">
            <node concept="YS8fn" id="4NL1SF0Zewu" role="3cqZAp">
              <node concept="2ShNRf" id="4NL1SF0Zfaa" role="YScLw">
                <node concept="1pGfFk" id="4NL1SF0Zg40" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="wyt6:~NullPointerException.&lt;init&gt;()" resolve="NullPointerException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4NL1SF0Zdnd" role="3clFbw">
            <node concept="10Nm6u" id="4NL1SF0ZdQR" role="3uHU7w" />
            <node concept="37vLTw" id="4NL1SF0ZcDj" role="3uHU7B">
              <ref role="3cqZAo" node="4NL1SF0Ydq1" resolve="base" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4NL1SF0Ydq8" role="3cqZAp">
          <node concept="37vLTw" id="4NL1SF1mk9s" role="3cqZAk">
            <ref role="3cqZAo" node="4NL1SF0Ydq1" resolve="base" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4NL1SF0Ydqi" role="1B3o_S" />
      <node concept="16euLQ" id="4NL1SF0Ydqk" role="16eVyc">
        <property role="TrG5h" value="B" />
      </node>
      <node concept="16syzq" id="4NL1SF0Ydql" role="3clF45">
        <ref role="16sUi3" node="4NL1SF0Ydqk" resolve="B" />
      </node>
    </node>
    <node concept="2tJIrI" id="4NL1SF0XUgv" role="jymVt" />
    <node concept="2YIFZL" id="6di_o0Bppmx" role="jymVt">
      <property role="TrG5h" value="getNodeFromMPS" />
      <node concept="37vLTG" id="6di_o0BprPe" role="3clF46">
        <property role="TrG5h" value="getter" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="6di_o0BprPf" role="1tU5fm">
          <node concept="3uibUv" id="3wS0Ppx4qxl" role="1ajl9A">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6di_o0Bppm$" role="3clF47">
        <node concept="3cpWs8" id="3czWNc2p5aV" role="3cqZAp">
          <node concept="3cpWsn" id="3czWNc2p5aW" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3uibUv" id="3czWNc2ojIV" role="1tU5fm">
              <ref role="3uigEE" to="kag7:~LeafTransaction" resolve="LeafTransaction" />
            </node>
            <node concept="2YIFZM" id="3czWNc2p5aX" role="33vP2m">
              <ref role="1Pybhc" to="kag7:~LeafTransaction" resolve="LeafTransaction" />
              <ref role="37wK5l" to="kag7:~LeafTransaction.getCurrent()" resolve="getCurrent" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6di_o0BpuTX" role="3cqZAp">
          <node concept="3y3z36" id="6di_o0Bpv9W" role="3clFbw">
            <node concept="10Nm6u" id="6di_o0BpvhZ" role="3uHU7w" />
            <node concept="37vLTw" id="3czWNc2p5aY" role="3uHU7B">
              <ref role="3cqZAo" node="3czWNc2p5aW" resolve="current" />
            </node>
          </node>
          <node concept="3clFbS" id="6di_o0BpuTZ" role="3clFbx">
            <node concept="3cpWs6" id="6di_o0BpvjC" role="3cqZAp">
              <node concept="2YIFZM" id="1bjvCAOwXxl" role="3cqZAk">
                <ref role="37wK5l" to="t4tl:~DNode.of(org.jetbrains.mps.openapi.model.SNode)" resolve="of" />
                <ref role="1Pybhc" to="t4tl:~DNode" resolve="DNode" />
                <node concept="2OqwBi" id="1bjvCAOwXxm" role="37wK5m">
                  <node concept="2YIFZM" id="1bjvCAOwXxn" role="2Oq$k0">
                    <ref role="1Pybhc" to="t4tl:~DClareMPS" resolve="DClareMPS" />
                    <ref role="37wK5l" to="t4tl:~DClareMPS.instance(org.modelingvalue.dclare.Transaction)" resolve="instance" />
                    <node concept="37vLTw" id="1bjvCAOwXxo" role="37wK5m">
                      <ref role="3cqZAo" node="3czWNc2p5aW" resolve="current" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1bjvCAOwXxp" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DClareMPS.read(java.util.function.Supplier)" resolve="read" />
                    <node concept="2ShNRf" id="1bjvCAOwXxq" role="37wK5m">
                      <node concept="YeOm9" id="1bjvCAOwXxr" role="2ShVmc">
                        <node concept="1Y3b0j" id="1bjvCAOwXxs" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <ref role="1Y3XeK" to="82uw:~Supplier" resolve="Supplier" />
                          <node concept="3Tm1VV" id="1bjvCAOwXxt" role="1B3o_S" />
                          <node concept="3clFb_" id="1bjvCAOwXxu" role="jymVt">
                            <property role="1EzhhJ" value="false" />
                            <property role="TrG5h" value="get" />
                            <property role="DiZV1" value="false" />
                            <property role="od$2w" value="false" />
                            <node concept="3Tm1VV" id="1bjvCAOwXxv" role="1B3o_S" />
                            <node concept="3clFbS" id="1bjvCAOwXxw" role="3clF47">
                              <node concept="3clFbF" id="1bjvCAOwXxx" role="3cqZAp">
                                <node concept="2OqwBi" id="1bjvCAOwXxy" role="3clFbG">
                                  <node concept="37vLTw" id="1bjvCAOwXxz" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6di_o0BprPe" resolve="getter" />
                                  </node>
                                  <node concept="1Bd96e" id="1bjvCAOwXx$" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="3uibUv" id="1bjvCAOwXx_" role="3clF45">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                          <node concept="3uibUv" id="1bjvCAOwXxA" role="2Ghqu4">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6di_o0BpvP2" role="9aQIa">
            <node concept="3clFbS" id="6di_o0BpvP3" role="9aQI4">
              <node concept="3cpWs6" id="6di_o0Bpw02" role="3cqZAp">
                <node concept="2OqwBi" id="6di_o0Bpwl5" role="3cqZAk">
                  <node concept="37vLTw" id="6di_o0Bpwax" role="2Oq$k0">
                    <ref role="3cqZAo" node="6di_o0BprPe" resolve="getter" />
                  </node>
                  <node concept="1Bd96e" id="6di_o0BpwvF" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6di_o0BpmKw" role="1B3o_S" />
      <node concept="3uibUv" id="3wS0Ppx4rUH" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="3czWNc2pCA7" role="jymVt" />
    <node concept="2YIFZL" id="3CVeTM7RR7L" role="jymVt">
      <property role="TrG5h" value="getModelFromMPS" />
      <node concept="37vLTG" id="3CVeTM7RR7M" role="3clF46">
        <property role="TrG5h" value="getter" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="3CVeTM7RR7N" role="1tU5fm">
          <node concept="3uibUv" id="3CVeTM7RR7O" role="1ajl9A">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3CVeTM7RR7P" role="3clF47">
        <node concept="3clFbJ" id="3CVeTM7RR7Q" role="3cqZAp">
          <node concept="3y3z36" id="3CVeTM7RR7R" role="3clFbw">
            <node concept="10Nm6u" id="3CVeTM7RR7S" role="3uHU7w" />
            <node concept="2YIFZM" id="3CVeTM7RR7T" role="3uHU7B">
              <ref role="1Pybhc" to="kag7:~LeafTransaction" resolve="LeafTransaction" />
              <ref role="37wK5l" to="kag7:~LeafTransaction.getCurrent()" resolve="getCurrent" />
            </node>
          </node>
          <node concept="3clFbS" id="3CVeTM7RR7U" role="3clFbx">
            <node concept="3cpWs6" id="3CVeTM7RR7V" role="3cqZAp">
              <node concept="2YIFZM" id="3CVeTM7SNZf" role="3cqZAk">
                <ref role="37wK5l" to="t4tl:~DModel.of(org.jetbrains.mps.openapi.model.SModel)" resolve="of" />
                <ref role="1Pybhc" to="t4tl:~DModel" resolve="DModel" />
                <node concept="2OqwBi" id="3CVeTM7SNZg" role="37wK5m">
                  <node concept="2YIFZM" id="3CVeTM7SNZh" role="2Oq$k0">
                    <ref role="37wK5l" to="t4tl:~DClareMPS.instance()" resolve="instance" />
                    <ref role="1Pybhc" to="t4tl:~DClareMPS" resolve="DClareMPS" />
                  </node>
                  <node concept="liA8E" id="3CVeTM7SNZi" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DClareMPS.read(java.util.function.Supplier)" resolve="read" />
                    <node concept="2ShNRf" id="3CVeTM7SNZj" role="37wK5m">
                      <node concept="YeOm9" id="3CVeTM7SNZk" role="2ShVmc">
                        <node concept="1Y3b0j" id="3CVeTM7SNZl" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <ref role="1Y3XeK" to="82uw:~Supplier" resolve="Supplier" />
                          <node concept="3Tm1VV" id="3CVeTM7SNZm" role="1B3o_S" />
                          <node concept="3clFb_" id="3CVeTM7SNZn" role="jymVt">
                            <property role="1EzhhJ" value="false" />
                            <property role="TrG5h" value="get" />
                            <property role="DiZV1" value="false" />
                            <property role="od$2w" value="false" />
                            <node concept="3Tm1VV" id="3CVeTM7SNZo" role="1B3o_S" />
                            <node concept="3clFbS" id="3CVeTM7SNZp" role="3clF47">
                              <node concept="3clFbF" id="3CVeTM7SNZq" role="3cqZAp">
                                <node concept="2OqwBi" id="3CVeTM7SNZr" role="3clFbG">
                                  <node concept="37vLTw" id="3CVeTM7SNZs" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3CVeTM7RR7M" resolve="getter" />
                                  </node>
                                  <node concept="1Bd96e" id="3CVeTM7SNZt" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="3uibUv" id="3CVeTM7SNZu" role="3clF45">
                              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                            </node>
                          </node>
                          <node concept="3uibUv" id="3CVeTM7SNZv" role="2Ghqu4">
                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3CVeTM7RR8d" role="9aQIa">
            <node concept="3clFbS" id="3CVeTM7RR8e" role="9aQI4">
              <node concept="3cpWs6" id="3CVeTM7RR8f" role="3cqZAp">
                <node concept="2OqwBi" id="3CVeTM7RR8g" role="3cqZAk">
                  <node concept="37vLTw" id="3CVeTM7RR8h" role="2Oq$k0">
                    <ref role="3cqZAo" node="3CVeTM7RR7M" resolve="getter" />
                  </node>
                  <node concept="1Bd96e" id="3CVeTM7RR8i" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3CVeTM7RR8j" role="1B3o_S" />
      <node concept="3uibUv" id="3CVeTM7RR8k" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vHs6rJY_5w" role="jymVt" />
    <node concept="2YIFZL" id="1vHs6rJYCBj" role="jymVt">
      <property role="TrG5h" value="getNonObserving" />
      <node concept="3clFbS" id="1vHs6rJYCBm" role="3clF47">
        <node concept="3cpWs8" id="1vHs6rJYIO8" role="3cqZAp">
          <node concept="3cpWsn" id="1vHs6rJYIOb" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Q1$e" id="1vHs6rJYIQR" role="1tU5fm">
              <node concept="3uibUv" id="1vHs6rJYQi4" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2ShNRf" id="1vHs6rJYIVT" role="33vP2m">
              <node concept="3$_iS1" id="1vHs6rJYNcf" role="2ShVmc">
                <node concept="3$GHV9" id="1vHs6rJYNch" role="3$GQph">
                  <node concept="3cmrfG" id="1vHs6rJYNOf" role="3$I4v7">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3uibUv" id="1vHs6rJYS6o" role="3$_nBY">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1vHs6rJYE4S" role="3cqZAp">
          <node concept="2OqwBi" id="1vHs6rJYE$9" role="3clFbG">
            <node concept="2YIFZM" id="1vHs6rJYEpE" role="2Oq$k0">
              <ref role="1Pybhc" to="kag7:~LeafTransaction" resolve="LeafTransaction" />
              <ref role="37wK5l" to="kag7:~LeafTransaction.getCurrent()" resolve="getCurrent" />
            </node>
            <node concept="liA8E" id="1vHs6rJYEIL" role="2OqNvi">
              <ref role="37wK5l" to="kag7:~LeafTransaction.runNonObserving(java.lang.Runnable)" resolve="runNonObserving" />
              <node concept="1bVj0M" id="1vHs6rJYNWw" role="37wK5m">
                <node concept="3clFbS" id="1vHs6rJYNWy" role="1bW5cS">
                  <node concept="3clFbF" id="1vHs6rJYO0D" role="3cqZAp">
                    <node concept="37vLTI" id="1vHs6rJYOTc" role="3clFbG">
                      <node concept="2OqwBi" id="1vHs6rJYU3Q" role="37vLTx">
                        <node concept="37vLTw" id="1vHs6rJYTYk" role="2Oq$k0">
                          <ref role="3cqZAo" node="1vHs6rJYDLQ" resolve="action" />
                        </node>
                        <node concept="1Bd96e" id="1vHs6rJYUa9" role="2OqNvi" />
                      </node>
                      <node concept="AH0OO" id="1vHs6rJYOu9" role="37vLTJ">
                        <node concept="3cmrfG" id="1vHs6rJYO_v" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="1vHs6rJYO0C" role="AHHXb">
                          <ref role="3cqZAo" node="1vHs6rJYIOb" resolve="result" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1vHs6rJYNgB" role="3cqZAp">
          <node concept="10QFUN" id="1vHs6rJYTL1" role="3cqZAk">
            <node concept="16syzq" id="1vHs6rJYTRj" role="10QFUM">
              <ref role="16sUi3" node="1vHs6rJYPan" resolve="T" />
            </node>
            <node concept="AH0OO" id="1vHs6rJYNEO" role="10QFUP">
              <node concept="3cmrfG" id="1vHs6rJYNJ$" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="1vHs6rJYNmi" role="AHHXb">
                <ref role="3cqZAo" node="1vHs6rJYIOb" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1vHs6rJYBpV" role="1B3o_S" />
      <node concept="16syzq" id="1vHs6rJYPx$" role="3clF45">
        <ref role="16sUi3" node="1vHs6rJYPan" resolve="T" />
      </node>
      <node concept="37vLTG" id="1vHs6rJYDLQ" role="3clF46">
        <property role="TrG5h" value="action" />
        <node concept="1ajhzC" id="1vHs6rJYPHm" role="1tU5fm">
          <node concept="16syzq" id="1vHs6rJYPXx" role="1ajl9A">
            <ref role="16sUi3" node="1vHs6rJYPan" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="1vHs6rJYPan" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="4wJaMXe_MyE" role="jymVt" />
    <node concept="2YIFZL" id="4wJaMXe_OUl" role="jymVt">
      <property role="TrG5h" value="dCopy" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="2cgEAjOjw8z" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="10Q1$e" id="3cJIErmEoqk" role="1tU5fm">
          <node concept="3uibUv" id="rTfv3GFEqR" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2OH8AaebkQi" role="3clF46">
        <property role="TrG5h" value="ruleSet" />
        <node concept="3uibUv" id="2OH8AaeblWz" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~IRuleSet" resolve="IRuleSet" />
        </node>
      </node>
      <node concept="37vLTG" id="4wJaMXe_PK4" role="3clF46">
        <property role="TrG5h" value="copied" />
        <node concept="16syzq" id="GYgDz1LIhp" role="1tU5fm">
          <ref role="16sUi3" node="4wJaMXe_PHK" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="2cgEAjNTkFc" role="3clF46">
        <property role="TrG5h" value="anon" />
        <node concept="17QB3L" id="2cgEAjNTlhs" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4wJaMXe_OUo" role="3clF47">
        <node concept="3cpWs6" id="5g4xL_rNa6I" role="3cqZAp">
          <node concept="10QFUN" id="70QPEjRB58y" role="3cqZAk">
            <node concept="16syzq" id="70QPEjRB58z" role="10QFUM">
              <ref role="16sUi3" node="4wJaMXe_PHK" resolve="T" />
            </node>
            <node concept="2OqwBi" id="6DGeWnARJGl" role="10QFUP">
              <node concept="1eOMI4" id="6DGeWnARHQJ" role="2Oq$k0">
                <node concept="10QFUN" id="2Fs12p9UPLN" role="1eOMHV">
                  <node concept="3uibUv" id="2Fs12p9UPLO" role="10QFUM">
                    <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                  </node>
                  <node concept="37vLTw" id="2Fs12p9UPLP" role="10QFUP">
                    <ref role="3cqZAo" node="4wJaMXe_PK4" resolve="copied" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6DGeWnARLaw" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DNode.copy(org.modelingvalue.dclare.mps.IRuleSet,java.lang.String,java.lang.Object[])" resolve="copy" />
                <node concept="37vLTw" id="2OH8Aaebobo" role="37wK5m">
                  <ref role="3cqZAo" node="2OH8AaebkQi" resolve="ruleSet" />
                </node>
                <node concept="37vLTw" id="6DGeWnARMn2" role="37wK5m">
                  <ref role="3cqZAo" node="2cgEAjNTkFc" resolve="anon" />
                </node>
                <node concept="37vLTw" id="6DGeWnARNdO" role="37wK5m">
                  <ref role="3cqZAo" node="2cgEAjOjw8z" resolve="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4wJaMXe_O7f" role="1B3o_S" />
      <node concept="16euLQ" id="4wJaMXe_PHK" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3Tqbb2" id="4wJaMXe_PIZ" role="3ztrMU" />
      </node>
      <node concept="16syzq" id="4wJaMXe_PJa" role="3clF45">
        <ref role="16sUi3" node="4wJaMXe_PHK" resolve="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="6ndASaeSzK_" role="jymVt" />
    <node concept="2YIFZL" id="7x27w4ygFpu" role="jymVt">
      <property role="TrG5h" value="dModel" />
      <node concept="3Tm1VV" id="7x27w4ygFpv" role="1B3o_S" />
      <node concept="3clFbS" id="7x27w4ygFpw" role="3clF47">
        <node concept="3clFbF" id="7x27w4ygFpx" role="3cqZAp">
          <node concept="1rXfSq" id="7x27w4ygFpy" role="3clFbG">
            <ref role="37wK5l" node="7qx2SEVuLBV" resolve="toNonMutable" />
            <node concept="37vLTw" id="7x27w4ygFpz" role="37wK5m">
              <ref role="3cqZAo" node="7x27w4ygFpI" resolve="id" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7x27w4ygFp$" role="3cqZAp">
          <node concept="2YIFZM" id="7x27w4ygFpB" role="3cqZAk">
            <ref role="1Pybhc" to="t4tl:~DModel" resolve="DModel" />
            <ref role="37wK5l" to="t4tl:~DModel.of(org.modelingvalue.dclare.mps.IRuleSet,java.lang.String,java.lang.Object[],boolean)" resolve="of" />
            <node concept="37vLTw" id="23rj$OmToy9" role="37wK5m">
              <ref role="3cqZAo" node="23rj$OmTmGi" resolve="ruleSet" />
            </node>
            <node concept="37vLTw" id="7x27w4ygFpD" role="37wK5m">
              <ref role="3cqZAo" node="7x27w4ygFpN" resolve="anon" />
            </node>
            <node concept="37vLTw" id="7x27w4ygFpE" role="37wK5m">
              <ref role="3cqZAo" node="7x27w4ygFpI" resolve="id" />
            </node>
            <node concept="37vLTw" id="7x27w4ygY9g" role="37wK5m">
              <ref role="3cqZAo" node="7x27w4ygVPe" resolve="temp" />
            </node>
          </node>
        </node>
      </node>
      <node concept="H_c77" id="7x27w4ygNYF" role="3clF45" />
      <node concept="37vLTG" id="7x27w4ygFpI" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="10Q1$e" id="7x27w4ygFpJ" role="1tU5fm">
          <node concept="3uibUv" id="7x27w4ygFpK" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="23rj$OmTmGi" role="3clF46">
        <property role="TrG5h" value="ruleSet" />
        <node concept="3uibUv" id="23rj$OmTn3R" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~IRuleSet" resolve="IRuleSet" />
        </node>
      </node>
      <node concept="37vLTG" id="7x27w4ygFpN" role="3clF46">
        <property role="TrG5h" value="anon" />
        <node concept="17QB3L" id="7x27w4ygFpO" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7x27w4ygVPe" role="3clF46">
        <property role="TrG5h" value="temp" />
        <node concept="10P_77" id="7x27w4ygW64" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7x27w4ygClE" role="jymVt" />
    <node concept="2YIFZL" id="MxZDaxdenI" role="jymVt">
      <property role="TrG5h" value="dNode" />
      <node concept="3Tm1VV" id="MxZDaxdenX" role="1B3o_S" />
      <node concept="3clFbS" id="MxZDaxdenY" role="3clF47">
        <node concept="3clFbF" id="7qx2SEVuKhw" role="3cqZAp">
          <node concept="1rXfSq" id="7qx2SEVuKhu" role="3clFbG">
            <ref role="37wK5l" node="7qx2SEVuLBV" resolve="toNonMutable" />
            <node concept="37vLTw" id="7qx2SEVuLrf" role="37wK5m">
              <ref role="3cqZAo" node="2cgEAjOjnpM" resolve="id" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5g4xL_rNlBD" role="3cqZAp">
          <node concept="10QFUN" id="70QPEjRB4Nw" role="3cqZAk">
            <node concept="16syzq" id="70QPEjRB4Nx" role="10QFUM">
              <ref role="16sUi3" node="MxZDaxdeoH" resolve="T" />
            </node>
            <node concept="2YIFZM" id="70QPEjRB4Ny" role="10QFUP">
              <ref role="1Pybhc" to="t4tl:~DNode" resolve="DNode" />
              <ref role="37wK5l" to="t4tl:~DNode.of(org.modelingvalue.dclare.mps.IRuleSet,java.lang.String,java.lang.Object[],org.jetbrains.mps.openapi.language.SConcept)" resolve="of" />
              <node concept="37vLTw" id="23rj$OmTfu1" role="37wK5m">
                <ref role="3cqZAo" node="23rj$OmTdSc" resolve="ruleSet" />
              </node>
              <node concept="37vLTw" id="70QPEjRB4N$" role="37wK5m">
                <ref role="3cqZAo" node="2cgEAjNTmkt" resolve="anon" />
              </node>
              <node concept="37vLTw" id="70QPEjRB4N_" role="37wK5m">
                <ref role="3cqZAo" node="2cgEAjOjnpM" resolve="id" />
              </node>
              <node concept="37vLTw" id="70QPEjRB4Nz" role="37wK5m">
                <ref role="3cqZAo" node="MxZDaxdf8Z" resolve="conc" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="MxZDaxdeoH" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3Tqbb2" id="MxZDaxdf5R" role="3ztrMU" />
      </node>
      <node concept="16syzq" id="MxZDaxdf4t" role="3clF45">
        <ref role="16sUi3" node="MxZDaxdeoH" resolve="T" />
      </node>
      <node concept="37vLTG" id="2cgEAjOjnpM" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="10Q1$e" id="rTfv3GFAhN" role="1tU5fm">
          <node concept="3uibUv" id="rTfv3GFzSN" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="23rj$OmTdSc" role="3clF46">
        <property role="TrG5h" value="ruleSet" />
        <node concept="3uibUv" id="23rj$OmTecJ" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~IRuleSet" resolve="IRuleSet" />
        </node>
      </node>
      <node concept="37vLTG" id="2cgEAjNTmkt" role="3clF46">
        <property role="TrG5h" value="anon" />
        <node concept="17QB3L" id="2cgEAjNTn2w" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="MxZDaxdf8Z" role="3clF46">
        <property role="TrG5h" value="conc" />
        <node concept="3uibUv" id="2eWEc5crOhW" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="rTfv3Hr8Xp" role="jymVt" />
    <node concept="2YIFZL" id="3nckJKR5l0H" role="jymVt">
      <property role="TrG5h" value="toNodeList" />
      <node concept="3clFbS" id="3nckJKR5l0L" role="3clF47">
        <node concept="3cpWs8" id="3nckJKR5l0M" role="3cqZAp">
          <node concept="3cpWsn" id="3nckJKR5l0N" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2I9FWS" id="3nckJKR5l0O" role="1tU5fm" />
            <node concept="2ShNRf" id="3nckJKR5l0P" role="33vP2m">
              <node concept="1pGfFk" id="3nckJKR5l0Q" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                <node concept="3Tqbb2" id="3nckJKR5l0R" role="1pMfVU" />
                <node concept="3cmrfG" id="3nckJKR5l0S" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3nckJKR5l0T" role="3cqZAp">
          <node concept="3clFbS" id="3nckJKR5l0U" role="3clFbx">
            <node concept="3cpWs6" id="3nckJKR5l0V" role="3cqZAp">
              <node concept="2OqwBi" id="3nckJKR5l0W" role="3cqZAk">
                <node concept="37vLTw" id="3nckJKR5l0X" role="2Oq$k0">
                  <ref role="3cqZAo" node="3nckJKR5l0N" resolve="result" />
                </node>
                <node concept="X8dFx" id="3nckJKR5l0Y" role="2OqNvi">
                  <node concept="10QFUN" id="3nckJKR5l0Z" role="25WWJ7">
                    <node concept="3uibUv" id="3nckJKR5l10" role="10QFUM">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3Tqbb2" id="3nckJKR5l11" role="11_B2D" />
                    </node>
                    <node concept="37vLTw" id="3nckJKR5l12" role="10QFUP">
                      <ref role="3cqZAo" node="3nckJKR5l0J" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="3nckJKR5l13" role="3eNLev">
            <node concept="3clFbS" id="3nckJKR5l14" role="3eOfB_">
              <node concept="3clFbF" id="3nckJKR5l15" role="3cqZAp">
                <node concept="2OqwBi" id="3nckJKR5l16" role="3clFbG">
                  <node concept="37vLTw" id="3nckJKR5l17" role="2Oq$k0">
                    <ref role="3cqZAo" node="3nckJKR5l0N" resolve="result" />
                  </node>
                  <node concept="TSZUe" id="3nckJKR5l18" role="2OqNvi">
                    <node concept="10QFUN" id="3nckJKR5l19" role="25WWJ7">
                      <node concept="3Tqbb2" id="3nckJKR5l1a" role="10QFUM" />
                      <node concept="37vLTw" id="3nckJKR5l1b" role="10QFUP">
                        <ref role="3cqZAo" node="3nckJKR5l0J" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3nckJKR5l1c" role="3eO9$A">
              <node concept="10Nm6u" id="3nckJKR5l1d" role="3uHU7w" />
              <node concept="37vLTw" id="3nckJKR5l1e" role="3uHU7B">
                <ref role="3cqZAo" node="3nckJKR5l0J" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="3nckJKR5l1f" role="3clFbw">
            <node concept="3uibUv" id="3nckJKR5l1g" role="2ZW6by">
              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
            </node>
            <node concept="37vLTw" id="3nckJKR5l1h" role="2ZW6bz">
              <ref role="3cqZAo" node="3nckJKR5l0J" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3nckJKR5l1i" role="3cqZAp">
          <node concept="37vLTw" id="3nckJKR5l1j" role="3cqZAk">
            <ref role="3cqZAo" node="3nckJKR5l0N" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="3nckJKR5l1l" role="3clF45" />
      <node concept="37vLTG" id="3nckJKR5l0J" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="3nckJKR5l0K" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3nckJKR5l1k" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4sbhsdUHGjR" role="jymVt" />
    <node concept="2YIFZL" id="4sbhsdUHOji" role="jymVt">
      <property role="TrG5h" value="getMethod" />
      <node concept="3clFbS" id="4sbhsdUHOjj" role="3clF47">
        <node concept="3cpWs6" id="4sbhsdUHOjk" role="3cqZAp">
          <node concept="2YIFZM" id="4sbhsdUIdkF" role="3cqZAk">
            <ref role="37wK5l" to="t4tl:~DMethod.of(org.jetbrains.mps.openapi.language.SLanguage,java.lang.String)" resolve="of" />
            <ref role="1Pybhc" to="t4tl:~DMethod" resolve="DMethod" />
            <node concept="37vLTw" id="4sbhsdUIdkG" role="37wK5m">
              <ref role="3cqZAo" node="4sbhsdUHOjq" resolve="lang" />
            </node>
            <node concept="37vLTw" id="4sbhsdUIdkH" role="37wK5m">
              <ref role="3cqZAo" node="4sbhsdUHOjs" resolve="id" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4sbhsdUHOjo" role="1B3o_S" />
      <node concept="3uibUv" id="4sbhsdUHOjp" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DMethod" resolve="DMethod" />
      </node>
      <node concept="37vLTG" id="4sbhsdUHOjq" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="3uibUv" id="4sbhsdUHOjr" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="37vLTG" id="4sbhsdUHOjs" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="4sbhsdUHOjt" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4sbhsdUHGSZ" role="jymVt" />
    <node concept="2YIFZL" id="3Qetf3dBkKx" role="jymVt">
      <property role="TrG5h" value="sStructClass" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3Qetf3dBkK$" role="3clF47">
        <node concept="3clFbF" id="3Qetf3dBlui" role="3cqZAp">
          <node concept="2YIFZM" id="25AJqx1X2r1" role="3clFbG">
            <ref role="1Pybhc" to="t4tl:~SStructClass" resolve="SStructClass" />
            <ref role="37wK5l" to="t4tl:~SStructClass.of(java.lang.String,java.lang.String,org.jetbrains.mps.openapi.language.SLanguage,org.modelingvalue.dclare.mps.DAttribute[],org.modelingvalue.dclare.mps.SStructClass[],boolean)" resolve="of" />
            <node concept="37vLTw" id="25AJqx1X2r2" role="37wK5m">
              <ref role="3cqZAo" node="3Qetf3dBlad" resolve="classId" />
            </node>
            <node concept="37vLTw" id="25AJqx1X2r3" role="37wK5m">
              <ref role="3cqZAo" node="3Qetf3dBlcn" resolve="name" />
            </node>
            <node concept="37vLTw" id="25AJqx1X2r4" role="37wK5m">
              <ref role="3cqZAo" node="23rj$OmSJTR" resolve="lang" />
            </node>
            <node concept="37vLTw" id="5DIHqRLkJ3s" role="37wK5m">
              <ref role="3cqZAo" node="5DIHqRLkEun" resolve="identity" />
            </node>
            <node concept="37vLTw" id="25AJqx1X2r5" role="37wK5m">
              <ref role="3cqZAo" node="3Qetf3dBljs" resolve="supers" />
            </node>
            <node concept="37vLTw" id="2gyk5RYNVRd" role="37wK5m">
              <ref role="3cqZAo" node="2gyk5RYNPrl" resolve="isValueClass" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3Qetf3dBklf" role="1B3o_S" />
      <node concept="3uibUv" id="25AJqx1WXJf" role="3clF45">
        <ref role="3uigEE" to="t4tl:~SStructClass" resolve="SStructClass" />
      </node>
      <node concept="37vLTG" id="3Qetf3dBlad" role="3clF46">
        <property role="TrG5h" value="classId" />
        <node concept="17QB3L" id="25AJqx1X2Kb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="23rj$OmSJTR" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="3uibUv" id="23rj$OmSKcu" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="37vLTG" id="3Qetf3dBlcn" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3Qetf3dBloA" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5DIHqRLkEun" role="3clF46">
        <property role="TrG5h" value="identity" />
        <node concept="10Q1$e" id="5DIHqRLkGq8" role="1tU5fm">
          <node concept="3uibUv" id="5DIHqRLkF6q" role="10Q1$1">
            <ref role="3uigEE" to="t4tl:~DAttribute" resolve="DAttribute" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3Qetf3dBljs" role="3clF46">
        <property role="TrG5h" value="supers" />
        <node concept="10Q1$e" id="3Qetf3dBlmk" role="1tU5fm">
          <node concept="3uibUv" id="25AJqx1WY1k" role="10Q1$1">
            <ref role="3uigEE" to="t4tl:~SStructClass" resolve="SStructClass" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2gyk5RYNPrl" role="3clF46">
        <property role="TrG5h" value="isValueClass" />
        <node concept="10P_77" id="2gyk5RYNQar" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xaBPI8RiQJ" role="jymVt" />
    <node concept="2YIFZL" id="4xaBPI8RHu3" role="jymVt">
      <property role="TrG5h" value="sStructClass" />
      <node concept="3clFbS" id="4xaBPI8RHu6" role="3clF47">
        <node concept="3cpWs6" id="4xaBPI8RUKS" role="3cqZAp">
          <node concept="2YIFZM" id="4xaBPI8RWug" role="3cqZAk">
            <ref role="37wK5l" to="t4tl:~SStructClass.of(org.jetbrains.mps.openapi.language.SLanguage,java.lang.String)" resolve="of" />
            <ref role="1Pybhc" to="t4tl:~SStructClass" resolve="SStructClass" />
            <node concept="37vLTw" id="4xaBPI8RWQX" role="37wK5m">
              <ref role="3cqZAo" node="4xaBPI8RR2E" resolve="lang" />
            </node>
            <node concept="37vLTw" id="4xaBPI8RXkA" role="37wK5m">
              <ref role="3cqZAo" node="4xaBPI8RSXm" resolve="id" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xaBPI8RzgM" role="1B3o_S" />
      <node concept="3uibUv" id="4xaBPI8RH8G" role="3clF45">
        <ref role="3uigEE" to="t4tl:~SStructClass" resolve="SStructClass" />
      </node>
      <node concept="37vLTG" id="4xaBPI8RR2E" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="3uibUv" id="4xaBPI8RRL_" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="37vLTG" id="4xaBPI8RSXm" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="4xaBPI8RTkV" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="25AJqx2bzI8" role="jymVt" />
    <node concept="2YIFZL" id="3Qetf3dya9w" role="jymVt">
      <property role="TrG5h" value="dStructObject" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3Qetf3dya9z" role="3clF47">
        <node concept="3clFbF" id="7qx2SEVuYzE" role="3cqZAp">
          <node concept="1rXfSq" id="7qx2SEVuYzF" role="3clFbG">
            <ref role="37wK5l" node="7qx2SEVuLBV" resolve="toNonMutable" />
            <node concept="37vLTw" id="7qx2SEVuYTO" role="37wK5m">
              <ref role="3cqZAo" node="745HIYNJMII" resolve="identity" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Qetf3dya$d" role="3cqZAp">
          <node concept="2YIFZM" id="mrYLhh3k4t" role="3clFbG">
            <ref role="1Pybhc" to="t4tl:~DStructObject" resolve="DStructObject" />
            <ref role="37wK5l" to="t4tl:~DStructObject.of(org.modelingvalue.dclare.mps.SStructClass,java.lang.Object[])" resolve="of" />
            <node concept="37vLTw" id="mrYLhh3kc0" role="37wK5m">
              <ref role="3cqZAo" node="3Qetf3dyi_B" resolve="cls" />
            </node>
            <node concept="37vLTw" id="mrYLhh3klc" role="37wK5m">
              <ref role="3cqZAo" node="745HIYNJMII" resolve="identity" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3Qetf3dy9Mh" role="1B3o_S" />
      <node concept="3uibUv" id="25AJqx1WXbR" role="3clF45">
        <ref role="3uigEE" to="t4tl:~SStructObject" resolve="SStructObject" />
      </node>
      <node concept="37vLTG" id="3Qetf3dyi_B" role="3clF46">
        <property role="TrG5h" value="cls" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="25AJqx1WXw9" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~SStructClass" resolve="SStructClass" />
        </node>
      </node>
      <node concept="37vLTG" id="745HIYNJMII" role="3clF46">
        <property role="TrG5h" value="identity" />
        <property role="3TUv4t" value="true" />
        <node concept="10Q1$e" id="745HIYNJMNd" role="1tU5fm">
          <node concept="3uibUv" id="745HIYNJMLW" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2xAA8jglL0C" role="jymVt" />
    <node concept="2YIFZL" id="2xAA8jguAQ4" role="jymVt">
      <property role="TrG5h" value="ancestor" />
      <node concept="3clFbS" id="2xAA8jguAQa" role="3clF47">
        <node concept="1Dw8fO" id="2xAA8jguAQb" role="3cqZAp">
          <node concept="3clFbS" id="2xAA8jguAQc" role="2LFqv$">
            <node concept="3clFbF" id="2xAA8jguAQd" role="3cqZAp">
              <node concept="37vLTI" id="2xAA8jguAQe" role="3clFbG">
                <node concept="10QFUN" id="2xAA8jguAQf" role="37vLTx">
                  <node concept="3uibUv" id="2xAA8jguAQg" role="10QFUM">
                    <ref role="3uigEE" to="t4tl:~SStructObject" resolve="SStructObject" />
                  </node>
                  <node concept="37vLTw" id="2xAA8jguAQh" role="10QFUP">
                    <ref role="3cqZAo" node="2xAA8jguAQt" resolve="p" />
                  </node>
                </node>
                <node concept="37vLTw" id="2xAA8jguAQi" role="37vLTJ">
                  <ref role="3cqZAo" node="2xAA8jguAQ6" resolve="obj" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2xAA8jguAQj" role="3cqZAp">
              <node concept="3clFbS" id="2xAA8jguAQk" role="3clFbx">
                <node concept="3cpWs6" id="2xAA8jguAQl" role="3cqZAp">
                  <node concept="37vLTw" id="2xAA8jguAQm" role="3cqZAk">
                    <ref role="3cqZAo" node="2xAA8jguAQ6" resolve="obj" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2xAA8jguAQn" role="3clFbw">
                <node concept="37vLTw" id="2xAA8jguAQo" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jguAQ8" resolve="cls" />
                </node>
                <node concept="liA8E" id="2xAA8jguAQp" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~SStructClass.isAssignableFrom(org.modelingvalue.dclare.mps.SStructClass)" resolve="isAssignableFrom" />
                  <node concept="2OqwBi" id="2xAA8jguAQq" role="37wK5m">
                    <node concept="37vLTw" id="2xAA8jguAQr" role="2Oq$k0">
                      <ref role="3cqZAo" node="2xAA8jguAQ6" resolve="obj" />
                    </node>
                    <node concept="liA8E" id="2xAA8jguAQs" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~SStructObject.getSClass()" resolve="getSClass" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2xAA8jguAQt" role="1Duv9x">
            <property role="TrG5h" value="p" />
            <node concept="3uibUv" id="2xAA8jguAQu" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="1rXfSq" id="2xAA8jguAQv" role="33vP2m">
              <ref role="37wK5l" node="67uyCwCP1zP" resolve="getParent" />
              <node concept="37vLTw" id="2xAA8jguAQw" role="37wK5m">
                <ref role="3cqZAo" node="2xAA8jguAQ6" resolve="obj" />
              </node>
            </node>
          </node>
          <node concept="37vLTI" id="2xAA8jguAQx" role="1Dwrff">
            <node concept="1rXfSq" id="2xAA8jguAQy" role="37vLTx">
              <ref role="37wK5l" node="67uyCwCP1zP" resolve="getParent" />
              <node concept="37vLTw" id="2xAA8jguAQz" role="37wK5m">
                <ref role="3cqZAo" node="2xAA8jguAQ6" resolve="obj" />
              </node>
            </node>
            <node concept="37vLTw" id="2xAA8jguAQ$" role="37vLTJ">
              <ref role="3cqZAo" node="2xAA8jguAQt" resolve="p" />
            </node>
          </node>
          <node concept="2ZW3vV" id="2xAA8jguAQ_" role="1Dwp0S">
            <node concept="3uibUv" id="2xAA8jguAQA" role="2ZW6by">
              <ref role="3uigEE" to="t4tl:~SStructObject" resolve="SStructObject" />
            </node>
            <node concept="37vLTw" id="2xAA8jguAQB" role="2ZW6bz">
              <ref role="3cqZAo" node="2xAA8jguAQt" resolve="p" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2xAA8jguAQC" role="3cqZAp">
          <node concept="10Nm6u" id="2xAA8jguAQD" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="2xAA8jguAQF" role="3clF45">
        <ref role="3uigEE" to="t4tl:~SStructObject" resolve="SStructObject" />
      </node>
      <node concept="37vLTG" id="2xAA8jguAQ6" role="3clF46">
        <property role="TrG5h" value="obj" />
        <node concept="3uibUv" id="2xAA8jguAQ7" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~SStructObject" resolve="SStructObject" />
        </node>
      </node>
      <node concept="37vLTG" id="2xAA8jguAQ8" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3uibUv" id="2xAA8jguAQ9" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~SStructClass" resolve="SStructClass" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2xAA8jguAQE" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="98RYWubQmJ" role="jymVt" />
    <node concept="2YIFZL" id="98RYWuc0IW" role="jymVt">
      <property role="TrG5h" value="ofStructType" />
      <node concept="3clFbS" id="98RYWuc0IX" role="3clF47">
        <node concept="3cpWs6" id="98RYWuc0IY" role="3cqZAp">
          <node concept="2OqwBi" id="98RYWucD0A" role="3cqZAk">
            <node concept="37vLTw" id="98RYWucC3n" role="2Oq$k0">
              <ref role="3cqZAo" node="98RYWuc0J6" resolve="seq" />
            </node>
            <node concept="3zZkjj" id="98RYWucDX2" role="2OqNvi">
              <node concept="1bVj0M" id="98RYWucDX4" role="23t8la">
                <node concept="3clFbS" id="98RYWucDX5" role="1bW5cS">
                  <node concept="3clFbF" id="98RYWucF2g" role="3cqZAp">
                    <node concept="1rXfSq" id="98RYWvIDDm" role="3clFbG">
                      <ref role="37wK5l" node="98RYWu8q2L" resolve="instanceofStruct" />
                      <node concept="37vLTw" id="98RYWvIFhI" role="37wK5m">
                        <ref role="3cqZAo" node="98RYWucDX6" resolve="s" />
                      </node>
                      <node concept="37vLTw" id="98RYWvIGYE" role="37wK5m">
                        <ref role="3cqZAo" node="98RYWuc0J8" resolve="cls" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="98RYWucDX6" role="1bW2Oz">
                  <property role="TrG5h" value="s" />
                  <node concept="2jxLKc" id="98RYWucDX7" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="98RYWucyC2" role="3clF45">
        <node concept="3uibUv" id="98RYWuczpA" role="A3Ik2">
          <ref role="3uigEE" to="t4tl:~SStructObject" resolve="SStructObject" />
        </node>
      </node>
      <node concept="37vLTG" id="98RYWuc0J6" role="3clF46">
        <property role="TrG5h" value="seq" />
        <node concept="A3Dl8" id="98RYWuc$aE" role="1tU5fm">
          <node concept="3uibUv" id="98RYWuc$aF" role="A3Ik2">
            <ref role="3uigEE" to="t4tl:~SStructObject" resolve="SStructObject" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="98RYWuc0J8" role="3clF46">
        <property role="TrG5h" value="cls" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="98RYWuc0J9" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~SStructClass" resolve="SStructClass" />
        </node>
      </node>
      <node concept="3Tm1VV" id="98RYWuc0Ja" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="98RYWu44c3" role="jymVt" />
    <node concept="2YIFZL" id="98RYWu8q2L" role="jymVt">
      <property role="TrG5h" value="instanceofStruct" />
      <node concept="3clFbS" id="98RYWu8q2M" role="3clF47">
        <node concept="3cpWs6" id="98RYWu8JpD" role="3cqZAp">
          <node concept="1Wc70l" id="98RYWvIsdC" role="3cqZAk">
            <node concept="2OqwBi" id="98RYWu8KMo" role="3uHU7w">
              <node concept="37vLTw" id="98RYWu8KMp" role="2Oq$k0">
                <ref role="3cqZAo" node="98RYWu8q3k" resolve="cls" />
              </node>
              <node concept="liA8E" id="98RYWu8KMq" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~SStructClass.isAssignableFrom(org.modelingvalue.dclare.mps.SStructClass)" resolve="isAssignableFrom" />
                <node concept="2OqwBi" id="98RYWu8KMr" role="37wK5m">
                  <node concept="37vLTw" id="98RYWu8KMs" role="2Oq$k0">
                    <ref role="3cqZAo" node="98RYWu8q3i" resolve="obj" />
                  </node>
                  <node concept="liA8E" id="98RYWu8KMt" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~SStructObject.getSClass()" resolve="getSClass" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="98RYWvIv6p" role="3uHU7B">
              <node concept="10Nm6u" id="98RYWvIw7V" role="3uHU7w" />
              <node concept="37vLTw" id="98RYWvIuIq" role="3uHU7B">
                <ref role="3cqZAo" node="98RYWu8q3i" resolve="obj" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="98RYWu8L$V" role="3clF45" />
      <node concept="37vLTG" id="98RYWu8q3i" role="3clF46">
        <property role="TrG5h" value="obj" />
        <node concept="3uibUv" id="98RYWu8q3j" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~SStructObject" resolve="SStructObject" />
        </node>
      </node>
      <node concept="37vLTG" id="98RYWu8q3k" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3uibUv" id="98RYWu8q3l" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~SStructClass" resolve="SStructClass" />
        </node>
      </node>
      <node concept="3Tm1VV" id="98RYWu8q3m" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="98RYWu89wf" role="jymVt" />
    <node concept="2YIFZL" id="98RYWu3IYC" role="jymVt">
      <property role="TrG5h" value="cast" />
      <node concept="3clFbS" id="98RYWu3IYD" role="3clF47">
        <node concept="3clFbJ" id="5IkW5anFe$p" role="3cqZAp">
          <node concept="3clFbC" id="5IkW5anFe$q" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxghf9J" role="3uHU7B">
              <ref role="3cqZAo" node="98RYWu3IZa" resolve="obj" />
            </node>
            <node concept="10Nm6u" id="5IkW5anFe$s" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5IkW5anFe$t" role="3clFbx">
            <node concept="3cpWs6" id="5IkW5anFe$u" role="3cqZAp">
              <node concept="10Nm6u" id="5IkW5anFe$v" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="98RYWu3IYM" role="3cqZAp">
          <node concept="3clFbS" id="98RYWu3IYN" role="3clFbx">
            <node concept="3cpWs6" id="98RYWu3IYO" role="3cqZAp">
              <node concept="37vLTw" id="98RYWu3IYP" role="3cqZAk">
                <ref role="3cqZAo" node="98RYWu3IZa" resolve="obj" />
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="98RYWvITrE" role="3clFbw">
            <ref role="37wK5l" node="98RYWu8q2L" resolve="instanceofStruct" />
            <node concept="37vLTw" id="98RYWvIViB" role="37wK5m">
              <ref role="3cqZAo" node="98RYWu3IZa" resolve="obj" />
            </node>
            <node concept="37vLTw" id="98RYWvIX9W" role="37wK5m">
              <ref role="3cqZAo" node="98RYWu3IZc" resolve="cls" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="98RYWu62ol" role="3cqZAp">
          <node concept="3cpWsn" id="2a8jTI6sN1I" role="3cpWs9">
            <property role="TrG5h" value="message" />
            <node concept="17QB3L" id="2a8jTI6sN1A" role="1tU5fm" />
            <node concept="3cpWs3" id="2a8jTI6sN1J" role="33vP2m">
              <node concept="3cpWs3" id="2a8jTI6sN1K" role="3uHU7B">
                <node concept="3cpWs3" id="2a8jTI6sN1L" role="3uHU7B">
                  <node concept="2OqwBi" id="98RYWu6yqV" role="3uHU7w">
                    <node concept="37vLTw" id="98RYWu6yqW" role="2Oq$k0">
                      <ref role="3cqZAo" node="98RYWu3IZa" resolve="obj" />
                    </node>
                    <node concept="liA8E" id="98RYWu6yqX" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~SStructObject.getSClass()" resolve="getSClass" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="2a8jTI6BTR5" role="3uHU7B">
                    <node concept="Xl_RD" id="2a8jTI6BTRs" role="3uHU7w">
                      <property role="Xl_RC" value=", with type " />
                    </node>
                    <node concept="3cpWs3" id="2a8jTI6BNnZ" role="3uHU7B">
                      <node concept="Xl_RD" id="2a8jTI6BM4O" role="3uHU7B">
                        <property role="Xl_RC" value="Can't cast struct " />
                      </node>
                      <node concept="37vLTw" id="2a8jTI6BNqw" role="3uHU7w">
                        <ref role="3cqZAo" node="98RYWu3IZa" resolve="obj" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="2a8jTI6sN1T" role="3uHU7w">
                  <property role="Xl_RC" value=" to type " />
                </node>
              </node>
              <node concept="37vLTw" id="2a8jTI6sN1U" role="3uHU7w">
                <ref role="3cqZAo" node="98RYWu3IZc" resolve="cls" />
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="98RYWu5un_" role="3cqZAp">
          <node concept="2ShNRf" id="98RYWu5vbM" role="YScLw">
            <node concept="1pGfFk" id="98RYWu5KoF" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" node="98RYWu5OOR" resolve="StructCastException" />
              <node concept="37vLTw" id="98RYWu6aGL" role="37wK5m">
                <ref role="3cqZAo" node="2a8jTI6sN1I" resolve="message" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="98RYWu3IZ9" role="3clF45">
        <ref role="3uigEE" to="t4tl:~SStructObject" resolve="SStructObject" />
      </node>
      <node concept="37vLTG" id="98RYWu3IZa" role="3clF46">
        <property role="TrG5h" value="obj" />
        <node concept="3uibUv" id="98RYWu3IZb" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~SStructObject" resolve="SStructObject" />
        </node>
      </node>
      <node concept="37vLTG" id="98RYWu3IZc" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3uibUv" id="98RYWu3IZd" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~SStructClass" resolve="SStructClass" />
        </node>
      </node>
      <node concept="3Tm1VV" id="98RYWu3IZe" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="98RYWu2M8y" role="jymVt" />
    <node concept="2YIFZL" id="98RYWu30kN" role="jymVt">
      <property role="TrG5h" value="as" />
      <node concept="3clFbS" id="98RYWu30kO" role="3clF47">
        <node concept="3clFbJ" id="98RYWu30kX" role="3cqZAp">
          <node concept="3clFbS" id="98RYWu30kY" role="3clFbx">
            <node concept="3cpWs6" id="98RYWu30kZ" role="3cqZAp">
              <node concept="37vLTw" id="98RYWu30l0" role="3cqZAk">
                <ref role="3cqZAo" node="98RYWu30ll" resolve="obj" />
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="98RYWvIY5g" role="3clFbw">
            <ref role="37wK5l" node="98RYWu8q2L" resolve="instanceofStruct" />
            <node concept="37vLTw" id="98RYWvIY5h" role="37wK5m">
              <ref role="3cqZAo" node="98RYWu30ll" resolve="obj" />
            </node>
            <node concept="37vLTw" id="98RYWvIY5i" role="37wK5m">
              <ref role="3cqZAo" node="98RYWu30ln" resolve="cls" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="98RYWu30li" role="3cqZAp">
          <node concept="10Nm6u" id="98RYWu30lj" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="98RYWu30lk" role="3clF45">
        <ref role="3uigEE" to="t4tl:~SStructObject" resolve="SStructObject" />
      </node>
      <node concept="37vLTG" id="98RYWu30ll" role="3clF46">
        <property role="TrG5h" value="obj" />
        <node concept="3uibUv" id="98RYWu30lm" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~SStructObject" resolve="SStructObject" />
        </node>
      </node>
      <node concept="37vLTG" id="98RYWu30ln" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3uibUv" id="98RYWu30lo" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~SStructClass" resolve="SStructClass" />
        </node>
      </node>
      <node concept="3Tm1VV" id="98RYWu30lp" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="98RYWu2Rje" role="jymVt" />
    <node concept="1X3_iC" id="369NrSx7jW1" role="lGtFl">
      <property role="3V$3am" value="member" />
      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107461130800/5375687026011219971" />
      <node concept="2YIFZL" id="369NrSvTt$F" role="8Wnug">
        <property role="TrG5h" value="dStructObject" />
        <node concept="37vLTG" id="369NrSvTHq2" role="3clF46">
          <property role="3TUv4t" value="true" />
          <property role="TrG5h" value="cls" />
          <node concept="3uibUv" id="369NrSvTKOe" role="1tU5fm">
            <ref role="3uigEE" to="t4tl:~SStructClass" resolve="SStructClass" />
          </node>
        </node>
        <node concept="37vLTG" id="369NrSvTSJJ" role="3clF46">
          <property role="TrG5h" value="ctx" />
          <node concept="10Q1$e" id="369NrSvU1nn" role="1tU5fm">
            <node concept="3uibUv" id="369NrSvTVBZ" role="10Q1$1">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="369NrSvU770" role="3clF46">
          <property role="TrG5h" value="anon" />
          <node concept="17QB3L" id="369NrSvU7NB" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="369NrSvTMrK" role="3clF46">
          <property role="TrG5h" value="identity" />
          <property role="3TUv4t" value="true" />
          <node concept="10Q1$e" id="369NrSvTMrL" role="1tU5fm">
            <node concept="3uibUv" id="369NrSvTMrM" role="10Q1$1">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="369NrSvTt$I" role="3clF47">
          <node concept="3clFbF" id="369NrSwgvYR" role="3cqZAp">
            <node concept="1rXfSq" id="369NrSwgvYS" role="3clFbG">
              <ref role="37wK5l" node="7qx2SEVuLBV" resolve="toNonMutable" />
              <node concept="37vLTw" id="369NrSwgvYT" role="37wK5m">
                <ref role="3cqZAo" node="369NrSvTMrK" resolve="identity" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="369NrSwh3KV" role="3cqZAp">
            <node concept="2YIFZM" id="369NrSwh3KW" role="3clFbG">
              <ref role="1Pybhc" to="t4tl:~DStructObject" resolve="DStructObject" />
              <ref role="37wK5l" to="t4tl:~DStructObject.of(org.modelingvalue.dclare.mps.SStructClass,java.lang.Object[])" resolve="of" />
              <node concept="37vLTw" id="369NrSwh3KX" role="37wK5m">
                <ref role="3cqZAo" node="369NrSvTHq2" resolve="cls" />
              </node>
              <node concept="37vLTw" id="369NrSwh3KY" role="37wK5m">
                <ref role="3cqZAo" node="369NrSvTMrK" resolve="identity" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="369NrSx7jli" role="1B3o_S" />
        <node concept="3uibUv" id="369NrSvTt1_" role="3clF45">
          <ref role="3uigEE" to="t4tl:~SStructObject" resolve="SStructObject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="369NrSwgwB4" role="jymVt" />
    <node concept="2YIFZL" id="7S$pNDLb3TY" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="7S$pNDLb3TZ" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="7S$pNDLb6z9" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3clFbS" id="7S$pNDLb3U1" role="3clF47">
        <node concept="3clFbF" id="7S$pNDLb3U2" role="3cqZAp">
          <node concept="2OqwBi" id="7KI$$uj_yWi" role="3clFbG">
            <node concept="1eOMI4" id="7KI$$uj_xQV" role="2Oq$k0">
              <node concept="10QFUN" id="7KI$$uj_xQS" role="1eOMHV">
                <node concept="3uibUv" id="7KI$$uj_xW4" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
                </node>
                <node concept="37vLTw" id="7KI$$uj_y7E" role="10QFUP">
                  <ref role="3cqZAo" node="7S$pNDLb3TZ" resolve="module" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7KI$$uj_zYd" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DModule.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7S$pNDLb3Ub" role="1B3o_S" />
      <node concept="3uibUv" id="7S$pNDLb75$" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DRepository" resolve="DRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="7S$pNDL7t9v" role="jymVt" />
    <node concept="2YIFZL" id="7S$pNDL7zVA" role="jymVt">
      <property role="TrG5h" value="getModule" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="7S$pNDL7zVB" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="7S$pNDL7_pq" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="7S$pNDL7zVD" role="3clF47">
        <node concept="3clFbF" id="7KI$$uj__Hf" role="3cqZAp">
          <node concept="2OqwBi" id="7KI$$uj_AK9" role="3clFbG">
            <node concept="1eOMI4" id="7KI$$uj__Hd" role="2Oq$k0">
              <node concept="10QFUN" id="7KI$$uj__Ha" role="1eOMHV">
                <node concept="3uibUv" id="7KI$$uj__HB" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                </node>
                <node concept="37vLTw" id="7KI$$uj__Vw" role="10QFUP">
                  <ref role="3cqZAo" node="7S$pNDL7zVB" resolve="model" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7KI$$uj_C7i" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DModel.getModule()" resolve="getModule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7S$pNDL7zVL" role="1B3o_S" />
      <node concept="3uibUv" id="7S$pNDL7Axk" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
      </node>
    </node>
    <node concept="2tJIrI" id="7S$pNDL7yEh" role="jymVt" />
    <node concept="2YIFZL" id="7S$pNDL7wyu" role="jymVt">
      <property role="TrG5h" value="getModel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="7S$pNDL7xeO" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="7S$pNDL7xh0" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="7S$pNDL7wyx" role="3clF47">
        <node concept="3clFbF" id="7S$pNDL7xjX" role="3cqZAp">
          <node concept="2OqwBi" id="cHlWbubHMO" role="3clFbG">
            <node concept="1eOMI4" id="cHlWbubGv$" role="2Oq$k0">
              <node concept="10QFUN" id="cHlWbubFrG" role="1eOMHV">
                <node concept="3uibUv" id="cHlWbubFTj" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                </node>
                <node concept="37vLTw" id="cHlWbubES9" role="10QFUP">
                  <ref role="3cqZAo" node="7S$pNDL7xeO" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="cHlWbubILC" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DNode.getModel()" resolve="getModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7S$pNDL7uvW" role="1B3o_S" />
      <node concept="3uibUv" id="7S$pNDLb79z" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="67uyCwCOVLl" role="jymVt" />
    <node concept="2YIFZL" id="67uyCwCP1zP" role="jymVt">
      <property role="TrG5h" value="getParent" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="67uyCwCP2su" role="3clF46">
        <property role="TrG5h" value="obj" />
        <node concept="3uibUv" id="25AJqx1X6_v" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~SStructObject" resolve="SStructObject" />
        </node>
      </node>
      <node concept="3clFbS" id="67uyCwCP1zS" role="3clF47">
        <node concept="3clFbF" id="67uyCwCP2y$" role="3cqZAp">
          <node concept="2OqwBi" id="7KI$$uj_HEK" role="3clFbG">
            <node concept="1eOMI4" id="7KI$$uj_G$c" role="2Oq$k0">
              <node concept="10QFUN" id="7KI$$uj_G$9" role="1eOMHV">
                <node concept="3uibUv" id="25AJqx1X6$0" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DStructObject" resolve="DStructObject" />
                </node>
                <node concept="37vLTw" id="7KI$$uj_GNx" role="10QFUP">
                  <ref role="3cqZAo" node="67uyCwCP2su" resolve="obj" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="25AJqx1X7d9" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DObject.dObjectParent()" resolve="dObjectParent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="67uyCwCP0IF" role="1B3o_S" />
      <node concept="3uibUv" id="67uyCwCP2oO" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HLMRNkuEYi" role="jymVt" />
    <node concept="2YIFZL" id="3HLMRNkuJ6J" role="jymVt">
      <property role="TrG5h" value="pre" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="3HLMRNkuJKS" role="3clF46">
        <property role="TrG5h" value="supplier" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="3HLMRNkuJM8" role="1tU5fm">
          <node concept="16syzq" id="3HLMRNkuJMH" role="1ajl9A">
            <ref role="16sUi3" node="3HLMRNkuJIW" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3HLMRNkuJ6M" role="3clF47">
        <node concept="3clFbF" id="3HLMRNkuN9V" role="3cqZAp">
          <node concept="2YIFZM" id="3HLMRNkuNg3" role="3clFbG">
            <ref role="37wK5l" to="t4tl:~DClareMPS.pre(java.util.function.Supplier)" resolve="pre" />
            <ref role="1Pybhc" to="t4tl:~DClareMPS" resolve="DClareMPS" />
            <node concept="2ShNRf" id="3HLMRNkuNkF" role="37wK5m">
              <node concept="YeOm9" id="3HLMRNkuRHf" role="2ShVmc">
                <node concept="1Y3b0j" id="3HLMRNkuRHi" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="82uw:~Supplier" resolve="Supplier" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="3HLMRNkuRHj" role="1B3o_S" />
                  <node concept="3clFb_" id="3HLMRNkuRHk" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="get" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <node concept="3Tm1VV" id="3HLMRNkuRHl" role="1B3o_S" />
                    <node concept="16syzq" id="3HLMRNkuRTJ" role="3clF45">
                      <ref role="16sUi3" node="3HLMRNkuJIW" resolve="T" />
                    </node>
                    <node concept="3clFbS" id="3HLMRNkuRHo" role="3clF47">
                      <node concept="3clFbF" id="3HLMRNkuRZK" role="3cqZAp">
                        <node concept="2OqwBi" id="3HLMRNkuS2b" role="3clFbG">
                          <node concept="37vLTw" id="3HLMRNkuRZJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="3HLMRNkuJKS" resolve="supplier" />
                          </node>
                          <node concept="1Bd96e" id="3HLMRNkuS3H" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="16syzq" id="3HLMRNkuRP6" role="2Ghqu4">
                    <ref role="16sUi3" node="3HLMRNkuJIW" resolve="T" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3HLMRNkuGGP" role="1B3o_S" />
      <node concept="16euLQ" id="3HLMRNkuJIW" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16syzq" id="3HLMRNkuJJY" role="3clF45">
        <ref role="16sUi3" node="3HLMRNkuJIW" resolve="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="5deS_k84qnZ" role="jymVt" />
    <node concept="2YIFZL" id="5deS_k84A0i" role="jymVt">
      <property role="TrG5h" value="post" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="5deS_k84A0j" role="3clF46">
        <property role="TrG5h" value="supplier" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="5deS_k84A0k" role="1tU5fm">
          <node concept="16syzq" id="5deS_k84A0l" role="1ajl9A">
            <ref role="16sUi3" node="5deS_k84A0B" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5deS_k84A0m" role="3clF47">
        <node concept="3clFbF" id="5deS_k84A0n" role="3cqZAp">
          <node concept="2YIFZM" id="5deS_k84A0o" role="3clFbG">
            <ref role="37wK5l" to="t4tl:~DClareMPS.pre(java.util.function.Supplier)" resolve="pre" />
            <ref role="1Pybhc" to="t4tl:~DClareMPS" resolve="DClareMPS" />
            <node concept="2ShNRf" id="5deS_k84A0p" role="37wK5m">
              <node concept="YeOm9" id="5deS_k84A0q" role="2ShVmc">
                <node concept="1Y3b0j" id="5deS_k84A0r" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="82uw:~Supplier" resolve="Supplier" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="5deS_k84A0s" role="1B3o_S" />
                  <node concept="3clFb_" id="5deS_k84A0t" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="get" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <node concept="3Tm1VV" id="5deS_k84A0u" role="1B3o_S" />
                    <node concept="16syzq" id="5deS_k84A0v" role="3clF45">
                      <ref role="16sUi3" node="5deS_k84A0B" resolve="T" />
                    </node>
                    <node concept="3clFbS" id="5deS_k84A0w" role="3clF47">
                      <node concept="3clFbF" id="5deS_k84A0x" role="3cqZAp">
                        <node concept="2OqwBi" id="5deS_k84A0y" role="3clFbG">
                          <node concept="37vLTw" id="5deS_k84A0z" role="2Oq$k0">
                            <ref role="3cqZAo" node="5deS_k84A0j" resolve="supplier" />
                          </node>
                          <node concept="1Bd96e" id="5deS_k84A0$" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="16syzq" id="5deS_k84A0_" role="2Ghqu4">
                    <ref role="16sUi3" node="5deS_k84A0B" resolve="T" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5deS_k84A0A" role="1B3o_S" />
      <node concept="16euLQ" id="5deS_k84A0B" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16syzq" id="5deS_k84A0C" role="3clF45">
        <ref role="16sUi3" node="5deS_k84A0B" resolve="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="5deS_k84xbD" role="jymVt" />
    <node concept="2tJIrI" id="5$bRKnRDLMC" role="jymVt" />
    <node concept="2YIFZL" id="lSgC6tLJWt" role="jymVt">
      <property role="TrG5h" value="setModelName" />
      <node concept="3clFbS" id="lSgC6tLJWw" role="3clF47">
        <node concept="3clFbF" id="lSgC6tLOrU" role="3cqZAp">
          <node concept="2OqwBi" id="lSgC6tLQnF" role="3clFbG">
            <node concept="1eOMI4" id="lSgC6tLPJA" role="2Oq$k0">
              <node concept="10QFUN" id="lSgC6tLP8p" role="1eOMHV">
                <node concept="3uibUv" id="lSgC6tLPsn" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                </node>
                <node concept="37vLTw" id="lSgC6tLOKR" role="10QFUP">
                  <ref role="3cqZAo" node="lSgC6tLN3I" resolve="model" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7d$hDurG5Qs" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DModel.setName(java.lang.String)" resolve="setName" />
              <node concept="37vLTw" id="7d$hDurG6qP" role="37wK5m">
                <ref role="3cqZAo" node="lSgC6tLNDi" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="lSgC6tLGl6" role="1B3o_S" />
      <node concept="3cqZAl" id="lSgC6tLJI5" role="3clF45" />
      <node concept="37vLTG" id="lSgC6tLN3I" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="lSgC6tLN3H" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="lSgC6tLNDi" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="lSgC6tLNSK" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7d$hDurG6JR" role="jymVt" />
    <node concept="2YIFZL" id="7d$hDurG7Yi" role="jymVt">
      <property role="TrG5h" value="getModelName" />
      <node concept="3clFbS" id="7d$hDurG7Yj" role="3clF47">
        <node concept="3clFbJ" id="61G3WPiL2sM" role="3cqZAp">
          <node concept="3clFbS" id="61G3WPiL2sO" role="3clFbx">
            <node concept="3cpWs6" id="61G3WPiL9xI" role="3cqZAp">
              <node concept="2OqwBi" id="7d$hDurG7Yl" role="3cqZAk">
                <node concept="1eOMI4" id="7d$hDurG7Ym" role="2Oq$k0">
                  <node concept="10QFUN" id="7d$hDurG7Yn" role="1eOMHV">
                    <node concept="3uibUv" id="7d$hDurG7Yo" role="10QFUM">
                      <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                    </node>
                    <node concept="37vLTw" id="7d$hDurG7Yp" role="10QFUP">
                      <ref role="3cqZAo" node="7d$hDurG7Yu" resolve="model" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="58c3J0fGovr" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DModel.getNameString()" resolve="getNameString" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="61G3WPiL2T5" role="3clFbw">
            <node concept="3uibUv" id="61G3WPiL6ka" role="2ZW6by">
              <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
            </node>
            <node concept="37vLTw" id="61G3WPiL2u$" role="2ZW6bz">
              <ref role="3cqZAo" node="7d$hDurG7Yu" resolve="model" />
            </node>
          </node>
          <node concept="9aQIb" id="61G3WPiL6RU" role="9aQIa">
            <node concept="3clFbS" id="61G3WPiL6RV" role="9aQI4">
              <node concept="3cpWs6" id="61G3WPiL8wy" role="3cqZAp">
                <node concept="2OqwBi" id="61G3WPiL7I7" role="3cqZAk">
                  <node concept="2OqwBi" id="61G3WPiL7hE" role="2Oq$k0">
                    <node concept="37vLTw" id="61G3WPiL6TF" role="2Oq$k0">
                      <ref role="3cqZAo" node="7d$hDurG7Yu" resolve="model" />
                    </node>
                    <node concept="liA8E" id="61G3WPiL7At" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                    </node>
                  </node>
                  <node concept="liA8E" id="61G3WPiL88_" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModelName.getLongName()" resolve="getLongName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7d$hDurG7Ys" role="1B3o_S" />
      <node concept="17QB3L" id="7d$hDurGbqs" role="3clF45" />
      <node concept="37vLTG" id="7d$hDurG7Yu" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="7d$hDurG7Yv" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="lSgC6tLDfS" role="jymVt" />
    <node concept="2YIFZL" id="4I4zpQgBDbq" role="jymVt">
      <property role="TrG5h" value="resolve" />
      <node concept="3clFbS" id="4I4zpQgBDbt" role="3clF47">
        <node concept="3clFbF" id="4I4zpQgBEKz" role="3cqZAp">
          <node concept="2OqwBi" id="4I4zpQgBFcq" role="3clFbG">
            <node concept="2YIFZM" id="4I4zpQgBEK_" role="2Oq$k0">
              <ref role="37wK5l" to="t4tl:~DClareMPS.instance()" resolve="instance" />
              <ref role="1Pybhc" to="t4tl:~DClareMPS" resolve="DClareMPS" />
            </node>
            <node concept="liA8E" id="4I4zpQgBFHX" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DClareMPS.read(java.util.function.Supplier)" resolve="read" />
              <node concept="2ShNRf" id="4I4zpQgBLoz" role="37wK5m">
                <node concept="YeOm9" id="4I4zpQgBRYj" role="2ShVmc">
                  <node concept="1Y3b0j" id="4I4zpQgBRYm" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="82uw:~Supplier" resolve="Supplier" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="4I4zpQgBRYn" role="1B3o_S" />
                    <node concept="3clFb_" id="4I4zpQgBRYs" role="jymVt">
                      <property role="TrG5h" value="get" />
                      <node concept="3Tm1VV" id="4I4zpQgBRYt" role="1B3o_S" />
                      <node concept="3uibUv" id="4I4zpQgBVFC" role="3clF45">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="3clFbS" id="4I4zpQgBRYw" role="3clF47">
                        <node concept="3clFbF" id="4I4zpQgBXuZ" role="3cqZAp">
                          <node concept="2OqwBi" id="4I4zpQgBXAu" role="3clFbG">
                            <node concept="37vLTw" id="4I4zpQgBXuY" role="2Oq$k0">
                              <ref role="3cqZAo" node="4I4zpQgBECx" resolve="ref" />
                            </node>
                            <node concept="liA8E" id="4I4zpQgBXIG" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="10Nm6u" id="4I4zpQgBXKz" role="37wK5m" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4I4zpQgBRYy" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="4I4zpQgBTSZ" role="2Ghqu4">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4I4zpQgBBzL" role="1B3o_S" />
      <node concept="3uibUv" id="4I4zpQgBD2B" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="37vLTG" id="4I4zpQgBECx" role="3clF46">
        <property role="TrG5h" value="ref" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4I4zpQgBECw" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4I4zpQgBA7a" role="jymVt" />
    <node concept="2YIFZL" id="QAunT1Qb6g" role="jymVt">
      <property role="TrG5h" value="getFetaure" />
      <node concept="37vLTG" id="QAunT1QosP" role="3clF46">
        <property role="TrG5h" value="item" />
        <node concept="3uibUv" id="QAunT1Qov2" role="1tU5fm">
          <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
        </node>
      </node>
      <node concept="3clFbS" id="QAunT1Qb6j" role="3clF47">
        <node concept="3cpWs8" id="QAunT1Qrmi" role="3cqZAp">
          <node concept="3cpWsn" id="QAunT1Qrmj" role="3cpWs9">
            <property role="TrG5h" value="target" />
            <node concept="3uibUv" id="QAunT1Qrh4" role="1tU5fm">
              <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
            </node>
            <node concept="2OqwBi" id="QAunT1Qrmk" role="33vP2m">
              <node concept="37vLTw" id="QAunT1Qrml" role="2Oq$k0">
                <ref role="3cqZAo" node="QAunT1QosP" resolve="item" />
              </node>
              <node concept="liA8E" id="QAunT1Qrmm" role="2OqNvi">
                <ref role="37wK5l" to="d6hs:~NodeReportItem.getMessageTarget()" resolve="getMessageTarget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4I4zpQgBZxY" role="3cqZAp">
          <node concept="3cpWsn" id="4I4zpQgBZxZ" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3uibUv" id="4I4zpQgBZy0" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
            </node>
            <node concept="2OqwBi" id="4I4zpQgBZy1" role="33vP2m">
              <node concept="liA8E" id="4I4zpQgBZy2" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
              </node>
              <node concept="1rXfSq" id="4I4zpQgBZy3" role="2Oq$k0">
                <ref role="37wK5l" node="4I4zpQgBDbq" resolve="resolve" />
                <node concept="2OqwBi" id="4I4zpQgBZy4" role="37wK5m">
                  <node concept="37vLTw" id="4I4zpQgBZy5" role="2Oq$k0">
                    <ref role="3cqZAo" node="QAunT1QosP" resolve="item" />
                  </node>
                  <node concept="liA8E" id="4I4zpQgBZy6" role="2OqNvi">
                    <ref role="37wK5l" to="d6hs:~NodeFlavouredItem.getNode()" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="QAunT1QrwW" role="3cqZAp">
          <node concept="3clFbS" id="QAunT1QrwY" role="3clFbx">
            <node concept="2Gpval" id="QAunT1QqyB" role="3cqZAp">
              <node concept="2GrKxI" id="QAunT1QqyD" role="2Gsz3X">
                <property role="TrG5h" value="pr" />
              </node>
              <node concept="2OqwBi" id="QAunT1QxXY" role="2GsD0m">
                <node concept="37vLTw" id="QAunT1QxCp" role="2Oq$k0">
                  <ref role="3cqZAo" node="4I4zpQgBZxZ" resolve="concept" />
                </node>
                <node concept="liA8E" id="QAunT1Qydm" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
                </node>
              </node>
              <node concept="3clFbS" id="QAunT1QqyH" role="2LFqv$">
                <node concept="3clFbJ" id="QAunT1QC5X" role="3cqZAp">
                  <node concept="2OqwBi" id="QAunT1QC5Y" role="3clFbw">
                    <node concept="37vLTw" id="QAunT1QC5Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="QAunT1Qrmj" resolve="target" />
                    </node>
                    <node concept="liA8E" id="QAunT1QC60" role="2OqNvi">
                      <ref role="37wK5l" to="zavc:~MessageTarget.sameAs(jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="sameAs" />
                      <node concept="2YIFZM" id="QAunT1QC61" role="37wK5m">
                        <ref role="1Pybhc" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
                        <ref role="37wK5l" to="d6hs:~NodeReportItem.conceptFeatureToMessageTarget(org.jetbrains.mps.openapi.language.SConceptFeature)" resolve="conceptFeatureToMessageTarget" />
                        <node concept="2GrUjf" id="QAunT1QCbo" role="37wK5m">
                          <ref role="2Gs0qQ" node="QAunT1QqyD" resolve="pr" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="QAunT1QC63" role="3clFbx">
                    <node concept="3cpWs6" id="QAunT1QC64" role="3cqZAp">
                      <node concept="2GrUjf" id="QAunT1QCTA" role="3cqZAk">
                        <ref role="2Gs0qQ" node="QAunT1QqyD" resolve="pr" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="QAunT1QrS6" role="3clFbw">
            <node concept="3uibUv" id="QAunT1QtDq" role="2ZW6by">
              <ref role="3uigEE" to="zavc:~PropertyMessageTarget" resolve="PropertyMessageTarget" />
            </node>
            <node concept="37vLTw" id="QAunT1QrzJ" role="2ZW6bz">
              <ref role="3cqZAo" node="QAunT1Qrmj" resolve="target" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="QAunT1QtGA" role="3cqZAp">
          <node concept="3clFbS" id="QAunT1QtGC" role="3clFbx">
            <node concept="2Gpval" id="QAunT1QqAx" role="3cqZAp">
              <node concept="2GrKxI" id="QAunT1QqAz" role="2Gsz3X">
                <property role="TrG5h" value="rl" />
              </node>
              <node concept="2OqwBi" id="QAunT1Q$na" role="2GsD0m">
                <node concept="37vLTw" id="QAunT1QzWS" role="2Oq$k0">
                  <ref role="3cqZAo" node="4I4zpQgBZxZ" resolve="concept" />
                </node>
                <node concept="liA8E" id="QAunT1Q$BJ" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
                </node>
              </node>
              <node concept="3clFbS" id="QAunT1QqAB" role="2LFqv$">
                <node concept="3clFbJ" id="QAunT1QB8m" role="3cqZAp">
                  <node concept="2OqwBi" id="QAunT1QBxl" role="3clFbw">
                    <node concept="37vLTw" id="QAunT1QBpf" role="2Oq$k0">
                      <ref role="3cqZAo" node="QAunT1Qrmj" resolve="target" />
                    </node>
                    <node concept="liA8E" id="QAunT1QBB$" role="2OqNvi">
                      <ref role="37wK5l" to="zavc:~MessageTarget.sameAs(jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="sameAs" />
                      <node concept="2YIFZM" id="QAunT1QAtC" role="37wK5m">
                        <ref role="1Pybhc" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
                        <ref role="37wK5l" to="d6hs:~NodeReportItem.conceptFeatureToMessageTarget(org.jetbrains.mps.openapi.language.SConceptFeature)" resolve="conceptFeatureToMessageTarget" />
                        <node concept="2GrUjf" id="QAunT1QAyg" role="37wK5m">
                          <ref role="2Gs0qQ" node="QAunT1QqAz" resolve="rl" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="QAunT1QB8o" role="3clFbx">
                    <node concept="3cpWs6" id="QAunT1QBH1" role="3cqZAp">
                      <node concept="2GrUjf" id="QAunT1QBHQ" role="3cqZAk">
                        <ref role="2Gs0qQ" node="QAunT1QqAz" resolve="rl" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="QAunT1QqE3" role="3cqZAp">
              <node concept="2GrKxI" id="QAunT1QqE5" role="2Gsz3X">
                <property role="TrG5h" value="cl" />
              </node>
              <node concept="2OqwBi" id="QAunT1Q_mq" role="2GsD0m">
                <node concept="37vLTw" id="QAunT1Q$SM" role="2Oq$k0">
                  <ref role="3cqZAo" node="4I4zpQgBZxZ" resolve="concept" />
                </node>
                <node concept="liA8E" id="QAunT1Q_Ps" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
                </node>
              </node>
              <node concept="3clFbS" id="QAunT1QqE9" role="2LFqv$">
                <node concept="3clFbJ" id="QAunT1QC2u" role="3cqZAp">
                  <node concept="2OqwBi" id="QAunT1QC2v" role="3clFbw">
                    <node concept="37vLTw" id="QAunT1QC2w" role="2Oq$k0">
                      <ref role="3cqZAo" node="QAunT1Qrmj" resolve="target" />
                    </node>
                    <node concept="liA8E" id="QAunT1QC2x" role="2OqNvi">
                      <ref role="37wK5l" to="zavc:~MessageTarget.sameAs(jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="sameAs" />
                      <node concept="2YIFZM" id="QAunT1QC2y" role="37wK5m">
                        <ref role="1Pybhc" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
                        <ref role="37wK5l" to="d6hs:~NodeReportItem.conceptFeatureToMessageTarget(org.jetbrains.mps.openapi.language.SConceptFeature)" resolve="conceptFeatureToMessageTarget" />
                        <node concept="2GrUjf" id="QAunT1QCxb" role="37wK5m">
                          <ref role="2Gs0qQ" node="QAunT1QqE5" resolve="cl" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="QAunT1QC2$" role="3clFbx">
                    <node concept="3cpWs6" id="QAunT1QC2_" role="3cqZAp">
                      <node concept="2GrUjf" id="QAunT1QDhZ" role="3cqZAk">
                        <ref role="2Gs0qQ" node="QAunT1QqE5" resolve="cl" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="QAunT1QtR5" role="3clFbw">
            <node concept="3uibUv" id="QAunT1QtSH" role="2ZW6by">
              <ref role="3uigEE" to="zavc:~ReferenceMessageTarget" resolve="ReferenceMessageTarget" />
            </node>
            <node concept="37vLTw" id="QAunT1QtJD" role="2ZW6bz">
              <ref role="3cqZAo" node="QAunT1Qrmj" resolve="target" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="QAunT1QuUV" role="3cqZAp">
          <node concept="10Nm6u" id="QAunT1QuWj" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="QAunT1Q9LH" role="1B3o_S" />
      <node concept="3uibUv" id="QAunT1Qb3U" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConceptFeature" resolve="SConceptFeature" />
      </node>
    </node>
    <node concept="2tJIrI" id="1GxPEP_bKDJ" role="jymVt" />
    <node concept="3Tm1VV" id="30fQumnG8Av" role="1B3o_S" />
    <node concept="2YIFZL" id="2$O6I01klgO" role="jymVt">
      <property role="TrG5h" value="trace" />
      <node concept="37vLTG" id="2$O6I01klgP" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="2$O6I01kp_t" role="1tU5fm">
          <ref role="16sUi3" node="2$O6I01koJl" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="2$O6I01kDBC" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="2$O6I01kDUT" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="2$O6I01kp3k" role="3clF45">
        <ref role="16sUi3" node="2$O6I01koJl" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="2$O6I01klgT" role="1B3o_S" />
      <node concept="3clFbS" id="2$O6I01klgU" role="3clF47">
        <node concept="3cpWs8" id="3ioQSqQLsdV" role="3cqZAp">
          <node concept="3cpWsn" id="3ioQSqQLsdW" role="3cpWs9">
            <property role="TrG5h" value="pre" />
            <node concept="17QB3L" id="kkv2xtusGg" role="1tU5fm" />
            <node concept="2YIFZM" id="1BVKwjPW5pb" role="33vP2m">
              <ref role="1Pybhc" to="kag7:~DclareTrace" resolve="DclareTrace" />
              <ref role="37wK5l" to="kag7:~DclareTrace.getLineStart(java.lang.String,org.modelingvalue.dclare.Transaction)" resolve="getLineStart" />
              <node concept="Xl_RD" id="1BVKwjPW5pc" role="37wK5m">
                <property role="Xl_RC" value="TRACE" />
              </node>
              <node concept="2YIFZM" id="2$eQdAB2$pz" role="37wK5m">
                <ref role="1Pybhc" to="kag7:~LeafTransaction" resolve="LeafTransaction" />
                <ref role="37wK5l" to="kag7:~LeafTransaction.getCurrent()" resolve="getCurrent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="RRSsy" id="2$O6I01k0e3" role="3cqZAp">
          <property role="RRSoG" value="h1akgim/info" />
          <node concept="2YIFZM" id="2$O6I04c6wK" role="RRSoy">
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
            <node concept="Xl_RD" id="2$O6I04c6wL" role="37wK5m">
              <property role="Xl_RC" value="+++++ %s %s: %s" />
            </node>
            <node concept="37vLTw" id="3ioQSqQL$cq" role="37wK5m">
              <ref role="3cqZAo" node="3ioQSqQLsdW" resolve="pre" />
            </node>
            <node concept="37vLTw" id="2$O6I04c6wM" role="37wK5m">
              <ref role="3cqZAo" node="2$O6I01kDBC" resolve="message" />
            </node>
            <node concept="37vLTw" id="2$O6I04c6wN" role="37wK5m">
              <ref role="3cqZAo" node="2$O6I01klgP" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="OthMe3lznn" role="3cqZAp">
          <node concept="2OqwBi" id="1eooSyZOQSW" role="3clFbG">
            <node concept="2YIFZM" id="1eooSyZOPwI" role="2Oq$k0">
              <ref role="1Pybhc" to="t4tl:~DClareMPS" resolve="DClareMPS" />
              <ref role="37wK5l" to="t4tl:~DClareMPS.instance()" resolve="instance" />
            </node>
            <node concept="liA8E" id="1eooSyZP6NC" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DClareMPS.addInfoMessage(java.lang.String,java.lang.Object,java.lang.String)" resolve="addInfoMessage" />
              <node concept="37vLTw" id="7lWcteUzu44" role="37wK5m">
                <ref role="3cqZAo" node="3ioQSqQLsdW" resolve="pre" />
              </node>
              <node concept="37vLTw" id="OthMe3lvvo" role="37wK5m">
                <ref role="3cqZAo" node="2$O6I01klgP" resolve="node" />
              </node>
              <node concept="37vLTw" id="1eooSyZP7k2" role="37wK5m">
                <ref role="3cqZAo" node="2$O6I01kDBC" resolve="message" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2$O6I01kpRX" role="3cqZAp">
          <node concept="37vLTw" id="2$O6I01kpTh" role="3cqZAk">
            <ref role="3cqZAo" node="2$O6I01klgP" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2$O6I01koJl" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="7cVLgROP27k" role="jymVt" />
    <node concept="2YIFZL" id="7cVLgROPgUD" role="jymVt">
      <property role="TrG5h" value="dObserved" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7cVLgROPgUE" role="3clF47">
        <node concept="3cpWs6" id="54BuWtqF8OC" role="3cqZAp">
          <node concept="2YIFZM" id="54BuWtqF2Ln" role="3cqZAk">
            <ref role="37wK5l" to="t4tl:~DNode.dObserved(org.jetbrains.mps.openapi.language.SConceptFeature)" resolve="dObserved" />
            <ref role="1Pybhc" to="t4tl:~DNode" resolve="DNode" />
            <node concept="37vLTw" id="54BuWtqF5y3" role="37wK5m">
              <ref role="3cqZAo" node="7cVLgROPgUS" resolve="feature" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7cVLgROPgUO" role="1B3o_S" />
      <node concept="3uibUv" id="7cVLgROP$9r" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DObserved" resolve="DObserved" />
      </node>
      <node concept="37vLTG" id="7cVLgROPgUS" role="3clF46">
        <property role="TrG5h" value="feature" />
        <node concept="3uibUv" id="7cVLgROPgUT" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConceptFeature" resolve="SConceptFeature" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7cVLgROPSG6" role="jymVt" />
    <node concept="2YIFZL" id="7cVLgROQlxN" role="jymVt">
      <property role="TrG5h" value="modelNameDObserved" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7cVLgROQlxO" role="3clF47">
        <node concept="3cpWs6" id="54BuWtqFi6l" role="3cqZAp">
          <node concept="10M0yZ" id="54BuWtqFeya" role="3cqZAk">
            <ref role="3cqZAo" to="t4tl:~DModel.NAME" resolve="NAME" />
            <ref role="1PxDUh" to="t4tl:~DModel" resolve="DModel" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7cVLgROQlxP" role="1B3o_S" />
      <node concept="3uibUv" id="7cVLgROQlxQ" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DObserved" resolve="DObserved" />
      </node>
    </node>
    <node concept="2tJIrI" id="7cVLgROQ5K_" role="jymVt" />
    <node concept="2YIFZL" id="7cVLgROQDAk" role="jymVt">
      <property role="TrG5h" value="modelsDObserved" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7cVLgROQDAl" role="3clF47">
        <node concept="3cpWs6" id="54BuWtqFjpL" role="3cqZAp">
          <node concept="10M0yZ" id="54BuWtqFokL" role="3cqZAk">
            <ref role="3cqZAo" to="t4tl:~DModule.MODELS" resolve="MODELS" />
            <ref role="1PxDUh" to="t4tl:~DModule" resolve="DModule" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7cVLgROQDAm" role="1B3o_S" />
      <node concept="3uibUv" id="7cVLgROQDAn" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DObserved" resolve="DObserved" />
      </node>
    </node>
    <node concept="2tJIrI" id="7cVLgRORqrd" role="jymVt" />
    <node concept="2YIFZL" id="7cVLgROR9$$" role="jymVt">
      <property role="TrG5h" value="usedModelsDObserved" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7cVLgROR9$_" role="3clF47">
        <node concept="3cpWs6" id="54BuWtqFkzt" role="3cqZAp">
          <node concept="10M0yZ" id="54BuWtqFxHj" role="3cqZAk">
            <ref role="3cqZAo" to="t4tl:~DModel.USED_MODELS" resolve="USED_MODELS" />
            <ref role="1PxDUh" to="t4tl:~DModel" resolve="DModel" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7cVLgROR9$A" role="1B3o_S" />
      <node concept="3uibUv" id="7cVLgROR9$B" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DObserved" resolve="DObserved" />
      </node>
    </node>
    <node concept="2tJIrI" id="7cVLgRORDln" role="jymVt" />
    <node concept="2YIFZL" id="7cVLgRORRdj" role="jymVt">
      <property role="TrG5h" value="modelRootsDObserved" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7cVLgRORRdk" role="3clF47">
        <node concept="3cpWs6" id="54BuWtqFl8K" role="3cqZAp">
          <node concept="10M0yZ" id="54BuWtqFwkr" role="3cqZAk">
            <ref role="3cqZAo" to="t4tl:~DModel.ROOTS" resolve="ROOTS" />
            <ref role="1PxDUh" to="t4tl:~DModel" resolve="DModel" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7cVLgRORRdl" role="1B3o_S" />
      <node concept="3uibUv" id="7cVLgRORRdm" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DObserved" resolve="DObserved" />
      </node>
    </node>
    <node concept="2tJIrI" id="7cVLgROScsY" role="jymVt" />
    <node concept="2YIFZL" id="7cVLgROSibc" role="jymVt">
      <property role="TrG5h" value="usedLanguagesDObserved" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7cVLgROSibd" role="3clF47">
        <node concept="3cpWs6" id="54BuWtqFlHh" role="3cqZAp">
          <node concept="10M0yZ" id="54BuWtqFv17" role="3cqZAk">
            <ref role="3cqZAo" to="t4tl:~DModel.USED_LANGUAGES" resolve="USED_LANGUAGES" />
            <ref role="1PxDUh" to="t4tl:~DModel" resolve="DModel" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7cVLgROSibe" role="1B3o_S" />
      <node concept="3uibUv" id="7cVLgROSibf" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DObserved" resolve="DObserved" />
      </node>
    </node>
    <node concept="2tJIrI" id="7cVLgROSd0v" role="jymVt" />
    <node concept="2YIFZL" id="7cVLgROT7YV" role="jymVt">
      <property role="TrG5h" value="usedDevkitsDObserved" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7cVLgROT7YW" role="3clF47">
        <node concept="3cpWs6" id="54BuWtqFmhM" role="3cqZAp">
          <node concept="10M0yZ" id="54BuWtqFtI_" role="3cqZAk">
            <ref role="3cqZAo" to="t4tl:~DModel.USED_DEVKITS" resolve="USED_DEVKITS" />
            <ref role="1PxDUh" to="t4tl:~DModel" resolve="DModel" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7cVLgROT7YX" role="1B3o_S" />
      <node concept="3uibUv" id="7cVLgROT7YY" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DObserved" resolve="DObserved" />
      </node>
    </node>
    <node concept="2tJIrI" id="7cVLgROT1CT" role="jymVt" />
    <node concept="2YIFZL" id="7avOKBtUu9A" role="jymVt">
      <property role="TrG5h" value="callMethod" />
      <node concept="37vLTG" id="1bjvCAOV49H" role="3clF46">
        <property role="TrG5h" value="language" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1bjvCAOV5mf" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="37vLTG" id="1bjvCAOVKp3" role="3clF46">
        <property role="TrG5h" value="id" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="1bjvCAOVLrH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1bjvCAOVfkt" role="3clF46">
        <property role="TrG5h" value="object" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1bjvCAOVgC9" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="7avOKBtULfd" role="3clF46">
        <property role="TrG5h" value="args" />
        <property role="3TUv4t" value="true" />
        <node concept="10Q1$e" id="7avOKBtUObG" role="1tU5fm">
          <node concept="3uibUv" id="7avOKBtUObD" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7avOKBtUu9D" role="3clF47">
        <node concept="3clFbF" id="6rHe4o51Adc" role="3cqZAp">
          <node concept="37vLTI" id="6rHe4o51HFc" role="3clFbG">
            <node concept="37vLTw" id="6rHe4o51Imh" role="37vLTx">
              <ref role="3cqZAo" node="1bjvCAOVfkt" resolve="object" />
            </node>
            <node concept="AH0OO" id="6rHe4o51Gf2" role="37vLTJ">
              <node concept="3cmrfG" id="6rHe4o51GYl" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="6rHe4o51Ada" role="AHHXb">
                <ref role="3cqZAo" node="7avOKBtULfd" resolve="args" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1bjvCAOQSls" role="3cqZAp">
          <node concept="3clFbS" id="1bjvCAOQSlu" role="3clFbx">
            <node concept="3cpWs6" id="4qns$2VC_Pb" role="3cqZAp">
              <node concept="10QFUN" id="4qns$2VCIm0" role="3cqZAk">
                <node concept="16syzq" id="4qns$2VCJd6" role="10QFUM">
                  <ref role="16sUi3" node="7avOKBtUFfG" resolve="R" />
                </node>
                <node concept="2OqwBi" id="4qns$2VCCtF" role="10QFUP">
                  <node concept="2YIFZM" id="1x5BZ5CwJHo" role="2Oq$k0">
                    <ref role="37wK5l" to="t4tl:~DMethod.of(org.jetbrains.mps.openapi.language.SLanguage,java.lang.String)" resolve="of" />
                    <ref role="1Pybhc" to="t4tl:~DMethod" resolve="DMethod" />
                    <node concept="37vLTw" id="1x5BZ5CwJHp" role="37wK5m">
                      <ref role="3cqZAo" node="1bjvCAOV49H" resolve="language" />
                    </node>
                    <node concept="37vLTw" id="1x5BZ5CwJHq" role="37wK5m">
                      <ref role="3cqZAo" node="1bjvCAOVKp3" resolve="id" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4qns$2VCD_d" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DMethod.invoke(java.lang.Object[])" resolve="invoke" />
                    <node concept="37vLTw" id="4qns$2VCFh7" role="37wK5m">
                      <ref role="3cqZAo" node="7avOKBtULfd" resolve="args" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1bjvCAOQTCp" role="3clFbw">
            <node concept="3uibUv" id="1bjvCAOQUe9" role="2ZW6by">
              <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
            </node>
            <node concept="37vLTw" id="1bjvCAOQSWO" role="2ZW6bz">
              <ref role="3cqZAo" node="1bjvCAOVfkt" resolve="object" />
            </node>
          </node>
          <node concept="9aQIb" id="1bjvCAOQYBg" role="9aQIa">
            <node concept="3clFbS" id="1bjvCAOQYBh" role="9aQI4">
              <node concept="3cpWs6" id="1bjvCAOQZdS" role="3cqZAp">
                <node concept="2YIFZM" id="1bjvCAOQZdT" role="3cqZAk">
                  <ref role="1Pybhc" to="t4tl:~DClareMPS" resolve="DClareMPS" />
                  <ref role="37wK5l" to="t4tl:~DClareMPS.get(java.lang.Object,java.util.function.Supplier)" resolve="get" />
                  <node concept="37vLTw" id="1bjvCAOQZdU" role="37wK5m">
                    <ref role="3cqZAo" node="1bjvCAOVfkt" resolve="object" />
                  </node>
                  <node concept="2ShNRf" id="1bjvCAOQZdV" role="37wK5m">
                    <node concept="YeOm9" id="1bjvCAOQZdW" role="2ShVmc">
                      <node concept="1Y3b0j" id="1bjvCAOQZdX" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <ref role="1Y3XeK" to="82uw:~Supplier" resolve="Supplier" />
                        <node concept="3Tm1VV" id="1bjvCAOQZdY" role="1B3o_S" />
                        <node concept="3clFb_" id="1bjvCAOQZdZ" role="jymVt">
                          <property role="TrG5h" value="get" />
                          <node concept="3Tm1VV" id="1bjvCAOQZe0" role="1B3o_S" />
                          <node concept="16syzq" id="1bjvCAOQZe1" role="3clF45">
                            <ref role="16sUi3" node="7avOKBtUFfG" resolve="R" />
                          </node>
                          <node concept="3clFbS" id="1bjvCAOQZe2" role="3clF47">
                            <node concept="3clFbF" id="1bjvCAPbpqC" role="3cqZAp">
                              <node concept="1rXfSq" id="1bjvCAPbpqA" role="3clFbG">
                                <ref role="37wK5l" node="1bjvCAPcAhJ" resolve="toDObject" />
                                <node concept="37vLTw" id="1bjvCAPbsXw" role="37wK5m">
                                  <ref role="3cqZAo" node="7avOKBtULfd" resolve="args" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4qns$2VCKX4" role="3cqZAp">
                              <node concept="10QFUN" id="4qns$2VDbqI" role="3cqZAk">
                                <node concept="16syzq" id="4qns$2VDcF3" role="10QFUM">
                                  <ref role="16sUi3" node="7avOKBtUFfG" resolve="R" />
                                </node>
                                <node concept="1rXfSq" id="4qns$2VCYP8" role="10QFUP">
                                  <ref role="37wK5l" node="4sx0mC_spGq" resolve="toSObject" />
                                  <node concept="2OqwBi" id="4qns$2VD52R" role="37wK5m">
                                    <node concept="liA8E" id="4qns$2VD65m" role="2OqNvi">
                                      <ref role="37wK5l" to="t4tl:~DMethod.invoke(java.lang.Object[])" resolve="invoke" />
                                      <node concept="37vLTw" id="4qns$2VD7Ov" role="37wK5m">
                                        <ref role="3cqZAo" node="7avOKBtULfd" resolve="args" />
                                      </node>
                                    </node>
                                    <node concept="2YIFZM" id="1x5BZ5CwLf8" role="2Oq$k0">
                                      <ref role="37wK5l" to="t4tl:~DMethod.of(org.jetbrains.mps.openapi.language.SLanguage,java.lang.String)" resolve="of" />
                                      <ref role="1Pybhc" to="t4tl:~DMethod" resolve="DMethod" />
                                      <node concept="37vLTw" id="1x5BZ5CwLf9" role="37wK5m">
                                        <ref role="3cqZAo" node="1bjvCAOV49H" resolve="language" />
                                      </node>
                                      <node concept="37vLTw" id="1x5BZ5CwLfa" role="37wK5m">
                                        <ref role="3cqZAo" node="1bjvCAOVKp3" resolve="id" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="1bjvCAOQZeG" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                        <node concept="16syzq" id="1bjvCAOQZeH" role="2Ghqu4">
                          <ref role="16sUi3" node="7avOKBtUFfG" resolve="R" />
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
      <node concept="3Tm1VV" id="7avOKBtUbpN" role="1B3o_S" />
      <node concept="16euLQ" id="7avOKBtUFfG" role="16eVyc">
        <property role="TrG5h" value="R" />
      </node>
      <node concept="16syzq" id="7avOKBtV32y" role="3clF45">
        <ref role="16sUi3" node="7avOKBtUFfG" resolve="R" />
      </node>
    </node>
    <node concept="2tJIrI" id="1bjvCAPajoy" role="jymVt" />
    <node concept="2YIFZL" id="1bjvCAOUhi5" role="jymVt">
      <property role="TrG5h" value="callMethod" />
      <node concept="37vLTG" id="1bjvCAOUhi6" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="1bjvCAOUhi7" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1bjvCAOUhi8" role="3clF46">
        <property role="TrG5h" value="meth" />
        <node concept="3uibUv" id="1bjvCAOUhi9" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DMethod" resolve="DMethod" />
          <node concept="16syzq" id="1bjvCAOUhia" role="11_B2D">
            <ref role="16sUi3" node="1bjvCAOUhjs" resolve="R" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1bjvCAOUhib" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="1bjvCAOUhic" role="1tU5fm">
          <node concept="3uibUv" id="1bjvCAOUhid" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1bjvCAOUhie" role="3clF47">
        <node concept="3clFbF" id="1bjvCAOUhif" role="3cqZAp">
          <node concept="37vLTI" id="1bjvCAOUhig" role="3clFbG">
            <node concept="37vLTw" id="1bjvCAOUhih" role="37vLTx">
              <ref role="3cqZAo" node="1bjvCAOUhi6" resolve="object" />
            </node>
            <node concept="AH0OO" id="1bjvCAOUhii" role="37vLTJ">
              <node concept="3cmrfG" id="1bjvCAOUhij" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="1bjvCAOUhik" role="AHHXb">
                <ref role="3cqZAo" node="1bjvCAOUhib" resolve="args" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4qns$2VCt5p" role="3cqZAp">
          <node concept="2OqwBi" id="4qns$2VCvNS" role="3cqZAk">
            <node concept="37vLTw" id="4qns$2VCuQ9" role="2Oq$k0">
              <ref role="3cqZAo" node="1bjvCAOUhi8" resolve="meth" />
            </node>
            <node concept="liA8E" id="4qns$2VCwId" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DMethod.invoke(java.lang.Object[])" resolve="invoke" />
              <node concept="37vLTw" id="4qns$2VCybK" role="37wK5m">
                <ref role="3cqZAo" node="1bjvCAOUhib" resolve="args" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1bjvCAOUhjr" role="1B3o_S" />
      <node concept="16euLQ" id="1bjvCAOUhjs" role="16eVyc">
        <property role="TrG5h" value="R" />
      </node>
      <node concept="16syzq" id="1bjvCAOUhjt" role="3clF45">
        <ref role="16sUi3" node="1bjvCAOUhjs" resolve="R" />
      </node>
    </node>
    <node concept="2tJIrI" id="JpItC67hLp" role="jymVt" />
    <node concept="2YIFZL" id="JpItC6e_yl" role="jymVt">
      <property role="TrG5h" value="asSConcept" />
      <node concept="3clFbS" id="JpItC6e_yp" role="3clF47">
        <node concept="3cpWs6" id="JpItC6e_yq" role="3cqZAp">
          <node concept="2OqwBi" id="3e_Ux6htL_$" role="3cqZAk">
            <node concept="2YIFZM" id="3e_Ux6htJzX" role="2Oq$k0">
              <ref role="37wK5l" to="t4tl:~DClareMPS.instance()" resolve="instance" />
              <ref role="1Pybhc" to="t4tl:~DClareMPS" resolve="DClareMPS" />
            </node>
            <node concept="liA8E" id="3e_Ux6htNGP" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DClareMPS.read(java.util.function.Supplier)" resolve="read" />
              <node concept="2ShNRf" id="3e_Ux6htPbf" role="37wK5m">
                <node concept="YeOm9" id="3e_Ux6hu8Qi" role="2ShVmc">
                  <node concept="1Y3b0j" id="3e_Ux6hu8Ql" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="373rjd" value="true" />
                    <ref role="1Y3XeK" to="82uw:~Supplier" resolve="Supplier" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="3e_Ux6hu8Qm" role="1B3o_S" />
                    <node concept="3clFb_" id="3e_Ux6hu8Qz" role="jymVt">
                      <property role="TrG5h" value="get" />
                      <node concept="3Tm1VV" id="3e_Ux6hu8Q$" role="1B3o_S" />
                      <node concept="3uibUv" id="3e_Ux6hu8QI" role="3clF45">
                        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                      </node>
                      <node concept="3clFbS" id="3e_Ux6hu8QB" role="3clF47">
                        <node concept="3cpWs6" id="3e_Ux6huOmi" role="3cqZAp">
                          <node concept="10QFUN" id="3e_Ux6huQYO" role="3cqZAk">
                            <node concept="3uibUv" id="3e_Ux6huS9w" role="10QFUM">
                              <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                            </node>
                            <node concept="2YIFZM" id="5MFgGQnhjTQ" role="10QFUP">
                              <ref role="37wK5l" to="i8bi:5MFgGQngwTD" resolve="asSConcept" />
                              <ref role="1Pybhc" to="i8bi:5IkW5anFcyt" resolve="SNodeOperations" />
                              <node concept="1rXfSq" id="3e_Ux6hu$2O" role="37wK5m">
                                <ref role="37wK5l" node="4sx0mC_spGq" resolve="toSObject" />
                                <node concept="37vLTw" id="3e_Ux6huA1l" role="37wK5m">
                                  <ref role="3cqZAo" node="JpItC6e_yn" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3e_Ux6hu8QD" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="3e_Ux6hu8QH" role="2Ghqu4">
                      <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="JpItC6e_yw" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
      <node concept="37vLTG" id="JpItC6e_yn" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="JpItC6e_yo" role="1tU5fm">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
      <node concept="3Tm1VV" id="JpItC6e_yv" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="RraJEThmX3" role="jymVt" />
    <node concept="2YIFZL" id="RraJETi2e9" role="jymVt">
      <property role="TrG5h" value="share" />
      <node concept="37vLTG" id="58x4jvpcPf$" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="58x4jvpcPf_" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="RraJETjavA" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="RraJETjbkO" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="RraJETk2I_" role="3clF46">
        <property role="TrG5h" value="shared" />
        <node concept="10P_77" id="RraJETk3CD" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="RraJETi2ec" role="3clF47">
        <node concept="3cpWs8" id="4_uTAhqh_9q" role="3cqZAp">
          <node concept="3cpWsn" id="4_uTAhqh_9r" role="3cpWs9">
            <property role="TrG5h" value="dclareMps" />
            <node concept="3uibUv" id="4_uTAhqh$LW" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
            </node>
            <node concept="2OqwBi" id="58x4jvpd0oS" role="33vP2m">
              <node concept="2YIFZM" id="58x4jvpcXnl" role="2Oq$k0">
                <ref role="37wK5l" node="3z4syYPRmGX" resolve="getEngine" />
                <ref role="1Pybhc" node="30fQumnG8Au" resolve="DclareUtil" />
                <node concept="37vLTw" id="58x4jvpcYkk" role="37wK5m">
                  <ref role="3cqZAo" node="58x4jvpcPf$" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="58x4jvpd2vb" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.getDClareMPS()" resolve="getDClareMPS" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4f_r0qDBJXw" role="3cqZAp">
          <node concept="3clFbS" id="4f_r0qDBJXy" role="3clFbx">
            <node concept="3clFbF" id="4f_r0qDBh4q" role="3cqZAp">
              <node concept="2OqwBi" id="4SMm55p8$oG" role="3clFbG">
                <node concept="37vLTw" id="4SMm55p8zts" role="2Oq$k0">
                  <ref role="3cqZAo" node="4_uTAhqh_9r" resolve="dclareMps" />
                </node>
                <node concept="liA8E" id="4SMm55p8_zK" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DClareMPS.handleMPSChange(java.lang.Runnable)" resolve="handleMPSChange" />
                  <node concept="1bVj0M" id="4SMm55p8_Bc" role="37wK5m">
                    <node concept="3clFbS" id="4SMm55p8_Bd" role="1bW5cS">
                      <node concept="3cpWs8" id="4SMm55oUF$6" role="3cqZAp">
                        <node concept="3cpWsn" id="4SMm55oUF$7" role="3cpWs9">
                          <property role="TrG5h" value="dModel" />
                          <node concept="3uibUv" id="4SMm55oUF$8" role="1tU5fm">
                            <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                          </node>
                          <node concept="10QFUN" id="4SMm55oUF$9" role="33vP2m">
                            <node concept="3uibUv" id="4SMm55oUF$a" role="10QFUM">
                              <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                            </node>
                            <node concept="2YIFZM" id="4SMm55oUF$b" role="10QFUP">
                              <ref role="1Pybhc" node="30fQumnG8Au" resolve="DclareUtil" />
                              <ref role="37wK5l" node="7cS5T_tZh5f" resolve="toDObject" />
                              <node concept="37vLTw" id="4f_r0qDBnAj" role="37wK5m">
                                <ref role="3cqZAo" node="RraJETjavA" resolve="model" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4SMm55oUF$k" role="3cqZAp">
                        <node concept="2OqwBi" id="4SMm55oUF$l" role="3clFbG">
                          <node concept="37vLTw" id="4SMm55oUF$m" role="2Oq$k0">
                            <ref role="3cqZAo" node="4SMm55oUF$7" resolve="dModel" />
                          </node>
                          <node concept="liA8E" id="4SMm55oUF$n" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~DModel.shareModel(boolean)" resolve="shareModel" />
                            <node concept="37vLTw" id="4f_r0qDBrus" role="37wK5m">
                              <ref role="3cqZAo" node="RraJETk2I_" resolve="shared" />
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
          <node concept="2OqwBi" id="4f_r0qDBTPE" role="3clFbw">
            <node concept="37vLTw" id="4f_r0qDBTPF" role="2Oq$k0">
              <ref role="3cqZAo" node="4_uTAhqh_9r" resolve="dclareMps" />
            </node>
            <node concept="liA8E" id="4f_r0qDBTPG" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DClareMPS.isRunning()" resolve="isRunning" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="RraJEThJqr" role="1B3o_S" />
      <node concept="3cqZAl" id="RraJETikSZ" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="98RYWu1Dqr" role="jymVt" />
  </node>
  <node concept="2ABs$o" id="rTfv3HeNOH">
    <property role="TrG5h" value="Synthetic" />
    <node concept="3Tm1VV" id="rTfv3HeNOJ" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="2vH_zCMmdeS">
    <property role="TrG5h" value="DclareObject" />
    <node concept="3clFb_" id="2vH_zCMmdg4" role="jymVt">
      <property role="TrG5h" value="toMPSObject" />
      <node concept="16syzq" id="2vH_zCMmdh7" role="3clF45">
        <ref role="16sUi3" node="2vH_zCMmdfB" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="2vH_zCMmdg7" role="1B3o_S" />
      <node concept="3clFbS" id="2vH_zCMmdg8" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="2vH_zCMmdeT" role="1B3o_S" />
    <node concept="16euLQ" id="2vH_zCMmdfB" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="3HP615" id="22ExA6fKnVF">
    <property role="TrG5h" value="IAspectPrefs" />
    <node concept="3clFb_" id="22ExA6fKnWO" role="jymVt">
      <property role="TrG5h" value="getActive" />
      <node concept="37vLTG" id="yC2uzckEY5" role="3clF46">
        <property role="TrG5h" value="aspectId" />
        <node concept="17QB3L" id="yC2uzckEZl" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="22ExA6fKnWR" role="3clF47" />
      <node concept="3Tm1VV" id="22ExA6fKnWS" role="1B3o_S" />
      <node concept="10P_77" id="22ExA6fKnWB" role="3clF45" />
    </node>
    <node concept="3clFb_" id="22ExA6fKnZs" role="jymVt">
      <property role="TrG5h" value="setActive" />
      <node concept="37vLTG" id="yC2uzckEVu" role="3clF46">
        <property role="TrG5h" value="aspectId" />
        <node concept="17QB3L" id="yC2uzckEWx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="22ExA6fKo44" role="3clF46">
        <property role="TrG5h" value="active" />
        <node concept="10P_77" id="22ExA6fKo56" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="22ExA6fKnZv" role="3clF47" />
      <node concept="3Tm1VV" id="22ExA6fKnZw" role="1B3o_S" />
      <node concept="3cqZAl" id="22ExA6fKnYX" role="3clF45" />
    </node>
    <node concept="3clFb_" id="69vWBEqgka3" role="jymVt">
      <property role="TrG5h" value="getInactiveAspectIds" />
      <node concept="3clFbS" id="69vWBEqgka6" role="3clF47" />
      <node concept="3Tm1VV" id="69vWBEqgka7" role="1B3o_S" />
      <node concept="10Q1$e" id="69vWBEqgk9b" role="3clF45">
        <node concept="17QB3L" id="69vWBEqgkfU" role="10Q1$1" />
      </node>
    </node>
    <node concept="3Tm1VV" id="22ExA6fKnVG" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="3z4syYPQlIm">
    <property role="TrG5h" value="IModelPrefs" />
    <node concept="2tJIrI" id="58x4jvplMTC" role="jymVt" />
    <node concept="3clFb_" id="58x4jvplMRx" role="jymVt">
      <property role="TrG5h" value="initSharedInDClare" />
      <node concept="37vLTG" id="58x4jvplMSO" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="58x4jvplMSP" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="58x4jvplMRz" role="3clF45" />
      <node concept="3Tm1VV" id="58x4jvplMR$" role="1B3o_S" />
      <node concept="3clFbS" id="58x4jvplMR_" role="3clF47" />
    </node>
    <node concept="3clFb_" id="4wENxdCNAaQ" role="jymVt">
      <property role="TrG5h" value="getModelFromId" />
      <node concept="3clFbS" id="4wENxdCNAaT" role="3clF47" />
      <node concept="3Tm1VV" id="4wENxdCNAaU" role="1B3o_S" />
      <node concept="H_c77" id="4wENxdCNA9P" role="3clF45" />
      <node concept="37vLTG" id="4wENxdCNAdm" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="4wENxdCNAdl" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="4wENxdCNUEp" role="jymVt">
      <property role="TrG5h" value="isShared" />
      <node concept="37vLTG" id="4wENxdCNUF$" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="4wENxdCNUJk" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4wENxdCNUEs" role="3clF47" />
      <node concept="3Tm1VV" id="4wENxdCNUEt" role="1B3o_S" />
      <node concept="10P_77" id="4wENxdCNUDD" role="3clF45" />
    </node>
    <node concept="3clFb_" id="4wENxdCNULl" role="jymVt">
      <property role="TrG5h" value="setShared" />
      <node concept="37vLTG" id="4wENxdCNULm" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="4wENxdCNULn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4wENxdCNUP1" role="3clF46">
        <property role="TrG5h" value="shared" />
        <node concept="10P_77" id="4wENxdCNUTN" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4wENxdCNULo" role="3clF47" />
      <node concept="3Tm1VV" id="4wENxdCNULp" role="1B3o_S" />
      <node concept="3cqZAl" id="4wENxdCO019" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="58x4jvplMU7" role="jymVt" />
    <node concept="3Tm1VV" id="3z4syYPQlIn" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="98RYWu5NAw">
    <property role="TrG5h" value="StructCastException" />
    <node concept="2tJIrI" id="98RYWu5ONZ" role="jymVt" />
    <node concept="3clFbW" id="98RYWu5OOR" role="jymVt">
      <node concept="3cqZAl" id="98RYWu5OOT" role="3clF45" />
      <node concept="3Tm1VV" id="98RYWu5OOU" role="1B3o_S" />
      <node concept="3clFbS" id="98RYWu5OOV" role="3clF47">
        <node concept="XkiVB" id="98RYWu5OTU" role="3cqZAp">
          <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
          <node concept="37vLTw" id="98RYWu5QNZ" role="37wK5m">
            <ref role="3cqZAo" node="98RYWu5OSt" resolve="message" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="98RYWu5OSt" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="3uibUv" id="98RYWu5OSs" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="98RYWu5OO7" role="jymVt" />
    <node concept="3Tm1VV" id="98RYWu5NAx" role="1B3o_S" />
    <node concept="3uibUv" id="98RYWu5ONR" role="1zkMxy">
      <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
    </node>
  </node>
  <node concept="312cEu" id="Vg5FswJd4h">
    <property role="TrG5h" value="DNodeEditorComponent" />
    <node concept="2tJIrI" id="fazSmxqeSX" role="jymVt" />
    <node concept="3Tm1VV" id="Vg5FswJd4i" role="1B3o_S" />
    <node concept="3clFbW" id="Vg5FswJdtP" role="jymVt">
      <property role="TrG5h" value="NodeEditorComponent" />
      <node concept="3cqZAl" id="Vg5FswJdtQ" role="3clF45" />
      <node concept="3Tm1VV" id="Vg5FswJdtR" role="1B3o_S" />
      <node concept="37vLTG" id="Vg5FswJdtT" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="Vg5FswJdtU" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3clFbS" id="Vg5FswJdtX" role="3clF47">
        <node concept="XkiVB" id="2GFnA8g6IP4" role="3cqZAp">
          <ref role="37wK5l" to="exr9:~EditorComponent.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="EditorComponent" />
          <node concept="37vLTw" id="2GFnA8g6Olv" role="37wK5m">
            <ref role="3cqZAo" node="Vg5FswJdtT" resolve="repository" />
          </node>
        </node>
        <node concept="3clFbF" id="5De31zVJQXm" role="3cqZAp">
          <node concept="2YIFZM" id="5De31zVJSlL" role="3clFbG">
            <ref role="37wK5l" to="wvnl:~EditorExtensionUtil.extendUsingProject(jetbrains.mps.openapi.editor.EditorComponent,jetbrains.mps.project.IProject)" resolve="extendUsingProject" />
            <ref role="1Pybhc" to="wvnl:~EditorExtensionUtil" resolve="EditorExtensionUtil" />
            <node concept="Xjq3P" id="5De31zVJUr7" role="37wK5m" />
            <node concept="2YIFZM" id="5De31zVOuur" role="37wK5m">
              <ref role="37wK5l" to="alof:~ProjectHelper.getProject(org.jetbrains.mps.openapi.module.SRepository)" resolve="getProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="37vLTw" id="5De31zVOvP4" role="37wK5m">
                <ref role="3cqZAo" node="Vg5FswJdtT" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="2GFnA8g6DD0" role="1zkMxy">
      <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
    </node>
    <node concept="2tJIrI" id="fazSmxsuuv" role="jymVt" />
    <node concept="3clFb_" id="5nC4fNijbcQ" role="jymVt">
      <property role="TrG5h" value="isOptimizedDrawingEnabled" />
      <node concept="3Tm1VV" id="5nC4fNijbcR" role="1B3o_S" />
      <node concept="10P_77" id="5nC4fNijbcW" role="3clF45" />
      <node concept="3clFbS" id="5nC4fNijbd3" role="3clF47">
        <node concept="3clFbF" id="5nC4fNijbd6" role="3cqZAp">
          <node concept="3clFbT" id="5nC4fNijf$q" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5nC4fNijbd4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="19RvTPMI1yF" role="jymVt" />
    <node concept="3clFb_" id="5nC4fNikMKK" role="jymVt">
      <property role="TrG5h" value="paintComponent" />
      <node concept="2AHcQZ" id="5nC4fNikMKL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="5nC4fNikMKM" role="3clF46">
        <property role="TrG5h" value="gg" />
        <node concept="3uibUv" id="5nC4fNikMKN" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="5nC4fNikMKO" role="3clF47">
        <node concept="3cpWs8" id="5nC4fNikMKQ" role="3cqZAp">
          <node concept="3cpWsn" id="5nC4fNikMKP" role="3cpWs9">
            <property role="TrG5h" value="g" />
            <node concept="3uibUv" id="5nC4fNikMKR" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
            </node>
            <node concept="10QFUN" id="5nC4fNikMKS" role="33vP2m">
              <node concept="37vLTw" id="5nC4fNikMKT" role="10QFUP">
                <ref role="3cqZAo" node="5nC4fNikMKM" resolve="gg" />
              </node>
              <node concept="3uibUv" id="5nC4fNikMKU" role="10QFUM">
                <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5nC4fNikMKV" role="3cqZAp">
          <node concept="2YIFZM" id="5nC4fNikMN4" role="3clFbG">
            <ref role="1Pybhc" to="exr9:~EditorComponent" resolve="EditorComponent" />
            <ref role="37wK5l" to="exr9:~EditorComponent.turnOnAliasingIfPossible(java.awt.Graphics2D)" resolve="turnOnAliasingIfPossible" />
            <node concept="37vLTw" id="5nC4fNikMN5" role="37wK5m">
              <ref role="3cqZAo" node="5nC4fNikMKP" resolve="g" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5nC4fNikMLd" role="3cqZAp">
          <node concept="3cpWsn" id="5nC4fNikMLc" role="3cpWs9">
            <property role="TrG5h" value="additionalPainters" />
            <node concept="3uibUv" id="5nC4fNikMLe" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="5nC4fNikMLf" role="11_B2D">
                <ref role="3uigEE" to="exr9:~AdditionalPainter" resolve="AdditionalPainter" />
              </node>
            </node>
            <node concept="1rXfSq" id="5nC4fNikMLg" role="33vP2m">
              <ref role="37wK5l" to="exr9:~EditorComponent.getAdditionalPainters()" resolve="getAdditionalPainters" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5nC4fNikMLh" role="3cqZAp">
          <node concept="37vLTw" id="5nC4fNikMLv" role="1DdaDG">
            <ref role="3cqZAo" node="5nC4fNikMLc" resolve="additionalPainters" />
          </node>
          <node concept="3cpWsn" id="5nC4fNikMLs" role="1Duv9x">
            <property role="TrG5h" value="additionalPainter" />
            <node concept="3uibUv" id="5nC4fNikMLu" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~AdditionalPainter" resolve="AdditionalPainter" />
            </node>
          </node>
          <node concept="3clFbS" id="5nC4fNikMLj" role="2LFqv$">
            <node concept="3clFbJ" id="5nC4fNikMLk" role="3cqZAp">
              <node concept="2OqwBi" id="5nC4fNikP3P" role="3clFbw">
                <node concept="37vLTw" id="5nC4fNikNqy" role="2Oq$k0">
                  <ref role="3cqZAo" node="5nC4fNikMLs" resolve="additionalPainter" />
                </node>
                <node concept="liA8E" id="5nC4fNikP3Q" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~AdditionalPainter.paintsBackground()" resolve="paintsBackground" />
                </node>
              </node>
              <node concept="3clFbS" id="5nC4fNikMLn" role="3clFbx">
                <node concept="3clFbF" id="5nC4fNikMLo" role="3cqZAp">
                  <node concept="2OqwBi" id="5nC4fNikPh0" role="3clFbG">
                    <node concept="37vLTw" id="5nC4fNikNmJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="5nC4fNikMLs" resolve="additionalPainter" />
                    </node>
                    <node concept="liA8E" id="5nC4fNikPh1" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~AdditionalPainter.paintBackground(java.awt.Graphics,jetbrains.mps.nodeEditor.EditorComponent)" resolve="paintBackground" />
                      <node concept="37vLTw" id="5nC4fNikPh2" role="37wK5m">
                        <ref role="3cqZAo" node="5nC4fNikMKP" resolve="g" />
                      </node>
                      <node concept="Xjq3P" id="5nC4fNikPh3" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5nC4fNikMLw" role="3cqZAp">
          <node concept="1rXfSq" id="5nC4fNikMLx" role="3clFbw">
            <ref role="37wK5l" to="exr9:~EditorComponent.isDisposed()" resolve="isDisposed" />
          </node>
          <node concept="3clFbS" id="5nC4fNikMLz" role="3clFbx">
            <node concept="3cpWs6" id="5nC4fNikML$" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="5nC4fNikML_" role="3cqZAp">
          <node concept="2OqwBi" id="5nC4fNikOUg" role="3clFbG">
            <node concept="37vLTw" id="5nC4fNikNkt" role="2Oq$k0">
              <ref role="3cqZAo" to="exr9:~EditorComponent.myRootCell" resolve="myRootCell" />
            </node>
            <node concept="liA8E" id="5nC4fNikOUh" role="2OqNvi">
              <ref role="37wK5l" to="f4zo:~EditorCell.relayout()" resolve="relayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5nC4fNikMLY" role="3cqZAp">
          <node concept="2OqwBi" id="5nC4fNikRI_" role="3clFbG">
            <node concept="37vLTw" id="5nC4fNikNlF" role="2Oq$k0">
              <ref role="3cqZAo" to="exr9:~EditorComponent.myRootCell" resolve="myRootCell" />
            </node>
            <node concept="liA8E" id="5nC4fNikRIA" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell.paint(java.awt.Graphics)" resolve="paint" />
              <node concept="37vLTw" id="5nC4fNikRIB" role="37wK5m">
                <ref role="3cqZAo" node="5nC4fNikMKP" resolve="g" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5nC4fNikMM1" role="3cqZAp">
          <node concept="37vLTw" id="5nC4fNikMMf" role="1DdaDG">
            <ref role="3cqZAo" node="5nC4fNikMLc" resolve="additionalPainters" />
          </node>
          <node concept="3cpWsn" id="5nC4fNikMMc" role="1Duv9x">
            <property role="TrG5h" value="additionalPainter" />
            <node concept="3uibUv" id="5nC4fNikMMe" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~AdditionalPainter" resolve="AdditionalPainter" />
            </node>
          </node>
          <node concept="3clFbS" id="5nC4fNikMM3" role="2LFqv$">
            <node concept="3clFbJ" id="5nC4fNikMM4" role="3cqZAp">
              <node concept="2OqwBi" id="5nC4fNikP0f" role="3clFbw">
                <node concept="37vLTw" id="5nC4fNikNk3" role="2Oq$k0">
                  <ref role="3cqZAo" node="5nC4fNikMMc" resolve="additionalPainter" />
                </node>
                <node concept="liA8E" id="5nC4fNikP0g" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~AdditionalPainter.paintsAbove()" resolve="paintsAbove" />
                </node>
              </node>
              <node concept="3clFbS" id="5nC4fNikMM7" role="3clFbx">
                <node concept="3clFbF" id="5nC4fNikMM8" role="3cqZAp">
                  <node concept="2OqwBi" id="5nC4fNikQ9c" role="3clFbG">
                    <node concept="37vLTw" id="5nC4fNikNnW" role="2Oq$k0">
                      <ref role="3cqZAo" node="5nC4fNikMMc" resolve="additionalPainter" />
                    </node>
                    <node concept="liA8E" id="5nC4fNikQ9d" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~AdditionalPainter.paint(java.awt.Graphics,jetbrains.mps.nodeEditor.EditorComponent)" resolve="paint" />
                      <node concept="37vLTw" id="5nC4fNikQ9e" role="37wK5m">
                        <ref role="3cqZAo" node="5nC4fNikMKP" resolve="g" />
                      </node>
                      <node concept="Xjq3P" id="5nC4fNikQ9f" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5nC4fNikMMg" role="1B3o_S" />
      <node concept="3cqZAl" id="5nC4fNikMMh" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5uiQOXm5XB8" role="jymVt" />
    <node concept="3clFb_" id="5uiQOXm8oED" role="jymVt">
      <property role="TrG5h" value="doSetLocation" />
      <node concept="3Tm1VV" id="5uiQOXm8oEE" role="1B3o_S" />
      <node concept="3cqZAl" id="5uiQOXm8oEF" role="3clF45" />
      <node concept="37vLTG" id="5uiQOXm8oEG" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="5uiQOXm8oEH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5uiQOXm8oEI" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="5uiQOXm8oEJ" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5uiQOXm8oEK" role="3clF47">
        <node concept="3clFbF" id="5uiQOXm8sFG" role="3cqZAp">
          <node concept="3nyPlj" id="5uiQOXm8sFF" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Component.setLocation(int,int)" resolve="setLocation" />
            <node concept="37vLTw" id="5uiQOXm8wFi" role="37wK5m">
              <ref role="3cqZAo" node="5uiQOXm8oEG" resolve="x" />
            </node>
            <node concept="37vLTw" id="5uiQOXm8$mQ" role="37wK5m">
              <ref role="3cqZAo" node="5uiQOXm8oEI" resolve="y" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uiQOXm8nuh" role="jymVt" />
    <node concept="3clFb_" id="5uiQOXm60dt" role="jymVt">
      <property role="TrG5h" value="setLocation" />
      <node concept="3Tm1VV" id="5uiQOXm60du" role="1B3o_S" />
      <node concept="3cqZAl" id="5uiQOXm60dw" role="3clF45" />
      <node concept="37vLTG" id="5uiQOXm60dx" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="5uiQOXm60dy" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5uiQOXm60dz" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="5uiQOXm60d$" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5uiQOXm60dJ" role="3clF47" />
      <node concept="2AHcQZ" id="5uiQOXm60dK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uiQOXm8DUP" role="jymVt" />
    <node concept="3clFb_" id="5uiQOXm8Gv1" role="jymVt">
      <property role="TrG5h" value="doSetSize" />
      <node concept="3Tm1VV" id="5uiQOXm8Gv2" role="1B3o_S" />
      <node concept="3cqZAl" id="5uiQOXm8Gv3" role="3clF45" />
      <node concept="37vLTG" id="5uiQOXm8Gv4" role="3clF46">
        <property role="TrG5h" value="w" />
        <node concept="10Oyi0" id="5uiQOXm8Gv5" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5uiQOXm8Gv6" role="3clF46">
        <property role="TrG5h" value="h" />
        <node concept="10Oyi0" id="5uiQOXm8Gv7" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5uiQOXm8Gv8" role="3clF47">
        <node concept="3clFbF" id="5uiQOXm8Gv9" role="3cqZAp">
          <node concept="3nyPlj" id="5uiQOXm8Gva" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Component.setSize(int,int)" resolve="setSize" />
            <node concept="37vLTw" id="5uiQOXm8Gvb" role="37wK5m">
              <ref role="3cqZAo" node="5uiQOXm8Gv4" resolve="w" />
            </node>
            <node concept="37vLTw" id="5uiQOXm8Gvc" role="37wK5m">
              <ref role="3cqZAo" node="5uiQOXm8Gv6" resolve="h" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uiQOXm8Gvd" role="jymVt" />
    <node concept="3clFb_" id="5uiQOXm8Gve" role="jymVt">
      <property role="TrG5h" value="setSize" />
      <node concept="3Tm1VV" id="5uiQOXm8Gvf" role="1B3o_S" />
      <node concept="3cqZAl" id="5uiQOXm8Gvg" role="3clF45" />
      <node concept="37vLTG" id="5uiQOXm8Gvh" role="3clF46">
        <property role="TrG5h" value="w" />
        <node concept="10Oyi0" id="5uiQOXm8Gvi" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5uiQOXm8Gvj" role="3clF46">
        <property role="TrG5h" value="h" />
        <node concept="10Oyi0" id="5uiQOXm8Gvk" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5uiQOXm8Gvl" role="3clF47" />
      <node concept="2AHcQZ" id="5uiQOXm8Gvm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5De31zVT6nH" role="jymVt" />
    <node concept="3clFb_" id="5De31zVtdWA" role="jymVt">
      <property role="TrG5h" value="setRootCell" />
      <node concept="3Tm1VV" id="5De31zVtdWB" role="1B3o_S" />
      <node concept="3cqZAl" id="5De31zVtdWD" role="3clF45" />
      <node concept="37vLTG" id="5De31zVtdWE" role="3clF46">
        <property role="TrG5h" value="rootCell" />
        <node concept="3uibUv" id="5De31zVtdWF" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="3clFbS" id="5De31zVtdWH" role="3clF47">
        <node concept="3cpWs8" id="5De31zVSJgW" role="3cqZAp">
          <node concept="3cpWsn" id="5De31zVSJgZ" role="3cpWs9">
            <property role="TrG5h" value="hasFocus" />
            <node concept="10P_77" id="5De31zVSJgU" role="1tU5fm" />
            <node concept="2OqwBi" id="5De31zVSSmS" role="33vP2m">
              <node concept="1rXfSq" id="5De31zVSQMf" role="2Oq$k0">
                <ref role="37wK5l" to="exr9:~EditorComponent.getFocusTracker()" resolve="getFocusTracker" />
              </node>
              <node concept="liA8E" id="5De31zVSTW3" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponentFocusTracker.getEffectiveFocusState()" resolve="getEffectiveFocusState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5De31zVSAXr" role="3cqZAp">
          <node concept="3nyPlj" id="5De31zVSAXq" role="3clFbG">
            <ref role="37wK5l" to="exr9:~EditorComponent.setRootCell(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="setRootCell" />
            <node concept="37vLTw" id="5De31zVSFRh" role="37wK5m">
              <ref role="3cqZAo" node="5De31zVtdWE" resolve="rootCell" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5De31zVSXdf" role="3cqZAp">
          <node concept="3clFbS" id="5De31zVSXdh" role="3clFbx">
            <node concept="3clFbF" id="5De31zVT4Qr" role="3cqZAp">
              <node concept="1rXfSq" id="5De31zVT4Qp" role="3clFbG">
                <ref role="37wK5l" to="dxuu:~JComponent.requestFocus()" resolve="requestFocus" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5De31zVT2VX" role="3clFbw">
            <ref role="3cqZAo" node="5De31zVSJgZ" resolve="hasFocus" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5De31zVtdWI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5De31zVP03p" role="jymVt" />
  </node>
  <node concept="312cEu" id="7wc8RN4MMv1">
    <property role="TrG5h" value="D2D" />
    <node concept="2tJIrI" id="7wc8RN4MMx6" role="jymVt" />
    <node concept="2YIFZL" id="7wc8RN4MM$Y" role="jymVt">
      <property role="TrG5h" value="drawRect" />
      <node concept="37vLTG" id="7wc8RN4MM$Z" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="7wc8RN4MM_0" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="7wc8RN4MM_1" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7wc8RN4MM_2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7wc8RN4MM_3" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="7wc8RN4MM_4" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7wc8RN4MM_5" role="3clF46">
        <property role="TrG5h" value="w" />
        <node concept="10Oyi0" id="7wc8RN4MM_6" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7wc8RN4MM_7" role="3clF46">
        <property role="TrG5h" value="h" />
        <node concept="10Oyi0" id="7wc8RN4MM_8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7wc8RN4MM_9" role="3clF46">
        <property role="TrG5h" value="cFill" />
        <node concept="3uibUv" id="7wc8RN4MM_a" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="37vLTG" id="7wc8RN4MM_b" role="3clF46">
        <property role="TrG5h" value="cLine" />
        <node concept="3uibUv" id="7wc8RN4MM_c" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="37vLTG" id="7wc8RN4MM_d" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="7wc8RN4MM_e" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="7wc8RN4MM_f" role="3clF47">
        <node concept="3clFbF" id="7wc8RN4MM_g" role="3cqZAp">
          <node concept="2OqwBi" id="7wc8RN4MOTJ" role="3clFbG">
            <node concept="37vLTw" id="7wc8RN4MOPo" role="2Oq$k0">
              <ref role="3cqZAo" node="7wc8RN4MM$Z" resolve="g" />
            </node>
            <node concept="liA8E" id="7wc8RN4MOTK" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="37vLTw" id="7wc8RN4MOTL" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MM_9" resolve="cFill" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7wc8RN4MM_j" role="3cqZAp">
          <node concept="2OqwBi" id="7wc8RN4MPkp" role="3clFbG">
            <node concept="37vLTw" id="7wc8RN4MOQD" role="2Oq$k0">
              <ref role="3cqZAo" node="7wc8RN4MM$Z" resolve="g" />
            </node>
            <node concept="liA8E" id="7wc8RN4MPkq" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.fillRect(int,int,int,int)" resolve="fillRect" />
              <node concept="37vLTw" id="7wc8RN4MPkr" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MM_1" resolve="x" />
              </node>
              <node concept="37vLTw" id="7wc8RN4MPks" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MM_3" resolve="y" />
              </node>
              <node concept="37vLTw" id="7wc8RN4MPkt" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MM_5" resolve="w" />
              </node>
              <node concept="37vLTw" id="7wc8RN4MPku" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MM_7" resolve="h" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7wc8RN4MM_p" role="3cqZAp">
          <node concept="2OqwBi" id="7wc8RN4MOT6" role="3clFbG">
            <node concept="37vLTw" id="7wc8RN4MOPX" role="2Oq$k0">
              <ref role="3cqZAo" node="7wc8RN4MM$Z" resolve="g" />
            </node>
            <node concept="liA8E" id="7wc8RN4MOT7" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="37vLTw" id="7wc8RN4MOT8" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MM_b" resolve="cLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7wc8RN4MM_s" role="3cqZAp">
          <node concept="2OqwBi" id="7wc8RN4MPeb" role="3clFbG">
            <node concept="37vLTw" id="7wc8RN4MOPw" role="2Oq$k0">
              <ref role="3cqZAo" node="7wc8RN4MM$Z" resolve="g" />
            </node>
            <node concept="liA8E" id="7wc8RN4MPec" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.drawRect(int,int,int,int)" resolve="drawRect" />
              <node concept="37vLTw" id="7wc8RN4MPed" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MM_1" resolve="x" />
              </node>
              <node concept="37vLTw" id="7wc8RN4MPee" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MM_3" resolve="y" />
              </node>
              <node concept="37vLTw" id="7wc8RN4MPef" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MM_5" resolve="w" />
              </node>
              <node concept="37vLTw" id="7wc8RN4MPeg" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MM_7" resolve="h" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7wc8RN4MM_y" role="3cqZAp">
          <node concept="3y3z36" id="7wc8RN4MM_z" role="3clFbw">
            <node concept="37vLTw" id="7wc8RN4MM_$" role="3uHU7B">
              <ref role="3cqZAo" node="7wc8RN4MM_d" resolve="text" />
            </node>
            <node concept="10Nm6u" id="7wc8RN4MM__" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7wc8RN4MM_B" role="3clFbx">
            <node concept="3clFbF" id="7wc8RN4MM_C" role="3cqZAp">
              <node concept="2OqwBi" id="7wc8RN4MPhe" role="3clFbG">
                <node concept="37vLTw" id="7wc8RN4MOPI" role="2Oq$k0">
                  <ref role="3cqZAo" node="7wc8RN4MM$Z" resolve="g" />
                </node>
                <node concept="liA8E" id="7wc8RN4MPhf" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                  <node concept="10M0yZ" id="7wc8RN4MPhg" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7wc8RN4MM_G" role="3cqZAp">
              <node concept="3cpWsn" id="7wc8RN4MM_F" role="3cpWs9">
                <property role="TrG5h" value="tw" />
                <node concept="10Oyi0" id="7wc8RN4MM_H" role="1tU5fm" />
                <node concept="2OqwBi" id="7wc8RN4MQ5G" role="33vP2m">
                  <node concept="2OqwBi" id="7wc8RN4MOUG" role="2Oq$k0">
                    <node concept="37vLTw" id="7wc8RN4MOPc" role="2Oq$k0">
                      <ref role="3cqZAo" node="7wc8RN4MM$Z" resolve="g" />
                    </node>
                    <node concept="liA8E" id="7wc8RN4MOUH" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Graphics.getFontMetrics()" resolve="getFontMetrics" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7wc8RN4MQ5H" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~FontMetrics.stringWidth(java.lang.String)" resolve="stringWidth" />
                    <node concept="37vLTw" id="7wc8RN4MQ5I" role="37wK5m">
                      <ref role="3cqZAo" node="7wc8RN4MM_d" resolve="text" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7wc8RN4MM_L" role="3cqZAp">
              <node concept="2OqwBi" id="7wc8RN4MPbl" role="3clFbG">
                <node concept="37vLTw" id="7wc8RN4MOQ5" role="2Oq$k0">
                  <ref role="3cqZAo" node="7wc8RN4MM$Z" resolve="g" />
                </node>
                <node concept="liA8E" id="7wc8RN4MPbm" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.drawString(java.lang.String,int,int)" resolve="drawString" />
                  <node concept="37vLTw" id="7wc8RN4MPbn" role="37wK5m">
                    <ref role="3cqZAo" node="7wc8RN4MM_d" resolve="text" />
                  </node>
                  <node concept="3cpWsd" id="7wc8RN4MPbo" role="37wK5m">
                    <node concept="3cpWs3" id="7wc8RN4MPbp" role="3uHU7B">
                      <node concept="37vLTw" id="7wc8RN4MPbq" role="3uHU7B">
                        <ref role="3cqZAo" node="7wc8RN4MM_1" resolve="x" />
                      </node>
                      <node concept="FJ1c_" id="7wc8RN4MPbr" role="3uHU7w">
                        <node concept="37vLTw" id="7wc8RN4MPbs" role="3uHU7B">
                          <ref role="3cqZAo" node="7wc8RN4MM_5" resolve="w" />
                        </node>
                        <node concept="3cmrfG" id="7wc8RN4MPbt" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                      </node>
                    </node>
                    <node concept="FJ1c_" id="7wc8RN4MPbu" role="3uHU7w">
                      <node concept="37vLTw" id="7wc8RN4MPbv" role="3uHU7B">
                        <ref role="3cqZAo" node="7wc8RN4MM_F" resolve="tw" />
                      </node>
                      <node concept="3cmrfG" id="7wc8RN4MPbw" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs3" id="7wc8RN4MPbx" role="37wK5m">
                    <node concept="37vLTw" id="7wc8RN4MPby" role="3uHU7B">
                      <ref role="3cqZAo" node="7wc8RN4MM_3" resolve="y" />
                    </node>
                    <node concept="FJ1c_" id="7wc8RN4MPbz" role="3uHU7w">
                      <node concept="37vLTw" id="7wc8RN4MPb$" role="3uHU7B">
                        <ref role="3cqZAo" node="7wc8RN4MM_7" resolve="h" />
                      </node>
                      <node concept="3cmrfG" id="7wc8RN4MPb_" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7wc8RN4MMA2" role="1B3o_S" />
      <node concept="3cqZAl" id="7wc8RN4MMA3" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7wc8RN4MQqv" role="jymVt" />
    <node concept="2YIFZL" id="7wc8RN4MQyw" role="jymVt">
      <property role="TrG5h" value="drawOval" />
      <node concept="37vLTG" id="7wc8RN4MQyx" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="7wc8RN4MQyy" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="7wc8RN4MQyz" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7wc8RN4MQy$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7wc8RN4MQy_" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="7wc8RN4MQyA" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7wc8RN4MQyB" role="3clF46">
        <property role="TrG5h" value="w" />
        <node concept="10Oyi0" id="7wc8RN4MQyC" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7wc8RN4MQyD" role="3clF46">
        <property role="TrG5h" value="h" />
        <node concept="10Oyi0" id="7wc8RN4MQyE" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7wc8RN4MQyF" role="3clF46">
        <property role="TrG5h" value="cFill" />
        <node concept="3uibUv" id="7wc8RN4MQyG" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="37vLTG" id="7wc8RN4MQyH" role="3clF46">
        <property role="TrG5h" value="cLine" />
        <node concept="3uibUv" id="7wc8RN4MQyI" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="37vLTG" id="7wc8RN4MQyJ" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="7wc8RN4MQyK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="7wc8RN4MQyL" role="3clF47">
        <node concept="3clFbF" id="7wc8RN4MQyM" role="3cqZAp">
          <node concept="2OqwBi" id="7wc8RN4MSzY" role="3clFbG">
            <node concept="37vLTw" id="7wc8RN4MRsy" role="2Oq$k0">
              <ref role="3cqZAo" node="7wc8RN4MQyx" resolve="g" />
            </node>
            <node concept="liA8E" id="7wc8RN4MSzZ" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="37vLTw" id="7wc8RN4MS$0" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQyF" resolve="cFill" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7wc8RN4MQyP" role="3cqZAp">
          <node concept="2OqwBi" id="7wc8RN4MSu3" role="3clFbG">
            <node concept="37vLTw" id="7wc8RN4MRqC" role="2Oq$k0">
              <ref role="3cqZAo" node="7wc8RN4MQyx" resolve="g" />
            </node>
            <node concept="liA8E" id="7wc8RN4MSu4" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.fillOval(int,int,int,int)" resolve="fillOval" />
              <node concept="37vLTw" id="7wc8RN4MSu5" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQyz" resolve="x" />
              </node>
              <node concept="37vLTw" id="7wc8RN4MSu6" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQy_" resolve="y" />
              </node>
              <node concept="37vLTw" id="7wc8RN4MSu7" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQyB" resolve="w" />
              </node>
              <node concept="37vLTw" id="7wc8RN4MSu8" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQyD" resolve="h" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7wc8RN4MQyV" role="3cqZAp">
          <node concept="2OqwBi" id="7wc8RN4MS5S" role="3clFbG">
            <node concept="37vLTw" id="7wc8RN4MRkP" role="2Oq$k0">
              <ref role="3cqZAo" node="7wc8RN4MQyx" resolve="g" />
            </node>
            <node concept="liA8E" id="7wc8RN4MS5T" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="37vLTw" id="7wc8RN4MS5U" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQyH" resolve="cLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7wc8RN4MQyY" role="3cqZAp">
          <node concept="2OqwBi" id="7wc8RN4MSxO" role="3clFbG">
            <node concept="37vLTw" id="7wc8RN4MRsN" role="2Oq$k0">
              <ref role="3cqZAo" node="7wc8RN4MQyx" resolve="g" />
            </node>
            <node concept="liA8E" id="7wc8RN4MSxP" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.drawOval(int,int,int,int)" resolve="drawOval" />
              <node concept="37vLTw" id="7wc8RN4MSxQ" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQyz" resolve="x" />
              </node>
              <node concept="37vLTw" id="7wc8RN4MSxR" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQy_" resolve="y" />
              </node>
              <node concept="37vLTw" id="7wc8RN4MSxS" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQyB" resolve="w" />
              </node>
              <node concept="37vLTw" id="7wc8RN4MSxT" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQyD" resolve="h" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7wc8RN4MQz4" role="3cqZAp">
          <node concept="3y3z36" id="7wc8RN4MQz5" role="3clFbw">
            <node concept="37vLTw" id="7wc8RN4MQz6" role="3uHU7B">
              <ref role="3cqZAo" node="7wc8RN4MQyJ" resolve="text" />
            </node>
            <node concept="10Nm6u" id="7wc8RN4MQz7" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7wc8RN4MQz9" role="3clFbx">
            <node concept="3clFbF" id="7wc8RN4MQza" role="3cqZAp">
              <node concept="2OqwBi" id="7wc8RN4MRG1" role="3clFbG">
                <node concept="37vLTw" id="7wc8RN4MRt9" role="2Oq$k0">
                  <ref role="3cqZAo" node="7wc8RN4MQyx" resolve="g" />
                </node>
                <node concept="liA8E" id="7wc8RN4MRG2" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                  <node concept="10M0yZ" id="7wc8RN4MRG3" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                    <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7wc8RN4MQze" role="3cqZAp">
              <node concept="3cpWsn" id="7wc8RN4MQzd" role="3cpWs9">
                <property role="TrG5h" value="tw" />
                <node concept="10Oyi0" id="7wc8RN4MQzf" role="1tU5fm" />
                <node concept="2OqwBi" id="7wc8RN4MTEP" role="33vP2m">
                  <node concept="2OqwBi" id="7wc8RN4MS8w" role="2Oq$k0">
                    <node concept="37vLTw" id="7wc8RN4MRqs" role="2Oq$k0">
                      <ref role="3cqZAo" node="7wc8RN4MQyx" resolve="g" />
                    </node>
                    <node concept="liA8E" id="7wc8RN4MS8x" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Graphics.getFontMetrics()" resolve="getFontMetrics" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7wc8RN4MTEQ" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~FontMetrics.stringWidth(java.lang.String)" resolve="stringWidth" />
                    <node concept="37vLTw" id="7wc8RN4MTER" role="37wK5m">
                      <ref role="3cqZAo" node="7wc8RN4MQyJ" resolve="text" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7wc8RN4MQzj" role="3cqZAp">
              <node concept="2OqwBi" id="7wc8RN4MTiA" role="3clFbG">
                <node concept="37vLTw" id="7wc8RN4MRkX" role="2Oq$k0">
                  <ref role="3cqZAo" node="7wc8RN4MQyx" resolve="g" />
                </node>
                <node concept="liA8E" id="7wc8RN4MTiB" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.drawString(java.lang.String,int,int)" resolve="drawString" />
                  <node concept="37vLTw" id="7wc8RN4MTiC" role="37wK5m">
                    <ref role="3cqZAo" node="7wc8RN4MQyJ" resolve="text" />
                  </node>
                  <node concept="3cpWsd" id="7wc8RN4MTiD" role="37wK5m">
                    <node concept="3cpWs3" id="7wc8RN4MTiE" role="3uHU7B">
                      <node concept="37vLTw" id="7wc8RN4MTiF" role="3uHU7B">
                        <ref role="3cqZAo" node="7wc8RN4MQyz" resolve="x" />
                      </node>
                      <node concept="FJ1c_" id="7wc8RN4MTiG" role="3uHU7w">
                        <node concept="37vLTw" id="7wc8RN4MTiH" role="3uHU7B">
                          <ref role="3cqZAo" node="7wc8RN4MQyB" resolve="w" />
                        </node>
                        <node concept="3cmrfG" id="7wc8RN4MTiI" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                      </node>
                    </node>
                    <node concept="FJ1c_" id="7wc8RN4MTiJ" role="3uHU7w">
                      <node concept="37vLTw" id="7wc8RN4MTiK" role="3uHU7B">
                        <ref role="3cqZAo" node="7wc8RN4MQzd" resolve="tw" />
                      </node>
                      <node concept="3cmrfG" id="7wc8RN4MTiL" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs3" id="5x0Fo$VoETr" role="37wK5m">
                    <node concept="3cpWs3" id="5x0Fo$Vnjzs" role="3uHU7B">
                      <node concept="37vLTw" id="7wc8RN4MTiN" role="3uHU7B">
                        <ref role="3cqZAo" node="7wc8RN4MQy_" resolve="y" />
                      </node>
                      <node concept="FJ1c_" id="7wc8RN4MTiO" role="3uHU7w">
                        <node concept="37vLTw" id="7wc8RN4MTiP" role="3uHU7B">
                          <ref role="3cqZAo" node="7wc8RN4MQyD" resolve="h" />
                        </node>
                        <node concept="3cmrfG" id="7wc8RN4MTiQ" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5x0Fo$Vnm7E" role="3uHU7w">
                      <property role="3cmrfH" value="5" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7wc8RN4MQz$" role="1B3o_S" />
      <node concept="3cqZAl" id="7wc8RN4MQz_" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7wc8RN4MUl3" role="jymVt" />
    <node concept="2YIFZL" id="7wc8RN4MQzA" role="jymVt">
      <property role="TrG5h" value="drawLine" />
      <node concept="37vLTG" id="7wc8RN4MQzB" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="7wc8RN4MQzC" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="7wc8RN4MQzD" role="3clF46">
        <property role="TrG5h" value="cLine" />
        <node concept="3uibUv" id="7wc8RN4MQzE" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="37vLTG" id="5x0Fo$V6wfG" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="5x0Fo$V6wfH" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="7wc8RN4MQzF" role="3clF46">
        <property role="TrG5h" value="xy" />
        <node concept="8X2XB" id="7wc8RN4MQzH" role="1tU5fm">
          <node concept="10Oyi0" id="7wc8RN4MQzG" role="8Xvag" />
        </node>
      </node>
      <node concept="3clFbS" id="7wc8RN4MQzI" role="3clF47">
        <node concept="3clFbF" id="7wc8RN4MQzJ" role="3cqZAp">
          <node concept="2OqwBi" id="7wc8RN4MT9z" role="3clFbG">
            <node concept="37vLTw" id="7wc8RN4MRkc" role="2Oq$k0">
              <ref role="3cqZAo" node="7wc8RN4MQzB" resolve="g" />
            </node>
            <node concept="liA8E" id="7wc8RN4MT9$" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="37vLTw" id="7wc8RN4MT9_" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQzD" resolve="cLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7wc8RN4MQzN" role="3cqZAp">
          <node concept="3cpWsn" id="7wc8RN4MQzM" role="3cpWs9">
            <property role="TrG5h" value="xs" />
            <node concept="10Q1$e" id="7wc8RN4MQzP" role="1tU5fm">
              <node concept="10Oyi0" id="7wc8RN4MQzO" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="7wc8RN4MQzW" role="33vP2m">
              <node concept="3$_iS1" id="7wc8RN4MQzU" role="2ShVmc">
                <node concept="3$GHV9" id="7wc8RN4MQzV" role="3$GQph">
                  <node concept="FJ1c_" id="7wc8RN4MQzR" role="3$I4v7">
                    <node concept="2OqwBi" id="7wc8RN4MRrb" role="3uHU7B">
                      <node concept="37vLTw" id="7wc8RN4MRra" role="2Oq$k0">
                        <ref role="3cqZAo" node="7wc8RN4MQzF" resolve="xy" />
                      </node>
                      <node concept="1Rwk04" id="7wc8RN4MTE1" role="2OqNvi" />
                    </node>
                    <node concept="3cmrfG" id="7wc8RN4MQzT" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="10Oyi0" id="7wc8RN4MQzQ" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7wc8RN4MQzY" role="3cqZAp">
          <node concept="3cpWsn" id="7wc8RN4MQzX" role="3cpWs9">
            <property role="TrG5h" value="ys" />
            <node concept="10Q1$e" id="7wc8RN4MQ$0" role="1tU5fm">
              <node concept="10Oyi0" id="7wc8RN4MQzZ" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="7wc8RN4MQ$7" role="33vP2m">
              <node concept="3$_iS1" id="7wc8RN4MQ$5" role="2ShVmc">
                <node concept="3$GHV9" id="7wc8RN4MQ$6" role="3$GQph">
                  <node concept="FJ1c_" id="7wc8RN4MQ$2" role="3$I4v7">
                    <node concept="2OqwBi" id="7wc8RN4MRly" role="3uHU7B">
                      <node concept="37vLTw" id="7wc8RN4MRlx" role="2Oq$k0">
                        <ref role="3cqZAo" node="7wc8RN4MQzF" resolve="xy" />
                      </node>
                      <node concept="1Rwk04" id="7wc8RN4MTE2" role="2OqNvi" />
                    </node>
                    <node concept="3cmrfG" id="7wc8RN4MQ$4" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="10Oyi0" id="7wc8RN4MQ$1" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="7wc8RN4MQ$8" role="3cqZAp">
          <node concept="3cpWsn" id="7wc8RN4MQ$9" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="7wc8RN4MQ$b" role="1tU5fm" />
            <node concept="3cmrfG" id="7wc8RN4MQ$c" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="7wc8RN4MQ$d" role="1Dwp0S">
            <node concept="37vLTw" id="7wc8RN4MQ$e" role="3uHU7B">
              <ref role="3cqZAo" node="7wc8RN4MQ$9" resolve="i" />
            </node>
            <node concept="2OqwBi" id="7wc8RN4MRno" role="3uHU7w">
              <node concept="37vLTw" id="7wc8RN4MRnn" role="2Oq$k0">
                <ref role="3cqZAo" node="7wc8RN4MQzM" resolve="xs" />
              </node>
              <node concept="1Rwk04" id="7wc8RN4MTDl" role="2OqNvi" />
            </node>
          </node>
          <node concept="3uNrnE" id="7wc8RN4MQ$h" role="1Dwrff">
            <node concept="37vLTw" id="7wc8RN4MQ$i" role="2$L3a6">
              <ref role="3cqZAo" node="7wc8RN4MQ$9" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="7wc8RN4MQ$k" role="2LFqv$">
            <node concept="3clFbF" id="7wc8RN4MQ$l" role="3cqZAp">
              <node concept="37vLTI" id="7wc8RN4MQ$m" role="3clFbG">
                <node concept="AH0OO" id="7wc8RN4MQ$n" role="37vLTJ">
                  <node concept="37vLTw" id="7wc8RN4MQ$o" role="AHHXb">
                    <ref role="3cqZAo" node="7wc8RN4MQzM" resolve="xs" />
                  </node>
                  <node concept="37vLTw" id="7wc8RN4MQ$p" role="AHEQo">
                    <ref role="3cqZAo" node="7wc8RN4MQ$9" resolve="i" />
                  </node>
                </node>
                <node concept="AH0OO" id="7wc8RN4MQ$q" role="37vLTx">
                  <node concept="37vLTw" id="7wc8RN4MQ$r" role="AHHXb">
                    <ref role="3cqZAo" node="7wc8RN4MQzF" resolve="xy" />
                  </node>
                  <node concept="17qRlL" id="7wc8RN4MQ$s" role="AHEQo">
                    <node concept="37vLTw" id="7wc8RN4MQ$t" role="3uHU7B">
                      <ref role="3cqZAo" node="7wc8RN4MQ$9" resolve="i" />
                    </node>
                    <node concept="3cmrfG" id="7wc8RN4MQ$u" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7wc8RN4MQ$v" role="3cqZAp">
              <node concept="37vLTI" id="7wc8RN4MQ$w" role="3clFbG">
                <node concept="AH0OO" id="7wc8RN4MQ$x" role="37vLTJ">
                  <node concept="37vLTw" id="7wc8RN4MQ$y" role="AHHXb">
                    <ref role="3cqZAo" node="7wc8RN4MQzX" resolve="ys" />
                  </node>
                  <node concept="37vLTw" id="7wc8RN4MQ$z" role="AHEQo">
                    <ref role="3cqZAo" node="7wc8RN4MQ$9" resolve="i" />
                  </node>
                </node>
                <node concept="AH0OO" id="7wc8RN4MQ$$" role="37vLTx">
                  <node concept="37vLTw" id="7wc8RN4MQ$_" role="AHHXb">
                    <ref role="3cqZAo" node="7wc8RN4MQzF" resolve="xy" />
                  </node>
                  <node concept="3cpWs3" id="7wc8RN4MQ$A" role="AHEQo">
                    <node concept="17qRlL" id="7wc8RN4MQ$B" role="3uHU7B">
                      <node concept="37vLTw" id="7wc8RN4MQ$C" role="3uHU7B">
                        <ref role="3cqZAo" node="7wc8RN4MQ$9" resolve="i" />
                      </node>
                      <node concept="3cmrfG" id="7wc8RN4MQ$D" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="7wc8RN4MQ$E" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7wc8RN4MQ$F" role="3cqZAp">
          <node concept="2OqwBi" id="7wc8RN4MSAm" role="3clFbG">
            <node concept="37vLTw" id="7wc8RN4MRox" role="2Oq$k0">
              <ref role="3cqZAo" node="7wc8RN4MQzB" resolve="g" />
            </node>
            <node concept="liA8E" id="7wc8RN4MSAn" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.drawPolyline(int[],int[],int)" resolve="drawPolyline" />
              <node concept="37vLTw" id="7wc8RN4MSAo" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQzM" resolve="xs" />
              </node>
              <node concept="37vLTw" id="7wc8RN4MSAp" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQzX" resolve="ys" />
              </node>
              <node concept="2OqwBi" id="7wc8RN4MSAq" role="37wK5m">
                <node concept="37vLTw" id="7wc8RN4MSAr" role="2Oq$k0">
                  <ref role="3cqZAo" node="7wc8RN4MQzM" resolve="xs" />
                </node>
                <node concept="1Rwk04" id="7wc8RN4MTDJ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5x0Fo$V8An5" role="3cqZAp">
          <node concept="3y3z36" id="5x0Fo$V8An6" role="3clFbw">
            <node concept="37vLTw" id="5x0Fo$V8An7" role="3uHU7B">
              <ref role="3cqZAo" node="5x0Fo$V6wfG" resolve="text" />
            </node>
            <node concept="10Nm6u" id="5x0Fo$V8An8" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5x0Fo$V8An9" role="3clFbx">
            <node concept="3clFbF" id="5x0Fo$V8Ana" role="3cqZAp">
              <node concept="2OqwBi" id="5x0Fo$V8Anb" role="3clFbG">
                <node concept="37vLTw" id="5x0Fo$V8Anc" role="2Oq$k0">
                  <ref role="3cqZAo" node="7wc8RN4MQzB" resolve="g" />
                </node>
                <node concept="liA8E" id="5x0Fo$V8And" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                  <node concept="10M0yZ" id="5x0Fo$V8Ane" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                    <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5x0Fo$VdLjN" role="3cqZAp">
              <node concept="3cpWsn" id="5x0Fo$VdLjO" role="3cpWs9">
                <property role="TrG5h" value="ax" />
                <node concept="10Oyi0" id="5x0Fo$VdL6q" role="1tU5fm" />
                <node concept="AH0OO" id="5x0Fo$VdLjP" role="33vP2m">
                  <node concept="3cpWsd" id="5x0Fo$VfgzS" role="AHEQo">
                    <node concept="3cmrfG" id="5x0Fo$VfgE_" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="FJ1c_" id="5x0Fo$VdLjQ" role="3uHU7B">
                      <node concept="2OqwBi" id="5x0Fo$VdLjS" role="3uHU7B">
                        <node concept="37vLTw" id="5x0Fo$VdLjT" role="2Oq$k0">
                          <ref role="3cqZAo" node="7wc8RN4MQzM" resolve="xs" />
                        </node>
                        <node concept="1Rwk04" id="5x0Fo$VdLjU" role="2OqNvi" />
                      </node>
                      <node concept="3cmrfG" id="5x0Fo$VdLjR" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="5x0Fo$VdLjV" role="AHHXb">
                    <ref role="3cqZAo" node="7wc8RN4MQzM" resolve="xs" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5x0Fo$VdLMJ" role="3cqZAp">
              <node concept="3cpWsn" id="5x0Fo$VdLMK" role="3cpWs9">
                <property role="TrG5h" value="bx" />
                <node concept="10Oyi0" id="5x0Fo$VdLML" role="1tU5fm" />
                <node concept="3cpWsd" id="5x0Fo$VdRsM" role="33vP2m">
                  <node concept="37vLTw" id="5x0Fo$VdRP$" role="3uHU7w">
                    <ref role="3cqZAo" node="5x0Fo$VdLjO" resolve="ax" />
                  </node>
                  <node concept="AH0OO" id="5x0Fo$VdLMM" role="3uHU7B">
                    <node concept="FJ1c_" id="5x0Fo$VdLMN" role="AHEQo">
                      <node concept="2OqwBi" id="5x0Fo$VdLMP" role="3uHU7B">
                        <node concept="37vLTw" id="5x0Fo$VdLMQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="7wc8RN4MQzM" resolve="xs" />
                        </node>
                        <node concept="1Rwk04" id="5x0Fo$VdLMR" role="2OqNvi" />
                      </node>
                      <node concept="3cmrfG" id="5x0Fo$VdLMO" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5x0Fo$VdLMS" role="AHHXb">
                      <ref role="3cqZAo" node="7wc8RN4MQzM" resolve="xs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5x0Fo$VdMUz" role="3cqZAp">
              <node concept="3cpWsn" id="5x0Fo$VdMUA" role="3cpWs9">
                <property role="TrG5h" value="ay" />
                <node concept="10Oyi0" id="5x0Fo$VdMUB" role="1tU5fm" />
                <node concept="AH0OO" id="5x0Fo$VdMUC" role="33vP2m">
                  <node concept="3cpWsd" id="5x0Fo$VfhiG" role="AHEQo">
                    <node concept="3cmrfG" id="5x0Fo$Vfhpp" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="FJ1c_" id="5x0Fo$VdMUF" role="3uHU7B">
                      <node concept="2OqwBi" id="5x0Fo$VdMUG" role="3uHU7B">
                        <node concept="37vLTw" id="5x0Fo$VdMUH" role="2Oq$k0">
                          <ref role="3cqZAo" node="7wc8RN4MQzX" resolve="ys" />
                        </node>
                        <node concept="1Rwk04" id="5x0Fo$VdMUI" role="2OqNvi" />
                      </node>
                      <node concept="3cmrfG" id="5x0Fo$VdMUJ" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="5x0Fo$VdO0h" role="AHHXb">
                    <ref role="3cqZAo" node="7wc8RN4MQzX" resolve="ys" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5x0Fo$VdOJh" role="3cqZAp">
              <node concept="3cpWsn" id="5x0Fo$VdOJi" role="3cpWs9">
                <property role="TrG5h" value="by" />
                <node concept="10Oyi0" id="5x0Fo$VdOJj" role="1tU5fm" />
                <node concept="3cpWsd" id="5x0Fo$VdS2I" role="33vP2m">
                  <node concept="37vLTw" id="5x0Fo$VdSe3" role="3uHU7w">
                    <ref role="3cqZAo" node="5x0Fo$VdMUA" resolve="ay" />
                  </node>
                  <node concept="AH0OO" id="5x0Fo$VdOJk" role="3uHU7B">
                    <node concept="FJ1c_" id="5x0Fo$VdOJl" role="AHEQo">
                      <node concept="2OqwBi" id="5x0Fo$VdOJm" role="3uHU7B">
                        <node concept="37vLTw" id="5x0Fo$VdOJn" role="2Oq$k0">
                          <ref role="3cqZAo" node="7wc8RN4MQzX" resolve="ys" />
                        </node>
                        <node concept="1Rwk04" id="5x0Fo$VdOJo" role="2OqNvi" />
                      </node>
                      <node concept="3cmrfG" id="5x0Fo$VdOJp" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5x0Fo$VdOJq" role="AHHXb">
                      <ref role="3cqZAo" node="7wc8RN4MQzX" resolve="ys" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5x0Fo$V8Anf" role="3cqZAp">
              <node concept="2OqwBi" id="5x0Fo$V8Ang" role="3clFbG">
                <node concept="37vLTw" id="5x0Fo$V8Anh" role="2Oq$k0">
                  <ref role="3cqZAo" node="7wc8RN4MQzB" resolve="g" />
                </node>
                <node concept="liA8E" id="5x0Fo$V8Ani" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.drawString(java.lang.String,int,int)" resolve="drawString" />
                  <node concept="37vLTw" id="5x0Fo$V8Anj" role="37wK5m">
                    <ref role="3cqZAo" node="5x0Fo$V6wfG" resolve="text" />
                  </node>
                  <node concept="3cpWs3" id="5x0Fo$VgAIt" role="37wK5m">
                    <node concept="3cpWs3" id="5x0Fo$VdUc3" role="3uHU7B">
                      <node concept="37vLTw" id="5x0Fo$VdQ_I" role="3uHU7B">
                        <ref role="3cqZAo" node="5x0Fo$VdLjO" resolve="ax" />
                      </node>
                      <node concept="FJ1c_" id="5x0Fo$VdV0l" role="3uHU7w">
                        <node concept="37vLTw" id="5x0Fo$VdUmI" role="3uHU7B">
                          <ref role="3cqZAo" node="5x0Fo$VdLMK" resolve="bx" />
                        </node>
                        <node concept="3cmrfG" id="5x0Fo$VdVaD" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5x0Fo$VkCqc" role="3uHU7w">
                      <property role="3cmrfH" value="5" />
                    </node>
                  </node>
                  <node concept="3cpWsd" id="5x0Fo$VhX7j" role="37wK5m">
                    <node concept="3cpWs3" id="5x0Fo$VdT4a" role="3uHU7B">
                      <node concept="37vLTw" id="5x0Fo$VdSL1" role="3uHU7B">
                        <ref role="3cqZAo" node="5x0Fo$VdMUA" resolve="ay" />
                      </node>
                      <node concept="FJ1c_" id="5x0Fo$VdTIO" role="3uHU7w">
                        <node concept="37vLTw" id="5x0Fo$VdTem" role="3uHU7B">
                          <ref role="3cqZAo" node="5x0Fo$VdOJi" resolve="by" />
                        </node>
                        <node concept="3cmrfG" id="5x0Fo$VdTSR" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5x0Fo$VgB_M" role="3uHU7w">
                      <property role="3cmrfH" value="5" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7wc8RN4MQ$K" role="1B3o_S" />
      <node concept="3cqZAl" id="7wc8RN4MQ$L" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7wc8RN4MUw9" role="jymVt" />
    <node concept="2YIFZL" id="7wc8RN4MQ$M" role="jymVt">
      <property role="TrG5h" value="drawPoly" />
      <node concept="37vLTG" id="7wc8RN4MQ$N" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="7wc8RN4MQ$O" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="7wc8RN4MQ$P" role="3clF46">
        <property role="TrG5h" value="cFill" />
        <node concept="3uibUv" id="7wc8RN4MQ$Q" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="37vLTG" id="7wc8RN4MQ$R" role="3clF46">
        <property role="TrG5h" value="cLine" />
        <node concept="3uibUv" id="7wc8RN4MQ$S" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="37vLTG" id="7wc8RN4MQ$T" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="7wc8RN4MQ$U" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="7wc8RN4MQ$V" role="3clF46">
        <property role="TrG5h" value="xy" />
        <node concept="8X2XB" id="7wc8RN4MQ$X" role="1tU5fm">
          <node concept="10Oyi0" id="7wc8RN4MQ$W" role="8Xvag" />
        </node>
      </node>
      <node concept="3clFbS" id="7wc8RN4MQ$Y" role="3clF47">
        <node concept="3cpWs8" id="7wc8RN4MQ_0" role="3cqZAp">
          <node concept="3cpWsn" id="7wc8RN4MQ$Z" role="3cpWs9">
            <property role="TrG5h" value="poly" />
            <node concept="3uibUv" id="7wc8RN4MQ_1" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Polygon" resolve="Polygon" />
            </node>
            <node concept="2ShNRf" id="7wc8RN4MRsi" role="33vP2m">
              <node concept="1pGfFk" id="7wc8RN4MRsl" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Polygon.&lt;init&gt;()" resolve="Polygon" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7wc8RN4MQ_4" role="3cqZAp">
          <node concept="3cpWsn" id="7wc8RN4MQ_3" role="3cpWs9">
            <property role="TrG5h" value="x" />
            <node concept="3uibUv" id="7wc8RN4MQ_5" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
            <node concept="10Nm6u" id="7wc8RN4MQ_6" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="7wc8RN4MQ_7" role="3cqZAp">
          <node concept="37vLTw" id="7wc8RN4MQ_x" role="1DdaDG">
            <ref role="3cqZAo" node="7wc8RN4MQ$V" resolve="xy" />
          </node>
          <node concept="3cpWsn" id="7wc8RN4MQ_u" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="7wc8RN4MQ_w" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7wc8RN4MQ_9" role="2LFqv$">
            <node concept="3clFbJ" id="7wc8RN4MQ_a" role="3cqZAp">
              <node concept="3clFbC" id="7wc8RN4MQ_b" role="3clFbw">
                <node concept="37vLTw" id="7wc8RN4MQ_c" role="3uHU7B">
                  <ref role="3cqZAo" node="7wc8RN4MQ_3" resolve="x" />
                </node>
                <node concept="10Nm6u" id="7wc8RN4MQ_d" role="3uHU7w" />
              </node>
              <node concept="9aQIb" id="7wc8RN4MQ_k" role="9aQIa">
                <node concept="3clFbS" id="7wc8RN4MQ_l" role="9aQI4">
                  <node concept="3clFbF" id="7wc8RN4MQ_m" role="3cqZAp">
                    <node concept="2OqwBi" id="7wc8RN4MSMF" role="3clFbG">
                      <node concept="37vLTw" id="7wc8RN4MRti" role="2Oq$k0">
                        <ref role="3cqZAo" node="7wc8RN4MQ$Z" resolve="poly" />
                      </node>
                      <node concept="liA8E" id="7wc8RN4MSMG" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Polygon.addPoint(int,int)" resolve="addPoint" />
                        <node concept="37vLTw" id="7wc8RN4MSMH" role="37wK5m">
                          <ref role="3cqZAo" node="7wc8RN4MQ_3" resolve="x" />
                        </node>
                        <node concept="37vLTw" id="7wc8RN4MSMI" role="37wK5m">
                          <ref role="3cqZAo" node="7wc8RN4MQ_u" resolve="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7wc8RN4MQ_q" role="3cqZAp">
                    <node concept="37vLTI" id="7wc8RN4MQ_r" role="3clFbG">
                      <node concept="37vLTw" id="7wc8RN4MQ_s" role="37vLTJ">
                        <ref role="3cqZAo" node="7wc8RN4MQ_3" resolve="x" />
                      </node>
                      <node concept="10Nm6u" id="7wc8RN4MQ_t" role="37vLTx" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7wc8RN4MQ_f" role="3clFbx">
                <node concept="3clFbF" id="7wc8RN4MQ_g" role="3cqZAp">
                  <node concept="37vLTI" id="7wc8RN4MQ_h" role="3clFbG">
                    <node concept="37vLTw" id="7wc8RN4MQ_i" role="37vLTJ">
                      <ref role="3cqZAo" node="7wc8RN4MQ_3" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="7wc8RN4MQ_j" role="37vLTx">
                      <ref role="3cqZAo" node="7wc8RN4MQ_u" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7wc8RN4MQ_y" role="3cqZAp">
          <node concept="2OqwBi" id="7wc8RN4MT3J" role="3clFbG">
            <node concept="37vLTw" id="7wc8RN4MRts" role="2Oq$k0">
              <ref role="3cqZAo" node="7wc8RN4MQ$N" resolve="g" />
            </node>
            <node concept="liA8E" id="7wc8RN4MT3K" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="37vLTw" id="7wc8RN4MT3L" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQ$P" resolve="cFill" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7wc8RN4MQ__" role="3cqZAp">
          <node concept="2OqwBi" id="7wc8RN4MSp9" role="3clFbG">
            <node concept="37vLTw" id="7wc8RN4MRt1" role="2Oq$k0">
              <ref role="3cqZAo" node="7wc8RN4MQ$N" resolve="g" />
            </node>
            <node concept="liA8E" id="7wc8RN4MSpa" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.fillPolygon(java.awt.Polygon)" resolve="fillPolygon" />
              <node concept="37vLTw" id="7wc8RN4MSpb" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQ$Z" resolve="poly" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7wc8RN4MQ_C" role="3cqZAp">
          <node concept="2OqwBi" id="7wc8RN4MT0w" role="3clFbG">
            <node concept="37vLTw" id="7wc8RN4MRsq" role="2Oq$k0">
              <ref role="3cqZAo" node="7wc8RN4MQ$N" resolve="g" />
            </node>
            <node concept="liA8E" id="7wc8RN4MT0x" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="37vLTw" id="7wc8RN4MT0y" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQ$R" resolve="cLine" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7wc8RN4MQ_F" role="3cqZAp">
          <node concept="2OqwBi" id="7wc8RN4MSPZ" role="3clFbG">
            <node concept="37vLTw" id="7wc8RN4MRqk" role="2Oq$k0">
              <ref role="3cqZAo" node="7wc8RN4MQ$N" resolve="g" />
            </node>
            <node concept="liA8E" id="7wc8RN4MSQ0" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.drawPolygon(java.awt.Polygon)" resolve="drawPolygon" />
              <node concept="37vLTw" id="7wc8RN4MSQ1" role="37wK5m">
                <ref role="3cqZAo" node="7wc8RN4MQ$Z" resolve="poly" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7wc8RN4MQ_I" role="3cqZAp">
          <node concept="3y3z36" id="7wc8RN4MQ_J" role="3clFbw">
            <node concept="37vLTw" id="7wc8RN4MQ_K" role="3uHU7B">
              <ref role="3cqZAo" node="7wc8RN4MQ$T" resolve="text" />
            </node>
            <node concept="10Nm6u" id="7wc8RN4MQ_L" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7wc8RN4MQ_N" role="3clFbx">
            <node concept="3clFbF" id="7wc8RN4MQ_O" role="3cqZAp">
              <node concept="2OqwBi" id="7wc8RN4MS3j" role="3clFbG">
                <node concept="37vLTw" id="7wc8RN4MRsE" role="2Oq$k0">
                  <ref role="3cqZAo" node="7wc8RN4MQ$N" resolve="g" />
                </node>
                <node concept="liA8E" id="7wc8RN4MS3k" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                  <node concept="10M0yZ" id="7wc8RN4MS3l" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                    <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7wc8RN4MQ_R" role="3cqZAp">
              <node concept="2OqwBi" id="7wc8RN4MS3U" role="3clFbG">
                <node concept="37vLTw" id="7wc8RN4MRqQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7wc8RN4MQ$N" resolve="g" />
                </node>
                <node concept="liA8E" id="7wc8RN4MS3V" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.drawString(java.lang.String,int,int)" resolve="drawString" />
                  <node concept="37vLTw" id="7wc8RN4MS3W" role="37wK5m">
                    <ref role="3cqZAo" node="7wc8RN4MQ$T" resolve="text" />
                  </node>
                  <node concept="AH0OO" id="7wc8RN4MS3X" role="37wK5m">
                    <node concept="37vLTw" id="7wc8RN4MS3Y" role="AHHXb">
                      <ref role="3cqZAo" node="7wc8RN4MQ$V" resolve="xy" />
                    </node>
                    <node concept="3cmrfG" id="7wc8RN4MS3Z" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="7wc8RN4MS40" role="37wK5m">
                    <node concept="37vLTw" id="7wc8RN4MS41" role="AHHXb">
                      <ref role="3cqZAo" node="7wc8RN4MQ$V" resolve="xy" />
                    </node>
                    <node concept="3cmrfG" id="7wc8RN4MS42" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7wc8RN4MQA0" role="1B3o_S" />
      <node concept="3cqZAl" id="7wc8RN4MQA1" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7wc8RN4MMxb" role="jymVt" />
    <node concept="3Tm1VV" id="7wc8RN4MMv2" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="Vg5FsykKb7">
    <property role="TrG5h" value="DummyLayout" />
    <node concept="3clFb_" id="Vg5FsyjhUK" role="jymVt">
      <property role="TrG5h" value="addLayoutComponent" />
      <node concept="3Tm1VV" id="Vg5FsyjhUL" role="1B3o_S" />
      <node concept="3cqZAl" id="Vg5FsyjhUN" role="3clF45" />
      <node concept="37vLTG" id="Vg5FsyjhUO" role="3clF46">
        <property role="TrG5h" value="p1" />
        <node concept="3uibUv" id="Vg5FsyjhUP" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="Vg5FsyjhUQ" role="3clF46">
        <property role="TrG5h" value="p2" />
        <node concept="3uibUv" id="Vg5FsyjhUR" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="3clFbS" id="Vg5FsyjhUS" role="3clF47" />
      <node concept="2AHcQZ" id="Vg5FsyjhUU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="Vg5FsyjhUV" role="jymVt" />
    <node concept="3clFb_" id="Vg5FsyjhUW" role="jymVt">
      <property role="TrG5h" value="removeLayoutComponent" />
      <node concept="3Tm1VV" id="Vg5FsyjhUX" role="1B3o_S" />
      <node concept="3cqZAl" id="Vg5FsyjhUZ" role="3clF45" />
      <node concept="37vLTG" id="Vg5FsyjhV0" role="3clF46">
        <property role="TrG5h" value="p1" />
        <node concept="3uibUv" id="Vg5FsyjhV1" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="3clFbS" id="Vg5FsyjhV2" role="3clF47" />
      <node concept="2AHcQZ" id="Vg5FsyjhV4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="Vg5FsyjhV5" role="jymVt" />
    <node concept="3clFb_" id="Vg5FsyjhV6" role="jymVt">
      <property role="TrG5h" value="preferredLayoutSize" />
      <node concept="3Tm1VV" id="Vg5FsyjhV7" role="1B3o_S" />
      <node concept="3uibUv" id="Vg5FsyjhV9" role="3clF45">
        <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
      </node>
      <node concept="37vLTG" id="Vg5FsyjhVa" role="3clF46">
        <property role="TrG5h" value="p1" />
        <node concept="3uibUv" id="Vg5FsyjhVb" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
        </node>
      </node>
      <node concept="3clFbS" id="Vg5FsyjhVc" role="3clF47">
        <node concept="3clFbF" id="Vg5Fsyjl4m" role="3cqZAp">
          <node concept="2OqwBi" id="Vg5FsyjmK7" role="3clFbG">
            <node concept="37vLTw" id="Vg5Fsyjl4l" role="2Oq$k0">
              <ref role="3cqZAo" node="Vg5FsyjhVa" resolve="p1" />
            </node>
            <node concept="liA8E" id="Vg5FsyjoTI" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.getPreferredSize()" resolve="getPreferredSize" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="Vg5FsyjhVe" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="Vg5FsyjhVf" role="jymVt" />
    <node concept="3clFb_" id="Vg5FsyjhVg" role="jymVt">
      <property role="TrG5h" value="minimumLayoutSize" />
      <node concept="3Tm1VV" id="Vg5FsyjhVh" role="1B3o_S" />
      <node concept="3uibUv" id="Vg5FsyjhVj" role="3clF45">
        <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
      </node>
      <node concept="37vLTG" id="Vg5FsyjhVk" role="3clF46">
        <property role="TrG5h" value="p1" />
        <node concept="3uibUv" id="Vg5FsyjhVl" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
        </node>
      </node>
      <node concept="3clFbS" id="Vg5FsyjhVm" role="3clF47">
        <node concept="3clFbF" id="Vg5Fsyjrn_" role="3cqZAp">
          <node concept="2OqwBi" id="Vg5FsyjsJ4" role="3clFbG">
            <node concept="37vLTw" id="Vg5Fsyjrn$" role="2Oq$k0">
              <ref role="3cqZAo" node="Vg5FsyjhVk" resolve="p1" />
            </node>
            <node concept="liA8E" id="Vg5FsyjuXu" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.getMinimumSize()" resolve="getMinimumSize" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="Vg5FsyjhVo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="Vg5FsyjhVp" role="jymVt" />
    <node concept="3clFb_" id="Vg5FsyjhVq" role="jymVt">
      <property role="TrG5h" value="layoutContainer" />
      <node concept="3Tm1VV" id="Vg5FsyjhVr" role="1B3o_S" />
      <node concept="3cqZAl" id="Vg5FsyjhVt" role="3clF45" />
      <node concept="37vLTG" id="Vg5FsyjhVu" role="3clF46">
        <property role="TrG5h" value="p1" />
        <node concept="3uibUv" id="Vg5FsyjhVv" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
        </node>
      </node>
      <node concept="3clFbS" id="Vg5FsyjhVw" role="3clF47" />
      <node concept="2AHcQZ" id="Vg5FsyjhVy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="Vg5FsykKb8" role="1B3o_S" />
    <node concept="3uibUv" id="Vg5FsykPOJ" role="EKbjA">
      <ref role="3uigEE" to="z60i:~LayoutManager" resolve="LayoutManager" />
    </node>
  </node>
  <node concept="Qs71p" id="5QJfFCjNkzU">
    <property role="TrG5h" value="SplitOrientation" />
    <node concept="QsSxf" id="5QJfFCjNkEm" role="Qtgdg">
      <property role="TrG5h" value="vertical" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="5QJfFCjNkAq" role="Qtgdg">
      <property role="TrG5h" value="horizontal" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="3Tm1VV" id="5QJfFCjNkzV" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5uiQOXmFP5Y">
    <property role="TrG5h" value="DPanel" />
    <node concept="3clFbW" id="5uiQOXmFSXx" role="jymVt">
      <node concept="3cqZAl" id="5uiQOXmFSXz" role="3clF45" />
      <node concept="3Tm1VV" id="5uiQOXmFSX$" role="1B3o_S" />
      <node concept="3clFbS" id="5uiQOXmFSX_" role="3clF47">
        <node concept="XkiVB" id="5uiQOXmFTfd" role="3cqZAp">
          <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
          <node concept="2ShNRf" id="5uiQOXmFTxK" role="37wK5m">
            <node concept="HV5vD" id="5uiQOXmFXgc" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="HV5vE" node="Vg5FsykKb7" resolve="DummyLayout" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uiQOXmFPh1" role="jymVt" />
    <node concept="3Tm1VV" id="5uiQOXmFP5Z" role="1B3o_S" />
    <node concept="3uibUv" id="5uiQOXmFPgw" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
    <node concept="3clFb_" id="5uiQOXmFXlr" role="jymVt">
      <property role="TrG5h" value="processMouseEvent" />
      <node concept="3Tm1VV" id="5uiQOXmFZzp" role="1B3o_S" />
      <node concept="3cqZAl" id="5uiQOXmFXlu" role="3clF45" />
      <node concept="37vLTG" id="5uiQOXmFXlv" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="5uiQOXmFXlw" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="5uiQOXmFXlz" role="3clF47">
        <node concept="3clFbF" id="5uiQOXmFXlB" role="3cqZAp">
          <node concept="3nyPlj" id="5uiQOXmFXlA" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.processMouseEvent(java.awt.event.MouseEvent)" resolve="processMouseEvent" />
            <node concept="37vLTw" id="5uiQOXmFXl_" role="37wK5m">
              <ref role="3cqZAo" node="5uiQOXmFXlv" resolve="e" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5uiQOXmFXl$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5uiQOXmFXlC" role="jymVt">
      <property role="TrG5h" value="processMouseMotionEvent" />
      <node concept="3Tm1VV" id="5uiQOXmFZVR" role="1B3o_S" />
      <node concept="3cqZAl" id="5uiQOXmFXlF" role="3clF45" />
      <node concept="37vLTG" id="5uiQOXmFXlG" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="5uiQOXmFXlH" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="5uiQOXmFXlK" role="3clF47">
        <node concept="3clFbF" id="5uiQOXmFXlO" role="3cqZAp">
          <node concept="3nyPlj" id="5uiQOXmFXlN" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.processMouseMotionEvent(java.awt.event.MouseEvent)" resolve="processMouseMotionEvent" />
            <node concept="37vLTw" id="5uiQOXmFXlM" role="37wK5m">
              <ref role="3cqZAo" node="5uiQOXmFXlG" resolve="e" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5uiQOXmFXlL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5uiQOXmFXlP" role="jymVt">
      <property role="TrG5h" value="processKeyEvent" />
      <node concept="3Tm1VV" id="5uiQOXmG0kl" role="1B3o_S" />
      <node concept="3cqZAl" id="5uiQOXmFXlS" role="3clF45" />
      <node concept="37vLTG" id="5uiQOXmFXlT" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="5uiQOXmFXlU" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~KeyEvent" resolve="KeyEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="5uiQOXmFXlX" role="3clF47">
        <node concept="3clFbF" id="5uiQOXmFXm1" role="3cqZAp">
          <node concept="3nyPlj" id="5uiQOXmFXm0" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.processKeyEvent(java.awt.event.KeyEvent)" resolve="processKeyEvent" />
            <node concept="37vLTw" id="5uiQOXmFXlZ" role="37wK5m">
              <ref role="3cqZAo" node="5uiQOXmFXlT" resolve="e" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5uiQOXmFXlY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="19RvTPMZ3Bk" role="jymVt" />
    <node concept="2tJIrI" id="19RvTPN01yd" role="jymVt" />
  </node>
  <node concept="312cEu" id="17hC4n5BZ7$">
    <property role="TrG5h" value="DGuiUtil" />
    <node concept="2tJIrI" id="17hC4n5BZiN" role="jymVt" />
    <node concept="2YIFZL" id="17hC4n5C4Pa" role="jymVt">
      <property role="TrG5h" value="setModifiers" />
      <node concept="3clFbS" id="17hC4n5C4Pd" role="3clF47">
        <node concept="3clFbJ" id="17hC4n5C6v7" role="3cqZAp">
          <node concept="3clFbS" id="17hC4n5C6v9" role="3clFbx">
            <node concept="3clFbF" id="17hC4n5C7iC" role="3cqZAp">
              <node concept="2OqwBi" id="17hC4n5C7B$" role="3clFbG">
                <node concept="37vLTw" id="17hC4n5C7iA" role="2Oq$k0">
                  <ref role="3cqZAo" node="17hC4n5C5rD" resolve="pressedKeys" />
                </node>
                <node concept="TSZUe" id="17hC4n5C8iF" role="2OqNvi">
                  <node concept="10M0yZ" id="17hC4n5Cn2V" role="25WWJ7">
                    <ref role="3cqZAo" to="hyam:~KeyEvent.VK_ALT" resolve="VK_ALT" />
                    <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="17hC4n5C6Up" role="3clFbw">
            <node concept="37vLTw" id="17hC4n5C6$o" role="2Oq$k0">
              <ref role="3cqZAo" node="17hC4n5C6c$" resolve="inputEvent" />
            </node>
            <node concept="liA8E" id="17hC4n5C7bn" role="2OqNvi">
              <ref role="37wK5l" to="hyam:~InputEvent.isAltDown()" resolve="isAltDown" />
            </node>
          </node>
          <node concept="9aQIb" id="17hC4n5C7cY" role="9aQIa">
            <node concept="3clFbS" id="17hC4n5C7cZ" role="9aQI4">
              <node concept="3clFbF" id="17hC4n5CoPl" role="3cqZAp">
                <node concept="2OqwBi" id="17hC4n5CoPm" role="3clFbG">
                  <node concept="37vLTw" id="17hC4n5CoPn" role="2Oq$k0">
                    <ref role="3cqZAo" node="17hC4n5C5rD" resolve="pressedKeys" />
                  </node>
                  <node concept="3dhRuq" id="17hC4n5Cpjp" role="2OqNvi">
                    <node concept="10M0yZ" id="17hC4n5Cpjr" role="25WWJ7">
                      <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                      <ref role="3cqZAo" to="hyam:~KeyEvent.VK_ALT" resolve="VK_ALT" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="17hC4n5CqGJ" role="3cqZAp">
          <node concept="3clFbS" id="17hC4n5CqGK" role="3clFbx">
            <node concept="3clFbF" id="17hC4n5CqGL" role="3cqZAp">
              <node concept="2OqwBi" id="17hC4n5CqGM" role="3clFbG">
                <node concept="37vLTw" id="17hC4n5CqGN" role="2Oq$k0">
                  <ref role="3cqZAo" node="17hC4n5C5rD" resolve="pressedKeys" />
                </node>
                <node concept="TSZUe" id="17hC4n5CqGO" role="2OqNvi">
                  <node concept="10M0yZ" id="17hC4n5CvYf" role="25WWJ7">
                    <ref role="3cqZAo" to="hyam:~KeyEvent.VK_ALT_GRAPH" resolve="VK_ALT_GRAPH" />
                    <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="17hC4n5CqGQ" role="3clFbw">
            <node concept="37vLTw" id="17hC4n5CqGR" role="2Oq$k0">
              <ref role="3cqZAo" node="17hC4n5C6c$" resolve="inputEvent" />
            </node>
            <node concept="liA8E" id="17hC4n5CqGS" role="2OqNvi">
              <ref role="37wK5l" to="hyam:~InputEvent.isAltGraphDown()" resolve="isAltGraphDown" />
            </node>
          </node>
          <node concept="9aQIb" id="17hC4n5CqGT" role="9aQIa">
            <node concept="3clFbS" id="17hC4n5CqGU" role="9aQI4">
              <node concept="3clFbF" id="17hC4n5CqGV" role="3cqZAp">
                <node concept="2OqwBi" id="17hC4n5CqGW" role="3clFbG">
                  <node concept="37vLTw" id="17hC4n5CqGX" role="2Oq$k0">
                    <ref role="3cqZAo" node="17hC4n5C5rD" resolve="pressedKeys" />
                  </node>
                  <node concept="3dhRuq" id="17hC4n5CqGY" role="2OqNvi">
                    <node concept="10M0yZ" id="17hC4n5CwhR" role="25WWJ7">
                      <ref role="3cqZAo" to="hyam:~KeyEvent.VK_ALT_GRAPH" resolve="VK_ALT_GRAPH" />
                      <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="17hC4n5CrM0" role="3cqZAp">
          <node concept="3clFbS" id="17hC4n5CrM1" role="3clFbx">
            <node concept="3clFbF" id="17hC4n5CrM2" role="3cqZAp">
              <node concept="2OqwBi" id="17hC4n5CrM3" role="3clFbG">
                <node concept="37vLTw" id="17hC4n5CrM4" role="2Oq$k0">
                  <ref role="3cqZAo" node="17hC4n5C5rD" resolve="pressedKeys" />
                </node>
                <node concept="TSZUe" id="17hC4n5CrM5" role="2OqNvi">
                  <node concept="10M0yZ" id="17hC4n5CwQs" role="25WWJ7">
                    <ref role="3cqZAo" to="hyam:~KeyEvent.VK_CONTROL" resolve="VK_CONTROL" />
                    <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="17hC4n5CrM7" role="3clFbw">
            <node concept="37vLTw" id="17hC4n5CrM8" role="2Oq$k0">
              <ref role="3cqZAo" node="17hC4n5C6c$" resolve="inputEvent" />
            </node>
            <node concept="liA8E" id="17hC4n5CrM9" role="2OqNvi">
              <ref role="37wK5l" to="hyam:~InputEvent.isControlDown()" resolve="isControlDown" />
            </node>
          </node>
          <node concept="9aQIb" id="17hC4n5CrMa" role="9aQIa">
            <node concept="3clFbS" id="17hC4n5CrMb" role="9aQI4">
              <node concept="3clFbF" id="17hC4n5CrMc" role="3cqZAp">
                <node concept="2OqwBi" id="17hC4n5CrMd" role="3clFbG">
                  <node concept="37vLTw" id="17hC4n5CrMe" role="2Oq$k0">
                    <ref role="3cqZAo" node="17hC4n5C5rD" resolve="pressedKeys" />
                  </node>
                  <node concept="3dhRuq" id="17hC4n5CrMf" role="2OqNvi">
                    <node concept="10M0yZ" id="17hC4n5CwUK" role="25WWJ7">
                      <ref role="3cqZAo" to="hyam:~KeyEvent.VK_CONTROL" resolve="VK_CONTROL" />
                      <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="17hC4n5Ct71" role="3cqZAp">
          <node concept="3clFbS" id="17hC4n5Ct72" role="3clFbx">
            <node concept="3clFbF" id="17hC4n5Ct73" role="3cqZAp">
              <node concept="2OqwBi" id="17hC4n5Ct74" role="3clFbG">
                <node concept="37vLTw" id="17hC4n5Ct75" role="2Oq$k0">
                  <ref role="3cqZAo" node="17hC4n5C5rD" resolve="pressedKeys" />
                </node>
                <node concept="TSZUe" id="17hC4n5Ct76" role="2OqNvi">
                  <node concept="10M0yZ" id="17hC4n5Cxuj" role="25WWJ7">
                    <ref role="3cqZAo" to="hyam:~KeyEvent.VK_META" resolve="VK_META" />
                    <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="17hC4n5Ct78" role="3clFbw">
            <node concept="37vLTw" id="17hC4n5Ct79" role="2Oq$k0">
              <ref role="3cqZAo" node="17hC4n5C6c$" resolve="inputEvent" />
            </node>
            <node concept="liA8E" id="17hC4n5Ct7a" role="2OqNvi">
              <ref role="37wK5l" to="hyam:~InputEvent.isMetaDown()" resolve="isMetaDown" />
            </node>
          </node>
          <node concept="9aQIb" id="17hC4n5Ct7b" role="9aQIa">
            <node concept="3clFbS" id="17hC4n5Ct7c" role="9aQI4">
              <node concept="3clFbF" id="17hC4n5Ct7d" role="3cqZAp">
                <node concept="2OqwBi" id="17hC4n5Ct7e" role="3clFbG">
                  <node concept="37vLTw" id="17hC4n5Ct7f" role="2Oq$k0">
                    <ref role="3cqZAo" node="17hC4n5C5rD" resolve="pressedKeys" />
                  </node>
                  <node concept="3dhRuq" id="17hC4n5Ct7g" role="2OqNvi">
                    <node concept="10M0yZ" id="17hC4n5CxyL" role="25WWJ7">
                      <ref role="3cqZAo" to="hyam:~KeyEvent.VK_META" resolve="VK_META" />
                      <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="17hC4n5CuGI" role="3cqZAp">
          <node concept="3clFbS" id="17hC4n5CuGJ" role="3clFbx">
            <node concept="3clFbF" id="17hC4n5CuGK" role="3cqZAp">
              <node concept="2OqwBi" id="17hC4n5CuGL" role="3clFbG">
                <node concept="37vLTw" id="17hC4n5CuGM" role="2Oq$k0">
                  <ref role="3cqZAo" node="17hC4n5C5rD" resolve="pressedKeys" />
                </node>
                <node concept="TSZUe" id="17hC4n5CuGN" role="2OqNvi">
                  <node concept="10M0yZ" id="17hC4n5Cy$M" role="25WWJ7">
                    <ref role="3cqZAo" to="hyam:~KeyEvent.VK_SHIFT" resolve="VK_SHIFT" />
                    <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="17hC4n5CuGP" role="3clFbw">
            <node concept="37vLTw" id="17hC4n5CuGQ" role="2Oq$k0">
              <ref role="3cqZAo" node="17hC4n5C6c$" resolve="inputEvent" />
            </node>
            <node concept="liA8E" id="17hC4n5CuGR" role="2OqNvi">
              <ref role="37wK5l" to="hyam:~InputEvent.isShiftDown()" resolve="isShiftDown" />
            </node>
          </node>
          <node concept="9aQIb" id="17hC4n5CuGS" role="9aQIa">
            <node concept="3clFbS" id="17hC4n5CuGT" role="9aQI4">
              <node concept="3clFbF" id="17hC4n5CuGU" role="3cqZAp">
                <node concept="2OqwBi" id="17hC4n5CuGV" role="3clFbG">
                  <node concept="37vLTw" id="17hC4n5CuGW" role="2Oq$k0">
                    <ref role="3cqZAo" node="17hC4n5C5rD" resolve="pressedKeys" />
                  </node>
                  <node concept="3dhRuq" id="17hC4n5CuGX" role="2OqNvi">
                    <node concept="10M0yZ" id="17hC4n5CySE" role="25WWJ7">
                      <ref role="3cqZAo" to="hyam:~KeyEvent.VK_SHIFT" resolve="VK_SHIFT" />
                      <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="17hC4n5C5An" role="3cqZAp">
          <node concept="37vLTw" id="17hC4n5C5Am" role="3clFbG">
            <ref role="3cqZAo" node="17hC4n5C5rD" resolve="pressedKeys" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="17hC4n5C3v6" role="1B3o_S" />
      <node concept="2hMVRd" id="17hC4n5C4OM" role="3clF45">
        <node concept="10Oyi0" id="17hC4n5C4OO" role="2hN53Y" />
      </node>
      <node concept="37vLTG" id="17hC4n5C6c$" role="3clF46">
        <property role="TrG5h" value="inputEvent" />
        <node concept="3uibUv" id="17hC4n5C6pH" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~InputEvent" resolve="InputEvent" />
        </node>
      </node>
      <node concept="37vLTG" id="17hC4n5C5rD" role="3clF46">
        <property role="TrG5h" value="pressedKeys" />
        <node concept="2hMVRd" id="17hC4n5C5rB" role="1tU5fm">
          <node concept="10Oyi0" id="17hC4n5C5vu" role="2hN53Y" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="17hC4n5BZiZ" role="jymVt" />
    <node concept="3Tm1VV" id="17hC4n5BZ7_" role="1B3o_S" />
  </node>
</model>

