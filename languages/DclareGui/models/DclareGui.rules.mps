<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3ec44d77-eb4f-4600-add0-5e671af45a7b(DclareGui.rules)">
  <persistence version="9" />
  <languages>
    <use id="c32b788d-8e4b-4023-97f5-3e90d04ed77b" name="DclareMPS" version="5" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="zrbp" ref="e584ff77-930e-4637-8df0-b4c8d3b6de91/java:org.modelingvalue.collections(DclareRuntime/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="t4tl" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.dclare.mps(DclareMPSRuntime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="oqcp" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.imageio(JDK/)" />
    <import index="kag7" ref="e584ff77-930e-4637-8df0-b4c8d3b6de91/java:org.modelingvalue.dclare(DclareRuntime/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="7oz1" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.configuration(MPS.Editor/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="u4ym" ref="r:1a96ceaa-2946-43e0-af3f-cd05d77ee6d1(DclareMPSRuntime.util)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="gsia" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.event(JDK/)" />
    <import index="53d4" ref="r:0049729d-ba70-461b-8d8a-b0755e3bfabb(DclareGui.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="lwvz" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.selection(MPS.Editor/)" />
  </imports>
  <registry>
    <language id="c32b788d-8e4b-4023-97f5-3e90d04ed77b" name="DclareMPS">
      <concept id="4010647915821593701" name="DclareMPS.structure.MethodCall" flags="ng" index="2275Hy" />
      <concept id="4157899317040512276" name="DclareMPS.structure.NativeFieldReference" flags="ng" index="5IyTM" />
      <concept id="4122011871452503133" name="DclareMPS.structure.Method" flags="ig" index="kUGYC">
        <property id="6993379498019360941" name="constant" index="2RZe$O" />
        <property id="6750683335363385218" name="native" index="1ePe$S" />
      </concept>
      <concept id="7503535305242222763" name="DclareMPS.structure.MethodCallOperation" flags="ng" index="2$Gk$L" />
      <concept id="3943890974580131286" name="DclareMPS.structure.Equation" flags="ng" index="E34o$" />
      <concept id="8102307003770101093" name="DclareMPS.structure.NativeRunner" flags="ng" index="2O$n0J" />
      <concept id="4893482730976715512" name="DclareMPS.structure.StructBuilderInitAttribute" flags="ng" index="2Pygp_">
        <reference id="4893482730976715517" name="attribute" index="2Pygpw" />
        <child id="4893482730976715515" name="initValue" index="2PygpA" />
      </concept>
      <concept id="5858913584106642961" name="DclareMPS.structure.Aspect" flags="ng" index="2Rb1jd">
        <property id="8690218989273699402" name="primitiveTypeDefaults" index="2WACxE" />
      </concept>
      <concept id="5263414693702615530" name="DclareMPS.structure.StructClass" flags="ng" index="2UJ2oG">
        <property id="6624230590629744283" name="isValueClass" index="1VbJ0V" />
        <child id="5263414693702618949" name="identity" index="2UJ2y3" />
        <child id="5263414693702617674" name="extends" index="2UJ2Qc" />
      </concept>
      <concept id="5263414693702617671" name="DclareMPS.structure.StructClassReference" flags="ng" index="2UJ2Q1">
        <reference id="5263414693702617672" name="class" index="2UJ2Qe" />
      </concept>
      <concept id="359025656632646706" name="DclareMPS.structure.ThisExpression" flags="ng" index="2Wb9Zs" />
      <concept id="7745179321613461204" name="DclareMPS.structure.NodeRuleSet" flags="ng" index="311c5q">
        <reference id="7745179321613461246" name="concept" index="311c5K" />
      </concept>
      <concept id="5274342987130696546" name="DclareMPS.structure.AttributeOperation" flags="ng" index="32jkxy" />
      <concept id="5274342987128242780" name="DclareMPS.structure.Attribute" flags="ng" index="32q3_s">
        <property id="8249432652488838579" name="optional" index="KodbT" />
        <property id="7111949708187038417" name="public" index="1incD5" />
        <property id="8278332945861604355" name="constant" index="1oBfZR" />
        <property id="3362652439077809217" name="identifying" index="3CZYri" />
        <property id="4435611260595733753" name="composite" index="3K1B09" />
      </concept>
      <concept id="3562215692195599741" name="DclareMPS.structure.AttributeImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="attribute" index="13MTZf" />
      </concept>
      <concept id="8182547171709738802" name="DclareMPS.structure.ListBuilder" flags="nn" index="36be1Y">
        <child id="4961035436665424243" name="elements" index="2Gi6C2" />
      </concept>
      <concept id="7052226383913853631" name="DclareMPS.structure.StructParent" flags="ng" index="1932wR" />
      <concept id="2643921241704844352" name="DclareMPS.structure.ModelIssue" flags="ng" index="1tn5gs" />
      <concept id="2483495814491113448" name="DclareMPS.structure.Rule" flags="ng" index="3tBE6w">
        <child id="7745179321625723507" name="statement" index="30jUnX" />
      </concept>
      <concept id="2483495814491113449" name="DclareMPS.structure.RuleSet" flags="ng" index="3tBE6x">
        <reference id="5858913584106722103" name="aspect" index="2RaPBF" />
        <child id="7599581349097315861" name="members" index="1FPzNG" />
      </concept>
      <concept id="8297955622421103123" name="DclareMPS.structure.SeverityReference" flags="ng" index="3Bts2Z" />
      <concept id="2911181905331434060" name="DclareMPS.structure.StructAncestorOperation" flags="ng" index="3BHqF8">
        <reference id="2911181905331504722" name="class" index="3BGHVm" />
      </concept>
      <concept id="7599581349097323169" name="DclareMPS.structure.PlaceholderRuleSetMember" flags="ng" index="1FPxxo" />
      <concept id="4283428457607232705" name="DclareMPS.structure.PreStateExpression" flags="ng" index="3J2VuX">
        <child id="4283428457607327522" name="expression" index="3J2yhu" />
      </concept>
      <concept id="4435611260589294938" name="DclareMPS.structure.StructBuilder" flags="ng" index="3KEV6E">
        <reference id="5263414693702618954" name="class" index="2UJ2yc" />
        <child id="4893482730976715479" name="parts" index="2Pygpa" />
      </concept>
      <concept id="4435611260584155569" name="DclareMPS.structure.StructType" flags="ig" index="3LmiP1">
        <reference id="5263414693718905625" name="class" index="2XDbjv" />
      </concept>
      <concept id="4435611260584021618" name="DclareMPS.structure.StructRuleSet" flags="ng" index="3LmNE2">
        <reference id="5263414693702617678" name="structClass" index="2UJ2Q8" />
      </concept>
      <concept id="9055784064631788416" name="DclareMPS.structure.OfStructTypeOperation" flags="ng" index="3MEsww">
        <reference id="9055784064631823154" name="class" index="3MEk2i" />
      </concept>
      <concept id="6584359627792080012" name="DclareMPS.structure.NativeDeclaration" flags="ng" index="1OA0iY">
        <child id="6584359627792080018" name="exit" index="1OA0iw" />
        <child id="6584359627792080016" name="init" index="1OA0iy" />
        <child id="6584359627792080929" name="fields" index="1OA3wj" />
        <child id="6584359627792080973" name="handlers" index="1OA3xZ" />
      </concept>
      <concept id="6584359627792080013" name="DclareMPS.structure.NativeAttributeHandler" flags="ng" index="1OA0iZ">
        <reference id="6584359627792080014" name="attribute" index="1OA0iW" />
        <child id="6584359627792080021" name="body" index="1OA0iB" />
      </concept>
      <concept id="6584359627792080959" name="DclareMPS.structure.NativeFieldDeclaration" flags="ng" index="1OA3wd" />
      <concept id="6584359627792080979" name="DclareMPS.structure.NativePre" flags="ng" index="1OA3xx" />
      <concept id="6584359627792080980" name="DclareMPS.structure.NativePost" flags="ng" index="1OA3xA" />
      <concept id="6584359627792080960" name="DclareMPS.structure.NativeFieldOperation" flags="ng" index="1OA3xM" />
      <concept id="5191463817731928991" name="DclareMPS.structure.AttributeReference" flags="ng" index="1SfVH9" />
      <concept id="4641067027424801828" name="DclareMPS.structure.Issue" flags="ng" index="1W1DnV">
        <child id="2643921241704685917" name="message" index="1tmZ$1" />
        <child id="8297955622421103127" name="severity" index="3Bts2V" />
        <child id="4641067027424890124" name="object" index="1W62Nj" />
      </concept>
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1153422105332" name="jetbrains.mps.baseLanguage.structure.RemExpression" flags="nn" index="2dk9JS" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
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
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
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
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1200830824066" name="jetbrains.mps.baseLanguage.closures.structure.YieldStatement" flags="nn" index="2n63Yl">
        <child id="1200830928149" name="expression" index="2n6tg2" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
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
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
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
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
        <child id="1224414466839" name="initializer" index="kMx8a" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
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
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="5232196642625574978" name="jetbrains.mps.baseLanguage.collections.structure.HeadListOperation" flags="nn" index="1eb2ty">
        <child id="5232196642625574980" name="upToIndex" index="1eb2t$" />
      </concept>
      <concept id="5232196642625575054" name="jetbrains.mps.baseLanguage.collections.structure.TailListOperation" flags="nn" index="1eb2uI">
        <child id="5232196642625575056" name="fromIndex" index="1eb2uK" />
      </concept>
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1225730411176" name="jetbrains.mps.baseLanguage.collections.structure.FindLastOperation" flags="nn" index="1zesIP" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
      <concept id="1522217801069396578" name="jetbrains.mps.baseLanguage.collections.structure.FoldLeftOperation" flags="nn" index="1MD8d$">
        <child id="1522217801069421796" name="seed" index="1MDeny" />
      </concept>
    </language>
  </registry>
  <node concept="2UJ2oG" id="WHdioYVYaT">
    <property role="TrG5h" value="DVisible" />
    <property role="3GE5qa" value="structs" />
  </node>
  <node concept="2Rb1jd" id="WHdioYVYbd">
    <property role="TrG5h" value="GUI" />
    <property role="3GE5qa" value="gui." />
    <property role="2WACxE" value="true" />
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z2r">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DShape" />
    <node concept="2UJ2Q1" id="skgx$J4Z2_" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="WHdioYVYaT" resolve="DVisible" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z2s">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DContainer" />
    <node concept="2UJ2Q1" id="skgx$J4Z2D" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="WHdioYVYaT" resolve="DVisible" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z2F">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DComponent" />
    <node concept="2UJ2Q1" id="skgx$J4Z2I" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2s" resolve="DContainer" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z32">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DCanvas" />
    <node concept="2UJ2Q1" id="skgx$J4Z35" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2F" resolve="DComponent" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z3d">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DPanel" />
    <node concept="2UJ2Q1" id="skgx$J4Z3g" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2F" resolve="DComponent" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z3o">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DSplitPane" />
    <node concept="2UJ2Q1" id="skgx$J4Z3r" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2F" resolve="DComponent" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z3D">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DFrame" />
    <node concept="2UJ2Q1" id="skgx$J4Z3G" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2s" resolve="DContainer" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z3O">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DMultiLineShape" />
    <node concept="2UJ2Q1" id="skgx$J4Z3R" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2r" resolve="DShape" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z45">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DFilledShape" />
    <node concept="2UJ2Q1" id="skgx$J4Z48" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2r" resolve="DShape" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z4a">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DRectangleShape" />
    <node concept="2UJ2Q1" id="skgx$J4Z4f" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z45" resolve="DFilledShape" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z4h">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DCircleShape" />
    <node concept="2UJ2Q1" id="skgx$J4Z4k" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z45" resolve="DFilledShape" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4C">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z3o" resolve="DSplitPane" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="5QJfFCjNfXX" role="1FPzNG">
      <property role="TrG5h" value="leftComponent" />
      <property role="3K1B09" value="true" />
      <node concept="3LmiP1" id="5QJfFCjNgvj" role="1tU5fm">
        <ref role="2XDbjv" node="skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="32q3_s" id="5QJfFCjNj4W" role="1FPzNG">
      <property role="TrG5h" value="rightComponent" />
      <property role="3K1B09" value="true" />
      <node concept="3LmiP1" id="5QJfFCjNj6U" role="1tU5fm">
        <ref role="2XDbjv" node="skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="32q3_s" id="5QJfFCjNjAF" role="1FPzNG">
      <property role="TrG5h" value="splitOrientation" />
      <node concept="3uibUv" id="5QJfFCjNkRH" role="1tU5fm">
        <ref role="3uigEE" to="u4ym:5QJfFCjNkzU" resolve="SplitOrientation" />
      </node>
    </node>
    <node concept="32q3_s" id="5QJfFCjNOaN" role="1FPzNG">
      <property role="TrG5h" value="dividerSize" />
      <node concept="10Oyi0" id="5QJfFCjNOj2" role="1tU5fm" />
    </node>
    <node concept="32q3_s" id="5QJfFCjNmPt" role="1FPzNG">
      <property role="TrG5h" value="resizeWeight" />
      <node concept="10P55v" id="5QJfFCjNmT_" role="1tU5fm" />
    </node>
    <node concept="1FPxxo" id="5QJfFCjNkwO" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3vh" role="1FPzNG">
      <node concept="1OA3wd" id="5QJfFCjNnde" role="1OA3wj">
        <property role="TrG5h" value="splitPane" />
        <node concept="3uibUv" id="5QJfFCjNnhe" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JSplitPane" resolve="JSplitPane" />
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3vi" role="1OA0iy">
        <node concept="3clFbF" id="5QJfFCjNp23" role="3cqZAp">
          <node concept="37vLTI" id="5QJfFCjNpxe" role="3clFbG">
            <node concept="2ShNRf" id="5QJfFCjNrMb" role="37vLTx">
              <node concept="1pGfFk" id="5QJfFCjNrKr" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JSplitPane.&lt;init&gt;(int,boolean)" resolve="JSplitPane" />
                <node concept="3K4zz7" id="5QJfFCjNtWq" role="37wK5m">
                  <node concept="10M0yZ" id="5QJfFCjNuc0" role="3K4E3e">
                    <ref role="3cqZAo" to="dxuu:~JSplitPane.VERTICAL_SPLIT" resolve="VERTICAL_SPLIT" />
                    <ref role="1PxDUh" to="dxuu:~JSplitPane" resolve="JSplitPane" />
                  </node>
                  <node concept="10M0yZ" id="5QJfFCjNunu" role="3K4GZi">
                    <ref role="3cqZAo" to="dxuu:~JSplitPane.HORIZONTAL_SPLIT" resolve="HORIZONTAL_SPLIT" />
                    <ref role="1PxDUh" to="dxuu:~JSplitPane" resolve="JSplitPane" />
                  </node>
                  <node concept="17R0WA" id="5QJfFCjNtcY" role="3K4Cdx">
                    <node concept="Rm8GO" id="fazSmwTozA" role="3uHU7w">
                      <ref role="Rm8GQ" to="u4ym:5QJfFCjNkEm" resolve="vertical" />
                      <ref role="1Px2BO" to="u4ym:5QJfFCjNkzU" resolve="SplitOrientation" />
                    </node>
                    <node concept="1SfVH9" id="5QJfFCjNrOE" role="3uHU7B">
                      <ref role="3cqZAo" node="5QJfFCjNjAF" resolve="splitOrientation" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbT" id="5QJfFCjNuvE" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="5IyTM" id="5QJfFCjNp22" role="37vLTJ">
              <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5QJfFCjNq$8" role="3cqZAp">
          <node concept="37vLTI" id="5QJfFCjNqXJ" role="3clFbG">
            <node concept="5IyTM" id="5QJfFCjNqZP" role="37vLTx">
              <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
            </node>
            <node concept="5IyTM" id="5QJfFCjNq$6" role="37vLTJ">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3vj" role="1OA0iw">
        <node concept="3clFbF" id="5QJfFCjNr2E" role="3cqZAp">
          <node concept="37vLTI" id="5QJfFCjNrxJ" role="3clFbG">
            <node concept="10Nm6u" id="5QJfFCjNrK8" role="37vLTx" />
            <node concept="5IyTM" id="5QJfFCjNr2D" role="37vLTJ">
              <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="5QJfFCjNvd6" role="1OA3xZ">
        <ref role="1OA0iW" node="5QJfFCjNfXX" resolve="leftComponent" />
        <node concept="3clFbS" id="5QJfFCjNvd7" role="1OA0iB">
          <node concept="3clFbF" id="5QJfFCjNvFX" role="3cqZAp">
            <node concept="2OqwBi" id="5QJfFCjNwb3" role="3clFbG">
              <node concept="5IyTM" id="5QJfFCjNvFW" role="2Oq$k0">
                <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
              </node>
              <node concept="liA8E" id="5QJfFCjNyvV" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JSplitPane.setLeftComponent(java.awt.Component)" resolve="setLeftComponent" />
                <node concept="2OqwBi" id="5QJfFCjNyIB" role="37wK5m">
                  <node concept="1OA3xA" id="5QJfFCjO17M" role="2Oq$k0" />
                  <node concept="1OA3xM" id="5QJfFCjNza$" role="2OqNvi">
                    <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5QJfFCjNCqD" role="3cqZAp">
            <node concept="2OqwBi" id="5QJfFCjNCXr" role="3clFbG">
              <node concept="5IyTM" id="5QJfFCjNCqB" role="2Oq$k0">
                <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
              </node>
              <node concept="liA8E" id="5QJfFCjNEBP" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.invalidate()" resolve="invalidate" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5QJfFCjNEIw" role="3cqZAp">
            <node concept="2OqwBi" id="5QJfFCjNFhW" role="3clFbG">
              <node concept="5IyTM" id="5QJfFCjNEIu" role="2Oq$k0">
                <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
              </node>
              <node concept="liA8E" id="5QJfFCjNGWm" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="5QJfFCjNvhw" role="1OA3xZ">
        <ref role="1OA0iW" node="5QJfFCjNj4W" resolve="rightComponent" />
        <node concept="3clFbS" id="5QJfFCjNvhx" role="1OA0iB">
          <node concept="3clFbF" id="5QJfFCjNzfJ" role="3cqZAp">
            <node concept="2OqwBi" id="5QJfFCjNA6W" role="3clFbG">
              <node concept="5IyTM" id="5QJfFCjN_$3" role="2Oq$k0">
                <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
              </node>
              <node concept="liA8E" id="5QJfFCjNBLm" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JSplitPane.setRightComponent(java.awt.Component)" resolve="setRightComponent" />
                <node concept="2OqwBi" id="5QJfFCjNBX9" role="37wK5m">
                  <node concept="1OA3xA" id="5QJfFCjO0Xy" role="2Oq$k0" />
                  <node concept="1OA3xM" id="5QJfFCjNChI" role="2OqNvi">
                    <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5QJfFCjNH2D" role="3cqZAp">
            <node concept="2OqwBi" id="5QJfFCjNH_s" role="3clFbG">
              <node concept="5IyTM" id="5QJfFCjNH2B" role="2Oq$k0">
                <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
              </node>
              <node concept="liA8E" id="5QJfFCjNJfQ" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.invalidate()" resolve="invalidate" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5QJfFCjNJmy" role="3cqZAp">
            <node concept="2OqwBi" id="5QJfFCjNJTZ" role="3clFbG">
              <node concept="5IyTM" id="5QJfFCjNJmw" role="2Oq$k0">
                <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
              </node>
              <node concept="liA8E" id="5QJfFCjNL$p" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="5QJfFCjNvxY" role="1OA3xZ">
        <ref role="1OA0iW" node="5QJfFCjNjAF" resolve="splitOrientation" />
        <node concept="3clFbS" id="5QJfFCjNvxZ" role="1OA0iB">
          <node concept="3clFbF" id="5QJfFCjNPMx" role="3cqZAp">
            <node concept="2OqwBi" id="5QJfFCjNQhC" role="3clFbG">
              <node concept="5IyTM" id="5QJfFCjNPMw" role="2Oq$k0">
                <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
              </node>
              <node concept="liA8E" id="5QJfFCjNX57" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JSplitPane.setOrientation(int)" resolve="setOrientation" />
                <node concept="3K4zz7" id="5QJfFCjNX68" role="37wK5m">
                  <node concept="10M0yZ" id="5QJfFCjNX69" role="3K4E3e">
                    <ref role="1PxDUh" to="dxuu:~JSplitPane" resolve="JSplitPane" />
                    <ref role="3cqZAo" to="dxuu:~JSplitPane.VERTICAL_SPLIT" resolve="VERTICAL_SPLIT" />
                  </node>
                  <node concept="10M0yZ" id="5QJfFCjNX6a" role="3K4GZi">
                    <ref role="3cqZAo" to="dxuu:~JSplitPane.HORIZONTAL_SPLIT" resolve="HORIZONTAL_SPLIT" />
                    <ref role="1PxDUh" to="dxuu:~JSplitPane" resolve="JSplitPane" />
                  </node>
                  <node concept="17R0WA" id="5QJfFCjNX6b" role="3K4Cdx">
                    <node concept="Rm8GO" id="5QJfFCjNX6c" role="3uHU7w">
                      <ref role="1Px2BO" to="u4ym:5QJfFCjNkzU" resolve="SplitOrientation" />
                      <ref role="Rm8GQ" to="u4ym:5QJfFCjNkEm" resolve="vertical" />
                    </node>
                    <node concept="1OA3xA" id="5QJfFCjO0OT" role="3uHU7B" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5QJfFCjNXh6" role="3cqZAp">
            <node concept="2OqwBi" id="5QJfFCjNXh7" role="3clFbG">
              <node concept="5IyTM" id="5QJfFCjNXh8" role="2Oq$k0">
                <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
              </node>
              <node concept="liA8E" id="5QJfFCjNXh9" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.invalidate()" resolve="invalidate" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5QJfFCjNXlL" role="3cqZAp">
            <node concept="2OqwBi" id="5QJfFCjNXlM" role="3clFbG">
              <node concept="5IyTM" id="5QJfFCjNXlN" role="2Oq$k0">
                <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
              </node>
              <node concept="liA8E" id="5QJfFCjNXlO" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="5QJfFCjNvpL" role="1OA3xZ">
        <ref role="1OA0iW" node="5QJfFCjNmPt" resolve="resizeWeight" />
        <node concept="3clFbS" id="5QJfFCjNvpM" role="1OA0iB">
          <node concept="3clFbF" id="5QJfFCjO1jk" role="3cqZAp">
            <node concept="2OqwBi" id="5QJfFCjO1tO" role="3clFbG">
              <node concept="5IyTM" id="5QJfFCjO1ji" role="2Oq$k0">
                <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
              </node>
              <node concept="liA8E" id="5QJfFCjO2OO" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JSplitPane.setResizeWeight(double)" resolve="setResizeWeight" />
                <node concept="1OA3xA" id="5QJfFCjO2RE" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5QJfFCjNXYW" role="3cqZAp">
            <node concept="2OqwBi" id="5QJfFCjNXYX" role="3clFbG">
              <node concept="5IyTM" id="5QJfFCjNXYY" role="2Oq$k0">
                <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
              </node>
              <node concept="liA8E" id="5QJfFCjNXYZ" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.invalidate()" resolve="invalidate" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5QJfFCjNXZ0" role="3cqZAp">
            <node concept="2OqwBi" id="5QJfFCjNXZ1" role="3clFbG">
              <node concept="5IyTM" id="5QJfFCjNXZ2" role="2Oq$k0">
                <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
              </node>
              <node concept="liA8E" id="5QJfFCjNXZ3" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="5QJfFCjNY2v" role="1OA3xZ">
        <ref role="1OA0iW" node="5QJfFCjNOaN" resolve="dividerSize" />
        <node concept="3clFbS" id="5QJfFCjNY2w" role="1OA0iB">
          <node concept="3clFbF" id="5QJfFCjNY_a" role="3cqZAp">
            <node concept="2OqwBi" id="5QJfFCjNZ5j" role="3clFbG">
              <node concept="5IyTM" id="5QJfFCjNY_8" role="2Oq$k0">
                <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
              </node>
              <node concept="liA8E" id="5QJfFCjO0sj" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JSplitPane.setDividerSize(int)" resolve="setDividerSize" />
                <node concept="1OA3xA" id="5QJfFCjO0MC" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5QJfFCjNYvb" role="3cqZAp">
            <node concept="2OqwBi" id="5QJfFCjNYvc" role="3clFbG">
              <node concept="5IyTM" id="5QJfFCjNYvd" role="2Oq$k0">
                <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
              </node>
              <node concept="liA8E" id="5QJfFCjNYve" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.invalidate()" resolve="invalidate" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5QJfFCjNYvf" role="3cqZAp">
            <node concept="2OqwBi" id="5QJfFCjNYvg" role="3clFbG">
              <node concept="5IyTM" id="5QJfFCjNYvh" role="2Oq$k0">
                <ref role="3cqZAo" node="5QJfFCjNnde" resolve="splitPane" />
              </node>
              <node concept="liA8E" id="5QJfFCjNYvi" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4D">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z2r" resolve="DShape" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="2xAA8jfQBlZ" role="1FPzNG">
      <property role="TrG5h" value="canvas" />
      <node concept="3LmiP1" id="2xAA8jfQBpV" role="1tU5fm">
        <ref role="2XDbjv" node="skgx$J4Z32" resolve="DCanvas" />
      </node>
      <node concept="2OqwBi" id="2xAA8jfQI7O" role="33vP2m">
        <node concept="2Wb9Zs" id="2xAA8jfQHZE" role="2Oq$k0" />
        <node concept="3BHqF8" id="2xAA8jfQIuF" role="2OqNvi">
          <ref role="3BGHVm" node="skgx$J4Z32" resolve="DCanvas" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2xAA8jfCGgn" role="1FPzNG">
      <property role="TrG5h" value="highlighted" />
      <node concept="10P_77" id="2xAA8jfCGhZ" role="1tU5fm" />
    </node>
    <node concept="32q3_s" id="Vg5Fsxma4s" role="1FPzNG">
      <property role="TrG5h" value="component" />
      <property role="3K1B09" value="true" />
      <property role="KodbT" value="true" />
      <node concept="3LmiP1" id="Vg5Fsxmats" role="1tU5fm">
        <ref role="2XDbjv" node="skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="32q3_s" id="2xAA8jfCHII" role="1FPzNG">
      <property role="TrG5h" value="lineColor" />
      <node concept="3uibUv" id="2xAA8jfCHKU" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2275Hy" id="3knfDr4NLZg" role="33vP2m">
        <ref role="37wK5l" node="2xAA8jfCUDg" resolve="lineColor" />
      </node>
    </node>
    <node concept="kUGYC" id="2xAA8jfCUDg" role="1FPzNG">
      <property role="TrG5h" value="lineColor" />
      <node concept="3Tm1VV" id="2xAA8jfCUDh" role="1B3o_S" />
      <node concept="3clFbS" id="2xAA8jfCUDi" role="3clF47">
        <node concept="3clFbF" id="2xAA8jfCUOS" role="3cqZAp">
          <node concept="3K4zz7" id="2xAA8jfCPcX" role="3clFbG">
            <node concept="10M0yZ" id="2xAA8jfCPi4" role="3K4E3e">
              <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
              <ref role="3cqZAo" to="z60i:~Color.red" resolve="red" />
            </node>
            <node concept="10M0yZ" id="2xAA8jfCPqk" role="3K4GZi">
              <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
              <ref role="3cqZAo" to="z60i:~Color.black" resolve="black" />
            </node>
            <node concept="1SfVH9" id="2xAA8jfCOOf" role="3K4Cdx">
              <ref role="3cqZAo" node="2xAA8jfCGgn" resolve="highlighted" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2xAA8jfCUFY" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="kUGYC" id="2xAA8jfB$je" role="1FPzNG">
      <property role="TrG5h" value="hit" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="2xAA8jfB$lr" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3LmiP1" id="2xAA8jfB$lV" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2xAA8jfB$jf" role="1B3o_S" />
      <node concept="3clFbS" id="2xAA8jfB$jg" role="3clF47" />
      <node concept="10P_77" id="2xAA8jfB$jL" role="3clF45" />
    </node>
    <node concept="32q3_s" id="3nsHMGrYX5W" role="1FPzNG">
      <property role="TrG5h" value="hit" />
      <node concept="10P_77" id="3nsHMGrYXa2" role="1tU5fm" />
    </node>
    <node concept="3tBE6w" id="2ihDbyJQ8ew" role="1FPzNG">
      <node concept="9aQIb" id="2ihDbyJQ8ex" role="30jUnX">
        <node concept="3clFbS" id="2ihDbyJQ8ey" role="9aQI4">
          <node concept="3cpWs8" id="2ihDbyJQ8ez" role="3cqZAp">
            <node concept="3cpWsn" id="2ihDbyJQ8e$" role="3cpWs9">
              <property role="TrG5h" value="di" />
              <node concept="3LmiP1" id="2ihDbyJQ8e_" role="1tU5fm">
                <ref role="2XDbjv" node="2gyk5S1Dvn0" resolve="DDeviceInput" />
              </node>
              <node concept="2OqwBi" id="2ihDbyJQ8eA" role="33vP2m">
                <node concept="1SfVH9" id="2ihDbyJQ8eB" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                </node>
                <node concept="32jkxy" id="2ihDbyJQ8eC" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2ihDbyJQ8eD" role="3cqZAp">
            <node concept="1Wc70l" id="2ihDbyJQ8eE" role="3clFbw">
              <node concept="3J2VuX" id="2ihDbyJQ8eF" role="3uHU7w">
                <node concept="3y3z36" id="2ihDbyJQ8eG" role="3J2yhu">
                  <node concept="10Nm6u" id="2ihDbyJQ8eH" role="3uHU7w" />
                  <node concept="2OqwBi" id="2ihDbyJQ8eI" role="3uHU7B">
                    <node concept="2Wb9Zs" id="2ihDbyJQ8eJ" role="2Oq$k0" />
                    <node concept="1932wR" id="2ihDbyJQ8eK" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="2ihDbyJQ8eL" role="3uHU7B">
                <node concept="1Wc70l" id="2ihDbyJQ8eM" role="3uHU7B">
                  <node concept="2OqwBi" id="2ihDbyJQ8eN" role="3uHU7w">
                    <node concept="37vLTw" id="2ihDbyJQ8eO" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ihDbyJQ8e$" resolve="di" />
                    </node>
                    <node concept="32jkxy" id="2ihDbyJQ8eP" role="2OqNvi">
                      <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                    </node>
                  </node>
                  <node concept="2275Hy" id="2ihDbyJQ8eQ" role="3uHU7B">
                    <ref role="37wK5l" node="2xAA8jfB$je" resolve="hit" />
                    <node concept="2OqwBi" id="2ihDbyJQ8eR" role="37wK5m">
                      <node concept="37vLTw" id="2ihDbyJQ8eS" role="2Oq$k0">
                        <ref role="3cqZAo" node="2ihDbyJQ8e$" resolve="di" />
                      </node>
                      <node concept="32jkxy" id="2ihDbyJQ8eT" role="2OqNvi">
                        <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="2ihDbyJQ8eU" role="3uHU7w">
                  <node concept="3J2VuX" id="2ihDbyJQ8eV" role="3fr31v">
                    <node concept="2OqwBi" id="2ihDbyJQ8eW" role="3J2yhu">
                      <node concept="37vLTw" id="2ihDbyJQ8eX" role="2Oq$k0">
                        <ref role="3cqZAo" node="2ihDbyJQ8e$" resolve="di" />
                      </node>
                      <node concept="32jkxy" id="2ihDbyJQ8eY" role="2OqNvi">
                        <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2ihDbyJQ8eZ" role="3clFbx">
              <node concept="3clFbF" id="2ihDbyJQ8fa" role="3cqZAp">
                <node concept="E34o$" id="2ihDbyJQ8fb" role="3clFbG">
                  <node concept="3clFbT" id="2ihDbyJQ8fc" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="1SfVH9" id="2ihDbyJQ8fd" role="37vLTJ">
                    <ref role="3cqZAo" node="3nsHMGrYX5W" resolve="hit" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="2ihDbyJQ8fe" role="3eNLev">
              <node concept="1Wc70l" id="2ihDbyJQ8ff" role="3eO9$A">
                <node concept="1eOMI4" id="2ihDbyJQ8fg" role="3uHU7w">
                  <node concept="22lmx$" id="2ihDbyJQ8fh" role="1eOMHV">
                    <node concept="3fqX7Q" id="2ihDbyJQ8fi" role="3uHU7B">
                      <node concept="2OqwBi" id="2ihDbyJQ8fj" role="3fr31v">
                        <node concept="37vLTw" id="2ihDbyJQ8fk" role="2Oq$k0">
                          <ref role="3cqZAo" node="2ihDbyJQ8e$" resolve="di" />
                        </node>
                        <node concept="32jkxy" id="2ihDbyJQ8fl" role="2OqNvi">
                          <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2ihDbyJQ8fm" role="3uHU7w">
                      <node concept="2OqwBi" id="2ihDbyJQ8fn" role="2Oq$k0">
                        <node concept="37vLTw" id="2ihDbyJQ8fo" role="2Oq$k0">
                          <ref role="3cqZAo" node="2ihDbyJQ8e$" resolve="di" />
                        </node>
                        <node concept="32jkxy" id="2ihDbyJQ8fp" role="2OqNvi">
                          <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                        </node>
                      </node>
                      <node concept="3JPx81" id="2ihDbyJQ8fq" role="2OqNvi">
                        <node concept="10M0yZ" id="2ihDbyJQ8fr" role="25WWJ7">
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                          <ref role="3cqZAo" to="hyam:~KeyEvent.VK_ESCAPE" resolve="VK_ESCAPE" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1SfVH9" id="2ihDbyJQ8fs" role="3uHU7B">
                  <ref role="3cqZAo" node="3nsHMGrYX5W" resolve="hit" />
                </node>
              </node>
              <node concept="3clFbS" id="2ihDbyJQ8ft" role="3eOfB_">
                <node concept="3clFbF" id="2ihDbyJQ8fM" role="3cqZAp">
                  <node concept="E34o$" id="2ihDbyJQ8fN" role="3clFbG">
                    <node concept="3clFbT" id="2ihDbyJQ8fO" role="37vLTx" />
                    <node concept="1SfVH9" id="2ihDbyJQ8fP" role="37vLTJ">
                      <ref role="3cqZAo" node="3nsHMGrYX5W" resolve="hit" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="7ypR234gP0F" role="1FPzNG">
      <property role="TrG5h" value="dragging" />
      <node concept="10P_77" id="7ypR234gPtU" role="1tU5fm" />
    </node>
    <node concept="3tBE6w" id="7ypR234hc$$" role="1FPzNG">
      <node concept="3clFbJ" id="7ypR234hddW" role="30jUnX">
        <node concept="3fqX7Q" id="7ypR234hdrH" role="3clFbw">
          <node concept="1SfVH9" id="7ypR234hdtu" role="3fr31v">
            <ref role="3cqZAo" node="3nsHMGrYX5W" resolve="hit" />
          </node>
        </node>
        <node concept="3clFbS" id="7ypR234hddY" role="3clFbx">
          <node concept="3clFbF" id="7ypR234hdI5" role="3cqZAp">
            <node concept="E34o$" id="7ypR234heg1" role="3clFbG">
              <node concept="3clFbT" id="7ypR234he$m" role="37vLTx" />
              <node concept="1SfVH9" id="7ypR234hdI4" role="37vLTJ">
                <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1FPxxo" id="2xAA8jfBD2R" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3vn" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vo" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vp" role="1OA0iw" />
      <node concept="1OA0iZ" id="2xAA8jgzUsz" role="1OA3xZ">
        <ref role="1OA0iW" node="2xAA8jfCHII" resolve="lineColor" />
        <node concept="3clFbS" id="2xAA8jgzUs$" role="1OA0iB">
          <node concept="3clFbF" id="2xAA8jgzUyQ" role="3cqZAp">
            <node concept="2OqwBi" id="7nNrlO1FT_T" role="3clFbG">
              <node concept="2OqwBi" id="7nNrlO1FSRV" role="2Oq$k0">
                <node concept="2OqwBi" id="2xAA8jg$2aw" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="2xAA8jg$2ax" role="2Oq$k0" />
                  <node concept="3BHqF8" id="2xAA8jg$2ay" role="2OqNvi">
                    <ref role="3BGHVm" node="skgx$J4Z2F" resolve="DComponent" />
                  </node>
                </node>
                <node concept="1OA3xM" id="7nNrlO1FT4s" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                </node>
              </node>
              <node concept="liA8E" id="7nNrlO1FWwq" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="7nNrlO1FWHs" role="1FPzNG">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="paint" />
      <property role="1ePe$S" value="true" />
      <node concept="37vLTG" id="7nNrlO1FWXh" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="7nNrlO1FX0r" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7nNrlO1FWHt" role="1B3o_S" />
      <node concept="3clFbS" id="7nNrlO1FWHu" role="3clF47" />
      <node concept="3cqZAl" id="7nNrlO1FWR1" role="3clF45" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4E">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z4a" resolve="DRectangleShape" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="3tBE6w" id="3OZjsowsKi7" role="1FPzNG">
      <node concept="3clFbF" id="3OZjsowsLl5" role="30jUnX">
        <node concept="E34o$" id="3OZjsowsLPU" role="3clFbG">
          <node concept="2OqwBi" id="3OZjsowsMDH" role="37vLTx">
            <node concept="1SfVH9" id="3OZjsowsMak" role="2Oq$k0">
              <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
            </node>
            <node concept="2$Gk$L" id="3OZjsowsNhx" role="2OqNvi">
              <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
              <node concept="2OqwBi" id="3OZjsowsOjx" role="37wK5m">
                <node concept="1SfVH9" id="3OZjsowsNJI" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJBHAQJ0r1" resolve="size" />
                </node>
                <node concept="2$Gk$L" id="3OZjsowsP6B" role="2OqNvi">
                  <ref role="37wK5l" node="46vl3mDwqPk" resolve="toPoint" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1SfVH9" id="3OZjsowsLl4" role="37vLTJ">
            <ref role="3cqZAo" node="3OZjsowsF15" resolve="max" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="3HJBHAQJ0r1" role="1FPzNG">
      <property role="TrG5h" value="size" />
      <node concept="3LmiP1" id="3HJBHAQJ0Z0" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGXY5" resolve="DDimension" />
      </node>
      <node concept="3K4zz7" id="3HJBHAQJ4pV" role="33vP2m">
        <node concept="3KEV6E" id="3HJBHAQJ51q" role="3K4E3e">
          <ref role="2UJ2yc" node="4NMtPTvGXY5" resolve="DDimension" />
          <node concept="2Pygp_" id="3HJBHAQJ51r" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGXY6" resolve="width" />
            <node concept="3b6qkQ" id="3HJBHAQJ5dn" role="2PygpA">
              <property role="$nhwW" value="200.0d" />
            </node>
          </node>
          <node concept="2Pygp_" id="3HJBHAQJ51s" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGY55" resolve="height" />
            <node concept="3b6qkQ" id="3HJBHAQJ5qt" role="2PygpA">
              <property role="$nhwW" value="100.0d" />
            </node>
          </node>
        </node>
        <node concept="1SfVH9" id="3HJBHAQJ5y3" role="3K4GZi">
          <ref role="3cqZAo" node="3HJBHAQJ0r1" resolve="size" />
        </node>
        <node concept="3clFbC" id="3HJBHAQJ4bA" role="3K4Cdx">
          <node concept="10Nm6u" id="3HJBHAQJ4nn" role="3uHU7w" />
          <node concept="1SfVH9" id="3HJBHAQJ45v" role="3uHU7B">
            <ref role="3cqZAo" node="3HJBHAQJ0r1" resolve="size" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="10mRasGrb1A" role="1FPzNG">
      <property role="TrG5h" value="half" />
      <node concept="3LmiP1" id="10mRasGrboB" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="10mRasGrrEn" role="33vP2m">
        <node concept="2OqwBi" id="10mRasGrqUl" role="2Oq$k0">
          <node concept="1SfVH9" id="10mRasGrqyi" role="2Oq$k0">
            <ref role="3cqZAo" node="3HJBHAQJ0r1" resolve="size" />
          </node>
          <node concept="2$Gk$L" id="10mRasGrrp2" role="2OqNvi">
            <ref role="37wK5l" node="46vl3mDwqPk" resolve="toPoint" />
          </node>
        </node>
        <node concept="2$Gk$L" id="10mRasGrs85" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfBhgV" resolve="div" />
          <node concept="3b6qkQ" id="10mRasGrsPx" role="37wK5m">
            <property role="$nhwW" value="2.0d" />
          </node>
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="3HJBHAQJ9jz" role="1FPzNG">
      <property role="TrG5h" value="hit" />
      <node concept="37vLTG" id="3HJBHAQJ9j$" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3LmiP1" id="3HJBHAQJ9j_" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3HJBHAQJ9jA" role="1B3o_S" />
      <node concept="3clFbS" id="3HJBHAQJ9jB" role="3clF47">
        <node concept="3cpWs8" id="3HJBHAQJdZw" role="3cqZAp">
          <node concept="3cpWsn" id="3HJBHAQJdZz" role="3cpWs9">
            <property role="TrG5h" value="pos" />
            <node concept="3LmiP1" id="3HJBHAQJdZu" role="1tU5fm">
              <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
            </node>
            <node concept="1y4W85" id="10mRasGzvHp" role="33vP2m">
              <node concept="3cmrfG" id="10mRasGzvHq" role="1y58nS">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="1SfVH9" id="10mRasGzvHr" role="1y566C">
                <ref role="3cqZAo" node="1bLYJ3eDJSM" resolve="points" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJBHAQJeco" role="3cqZAp">
          <node concept="3cpWsn" id="3HJBHAQJecr" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3LmiP1" id="3HJBHAQJecm" role="1tU5fm">
              <ref role="2XDbjv" node="4NMtPTvGXY5" resolve="DDimension" />
            </node>
            <node concept="1SfVH9" id="3HJBHAQJelM" role="33vP2m">
              <ref role="3cqZAo" node="3HJBHAQJ0r1" resolve="size" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3HJBHAQJf_a" role="3cqZAp">
          <node concept="1Wc70l" id="3HJBHAQJqku" role="3cqZAk">
            <node concept="3eOVzh" id="3HJBHAQJs8d" role="3uHU7w">
              <node concept="3cpWs3" id="3HJBHAQJulz" role="3uHU7w">
                <node concept="2OqwBi" id="3HJBHAQJu$G" role="3uHU7w">
                  <node concept="37vLTw" id="3HJBHAQJutj" role="2Oq$k0">
                    <ref role="3cqZAo" node="3HJBHAQJecr" resolve="s" />
                  </node>
                  <node concept="32jkxy" id="3HJBHAQJuXC" role="2OqNvi">
                    <ref role="3cqZAo" node="4NMtPTvGY55" resolve="height" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3HJBHAQJs_K" role="3uHU7B">
                  <node concept="37vLTw" id="3HJBHAQJspy" role="2Oq$k0">
                    <ref role="3cqZAo" node="3HJBHAQJdZz" resolve="pos" />
                  </node>
                  <node concept="32jkxy" id="3HJBHAQJtqI" role="2OqNvi">
                    <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3HJBHAQJqJC" role="3uHU7B">
                <node concept="37vLTw" id="3HJBHAQJq$l" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJBHAQJ9j$" resolve="p" />
                </node>
                <node concept="32jkxy" id="3HJBHAQJrlc" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3HJBHAQJn1E" role="3uHU7B">
              <node concept="1Wc70l" id="3HJBHAQJiyY" role="3uHU7B">
                <node concept="3eOSWO" id="3HJBHAQJgT9" role="3uHU7B">
                  <node concept="2OqwBi" id="3HJBHAQJfIE" role="3uHU7B">
                    <node concept="37vLTw" id="3HJBHAQJfE9" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJBHAQJ9j$" resolve="p" />
                    </node>
                    <node concept="32jkxy" id="3HJBHAQJgje" role="2OqNvi">
                      <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3HJBHAQJhv_" role="3uHU7w">
                    <node concept="37vLTw" id="3HJBHAQJhl6" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJBHAQJdZz" resolve="pos" />
                    </node>
                    <node concept="32jkxy" id="3HJBHAQJi0K" role="2OqNvi">
                      <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                    </node>
                  </node>
                </node>
                <node concept="3eOVzh" id="3HJBHAQJk9X" role="3uHU7w">
                  <node concept="2OqwBi" id="3HJBHAQJiJb" role="3uHU7B">
                    <node concept="37vLTw" id="3HJBHAQJiDo" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJBHAQJ9j$" resolve="p" />
                    </node>
                    <node concept="32jkxy" id="3HJBHAQJjzA" role="2OqNvi">
                      <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="3HJBHAQJlCt" role="3uHU7w">
                    <node concept="2OqwBi" id="3HJBHAQJkzw" role="3uHU7B">
                      <node concept="37vLTw" id="3HJBHAQJkos" role="2Oq$k0">
                        <ref role="3cqZAo" node="3HJBHAQJdZz" resolve="pos" />
                      </node>
                      <node concept="32jkxy" id="3HJBHAQJl62" role="2OqNvi">
                        <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3HJBHAQJlXj" role="3uHU7w">
                      <node concept="37vLTw" id="3HJBHAQJlMO" role="2Oq$k0">
                        <ref role="3cqZAo" node="3HJBHAQJecr" resolve="s" />
                      </node>
                      <node concept="32jkxy" id="3HJBHAQJmgI" role="2OqNvi">
                        <ref role="3cqZAo" node="4NMtPTvGXY6" resolve="width" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="3HJBHAQJox8" role="3uHU7w">
                <node concept="2OqwBi" id="3HJBHAQJnhl" role="3uHU7B">
                  <node concept="37vLTw" id="3HJBHAQJnaR" role="2Oq$k0">
                    <ref role="3cqZAo" node="3HJBHAQJ9j$" resolve="p" />
                  </node>
                  <node concept="32jkxy" id="3HJBHAQJnUu" role="2OqNvi">
                    <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3HJBHAQJoWK" role="3uHU7w">
                  <node concept="37vLTw" id="3HJBHAQJoGG" role="2Oq$k0">
                    <ref role="3cqZAo" node="3HJBHAQJdZz" resolve="pos" />
                  </node>
                  <node concept="32jkxy" id="3HJBHAQJpQ7" role="2OqNvi">
                    <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3HJBHAQJ9kV" role="3clF45" />
    </node>
    <node concept="32q3_s" id="1bLYJ3eDJSM" role="1FPzNG">
      <property role="TrG5h" value="points" />
      <node concept="_YKpA" id="1bLYJ3eDKuy" role="1tU5fm">
        <node concept="3LmiP1" id="1bLYJ3eDKyF" role="_ZDj9">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="36be1Y" id="1bLYJ3eDLVe" role="33vP2m">
        <node concept="3KEV6E" id="10mRasH0qlF" role="2Gi6C2">
          <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
          <node concept="2Pygp_" id="10mRasH0qlG" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
            <node concept="3cpWsd" id="10mRasH0qlH" role="2PygpA">
              <node concept="2OqwBi" id="10mRasH0qlI" role="3uHU7B">
                <node concept="1SfVH9" id="10mRasH0qlJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                </node>
                <node concept="32jkxy" id="10mRasH0qlK" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="10mRasH0qlL" role="3uHU7w">
                <node concept="1SfVH9" id="10mRasH0qlM" role="2Oq$k0">
                  <ref role="3cqZAo" node="10mRasGrb1A" resolve="half" />
                </node>
                <node concept="32jkxy" id="10mRasH0qlN" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2Pygp_" id="10mRasH0qlO" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
            <node concept="3cpWsd" id="10mRasH0tYL" role="2PygpA">
              <node concept="2OqwBi" id="10mRasH0qlT" role="3uHU7B">
                <node concept="1SfVH9" id="10mRasH0qlU" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                </node>
                <node concept="32jkxy" id="10mRasH0qlV" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                </node>
              </node>
              <node concept="2OqwBi" id="10mRasH0qlQ" role="3uHU7w">
                <node concept="1SfVH9" id="10mRasH0qlR" role="2Oq$k0">
                  <ref role="3cqZAo" node="10mRasGrb1A" resolve="half" />
                </node>
                <node concept="32jkxy" id="10mRasH0qlS" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KEV6E" id="1bLYJ3eDMtA" role="2Gi6C2">
          <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
          <node concept="2Pygp_" id="1bLYJ3eDMtB" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
            <node concept="3cpWsd" id="10mRasGrlX7" role="2PygpA">
              <node concept="2OqwBi" id="1bLYJ3eDMtC" role="3uHU7B">
                <node concept="1SfVH9" id="1bLYJ3eDMtD" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                </node>
                <node concept="32jkxy" id="1bLYJ3eDMtE" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="10mRasGrm8r" role="3uHU7w">
                <node concept="1SfVH9" id="10mRasGrm8s" role="2Oq$k0">
                  <ref role="3cqZAo" node="10mRasGrb1A" resolve="half" />
                </node>
                <node concept="32jkxy" id="10mRasGrm8t" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2Pygp_" id="1bLYJ3eDMtF" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
            <node concept="3cpWs3" id="1bLYJ3eDMtG" role="2PygpA">
              <node concept="2OqwBi" id="1bLYJ3eDMtH" role="3uHU7w">
                <node concept="1SfVH9" id="1bLYJ3eDMtI" role="2Oq$k0">
                  <ref role="3cqZAo" node="10mRasGrb1A" resolve="half" />
                </node>
                <node concept="32jkxy" id="1bLYJ3eDMtJ" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                </node>
              </node>
              <node concept="2OqwBi" id="1bLYJ3eDMtK" role="3uHU7B">
                <node concept="1SfVH9" id="1bLYJ3eDMtL" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                </node>
                <node concept="32jkxy" id="1bLYJ3eDMtM" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KEV6E" id="10mRasH0s9p" role="2Gi6C2">
          <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
          <node concept="2Pygp_" id="10mRasH0s9q" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
            <node concept="3cpWs3" id="10mRasH0uvO" role="2PygpA">
              <node concept="2OqwBi" id="10mRasH0s9s" role="3uHU7B">
                <node concept="1SfVH9" id="10mRasH0s9t" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                </node>
                <node concept="32jkxy" id="10mRasH0s9u" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="10mRasH0s9v" role="3uHU7w">
                <node concept="1SfVH9" id="10mRasH0s9w" role="2Oq$k0">
                  <ref role="3cqZAo" node="10mRasGrb1A" resolve="half" />
                </node>
                <node concept="32jkxy" id="10mRasH0s9x" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2Pygp_" id="10mRasH0s9y" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
            <node concept="3cpWs3" id="10mRasH0s9z" role="2PygpA">
              <node concept="2OqwBi" id="10mRasH0s9$" role="3uHU7w">
                <node concept="1SfVH9" id="10mRasH0s9_" role="2Oq$k0">
                  <ref role="3cqZAo" node="10mRasGrb1A" resolve="half" />
                </node>
                <node concept="32jkxy" id="10mRasH0s9A" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                </node>
              </node>
              <node concept="2OqwBi" id="10mRasH0s9B" role="3uHU7B">
                <node concept="1SfVH9" id="10mRasH0s9C" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                </node>
                <node concept="32jkxy" id="10mRasH0s9D" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KEV6E" id="1bLYJ3eDNim" role="2Gi6C2">
          <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
          <node concept="2Pygp_" id="1bLYJ3eDNin" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
            <node concept="3cpWs3" id="1bLYJ3eDXEy" role="2PygpA">
              <node concept="2OqwBi" id="1bLYJ3eDY4y" role="3uHU7w">
                <node concept="1SfVH9" id="1bLYJ3eDXLm" role="2Oq$k0">
                  <ref role="3cqZAo" node="10mRasGrb1A" resolve="half" />
                </node>
                <node concept="32jkxy" id="1bLYJ3eDYpe" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="1bLYJ3eDNio" role="3uHU7B">
                <node concept="1SfVH9" id="1bLYJ3eDNip" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                </node>
                <node concept="32jkxy" id="1bLYJ3eDNiq" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2Pygp_" id="1bLYJ3eDNir" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
            <node concept="3cpWsd" id="10mRasGrmKG" role="2PygpA">
              <node concept="2OqwBi" id="10mRasGrnPq" role="3uHU7w">
                <node concept="1SfVH9" id="10mRasGrnsv" role="2Oq$k0">
                  <ref role="3cqZAo" node="10mRasGrb1A" resolve="half" />
                </node>
                <node concept="32jkxy" id="10mRasGroh8" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                </node>
              </node>
              <node concept="2OqwBi" id="1bLYJ3eDNiw" role="3uHU7B">
                <node concept="1SfVH9" id="1bLYJ3eDNix" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                </node>
                <node concept="32jkxy" id="1bLYJ3eDNiy" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="1bLYJ3eD_ud" role="1FPzNG">
      <property role="TrG5h" value="lineSegments" />
      <node concept="_YKpA" id="1bLYJ3eDAkv" role="1tU5fm">
        <node concept="3LmiP1" id="1bLYJ3eDAsu" role="_ZDj9">
          <ref role="2XDbjv" node="6YJvVULTHtj" resolve="DLineSegment" />
        </node>
      </node>
      <node concept="36be1Y" id="1bLYJ3eDBwb" role="33vP2m">
        <node concept="3KEV6E" id="1bLYJ3eD_uf" role="2Gi6C2">
          <ref role="2UJ2yc" node="6YJvVULTHtj" resolve="DLineSegment" />
          <node concept="2Pygp_" id="1bLYJ3eD_ug" role="2Pygpa">
            <ref role="2Pygpw" node="6YJvVULTHtD" resolve="a" />
            <node concept="1y4W85" id="1bLYJ3eDOAv" role="2PygpA">
              <node concept="3cmrfG" id="1bLYJ3eDOK1" role="1y58nS">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="1SfVH9" id="1bLYJ3eD_uh" role="1y566C">
                <ref role="3cqZAo" node="1bLYJ3eDJSM" resolve="points" />
              </node>
            </node>
          </node>
          <node concept="2Pygp_" id="1bLYJ3eD_ui" role="2Pygpa">
            <ref role="2Pygpw" node="6YJvVULTIso" resolve="b" />
            <node concept="1y4W85" id="1bLYJ3eDPIm" role="2PygpA">
              <node concept="3cmrfG" id="1bLYJ3eDPOn" role="1y58nS">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="1SfVH9" id="1bLYJ3eDOQG" role="1y566C">
                <ref role="3cqZAo" node="1bLYJ3eDJSM" resolve="points" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3KEV6E" id="1bLYJ3eDBOt" role="2Gi6C2">
          <ref role="2UJ2yc" node="6YJvVULTHtj" resolve="DLineSegment" />
          <node concept="2Pygp_" id="1bLYJ3eDBOu" role="2Pygpa">
            <ref role="2Pygpw" node="6YJvVULTHtD" resolve="a" />
            <node concept="1y4W85" id="1bLYJ3eDQML" role="2PygpA">
              <node concept="3cmrfG" id="1bLYJ3eDQSM" role="1y58nS">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="1SfVH9" id="1bLYJ3eDPV8" role="1y566C">
                <ref role="3cqZAo" node="1bLYJ3eDJSM" resolve="points" />
              </node>
            </node>
          </node>
          <node concept="2Pygp_" id="1bLYJ3eDBOw" role="2Pygpa">
            <ref role="2Pygpw" node="6YJvVULTIso" resolve="b" />
            <node concept="1y4W85" id="1bLYJ3eDRRd" role="2PygpA">
              <node concept="3cmrfG" id="1bLYJ3eDRXe" role="1y58nS">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="1SfVH9" id="1bLYJ3eDQZz" role="1y566C">
                <ref role="3cqZAo" node="1bLYJ3eDJSM" resolve="points" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3KEV6E" id="1bLYJ3eDC4E" role="2Gi6C2">
          <ref role="2UJ2yc" node="6YJvVULTHtj" resolve="DLineSegment" />
          <node concept="2Pygp_" id="1bLYJ3eDC4F" role="2Pygpa">
            <ref role="2Pygpw" node="6YJvVULTHtD" resolve="a" />
            <node concept="1y4W85" id="1bLYJ3eDSVC" role="2PygpA">
              <node concept="3cmrfG" id="1bLYJ3eDT1D" role="1y58nS">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="1SfVH9" id="1bLYJ3eDS3Z" role="1y566C">
                <ref role="3cqZAo" node="1bLYJ3eDJSM" resolve="points" />
              </node>
            </node>
          </node>
          <node concept="2Pygp_" id="1bLYJ3eDC4H" role="2Pygpa">
            <ref role="2Pygpw" node="6YJvVULTIso" resolve="b" />
            <node concept="1y4W85" id="1bLYJ3eDU04" role="2PygpA">
              <node concept="3cmrfG" id="1bLYJ3eDU65" role="1y58nS">
                <property role="3cmrfH" value="3" />
              </node>
              <node concept="1SfVH9" id="1bLYJ3eDT8q" role="1y566C">
                <ref role="3cqZAo" node="1bLYJ3eDJSM" resolve="points" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3KEV6E" id="1bLYJ3eDCqS" role="2Gi6C2">
          <ref role="2UJ2yc" node="6YJvVULTHtj" resolve="DLineSegment" />
          <node concept="2Pygp_" id="1bLYJ3eDCqT" role="2Pygpa">
            <ref role="2Pygpw" node="6YJvVULTHtD" resolve="a" />
            <node concept="1y4W85" id="1bLYJ3eDUWi" role="2PygpA">
              <node concept="3cmrfG" id="1bLYJ3eDV2j" role="1y58nS">
                <property role="3cmrfH" value="3" />
              </node>
              <node concept="1SfVH9" id="1bLYJ3eDUcQ" role="1y566C">
                <ref role="3cqZAo" node="1bLYJ3eDJSM" resolve="points" />
              </node>
            </node>
          </node>
          <node concept="2Pygp_" id="1bLYJ3eDCqV" role="2Pygpa">
            <ref role="2Pygpw" node="6YJvVULTIso" resolve="b" />
            <node concept="1y4W85" id="1bLYJ3eDVNY" role="2PygpA">
              <node concept="3cmrfG" id="1bLYJ3eDVVZ" role="1y58nS">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="1SfVH9" id="1bLYJ3eDCqW" role="1y566C">
                <ref role="3cqZAo" node="1bLYJ3eDJSM" resolve="points" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="1bLYJ3eE75b" role="1FPzNG">
      <property role="TrG5h" value="intersection" />
      <node concept="37vLTG" id="1bLYJ3eE75c" role="3clF46">
        <property role="TrG5h" value="outside" />
        <node concept="3LmiP1" id="1bLYJ3eE75d" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1bLYJ3eE75e" role="1B3o_S" />
      <node concept="3clFbS" id="1bLYJ3eE75f" role="3clF47">
        <node concept="3cpWs8" id="10mRasGuhuI" role="3cqZAp">
          <node concept="3cpWsn" id="10mRasGuhuL" role="3cpWs9">
            <property role="TrG5h" value="segment" />
            <node concept="3LmiP1" id="10mRasGuhuG" role="1tU5fm">
              <ref role="2XDbjv" node="6YJvVULTHtj" resolve="DLineSegment" />
            </node>
            <node concept="3KEV6E" id="10mRasGuiUy" role="33vP2m">
              <ref role="2UJ2yc" node="6YJvVULTHtj" resolve="DLineSegment" />
              <node concept="2Pygp_" id="10mRasGuiUz" role="2Pygpa">
                <ref role="2Pygpw" node="6YJvVULTHtD" resolve="a" />
                <node concept="37vLTw" id="10mRasGujpZ" role="2PygpA">
                  <ref role="3cqZAo" node="1bLYJ3eE75c" resolve="outside" />
                </node>
              </node>
              <node concept="2Pygp_" id="10mRasGuiU$" role="2Pygpa">
                <ref role="2Pygpw" node="6YJvVULTIso" resolve="b" />
                <node concept="1SfVH9" id="10mRasGujTJ" role="2PygpA">
                  <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1bLYJ3eE88K" role="3cqZAp">
          <node concept="2GrKxI" id="1bLYJ3eE88L" role="2Gsz3X">
            <property role="TrG5h" value="line" />
          </node>
          <node concept="1SfVH9" id="1bLYJ3eE8Dv" role="2GsD0m">
            <ref role="3cqZAo" node="1bLYJ3eD_ud" resolve="lineSegments" />
          </node>
          <node concept="3clFbS" id="1bLYJ3eE88N" role="2LFqv$">
            <node concept="3clFbJ" id="1bLYJ3eE8Z6" role="3cqZAp">
              <node concept="2OqwBi" id="1bLYJ3eE9dt" role="3clFbw">
                <node concept="2GrUjf" id="1bLYJ3eE95x" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1bLYJ3eE88L" resolve="line" />
                </node>
                <node concept="2$Gk$L" id="1bLYJ3eE9AS" role="2OqNvi">
                  <ref role="37wK5l" node="1bLYJ3eBZGa" resolve="hasIntersection" />
                  <node concept="37vLTw" id="10mRasGukTk" role="37wK5m">
                    <ref role="3cqZAo" node="10mRasGuhuL" resolve="segment" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1bLYJ3eE8Z8" role="3clFbx">
                <node concept="3cpWs6" id="1bLYJ3eE9RE" role="3cqZAp">
                  <node concept="2OqwBi" id="1bLYJ3eEag0" role="3cqZAk">
                    <node concept="2GrUjf" id="1bLYJ3eEa6f" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="1bLYJ3eE88L" resolve="line" />
                    </node>
                    <node concept="2$Gk$L" id="1bLYJ3eEaDL" role="2OqNvi">
                      <ref role="37wK5l" node="1bLYJ3eBKnI" resolve="intersection" />
                      <node concept="37vLTw" id="1bLYJ3eEaTT" role="37wK5m">
                        <ref role="3cqZAo" node="10mRasGuhuL" resolve="segment" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1bLYJ3eE8jC" role="3cqZAp">
          <node concept="1SfVH9" id="1bLYJ3eI67p" role="3cqZAk">
            <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
          </node>
        </node>
      </node>
      <node concept="3LmiP1" id="1bLYJ3eE75r" role="3clF45">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="1FPxxo" id="3HJBHAQJ8D5" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3vt" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vu" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vv" role="1OA0iw" />
      <node concept="1OA0iZ" id="3HJBHAQJJie" role="1OA3xZ">
        <ref role="1OA0iW" node="3HJBHAQJ0r1" resolve="size" />
        <node concept="3clFbS" id="3HJBHAQJJif" role="1OA0iB">
          <node concept="3clFbF" id="3HJBHAQJJlO" role="3cqZAp">
            <node concept="2OqwBi" id="3HJBHAQJKOS" role="3clFbG">
              <node concept="2OqwBi" id="3HJBHAQJJUF" role="2Oq$k0">
                <node concept="2OqwBi" id="3HJBHAQJJrI" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="3HJBHAQJJlN" role="2Oq$k0" />
                  <node concept="3BHqF8" id="3HJBHAQJJMY" role="2OqNvi">
                    <ref role="3BGHVm" node="skgx$J4Z2F" resolve="DComponent" />
                  </node>
                </node>
                <node concept="1OA3xM" id="3HJBHAQJKiT" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                </node>
              </node>
              <node concept="liA8E" id="3HJBHAQJMKn" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="3HJBHAQJ9kW" role="1FPzNG">
      <property role="TrG5h" value="paint" />
      <property role="1ePe$S" value="true" />
      <node concept="37vLTG" id="3HJBHAQJ9kX" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="3HJBHAQJ9kY" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3HJBHAQJ9kZ" role="1B3o_S" />
      <node concept="3clFbS" id="3HJBHAQJ9l0" role="3clF47">
        <node concept="3cpWs8" id="3HJBHAQJw3X" role="3cqZAp">
          <node concept="3cpWsn" id="3HJBHAQJw3W" role="3cpWs9">
            <property role="TrG5h" value="p" />
            <node concept="3LmiP1" id="3HJBHAQJwAf" role="1tU5fm">
              <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
            </node>
            <node concept="1y4W85" id="10mRasGwXZ2" role="33vP2m">
              <node concept="3cmrfG" id="10mRasGwYiw" role="1y58nS">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="1SfVH9" id="3HJBHAQJx8f" role="1y566C">
                <ref role="3cqZAo" node="1bLYJ3eDJSM" resolve="points" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJBHAQJw41" role="3cqZAp">
          <node concept="3cpWsn" id="3HJBHAQJw40" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3LmiP1" id="3HJBHAQJwDr" role="1tU5fm">
              <ref role="2XDbjv" node="4NMtPTvGXY5" resolve="DDimension" />
            </node>
            <node concept="1SfVH9" id="3HJBHAQJxow" role="33vP2m">
              <ref role="3cqZAo" node="3HJBHAQJ0r1" resolve="size" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3HJBHAQJw4g" role="3cqZAp">
          <node concept="2YIFZM" id="3HJBHAQJwhl" role="3clFbG">
            <ref role="1Pybhc" to="u4ym:7wc8RN4MMv1" resolve="D2D" />
            <ref role="37wK5l" to="u4ym:7wc8RN4MM$Y" resolve="drawRect" />
            <node concept="37vLTw" id="3HJBHAQJwhm" role="37wK5m">
              <ref role="3cqZAo" node="3HJBHAQJ9kX" resolve="g" />
            </node>
            <node concept="2OqwBi" id="3HJBHAQJ$ry" role="37wK5m">
              <node concept="37vLTw" id="3HJBHAQJ$c9" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJBHAQJw3W" resolve="p" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQJBqg" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJBHAQJ_Ot" role="37wK5m">
              <node concept="37vLTw" id="3HJBHAQJ_rk" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJBHAQJw3W" resolve="p" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQJC6P" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJBHAQJDMn" role="37wK5m">
              <node concept="37vLTw" id="3HJBHAQJDyN" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJBHAQJw40" resolve="s" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQJIpa" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhKXZ" resolve="width" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJBHAQJEWG" role="37wK5m">
              <node concept="37vLTw" id="3HJBHAQJELP" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJBHAQJw40" resolve="s" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQJJde" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhKY9" resolve="height" />
              </node>
            </node>
            <node concept="1SfVH9" id="681X9TyZb7v" role="37wK5m">
              <ref role="3cqZAo" node="3nsHMGrYPEM" resolve="color" />
            </node>
            <node concept="1SfVH9" id="681X9TyZbyy" role="37wK5m">
              <ref role="3cqZAo" node="2xAA8jfCHII" resolve="lineColor" />
            </node>
            <node concept="1SfVH9" id="681X9TyZbla" role="37wK5m">
              <ref role="3cqZAo" node="3nsHMGrYS6G" resolve="text" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3HJBHAQJ9lt" role="3clF45" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4F">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z3d" resolve="DPanel" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="3XDIiT4chy9" role="1FPzNG">
      <property role="TrG5h" value="content" />
      <node concept="3rvAFt" id="3XDIiT4chz2" role="1tU5fm">
        <node concept="3LmiP1" id="3XDIiT4cj9r" role="3rvQeY">
          <ref role="2XDbjv" node="skgx$J4Z2F" resolve="DComponent" />
        </node>
        <node concept="3uibUv" id="3XDIiT4cjao" role="3rvSg0">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3K4zz7" id="3XDIiT4cmDz" role="33vP2m">
        <node concept="2ShNRf" id="3XDIiT4cmHg" role="3K4E3e">
          <node concept="3rGOSV" id="3XDIiT4cusv" role="2ShVmc">
            <node concept="3LmiP1" id="3XDIiT4cvx3" role="3rHrn6">
              <ref role="2XDbjv" node="skgx$J4Z2F" resolve="DComponent" />
            </node>
            <node concept="3uibUv" id="3XDIiT4cwdd" role="3rHtpV">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
        <node concept="1SfVH9" id="3XDIiT4ctZF" role="3K4GZi">
          <ref role="3cqZAo" node="3XDIiT4chy9" resolve="content" />
        </node>
        <node concept="3clFbC" id="3XDIiT4cmf4" role="3K4Cdx">
          <node concept="10Nm6u" id="3XDIiT4cm_S" role="3uHU7w" />
          <node concept="1SfVH9" id="3XDIiT4clR8" role="3uHU7B">
            <ref role="3cqZAo" node="3XDIiT4chy9" resolve="content" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="3XDIiT4ck_n" role="1FPzNG">
      <property role="TrG5h" value="layoutManager" />
      <node concept="3uibUv" id="3XDIiT4ckB7" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~LayoutManager" resolve="LayoutManager" />
      </node>
    </node>
    <node concept="32q3_s" id="3XDIiT4cwh0" role="1FPzNG">
      <property role="3K1B09" value="true" />
      <property role="TrG5h" value="components" />
      <node concept="2hMVRd" id="3XDIiT4cwmB" role="1tU5fm">
        <node concept="3LmiP1" id="3XDIiT4cwpy" role="2hN53Y">
          <ref role="2XDbjv" node="skgx$J4Z2F" resolve="DComponent" />
        </node>
      </node>
      <node concept="2OqwBi" id="3XDIiT4cycz" role="33vP2m">
        <node concept="1SfVH9" id="3XDIiT4cxFx" role="2Oq$k0">
          <ref role="3cqZAo" node="3XDIiT4chy9" resolve="content" />
        </node>
        <node concept="3lbrtF" id="3XDIiT4czJx" role="2OqNvi" />
      </node>
    </node>
    <node concept="1FPxxo" id="3XDIiT4clmy" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3vz" role="1FPzNG">
      <node concept="1OA3wd" id="3XDIiT4czNO" role="1OA3wj">
        <property role="TrG5h" value="panel" />
        <node concept="3uibUv" id="3XDIiT4cAHJ" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3v$" role="1OA0iy">
        <node concept="3clFbF" id="3XDIiT4cALK" role="3cqZAp">
          <node concept="37vLTI" id="3XDIiT4cBgz" role="3clFbG">
            <node concept="2ShNRf" id="3XDIiT4cBpl" role="37vLTx">
              <node concept="1pGfFk" id="3XDIiT4cBnT" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="1SfVH9" id="3XDIiT4cBs1" role="37wK5m">
                  <ref role="3cqZAo" node="3XDIiT4ck_n" resolve="layoutManager" />
                </node>
              </node>
            </node>
            <node concept="5IyTM" id="3XDIiT4cALJ" role="37vLTJ">
              <ref role="3cqZAo" node="3XDIiT4czNO" resolve="panel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3XDIiT4cBEw" role="3cqZAp">
          <node concept="37vLTI" id="3XDIiT4cC44" role="3clFbG">
            <node concept="5IyTM" id="3XDIiT4cCbx" role="37vLTx">
              <ref role="3cqZAo" node="3XDIiT4czNO" resolve="panel" />
            </node>
            <node concept="5IyTM" id="3XDIiT4cBEu" role="37vLTJ">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3v_" role="1OA0iw">
        <node concept="3clFbF" id="3XDIiT4cCjH" role="3cqZAp">
          <node concept="37vLTI" id="3XDIiT4cCMu" role="3clFbG">
            <node concept="10Nm6u" id="3XDIiT4cCSw" role="37vLTx" />
            <node concept="5IyTM" id="3XDIiT4cCjG" role="37vLTJ">
              <ref role="3cqZAo" node="3XDIiT4czNO" resolve="panel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="3XDIiT4cD1p" role="1OA3xZ">
        <ref role="1OA0iW" node="3XDIiT4chy9" resolve="content" />
        <node concept="3clFbS" id="3XDIiT4cD1q" role="1OA0iB">
          <node concept="3clFbF" id="3XDIiT4cIPh" role="3cqZAp">
            <node concept="2OqwBi" id="3XDIiT4cQq4" role="3clFbG">
              <node concept="2OqwBi" id="3XDIiT4cJat" role="2Oq$k0">
                <node concept="1OA3xx" id="3XDIiT4cIPf" role="2Oq$k0" />
                <node concept="3zZkjj" id="3XDIiT4cLaC" role="2OqNvi">
                  <node concept="1bVj0M" id="3XDIiT4cLaE" role="23t8la">
                    <node concept="3clFbS" id="3XDIiT4cLaF" role="1bW5cS">
                      <node concept="3clFbF" id="3XDIiT4cLmn" role="3cqZAp">
                        <node concept="3fqX7Q" id="3XDIiT4cOI6" role="3clFbG">
                          <node concept="2OqwBi" id="3XDIiT4cOI8" role="3fr31v">
                            <node concept="1OA3xA" id="3XDIiT4cOI9" role="2Oq$k0" />
                            <node concept="2Nt0df" id="3XDIiT4cOIa" role="2OqNvi">
                              <node concept="2OqwBi" id="3XDIiT4cP3T" role="38cxEo">
                                <node concept="37vLTw" id="3XDIiT4cONp" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3XDIiT4cLaG" resolve="c" />
                                </node>
                                <node concept="3AY5_j" id="3XDIiT4cQ8Z" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3XDIiT4cLaG" role="1bW2Oz">
                      <property role="TrG5h" value="c" />
                      <node concept="2jxLKc" id="3XDIiT4cLaH" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2es0OD" id="3XDIiT4cRtw" role="2OqNvi">
                <node concept="1bVj0M" id="3XDIiT4cRty" role="23t8la">
                  <node concept="3clFbS" id="3XDIiT4cRtz" role="1bW5cS">
                    <node concept="3clFbF" id="3XDIiT4cRJi" role="3cqZAp">
                      <node concept="2OqwBi" id="3XDIiT4cSl$" role="3clFbG">
                        <node concept="5IyTM" id="3XDIiT4cRJh" role="2Oq$k0">
                          <ref role="3cqZAo" node="3XDIiT4czNO" resolve="panel" />
                        </node>
                        <node concept="liA8E" id="3XDIiT4cU6l" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.remove(java.awt.Component)" resolve="remove" />
                          <node concept="2OqwBi" id="3XDIiT4cWSC" role="37wK5m">
                            <node concept="2OqwBi" id="3XDIiT4cUQ3" role="2Oq$k0">
                              <node concept="37vLTw" id="3XDIiT4cUqO" role="2Oq$k0">
                                <ref role="3cqZAo" node="3XDIiT4cRt$" resolve="c" />
                              </node>
                              <node concept="3AY5_j" id="3XDIiT4cW1y" role="2OqNvi" />
                            </node>
                            <node concept="1OA3xM" id="3XDIiT4cXDp" role="2OqNvi">
                              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3XDIiT4cRt$" role="1bW2Oz">
                    <property role="TrG5h" value="c" />
                    <node concept="2jxLKc" id="3XDIiT4cRt_" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3XDIiT4cZFA" role="3cqZAp">
            <node concept="2OqwBi" id="3XDIiT4cZFB" role="3clFbG">
              <node concept="2OqwBi" id="3XDIiT4cZFC" role="2Oq$k0">
                <node concept="1OA3xA" id="3XDIiT4d0kJ" role="2Oq$k0" />
                <node concept="3zZkjj" id="3XDIiT4cZFE" role="2OqNvi">
                  <node concept="1bVj0M" id="3XDIiT4cZFF" role="23t8la">
                    <node concept="3clFbS" id="3XDIiT4cZFG" role="1bW5cS">
                      <node concept="3clFbF" id="3XDIiT4cZFH" role="3cqZAp">
                        <node concept="3fqX7Q" id="3XDIiT4cZFI" role="3clFbG">
                          <node concept="2OqwBi" id="3XDIiT4cZFJ" role="3fr31v">
                            <node concept="1OA3xx" id="3XDIiT4d0DY" role="2Oq$k0" />
                            <node concept="2Nt0df" id="3XDIiT4cZFL" role="2OqNvi">
                              <node concept="2OqwBi" id="3XDIiT4cZFM" role="38cxEo">
                                <node concept="37vLTw" id="3XDIiT4cZFN" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3XDIiT4cZFP" resolve="c" />
                                </node>
                                <node concept="3AY5_j" id="3XDIiT4cZFO" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3XDIiT4cZFP" role="1bW2Oz">
                      <property role="TrG5h" value="c" />
                      <node concept="2jxLKc" id="3XDIiT4cZFQ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2es0OD" id="3XDIiT4cZFR" role="2OqNvi">
                <node concept="1bVj0M" id="3XDIiT4cZFS" role="23t8la">
                  <node concept="3clFbS" id="3XDIiT4cZFT" role="1bW5cS">
                    <node concept="3clFbF" id="3XDIiT4cZFU" role="3cqZAp">
                      <node concept="2OqwBi" id="3XDIiT4cZFV" role="3clFbG">
                        <node concept="5IyTM" id="3XDIiT4cZFW" role="2Oq$k0">
                          <ref role="3cqZAo" node="3XDIiT4czNO" resolve="panel" />
                        </node>
                        <node concept="liA8E" id="3XDIiT4cZFX" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                          <node concept="2OqwBi" id="3XDIiT4cZFY" role="37wK5m">
                            <node concept="2OqwBi" id="3XDIiT4cZFZ" role="2Oq$k0">
                              <node concept="37vLTw" id="3XDIiT4cZG0" role="2Oq$k0">
                                <ref role="3cqZAo" node="3XDIiT4cZG3" resolve="c" />
                              </node>
                              <node concept="3AY5_j" id="3XDIiT4cZG1" role="2OqNvi" />
                            </node>
                            <node concept="1OA3xM" id="3XDIiT4cZG2" role="2OqNvi">
                              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3XDIiT4d2jG" role="37wK5m">
                            <node concept="37vLTw" id="3XDIiT4d1Kg" role="2Oq$k0">
                              <ref role="3cqZAo" node="3XDIiT4cZG3" resolve="c" />
                            </node>
                            <node concept="3AV6Ez" id="3XDIiT4d3zv" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3XDIiT4cZG3" role="1bW2Oz">
                    <property role="TrG5h" value="c" />
                    <node concept="2jxLKc" id="3XDIiT4cZG4" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3XDIiT4cD5N" role="3cqZAp">
            <node concept="2OqwBi" id="3XDIiT4cD$_" role="3clFbG">
              <node concept="5IyTM" id="3XDIiT4cD5M" role="2Oq$k0">
                <ref role="3cqZAo" node="3XDIiT4czNO" resolve="panel" />
              </node>
              <node concept="liA8E" id="3XDIiT4cFSu" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.invalidate()" resolve="invalidate" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3XDIiT4cG3D" role="3cqZAp">
            <node concept="2OqwBi" id="3XDIiT4cGyW" role="3clFbG">
              <node concept="5IyTM" id="3XDIiT4cG3B" role="2Oq$k0">
                <ref role="3cqZAo" node="3XDIiT4czNO" resolve="panel" />
              </node>
              <node concept="liA8E" id="3XDIiT4cIcn" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4G">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z3O" resolve="DMultiLineShape" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="5x0Fo$V6e0j" role="1FPzNG">
      <property role="TrG5h" value="text" />
      <property role="KodbT" value="true" />
      <node concept="17QB3L" id="5x0Fo$V6fLM" role="1tU5fm" />
    </node>
    <node concept="32q3_s" id="2ihDbyJLAdG" role="1FPzNG">
      <property role="TrG5h" value="joints" />
      <node concept="_YKpA" id="2ihDbyJLBow" role="1tU5fm">
        <node concept="3LmiP1" id="2ihDbyJLBuF" role="_ZDj9">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="10mRasGpZJ8" role="1FPzNG">
      <property role="TrG5h" value="beginPoint" />
      <node concept="3LmiP1" id="10mRasGpZJ9" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="32q3_s" id="6lHrNJlyP$n" role="1FPzNG">
      <property role="TrG5h" value="endPoint" />
      <node concept="3LmiP1" id="6lHrNJlyP_g" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="32q3_s" id="2ihDbyJMAjR" role="1FPzNG">
      <property role="TrG5h" value="points" />
      <node concept="_YKpA" id="2ihDbyJMAFN" role="1tU5fm">
        <node concept="3LmiP1" id="2ihDbyJMAMD" role="_ZDj9">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="36be1Y" id="2ihDbyJMClk" role="33vP2m">
        <node concept="1SfVH9" id="2ihDbyJMCM2" role="2Gi6C2">
          <ref role="3cqZAo" node="10mRasGpZJ8" resolve="beginPoint" />
        </node>
        <node concept="1SfVH9" id="2ihDbyJMD5x" role="2Gi6C2">
          <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
        </node>
        <node concept="1SfVH9" id="2ihDbyJMCv6" role="2Gi6C2">
          <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="1bLYJ3eDu7H" role="1FPzNG">
      <property role="TrG5h" value="lineSegments" />
      <node concept="_YKpA" id="2ihDbyJMTTi" role="1tU5fm">
        <node concept="3LmiP1" id="1bLYJ3eDuxt" role="_ZDj9">
          <ref role="2XDbjv" node="6YJvVULTHtj" resolve="DLineSegment" />
        </node>
      </node>
      <node concept="2ShNRf" id="2ihDbyJP6Mx" role="33vP2m">
        <node concept="kMnCb" id="2ihDbyJP7iK" role="2ShVmc">
          <node concept="1bVj0M" id="2ihDbyJP7yq" role="kMx8a">
            <node concept="3clFbS" id="2ihDbyJP7yr" role="1bW5cS">
              <node concept="3cpWs8" id="2ihDbyJPac4" role="3cqZAp">
                <node concept="3cpWsn" id="2ihDbyJPac7" role="3cpWs9">
                  <property role="TrG5h" value="pl" />
                  <node concept="_YKpA" id="2ihDbyJPac0" role="1tU5fm">
                    <node concept="3LmiP1" id="2ihDbyJPasB" role="_ZDj9">
                      <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
                    </node>
                  </node>
                  <node concept="1SfVH9" id="2ihDbyJPbv4" role="33vP2m">
                    <ref role="3cqZAo" node="2ihDbyJMAjR" resolve="points" />
                  </node>
                </node>
              </node>
              <node concept="1Dw8fO" id="2ihDbyJP7OS" role="3cqZAp">
                <node concept="3cpWsn" id="2ihDbyJP7OT" role="1Duv9x">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="2ihDbyJP85e" role="1tU5fm" />
                  <node concept="3cmrfG" id="2ihDbyJP8RL" role="33vP2m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3clFbS" id="2ihDbyJP7OU" role="2LFqv$">
                  <node concept="2n63Yl" id="2ihDbyJPg$p" role="3cqZAp">
                    <node concept="3KEV6E" id="2ihDbyJPgQ3" role="2n6tg2">
                      <ref role="2UJ2yc" node="6YJvVULTHtj" resolve="DLineSegment" />
                      <node concept="2Pygp_" id="2ihDbyJPgQ4" role="2Pygpa">
                        <ref role="2Pygpw" node="6YJvVULTHtD" resolve="a" />
                        <node concept="1y4W85" id="2ihDbyJPhJX" role="2PygpA">
                          <node concept="3cpWsd" id="2ihDbyJPjN8" role="1y58nS">
                            <node concept="3cmrfG" id="2ihDbyJPjOG" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="37vLTw" id="2ihDbyJPjvZ" role="3uHU7B">
                              <ref role="3cqZAo" node="2ihDbyJP7OT" resolve="i" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="2ihDbyJPhtq" role="1y566C">
                            <ref role="3cqZAo" node="2ihDbyJPac7" resolve="pl" />
                          </node>
                        </node>
                      </node>
                      <node concept="2Pygp_" id="2ihDbyJPgQ5" role="2Pygpa">
                        <ref role="2Pygpw" node="6YJvVULTIso" resolve="b" />
                        <node concept="1y4W85" id="2ihDbyJPiRx" role="2PygpA">
                          <node concept="37vLTw" id="2ihDbyJPjcf" role="1y58nS">
                            <ref role="3cqZAo" node="2ihDbyJP7OT" resolve="i" />
                          </node>
                          <node concept="37vLTw" id="2ihDbyJPhMo" role="1y566C">
                            <ref role="3cqZAo" node="2ihDbyJPac7" resolve="pl" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eOVzh" id="2ihDbyJP9Cj" role="1Dwp0S">
                  <node concept="2OqwBi" id="2ihDbyJPcIp" role="3uHU7w">
                    <node concept="37vLTw" id="2ihDbyJPbQ7" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ihDbyJPac7" resolve="pl" />
                    </node>
                    <node concept="34oBXx" id="2ihDbyJPfB1" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="2ihDbyJP9aw" role="3uHU7B">
                    <ref role="3cqZAo" node="2ihDbyJP7OT" resolve="i" />
                  </node>
                </node>
                <node concept="3uNrnE" id="2ihDbyJPggN" role="1Dwrff">
                  <node concept="37vLTw" id="2ihDbyJPggP" role="2$L3a6">
                    <ref role="3cqZAo" node="2ihDbyJP7OT" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3LmiP1" id="2ihDbyJPk6j" role="kMuH3">
            <ref role="2XDbjv" node="6YJvVULTHtj" resolve="DLineSegment" />
          </node>
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="6lHrNJlyQ9C" role="1FPzNG">
      <property role="TrG5h" value="hit" />
      <node concept="37vLTG" id="6lHrNJlyQ9D" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3LmiP1" id="6lHrNJlyQ9E" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6lHrNJlyQ9F" role="1B3o_S" />
      <node concept="3clFbS" id="6lHrNJlyQ9G" role="3clF47">
        <node concept="3cpWs6" id="2ihDbyJMW3j" role="3cqZAp">
          <node concept="2OqwBi" id="2ihDbyJMX6x" role="3cqZAk">
            <node concept="1SfVH9" id="2ihDbyJMWbO" role="2Oq$k0">
              <ref role="3cqZAo" node="1bLYJ3eDu7H" resolve="lineSegments" />
            </node>
            <node concept="2HwmR7" id="2ihDbyJN02b" role="2OqNvi">
              <node concept="1bVj0M" id="2ihDbyJN02d" role="23t8la">
                <node concept="3clFbS" id="2ihDbyJN02e" role="1bW5cS">
                  <node concept="3clFbF" id="2ihDbyJN0_Z" role="3cqZAp">
                    <node concept="2OqwBi" id="2ihDbyJN0Nx" role="3clFbG">
                      <node concept="37vLTw" id="2ihDbyJN0_Y" role="2Oq$k0">
                        <ref role="3cqZAo" node="2ihDbyJN02f" resolve="ls" />
                      </node>
                      <node concept="2$Gk$L" id="2ihDbyJN1jL" role="2OqNvi">
                        <ref role="37wK5l" node="2ihDbyJLGje" resolve="hit" />
                        <node concept="37vLTw" id="2ihDbyJN1xU" role="37wK5m">
                          <ref role="3cqZAo" node="6lHrNJlyQ9D" resolve="p" />
                        </node>
                        <node concept="3b6qkQ" id="6JXi$nD3rAz" role="37wK5m">
                          <property role="$nhwW" value="4.0d" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2ihDbyJN02f" role="1bW2Oz">
                  <property role="TrG5h" value="ls" />
                  <node concept="2jxLKc" id="2ihDbyJN02g" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6lHrNJlyQ9H" role="3clF45" />
    </node>
    <node concept="32q3_s" id="2ihDbyJUyqr" role="1FPzNG">
      <property role="TrG5h" value="dragStartPosition" />
      <property role="KodbT" value="true" />
      <node concept="3LmiP1" id="2ihDbyJUyqs" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="32q3_s" id="2ihDbyJURQi" role="1FPzNG">
      <property role="TrG5h" value="draggedJointIndex" />
      <property role="KodbT" value="true" />
      <node concept="3uibUv" id="2ihDbyJUSJN" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
      </node>
    </node>
    <node concept="3tBE6w" id="2ihDbyJVszZ" role="1FPzNG">
      <node concept="3clFbJ" id="2ihDbyJVtwY" role="30jUnX">
        <node concept="1SfVH9" id="2ihDbyJVtFC" role="3clFbw">
          <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
        </node>
        <node concept="3clFbS" id="2ihDbyJVtx0" role="3clFbx">
          <node concept="3clFbF" id="2ihDbyJVtQG" role="3cqZAp">
            <node concept="E34o$" id="2ihDbyJVuHd" role="3clFbG">
              <node concept="1SfVH9" id="2ihDbyJVuIW" role="37vLTJ">
                <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
              </node>
              <node concept="36be1Y" id="2ihDbyJVmqo" role="37vLTx">
                <node concept="2OqwBi" id="2ihDbyJVmqp" role="2Gi6C2">
                  <node concept="1SfVH9" id="2ihDbyJVmqq" role="2Oq$k0">
                    <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                  </node>
                  <node concept="1eb2ty" id="2ihDbyJVmqr" role="2OqNvi">
                    <node concept="1SfVH9" id="2ihDbyJVmqs" role="1eb2t$">
                      <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2ihDbyJVpEw" role="2Gi6C2">
                  <node concept="2OqwBi" id="2ihDbyJVpEx" role="2Oq$k0">
                    <node concept="1SfVH9" id="2ihDbyJVpEy" role="2Oq$k0">
                      <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                    </node>
                    <node concept="32jkxy" id="2ihDbyJVpEz" role="2OqNvi">
                      <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                    </node>
                  </node>
                  <node concept="32jkxy" id="2ihDbyJVpE$" role="2OqNvi">
                    <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2ihDbyJVmqu" role="2Gi6C2">
                  <node concept="1SfVH9" id="2ihDbyJVmqv" role="2Oq$k0">
                    <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                  </node>
                  <node concept="1eb2uI" id="2ihDbyJVmqw" role="2OqNvi">
                    <node concept="3cpWs3" id="2ihDbyJVmqx" role="1eb2uK">
                      <node concept="3cmrfG" id="2ihDbyJVmqy" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="1SfVH9" id="2ihDbyJVmqz" role="3uHU7B">
                        <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
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
    <node concept="3tBE6w" id="2ihDbyK6G9h" role="1FPzNG">
      <node concept="3clFbJ" id="2ihDbyK6Hwn" role="30jUnX">
        <node concept="3clFbS" id="2ihDbyK6Hwp" role="3clFbx">
          <node concept="3cpWs8" id="2ihDbyJU$Ly" role="3cqZAp">
            <node concept="3cpWsn" id="2ihDbyJU$Lz" role="3cpWs9">
              <property role="TrG5h" value="di" />
              <node concept="3LmiP1" id="2ihDbyJU$L$" role="1tU5fm">
                <ref role="2XDbjv" node="2gyk5S1Dvn0" resolve="DDeviceInput" />
              </node>
              <node concept="2OqwBi" id="2ihDbyJU$L_" role="33vP2m">
                <node concept="1SfVH9" id="2ihDbyJU$LA" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                </node>
                <node concept="32jkxy" id="2ihDbyJU$LB" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2ihDbyJUAKo" role="3cqZAp">
            <node concept="3cpWsn" id="2ihDbyJUAKr" role="3cpWs9">
              <property role="TrG5h" value="mp" />
              <node concept="3LmiP1" id="2ihDbyJUAKm" role="1tU5fm">
                <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
              </node>
              <node concept="2OqwBi" id="2ihDbyJU$LP" role="33vP2m">
                <node concept="37vLTw" id="2ihDbyJU$LQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="2ihDbyJU$Lz" resolve="di" />
                </node>
                <node concept="32jkxy" id="2ihDbyJU$LR" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2ihDbyJUH8A" role="3cqZAp">
            <node concept="3cpWsn" id="2ihDbyJUH8D" role="3cpWs9">
              <property role="TrG5h" value="joint" />
              <node concept="3LmiP1" id="2ihDbyJUH8$" role="1tU5fm">
                <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
              </node>
              <node concept="2OqwBi" id="2ihDbyJUIfH" role="33vP2m">
                <node concept="1SfVH9" id="2ihDbyJUHjR" role="2Oq$k0">
                  <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                </node>
                <node concept="1z4cxt" id="2ihDbyJUKOh" role="2OqNvi">
                  <node concept="1bVj0M" id="2ihDbyJUKOj" role="23t8la">
                    <node concept="3clFbS" id="2ihDbyJUKOk" role="1bW5cS">
                      <node concept="3clFbF" id="2ihDbyJUL3z" role="3cqZAp">
                        <node concept="3eOVzh" id="2ihDbyJUPkc" role="3clFbG">
                          <node concept="3b6qkQ" id="6JXi$nCWFeh" role="3uHU7w">
                            <property role="$nhwW" value="10.0d" />
                          </node>
                          <node concept="2OqwBi" id="6JXi$nCYhEf" role="3uHU7B">
                            <node concept="2OqwBi" id="6JXi$nCYhEg" role="2Oq$k0">
                              <node concept="37vLTw" id="6JXi$nCYhEh" role="2Oq$k0">
                                <ref role="3cqZAo" node="2ihDbyJUKOl" resolve="p" />
                              </node>
                              <node concept="2$Gk$L" id="6JXi$nCYhEi" role="2OqNvi">
                                <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                                <node concept="37vLTw" id="6JXi$nCYhEj" role="37wK5m">
                                  <ref role="3cqZAo" node="2ihDbyJUAKr" resolve="mp" />
                                </node>
                              </node>
                            </node>
                            <node concept="32jkxy" id="6JXi$nCYhEk" role="2OqNvi">
                              <ref role="3cqZAo" node="2xAA8jfAPnE" resolve="length" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2ihDbyJUKOl" role="1bW2Oz">
                      <property role="TrG5h" value="p" />
                      <node concept="2jxLKc" id="2ihDbyJUKOm" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2ihDbyJUQlv" role="3cqZAp">
            <node concept="3clFbS" id="2ihDbyJUQlx" role="3clFbx">
              <node concept="3clFbF" id="2ihDbyJUWiX" role="3cqZAp">
                <node concept="E34o$" id="2ihDbyJUWiY" role="3clFbG">
                  <node concept="1SfVH9" id="2ihDbyJUWiZ" role="37vLTJ">
                    <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                  </node>
                  <node concept="2OqwBi" id="2ihDbyJUXZQ" role="37vLTx">
                    <node concept="1SfVH9" id="2ihDbyJUX2s" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                    </node>
                    <node concept="2WmjW8" id="2ihDbyJV0Bm" role="2OqNvi">
                      <node concept="37vLTw" id="2ihDbyJV0F0" role="25WWJ7">
                        <ref role="3cqZAo" node="2ihDbyJUH8D" resolve="joint" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2ihDbyJU$LN" role="3cqZAp">
                <node concept="E34o$" id="2ihDbyJU$LO" role="3clFbG">
                  <node concept="1SfVH9" id="2ihDbyJU$LS" role="37vLTJ">
                    <ref role="3cqZAo" node="2ihDbyJUyqr" resolve="dragStartPosition" />
                  </node>
                  <node concept="37vLTw" id="2ihDbyJUBhw" role="37vLTx">
                    <ref role="3cqZAo" node="2ihDbyJUH8D" resolve="joint" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="2ihDbyJUWv5" role="3clFbw">
              <node concept="37vLTw" id="2ihDbyJUQqB" role="3uHU7B">
                <ref role="3cqZAo" node="2ihDbyJUH8D" resolve="joint" />
              </node>
              <node concept="10Nm6u" id="2ihDbyJUQAI" role="3uHU7w" />
            </node>
            <node concept="9aQIb" id="2ihDbyJUQXE" role="9aQIa">
              <node concept="3clFbS" id="2ihDbyJUQXF" role="9aQI4">
                <node concept="3cpWs8" id="2ihDbyJVyJ0" role="3cqZAp">
                  <node concept="3cpWsn" id="2ihDbyJVyJ3" role="3cpWs9">
                    <property role="TrG5h" value="index" />
                    <node concept="10Oyi0" id="2ihDbyJVyIY" role="1tU5fm" />
                    <node concept="2OqwBi" id="2ihDbyJV_6H" role="33vP2m">
                      <node concept="1SfVH9" id="2ihDbyJV$gI" role="2Oq$k0">
                        <ref role="3cqZAo" node="1bLYJ3eDu7H" resolve="lineSegments" />
                      </node>
                      <node concept="2WmjW8" id="2ihDbyJVCiO" role="2OqNvi">
                        <node concept="2OqwBi" id="2ihDbyJUCso" role="25WWJ7">
                          <node concept="1SfVH9" id="2ihDbyJUBwi" role="2Oq$k0">
                            <ref role="3cqZAo" node="1bLYJ3eDu7H" resolve="lineSegments" />
                          </node>
                          <node concept="1z4cxt" id="2ihDbyJUF1c" role="2OqNvi">
                            <node concept="1bVj0M" id="2ihDbyJUF1e" role="23t8la">
                              <node concept="3clFbS" id="2ihDbyJUF1f" role="1bW5cS">
                                <node concept="3clFbF" id="2ihDbyJUFgs" role="3cqZAp">
                                  <node concept="2OqwBi" id="2ihDbyJUFmX" role="3clFbG">
                                    <node concept="37vLTw" id="2ihDbyJUFgr" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2ihDbyJUF1g" resolve="ls" />
                                    </node>
                                    <node concept="2$Gk$L" id="2ihDbyJUFP5" role="2OqNvi">
                                      <ref role="37wK5l" node="2ihDbyJLGje" resolve="hit" />
                                      <node concept="37vLTw" id="2ihDbyJUG2V" role="37wK5m">
                                        <ref role="3cqZAo" node="2ihDbyJUAKr" resolve="mp" />
                                      </node>
                                      <node concept="3b6qkQ" id="6JXi$nD3sKJ" role="37wK5m">
                                        <property role="$nhwW" value="4.0d" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="2ihDbyJUF1g" role="1bW2Oz">
                                <property role="TrG5h" value="ls" />
                                <node concept="2jxLKc" id="2ihDbyJUF1h" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2ihDbyJVwhp" role="3cqZAp">
                  <node concept="E34o$" id="2ihDbyJVx8$" role="3clFbG">
                    <node concept="1SfVH9" id="2ihDbyJVwjh" role="37vLTJ">
                      <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                    </node>
                    <node concept="36be1Y" id="2ihDbyJVxip" role="37vLTx">
                      <node concept="2OqwBi" id="2ihDbyJVxiq" role="2Gi6C2">
                        <node concept="1SfVH9" id="2ihDbyJVxir" role="2Oq$k0">
                          <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                        </node>
                        <node concept="1eb2ty" id="2ihDbyJVxis" role="2OqNvi">
                          <node concept="37vLTw" id="2ihDbyJVyPe" role="1eb2t$">
                            <ref role="3cqZAo" node="2ihDbyJVyJ3" resolve="index" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="2ihDbyJVyz2" role="2Gi6C2">
                        <ref role="3cqZAo" node="2ihDbyJUAKr" resolve="mp" />
                      </node>
                      <node concept="2OqwBi" id="2ihDbyJVxiz" role="2Gi6C2">
                        <node concept="1SfVH9" id="2ihDbyJVxi$" role="2Oq$k0">
                          <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                        </node>
                        <node concept="1eb2uI" id="2ihDbyJVxi_" role="2OqNvi">
                          <node concept="37vLTw" id="2ihDbyJVz5i" role="1eb2uK">
                            <ref role="3cqZAo" node="2ihDbyJVyJ3" resolve="index" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2ihDbyJVvCP" role="3cqZAp">
                  <node concept="E34o$" id="2ihDbyJVw5C" role="3clFbG">
                    <node concept="37vLTw" id="2ihDbyJVziJ" role="37vLTx">
                      <ref role="3cqZAo" node="2ihDbyJVyJ3" resolve="index" />
                    </node>
                    <node concept="1SfVH9" id="2ihDbyJVvCO" role="37vLTJ">
                      <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2ihDbyJVzQz" role="3cqZAp">
                  <node concept="E34o$" id="2ihDbyJV$4_" role="3clFbG">
                    <node concept="37vLTw" id="2ihDbyJV$fM" role="37vLTx">
                      <ref role="3cqZAo" node="2ihDbyJUAKr" resolve="mp" />
                    </node>
                    <node concept="1SfVH9" id="2ihDbyJVzQx" role="37vLTJ">
                      <ref role="3cqZAo" node="2ihDbyJUyqr" resolve="dragStartPosition" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="1J7fUUywYjL" role="3clFbw">
          <node concept="3clFbC" id="1J7fUUywZ8A" role="3uHU7w">
            <node concept="10Nm6u" id="1J7fUUywZCx" role="3uHU7w" />
            <node concept="1SfVH9" id="1J7fUUywYMD" role="3uHU7B">
              <ref role="3cqZAo" node="2ihDbyJUyqr" resolve="dragStartPosition" />
            </node>
          </node>
          <node concept="1Wc70l" id="2ihDbyK6HQi" role="3uHU7B">
            <node concept="1SfVH9" id="2ihDbyK6HQj" role="3uHU7B">
              <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
            </node>
            <node concept="3J2VuX" id="2ihDbyK6HQk" role="3uHU7w">
              <node concept="3fqX7Q" id="2ihDbyK6HQl" role="3J2yhu">
                <node concept="1SfVH9" id="2ihDbyK6HQm" role="3fr31v">
                  <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="2ihDbyK6Jw3" role="1FPzNG">
      <node concept="3clFbJ" id="2ihDbyK6KCM" role="30jUnX">
        <node concept="3clFbS" id="2ihDbyK6KCO" role="3clFbx">
          <node concept="3cpWs8" id="2ihDbyK6O3n" role="3cqZAp">
            <node concept="3cpWsn" id="2ihDbyK6O3o" role="3cpWs9">
              <property role="TrG5h" value="di" />
              <node concept="3LmiP1" id="2ihDbyK6O3p" role="1tU5fm">
                <ref role="2XDbjv" node="2gyk5S1Dvn0" resolve="DDeviceInput" />
              </node>
              <node concept="2OqwBi" id="2ihDbyK6O3q" role="33vP2m">
                <node concept="1SfVH9" id="2ihDbyK6O3r" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                </node>
                <node concept="32jkxy" id="2ihDbyK6O3s" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2ihDbyJUG$K" role="3cqZAp">
            <node concept="3clFbS" id="2ihDbyJUG$L" role="3clFbx">
              <node concept="3clFbF" id="2ihDbyJV0K1" role="3cqZAp">
                <node concept="E34o$" id="2ihDbyJV5JC" role="3clFbG">
                  <node concept="1SfVH9" id="2ihDbyJV0K0" role="37vLTJ">
                    <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                  </node>
                  <node concept="36be1Y" id="2ihDbyJVavn" role="37vLTx">
                    <node concept="2OqwBi" id="2ihDbyJVbyI" role="2Gi6C2">
                      <node concept="1SfVH9" id="2ihDbyJVa$4" role="2Oq$k0">
                        <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                      </node>
                      <node concept="1eb2ty" id="2ihDbyJVebt" role="2OqNvi">
                        <node concept="1SfVH9" id="2ihDbyJVeh2" role="1eb2t$">
                          <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                        </node>
                      </node>
                    </node>
                    <node concept="1SfVH9" id="2ihDbyJVfCR" role="2Gi6C2">
                      <ref role="3cqZAo" node="2ihDbyJUyqr" resolve="dragStartPosition" />
                    </node>
                    <node concept="2OqwBi" id="2ihDbyJVgQS" role="2Gi6C2">
                      <node concept="1SfVH9" id="2ihDbyJVfWs" role="2Oq$k0">
                        <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                      </node>
                      <node concept="1eb2uI" id="2ihDbyJVjzA" role="2OqNvi">
                        <node concept="3cpWs3" id="2ihDbyJVkfn" role="1eb2uK">
                          <node concept="3cmrfG" id="2ihDbyJVkgX" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="1SfVH9" id="2ihDbyJVjCu" role="3uHU7B">
                            <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2ihDbyJUG$Q" role="3clFbw">
              <node concept="2OqwBi" id="2ihDbyJUG$R" role="2Oq$k0">
                <node concept="37vLTw" id="2ihDbyJUG$S" role="2Oq$k0">
                  <ref role="3cqZAo" node="2ihDbyK6O3o" resolve="di" />
                </node>
                <node concept="32jkxy" id="2ihDbyJUG$T" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                </node>
              </node>
              <node concept="3JPx81" id="2ihDbyJUG$U" role="2OqNvi">
                <node concept="10M0yZ" id="2ihDbyJUG$V" role="25WWJ7">
                  <ref role="3cqZAo" to="hyam:~KeyEvent.VK_ESCAPE" resolve="VK_ESCAPE" />
                  <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="5rHgiqQKdsQ" role="3eNLev">
              <node concept="3clFbS" id="5rHgiqQKdsS" role="3eOfB_">
                <node concept="3clFbF" id="5rHgiqQKjYD" role="3cqZAp">
                  <node concept="E34o$" id="5rHgiqQKkLG" role="3clFbG">
                    <node concept="1SfVH9" id="5rHgiqQKjYC" role="37vLTJ">
                      <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                    </node>
                    <node concept="36be1Y" id="5rHgiqQKkVZ" role="37vLTx">
                      <node concept="2OqwBi" id="5rHgiqQKkW0" role="2Gi6C2">
                        <node concept="1SfVH9" id="5rHgiqQKkW1" role="2Oq$k0">
                          <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                        </node>
                        <node concept="1eb2ty" id="5rHgiqQKkW2" role="2OqNvi">
                          <node concept="1SfVH9" id="5rHgiqQKkW3" role="1eb2t$">
                            <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5rHgiqQKkW5" role="2Gi6C2">
                        <node concept="1SfVH9" id="5rHgiqQKkW6" role="2Oq$k0">
                          <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                        </node>
                        <node concept="1eb2uI" id="5rHgiqQKkW7" role="2OqNvi">
                          <node concept="3cpWs3" id="5rHgiqQKkW8" role="1eb2uK">
                            <node concept="3cmrfG" id="5rHgiqQKkW9" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="1SfVH9" id="5rHgiqQKkWa" role="3uHU7B">
                              <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="5rHgiqQKgUm" role="3eO9$A">
                <node concept="3b6qkQ" id="5rHgiqQKh83" role="3uHU7w">
                  <property role="$nhwW" value="10.0d" />
                </node>
                <node concept="2OqwBi" id="5rHgiqQKe0n" role="3uHU7B">
                  <node concept="2$Gk$L" id="5rHgiqQKexD" role="2OqNvi">
                    <ref role="37wK5l" node="5rHgiqQGuMd" resolve="distance" />
                    <node concept="2OqwBi" id="5rHgiqQKf7J" role="37wK5m">
                      <node concept="32jkxy" id="5rHgiqQKf7N" role="2OqNvi">
                        <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                      </node>
                      <node concept="37vLTw" id="5rHgiqQKgvb" role="2Oq$k0">
                        <ref role="3cqZAo" node="2ihDbyK6O3o" resolve="di" />
                      </node>
                    </node>
                  </node>
                  <node concept="3KEV6E" id="5rHgiqQKdyD" role="2Oq$k0">
                    <ref role="2UJ2yc" node="6YJvVULTHtj" resolve="DLineSegment" />
                    <node concept="2Pygp_" id="5rHgiqQKdyE" role="2Pygpa">
                      <ref role="2Pygpw" node="6YJvVULTHtD" resolve="a" />
                      <node concept="1y4W85" id="5rHgiqQKieR" role="2PygpA">
                        <node concept="1SfVH9" id="5rHgiqQKiAQ" role="1y58nS">
                          <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                        </node>
                        <node concept="1SfVH9" id="5rHgiqQKhhl" role="1y566C">
                          <ref role="3cqZAo" node="2ihDbyJMAjR" resolve="points" />
                        </node>
                      </node>
                    </node>
                    <node concept="2Pygp_" id="5rHgiqQKdyF" role="2Pygpa">
                      <ref role="2Pygpw" node="6YJvVULTIso" resolve="b" />
                      <node concept="1y4W85" id="5rHgiqQKipx" role="2PygpA">
                        <node concept="3cpWs3" id="5rHgiqQKjpv" role="1y58nS">
                          <node concept="1SfVH9" id="5rHgiqQKiNS" role="3uHU7B">
                            <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                          </node>
                          <node concept="3cmrfG" id="10mRasGQNdF" role="3uHU7w">
                            <property role="3cmrfH" value="2" />
                          </node>
                        </node>
                        <node concept="1SfVH9" id="5rHgiqQKipz" role="1y566C">
                          <ref role="3cqZAo" node="2ihDbyJMAjR" resolve="points" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="10mRasG_U7C" role="9aQIa">
              <node concept="3clFbS" id="10mRasG_U7D" role="9aQI4">
                <node concept="3clFbF" id="10mRasG_Uoh" role="3cqZAp">
                  <node concept="E34o$" id="10mRasG_VHS" role="3clFbG">
                    <node concept="1SfVH9" id="10mRasG_Uog" role="37vLTJ">
                      <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                    </node>
                    <node concept="36be1Y" id="10mRasG_VWg" role="37vLTx">
                      <node concept="2OqwBi" id="10mRasG_VWh" role="2Gi6C2">
                        <node concept="1SfVH9" id="10mRasG_VWi" role="2Oq$k0">
                          <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                        </node>
                        <node concept="1eb2ty" id="10mRasG_VWj" role="2OqNvi">
                          <node concept="1SfVH9" id="10mRasG_VWk" role="1eb2t$">
                            <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="10mRasGApfn" role="2Gi6C2">
                        <node concept="1y4W85" id="10mRasGAn$z" role="2Oq$k0">
                          <node concept="1SfVH9" id="10mRasGAomk" role="1y58nS">
                            <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                          </node>
                          <node concept="1SfVH9" id="10mRasGAlOM" role="1y566C">
                            <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                          </node>
                        </node>
                        <node concept="2$Gk$L" id="10mRasGAqkp" role="2OqNvi">
                          <ref role="37wK5l" node="10mRasGA8ci" resolve="snap" />
                          <node concept="3cmrfG" id="10mRasGMixA" role="37wK5m">
                            <property role="3cmrfH" value="20" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="10mRasG_VWl" role="2Gi6C2">
                        <node concept="1SfVH9" id="10mRasG_VWm" role="2Oq$k0">
                          <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                        </node>
                        <node concept="1eb2uI" id="10mRasG_VWn" role="2OqNvi">
                          <node concept="3cpWs3" id="10mRasG_VWo" role="1eb2uK">
                            <node concept="3cmrfG" id="10mRasG_VWp" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="1SfVH9" id="10mRasG_VWq" role="3uHU7B">
                              <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
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
          <node concept="3clFbF" id="2ihDbyJUVbu" role="3cqZAp">
            <node concept="E34o$" id="2ihDbyJUW7M" role="3clFbG">
              <node concept="1SfVH9" id="2ihDbyJUW7P" role="37vLTJ">
                <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
              </node>
              <node concept="10Nm6u" id="2ihDbyJUW7O" role="37vLTx" />
            </node>
          </node>
          <node concept="3clFbF" id="2ihDbyJU$Mb" role="3cqZAp">
            <node concept="E34o$" id="2ihDbyJU$Mc" role="3clFbG">
              <node concept="10Nm6u" id="2ihDbyJU$Md" role="37vLTx" />
              <node concept="1SfVH9" id="2ihDbyJU$Me" role="37vLTJ">
                <ref role="3cqZAo" node="2ihDbyJUyqr" resolve="dragStartPosition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="1J7fUUywUM1" role="3clFbw">
          <node concept="3y3z36" id="1J7fUUywWWz" role="3uHU7w">
            <node concept="10Nm6u" id="1J7fUUywXRE" role="3uHU7w" />
            <node concept="1SfVH9" id="1J7fUUywVoa" role="3uHU7B">
              <ref role="3cqZAo" node="2ihDbyJUyqr" resolve="dragStartPosition" />
            </node>
          </node>
          <node concept="1Wc70l" id="2ihDbyK6L0H" role="3uHU7B">
            <node concept="3fqX7Q" id="2ihDbyK6L0K" role="3uHU7B">
              <node concept="1SfVH9" id="2ihDbyK6L0L" role="3fr31v">
                <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
              </node>
            </node>
            <node concept="3J2VuX" id="2ihDbyK6L0I" role="3uHU7w">
              <node concept="1SfVH9" id="2ihDbyK6L0J" role="3J2yhu">
                <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1FPxxo" id="2ihDbyJUkPx" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3vD" role="1FPzNG">
      <node concept="1OA0iZ" id="10mRasGq72j" role="1OA3xZ">
        <ref role="1OA0iW" node="10mRasGpZJ8" resolve="beginPoint" />
        <node concept="3clFbS" id="10mRasGq72k" role="1OA0iB">
          <node concept="3clFbF" id="10mRasGq7$E" role="3cqZAp">
            <node concept="2OqwBi" id="10mRasGq7$F" role="3clFbG">
              <node concept="2OqwBi" id="10mRasGq7$G" role="2Oq$k0">
                <node concept="2OqwBi" id="10mRasGq7$H" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="10mRasGq7$I" role="2Oq$k0" />
                  <node concept="3BHqF8" id="10mRasGq7$J" role="2OqNvi">
                    <ref role="3BGHVm" node="skgx$J4Z2F" resolve="DComponent" />
                  </node>
                </node>
                <node concept="1OA3xM" id="10mRasGq7$K" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                </node>
              </node>
              <node concept="liA8E" id="10mRasGq7$L" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="6lHrNJlz$cD" role="1OA3xZ">
        <ref role="1OA0iW" node="6lHrNJlyP$n" resolve="endPoint" />
        <node concept="3clFbS" id="6lHrNJlz$cE" role="1OA0iB">
          <node concept="3clFbF" id="6lHrNJlz$l$" role="3cqZAp">
            <node concept="2OqwBi" id="6lHrNJlz_RZ" role="3clFbG">
              <node concept="2OqwBi" id="6lHrNJlz$S_" role="2Oq$k0">
                <node concept="2OqwBi" id="6lHrNJlz$r7" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="6lHrNJlz$lz" role="2Oq$k0" />
                  <node concept="3BHqF8" id="6lHrNJlz$L4" role="2OqNvi">
                    <ref role="3BGHVm" node="skgx$J4Z2F" resolve="DComponent" />
                  </node>
                </node>
                <node concept="1OA3xM" id="6lHrNJlz_gu" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                </node>
              </node>
              <node concept="liA8E" id="6lHrNJlzBLU" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="5x0Fo$V6pOa" role="1OA3xZ">
        <ref role="1OA0iW" node="5x0Fo$V6e0j" resolve="text" />
        <node concept="3clFbS" id="5x0Fo$V6pOb" role="1OA0iB">
          <node concept="3clFbF" id="5x0Fo$V6pOc" role="3cqZAp">
            <node concept="2OqwBi" id="5x0Fo$V6pOd" role="3clFbG">
              <node concept="2OqwBi" id="5x0Fo$V6pOe" role="2Oq$k0">
                <node concept="2OqwBi" id="5x0Fo$V6pOf" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="5x0Fo$V6pOg" role="2Oq$k0" />
                  <node concept="3BHqF8" id="5x0Fo$V6pOh" role="2OqNvi">
                    <ref role="3BGHVm" node="skgx$J4Z2F" resolve="DComponent" />
                  </node>
                </node>
                <node concept="1OA3xM" id="5x0Fo$V6pOi" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                </node>
              </node>
              <node concept="liA8E" id="5x0Fo$V6pOj" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="6JXi$nD2wSc" role="1OA3xZ">
        <ref role="1OA0iW" node="2ihDbyJLAdG" resolve="joints" />
        <node concept="3clFbS" id="6JXi$nD2wSd" role="1OA0iB">
          <node concept="3clFbF" id="6JXi$nD2xd_" role="3cqZAp">
            <node concept="2OqwBi" id="6JXi$nD2xdA" role="3clFbG">
              <node concept="2OqwBi" id="6JXi$nD2xdB" role="2Oq$k0">
                <node concept="2OqwBi" id="6JXi$nD2xdC" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="6JXi$nD2xdD" role="2Oq$k0" />
                  <node concept="3BHqF8" id="6JXi$nD2xdE" role="2OqNvi">
                    <ref role="3BGHVm" node="skgx$J4Z2F" resolve="DComponent" />
                  </node>
                </node>
                <node concept="1OA3xM" id="6JXi$nD2xdF" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                </node>
              </node>
              <node concept="liA8E" id="6JXi$nD2xdG" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3vE" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vF" role="1OA0iw" />
    </node>
    <node concept="kUGYC" id="1bLYJ3eJs3l" role="1FPzNG">
      <property role="1ePe$S" value="true" />
      <property role="TrG5h" value="paintBegin" />
      <node concept="37vLTG" id="1bLYJ3eJvrE" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="1bLYJ3eJvrF" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1bLYJ3eJs3m" role="1B3o_S" />
      <node concept="3clFbS" id="1bLYJ3eJs3n" role="3clF47" />
      <node concept="3cqZAl" id="1bLYJ3eJsUw" role="3clF45" />
    </node>
    <node concept="kUGYC" id="1bLYJ3eJtVU" role="1FPzNG">
      <property role="1ePe$S" value="true" />
      <property role="TrG5h" value="paintEnd" />
      <node concept="37vLTG" id="1bLYJ3eJvnh" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="1bLYJ3eJvni" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1bLYJ3eJtVV" role="1B3o_S" />
      <node concept="3clFbS" id="1bLYJ3eJtVW" role="3clF47" />
      <node concept="3cqZAl" id="1bLYJ3eJtVX" role="3clF45" />
    </node>
    <node concept="kUGYC" id="6lHrNJlyQ9I" role="1FPzNG">
      <property role="TrG5h" value="paint" />
      <property role="1ePe$S" value="true" />
      <node concept="37vLTG" id="6lHrNJlyQ9J" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="6lHrNJlyQ9K" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6lHrNJlyQ9L" role="1B3o_S" />
      <node concept="3clFbS" id="6lHrNJlyQ9M" role="3clF47">
        <node concept="3cpWs8" id="5x0Fo$V6Mtv" role="3cqZAp">
          <node concept="3cpWsn" id="5x0Fo$V6Mtw" role="3cpWs9">
            <property role="TrG5h" value="list" />
            <node concept="_YKpA" id="5x0Fo$V6LZh" role="1tU5fm">
              <node concept="3LmiP1" id="5x0Fo$V6LZk" role="_ZDj9">
                <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
              </node>
            </node>
            <node concept="1SfVH9" id="5x0Fo$V6Mtx" role="33vP2m">
              <ref role="3cqZAo" node="2ihDbyJMAjR" resolve="points" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5x0Fo$V6IAp" role="3cqZAp">
          <node concept="3cpWsn" id="5x0Fo$V6IAs" role="3cpWs9">
            <property role="TrG5h" value="xy" />
            <node concept="10Q1$e" id="5x0Fo$V6JVw" role="1tU5fm">
              <node concept="10Oyi0" id="5x0Fo$V6IAn" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="5x0Fo$V6P2D" role="33vP2m">
              <node concept="3$_iS1" id="5x0Fo$V77Qt" role="2ShVmc">
                <node concept="3$GHV9" id="5x0Fo$V77Qv" role="3$GQph">
                  <node concept="17qRlL" id="5x0Fo$V7loU" role="3$I4v7">
                    <node concept="3cmrfG" id="5x0Fo$V7mP2" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="2OqwBi" id="5x0Fo$V7bL0" role="3uHU7B">
                      <node concept="37vLTw" id="5x0Fo$V79T8" role="2Oq$k0">
                        <ref role="3cqZAo" node="5x0Fo$V6Mtw" resolve="list" />
                      </node>
                      <node concept="34oBXx" id="5x0Fo$V7gqP" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="10Oyi0" id="5x0Fo$V6Q3G" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5x0Fo$V7zX0" role="3cqZAp">
          <node concept="3cpWsn" id="5x0Fo$V7zX3" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5x0Fo$V7zWY" role="1tU5fm" />
            <node concept="3cmrfG" id="5x0Fo$V7BOr" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2ihDbyJN379" role="3cqZAp">
          <node concept="2GrKxI" id="2ihDbyJN37b" role="2Gsz3X">
            <property role="TrG5h" value="point" />
          </node>
          <node concept="37vLTw" id="5x0Fo$V6Mty" role="2GsD0m">
            <ref role="3cqZAo" node="5x0Fo$V6Mtw" resolve="list" />
          </node>
          <node concept="3clFbS" id="2ihDbyJN37f" role="2LFqv$">
            <node concept="3clFbF" id="5x0Fo$V7KaU" role="3cqZAp">
              <node concept="37vLTI" id="5x0Fo$V7R2T" role="3clFbG">
                <node concept="2OqwBi" id="5x0Fo$V7VEg" role="37vLTx">
                  <node concept="2GrUjf" id="5x0Fo$V7Tfz" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2ihDbyJN37b" resolve="point" />
                  </node>
                  <node concept="2$Gk$L" id="5x0Fo$V7Yct" role="2OqNvi">
                    <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                  </node>
                </node>
                <node concept="AH0OO" id="5x0Fo$V7Mpn" role="37vLTJ">
                  <node concept="3uNrnE" id="5x0Fo$V8wzd" role="AHEQo">
                    <node concept="37vLTw" id="5x0Fo$V8wzf" role="2$L3a6">
                      <ref role="3cqZAo" node="5x0Fo$V7zX3" resolve="i" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5x0Fo$V7KaS" role="AHHXb">
                    <ref role="3cqZAo" node="5x0Fo$V6IAs" resolve="xy" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5x0Fo$V82yT" role="3cqZAp">
              <node concept="37vLTI" id="5x0Fo$V8afx" role="3clFbG">
                <node concept="2OqwBi" id="5x0Fo$V8eIN" role="37vLTx">
                  <node concept="2GrUjf" id="5x0Fo$V8cw2" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2ihDbyJN37b" resolve="point" />
                  </node>
                  <node concept="2$Gk$L" id="5x0Fo$V8hhS" role="2OqNvi">
                    <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                  </node>
                </node>
                <node concept="AH0OO" id="5x0Fo$V84Og" role="37vLTJ">
                  <node concept="3uNrnE" id="5x0Fo$V8xif" role="AHEQo">
                    <node concept="37vLTw" id="5x0Fo$V8xih" role="2$L3a6">
                      <ref role="3cqZAo" node="5x0Fo$V7zX3" resolve="i" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5x0Fo$V82yR" role="AHHXb">
                    <ref role="3cqZAo" node="5x0Fo$V6IAs" resolve="xy" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6lHrNJlyTxr" role="3cqZAp">
          <node concept="2YIFZM" id="6lHrNJlyTI0" role="3clFbG">
            <ref role="1Pybhc" to="u4ym:7wc8RN4MMv1" resolve="D2D" />
            <ref role="37wK5l" to="u4ym:7wc8RN4MQzA" resolve="drawLine" />
            <node concept="37vLTw" id="6lHrNJlyTI1" role="37wK5m">
              <ref role="3cqZAo" node="6lHrNJlyQ9J" resolve="g" />
            </node>
            <node concept="1SfVH9" id="681X9TyZ8bc" role="37wK5m">
              <ref role="3cqZAo" node="2xAA8jfCHII" resolve="lineColor" />
            </node>
            <node concept="1SfVH9" id="5x0Fo$V6ApD" role="37wK5m">
              <ref role="3cqZAo" node="5x0Fo$V6e0j" resolve="text" />
            </node>
            <node concept="37vLTw" id="5x0Fo$V8tk3" role="37wK5m">
              <ref role="3cqZAo" node="5x0Fo$V6IAs" resolve="xy" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1bLYJ3eJvF8" role="3cqZAp">
          <node concept="2275Hy" id="1bLYJ3eJvF6" role="3clFbG">
            <ref role="37wK5l" node="1bLYJ3eJs3l" resolve="paintBegin" />
            <node concept="37vLTw" id="1bLYJ3eJvZg" role="37wK5m">
              <ref role="3cqZAo" node="6lHrNJlyQ9J" resolve="g" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1bLYJ3eJwhu" role="3cqZAp">
          <node concept="2275Hy" id="1bLYJ3eJwhs" role="3clFbG">
            <ref role="37wK5l" node="1bLYJ3eJtVU" resolve="paintEnd" />
            <node concept="37vLTw" id="1bLYJ3eJwuF" role="37wK5m">
              <ref role="3cqZAo" node="6lHrNJlyQ9J" resolve="g" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6lHrNJlyQ9N" role="3clF45" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4H">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z3D" resolve="DFrame" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="2xAA8jfoMs4" role="1FPzNG">
      <property role="TrG5h" value="contentPane" />
      <property role="3K1B09" value="true" />
      <node concept="3LmiP1" id="2xAA8jfoMvO" role="1tU5fm">
        <ref role="2XDbjv" node="skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="32q3_s" id="2xAA8jfoMss" role="1FPzNG">
      <property role="TrG5h" value="menubar" />
      <property role="KodbT" value="true" />
      <property role="3K1B09" value="true" />
      <node concept="3LmiP1" id="2xAA8jfoMv6" role="1tU5fm">
        <ref role="2XDbjv" node="2xAA8jfoMuD" resolve="DMenubar" />
      </node>
    </node>
    <node concept="1FPxxo" id="2xAA8jfALAd" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3vJ" role="1FPzNG">
      <node concept="1OA0iZ" id="2xAA8jfoOPB" role="1OA3xZ">
        <ref role="1OA0iW" node="4NMtPTvGUBA" resolve="location" />
        <node concept="3clFbS" id="2xAA8jfoOPC" role="1OA0iB">
          <node concept="3clFbF" id="2xAA8jfpb2t" role="3cqZAp">
            <node concept="2OqwBi" id="2xAA8jfpbCP" role="3clFbG">
              <node concept="5IyTM" id="2xAA8jfpb2s" role="2Oq$k0">
                <ref role="3cqZAo" node="2xAA8jfoOEL" resolve="frame" />
              </node>
              <node concept="liA8E" id="2xAA8jfpdIg" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Window.setLocation(int,int)" resolve="setLocation" />
                <node concept="2OqwBi" id="2xAA8jfpedC" role="37wK5m">
                  <node concept="1OA3xA" id="2xAA8jfpe8G" role="2Oq$k0" />
                  <node concept="2$Gk$L" id="2xAA8jfpeyo" role="2OqNvi">
                    <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2xAA8jfpeWz" role="37wK5m">
                  <node concept="1OA3xA" id="2xAA8jfpeVR" role="2Oq$k0" />
                  <node concept="2$Gk$L" id="2xAA8jfpf79" role="2OqNvi">
                    <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="2xAA8jfp640" role="1OA3xZ">
        <ref role="1OA0iW" node="2xAA8jfoMs4" resolve="contentPane" />
        <node concept="3clFbS" id="2xAA8jfp641" role="1OA0iB">
          <node concept="3clFbF" id="2xAA8jfpkFU" role="3cqZAp">
            <node concept="2OqwBi" id="2xAA8jfpkFV" role="3clFbG">
              <node concept="5IyTM" id="2xAA8jfpkFW" role="2Oq$k0">
                <ref role="3cqZAo" node="2xAA8jfoOEL" resolve="frame" />
              </node>
              <node concept="liA8E" id="2xAA8jfpkFX" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JFrame.setContentPane(java.awt.Container)" resolve="setContentPane" />
                <node concept="3K4zz7" id="2xAA8jfpkFY" role="37wK5m">
                  <node concept="2OqwBi" id="2xAA8jfpkFZ" role="3K4E3e">
                    <node concept="1OA3xA" id="2xAA8jfpkG0" role="2Oq$k0" />
                    <node concept="1OA3xM" id="2xAA8jfpkG1" role="2OqNvi">
                      <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="2xAA8jfpkG2" role="3K4GZi" />
                  <node concept="3y3z36" id="2xAA8jfpkG3" role="3K4Cdx">
                    <node concept="10Nm6u" id="2xAA8jfpkG4" role="3uHU7w" />
                    <node concept="1OA3xA" id="2xAA8jfpkG5" role="3uHU7B" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2xAA8jfpaY1" role="3cqZAp">
            <node concept="3y3z36" id="2xAA8jfpaY2" role="3clFbw">
              <node concept="10Nm6u" id="2xAA8jfpaY3" role="3uHU7w" />
              <node concept="1OA3xA" id="2xAA8jfpaY4" role="3uHU7B" />
            </node>
            <node concept="3clFbS" id="2xAA8jfpaY5" role="3clFbx">
              <node concept="3clFbF" id="2xAA8jfpaY6" role="3cqZAp">
                <node concept="2OqwBi" id="2xAA8jfpaY7" role="3clFbG">
                  <node concept="5IyTM" id="2xAA8jfpaY8" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xAA8jfoOEL" resolve="frame" />
                  </node>
                  <node concept="liA8E" id="2xAA8jfpaY9" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Window.pack()" resolve="pack" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="2xAA8jfp7Bd" role="1OA3xZ">
        <ref role="1OA0iW" node="2xAA8jfoMss" resolve="menubar" />
        <node concept="3clFbS" id="2xAA8jfp7Be" role="1OA0iB">
          <node concept="3clFbF" id="2xAA8jfpj4y" role="3cqZAp">
            <node concept="2OqwBi" id="2xAA8jfpfPv" role="3clFbG">
              <node concept="5IyTM" id="2xAA8jfpfei" role="2Oq$k0">
                <ref role="3cqZAo" node="2xAA8jfoOEL" resolve="frame" />
              </node>
              <node concept="liA8E" id="2xAA8jfphVb" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JFrame.setJMenuBar(javax.swing.JMenuBar)" resolve="setJMenuBar" />
                <node concept="3K4zz7" id="2xAA8jfpij3" role="37wK5m">
                  <node concept="2OqwBi" id="2xAA8jfpiI0" role="3K4E3e">
                    <node concept="1OA3xA" id="2xAA8jfpikx" role="2Oq$k0" />
                    <node concept="1OA3xM" id="2xAA8jfpjt7" role="2OqNvi">
                      <ref role="3cqZAo" node="2xAA8jfpi_q" resolve="menuBar" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="2xAA8jfpinm" role="3K4GZi" />
                  <node concept="3y3z36" id="2xAA8jfpi5h" role="3K4Cdx">
                    <node concept="10Nm6u" id="2xAA8jfpihT" role="3uHU7w" />
                    <node concept="1OA3xA" id="2xAA8jfphXL" role="3uHU7B" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2xAA8jfpaWS" role="3cqZAp">
            <node concept="3y3z36" id="2xAA8jfpaWT" role="3clFbw">
              <node concept="10Nm6u" id="2xAA8jfpaWU" role="3uHU7w" />
              <node concept="1OA3xA" id="2xAA8jfpaWV" role="3uHU7B" />
            </node>
            <node concept="3clFbS" id="2xAA8jfpaWW" role="3clFbx">
              <node concept="3clFbF" id="2xAA8jfpaWX" role="3cqZAp">
                <node concept="2OqwBi" id="2xAA8jfpaWY" role="3clFbG">
                  <node concept="5IyTM" id="2xAA8jfpaWZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xAA8jfoOEL" resolve="frame" />
                  </node>
                  <node concept="liA8E" id="2xAA8jfpaX0" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Window.pack()" resolve="pack" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="2xAA8jfp7NZ" role="1OA3xZ">
        <ref role="1OA0iW" node="46vl3mDwqIr" resolve="preferredSize" />
        <node concept="3clFbS" id="2xAA8jfp7O0" role="1OA0iB">
          <node concept="3clFbJ" id="2xAA8jfp851" role="3cqZAp">
            <node concept="3y3z36" id="2xAA8jfp8aI" role="3clFbw">
              <node concept="10Nm6u" id="2xAA8jfp8fr" role="3uHU7w" />
              <node concept="1OA3xA" id="2xAA8jfp85K" role="3uHU7B" />
            </node>
            <node concept="3clFbS" id="2xAA8jfp853" role="3clFbx">
              <node concept="3clFbF" id="2xAA8jfp8gf" role="3cqZAp">
                <node concept="2OqwBi" id="2xAA8jfp8QB" role="3clFbG">
                  <node concept="5IyTM" id="2xAA8jfp8ge" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xAA8jfoOEL" resolve="frame" />
                  </node>
                  <node concept="liA8E" id="2xAA8jfpaW4" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Window.pack()" resolve="pack" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA3wd" id="2xAA8jfoOEL" role="1OA3wj">
        <property role="TrG5h" value="frame" />
        <node concept="3uibUv" id="2xAA8jfoOFt" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JFrame" resolve="JFrame" />
        </node>
      </node>
      <node concept="1OA3wd" id="2xAA8jfoMPR" role="1OA3wj">
        <property role="TrG5h" value="windowslListener" />
        <node concept="3uibUv" id="2xAA8jfoMQB" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~WindowAdapter" resolve="WindowAdapter" />
        </node>
      </node>
      <node concept="1OA3wd" id="4NMtPTvGXXu" role="1OA3wj">
        <property role="TrG5h" value="componentlistener" />
        <node concept="3uibUv" id="46vl3mDwxqp" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~ComponentListener" resolve="ComponentListener" />
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3vK" role="1OA0iy">
        <node concept="3clFbF" id="2xAA8jfoPox" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfoPEl" role="3clFbG">
            <node concept="2ShNRf" id="2xAA8jfoPJj" role="37vLTx">
              <node concept="YeOm9" id="2xAA8jfoRAs" role="2ShVmc">
                <node concept="1Y3b0j" id="2xAA8jfoRAv" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" to="hyam:~WindowAdapter" resolve="WindowAdapter" />
                  <ref role="37wK5l" to="hyam:~WindowAdapter.&lt;init&gt;()" resolve="WindowAdapter" />
                  <node concept="3Tm1VV" id="2xAA8jfoRAw" role="1B3o_S" />
                  <node concept="3clFb_" id="2xAA8jfoRIE" role="jymVt">
                    <property role="TrG5h" value="windowClosed" />
                    <node concept="3Tm1VV" id="2xAA8jfoRIF" role="1B3o_S" />
                    <node concept="3cqZAl" id="2xAA8jfoRIH" role="3clF45" />
                    <node concept="37vLTG" id="2xAA8jfoRII" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="2xAA8jfoRIJ" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~WindowEvent" resolve="WindowEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="2xAA8jfoRIL" role="3clF47">
                      <node concept="3clFbF" id="3XDIiT4bRtJ" role="3cqZAp">
                        <node concept="2OqwBi" id="3XDIiT4bRR8" role="3clFbG">
                          <node concept="2O$n0J" id="3XDIiT4bRtH" role="2Oq$k0" />
                          <node concept="liA8E" id="3XDIiT4bTBh" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="3XDIiT4bU9y" role="37wK5m">
                              <node concept="3clFbS" id="3XDIiT4bU9z" role="1bW5cS">
                                <node concept="3clFbF" id="2xAA8jfoSsG" role="3cqZAp">
                                  <node concept="2275Hy" id="2xAA8jfoSsF" role="3clFbG">
                                    <ref role="37wK5l" node="2xAA8jfoS7Y" resolve="closedByUser" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2xAA8jfoRIM" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5IyTM" id="2xAA8jfoPow" role="37vLTJ">
              <ref role="3cqZAo" node="2xAA8jfoMPR" resolve="windowslListener" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="46vl3mDULBm" role="3cqZAp">
          <node concept="37vLTI" id="46vl3mDULKW" role="3clFbG">
            <node concept="2ShNRf" id="46vl3mDULNv" role="37vLTx">
              <node concept="YeOm9" id="46vl3mDULWn" role="2ShVmc">
                <node concept="1Y3b0j" id="46vl3mDULWq" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="hyam:~ComponentListener" resolve="ComponentListener" />
                  <node concept="3Tm1VV" id="46vl3mDULWr" role="1B3o_S" />
                  <node concept="3clFb_" id="46vl3mDULWD" role="jymVt">
                    <property role="TrG5h" value="componentResized" />
                    <node concept="3Tm1VV" id="46vl3mDULWE" role="1B3o_S" />
                    <node concept="3cqZAl" id="46vl3mDULWG" role="3clF45" />
                    <node concept="37vLTG" id="46vl3mDULWH" role="3clF46">
                      <property role="TrG5h" value="ce" />
                      <node concept="3uibUv" id="46vl3mDULWI" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~ComponentEvent" resolve="ComponentEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="46vl3mDULWJ" role="3clF47">
                      <node concept="3clFbF" id="2eQII2Tia6L" role="3cqZAp">
                        <node concept="2OqwBi" id="2eQII2Tiaxt" role="3clFbG">
                          <node concept="2O$n0J" id="2eQII2Tia6J" role="2Oq$k0" />
                          <node concept="liA8E" id="2eQII2Tibix" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="2eQII2TibVG" role="37wK5m">
                              <node concept="3clFbS" id="2eQII2TibVH" role="1bW5cS">
                                <node concept="3cpWs8" id="46vl3mDUZ47" role="3cqZAp">
                                  <node concept="3cpWsn" id="46vl3mDUZ48" role="3cpWs9">
                                    <property role="TrG5h" value="dim" />
                                    <node concept="3uibUv" id="46vl3mDUZ49" role="1tU5fm">
                                      <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                                    </node>
                                    <node concept="2OqwBi" id="46vl3mDUZUJ" role="33vP2m">
                                      <node concept="5IyTM" id="46vl3mDUZwd" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4NMtPTvGNkR" resolve="container" />
                                      </node>
                                      <node concept="liA8E" id="46vl3mDV0Zr" role="2OqNvi">
                                        <ref role="37wK5l" to="z60i:~Component.getSize()" resolve="getSize" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="46vl3mDUXRL" role="3cqZAp">
                                  <node concept="E34o$" id="2eQII2ToCg9" role="3clFbG">
                                    <node concept="1SfVH9" id="2eQII2ToCgk" role="37vLTJ">
                                      <ref role="3cqZAo" node="46vl3mDwqLd" resolve="size" />
                                    </node>
                                    <node concept="3KEV6E" id="2eQII2ToCgb" role="37vLTx">
                                      <ref role="2UJ2yc" node="4NMtPTvGXY5" resolve="DDimension" />
                                      <node concept="2Pygp_" id="2eQII2ToCgc" role="2Pygpa">
                                        <ref role="2Pygpw" node="4NMtPTvGXY6" resolve="width" />
                                        <node concept="10QFUN" id="7h_p2Gg0zdv" role="2PygpA">
                                          <node concept="10P55v" id="7h_p2Gg0zKm" role="10QFUM" />
                                          <node concept="2OqwBi" id="2eQII2ToCgd" role="10QFUP">
                                            <node concept="37vLTw" id="2eQII2ToCge" role="2Oq$k0">
                                              <ref role="3cqZAo" node="46vl3mDUZ48" resolve="dim" />
                                            </node>
                                            <node concept="2OwXpG" id="2eQII2ToCgf" role="2OqNvi">
                                              <ref role="2Oxat5" to="z60i:~Dimension.width" resolve="width" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2Pygp_" id="2eQII2ToCgg" role="2Pygpa">
                                        <ref role="2Pygpw" node="4NMtPTvGY55" resolve="height" />
                                        <node concept="10QFUN" id="7h_p2Gg0$lL" role="2PygpA">
                                          <node concept="10P55v" id="7h_p2Gg0$Hu" role="10QFUM" />
                                          <node concept="2OqwBi" id="2eQII2ToCgh" role="10QFUP">
                                            <node concept="37vLTw" id="2eQII2ToCgi" role="2Oq$k0">
                                              <ref role="3cqZAo" node="46vl3mDUZ48" resolve="dim" />
                                            </node>
                                            <node concept="2OwXpG" id="2eQII2ToCgj" role="2OqNvi">
                                              <ref role="2Oxat5" to="z60i:~Dimension.height" resolve="height" />
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
                    <node concept="2AHcQZ" id="46vl3mDULWL" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="46vl3mDULWN" role="jymVt">
                    <property role="TrG5h" value="componentMoved" />
                    <node concept="3Tm1VV" id="46vl3mDULWO" role="1B3o_S" />
                    <node concept="3cqZAl" id="46vl3mDULWQ" role="3clF45" />
                    <node concept="37vLTG" id="46vl3mDULWR" role="3clF46">
                      <property role="TrG5h" value="ce" />
                      <node concept="3uibUv" id="46vl3mDULWS" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~ComponentEvent" resolve="ComponentEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="46vl3mDULWT" role="3clF47">
                      <node concept="3clFbF" id="2eQII2Tid6n" role="3cqZAp">
                        <node concept="2OqwBi" id="2eQII2Tidyi" role="3clFbG">
                          <node concept="2O$n0J" id="2eQII2Tid6l" role="2Oq$k0" />
                          <node concept="liA8E" id="2eQII2Tie2x" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="2eQII2Tienf" role="37wK5m">
                              <node concept="3clFbS" id="2eQII2Tieng" role="1bW5cS">
                                <node concept="3cpWs8" id="46vl3mDV9Ns" role="3cqZAp">
                                  <node concept="15s5l7" id="46vl3mE7pNt" role="lGtFl">
                                    <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Warning: Variable 'loc' initializer is redundant&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/963887337804010668]&quot;;" />
                                    <property role="huDt6" value="Warning: Variable 'loc' initializer is redundant" />
                                  </node>
                                  <node concept="3cpWsn" id="46vl3mDV9Nt" role="3cpWs9">
                                    <property role="TrG5h" value="loc" />
                                    <node concept="3uibUv" id="46vl3mDV9Nu" role="1tU5fm">
                                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                                    </node>
                                    <node concept="2OqwBi" id="46vl3mDV9Nv" role="33vP2m">
                                      <node concept="5IyTM" id="46vl3mDV9Nw" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4NMtPTvGNkR" resolve="container" />
                                      </node>
                                      <node concept="liA8E" id="46vl3mDV9Nx" role="2OqNvi">
                                        <ref role="37wK5l" to="z60i:~Component.getLocation()" resolve="getLocation" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="46vl3mDVbZu" role="3cqZAp">
                                  <node concept="E34o$" id="2eQII2ToCtY" role="3clFbG">
                                    <node concept="1SfVH9" id="2eQII2ToCu9" role="37vLTJ">
                                      <ref role="3cqZAo" node="4NMtPTvGUBA" resolve="location" />
                                    </node>
                                    <node concept="3KEV6E" id="2eQII2ToCu0" role="37vLTx">
                                      <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                                      <node concept="2Pygp_" id="2eQII2ToCu1" role="2Pygpa">
                                        <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                                        <node concept="10QFUN" id="7h_p2Gg0_E_" role="2PygpA">
                                          <node concept="10P55v" id="7h_p2Gg0Adv" role="10QFUM" />
                                          <node concept="2OqwBi" id="2eQII2ToCu2" role="10QFUP">
                                            <node concept="37vLTw" id="2eQII2ToCu3" role="2Oq$k0">
                                              <ref role="3cqZAo" node="46vl3mDV9Nt" resolve="loc" />
                                            </node>
                                            <node concept="2OwXpG" id="2eQII2ToCu4" role="2OqNvi">
                                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2Pygp_" id="2eQII2ToCu5" role="2Pygpa">
                                        <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                                        <node concept="10QFUN" id="7h_p2Gg0AN6" role="2PygpA">
                                          <node concept="10P55v" id="7h_p2Gg0BaV" role="10QFUM" />
                                          <node concept="2OqwBi" id="2eQII2ToCu6" role="10QFUP">
                                            <node concept="37vLTw" id="2eQII2ToCu7" role="2Oq$k0">
                                              <ref role="3cqZAo" node="46vl3mDV9Nt" resolve="loc" />
                                            </node>
                                            <node concept="2OwXpG" id="2eQII2ToCu8" role="2OqNvi">
                                              <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
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
                    <node concept="2AHcQZ" id="46vl3mDULWV" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="46vl3mDULWX" role="jymVt">
                    <property role="TrG5h" value="componentShown" />
                    <node concept="3Tm1VV" id="46vl3mDULWY" role="1B3o_S" />
                    <node concept="3cqZAl" id="46vl3mDULX0" role="3clF45" />
                    <node concept="37vLTG" id="46vl3mDULX1" role="3clF46">
                      <property role="TrG5h" value="ce" />
                      <node concept="3uibUv" id="46vl3mDULX2" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~ComponentEvent" resolve="ComponentEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="46vl3mDULX3" role="3clF47">
                      <node concept="3SKdUt" id="46vl3mDUXyW" role="3cqZAp">
                        <node concept="1PaTwC" id="46vl3mDUXyX" role="1aUNEU">
                          <node concept="3oM_SD" id="46vl3mDUXCF" role="1PaTwD">
                            <property role="3oM_SC" value="nothing" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="46vl3mDULX5" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="46vl3mDULX7" role="jymVt">
                    <property role="TrG5h" value="componentHidden" />
                    <node concept="3Tm1VV" id="46vl3mDULX8" role="1B3o_S" />
                    <node concept="3cqZAl" id="46vl3mDULXa" role="3clF45" />
                    <node concept="37vLTG" id="46vl3mDULXb" role="3clF46">
                      <property role="TrG5h" value="ce" />
                      <node concept="3uibUv" id="46vl3mDULXc" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~ComponentEvent" resolve="ComponentEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="46vl3mDULXd" role="3clF47">
                      <node concept="3SKdUt" id="46vl3mDUXIT" role="3cqZAp">
                        <node concept="1PaTwC" id="46vl3mDUXIU" role="1aUNEU">
                          <node concept="3oM_SD" id="46vl3mDUXOC" role="1PaTwD">
                            <property role="3oM_SC" value="nothing" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="46vl3mDULXf" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5IyTM" id="46vl3mDULBk" role="37vLTJ">
              <ref role="3cqZAo" node="4NMtPTvGXXu" resolve="componentlistener" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xAA8jfoSKS" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfoTrv" role="3clFbG">
            <node concept="2ShNRf" id="2xAA8jfoT_x" role="37vLTx">
              <node concept="1pGfFk" id="2xAA8jfoT$X" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JFrame.&lt;init&gt;()" resolve="JFrame" />
              </node>
            </node>
            <node concept="5IyTM" id="2xAA8jfoSKQ" role="37vLTJ">
              <ref role="3cqZAo" node="2xAA8jfoOEL" resolve="frame" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xAA8jfoTH8" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfoUvp" role="3clFbG">
            <node concept="5IyTM" id="2xAA8jfoU$v" role="37vLTx">
              <ref role="3cqZAo" node="2xAA8jfoOEL" resolve="frame" />
            </node>
            <node concept="5IyTM" id="2xAA8jfoTH6" role="37vLTJ">
              <ref role="3cqZAo" node="4NMtPTvGNkR" resolve="container" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="46vl3mDUMma" role="3cqZAp">
          <node concept="2OqwBi" id="46vl3mDUMJ5" role="3clFbG">
            <node concept="5IyTM" id="46vl3mDUMm8" role="2Oq$k0">
              <ref role="3cqZAo" node="4NMtPTvGNkR" resolve="container" />
            </node>
            <node concept="liA8E" id="46vl3mDUO6j" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.addComponentListener(java.awt.event.ComponentListener)" resolve="addComponentListener" />
              <node concept="5IyTM" id="46vl3mDUO71" role="37wK5m">
                <ref role="3cqZAo" node="4NMtPTvGXXu" resolve="componentlistener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xAA8jfoYFN" role="3cqZAp">
          <node concept="2OqwBi" id="2xAA8jfoZrc" role="3clFbG">
            <node concept="5IyTM" id="2xAA8jfoYFL" role="2Oq$k0">
              <ref role="3cqZAo" node="2xAA8jfoOEL" resolve="frame" />
            </node>
            <node concept="liA8E" id="2xAA8jfp1wB" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JFrame.setDefaultCloseOperation(int)" resolve="setDefaultCloseOperation" />
              <node concept="10M0yZ" id="2xAA8jfp1z7" role="37wK5m">
                <ref role="3cqZAo" to="dxuu:~WindowConstants.DISPOSE_ON_CLOSE" resolve="DISPOSE_ON_CLOSE" />
                <ref role="1PxDUh" to="dxuu:~JFrame" resolve="JFrame" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xAA8jfoUNB" role="3cqZAp">
          <node concept="2OqwBi" id="2xAA8jfoVvd" role="3clFbG">
            <node concept="5IyTM" id="2xAA8jfoUN_" role="2Oq$k0">
              <ref role="3cqZAo" node="2xAA8jfoOEL" resolve="frame" />
            </node>
            <node concept="liA8E" id="2xAA8jfoYro" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Window.addWindowListener(java.awt.event.WindowListener)" resolve="addWindowListener" />
              <node concept="5IyTM" id="2xAA8jfoYxx" role="37wK5m">
                <ref role="3cqZAo" node="2xAA8jfoMPR" resolve="windowslListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3vL" role="1OA0iw">
        <node concept="3clFbF" id="7jrlbv90MKv" role="3cqZAp">
          <node concept="2OqwBi" id="46vl3mDUOqB" role="3clFbG">
            <node concept="5IyTM" id="46vl3mDUO8I" role="2Oq$k0">
              <ref role="3cqZAo" node="4NMtPTvGNkR" resolve="container" />
            </node>
            <node concept="liA8E" id="46vl3mDUPor" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.removeComponentListener(java.awt.event.ComponentListener)" resolve="removeComponentListener" />
              <node concept="5IyTM" id="46vl3mDUPql" role="37wK5m">
                <ref role="3cqZAo" node="4NMtPTvGXXu" resolve="componentlistener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xAA8jfp1AB" role="3cqZAp">
          <node concept="2OqwBi" id="2xAA8jfp2cZ" role="3clFbG">
            <node concept="5IyTM" id="2xAA8jfp1AA" role="2Oq$k0">
              <ref role="3cqZAo" node="2xAA8jfoOEL" resolve="frame" />
            </node>
            <node concept="liA8E" id="2xAA8jfp4iq" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Window.removeWindowListener(java.awt.event.WindowListener)" resolve="removeWindowListener" />
              <node concept="5IyTM" id="2xAA8jfp4oN" role="37wK5m">
                <ref role="3cqZAo" node="2xAA8jfoMPR" resolve="windowslListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76QCTJD3ri9" role="3cqZAp">
          <node concept="37vLTI" id="76QCTJD3rDf" role="3clFbG">
            <node concept="10Nm6u" id="76QCTJD3rFD" role="37vLTx" />
            <node concept="5IyTM" id="76QCTJD3ri7" role="37vLTJ">
              <ref role="3cqZAo" node="4NMtPTvGXXu" resolve="componentlistener" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xAA8jfp5m8" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfp5E6" role="3clFbG">
            <node concept="10Nm6u" id="2xAA8jfp5G$" role="37vLTx" />
            <node concept="5IyTM" id="2xAA8jfp5m6" role="37vLTJ">
              <ref role="3cqZAo" node="2xAA8jfoMPR" resolve="windowslListener" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xAA8jfp4uo" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfp56M" role="3clFbG">
            <node concept="10Nm6u" id="2xAA8jfp5is" role="37vLTx" />
            <node concept="5IyTM" id="2xAA8jfp4um" role="37vLTJ">
              <ref role="3cqZAo" node="2xAA8jfoOEL" resolve="frame" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="2xAA8jfoS7Y" role="1FPzNG">
      <property role="TrG5h" value="closedByUser" />
      <property role="1EzhhJ" value="true" />
      <property role="1ePe$S" value="true" />
      <node concept="3Tm1VV" id="2xAA8jfoS7Z" role="1B3o_S" />
      <node concept="3clFbS" id="2xAA8jfoS80" role="3clF47" />
      <node concept="3cqZAl" id="2xAA8jfoSfI" role="3clF45" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4I">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z45" resolve="DFilledShape" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="2xAA8jfCCHw" role="1FPzNG">
      <property role="TrG5h" value="position" />
      <node concept="3LmiP1" id="2xAA8jfCCIA" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="3K4zz7" id="1CjrrCLjhI8" role="33vP2m">
        <node concept="3KEV6E" id="1CjrrCLjiaT" role="3K4E3e">
          <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
          <node concept="2Pygp_" id="1CjrrCLjiaU" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
            <node concept="3b6qkQ" id="1CjrrCLkzLm" role="2PygpA">
              <property role="$nhwW" value="300.0d" />
            </node>
          </node>
          <node concept="2Pygp_" id="1CjrrCLjiaV" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
            <node concept="3b6qkQ" id="1CjrrCLkzWO" role="2PygpA">
              <property role="$nhwW" value="200.0d" />
            </node>
          </node>
        </node>
        <node concept="1SfVH9" id="1CjrrCLjiRm" role="3K4GZi">
          <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
        </node>
        <node concept="3clFbC" id="1CjrrCLjgNZ" role="3K4Cdx">
          <node concept="10Nm6u" id="1CjrrCLjhqf" role="3uHU7w" />
          <node concept="1SfVH9" id="1CjrrCLjgoZ" role="3uHU7B">
            <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="3OZjsowsF15" role="1FPzNG">
      <property role="TrG5h" value="max" />
      <node concept="3LmiP1" id="3OZjsowsGgS" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="32q3_s" id="3nsHMGrYPEM" role="1FPzNG">
      <property role="TrG5h" value="color" />
      <node concept="3uibUv" id="3nsHMGrYPFx" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="32q3_s" id="3nsHMGrYS6G" role="1FPzNG">
      <property role="TrG5h" value="text" />
      <property role="KodbT" value="true" />
      <node concept="17QB3L" id="3nsHMGrYS8m" role="1tU5fm" />
    </node>
    <node concept="32q3_s" id="3nsHMGrYSG4" role="1FPzNG">
      <property role="TrG5h" value="dragStartPosition" />
      <property role="KodbT" value="true" />
      <node concept="3LmiP1" id="3nsHMGrYSIu" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="32q3_s" id="2ihDbyJQukV" role="1FPzNG">
      <property role="TrG5h" value="dragStartMousePosition" />
      <property role="KodbT" value="true" />
      <node concept="3LmiP1" id="2ihDbyJQukW" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="3tBE6w" id="2CQk7M4dmTs" role="1FPzNG">
      <node concept="3clFbJ" id="2CQk7M4dnuQ" role="30jUnX">
        <node concept="1SfVH9" id="2CQk7M4dnKQ" role="3clFbw">
          <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
        </node>
        <node concept="3clFbS" id="2CQk7M4dnuS" role="3clFbx">
          <node concept="3clFbF" id="2CQk7M4dnYa" role="3cqZAp">
            <node concept="E34o$" id="2CQk7M4dnYc" role="3clFbG">
              <node concept="1SfVH9" id="2CQk7M4dnYr" role="37vLTJ">
                <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
              </node>
              <node concept="2OqwBi" id="2CQk7M4dnYe" role="37vLTx">
                <node concept="1SfVH9" id="2CQk7M4dnYf" role="2Oq$k0">
                  <ref role="3cqZAo" node="3nsHMGrYSG4" resolve="dragStartPosition" />
                </node>
                <node concept="2$Gk$L" id="2CQk7M4dnYg" role="2OqNvi">
                  <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
                  <node concept="2OqwBi" id="2CQk7M4dnYh" role="37wK5m">
                    <node concept="2OqwBi" id="2CQk7M4dnYi" role="2Oq$k0">
                      <node concept="2OqwBi" id="2CQk7M4dnYj" role="2Oq$k0">
                        <node concept="1SfVH9" id="2CQk7M4dnYk" role="2Oq$k0">
                          <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                        </node>
                        <node concept="32jkxy" id="2CQk7M4dnYl" role="2OqNvi">
                          <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                        </node>
                      </node>
                      <node concept="32jkxy" id="2CQk7M4dnYm" role="2OqNvi">
                        <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                      </node>
                    </node>
                    <node concept="2$Gk$L" id="2CQk7M4dnYn" role="2OqNvi">
                      <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                      <node concept="1SfVH9" id="2CQk7M4dnYo" role="37wK5m">
                        <ref role="3cqZAo" node="2ihDbyJQukV" resolve="dragStartMousePosition" />
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
    <node concept="3tBE6w" id="2ihDbyK6SPu" role="1FPzNG">
      <node concept="3clFbJ" id="2ihDbyK6TeE" role="30jUnX">
        <node concept="3clFbS" id="2ihDbyK6TeG" role="3clFbx">
          <node concept="3cpWs8" id="3nsHMGrZ6L$" role="3cqZAp">
            <node concept="3cpWsn" id="3nsHMGrZ6LB" role="3cpWs9">
              <property role="TrG5h" value="di" />
              <node concept="3LmiP1" id="3nsHMGrZ6Ly" role="1tU5fm">
                <ref role="2XDbjv" node="2gyk5S1Dvn0" resolve="DDeviceInput" />
              </node>
              <node concept="2OqwBi" id="3nsHMGrZ71A" role="33vP2m">
                <node concept="1SfVH9" id="3nsHMGrZ6RH" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                </node>
                <node concept="32jkxy" id="3nsHMGrZ7ni" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3nsHMGrZcZh" role="3cqZAp">
            <node concept="E34o$" id="3nsHMGrZd8E" role="3clFbG">
              <node concept="1SfVH9" id="3nsHMGrZdYV" role="37vLTx">
                <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
              </node>
              <node concept="1SfVH9" id="3nsHMGrZcZf" role="37vLTJ">
                <ref role="3cqZAo" node="3nsHMGrYSG4" resolve="dragStartPosition" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3nsHMGrZdeH" role="3cqZAp">
            <node concept="E34o$" id="3nsHMGrZdt7" role="3clFbG">
              <node concept="2OqwBi" id="3nsHMGrZdCf" role="37vLTx">
                <node concept="37vLTw" id="3nsHMGrZdy$" role="2Oq$k0">
                  <ref role="3cqZAo" node="3nsHMGrZ6LB" resolve="di" />
                </node>
                <node concept="32jkxy" id="3nsHMGrZdT9" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                </node>
              </node>
              <node concept="1SfVH9" id="3nsHMGrZdeF" role="37vLTJ">
                <ref role="3cqZAo" node="2ihDbyJQukV" resolve="dragStartMousePosition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="1J7fUUyx48j" role="3clFbw">
          <node concept="3clFbC" id="1J7fUUyx5nt" role="3uHU7w">
            <node concept="10Nm6u" id="1J7fUUyx5N5" role="3uHU7w" />
            <node concept="1SfVH9" id="1J7fUUyx4JU" role="3uHU7B">
              <ref role="3cqZAo" node="3nsHMGrYSG4" resolve="dragStartPosition" />
            </node>
          </node>
          <node concept="1Wc70l" id="2ihDbyJQiVc" role="3uHU7B">
            <node concept="1SfVH9" id="2ihDbyJQj24" role="3uHU7B">
              <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
            </node>
            <node concept="3J2VuX" id="3nsHMGrZ9wN" role="3uHU7w">
              <node concept="3fqX7Q" id="2ihDbyJQkyA" role="3J2yhu">
                <node concept="1SfVH9" id="2ihDbyJQkyC" role="3fr31v">
                  <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="2ihDbyK6TZr" role="1FPzNG">
      <node concept="3clFbJ" id="2ihDbyK6Uy4" role="30jUnX">
        <node concept="3clFbS" id="2ihDbyK6Uy6" role="3clFbx">
          <node concept="3cpWs8" id="2ihDbyK6X9p" role="3cqZAp">
            <node concept="3cpWsn" id="2ihDbyK6X9q" role="3cpWs9">
              <property role="TrG5h" value="di" />
              <node concept="3LmiP1" id="2ihDbyK6X9r" role="1tU5fm">
                <ref role="2XDbjv" node="2gyk5S1Dvn0" resolve="DDeviceInput" />
              </node>
              <node concept="2OqwBi" id="2ihDbyK6X9s" role="33vP2m">
                <node concept="1SfVH9" id="2ihDbyK6X9t" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                </node>
                <node concept="32jkxy" id="2ihDbyK6X9u" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3nsHMGrZkkf" role="3cqZAp">
            <node concept="3clFbS" id="3nsHMGrZkkh" role="3clFbx">
              <node concept="3clFbF" id="3nsHMGrZkvx" role="3cqZAp">
                <node concept="E34o$" id="3nsHMGrZkCh" role="3clFbG">
                  <node concept="1SfVH9" id="3nsHMGrZkH$" role="37vLTx">
                    <ref role="3cqZAo" node="3nsHMGrYSG4" resolve="dragStartPosition" />
                  </node>
                  <node concept="1SfVH9" id="3nsHMGrZkvv" role="37vLTJ">
                    <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3nsHMGrZkmo" role="3clFbw">
              <node concept="2OqwBi" id="3nsHMGrZkmp" role="2Oq$k0">
                <node concept="37vLTw" id="3nsHMGrZkmq" role="2Oq$k0">
                  <ref role="3cqZAo" node="2ihDbyK6X9q" resolve="di" />
                </node>
                <node concept="32jkxy" id="3nsHMGrZkmr" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                </node>
              </node>
              <node concept="3JPx81" id="3nsHMGrZkms" role="2OqNvi">
                <node concept="10M0yZ" id="3nsHMGrZkmt" role="25WWJ7">
                  <ref role="3cqZAo" to="hyam:~KeyEvent.VK_ESCAPE" resolve="VK_ESCAPE" />
                  <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="10mRasG_QQp" role="9aQIa">
              <node concept="3clFbS" id="10mRasG_QQq" role="9aQI4">
                <node concept="3clFbF" id="10mRasG_QYt" role="3cqZAp">
                  <node concept="E34o$" id="10mRasG_RzN" role="3clFbG">
                    <node concept="1SfVH9" id="10mRasG_QYs" role="37vLTJ">
                      <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                    </node>
                    <node concept="2OqwBi" id="10mRasGAdz0" role="37vLTx">
                      <node concept="1SfVH9" id="10mRasGAcXq" role="2Oq$k0">
                        <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                      </node>
                      <node concept="2$Gk$L" id="10mRasGAeil" role="2OqNvi">
                        <ref role="37wK5l" node="10mRasGA8ci" resolve="snap" />
                        <node concept="3cmrfG" id="10mRasGMfOR" role="37wK5m">
                          <property role="3cmrfH" value="20" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3nsHMGrZjWG" role="3cqZAp">
            <node concept="E34o$" id="3nsHMGrZk6k" role="3clFbG">
              <node concept="10Nm6u" id="3nsHMGrZkfF" role="37vLTx" />
              <node concept="1SfVH9" id="3nsHMGrZjWE" role="37vLTJ">
                <ref role="3cqZAo" node="3nsHMGrYSG4" resolve="dragStartPosition" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3nsHMGrZjAp" role="3cqZAp">
            <node concept="E34o$" id="3nsHMGrZjJA" role="3clFbG">
              <node concept="10Nm6u" id="3nsHMGrZjSi" role="37vLTx" />
              <node concept="1SfVH9" id="3nsHMGrZjAn" role="37vLTJ">
                <ref role="3cqZAo" node="2ihDbyJQukV" resolve="dragStartMousePosition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="1J7fUUyx17k" role="3clFbw">
          <node concept="3y3z36" id="1J7fUUyx2KW" role="3uHU7w">
            <node concept="10Nm6u" id="1J7fUUyx3K7" role="3uHU7w" />
            <node concept="1SfVH9" id="1J7fUUyx1L4" role="3uHU7B">
              <ref role="3cqZAo" node="3nsHMGrYSG4" resolve="dragStartPosition" />
            </node>
          </node>
          <node concept="1Wc70l" id="2ihDbyJQkbX" role="3uHU7B">
            <node concept="3fqX7Q" id="2ihDbyJQjL1" role="3uHU7B">
              <node concept="1SfVH9" id="2ihDbyJQjL3" role="3fr31v">
                <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
              </node>
            </node>
            <node concept="3J2VuX" id="2ihDbyJQkkS" role="3uHU7w">
              <node concept="1SfVH9" id="2ihDbyJQkn6" role="3J2yhu">
                <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="3OZjsowvM5f" role="1FPzNG">
      <property role="TrG5h" value="intersection" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="3OZjsowvM5g" role="3clF46">
        <property role="TrG5h" value="outside" />
        <node concept="3LmiP1" id="3OZjsowvM5h" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OZjsowvM5i" role="1B3o_S" />
      <node concept="3clFbS" id="3OZjsowvM5j" role="3clF47" />
      <node concept="3LmiP1" id="3OZjsowvM5_" role="3clF45">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="1FPxxo" id="3OZjsowvLEh" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3vP" role="1FPzNG">
      <node concept="1OA0iZ" id="2xAA8jgzUnj" role="1OA3xZ">
        <ref role="1OA0iW" node="2xAA8jfCCHw" resolve="position" />
        <node concept="3clFbS" id="2xAA8jgzUnk" role="1OA0iB">
          <node concept="3cpWs8" id="Vg5Fsz_p_R" role="3cqZAp">
            <node concept="3cpWsn" id="Vg5Fsz_p_S" role="3cpWs9">
              <property role="TrG5h" value="component" />
              <node concept="3uibUv" id="Vg5Fsz_l9E" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
              </node>
              <node concept="2OqwBi" id="Vg5Fsz_p_T" role="33vP2m">
                <node concept="2OqwBi" id="Vg5Fsz_p_U" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="Vg5Fsz_p_V" role="2Oq$k0" />
                  <node concept="3BHqF8" id="Vg5Fsz_p_W" role="2OqNvi">
                    <ref role="3BGHVm" node="skgx$J4Z2F" resolve="DComponent" />
                  </node>
                </node>
                <node concept="1OA3xM" id="Vg5Fsz_p_X" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1US0OOXdOmc" role="3cqZAp">
            <node concept="2OqwBi" id="1US0OOXdOmd" role="3clFbG">
              <node concept="liA8E" id="1US0OOXdOmf" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.invalidate()" resolve="invalidate" />
              </node>
              <node concept="37vLTw" id="Vg5Fsz_p_Y" role="2Oq$k0">
                <ref role="3cqZAo" node="Vg5Fsz_p_S" resolve="component" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7nNrlO1FWyR" role="3cqZAp">
            <node concept="2OqwBi" id="7nNrlO1FWyS" role="3clFbG">
              <node concept="37vLTw" id="Vg5Fsz_p_Z" role="2Oq$k0">
                <ref role="3cqZAo" node="Vg5Fsz_p_S" resolve="component" />
              </node>
              <node concept="liA8E" id="7nNrlO1FWyY" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="3nsHMGrZ1ai" role="1OA3xZ">
        <ref role="1OA0iW" node="3nsHMGrYPEM" resolve="color" />
        <node concept="3clFbS" id="3nsHMGrZ1aj" role="1OA0iB">
          <node concept="3clFbF" id="3nsHMGrZ4Yf" role="3cqZAp">
            <node concept="2OqwBi" id="3nsHMGrZ4Yg" role="3clFbG">
              <node concept="2OqwBi" id="3nsHMGrZ4Yh" role="2Oq$k0">
                <node concept="2OqwBi" id="3nsHMGrZ4Yi" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="3nsHMGrZ4Yj" role="2Oq$k0" />
                  <node concept="3BHqF8" id="3nsHMGrZ4Yk" role="2OqNvi">
                    <ref role="3BGHVm" node="skgx$J4Z2F" resolve="DComponent" />
                  </node>
                </node>
                <node concept="1OA3xM" id="3nsHMGrZ4Yl" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                </node>
              </node>
              <node concept="liA8E" id="3nsHMGrZ4Ym" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="3nsHMGrZ1ho" role="1OA3xZ">
        <ref role="1OA0iW" node="3nsHMGrYS6G" resolve="text" />
        <node concept="3clFbS" id="3nsHMGrZ1hp" role="1OA0iB">
          <node concept="3clFbF" id="3nsHMGrZ1pS" role="3cqZAp">
            <node concept="2OqwBi" id="3nsHMGrZ2Zi" role="3clFbG">
              <node concept="2OqwBi" id="3nsHMGrZ1Yn" role="2Oq$k0">
                <node concept="2OqwBi" id="3nsHMGrZ1v9" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="3nsHMGrZ1pR" role="2Oq$k0" />
                  <node concept="3BHqF8" id="3nsHMGrZ1OU" role="2OqNvi">
                    <ref role="3BGHVm" node="skgx$J4Z2F" resolve="DComponent" />
                  </node>
                </node>
                <node concept="1OA3xM" id="3nsHMGrZ2jA" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                </node>
              </node>
              <node concept="liA8E" id="3nsHMGrZ4VW" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3vQ" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vR" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4J">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z2s" resolve="DContainer" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="4NMtPTvGUBA" role="1FPzNG">
      <property role="TrG5h" value="location" />
      <node concept="3LmiP1" id="4NMtPTvGXXf" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="3K4zz7" id="2gyk5S1DnRL" role="33vP2m">
        <node concept="1SfVH9" id="2gyk5S1Doe3" role="3K4GZi">
          <ref role="3cqZAo" node="4NMtPTvGUBA" resolve="location" />
        </node>
        <node concept="3clFbC" id="2gyk5S1Dns5" role="3K4Cdx">
          <node concept="10Nm6u" id="2gyk5S1DnHm" role="3uHU7w" />
          <node concept="1SfVH9" id="2gyk5S1Dn4d" role="3uHU7B">
            <ref role="3cqZAo" node="4NMtPTvGUBA" resolve="location" />
          </node>
        </node>
        <node concept="3KEV6E" id="46vl3mDwwF3" role="3K4E3e">
          <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
          <node concept="2Pygp_" id="46vl3mDwwF4" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
            <node concept="3b6qkQ" id="46vl3mDwwHi" role="2PygpA">
              <property role="$nhwW" value="0.0d" />
            </node>
          </node>
          <node concept="2Pygp_" id="46vl3mDwwF5" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
            <node concept="3b6qkQ" id="46vl3mDwwJ5" role="2PygpA">
              <property role="$nhwW" value="0.0d" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="46vl3mDwqLd" role="1FPzNG">
      <property role="TrG5h" value="size" />
      <node concept="3LmiP1" id="46vl3mDwqM$" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGXY5" resolve="DDimension" />
      </node>
      <node concept="3K4zz7" id="2gyk5S1Dqmd" role="33vP2m">
        <node concept="1SfVH9" id="2gyk5S1DqG$" role="3K4GZi">
          <ref role="3cqZAo" node="46vl3mDwqLd" resolve="size" />
        </node>
        <node concept="3clFbC" id="2gyk5S1DpU8" role="3K4Cdx">
          <node concept="10Nm6u" id="2gyk5S1Dqbo" role="3uHU7w" />
          <node concept="1SfVH9" id="2gyk5S1DpFU" role="3uHU7B">
            <ref role="3cqZAo" node="46vl3mDwqLd" resolve="size" />
          </node>
        </node>
        <node concept="3KEV6E" id="46vl3mDJweM" role="3K4E3e">
          <ref role="2UJ2yc" node="4NMtPTvGXY5" resolve="DDimension" />
          <node concept="2Pygp_" id="46vl3mDJweN" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGXY6" resolve="width" />
            <node concept="3b6qkQ" id="46vl3mDJweO" role="2PygpA">
              <property role="$nhwW" value="0.0d" />
            </node>
          </node>
          <node concept="2Pygp_" id="46vl3mDJweP" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGY55" resolve="height" />
            <node concept="3b6qkQ" id="46vl3mDJweQ" role="2PygpA">
              <property role="$nhwW" value="0.0d" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="46vl3mDwqIr" role="1FPzNG">
      <property role="TrG5h" value="preferredSize" />
      <property role="KodbT" value="true" />
      <node concept="3LmiP1" id="46vl3mDwqNc" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGXY5" resolve="DDimension" />
      </node>
    </node>
    <node concept="32q3_s" id="46vl3mDwqJu" role="1FPzNG">
      <property role="TrG5h" value="minimumSize" />
      <property role="KodbT" value="true" />
      <node concept="3LmiP1" id="46vl3mDwqNU" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGXY5" resolve="DDimension" />
      </node>
    </node>
    <node concept="1FPxxo" id="2gyk5S1Drsr" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3vV" role="1FPzNG">
      <node concept="1OA0iZ" id="46vl3mDUR5K" role="1OA3xZ">
        <ref role="1OA0iW" node="4NMtPTvGUBA" resolve="location" />
        <node concept="3clFbS" id="46vl3mDUR5L" role="1OA0iB">
          <node concept="3clFbJ" id="6PgdeE5_Osv" role="3cqZAp">
            <node concept="3clFbS" id="6PgdeE5_Osx" role="3clFbx">
              <node concept="3clFbF" id="46vl3mDUUU5" role="3cqZAp">
                <node concept="2OqwBi" id="46vl3mDUVbX" role="3clFbG">
                  <node concept="5IyTM" id="46vl3mDUUU4" role="2Oq$k0">
                    <ref role="3cqZAo" node="4NMtPTvGNkR" resolve="container" />
                  </node>
                  <node concept="liA8E" id="46vl3mDUW9L" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Component.setLocation(int,int)" resolve="setLocation" />
                    <node concept="2OqwBi" id="7ESv7kyhMXM" role="37wK5m">
                      <node concept="1OA3xA" id="7ESv7kyhMRc" role="2Oq$k0" />
                      <node concept="2$Gk$L" id="7ESv7kyhN$a" role="2OqNvi">
                        <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7ESv7kyhNRF" role="37wK5m">
                      <node concept="1OA3xA" id="7ESv7kyhNQk" role="2Oq$k0" />
                      <node concept="2$Gk$L" id="7ESv7kyhOco" role="2OqNvi">
                        <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7jrlbv90NTT" role="3clFbw">
              <node concept="3y3z36" id="6PgdeE5_OJF" role="3uHU7w">
                <node concept="10Nm6u" id="6PgdeE5_OSq" role="3uHU7w" />
                <node concept="1OA3xA" id="6PgdeE5_ODE" role="3uHU7B" />
              </node>
              <node concept="3fqX7Q" id="7jrlbv90NWd" role="3uHU7B">
                <node concept="1eOMI4" id="7jrlbv90NWe" role="3fr31v">
                  <node concept="2ZW3vV" id="7jrlbv90NWf" role="1eOMHV">
                    <node concept="3uibUv" id="7jrlbv90NWg" role="2ZW6by">
                      <ref role="3uigEE" to="dxuu:~JFrame" resolve="JFrame" />
                    </node>
                    <node concept="5IyTM" id="7jrlbv90NWh" role="2ZW6bz">
                      <ref role="3cqZAo" node="4NMtPTvGNkR" resolve="container" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="46vl3mDURlA" role="1OA3xZ">
        <ref role="1OA0iW" node="46vl3mDwqLd" resolve="size" />
        <node concept="3clFbS" id="46vl3mDURlB" role="1OA0iB">
          <node concept="3clFbJ" id="2xAA8jfp6kZ" role="3cqZAp">
            <node concept="3clFbS" id="2xAA8jfp6l1" role="3clFbx">
              <node concept="3clFbF" id="46vl3mDUSfH" role="3cqZAp">
                <node concept="2OqwBi" id="46vl3mDUSx_" role="3clFbG">
                  <node concept="5IyTM" id="46vl3mDUSfF" role="2Oq$k0">
                    <ref role="3cqZAo" node="4NMtPTvGNkR" resolve="container" />
                  </node>
                  <node concept="liA8E" id="46vl3mDUTvp" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Component.setSize(int,int)" resolve="setSize" />
                    <node concept="2OqwBi" id="46vl3mDUTCd" role="37wK5m">
                      <node concept="1OA3xA" id="46vl3mDUTxS" role="2Oq$k0" />
                      <node concept="2$Gk$L" id="7ESv7kyhRbR" role="2OqNvi">
                        <ref role="37wK5l" node="7ESv7kyhKXZ" resolve="width" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7ESv7kyhPoZ" role="37wK5m">
                      <node concept="1OA3xA" id="7ESv7kyhPka" role="2Oq$k0" />
                      <node concept="2$Gk$L" id="7ESv7kyhQ$g" role="2OqNvi">
                        <ref role="37wK5l" node="7ESv7kyhKY9" resolve="height" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="6PgdeE5_PvF" role="3clFbw">
              <node concept="3y3z36" id="6PgdeE5_PRy" role="3uHU7w">
                <node concept="10Nm6u" id="6PgdeE5_Q1A" role="3uHU7w" />
                <node concept="1OA3xA" id="6PgdeE5_PKa" role="3uHU7B" />
              </node>
              <node concept="3fqX7Q" id="2xAA8jfp6Ta" role="3uHU7B">
                <node concept="1eOMI4" id="2xAA8jfp7di" role="3fr31v">
                  <node concept="2ZW3vV" id="2xAA8jfp6Tc" role="1eOMHV">
                    <node concept="3uibUv" id="2xAA8jfp6Td" role="2ZW6by">
                      <ref role="3uigEE" to="dxuu:~JFrame" resolve="JFrame" />
                    </node>
                    <node concept="5IyTM" id="2xAA8jfp6Te" role="2ZW6bz">
                      <ref role="3cqZAo" node="4NMtPTvGNkR" resolve="container" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="46vl3mDURIU" role="1OA3xZ">
        <ref role="1OA0iW" node="46vl3mDwqIr" resolve="preferredSize" />
        <node concept="3clFbS" id="46vl3mDURIV" role="1OA0iB">
          <node concept="3clFbJ" id="46vl3mDVjWm" role="3cqZAp">
            <node concept="3y3z36" id="46vl3mDVk1r" role="3clFbw">
              <node concept="10Nm6u" id="46vl3mDVk4M" role="3uHU7w" />
              <node concept="1OA3xA" id="46vl3mDVjWL" role="3uHU7B" />
            </node>
            <node concept="3clFbS" id="46vl3mDVjWo" role="3clFbx">
              <node concept="3clFbF" id="46vl3mDVnbx" role="3cqZAp">
                <node concept="2OqwBi" id="46vl3mDVngu" role="3clFbG">
                  <node concept="5IyTM" id="46vl3mDVnbw" role="2Oq$k0">
                    <ref role="3cqZAo" node="4NMtPTvGNkR" resolve="container" />
                  </node>
                  <node concept="liA8E" id="46vl3mDVo31" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Component.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
                    <node concept="2ShNRf" id="46vl3mDVo54" role="37wK5m">
                      <node concept="1pGfFk" id="46vl3mDVo55" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                        <node concept="2OqwBi" id="46vl3mDVo58" role="37wK5m">
                          <node concept="1OA3xA" id="46vl3mDVo59" role="2Oq$k0" />
                          <node concept="2$Gk$L" id="7ESv7kyhRYI" role="2OqNvi">
                            <ref role="37wK5l" node="7ESv7kyhKXZ" resolve="width" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="46vl3mDVo5d" role="37wK5m">
                          <node concept="1OA3xA" id="46vl3mDVo5e" role="2Oq$k0" />
                          <node concept="2$Gk$L" id="7ESv7kyhRL3" role="2OqNvi">
                            <ref role="37wK5l" node="7ESv7kyhKY9" resolve="height" />
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
      <node concept="1OA0iZ" id="46vl3mDURZJ" role="1OA3xZ">
        <ref role="1OA0iW" node="46vl3mDwqJu" resolve="minimumSize" />
        <node concept="3clFbS" id="46vl3mDURZK" role="1OA0iB">
          <node concept="3clFbJ" id="46vl3mDVk5k" role="3cqZAp">
            <node concept="3clFbS" id="46vl3mDVk5m" role="3clFbx">
              <node concept="3clFbF" id="46vl3mDVkeq" role="3cqZAp">
                <node concept="2OqwBi" id="46vl3mDVkwj" role="3clFbG">
                  <node concept="5IyTM" id="46vl3mDVkeo" role="2Oq$k0">
                    <ref role="3cqZAo" node="4NMtPTvGNkR" resolve="container" />
                  </node>
                  <node concept="liA8E" id="46vl3mDVliQ" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Component.setMinimumSize(java.awt.Dimension)" resolve="setMinimumSize" />
                    <node concept="2ShNRf" id="46vl3mDVll8" role="37wK5m">
                      <node concept="1pGfFk" id="46vl3mDVltA" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                        <node concept="2OqwBi" id="46vl3mDVlO8" role="37wK5m">
                          <node concept="1OA3xA" id="46vl3mDVlIg" role="2Oq$k0" />
                          <node concept="2$Gk$L" id="7ESv7kyhSfp" role="2OqNvi">
                            <ref role="37wK5l" node="7ESv7kyhKXZ" resolve="width" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="46vl3mDVmnU" role="37wK5m">
                          <node concept="1OA3xA" id="46vl3mDVmiw" role="2Oq$k0" />
                          <node concept="2$Gk$L" id="7ESv7kyhST5" role="2OqNvi">
                            <ref role="37wK5l" node="7ESv7kyhKY9" resolve="height" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="46vl3mDVkas" role="3clFbw">
              <node concept="10Nm6u" id="46vl3mDVkdN" role="3uHU7w" />
              <node concept="1OA3xA" id="46vl3mDVk5M" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA3wd" id="4NMtPTvGNkR" role="1OA3wj">
        <property role="TrG5h" value="container" />
        <node concept="3uibUv" id="4NMtPTvGUBa" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3vW" role="1OA0iy">
        <node concept="3clFbF" id="46vl3mDUPyT" role="3cqZAp">
          <node concept="2OqwBi" id="46vl3mDUPWv" role="3clFbG">
            <node concept="5IyTM" id="46vl3mDUPyR" role="2Oq$k0">
              <ref role="3cqZAo" node="4NMtPTvGNkR" resolve="container" />
            </node>
            <node concept="liA8E" id="46vl3mDUQUj" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setVisible(boolean)" resolve="setVisible" />
              <node concept="3clFbT" id="46vl3mDUQVI" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3vX" role="1OA0iw">
        <node concept="3clFbF" id="46vl3mDUQYv" role="3cqZAp">
          <node concept="2OqwBi" id="46vl3mDUQYw" role="3clFbG">
            <node concept="5IyTM" id="46vl3mDUQYx" role="2Oq$k0">
              <ref role="3cqZAo" node="4NMtPTvGNkR" resolve="container" />
            </node>
            <node concept="liA8E" id="46vl3mDUQYy" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setVisible(boolean)" resolve="setVisible" />
              <node concept="3clFbT" id="46vl3mDUR2d" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76QCTJD3t9I" role="3cqZAp">
          <node concept="37vLTI" id="76QCTJD3ttp" role="3clFbG">
            <node concept="10Nm6u" id="76QCTJD3tvz" role="37vLTx" />
            <node concept="5IyTM" id="76QCTJD3t9G" role="37vLTJ">
              <ref role="3cqZAo" node="4NMtPTvGNkR" resolve="container" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4K">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z2F" resolve="DComponent" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="76QCTJD2RMW" role="1FPzNG">
      <property role="TrG5h" value="deviceInput" />
      <property role="3K1B09" value="true" />
      <node concept="3LmiP1" id="76QCTJD2RNi" role="1tU5fm">
        <ref role="2XDbjv" node="2gyk5S1Dvn0" resolve="DDeviceInput" />
      </node>
      <node concept="3KEV6E" id="76QCTJD2Tym" role="33vP2m">
        <ref role="2UJ2yc" node="2gyk5S1Dvn0" resolve="DDeviceInput" />
        <node concept="2Pygp_" id="76QCTJD2Tyn" role="2Pygpa">
          <ref role="2Pygpw" node="76QCTJD2PLH" resolve="component" />
          <node concept="2Wb9Zs" id="76QCTJD2Tzl" role="2PygpA" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="4Oa6zO0kSh3" role="1FPzNG">
      <property role="TrG5h" value="jComponent" />
      <property role="KodbT" value="true" />
      <node concept="3uibUv" id="4Oa6zO0kUkn" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
    <node concept="1FPxxo" id="5uiQOXmD1AL" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3w1" role="1FPzNG">
      <node concept="1OA3wd" id="76QCTJD2Tzy" role="1OA3wj">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="76QCTJD30Tq" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
      <node concept="1OA3wd" id="76QCTJD32VU" role="1OA3wj">
        <property role="TrG5h" value="mouseAdapter" />
        <node concept="3uibUv" id="76QCTJD32Wr" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~MouseAdapter" resolve="MouseAdapter" />
        </node>
      </node>
      <node concept="1OA3wd" id="76QCTJD32WS" role="1OA3wj">
        <property role="TrG5h" value="keyAdapter" />
        <node concept="3uibUv" id="76QCTJD32Xx" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~KeyAdapter" resolve="KeyAdapter" />
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3w2" role="1OA0iy">
        <node concept="3clFbF" id="76QCTJD30Ub" role="3cqZAp">
          <node concept="37vLTI" id="76QCTJD32U6" role="3clFbG">
            <node concept="5IyTM" id="76QCTJD32UQ" role="37vLTx">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
            <node concept="5IyTM" id="76QCTJD30Ua" role="37vLTJ">
              <ref role="3cqZAo" node="4NMtPTvGNkR" resolve="container" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76QCTJD3330" role="3cqZAp">
          <node concept="2OqwBi" id="76QCTJD33q_" role="3clFbG">
            <node concept="5IyTM" id="76QCTJD332Y" role="2Oq$k0">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
            <node concept="liA8E" id="76QCTJD38QN" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
              <node concept="3clFbT" id="76QCTJD38T8" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76QCTJD3vvr" role="3cqZAp">
          <node concept="37vLTI" id="76QCTJD3vU0" role="3clFbG">
            <node concept="2ShNRf" id="76QCTJD3vYV" role="37vLTx">
              <node concept="YeOm9" id="76QCTJD3xQ6" role="2ShVmc">
                <node concept="1Y3b0j" id="76QCTJD3xQ9" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" to="hyam:~MouseAdapter" resolve="MouseAdapter" />
                  <ref role="37wK5l" to="hyam:~MouseAdapter.&lt;init&gt;()" resolve="MouseAdapter" />
                  <node concept="3Tm1VV" id="76QCTJD3xQa" role="1B3o_S" />
                  <node concept="3clFb_" id="76QCTJD3zaB" role="jymVt">
                    <property role="TrG5h" value="mouseDragged" />
                    <node concept="3Tm1VV" id="76QCTJD3zaC" role="1B3o_S" />
                    <node concept="3cqZAl" id="76QCTJD3zaE" role="3clF45" />
                    <node concept="37vLTG" id="76QCTJD3zaF" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="76QCTJD3zaG" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="76QCTJD3zaI" role="3clF47">
                      <node concept="3clFbF" id="76QCTJD3_Fd" role="3cqZAp">
                        <node concept="1rXfSq" id="76QCTJD3_Fc" role="3clFbG">
                          <ref role="37wK5l" node="76QCTJD3zbb" resolve="mouseMoved" />
                          <node concept="37vLTw" id="76QCTJD3Akf" role="37wK5m">
                            <ref role="3cqZAo" node="76QCTJD3zaF" resolve="e" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="76QCTJD3zaJ" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="76QCTJD3zbb" role="jymVt">
                    <property role="TrG5h" value="mouseMoved" />
                    <node concept="3Tm1VV" id="76QCTJD3zbc" role="1B3o_S" />
                    <node concept="3cqZAl" id="76QCTJD3zbe" role="3clF45" />
                    <node concept="37vLTG" id="76QCTJD3zbf" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="76QCTJD3zbg" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="76QCTJD3zbi" role="3clF47">
                      <node concept="3clFbF" id="7h_p2Gfq6yT" role="3cqZAp">
                        <node concept="2OqwBi" id="7h_p2Gfq7Hf" role="3clFbG">
                          <node concept="2O$n0J" id="7h_p2Gfq6yR" role="2Oq$k0" />
                          <node concept="liA8E" id="7h_p2Gfq92M" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="7h_p2Gfq9Ue" role="37wK5m">
                              <node concept="3clFbS" id="7h_p2Gfq9Uf" role="1bW5cS">
                                <node concept="3clFbF" id="7h_p2Gfqbg4" role="3cqZAp">
                                  <node concept="E34o$" id="7h_p2GfqepR" role="3clFbG">
                                    <node concept="3KEV6E" id="7h_p2Gfqf7c" role="37vLTx">
                                      <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                                      <node concept="2Pygp_" id="7h_p2Gfqf7d" role="2Pygpa">
                                        <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                                        <node concept="10QFUN" id="7h_p2GfZPO5" role="2PygpA">
                                          <node concept="10P55v" id="7h_p2GfZSgn" role="10QFUM" />
                                          <node concept="2OqwBi" id="7h_p2Gfqt_T" role="10QFUP">
                                            <node concept="37vLTw" id="7h_p2Gfqlau" role="2Oq$k0">
                                              <ref role="3cqZAo" node="76QCTJD3zbf" resolve="e" />
                                            </node>
                                            <node concept="liA8E" id="7h_p2Gfqw1w" role="2OqNvi">
                                              <ref role="37wK5l" to="hyam:~MouseEvent.getX()" resolve="getX" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2Pygp_" id="7h_p2Gfqf7e" role="2Pygpa">
                                        <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                                        <node concept="10QFUN" id="7h_p2GfZTT6" role="2PygpA">
                                          <node concept="10P55v" id="7h_p2GfZVur" role="10QFUM" />
                                          <node concept="2OqwBi" id="7h_p2GfqyZq" role="10QFUP">
                                            <node concept="37vLTw" id="7h_p2Gfqxsa" role="2Oq$k0">
                                              <ref role="3cqZAo" node="76QCTJD3zbf" resolve="e" />
                                            </node>
                                            <node concept="liA8E" id="7h_p2Gfq_wz" role="2OqNvi">
                                              <ref role="37wK5l" to="hyam:~MouseEvent.getY()" resolve="getY" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="7h_p2Gfqcs7" role="37vLTJ">
                                      <node concept="1SfVH9" id="7h_p2Gfqbg3" role="2Oq$k0">
                                        <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                      </node>
                                      <node concept="32jkxy" id="7h_p2GfqdD_" role="2OqNvi">
                                        <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
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
                    <node concept="2AHcQZ" id="76QCTJD3zbj" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="76QCTJD3zaN" role="jymVt">
                    <property role="TrG5h" value="mousePressed" />
                    <node concept="3Tm1VV" id="76QCTJD3zaO" role="1B3o_S" />
                    <node concept="3cqZAl" id="76QCTJD3zaQ" role="3clF45" />
                    <node concept="37vLTG" id="76QCTJD3zaR" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <property role="3TUv4t" value="true" />
                      <node concept="3uibUv" id="76QCTJD3zaS" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="76QCTJD3zaU" role="3clF47">
                      <node concept="3clFbJ" id="76QCTJD3BWu" role="3cqZAp">
                        <node concept="2OqwBi" id="76QCTJD3CUM" role="3clFbw">
                          <node concept="37vLTw" id="76QCTJD3Cwr" role="2Oq$k0">
                            <ref role="3cqZAo" node="76QCTJD3zaR" resolve="e" />
                          </node>
                          <node concept="liA8E" id="76QCTJD3EEE" role="2OqNvi">
                            <ref role="37wK5l" to="hyam:~MouseEvent.isPopupTrigger()" resolve="isPopupTrigger" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="76QCTJD3BWw" role="3clFbx">
                          <node concept="3clFbF" id="76QCTJD3FdF" role="3cqZAp">
                            <node concept="2OqwBi" id="76QCTJD3FkJ" role="3clFbG">
                              <node concept="37vLTw" id="76QCTJD3FdE" role="2Oq$k0">
                                <ref role="3cqZAo" node="76QCTJD3zaR" resolve="e" />
                              </node>
                              <node concept="liA8E" id="76QCTJD3GZ$" role="2OqNvi">
                                <ref role="37wK5l" to="hyam:~InputEvent.consume()" resolve="consume" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2eQII2SZvlu" role="3cqZAp">
                            <node concept="2OqwBi" id="2eQII2SZwpF" role="3clFbG">
                              <node concept="2O$n0J" id="2eQII2SZvls" role="2Oq$k0" />
                              <node concept="liA8E" id="2eQII2SZxgL" role="2OqNvi">
                                <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                                <node concept="1bVj0M" id="2eQII2SZy92" role="37wK5m">
                                  <node concept="3clFbS" id="2eQII2SZy93" role="1bW5cS">
                                    <node concept="3clFbF" id="76QCTJD3HCL" role="3cqZAp">
                                      <node concept="2275Hy" id="76QCTJD3HCJ" role="3clFbG">
                                        <ref role="37wK5l" node="76QCTJD3B7E" resolve="popup" />
                                        <node concept="2OqwBi" id="76QCTJD3J75" role="37wK5m">
                                          <node concept="37vLTw" id="76QCTJD3IGh" role="2Oq$k0">
                                            <ref role="3cqZAo" node="76QCTJD3zaR" resolve="e" />
                                          </node>
                                          <node concept="liA8E" id="76QCTJD3Kju" role="2OqNvi">
                                            <ref role="37wK5l" to="hyam:~MouseEvent.getX()" resolve="getX" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="76QCTJD3L5j" role="37wK5m">
                                          <node concept="37vLTw" id="76QCTJD3KSM" role="2Oq$k0">
                                            <ref role="3cqZAo" node="76QCTJD3zaR" resolve="e" />
                                          </node>
                                          <node concept="liA8E" id="76QCTJD3Mdt" role="2OqNvi">
                                            <ref role="37wK5l" to="hyam:~MouseEvent.getY()" resolve="getY" />
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
                        <node concept="9aQIb" id="76QCTJD3MMd" role="9aQIa">
                          <node concept="3clFbS" id="76QCTJD3MMe" role="9aQI4">
                            <node concept="3clFbF" id="3knfDr4Mg7g" role="3cqZAp">
                              <node concept="2OqwBi" id="3knfDr4MhiX" role="3clFbG">
                                <node concept="2O$n0J" id="3knfDr4Mg7e" role="2Oq$k0" />
                                <node concept="liA8E" id="3knfDr4MiaI" role="2OqNvi">
                                  <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                                  <node concept="1bVj0M" id="3knfDr4Mjsv" role="37wK5m">
                                    <node concept="3clFbS" id="3knfDr4Mjsw" role="1bW5cS">
                                      <node concept="3clFbF" id="76QCTJD3Of2" role="3cqZAp">
                                        <node concept="2OqwBi" id="76QCTJD3P3d" role="3clFbG">
                                          <node concept="5IyTM" id="76QCTJD3Of1" role="2Oq$k0">
                                            <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                                          </node>
                                          <node concept="liA8E" id="76QCTJD3QDh" role="2OqNvi">
                                            <ref role="37wK5l" to="dxuu:~JComponent.requestFocus()" resolve="requestFocus" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="2eQII2SZ76Z" role="3cqZAp">
                              <node concept="3clFbS" id="2eQII2SZ771" role="3clFbx">
                                <node concept="3clFbF" id="71LbkF4YgOe" role="3cqZAp">
                                  <node concept="2OqwBi" id="71LbkF4YhQX" role="3clFbG">
                                    <node concept="2O$n0J" id="71LbkF4YgOc" role="2Oq$k0" />
                                    <node concept="liA8E" id="71LbkF4YiEm" role="2OqNvi">
                                      <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                                      <node concept="1bVj0M" id="3UU1ciG3cS2" role="37wK5m">
                                        <node concept="3clFbS" id="3UU1ciG3cS3" role="1bW5cS">
                                          <node concept="3clFbF" id="2eQII2SYB5a" role="3cqZAp">
                                            <node concept="E34o$" id="2eQII2ToLyM" role="3clFbG">
                                              <node concept="2OqwBi" id="2eQII2ToLyP" role="37vLTJ">
                                                <node concept="1SfVH9" id="2eQII2ToLyQ" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                                </node>
                                                <node concept="32jkxy" id="2eQII2ToLyR" role="2OqNvi">
                                                  <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                                                </node>
                                              </node>
                                              <node concept="3clFbT" id="2eQII2ToLyO" role="37vLTx">
                                                <property role="3clFbU" value="true" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="76QCTJD3WFP" role="3clFbw">
                                <node concept="10M0yZ" id="76QCTJD3YaS" role="3uHU7w">
                                  <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON1" resolve="BUTTON1" />
                                  <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                                </node>
                                <node concept="2OqwBi" id="76QCTJD3UlH" role="3uHU7B">
                                  <node concept="37vLTw" id="76QCTJD3THJ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="76QCTJD3zaR" resolve="e" />
                                  </node>
                                  <node concept="liA8E" id="76QCTJD3Vzh" role="2OqNvi">
                                    <ref role="37wK5l" to="hyam:~MouseEvent.getButton()" resolve="getButton" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="5uiQOXmbbe$" role="3cqZAp">
                              <node concept="3clFbS" id="5uiQOXmbbe_" role="3clFbx">
                                <node concept="3clFbF" id="5uiQOXmbbeA" role="3cqZAp">
                                  <node concept="2OqwBi" id="5uiQOXmbbeB" role="3clFbG">
                                    <node concept="2O$n0J" id="5uiQOXmbbeC" role="2Oq$k0" />
                                    <node concept="liA8E" id="5uiQOXmbbeD" role="2OqNvi">
                                      <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                                      <node concept="1bVj0M" id="5uiQOXmbbeE" role="37wK5m">
                                        <node concept="3clFbS" id="5uiQOXmbbeF" role="1bW5cS">
                                          <node concept="3clFbF" id="5uiQOXmbbeG" role="3cqZAp">
                                            <node concept="E34o$" id="5uiQOXmbbeH" role="3clFbG">
                                              <node concept="2OqwBi" id="5uiQOXmbbeI" role="37vLTJ">
                                                <node concept="1SfVH9" id="5uiQOXmbbeJ" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                                </node>
                                                <node concept="32jkxy" id="5uiQOXmbbeK" role="2OqNvi">
                                                  <ref role="3cqZAo" node="5uiQOXmb7jt" resolve="isRightMouseDown" />
                                                </node>
                                              </node>
                                              <node concept="3clFbT" id="5uiQOXmbbeL" role="37vLTx">
                                                <property role="3clFbU" value="true" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="5uiQOXmbbeM" role="3clFbw">
                                <node concept="10M0yZ" id="5uiQOXmbdJk" role="3uHU7w">
                                  <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON2" resolve="BUTTON2" />
                                  <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                                </node>
                                <node concept="2OqwBi" id="5uiQOXmbbeO" role="3uHU7B">
                                  <node concept="37vLTw" id="5uiQOXmbbeP" role="2Oq$k0">
                                    <ref role="3cqZAo" node="76QCTJD3zaR" resolve="e" />
                                  </node>
                                  <node concept="liA8E" id="5uiQOXmbbeQ" role="2OqNvi">
                                    <ref role="37wK5l" to="hyam:~MouseEvent.getButton()" resolve="getButton" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="76QCTJD3zaV" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="76QCTJD3zaZ" role="jymVt">
                    <property role="TrG5h" value="mouseReleased" />
                    <node concept="3Tm1VV" id="76QCTJD3zb0" role="1B3o_S" />
                    <node concept="3cqZAl" id="76QCTJD3zb2" role="3clF45" />
                    <node concept="37vLTG" id="76QCTJD3zb3" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="76QCTJD3zb4" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="76QCTJD3zb6" role="3clF47">
                      <node concept="3clFbJ" id="76QCTJD3Mt7" role="3cqZAp">
                        <node concept="2OqwBi" id="76QCTJD3Mt8" role="3clFbw">
                          <node concept="37vLTw" id="76QCTJD3Mt9" role="2Oq$k0">
                            <ref role="3cqZAo" node="76QCTJD3zb3" resolve="e" />
                          </node>
                          <node concept="liA8E" id="76QCTJD3Mta" role="2OqNvi">
                            <ref role="37wK5l" to="hyam:~MouseEvent.isPopupTrigger()" resolve="isPopupTrigger" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="76QCTJD3Mtb" role="3clFbx">
                          <node concept="3clFbF" id="76QCTJD3Mtc" role="3cqZAp">
                            <node concept="2OqwBi" id="76QCTJD3Mtd" role="3clFbG">
                              <node concept="37vLTw" id="76QCTJD3Mte" role="2Oq$k0">
                                <ref role="3cqZAo" node="76QCTJD3zb3" resolve="e" />
                              </node>
                              <node concept="liA8E" id="76QCTJD3Mtf" role="2OqNvi">
                                <ref role="37wK5l" to="hyam:~InputEvent.consume()" resolve="consume" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2eQII2SZ$AP" role="3cqZAp">
                            <node concept="2OqwBi" id="2eQII2SZ$AQ" role="3clFbG">
                              <node concept="2O$n0J" id="2eQII2SZ$AR" role="2Oq$k0" />
                              <node concept="liA8E" id="2eQII2SZ$AS" role="2OqNvi">
                                <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                                <node concept="1bVj0M" id="2eQII2SZ$AT" role="37wK5m">
                                  <node concept="3clFbS" id="2eQII2SZ$AU" role="1bW5cS">
                                    <node concept="3clFbF" id="2eQII2SZ$AV" role="3cqZAp">
                                      <node concept="2275Hy" id="2eQII2SZ$AW" role="3clFbG">
                                        <ref role="37wK5l" node="76QCTJD3B7E" resolve="popup" />
                                        <node concept="2OqwBi" id="2eQII2SZ$AX" role="37wK5m">
                                          <node concept="37vLTw" id="2eQII2SZ$AY" role="2Oq$k0">
                                            <ref role="3cqZAo" node="76QCTJD3zb3" resolve="e" />
                                          </node>
                                          <node concept="liA8E" id="2eQII2SZ$AZ" role="2OqNvi">
                                            <ref role="37wK5l" to="hyam:~MouseEvent.getX()" resolve="getX" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="2eQII2SZ$B0" role="37wK5m">
                                          <node concept="37vLTw" id="2eQII2SZ$B1" role="2Oq$k0">
                                            <ref role="3cqZAo" node="76QCTJD3zb3" resolve="e" />
                                          </node>
                                          <node concept="liA8E" id="2eQII2SZ$B2" role="2OqNvi">
                                            <ref role="37wK5l" to="hyam:~MouseEvent.getY()" resolve="getY" />
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
                        <node concept="9aQIb" id="76QCTJD3N4P" role="9aQIa">
                          <node concept="3clFbS" id="76QCTJD3N4Q" role="9aQI4">
                            <node concept="3clFbJ" id="2eQII2SZss_" role="3cqZAp">
                              <node concept="3clFbS" id="2eQII2SZssA" role="3clFbx">
                                <node concept="3clFbF" id="2eQII2SZssB" role="3cqZAp">
                                  <node concept="2OqwBi" id="2eQII2SZssC" role="3clFbG">
                                    <node concept="2O$n0J" id="2eQII2SZssD" role="2Oq$k0" />
                                    <node concept="liA8E" id="2eQII2SZssE" role="2OqNvi">
                                      <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                                      <node concept="1bVj0M" id="2eQII2SZssF" role="37wK5m">
                                        <node concept="3clFbS" id="2eQII2SZssG" role="1bW5cS">
                                          <node concept="3clFbF" id="2eQII2SZssH" role="3cqZAp">
                                            <node concept="E34o$" id="2eQII2ToL8$" role="3clFbG">
                                              <node concept="2OqwBi" id="2eQII2ToL8A" role="37vLTJ">
                                                <node concept="1SfVH9" id="2eQII2ToL8B" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                                </node>
                                                <node concept="32jkxy" id="2eQII2ToL8C" role="2OqNvi">
                                                  <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                                                </node>
                                              </node>
                                              <node concept="3clFbT" id="2eQII2ToL8D" role="37vLTx" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="2eQII2SZssN" role="3clFbw">
                                <node concept="10M0yZ" id="2eQII2SZssO" role="3uHU7w">
                                  <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                                  <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON1" resolve="BUTTON1" />
                                </node>
                                <node concept="2OqwBi" id="2eQII2SZssP" role="3uHU7B">
                                  <node concept="37vLTw" id="2eQII2SZssQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="76QCTJD3zb3" resolve="e" />
                                  </node>
                                  <node concept="liA8E" id="2eQII2SZssR" role="2OqNvi">
                                    <ref role="37wK5l" to="hyam:~MouseEvent.getButton()" resolve="getButton" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="5uiQOXmbg8q" role="3cqZAp">
                              <node concept="3clFbS" id="5uiQOXmbg8r" role="3clFbx">
                                <node concept="3clFbF" id="5uiQOXmbg8s" role="3cqZAp">
                                  <node concept="2OqwBi" id="5uiQOXmbg8t" role="3clFbG">
                                    <node concept="2O$n0J" id="5uiQOXmbg8u" role="2Oq$k0" />
                                    <node concept="liA8E" id="5uiQOXmbg8v" role="2OqNvi">
                                      <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                                      <node concept="1bVj0M" id="5uiQOXmbg8w" role="37wK5m">
                                        <node concept="3clFbS" id="5uiQOXmbg8x" role="1bW5cS">
                                          <node concept="3clFbF" id="5uiQOXmbg8y" role="3cqZAp">
                                            <node concept="E34o$" id="5uiQOXmbg8z" role="3clFbG">
                                              <node concept="2OqwBi" id="5uiQOXmbg8$" role="37vLTJ">
                                                <node concept="1SfVH9" id="5uiQOXmbg8_" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                                </node>
                                                <node concept="32jkxy" id="5uiQOXmbg8A" role="2OqNvi">
                                                  <ref role="3cqZAo" node="5uiQOXmb7jt" resolve="isRightMouseDown" />
                                                </node>
                                              </node>
                                              <node concept="3clFbT" id="5uiQOXmbiiM" role="37vLTx" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="5uiQOXmbg8C" role="3clFbw">
                                <node concept="10M0yZ" id="5uiQOXmbg8D" role="3uHU7w">
                                  <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON2" resolve="BUTTON2" />
                                  <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                                </node>
                                <node concept="2OqwBi" id="5uiQOXmbg8E" role="3uHU7B">
                                  <node concept="37vLTw" id="5uiQOXmbg8F" role="2Oq$k0">
                                    <ref role="3cqZAo" node="76QCTJD3zb3" resolve="e" />
                                  </node>
                                  <node concept="liA8E" id="5uiQOXmbg8G" role="2OqNvi">
                                    <ref role="37wK5l" to="hyam:~MouseEvent.getButton()" resolve="getButton" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="76QCTJD3zb7" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="5uiQOXmvNkP" role="jymVt">
                    <property role="TrG5h" value="mouseEntered" />
                    <node concept="3Tm1VV" id="5uiQOXmvNkQ" role="1B3o_S" />
                    <node concept="3cqZAl" id="5uiQOXmvNkS" role="3clF45" />
                    <node concept="37vLTG" id="5uiQOXmvNkT" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="5uiQOXmvNkU" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5uiQOXmvNkW" role="3clF47">
                      <node concept="3clFbF" id="5uiQOXmvTsK" role="3cqZAp">
                        <node concept="2OqwBi" id="5uiQOXmvTsL" role="3clFbG">
                          <node concept="2O$n0J" id="5uiQOXmvTsM" role="2Oq$k0" />
                          <node concept="liA8E" id="5uiQOXmvTsN" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="5uiQOXmvTsO" role="37wK5m">
                              <node concept="3clFbS" id="5uiQOXmvTsP" role="1bW5cS">
                                <node concept="3clFbF" id="5uiQOXmvTsQ" role="3cqZAp">
                                  <node concept="E34o$" id="5uiQOXmvTsR" role="3clFbG">
                                    <node concept="2OqwBi" id="5uiQOXmvTsS" role="37vLTJ">
                                      <node concept="1SfVH9" id="5uiQOXmvTsT" role="2Oq$k0">
                                        <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                      </node>
                                      <node concept="32jkxy" id="5uiQOXmvTsU" role="2OqNvi">
                                        <ref role="3cqZAo" node="5uiQOXmd7mf" resolve="hasFocus" />
                                      </node>
                                    </node>
                                    <node concept="3clFbT" id="5uiQOXmw0DX" role="37vLTx">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5uiQOXmvNkX" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="5uiQOXmvNl1" role="jymVt">
                    <property role="TrG5h" value="mouseExited" />
                    <node concept="3Tm1VV" id="5uiQOXmvNl2" role="1B3o_S" />
                    <node concept="3cqZAl" id="5uiQOXmvNl4" role="3clF45" />
                    <node concept="37vLTG" id="5uiQOXmvNl5" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="5uiQOXmvNl6" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5uiQOXmvNl8" role="3clF47">
                      <node concept="3clFbF" id="5uiQOXmvWiw" role="3cqZAp">
                        <node concept="2OqwBi" id="5uiQOXmvWix" role="3clFbG">
                          <node concept="2O$n0J" id="5uiQOXmvWiy" role="2Oq$k0" />
                          <node concept="liA8E" id="5uiQOXmvWiz" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="5uiQOXmvWi$" role="37wK5m">
                              <node concept="3clFbS" id="5uiQOXmvWi_" role="1bW5cS">
                                <node concept="3clFbF" id="5uiQOXmvWiA" role="3cqZAp">
                                  <node concept="E34o$" id="5uiQOXmvWiB" role="3clFbG">
                                    <node concept="2OqwBi" id="5uiQOXmvWiC" role="37vLTJ">
                                      <node concept="1SfVH9" id="5uiQOXmvWiD" role="2Oq$k0">
                                        <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                      </node>
                                      <node concept="32jkxy" id="5uiQOXmvWiE" role="2OqNvi">
                                        <ref role="3cqZAo" node="5uiQOXmd7mf" resolve="hasFocus" />
                                      </node>
                                    </node>
                                    <node concept="3clFbT" id="5uiQOXmvWiF" role="37vLTx" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5uiQOXmvNl9" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5IyTM" id="76QCTJD3vvp" role="37vLTJ">
              <ref role="3cqZAo" node="76QCTJD32VU" resolve="mouseAdapter" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76QCTJD3yhi" role="3cqZAp">
          <node concept="37vLTI" id="76QCTJD3yC4" role="3clFbG">
            <node concept="2ShNRf" id="76QCTJD3yCQ" role="37vLTx">
              <node concept="YeOm9" id="76QCTJD3yPC" role="2ShVmc">
                <node concept="1Y3b0j" id="76QCTJD3yPF" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" to="hyam:~KeyAdapter" resolve="KeyAdapter" />
                  <ref role="37wK5l" to="hyam:~KeyAdapter.&lt;init&gt;()" resolve="KeyAdapter" />
                  <node concept="3Tm1VV" id="76QCTJD3yPG" role="1B3o_S" />
                  <node concept="3clFb_" id="76QCTJD3$TW" role="jymVt">
                    <property role="TrG5h" value="keyPressed" />
                    <node concept="3Tm1VV" id="76QCTJD3$TX" role="1B3o_S" />
                    <node concept="3cqZAl" id="76QCTJD3$TZ" role="3clF45" />
                    <node concept="37vLTG" id="76QCTJD3$U0" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="76QCTJD3$U1" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~KeyEvent" resolve="KeyEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="76QCTJD3$U3" role="3clF47">
                      <node concept="3clFbF" id="76QCTJD3$U7" role="3cqZAp">
                        <node concept="3nyPlj" id="76QCTJD3$U6" role="3clFbG">
                          <ref role="37wK5l" to="hyam:~KeyAdapter.keyPressed(java.awt.event.KeyEvent)" resolve="keyPressed" />
                          <node concept="37vLTw" id="76QCTJD3$U5" role="37wK5m">
                            <ref role="3cqZAo" node="76QCTJD3$U0" resolve="e" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="76QCTJD3$U4" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="76QCTJD3$U8" role="jymVt">
                    <property role="TrG5h" value="keyReleased" />
                    <node concept="3Tm1VV" id="76QCTJD3$U9" role="1B3o_S" />
                    <node concept="3cqZAl" id="76QCTJD3$Ub" role="3clF45" />
                    <node concept="37vLTG" id="76QCTJD3$Uc" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="76QCTJD3$Ud" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~KeyEvent" resolve="KeyEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="76QCTJD3$Uf" role="3clF47">
                      <node concept="3clFbF" id="76QCTJD3$Uj" role="3cqZAp">
                        <node concept="3nyPlj" id="76QCTJD3$Ui" role="3clFbG">
                          <ref role="37wK5l" to="hyam:~KeyAdapter.keyReleased(java.awt.event.KeyEvent)" resolve="keyReleased" />
                          <node concept="37vLTw" id="76QCTJD3$Uh" role="37wK5m">
                            <ref role="3cqZAo" node="76QCTJD3$Uc" resolve="e" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="76QCTJD3$Ug" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5IyTM" id="76QCTJD3yhg" role="37vLTJ">
              <ref role="3cqZAo" node="76QCTJD32WS" resolve="keyAdapter" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76QCTJD38Y$" role="3cqZAp">
          <node concept="2OqwBi" id="76QCTJD39n4" role="3clFbG">
            <node concept="5IyTM" id="76QCTJD38Yy" role="2Oq$k0">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
            <node concept="liA8E" id="76QCTJD3byZ" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.addMouseListener(java.awt.event.MouseListener)" resolve="addMouseListener" />
              <node concept="5IyTM" id="76QCTJD3bBA" role="37wK5m">
                <ref role="3cqZAo" node="76QCTJD32VU" resolve="mouseAdapter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76QCTJD3hV2" role="3cqZAp">
          <node concept="2OqwBi" id="76QCTJD3ipJ" role="3clFbG">
            <node concept="5IyTM" id="76QCTJD3hV0" role="2Oq$k0">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
            <node concept="liA8E" id="76QCTJD3jHp" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.addMouseMotionListener(java.awt.event.MouseMotionListener)" resolve="addMouseMotionListener" />
              <node concept="5IyTM" id="76QCTJD3jLQ" role="37wK5m">
                <ref role="3cqZAo" node="76QCTJD32VU" resolve="mouseAdapter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76QCTJD3fZS" role="3cqZAp">
          <node concept="2OqwBi" id="76QCTJD3gr5" role="3clFbG">
            <node concept="5IyTM" id="76QCTJD3fZQ" role="2Oq$k0">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
            <node concept="liA8E" id="76QCTJD3hIJ" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.addKeyListener(java.awt.event.KeyListener)" resolve="addKeyListener" />
              <node concept="5IyTM" id="76QCTJD3hNc" role="37wK5m">
                <ref role="3cqZAo" node="76QCTJD32WS" resolve="keyAdapter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Oa6zO0kYc4" role="3cqZAp">
          <node concept="E34o$" id="4Oa6zO0kYcb" role="3clFbG">
            <node concept="5IyTM" id="4Oa6zO0kZxV" role="37vLTx">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
            <node concept="1SfVH9" id="4Oa6zO0kYcd" role="37vLTJ">
              <ref role="3cqZAo" node="4Oa6zO0kSh3" resolve="jComponent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3w3" role="1OA0iw">
        <node concept="3clFbF" id="76QCTJD3jSH" role="3cqZAp">
          <node concept="2OqwBi" id="76QCTJD3kgS" role="3clFbG">
            <node concept="5IyTM" id="76QCTJD3jSG" role="2Oq$k0">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
            <node concept="liA8E" id="76QCTJD3l$y" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.removeMouseListener(java.awt.event.MouseListener)" resolve="removeMouseListener" />
              <node concept="5IyTM" id="76QCTJD3lD9" role="37wK5m">
                <ref role="3cqZAo" node="76QCTJD32VU" resolve="mouseAdapter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76QCTJD3lKh" role="3cqZAp">
          <node concept="2OqwBi" id="76QCTJD3maJ" role="3clFbG">
            <node concept="5IyTM" id="76QCTJD3lKf" role="2Oq$k0">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
            <node concept="liA8E" id="76QCTJD3nup" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.removeMouseMotionListener(java.awt.event.MouseMotionListener)" resolve="removeMouseMotionListener" />
              <node concept="5IyTM" id="76QCTJD3nyQ" role="37wK5m">
                <ref role="3cqZAo" node="76QCTJD32VU" resolve="mouseAdapter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76QCTJD3nDS" role="3cqZAp">
          <node concept="2OqwBi" id="76QCTJD3o7S" role="3clFbG">
            <node concept="5IyTM" id="76QCTJD3nDQ" role="2Oq$k0">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
            <node concept="liA8E" id="76QCTJD3pry" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.removeKeyListener(java.awt.event.KeyListener)" resolve="removeKeyListener" />
              <node concept="5IyTM" id="76QCTJD3pw9" role="37wK5m">
                <ref role="3cqZAo" node="76QCTJD32WS" resolve="keyAdapter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76QCTJD3tGu" role="3cqZAp">
          <node concept="37vLTI" id="76QCTJD3u6n" role="3clFbG">
            <node concept="10Nm6u" id="76QCTJD3u8t" role="37vLTx" />
            <node concept="5IyTM" id="76QCTJD3tGs" role="37vLTJ">
              <ref role="3cqZAo" node="76QCTJD32VU" resolve="mouseAdapter" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76QCTJD3ubH" role="3cqZAp">
          <node concept="37vLTI" id="76QCTJD3uvT" role="3clFbG">
            <node concept="10Nm6u" id="76QCTJD3uy5" role="37vLTx" />
            <node concept="5IyTM" id="76QCTJD3ubF" role="37vLTJ">
              <ref role="3cqZAo" node="76QCTJD32WS" resolve="keyAdapter" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76QCTJD3u_w" role="3cqZAp">
          <node concept="37vLTI" id="76QCTJD3v5U" role="3clFbG">
            <node concept="10Nm6u" id="76QCTJD3vdK" role="37vLTx" />
            <node concept="5IyTM" id="76QCTJD3u_u" role="37vLTJ">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Cen7D7A6eW" role="3cqZAp">
          <node concept="E34o$" id="4Oa6zO0kXnl" role="3clFbG">
            <node concept="10Nm6u" id="4Oa6zO0kXEM" role="37vLTx" />
            <node concept="1SfVH9" id="4Oa6zO0kWQy" role="37vLTJ">
              <ref role="3cqZAo" node="4Oa6zO0kSh3" resolve="jComponent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="76QCTJD3B7E" role="1FPzNG">
      <property role="TrG5h" value="popup" />
      <property role="1ePe$S" value="true" />
      <node concept="37vLTG" id="76QCTJD3BHF" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="76QCTJD3BKb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="76QCTJD3BIU" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="76QCTJD3BLc" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="76QCTJD3B7F" role="1B3o_S" />
      <node concept="3clFbS" id="76QCTJD3B7G" role="3clF47">
        <node concept="3clFbH" id="2eQII2TdDWp" role="3cqZAp" />
      </node>
      <node concept="3cqZAl" id="76QCTJD3BG1" role="3clF45" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4L">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z4h" resolve="DCircleShape" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="3tBE6w" id="3OZjsowsQ3l" role="1FPzNG">
      <node concept="3clFbF" id="3OZjsowsQ3m" role="30jUnX">
        <node concept="E34o$" id="3OZjsowsQ3n" role="3clFbG">
          <node concept="2OqwBi" id="3OZjsowsQ3o" role="37vLTx">
            <node concept="1SfVH9" id="3OZjsowsQ3p" role="2Oq$k0">
              <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
            </node>
            <node concept="2$Gk$L" id="3OZjsowsQ3q" role="2OqNvi">
              <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
              <node concept="3KEV6E" id="3OZjsowsS4N" role="37wK5m">
                <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                <node concept="2Pygp_" id="3OZjsowsS4O" role="2Pygpa">
                  <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                  <node concept="1SfVH9" id="3OZjsowsT2z" role="2PygpA">
                    <ref role="3cqZAo" node="3nsHMGrXC3n" resolve="radius" />
                  </node>
                </node>
                <node concept="2Pygp_" id="3OZjsowsS4P" role="2Pygpa">
                  <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                  <node concept="1SfVH9" id="3OZjsowsSwU" role="2PygpA">
                    <ref role="3cqZAo" node="3nsHMGrXC3n" resolve="radius" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1SfVH9" id="3OZjsowsQ3u" role="37vLTJ">
            <ref role="3cqZAo" node="3OZjsowsF15" resolve="max" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="3nsHMGrXC3n" role="1FPzNG">
      <property role="TrG5h" value="radius" />
      <node concept="10P55v" id="3OZjsowsTt$" role="1tU5fm" />
    </node>
    <node concept="kUGYC" id="3nsHMGrYCVM" role="1FPzNG">
      <property role="TrG5h" value="hit" />
      <node concept="37vLTG" id="3nsHMGrYCVN" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3LmiP1" id="3nsHMGrYCVO" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3nsHMGrYCVP" role="1B3o_S" />
      <node concept="3clFbS" id="3nsHMGrYCVQ" role="3clF47">
        <node concept="3clFbF" id="3nsHMGrYD2a" role="3cqZAp">
          <node concept="3eOVzh" id="3nsHMGrYEwx" role="3clFbG">
            <node concept="1SfVH9" id="3nsHMGrYEIs" role="3uHU7w">
              <ref role="3cqZAo" node="3nsHMGrXC3n" resolve="radius" />
            </node>
            <node concept="2OqwBi" id="3nsHMGrYD$E" role="3uHU7B">
              <node concept="2OqwBi" id="3nsHMGrYD6j" role="2Oq$k0">
                <node concept="37vLTw" id="3nsHMGrYD29" role="2Oq$k0">
                  <ref role="3cqZAo" node="3nsHMGrYCVN" resolve="p" />
                </node>
                <node concept="2$Gk$L" id="3nsHMGrYDqX" role="2OqNvi">
                  <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                  <node concept="1SfVH9" id="3nsHMGrYDwV" role="37wK5m">
                    <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                  </node>
                </node>
              </node>
              <node concept="32jkxy" id="3nsHMGrYDOB" role="2OqNvi">
                <ref role="3cqZAo" node="2xAA8jfAPnE" resolve="length" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3nsHMGrYCVR" role="3clF45" />
    </node>
    <node concept="kUGYC" id="10mRasGtHMl" role="1FPzNG">
      <property role="TrG5h" value="intersection" />
      <node concept="37vLTG" id="10mRasGtHMm" role="3clF46">
        <property role="TrG5h" value="outside" />
        <node concept="3LmiP1" id="10mRasGtHMn" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="10mRasGtHMo" role="1B3o_S" />
      <node concept="3clFbS" id="10mRasGtHMp" role="3clF47">
        <node concept="3cpWs6" id="10mRasGtHMD" role="3cqZAp">
          <node concept="2OqwBi" id="10mRasGupNh" role="3cqZAk">
            <node concept="1SfVH9" id="10mRasGtHME" role="2Oq$k0">
              <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
            </node>
            <node concept="2$Gk$L" id="10mRasGuqm8" role="2OqNvi">
              <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
              <node concept="2OqwBi" id="10mRasGur_k" role="37wK5m">
                <node concept="2OqwBi" id="10mRasGuqSg" role="2Oq$k0">
                  <node concept="2OqwBi" id="5x0Fo$V2LSP" role="2Oq$k0">
                    <node concept="37vLTw" id="10mRasGuq_1" role="2Oq$k0">
                      <ref role="3cqZAo" node="10mRasGtHMm" resolve="outside" />
                    </node>
                    <node concept="2$Gk$L" id="5x0Fo$V2ME$" role="2OqNvi">
                      <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                      <node concept="1SfVH9" id="5x0Fo$V2Ow3" role="37wK5m">
                        <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                      </node>
                    </node>
                  </node>
                  <node concept="32jkxy" id="10mRasGurid" role="2OqNvi">
                    <ref role="3cqZAo" node="2xAA8jfBn6l" resolve="unit" />
                  </node>
                </node>
                <node concept="2$Gk$L" id="10mRasGus3P" role="2OqNvi">
                  <ref role="37wK5l" node="2xAA8jfB2O5" resolve="mult" />
                  <node concept="1SfVH9" id="10mRasGusj2" role="37wK5m">
                    <ref role="3cqZAo" node="3nsHMGrXC3n" resolve="radius" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3LmiP1" id="10mRasGtHMF" role="3clF45">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="1FPxxo" id="10mRasGtHL0" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3w7" role="1FPzNG">
      <node concept="1OA0iZ" id="3nsHMGrYF5Z" role="1OA3xZ">
        <ref role="1OA0iW" node="3nsHMGrXC3n" resolve="radius" />
        <node concept="3clFbS" id="3nsHMGrYF60" role="1OA0iB">
          <node concept="3clFbF" id="3nsHMGrYFbk" role="3cqZAp">
            <node concept="2OqwBi" id="3nsHMGrYNJS" role="3clFbG">
              <node concept="2OqwBi" id="3nsHMGrYFJE" role="2Oq$k0">
                <node concept="2OqwBi" id="3nsHMGrYFgI" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="3nsHMGrYFbj" role="2Oq$k0" />
                  <node concept="3BHqF8" id="3nsHMGrYFB$" role="2OqNvi">
                    <ref role="3BGHVm" node="skgx$J4Z2F" resolve="DComponent" />
                  </node>
                </node>
                <node concept="1OA3xM" id="3nsHMGrYG7b" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                </node>
              </node>
              <node concept="liA8E" id="3nsHMGrYP78" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3w8" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3w9" role="1OA0iw" />
    </node>
    <node concept="kUGYC" id="3nsHMGrYCVS" role="1FPzNG">
      <property role="TrG5h" value="paint" />
      <property role="1ePe$S" value="true" />
      <node concept="37vLTG" id="3nsHMGrYCVT" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="3nsHMGrYCVU" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3nsHMGrYCVV" role="1B3o_S" />
      <node concept="3clFbS" id="3nsHMGrYCVW" role="3clF47">
        <node concept="3cpWs8" id="6lHrNJly3LP" role="3cqZAp">
          <node concept="3cpWsn" id="6lHrNJly3LO" role="3cpWs9">
            <property role="TrG5h" value="pt" />
            <node concept="3LmiP1" id="6lHrNJly4g2" role="1tU5fm">
              <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
            </node>
            <node concept="1SfVH9" id="6lHrNJly7kQ" role="33vP2m">
              <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6lHrNJly3LT" role="3cqZAp">
          <node concept="3cpWsn" id="6lHrNJly3LS" role="3cpWs9">
            <property role="TrG5h" value="rad" />
            <node concept="10Oyi0" id="6lHrNJly3LU" role="1tU5fm" />
            <node concept="10QFUN" id="3OZjsowsUbN" role="33vP2m">
              <node concept="10Oyi0" id="3OZjsowsUCu" role="10QFUM" />
              <node concept="10QFUN" id="3OZjsowKO41" role="10QFUP">
                <node concept="10P55v" id="3OZjsowKOsU" role="10QFUM" />
                <node concept="1SfVH9" id="6lHrNJly7Tf" role="10QFUP">
                  <ref role="3cqZAo" node="3nsHMGrXC3n" resolve="radius" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6lHrNJly3M8" role="3cqZAp">
          <node concept="2YIFZM" id="6lHrNJly3Z9" role="3clFbG">
            <ref role="1Pybhc" to="u4ym:7wc8RN4MMv1" resolve="D2D" />
            <ref role="37wK5l" to="u4ym:7wc8RN4MQyw" resolve="drawOval" />
            <node concept="37vLTw" id="6lHrNJly3Za" role="37wK5m">
              <ref role="3cqZAo" node="3nsHMGrYCVT" resolve="g" />
            </node>
            <node concept="3cpWsd" id="6lHrNJly3Zb" role="37wK5m">
              <node concept="37vLTw" id="6lHrNJly3Zg" role="3uHU7w">
                <ref role="3cqZAo" node="6lHrNJly3LS" resolve="rad" />
              </node>
              <node concept="2OqwBi" id="6lHrNJly9du" role="3uHU7B">
                <node concept="37vLTw" id="6lHrNJly8VQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJly3LO" resolve="pt" />
                </node>
                <node concept="2$Gk$L" id="6lHrNJlyZrb" role="2OqNvi">
                  <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                </node>
              </node>
            </node>
            <node concept="3cpWsd" id="6lHrNJly3Zh" role="37wK5m">
              <node concept="2OqwBi" id="6lHrNJlybcM" role="3uHU7B">
                <node concept="37vLTw" id="6lHrNJlyaTi" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJly3LO" resolve="pt" />
                </node>
                <node concept="2$Gk$L" id="6lHrNJlyZJr" role="2OqNvi">
                  <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                </node>
              </node>
              <node concept="37vLTw" id="6lHrNJly3Zm" role="3uHU7w">
                <ref role="3cqZAo" node="6lHrNJly3LS" resolve="rad" />
              </node>
            </node>
            <node concept="17qRlL" id="6lHrNJly3Zn" role="37wK5m">
              <node concept="37vLTw" id="6lHrNJly3Zo" role="3uHU7B">
                <ref role="3cqZAo" node="6lHrNJly3LS" resolve="rad" />
              </node>
              <node concept="3cmrfG" id="6lHrNJly3Zp" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
            <node concept="17qRlL" id="6lHrNJly3Zq" role="37wK5m">
              <node concept="37vLTw" id="6lHrNJly3Zr" role="3uHU7B">
                <ref role="3cqZAo" node="6lHrNJly3LS" resolve="rad" />
              </node>
              <node concept="3cmrfG" id="6lHrNJly3Zs" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
            <node concept="1SfVH9" id="681X9TyYZbx" role="37wK5m">
              <ref role="3cqZAo" node="3nsHMGrYPEM" resolve="color" />
            </node>
            <node concept="1SfVH9" id="681X9TyYZ4p" role="37wK5m">
              <ref role="3cqZAo" node="2xAA8jfCHII" resolve="lineColor" />
            </node>
            <node concept="1SfVH9" id="681X9TyYYOn" role="37wK5m">
              <ref role="3cqZAo" node="3nsHMGrYS6G" resolve="text" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3nsHMGrYCVX" role="3clF45" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4M">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z32" resolve="DCanvas" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="3nsHMGrWhjH" role="1FPzNG">
      <property role="TrG5h" value="color" />
      <node concept="3uibUv" id="3nsHMGrWmrT" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="3K4zz7" id="3nsHMGrWoiE" role="33vP2m">
        <node concept="10M0yZ" id="3nsHMGrWopS" role="3K4E3e">
          <ref role="3cqZAo" to="z60i:~Color.WHITE" resolve="WHITE" />
          <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="1SfVH9" id="3nsHMGrWotV" role="3K4GZi">
          <ref role="3cqZAo" node="3nsHMGrWhjH" resolve="color" />
        </node>
        <node concept="3clFbC" id="3nsHMGrWnJl" role="3K4Cdx">
          <node concept="10Nm6u" id="3nsHMGrWoeE" role="3uHU7w" />
          <node concept="1SfVH9" id="3nsHMGrWnsQ" role="3uHU7B">
            <ref role="3cqZAo" node="3nsHMGrWhjH" resolve="color" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="7nNrlO1Gveo" role="1FPzNG">
      <property role="TrG5h" value="shapes" />
      <property role="3K1B09" value="true" />
      <node concept="_YKpA" id="4NMbKfvQyzC" role="1tU5fm">
        <node concept="3LmiP1" id="4NMbKfvQy$T" role="_ZDj9">
          <ref role="2XDbjv" node="skgx$J4Z2r" resolve="DShape" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="Vg5FsxyVVS" role="1FPzNG">
      <property role="TrG5h" value="components" />
      <node concept="_YKpA" id="Vg5FsxyWAN" role="1tU5fm">
        <node concept="3uibUv" id="Vg5FsxzKjf" role="_ZDj9">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
      <node concept="36be1Y" id="Vg5Fsxzidm" role="33vP2m">
        <node concept="2OqwBi" id="Vg5Fsx$e0s" role="2Gi6C2">
          <node concept="2OqwBi" id="Vg5FsxzXh_" role="2Oq$k0">
            <node concept="2OqwBi" id="Vg5Fsxz1Nj" role="2Oq$k0">
              <node concept="1SfVH9" id="Vg5Fsxz0D8" role="2Oq$k0">
                <ref role="3cqZAo" node="7nNrlO1Gveo" resolve="shapes" />
              </node>
              <node concept="13MTOL" id="Vg5Fsxz5lN" role="2OqNvi">
                <ref role="13MTZf" node="Vg5Fsxma4s" resolve="component" />
              </node>
            </node>
            <node concept="1KnU$U" id="Vg5Fsx$9wg" role="2OqNvi" />
          </node>
          <node concept="13MTOL" id="Vg5Fsx$lff" role="2OqNvi">
            <ref role="13MTZf" node="4Oa6zO0kSh3" resolve="jComponent" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="7ypR234gWrk" role="1FPzNG">
      <property role="TrG5h" value="dragged" />
      <property role="KodbT" value="true" />
      <node concept="2OqwBi" id="7ypR234h3UN" role="33vP2m">
        <node concept="1SfVH9" id="7ypR234gZyl" role="2Oq$k0">
          <ref role="3cqZAo" node="7nNrlO1Gveo" resolve="shapes" />
        </node>
        <node concept="1zesIP" id="7ypR234h4XJ" role="2OqNvi">
          <node concept="1bVj0M" id="7ypR234h4XL" role="23t8la">
            <node concept="3clFbS" id="7ypR234h4XM" role="1bW5cS">
              <node concept="3clFbF" id="7ypR234h5mZ" role="3cqZAp">
                <node concept="2OqwBi" id="7ypR234h5z4" role="3clFbG">
                  <node concept="37vLTw" id="7ypR234h5mY" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ypR234h4XN" resolve="fs" />
                  </node>
                  <node concept="32jkxy" id="7ypR234h64Q" role="2OqNvi">
                    <ref role="3cqZAo" node="3nsHMGrYX5W" resolve="hit" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="7ypR234h4XN" role="1bW2Oz">
              <property role="TrG5h" value="fs" />
              <node concept="2jxLKc" id="7ypR234h4XO" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3LmiP1" id="7ypR234h6$w" role="1tU5fm">
        <ref role="2XDbjv" node="skgx$J4Z2r" resolve="DShape" />
      </node>
    </node>
    <node concept="3tBE6w" id="7ypR234h7fd" role="1FPzNG">
      <node concept="3clFbJ" id="7ypR234h895" role="30jUnX">
        <node concept="3y3z36" id="7ypR234h96k" role="3clFbw">
          <node concept="10Nm6u" id="7ypR234h9jA" role="3uHU7w" />
          <node concept="1SfVH9" id="7ypR234h8PB" role="3uHU7B">
            <ref role="3cqZAo" node="7ypR234gWrk" resolve="dragged" />
          </node>
        </node>
        <node concept="3clFbS" id="7ypR234h897" role="3clFbx">
          <node concept="3clFbF" id="7ypR234h9sl" role="3cqZAp">
            <node concept="E34o$" id="7ypR234hbb5" role="3clFbG">
              <node concept="2OqwBi" id="7ypR234hbb8" role="37vLTJ">
                <node concept="1SfVH9" id="7ypR234hbb9" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ypR234gWrk" resolve="dragged" />
                </node>
                <node concept="32jkxy" id="7ypR234hbba" role="2OqNvi">
                  <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
                </node>
              </node>
              <node concept="3clFbT" id="7ypR234hbb7" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="7eX99ou37V6" role="1FPzNG">
      <node concept="9aQIb" id="7eX99ou3j3X" role="30jUnX">
        <node concept="3clFbS" id="7eX99ou3j3Y" role="9aQI4">
          <node concept="3cpWs8" id="7eX99ou3lXY" role="3cqZAp">
            <node concept="3cpWsn" id="7eX99ou3lXZ" role="3cpWs9">
              <property role="TrG5h" value="di" />
              <node concept="3LmiP1" id="7eX99ou3lY0" role="1tU5fm">
                <ref role="2XDbjv" node="2gyk5S1Dvn0" resolve="DDeviceInput" />
              </node>
              <node concept="1SfVH9" id="7eX99ou3lY2" role="33vP2m">
                <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7eX99ou3n7Z" role="3cqZAp">
            <node concept="3clFbS" id="7eX99ou3n81" role="3clFbx">
              <node concept="1DcWWT" id="7eX99ou3s9s" role="3cqZAp">
                <node concept="3clFbS" id="7eX99ou3s9t" role="2LFqv$">
                  <node concept="3clFbF" id="7eX99ou3ut$" role="3cqZAp">
                    <node concept="E34o$" id="7eX99ou3vQW" role="3clFbG">
                      <node concept="3clFbT" id="7eX99ou3wlZ" role="37vLTx" />
                      <node concept="2OqwBi" id="7eX99ou3uzZ" role="37vLTJ">
                        <node concept="37vLTw" id="7eX99ou3utz" role="2Oq$k0">
                          <ref role="3cqZAo" node="7eX99ou3s9D" resolve="nc" />
                        </node>
                        <node concept="32jkxy" id="7eX99ou3uZ1" role="2OqNvi">
                          <ref role="3cqZAo" node="7eX99ou0F5U" resolve="isSelected" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="7eX99ou3s9D" role="1Duv9x">
                  <property role="TrG5h" value="nc" />
                  <node concept="3LmiP1" id="7eX99ou3s9E" role="1tU5fm">
                    <ref role="2XDbjv" node="681X9Tz0KVS" resolve="DNodeComponent" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7eX99ou3s9F" role="1DdaDG">
                  <node concept="2OqwBi" id="7eX99ou3s9G" role="2Oq$k0">
                    <node concept="13MTOL" id="7eX99ou3s9K" role="2OqNvi">
                      <ref role="13MTZf" node="Vg5Fsxma4s" resolve="component" />
                    </node>
                    <node concept="1SfVH9" id="7eX99ou3tFc" role="2Oq$k0">
                      <ref role="3cqZAo" node="7nNrlO1Gveo" resolve="shapes" />
                    </node>
                  </node>
                  <node concept="3MEsww" id="7eX99ou3s9L" role="2OqNvi">
                    <ref role="3MEk2i" node="681X9Tz0KVS" resolve="DNodeComponent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7eX99ou3pPi" role="3clFbw">
              <node concept="2OqwBi" id="7eX99ou3qjL" role="3uHU7w">
                <node concept="37vLTw" id="7eX99ou3qaI" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eX99ou3lXZ" resolve="di" />
                </node>
                <node concept="32jkxy" id="7eX99ou3qB3" role="2OqNvi">
                  <ref role="3cqZAo" node="5uiQOXmd7mf" resolve="isMousePositionIn" />
                </node>
              </node>
              <node concept="1Wc70l" id="7eX99ou3onw" role="3uHU7B">
                <node concept="2OqwBi" id="7eX99ou3nrL" role="3uHU7B">
                  <node concept="37vLTw" id="7eX99ou3nid" role="2Oq$k0">
                    <ref role="3cqZAo" node="7eX99ou3lXZ" resolve="di" />
                  </node>
                  <node concept="32jkxy" id="7eX99ou3nGL" role="2OqNvi">
                    <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="7eX99ou3pdY" role="3uHU7w">
                  <node concept="3J2VuX" id="7eX99ou3pdZ" role="3fr31v">
                    <node concept="2OqwBi" id="7eX99ou3pe0" role="3J2yhu">
                      <node concept="37vLTw" id="7eX99ou3pe1" role="2Oq$k0">
                        <ref role="3cqZAo" node="7eX99ou3lXZ" resolve="di" />
                      </node>
                      <node concept="32jkxy" id="7eX99ou3pe2" role="2OqNvi">
                        <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
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
    <node concept="1FPxxo" id="7ypR234heXV" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3wd" role="1FPzNG">
      <node concept="1OA3wd" id="3nsHMGrWoxt" role="1OA3wj">
        <property role="TrG5h" value="panel" />
        <node concept="3uibUv" id="3nsHMGrWrLE" role="1tU5fm">
          <ref role="3uigEE" to="u4ym:5uiQOXmFP5Y" resolve="DPanel" />
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3we" role="1OA0iy">
        <node concept="3clFbF" id="3nsHMGrWrPp" role="3cqZAp">
          <node concept="37vLTI" id="3nsHMGrWsrd" role="3clFbG">
            <node concept="2ShNRf" id="3nsHMGrWszO" role="37vLTx">
              <node concept="YeOm9" id="3nsHMGrWt9b" role="2ShVmc">
                <node concept="1Y3b0j" id="3nsHMGrWt9e" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" to="u4ym:5uiQOXmFP5Y" resolve="DPanel" />
                  <ref role="37wK5l" to="u4ym:5uiQOXmFSXx" resolve="DPanel" />
                  <node concept="3Tm1VV" id="3nsHMGrWt9f" role="1B3o_S" />
                  <node concept="3clFb_" id="Vg5Fsz9AlL" role="jymVt">
                    <property role="TrG5h" value="paintChildren" />
                    <node concept="3Tmbuc" id="Vg5Fsz9AlM" role="1B3o_S" />
                    <node concept="3cqZAl" id="Vg5Fsz9AlO" role="3clF45" />
                    <node concept="37vLTG" id="Vg5Fsz9AlP" role="3clF46">
                      <property role="TrG5h" value="g" />
                      <node concept="3uibUv" id="Vg5Fsz9AlQ" role="1tU5fm">
                        <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="Vg5Fsz9AlU" role="3clF47">
                      <node concept="3cpWs8" id="3nsHMGrWGYt" role="3cqZAp">
                        <node concept="3cpWsn" id="3nsHMGrWGYu" role="3cpWs9">
                          <property role="TrG5h" value="g2d" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="3nsHMGrWGYv" role="1tU5fm">
                            <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                          </node>
                          <node concept="10QFUN" id="3nsHMGrWIL9" role="33vP2m">
                            <node concept="3uibUv" id="3nsHMGrWJ0u" role="10QFUM">
                              <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                            </node>
                            <node concept="37vLTw" id="3nsHMGrWIcJ" role="10QFUP">
                              <ref role="3cqZAo" node="Vg5Fsz9AlP" resolve="g" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3nsHMGrWV1O" role="3cqZAp">
                        <node concept="2OqwBi" id="3nsHMGrWVYj" role="3clFbG">
                          <node concept="2O$n0J" id="3nsHMGrWV1M" role="2Oq$k0" />
                          <node concept="liA8E" id="3nsHMGrWWDY" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="3nsHMGrWXm4" role="37wK5m">
                              <node concept="3clFbS" id="3nsHMGrWXm5" role="1bW5cS">
                                <node concept="3clFbF" id="3nsHMGrWJFx" role="3cqZAp">
                                  <node concept="2OqwBi" id="3nsHMGrWKo_" role="3clFbG">
                                    <node concept="37vLTw" id="3nsHMGrWJFv" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3nsHMGrWGYu" resolve="g2d" />
                                    </node>
                                    <node concept="liA8E" id="3nsHMGrWLKK" role="2OqNvi">
                                      <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHints(java.util.Map)" resolve="setRenderingHints" />
                                      <node concept="2ShNRf" id="3nsHMGrWMTe" role="37wK5m">
                                        <node concept="1pGfFk" id="3nsHMGrWQ9b" role="2ShVmc">
                                          <property role="373rjd" value="true" />
                                          <ref role="37wK5l" to="z60i:~RenderingHints.&lt;init&gt;(java.awt.RenderingHints$Key,java.lang.Object)" resolve="RenderingHints" />
                                          <node concept="10M0yZ" id="3nsHMGrWRWz" role="37wK5m">
                                            <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_ANTIALIASING" resolve="KEY_ANTIALIASING" />
                                            <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                                          </node>
                                          <node concept="10M0yZ" id="3nsHMGrWTrF" role="37wK5m">
                                            <ref role="3cqZAo" to="z60i:~RenderingHints.VALUE_ANTIALIAS_ON" resolve="VALUE_ANTIALIAS_ON" />
                                            <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="3nsHMGrWYap" role="3cqZAp">
                                  <node concept="2OqwBi" id="3nsHMGrWZAC" role="3clFbG">
                                    <node concept="1SfVH9" id="Vg5FszGcIp" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7nNrlO1Gveo" resolve="shapes" />
                                    </node>
                                    <node concept="2es0OD" id="3nsHMGrX2FT" role="2OqNvi">
                                      <node concept="1bVj0M" id="3nsHMGrX2FV" role="23t8la">
                                        <node concept="3clFbS" id="3nsHMGrX2FW" role="1bW5cS">
                                          <node concept="3clFbF" id="3nsHMGrX5QB" role="3cqZAp">
                                            <node concept="2OqwBi" id="3nsHMGrX6Ij" role="3clFbG">
                                              <node concept="37vLTw" id="3nsHMGrX5QA" role="2Oq$k0">
                                                <ref role="3cqZAo" node="3nsHMGrX2FX" resolve="s" />
                                              </node>
                                              <node concept="2$Gk$L" id="3nsHMGrX7o$" role="2OqNvi">
                                                <ref role="37wK5l" node="7nNrlO1FWHs" resolve="paint" />
                                                <node concept="37vLTw" id="3nsHMGrX8$o" role="37wK5m">
                                                  <ref role="3cqZAo" node="3nsHMGrWGYu" resolve="g2d" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="3nsHMGrX2FX" role="1bW2Oz">
                                          <property role="TrG5h" value="s" />
                                          <node concept="2jxLKc" id="3nsHMGrX2FY" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="Vg5Fsz9AlY" role="3cqZAp">
                                  <node concept="3nyPlj" id="Vg5Fsz9AlX" role="3clFbG">
                                    <ref role="37wK5l" to="dxuu:~JComponent.paintChildren(java.awt.Graphics)" resolve="paintChildren" />
                                    <node concept="37vLTw" id="Vg5Fsz9AlW" role="37wK5m">
                                      <ref role="3cqZAo" node="3nsHMGrWGYu" resolve="g2d" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="Vg5Fsz9AlV" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2tJIrI" id="5nC4fNizHXV" role="jymVt" />
                  <node concept="3clFb_" id="5nC4fNizItD" role="jymVt">
                    <property role="TrG5h" value="isOptimizedDrawingEnabled" />
                    <node concept="3Tm1VV" id="5nC4fNizItE" role="1B3o_S" />
                    <node concept="10P_77" id="5nC4fNizItJ" role="3clF45" />
                    <node concept="3clFbS" id="5nC4fNizItN" role="3clF47">
                      <node concept="3clFbF" id="5nC4fNizItQ" role="3cqZAp">
                        <node concept="3clFbT" id="5nC4fNizOw8" role="3clFbG" />
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5nC4fNizItO" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5IyTM" id="3nsHMGrWrPo" role="37vLTJ">
              <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3nsHMGrWtf4" role="3cqZAp">
          <node concept="2OqwBi" id="3nsHMGrWtK5" role="3clFbG">
            <node concept="5IyTM" id="3nsHMGrWtf2" role="2Oq$k0">
              <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
            </node>
            <node concept="liA8E" id="3nsHMGrWwY6" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
              <node concept="3clFbT" id="3nsHMGrWx3O" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3nsHMGrWxE6" role="3cqZAp">
          <node concept="2OqwBi" id="3nsHMGrWybS" role="3clFbG">
            <node concept="5IyTM" id="3nsHMGrWxE4" role="2Oq$k0">
              <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
            </node>
            <node concept="liA8E" id="3nsHMGrWzOQ" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
              <node concept="2ShNRf" id="3nsHMGrWzSo" role="37wK5m">
                <node concept="1pGfFk" id="3nsHMGrWzR1" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                  <node concept="3cmrfG" id="3nsHMGrWzVj" role="37wK5m">
                    <property role="3cmrfH" value="2000" />
                  </node>
                  <node concept="3cmrfG" id="3nsHMGrW$2q" role="37wK5m">
                    <property role="3cmrfH" value="2000" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3nsHMGrW$rX" role="3cqZAp">
          <node concept="2OqwBi" id="3nsHMGrW$YK" role="3clFbG">
            <node concept="5IyTM" id="3nsHMGrW$rV" role="2Oq$k0">
              <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
            </node>
            <node concept="liA8E" id="3nsHMGrWABI" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setDoubleBuffered(boolean)" resolve="setDoubleBuffered" />
              <node concept="3clFbT" id="3nsHMGrWAKU" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3nsHMGrWFjn" role="3cqZAp">
          <node concept="37vLTI" id="3nsHMGrWFLe" role="3clFbG">
            <node concept="5IyTM" id="3nsHMGrWFSo" role="37vLTx">
              <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
            </node>
            <node concept="5IyTM" id="3nsHMGrWFjl" role="37vLTJ">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3wf" role="1OA0iw">
        <node concept="3clFbF" id="3nsHMGrXayS" role="3cqZAp">
          <node concept="37vLTI" id="3nsHMGrXb1n" role="3clFbG">
            <node concept="10Nm6u" id="3nsHMGrXb6q" role="37vLTx" />
            <node concept="5IyTM" id="3nsHMGrXayR" role="37vLTJ">
              <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="3nsHMGrX9cL" role="1OA3xZ">
        <ref role="1OA0iW" node="3nsHMGrWhjH" resolve="color" />
        <node concept="3clFbS" id="3nsHMGrX9cM" role="1OA0iB">
          <node concept="3clFbF" id="3nsHMGrXb7X" role="3cqZAp">
            <node concept="2OqwBi" id="3nsHMGrXbA$" role="3clFbG">
              <node concept="5IyTM" id="3nsHMGrXb7W" role="2Oq$k0">
                <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
              </node>
              <node concept="liA8E" id="3nsHMGrXdfy" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.setBackground(java.awt.Color)" resolve="setBackground" />
                <node concept="1OA3xA" id="3nsHMGrXdlB" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="3nsHMGrX9Ew" role="1OA3xZ">
        <ref role="1OA0iW" node="7nNrlO1Gveo" resolve="shapes" />
        <node concept="3clFbS" id="3nsHMGrX9Ex" role="1OA0iB">
          <node concept="3clFbF" id="Vg5Fszmhms" role="3cqZAp">
            <node concept="2OqwBi" id="Vg5Fszmi1V" role="3clFbG">
              <node concept="5IyTM" id="Vg5Fszmhmq" role="2Oq$k0">
                <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
              </node>
              <node concept="liA8E" id="Vg5FszmkL5" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.invalidate()" resolve="invalidate" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3nsHMGrXdnm" role="3cqZAp">
            <node concept="2OqwBi" id="3nsHMGrXdPX" role="3clFbG">
              <node concept="5IyTM" id="3nsHMGrXdnl" role="2Oq$k0">
                <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
              </node>
              <node concept="liA8E" id="3nsHMGrXfuV" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="Vg5FsxziAU" role="1OA3xZ">
        <ref role="1OA0iW" node="Vg5FsxyVVS" resolve="components" />
        <node concept="3clFbS" id="Vg5FsxziAV" role="1OA0iB">
          <node concept="3clFbF" id="3gYsXlMLu6H" role="3cqZAp">
            <node concept="2OqwBi" id="3gYsXlMLu6I" role="3clFbG">
              <node concept="2OqwBi" id="3gYsXlMLu6J" role="2Oq$k0">
                <node concept="1OA3xx" id="3gYsXlMLu6K" role="2Oq$k0" />
                <node concept="3zZkjj" id="3gYsXlMLu6L" role="2OqNvi">
                  <node concept="1bVj0M" id="3gYsXlMLu6M" role="23t8la">
                    <node concept="3clFbS" id="3gYsXlMLu6N" role="1bW5cS">
                      <node concept="3clFbF" id="3gYsXlMLu6O" role="3cqZAp">
                        <node concept="3fqX7Q" id="3gYsXlMLu6P" role="3clFbG">
                          <node concept="2OqwBi" id="3gYsXlMLu6Q" role="3fr31v">
                            <node concept="1OA3xA" id="3gYsXlMLu6R" role="2Oq$k0" />
                            <node concept="3JPx81" id="3gYsXlMLPMj" role="2OqNvi">
                              <node concept="37vLTw" id="3gYsXlMLQ7y" role="25WWJ7">
                                <ref role="3cqZAo" node="3gYsXlMLu6W" resolve="c" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3gYsXlMLu6W" role="1bW2Oz">
                      <property role="TrG5h" value="c" />
                      <node concept="2jxLKc" id="3gYsXlMLu6X" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2es0OD" id="3gYsXlMLu6Y" role="2OqNvi">
                <node concept="1bVj0M" id="3gYsXlMLu6Z" role="23t8la">
                  <node concept="3clFbS" id="3gYsXlMLu70" role="1bW5cS">
                    <node concept="3clFbF" id="3gYsXlMLu71" role="3cqZAp">
                      <node concept="2OqwBi" id="3gYsXlMLu72" role="3clFbG">
                        <node concept="5IyTM" id="3gYsXlMLu73" role="2Oq$k0">
                          <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
                        </node>
                        <node concept="liA8E" id="3gYsXlMLu74" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.remove(java.awt.Component)" resolve="remove" />
                          <node concept="37vLTw" id="3gYsXlMLu77" role="37wK5m">
                            <ref role="3cqZAo" node="3gYsXlMLu7a" resolve="c" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3gYsXlMLu7a" role="1bW2Oz">
                    <property role="TrG5h" value="c" />
                    <node concept="2jxLKc" id="3gYsXlMLu7b" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3gYsXlMLu7c" role="3cqZAp">
            <node concept="2OqwBi" id="3gYsXlMLu7d" role="3clFbG">
              <node concept="2OqwBi" id="3gYsXlMLu7e" role="2Oq$k0">
                <node concept="1OA3xA" id="3gYsXlMLu7f" role="2Oq$k0" />
                <node concept="3zZkjj" id="3gYsXlMLu7g" role="2OqNvi">
                  <node concept="1bVj0M" id="3gYsXlMLu7h" role="23t8la">
                    <node concept="3clFbS" id="3gYsXlMLu7i" role="1bW5cS">
                      <node concept="3clFbF" id="3gYsXlMLu7j" role="3cqZAp">
                        <node concept="3fqX7Q" id="3gYsXlMLu7k" role="3clFbG">
                          <node concept="2OqwBi" id="3gYsXlMLu7l" role="3fr31v">
                            <node concept="1OA3xx" id="3gYsXlMLu7m" role="2Oq$k0" />
                            <node concept="3JPx81" id="3gYsXlMLSTz" role="2OqNvi">
                              <node concept="37vLTw" id="3gYsXlMLT8H" role="25WWJ7">
                                <ref role="3cqZAo" node="3gYsXlMLu7r" resolve="c" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3gYsXlMLu7r" role="1bW2Oz">
                      <property role="TrG5h" value="c" />
                      <node concept="2jxLKc" id="3gYsXlMLu7s" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2es0OD" id="3gYsXlMLu7t" role="2OqNvi">
                <node concept="1bVj0M" id="3gYsXlMLu7u" role="23t8la">
                  <node concept="3clFbS" id="3gYsXlMLu7v" role="1bW5cS">
                    <node concept="3clFbF" id="3gYsXlMLu7w" role="3cqZAp">
                      <node concept="2OqwBi" id="3gYsXlMLu7x" role="3clFbG">
                        <node concept="5IyTM" id="3gYsXlMLu7y" role="2Oq$k0">
                          <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
                        </node>
                        <node concept="liA8E" id="3gYsXlMLu7z" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="37vLTw" id="3gYsXlMLu7A" role="37wK5m">
                            <ref role="3cqZAo" node="3gYsXlMLu7G" resolve="c" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3gYsXlMLu7G" role="1bW2Oz">
                    <property role="TrG5h" value="c" />
                    <node concept="2jxLKc" id="3gYsXlMLu7H" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3gYsXlMLu7I" role="3cqZAp">
            <node concept="2OqwBi" id="3gYsXlMLu7J" role="3clFbG">
              <node concept="5IyTM" id="3gYsXlMLu7K" role="2Oq$k0">
                <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
              </node>
              <node concept="liA8E" id="3gYsXlMLu7L" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.invalidate()" resolve="invalidate" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3gYsXlMLtvv" role="3cqZAp">
            <node concept="2OqwBi" id="3gYsXlMLtvw" role="3clFbG">
              <node concept="5IyTM" id="3gYsXlMLtvx" role="2Oq$k0">
                <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
              </node>
              <node concept="liA8E" id="3gYsXlMLtvy" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2UJ2oG" id="4NMtPTvGW7r">
    <property role="3GE5qa" value="values" />
    <property role="TrG5h" value="DPoint" />
    <property role="1VbJ0V" value="true" />
    <node concept="32q3_s" id="4NMtPTvGW7s" role="2UJ2y3">
      <property role="TrG5h" value="x" />
      <node concept="10P55v" id="4NMtPTvGW7$" role="1tU5fm" />
    </node>
    <node concept="32q3_s" id="4NMtPTvGXWc" role="2UJ2y3">
      <property role="TrG5h" value="y" />
      <node concept="10P55v" id="4NMtPTvGXWs" role="1tU5fm" />
    </node>
  </node>
  <node concept="2UJ2oG" id="4NMtPTvGXY5">
    <property role="3GE5qa" value="values" />
    <property role="TrG5h" value="DDimension" />
    <property role="1VbJ0V" value="true" />
    <node concept="32q3_s" id="4NMtPTvGXY6" role="2UJ2y3">
      <property role="TrG5h" value="width" />
      <node concept="10P55v" id="4NMtPTvGXYg" role="1tU5fm" />
    </node>
    <node concept="32q3_s" id="4NMtPTvGY55" role="2UJ2y3">
      <property role="TrG5h" value="height" />
      <node concept="10P55v" id="4NMtPTvGY5p" role="1tU5fm" />
    </node>
  </node>
  <node concept="3LmNE2" id="4NMtPTvGY8G">
    <property role="3GE5qa" value="values" />
    <ref role="2UJ2Q8" node="4NMtPTvGXY5" resolve="DDimension" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="kUGYC" id="46vl3mDwqPk" role="1FPzNG">
      <property role="TrG5h" value="toPoint" />
      <property role="2RZe$O" value="true" />
      <node concept="3Tm1VV" id="46vl3mDwqPl" role="1B3o_S" />
      <node concept="3clFbS" id="46vl3mDwqPm" role="3clF47">
        <node concept="3cpWs6" id="46vl3mDwqTa" role="3cqZAp">
          <node concept="3KEV6E" id="46vl3mDwqTR" role="3cqZAk">
            <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
            <node concept="2Pygp_" id="46vl3mDwqTS" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
              <node concept="1SfVH9" id="46vl3mDwvZB" role="2PygpA">
                <ref role="3cqZAo" node="4NMtPTvGXY6" resolve="width" />
              </node>
            </node>
            <node concept="2Pygp_" id="46vl3mDwqTT" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
              <node concept="1SfVH9" id="46vl3mDww05" role="2PygpA">
                <ref role="3cqZAo" node="4NMtPTvGY55" resolve="height" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3LmiP1" id="46vl3mDwqP$" role="3clF45">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="kUGYC" id="7ESv7kyhKXZ" role="1FPzNG">
      <property role="TrG5h" value="width" />
      <property role="2RZe$O" value="true" />
      <node concept="3Tm1VV" id="7ESv7kyhKY0" role="1B3o_S" />
      <node concept="3clFbS" id="7ESv7kyhKY1" role="3clF47">
        <node concept="3clFbF" id="7ESv7kyhKY2" role="3cqZAp">
          <node concept="10QFUN" id="7ESv7kyhKY3" role="3clFbG">
            <node concept="10Oyi0" id="7ESv7kyhKY4" role="10QFUM" />
            <node concept="10QFUN" id="7ESv7kyhKY5" role="10QFUP">
              <node concept="10P55v" id="7ESv7kyhKY6" role="10QFUM" />
              <node concept="1SfVH9" id="7ESv7kyhLus" role="10QFUP">
                <ref role="3cqZAo" node="4NMtPTvGXY6" resolve="width" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="7ESv7kyhKY8" role="3clF45" />
    </node>
    <node concept="kUGYC" id="7ESv7kyhKY9" role="1FPzNG">
      <property role="TrG5h" value="height" />
      <property role="2RZe$O" value="true" />
      <node concept="3Tm1VV" id="7ESv7kyhKYa" role="1B3o_S" />
      <node concept="3clFbS" id="7ESv7kyhKYb" role="3clF47">
        <node concept="3clFbF" id="7ESv7kyhKYc" role="3cqZAp">
          <node concept="10QFUN" id="7ESv7kyhKYd" role="3clFbG">
            <node concept="10Oyi0" id="7ESv7kyhKYe" role="10QFUM" />
            <node concept="10QFUN" id="7ESv7kyhKYf" role="10QFUP">
              <node concept="10P55v" id="7ESv7kyhKYg" role="10QFUM" />
              <node concept="1SfVH9" id="7ESv7kyhLvM" role="10QFUP">
                <ref role="3cqZAo" node="4NMtPTvGY55" resolve="height" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="7ESv7kyhKYi" role="3clF45" />
    </node>
  </node>
  <node concept="3LmNE2" id="46vl3mDwnEI">
    <property role="3GE5qa" value="values" />
    <ref role="2UJ2Q8" node="4NMtPTvGW7r" resolve="DPoint" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="kUGYC" id="7ESv7kyhK0G" role="1FPzNG">
      <property role="TrG5h" value="x" />
      <property role="2RZe$O" value="true" />
      <node concept="3Tm1VV" id="7ESv7kyhK0H" role="1B3o_S" />
      <node concept="3clFbS" id="7ESv7kyhK0I" role="3clF47">
        <node concept="3clFbF" id="7ESv7kyhKu8" role="3cqZAp">
          <node concept="10QFUN" id="7ESv7kyhKu9" role="3clFbG">
            <node concept="10Oyi0" id="7ESv7kyhKua" role="10QFUM" />
            <node concept="10QFUN" id="7ESv7kyhKub" role="10QFUP">
              <node concept="10P55v" id="7ESv7kyhKuc" role="10QFUM" />
              <node concept="1SfVH9" id="7ESv7kyhKud" role="10QFUP">
                <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="7ESv7kyhK0X" role="3clF45" />
    </node>
    <node concept="kUGYC" id="7ESv7kyhK1A" role="1FPzNG">
      <property role="TrG5h" value="y" />
      <property role="2RZe$O" value="true" />
      <node concept="3Tm1VV" id="7ESv7kyhK1B" role="1B3o_S" />
      <node concept="3clFbS" id="7ESv7kyhK1C" role="3clF47">
        <node concept="3clFbF" id="7ESv7kyhK2X" role="3cqZAp">
          <node concept="10QFUN" id="7ESv7kyhK9o" role="3clFbG">
            <node concept="10Oyi0" id="7ESv7kyhKe_" role="10QFUM" />
            <node concept="10QFUN" id="7ESv7kyhK2S" role="10QFUP">
              <node concept="10P55v" id="7ESv7kyhK3v" role="10QFUM" />
              <node concept="1SfVH9" id="7ESv7kyhKNr" role="10QFUP">
                <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="7ESv7kyhK28" role="3clF45" />
    </node>
    <node concept="kUGYC" id="2xAA8jfAMdM" role="1FPzNG">
      <property role="TrG5h" value="isNull" />
      <property role="2RZe$O" value="true" />
      <node concept="3Tm1VV" id="2xAA8jfAMdN" role="1B3o_S" />
      <node concept="3clFbS" id="2xAA8jfAMdO" role="3clF47">
        <node concept="3clFbF" id="2xAA8jfAMzb" role="3cqZAp">
          <node concept="1Wc70l" id="2xAA8jfANPB" role="3clFbG">
            <node concept="3clFbC" id="2xAA8jfAOyw" role="3uHU7w">
              <node concept="3b6qkQ" id="2xAA8jfAODI" role="3uHU7w">
                <property role="$nhwW" value="0.0d" />
              </node>
              <node concept="1SfVH9" id="2xAA8jfANTr" role="3uHU7B">
                <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
              </node>
            </node>
            <node concept="3clFbC" id="2xAA8jfANh6" role="3uHU7B">
              <node concept="1SfVH9" id="2xAA8jfAMza" role="3uHU7B">
                <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
              </node>
              <node concept="3b6qkQ" id="2xAA8jfAN5r" role="3uHU7w">
                <property role="$nhwW" value="0.0d" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2xAA8jfAMfV" role="3clF45" />
    </node>
    <node concept="32q3_s" id="2xAA8jfBn6l" role="1FPzNG">
      <property role="TrG5h" value="unit" />
      <property role="1oBfZR" value="true" />
      <node concept="3LmiP1" id="2xAA8jfBntm" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2275Hy" id="2xAA8jfBt7V" role="33vP2m">
        <ref role="37wK5l" node="2xAA8jfBhgV" resolve="div" />
        <node concept="1SfVH9" id="2xAA8jfBtiL" role="37wK5m">
          <ref role="3cqZAo" node="2xAA8jfAPnE" resolve="length" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="5rHgiqQFNOE" role="1FPzNG">
      <property role="TrG5h" value="perp" />
      <property role="1oBfZR" value="true" />
      <node concept="3LmiP1" id="5rHgiqQFTCZ" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="3KEV6E" id="5rHgiqQFVf8" role="33vP2m">
        <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
        <node concept="2Pygp_" id="5rHgiqQFVf9" role="2Pygpa">
          <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
          <node concept="1ZRNhn" id="5rHgiqQFVux" role="2PygpA">
            <node concept="1SfVH9" id="5rHgiqQFVzu" role="2$L3a6">
              <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
            </node>
          </node>
        </node>
        <node concept="2Pygp_" id="5rHgiqQFVfa" role="2Pygpa">
          <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
          <node concept="1SfVH9" id="5rHgiqQFY_G" role="2PygpA">
            <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
          </node>
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="5rHgiqQFZUk" role="1FPzNG">
      <property role="TrG5h" value="perp" />
      <property role="2RZe$O" value="true" />
      <node concept="37vLTG" id="5rHgiqQG0RO" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3LmiP1" id="5rHgiqQG11Q" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5rHgiqQFZUl" role="1B3o_S" />
      <node concept="3clFbS" id="5rHgiqQFZUm" role="3clF47">
        <node concept="3clFbF" id="5rHgiqQG1$L" role="3cqZAp">
          <node concept="3cpWsd" id="5rHgiqQG4kB" role="3clFbG">
            <node concept="17qRlL" id="5rHgiqQG5cE" role="3uHU7w">
              <node concept="2OqwBi" id="5rHgiqQG5$w" role="3uHU7w">
                <node concept="37vLTw" id="5rHgiqQG5xE" role="2Oq$k0">
                  <ref role="3cqZAo" node="5rHgiqQG0RO" resolve="p" />
                </node>
                <node concept="32jkxy" id="5rHgiqQG6aR" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                </node>
              </node>
              <node concept="1SfVH9" id="5rHgiqQG4At" role="3uHU7B">
                <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
              </node>
            </node>
            <node concept="17qRlL" id="5rHgiqQG2tZ" role="3uHU7B">
              <node concept="1SfVH9" id="5rHgiqQG1$K" role="3uHU7B">
                <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
              </node>
              <node concept="2OqwBi" id="5rHgiqQG2Mn" role="3uHU7w">
                <node concept="37vLTw" id="5rHgiqQG2H2" role="2Oq$k0">
                  <ref role="3cqZAo" node="5rHgiqQG0RO" resolve="p" />
                </node>
                <node concept="32jkxy" id="5rHgiqQG3$i" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P55v" id="5rHgiqQG1c1" role="3clF45" />
    </node>
    <node concept="32q3_s" id="2xAA8jfAPnE" role="1FPzNG">
      <property role="TrG5h" value="length" />
      <property role="1oBfZR" value="true" />
      <node concept="10P55v" id="2xAA8jfAPrn" role="1tU5fm" />
      <node concept="2YIFZM" id="2xAA8jfAV2H" role="33vP2m">
        <ref role="37wK5l" to="wyt6:~Math.sqrt(double)" resolve="sqrt" />
        <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
        <node concept="3cpWs3" id="2xAA8jfAWm3" role="37wK5m">
          <node concept="17qRlL" id="2xAA8jfAVM5" role="3uHU7B">
            <node concept="1SfVH9" id="2xAA8jfAVaK" role="3uHU7B">
              <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
            </node>
            <node concept="1SfVH9" id="2xAA8jfAVVT" role="3uHU7w">
              <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
            </node>
          </node>
          <node concept="17qRlL" id="2xAA8jfAVHE" role="3uHU7w">
            <node concept="1SfVH9" id="2xAA8jfAVQl" role="3uHU7w">
              <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
            </node>
            <node concept="1SfVH9" id="2xAA8jfAVhi" role="3uHU7B">
              <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="2xAA8jfAZeM" role="1FPzNG">
      <property role="2RZe$O" value="true" />
      <property role="TrG5h" value="dot" />
      <node concept="37vLTG" id="2xAA8jfAZnV" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3LmiP1" id="2xAA8jfAZpf" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2xAA8jfAZeN" role="1B3o_S" />
      <node concept="3clFbS" id="2xAA8jfAZeO" role="3clF47">
        <node concept="3clFbF" id="2xAA8jfAZrT" role="3cqZAp">
          <node concept="3cpWs3" id="2xAA8jfB0QE" role="3clFbG">
            <node concept="17qRlL" id="2xAA8jfB1wK" role="3uHU7w">
              <node concept="2OqwBi" id="2xAA8jfB1Ew" role="3uHU7w">
                <node concept="37vLTw" id="2xAA8jfB1zH" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfAZnV" resolve="p" />
                </node>
                <node concept="32jkxy" id="2xAA8jfB1XL" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                </node>
              </node>
              <node concept="1SfVH9" id="2xAA8jfB10N" role="3uHU7B">
                <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
              </node>
            </node>
            <node concept="17qRlL" id="2xAA8jfAZNR" role="3uHU7B">
              <node concept="1SfVH9" id="2xAA8jfAZrS" role="3uHU7B">
                <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
              </node>
              <node concept="2OqwBi" id="2xAA8jfAZZI" role="3uHU7w">
                <node concept="37vLTw" id="2xAA8jfAZQh" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfAZnV" resolve="p" />
                </node>
                <node concept="32jkxy" id="2xAA8jfB0jK" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P55v" id="2xAA8jfAZlt" role="3clF45" />
    </node>
    <node concept="kUGYC" id="2xAA8jfB2rY" role="1FPzNG">
      <property role="2RZe$O" value="true" />
      <property role="TrG5h" value="minus" />
      <node concept="37vLTG" id="2xAA8jfB2rZ" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3LmiP1" id="2xAA8jfB2s0" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2xAA8jfB2s1" role="1B3o_S" />
      <node concept="3clFbS" id="2xAA8jfB2s2" role="3clF47">
        <node concept="3clFbF" id="2xAA8jfB2s3" role="3cqZAp">
          <node concept="3K4zz7" id="2xAA8jfB47j" role="3clFbG">
            <node concept="2Wb9Zs" id="2xAA8jfB4ay" role="3K4E3e" />
            <node concept="3KEV6E" id="2xAA8jfB4dx" role="3K4GZi">
              <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
              <node concept="2Pygp_" id="2xAA8jfB4dy" role="2Pygpa">
                <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                <node concept="3cpWsd" id="2xAA8jfB4Ro" role="2PygpA">
                  <node concept="2OqwBi" id="2xAA8jfB53J" role="3uHU7w">
                    <node concept="37vLTw" id="2xAA8jfB4VZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="2xAA8jfB2rZ" resolve="p" />
                    </node>
                    <node concept="32jkxy" id="2xAA8jfB5RY" role="2OqNvi">
                      <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                    </node>
                  </node>
                  <node concept="1SfVH9" id="2xAA8jfB4ip" role="3uHU7B">
                    <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                  </node>
                </node>
              </node>
              <node concept="2Pygp_" id="2xAA8jfB4dz" role="2Pygpa">
                <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                <node concept="3cpWsd" id="2xAA8jfB6oA" role="2PygpA">
                  <node concept="2OqwBi" id="2xAA8jfB6Dj" role="3uHU7w">
                    <node concept="37vLTw" id="2xAA8jfB6wQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="2xAA8jfB2rZ" resolve="p" />
                    </node>
                    <node concept="32jkxy" id="2xAA8jfB6U$" role="2OqNvi">
                      <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                    </node>
                  </node>
                  <node concept="1SfVH9" id="2xAA8jfB5Yt" role="3uHU7B">
                    <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2xAA8jfB3uz" role="3K4Cdx">
              <node concept="37vLTw" id="2xAA8jfB3nE" role="2Oq$k0">
                <ref role="3cqZAo" node="2xAA8jfB2rZ" resolve="p" />
              </node>
              <node concept="2$Gk$L" id="2xAA8jfB3IZ" role="2OqNvi">
                <ref role="37wK5l" node="2xAA8jfAMdM" resolve="isNull" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3LmiP1" id="2xAA8jfB6XW" role="3clF45">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="kUGYC" id="2xAA8jfB71b" role="1FPzNG">
      <property role="2RZe$O" value="true" />
      <property role="TrG5h" value="plus" />
      <node concept="37vLTG" id="2xAA8jfB71c" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3LmiP1" id="2xAA8jfB71d" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2xAA8jfB71e" role="1B3o_S" />
      <node concept="3clFbS" id="2xAA8jfB71f" role="3clF47">
        <node concept="3clFbF" id="2xAA8jfB71g" role="3cqZAp">
          <node concept="3K4zz7" id="2xAA8jfB71h" role="3clFbG">
            <node concept="2Wb9Zs" id="2xAA8jfB71i" role="3K4E3e" />
            <node concept="2OqwBi" id="2xAA8jfB71w" role="3K4Cdx">
              <node concept="37vLTw" id="2xAA8jfB71x" role="2Oq$k0">
                <ref role="3cqZAo" node="2xAA8jfB71c" resolve="p" />
              </node>
              <node concept="2$Gk$L" id="2xAA8jfB71y" role="2OqNvi">
                <ref role="37wK5l" node="2xAA8jfAMdM" resolve="isNull" />
              </node>
            </node>
            <node concept="3K4zz7" id="2xAA8jfBbB2" role="3K4GZi">
              <node concept="37vLTw" id="2xAA8jfBf8F" role="3K4E3e">
                <ref role="3cqZAo" node="2xAA8jfB71c" resolve="p" />
              </node>
              <node concept="3KEV6E" id="2xAA8jfB71j" role="3K4GZi">
                <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                <node concept="2Pygp_" id="2xAA8jfB71k" role="2Pygpa">
                  <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                  <node concept="3cpWs3" id="2xAA8jfB7MS" role="2PygpA">
                    <node concept="1SfVH9" id="2xAA8jfB71p" role="3uHU7B">
                      <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                    </node>
                    <node concept="2OqwBi" id="2xAA8jfB71m" role="3uHU7w">
                      <node concept="37vLTw" id="2xAA8jfB71n" role="2Oq$k0">
                        <ref role="3cqZAo" node="2xAA8jfB71c" resolve="p" />
                      </node>
                      <node concept="32jkxy" id="2xAA8jfB71o" role="2OqNvi">
                        <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Pygp_" id="2xAA8jfB71q" role="2Pygpa">
                  <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                  <node concept="3cpWs3" id="2xAA8jfB7QW" role="2PygpA">
                    <node concept="1SfVH9" id="2xAA8jfB71v" role="3uHU7B">
                      <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                    </node>
                    <node concept="2OqwBi" id="2xAA8jfB71s" role="3uHU7w">
                      <node concept="37vLTw" id="2xAA8jfB71t" role="2Oq$k0">
                        <ref role="3cqZAo" node="2xAA8jfB71c" resolve="p" />
                      </node>
                      <node concept="32jkxy" id="2xAA8jfB71u" role="2OqNvi">
                        <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2275Hy" id="2xAA8jfBeSV" role="3K4Cdx">
                <ref role="37wK5l" node="2xAA8jfAMdM" resolve="isNull" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3LmiP1" id="2xAA8jfB71z" role="3clF45">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="kUGYC" id="2xAA8jfB8jz" role="1FPzNG">
      <property role="2RZe$O" value="true" />
      <property role="TrG5h" value="mult" />
      <node concept="37vLTG" id="2xAA8jfB8j$" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3LmiP1" id="2xAA8jfB8j_" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2xAA8jfB8jA" role="1B3o_S" />
      <node concept="3clFbS" id="2xAA8jfB8jB" role="3clF47">
        <node concept="3clFbF" id="2xAA8jfB8jC" role="3cqZAp">
          <node concept="3K4zz7" id="2xAA8jfB8jD" role="3clFbG">
            <node concept="37vLTw" id="2xAA8jfBcHv" role="3K4E3e">
              <ref role="3cqZAo" node="2xAA8jfB8j$" resolve="p" />
            </node>
            <node concept="2OqwBi" id="2xAA8jfB8jS" role="3K4Cdx">
              <node concept="37vLTw" id="2xAA8jfB8jT" role="2Oq$k0">
                <ref role="3cqZAo" node="2xAA8jfB8j$" resolve="p" />
              </node>
              <node concept="2$Gk$L" id="2xAA8jfB8jU" role="2OqNvi">
                <ref role="37wK5l" node="2xAA8jfAMdM" resolve="isNull" />
              </node>
            </node>
            <node concept="3K4zz7" id="2xAA8jfBdD4" role="3K4GZi">
              <node concept="2Wb9Zs" id="2xAA8jfBdTJ" role="3K4E3e" />
              <node concept="2275Hy" id="2xAA8jfBcVc" role="3K4Cdx">
                <ref role="37wK5l" node="2xAA8jfAMdM" resolve="isNull" />
              </node>
              <node concept="3KEV6E" id="2xAA8jfB8jF" role="3K4GZi">
                <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                <node concept="2Pygp_" id="2xAA8jfB8jG" role="2Pygpa">
                  <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                  <node concept="17qRlL" id="2xAA8jfB94l" role="2PygpA">
                    <node concept="1SfVH9" id="2xAA8jfB8jL" role="3uHU7B">
                      <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                    </node>
                    <node concept="2OqwBi" id="2xAA8jfB8jI" role="3uHU7w">
                      <node concept="37vLTw" id="2xAA8jfB8jJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="2xAA8jfB8j$" resolve="p" />
                      </node>
                      <node concept="32jkxy" id="2xAA8jfB8jK" role="2OqNvi">
                        <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Pygp_" id="2xAA8jfB8jM" role="2Pygpa">
                  <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                  <node concept="17qRlL" id="2xAA8jfB98R" role="2PygpA">
                    <node concept="1SfVH9" id="2xAA8jfB8jR" role="3uHU7B">
                      <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                    </node>
                    <node concept="2OqwBi" id="2xAA8jfB8jO" role="3uHU7w">
                      <node concept="37vLTw" id="2xAA8jfB8jP" role="2Oq$k0">
                        <ref role="3cqZAo" node="2xAA8jfB8j$" resolve="p" />
                      </node>
                      <node concept="32jkxy" id="2xAA8jfB8jQ" role="2OqNvi">
                        <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3LmiP1" id="2xAA8jfB8jV" role="3clF45">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="kUGYC" id="2xAA8jfB2O5" role="1FPzNG">
      <property role="2RZe$O" value="true" />
      <property role="TrG5h" value="mult" />
      <node concept="3Tm1VV" id="2xAA8jfB2O8" role="1B3o_S" />
      <node concept="3clFbS" id="2xAA8jfB2O9" role="3clF47">
        <node concept="3clFbF" id="2xAA8jfBfsu" role="3cqZAp">
          <node concept="3K4zz7" id="2xAA8jfBfQv" role="3clFbG">
            <node concept="2Wb9Zs" id="2xAA8jfBfXm" role="3K4E3e" />
            <node concept="2275Hy" id="2xAA8jfBfst" role="3K4Cdx">
              <ref role="37wK5l" node="2xAA8jfAMdM" resolve="isNull" />
            </node>
            <node concept="3K4zz7" id="2xAA8jfBkRp" role="3K4GZi">
              <node concept="2Wb9Zs" id="2xAA8jfBkYW" role="3K4E3e" />
              <node concept="3clFbC" id="2xAA8jfBiJe" role="3K4Cdx">
                <node concept="3b6qkQ" id="2xAA8jfBjLx" role="3uHU7w">
                  <property role="$nhwW" value="1.0d" />
                </node>
                <node concept="37vLTw" id="2xAA8jfBi1U" role="3uHU7B">
                  <ref role="3cqZAo" node="2xAA8jfB9zS" resolve="d" />
                </node>
              </node>
              <node concept="3KEV6E" id="2xAA8jfBg1C" role="3K4GZi">
                <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                <node concept="2Pygp_" id="2xAA8jfBg1D" role="2Pygpa">
                  <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                  <node concept="17qRlL" id="2xAA8jfBgyg" role="2PygpA">
                    <node concept="37vLTw" id="2xAA8jfBgBH" role="3uHU7w">
                      <ref role="3cqZAo" node="2xAA8jfB9zS" resolve="d" />
                    </node>
                    <node concept="1SfVH9" id="2xAA8jfBg7b" role="3uHU7B">
                      <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                    </node>
                  </node>
                </node>
                <node concept="2Pygp_" id="2xAA8jfBg1E" role="2Pygpa">
                  <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                  <node concept="17qRlL" id="2xAA8jfBh7y" role="2PygpA">
                    <node concept="37vLTw" id="2xAA8jfBhcO" role="3uHU7w">
                      <ref role="3cqZAo" node="2xAA8jfB9zS" resolve="d" />
                    </node>
                    <node concept="1SfVH9" id="2xAA8jfBgGq" role="3uHU7B">
                      <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3LmiP1" id="2xAA8jfB9ds" role="3clF45">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="37vLTG" id="2xAA8jfB9zS" role="3clF46">
        <property role="TrG5h" value="d" />
        <node concept="10P55v" id="2xAA8jfB9zR" role="1tU5fm" />
      </node>
    </node>
    <node concept="kUGYC" id="2xAA8jfBhgV" role="1FPzNG">
      <property role="2RZe$O" value="true" />
      <property role="TrG5h" value="div" />
      <node concept="3Tm1VV" id="2xAA8jfBhgW" role="1B3o_S" />
      <node concept="3clFbS" id="2xAA8jfBhgX" role="3clF47">
        <node concept="3clFbF" id="2xAA8jfBhgY" role="3cqZAp">
          <node concept="3K4zz7" id="2xAA8jfBlSX" role="3clFbG">
            <node concept="2Wb9Zs" id="2xAA8jfBlSY" role="3K4E3e" />
            <node concept="2275Hy" id="2xAA8jfBlSZ" role="3K4Cdx">
              <ref role="37wK5l" node="2xAA8jfAMdM" resolve="isNull" />
            </node>
            <node concept="3K4zz7" id="2xAA8jfBlT0" role="3K4GZi">
              <node concept="2Wb9Zs" id="2xAA8jfBlT1" role="3K4E3e" />
              <node concept="3clFbC" id="2xAA8jfBlT2" role="3K4Cdx">
                <node concept="3b6qkQ" id="2xAA8jfBlT3" role="3uHU7w">
                  <property role="$nhwW" value="1.0d" />
                </node>
                <node concept="37vLTw" id="2xAA8jfBlT4" role="3uHU7B">
                  <ref role="3cqZAo" node="2xAA8jfBhhc" resolve="d" />
                </node>
              </node>
              <node concept="3KEV6E" id="2xAA8jfBlT5" role="3K4GZi">
                <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                <node concept="2Pygp_" id="2xAA8jfBlT6" role="2Pygpa">
                  <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                  <node concept="FJ1c_" id="2xAA8jfBmek" role="2PygpA">
                    <node concept="1SfVH9" id="2xAA8jfBlT9" role="3uHU7B">
                      <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="2xAA8jfBlT8" role="3uHU7w">
                      <ref role="3cqZAo" node="2xAA8jfBhhc" resolve="d" />
                    </node>
                  </node>
                </node>
                <node concept="2Pygp_" id="2xAA8jfBlTa" role="2Pygpa">
                  <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                  <node concept="FJ1c_" id="2xAA8jfBmkw" role="2PygpA">
                    <node concept="1SfVH9" id="2xAA8jfBlTd" role="3uHU7B">
                      <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="2xAA8jfBlTc" role="3uHU7w">
                      <ref role="3cqZAo" node="2xAA8jfBhhc" resolve="d" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3LmiP1" id="2xAA8jfBhhb" role="3clF45">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="37vLTG" id="2xAA8jfBhhc" role="3clF46">
        <property role="TrG5h" value="d" />
        <node concept="10P55v" id="2xAA8jfBhhd" role="1tU5fm" />
      </node>
    </node>
    <node concept="kUGYC" id="2xAA8jfBtte" role="1FPzNG">
      <property role="TrG5h" value="equalAngle" />
      <property role="2RZe$O" value="true" />
      <node concept="37vLTG" id="2xAA8jfBuuQ" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3LmiP1" id="2xAA8jfBuFA" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="37vLTG" id="5rHgiqQG9M$" role="3clF46">
        <property role="TrG5h" value="dist" />
        <node concept="10P55v" id="5rHgiqQG9ZL" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2xAA8jfBttf" role="1B3o_S" />
      <node concept="3clFbS" id="2xAA8jfBttg" role="3clF47">
        <node concept="3clFbF" id="2xAA8jfBu_z" role="3cqZAp">
          <node concept="3eOVzh" id="2xAA8jfBwSV" role="3clFbG">
            <node concept="37vLTw" id="5rHgiqQGbIz" role="3uHU7w">
              <ref role="3cqZAo" node="5rHgiqQG9M$" resolve="dist" />
            </node>
            <node concept="2OqwBi" id="2xAA8jfBvTu" role="3uHU7B">
              <node concept="2OqwBi" id="2xAA8jfBuW9" role="2Oq$k0">
                <node concept="1SfVH9" id="2xAA8jfBu_y" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfBn6l" resolve="unit" />
                </node>
                <node concept="2$Gk$L" id="2xAA8jfBvgg" role="2OqNvi">
                  <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                  <node concept="2OqwBi" id="2xAA8jfBvy7" role="37wK5m">
                    <node concept="37vLTw" id="2xAA8jfBvnx" role="2Oq$k0">
                      <ref role="3cqZAo" node="2xAA8jfBuuQ" resolve="p" />
                    </node>
                    <node concept="32jkxy" id="2xAA8jfBvK8" role="2OqNvi">
                      <ref role="3cqZAo" node="2xAA8jfBn6l" resolve="unit" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="32jkxy" id="2xAA8jfBwfo" role="2OqNvi">
                <ref role="3cqZAo" node="2xAA8jfAPnE" resolve="length" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2xAA8jfBuaS" role="3clF45" />
    </node>
    <node concept="kUGYC" id="10mRasGA8ci" role="1FPzNG">
      <property role="TrG5h" value="snap" />
      <property role="2RZe$O" value="true" />
      <node concept="37vLTG" id="10mRasGAbnp" role="3clF46">
        <property role="TrG5h" value="dist" />
        <node concept="10Oyi0" id="10mRasGCFys" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="10mRasGA8cj" role="1B3o_S" />
      <node concept="3clFbS" id="10mRasGA8ck" role="3clF47">
        <node concept="3cpWs8" id="2CQk7M47kjZ" role="3cqZAp">
          <node concept="3cpWsn" id="2CQk7M47kk2" role="3cpWs9">
            <property role="TrG5h" value="half" />
            <node concept="3LmiP1" id="2CQk7M47l6f" role="1tU5fm">
              <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
            </node>
            <node concept="3KEV6E" id="2CQk7M47n4T" role="33vP2m">
              <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
              <node concept="2Pygp_" id="2CQk7M47n4U" role="2Pygpa">
                <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                <node concept="3cpWs3" id="2CQk7M47oSF" role="2PygpA">
                  <node concept="FJ1c_" id="2CQk7M47zZ1" role="3uHU7w">
                    <node concept="3cmrfG" id="2CQk7M47$sP" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="37vLTw" id="2CQk7M47pD6" role="3uHU7B">
                      <ref role="3cqZAo" node="10mRasGAbnp" resolve="dist" />
                    </node>
                  </node>
                  <node concept="1SfVH9" id="2CQk7M47nKx" role="3uHU7B">
                    <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                  </node>
                </node>
              </node>
              <node concept="2Pygp_" id="2CQk7M47n4V" role="2Pygpa">
                <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                <node concept="3cpWs3" id="2CQk7M47r_n" role="2PygpA">
                  <node concept="FJ1c_" id="2CQk7M47_6q" role="3uHU7w">
                    <node concept="3cmrfG" id="2CQk7M47_v4" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="37vLTw" id="2CQk7M47sj4" role="3uHU7B">
                      <ref role="3cqZAo" node="10mRasGAbnp" resolve="dist" />
                    </node>
                  </node>
                  <node concept="1SfVH9" id="2CQk7M47q$F" role="3uHU7B">
                    <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="10mRasGAtoC" role="3cqZAp">
          <node concept="3KEV6E" id="10mRasGAto_" role="3clFbG">
            <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
            <node concept="2Pygp_" id="10mRasGAtoA" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
              <node concept="10QFUN" id="10mRasGJkux" role="2PygpA">
                <node concept="10P55v" id="10mRasGJlfi" role="10QFUM" />
                <node concept="10QFUN" id="10mRasGCRjq" role="10QFUP">
                  <node concept="10Oyi0" id="10mRasGCRH$" role="10QFUM" />
                  <node concept="1eOMI4" id="10mRasGCPNU" role="10QFUP">
                    <node concept="3cpWsd" id="10mRasGF4eV" role="1eOMHV">
                      <node concept="2OqwBi" id="2CQk7M47vRF" role="3uHU7B">
                        <node concept="37vLTw" id="2CQk7M477$1" role="2Oq$k0">
                          <ref role="3cqZAo" node="2CQk7M47kk2" resolve="half" />
                        </node>
                        <node concept="2$Gk$L" id="2CQk7M47wEa" role="2OqNvi">
                          <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                        </node>
                      </node>
                      <node concept="1eOMI4" id="10mRasGCNVY" role="3uHU7w">
                        <node concept="2dk9JS" id="10mRasGCJPc" role="1eOMHV">
                          <node concept="37vLTw" id="10mRasGCKgR" role="3uHU7w">
                            <ref role="3cqZAo" node="10mRasGAbnp" resolve="dist" />
                          </node>
                          <node concept="2OqwBi" id="2CQk7M47ypz" role="3uHU7B">
                            <node concept="37vLTw" id="2CQk7M47yp$" role="2Oq$k0">
                              <ref role="3cqZAo" node="2CQk7M47kk2" resolve="half" />
                            </node>
                            <node concept="2$Gk$L" id="2CQk7M47yp_" role="2OqNvi">
                              <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Pygp_" id="10mRasGAtoB" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
              <node concept="10QFUN" id="10mRasGJlFZ" role="2PygpA">
                <node concept="10P55v" id="10mRasGJmhP" role="10QFUM" />
                <node concept="10QFUN" id="10mRasGCRY9" role="10QFUP">
                  <node concept="10Oyi0" id="10mRasGCSBW" role="10QFUM" />
                  <node concept="1eOMI4" id="10mRasGCQMQ" role="10QFUP">
                    <node concept="3cpWsd" id="10mRasGF5mg" role="1eOMHV">
                      <node concept="1eOMI4" id="10mRasGCOWF" role="3uHU7w">
                        <node concept="2dk9JS" id="10mRasGCLXO" role="1eOMHV">
                          <node concept="37vLTw" id="10mRasGCMOA" role="3uHU7w">
                            <ref role="3cqZAo" node="10mRasGAbnp" resolve="dist" />
                          </node>
                          <node concept="2OqwBi" id="2CQk7M47yP5" role="3uHU7B">
                            <node concept="37vLTw" id="2CQk7M47yP6" role="2Oq$k0">
                              <ref role="3cqZAo" node="2CQk7M47kk2" resolve="half" />
                            </node>
                            <node concept="2$Gk$L" id="2CQk7M47yP7" role="2OqNvi">
                              <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2CQk7M47uDP" role="3uHU7B">
                        <node concept="37vLTw" id="2CQk7M47u5t" role="2Oq$k0">
                          <ref role="3cqZAo" node="2CQk7M47kk2" resolve="half" />
                        </node>
                        <node concept="2$Gk$L" id="2CQk7M47vsE" role="2OqNvi">
                          <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
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
      <node concept="3LmiP1" id="10mRasGAase" role="3clF45">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
  </node>
  <node concept="2UJ2oG" id="2gyk5S1Dvn0">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DDeviceInput" />
    <node concept="32q3_s" id="76QCTJD2PLH" role="2UJ2y3">
      <property role="TrG5h" value="component" />
      <node concept="3LmiP1" id="76QCTJD2PLT" role="1tU5fm">
        <ref role="2XDbjv" node="skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
  </node>
  <node concept="3LmNE2" id="2gyk5S1Dvnj">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="2gyk5S1Dvn0" resolve="DDeviceInput" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="5uiQOXmd7mf" role="1FPzNG">
      <property role="TrG5h" value="isMousePositionIn" />
      <node concept="10P_77" id="5uiQOXmd7Cc" role="1tU5fm" />
    </node>
    <node concept="32q3_s" id="76QCTJD2e4Z" role="1FPzNG">
      <property role="TrG5h" value="mousePosition" />
      <node concept="3LmiP1" id="76QCTJD2e5c" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="3K4zz7" id="76QCTJD2l0Q" role="33vP2m">
        <node concept="3KEV6E" id="76QCTJD2l1V" role="3K4E3e">
          <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
          <node concept="2Pygp_" id="76QCTJD2l1W" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
            <node concept="3b6qkQ" id="7h_p2Gg0tEx" role="2PygpA">
              <property role="$nhwW" value="0.0d" />
            </node>
          </node>
          <node concept="2Pygp_" id="76QCTJD2l1X" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
            <node concept="3b6qkQ" id="7h_p2Gg0usD" role="2PygpA">
              <property role="$nhwW" value="0.0d" />
            </node>
          </node>
        </node>
        <node concept="1SfVH9" id="76QCTJD2lbi" role="3K4GZi">
          <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
        </node>
        <node concept="3clFbC" id="76QCTJD2kSB" role="3K4Cdx">
          <node concept="10Nm6u" id="76QCTJD2kZT" role="3uHU7w" />
          <node concept="1SfVH9" id="76QCTJD2kO6" role="3uHU7B">
            <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="76QCTJD2lco" role="1FPzNG">
      <property role="TrG5h" value="isLeftMouseDown" />
      <node concept="10P_77" id="76QCTJD2lny" role="1tU5fm" />
    </node>
    <node concept="32q3_s" id="5uiQOXmb7jt" role="1FPzNG">
      <property role="TrG5h" value="isRightMouseDown" />
      <node concept="10P_77" id="5uiQOXmb7ju" role="1tU5fm" />
    </node>
    <node concept="32q3_s" id="76QCTJD2lWZ" role="1FPzNG">
      <property role="TrG5h" value="pressedKeys" />
      <node concept="2hMVRd" id="4NMbKfvQJvu" role="1tU5fm">
        <node concept="10Oyi0" id="4NMbKfvQQsR" role="2hN53Y" />
      </node>
    </node>
  </node>
  <node concept="2UJ2oG" id="2xAA8jfoMuD">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DMenubar" />
    <node concept="2UJ2Q1" id="2xAA8jfoMuM" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2F" resolve="DComponent" />
    </node>
    <node concept="32q3_s" id="2xAA8jfpr7l" role="2UJ2y3">
      <property role="TrG5h" value="frame" />
      <node concept="3LmiP1" id="2xAA8jfpr7y" role="1tU5fm">
        <ref role="2XDbjv" node="skgx$J4Z3D" resolve="DFrame" />
      </node>
    </node>
  </node>
  <node concept="3LmNE2" id="2xAA8jfoMCr">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="2xAA8jfoMuD" resolve="DMenubar" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="2xAA8jfpnoO" role="1FPzNG">
      <property role="TrG5h" value="menus" />
      <property role="3K1B09" value="true" />
      <node concept="_YKpA" id="4NMbKfvR5Nr" role="1tU5fm">
        <node concept="3LmiP1" id="4NMbKfvR5V0" role="_ZDj9">
          <ref role="2XDbjv" node="2xAA8jfpttw" resolve="DMenu" />
        </node>
      </node>
    </node>
    <node concept="1FPxxo" id="2xAA8jfpUGA" role="1FPzNG" />
    <node concept="1OA0iY" id="2xAA8jfoOOX" role="1FPzNG">
      <node concept="1OA3wd" id="2xAA8jfpi_q" role="1OA3wj">
        <property role="TrG5h" value="menuBar" />
        <node concept="3uibUv" id="2xAA8jfpi_w" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JMenuBar" resolve="JMenuBar" />
        </node>
      </node>
      <node concept="3clFbS" id="2xAA8jfoOOY" role="1OA0iy">
        <node concept="3clFbF" id="2xAA8jfplVc" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfpms3" role="3clFbG">
            <node concept="2ShNRf" id="2xAA8jfpm$L" role="37vLTx">
              <node concept="1pGfFk" id="2xAA8jfpm$3" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JMenuBar.&lt;init&gt;()" resolve="JMenuBar" />
              </node>
            </node>
            <node concept="5IyTM" id="2xAA8jfplVb" role="37vLTJ">
              <ref role="3cqZAo" node="2xAA8jfpi_q" resolve="menuBar" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xAA8jfpmA6" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfpnm7" role="3clFbG">
            <node concept="5IyTM" id="2xAA8jfpnn0" role="37vLTx">
              <ref role="3cqZAo" node="2xAA8jfpi_q" resolve="menuBar" />
            </node>
            <node concept="5IyTM" id="2xAA8jfpmA4" role="37vLTJ">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2xAA8jfoOOZ" role="1OA0iw">
        <node concept="3clFbF" id="2xAA8jfpRx0" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfpSdD" role="3clFbG">
            <node concept="10Nm6u" id="2xAA8jfpSsd" role="37vLTx" />
            <node concept="5IyTM" id="2xAA8jfpRwZ" role="37vLTJ">
              <ref role="3cqZAo" node="2xAA8jfpi_q" resolve="menuBar" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="2xAA8jfp_sV" role="1OA3xZ">
        <ref role="1OA0iW" node="2xAA8jfpnoO" resolve="menus" />
        <node concept="3clFbS" id="2xAA8jfp_sW" role="1OA0iB">
          <node concept="3clFbF" id="2xAA8jfp_Pv" role="3cqZAp">
            <node concept="2OqwBi" id="2xAA8jfpAxZ" role="3clFbG">
              <node concept="5IyTM" id="2xAA8jfp_Pu" role="2Oq$k0">
                <ref role="3cqZAo" node="2xAA8jfpi_q" resolve="menuBar" />
              </node>
              <node concept="liA8E" id="2xAA8jfpDel" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.removeAll()" resolve="removeAll" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="2xAA8jfpJDS" role="3cqZAp">
            <node concept="2GrKxI" id="2xAA8jfpJDU" role="2Gsz3X">
              <property role="TrG5h" value="menu" />
            </node>
            <node concept="1OA3xA" id="2xAA8jfpJFD" role="2GsD0m" />
            <node concept="3clFbS" id="2xAA8jfpJDY" role="2LFqv$">
              <node concept="3clFbF" id="2xAA8jfpKJ5" role="3cqZAp">
                <node concept="2OqwBi" id="2xAA8jfpLr_" role="3clFbG">
                  <node concept="5IyTM" id="2xAA8jfpKJ4" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xAA8jfpi_q" resolve="menuBar" />
                  </node>
                  <node concept="liA8E" id="2xAA8jfpNpl" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JMenuBar.add(javax.swing.JMenu)" resolve="add" />
                    <node concept="2OqwBi" id="2xAA8jfpNRp" role="37wK5m">
                      <node concept="2GrUjf" id="2xAA8jfpNv4" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="2xAA8jfpJDU" resolve="menu" />
                      </node>
                      <node concept="1OA3xM" id="2xAA8jfpQ__" role="2OqNvi">
                        <ref role="3cqZAo" node="2xAA8jfpPuh" resolve="menu" />
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
  <node concept="2UJ2oG" id="2xAA8jfpttw">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DMenu" />
    <node concept="32q3_s" id="2xAA8jfpx_a" role="2UJ2y3">
      <property role="TrG5h" value="menubar" />
      <node concept="3LmiP1" id="2xAA8jfpx_q" role="1tU5fm">
        <ref role="2XDbjv" node="2xAA8jfoMuD" resolve="DMenubar" />
      </node>
    </node>
    <node concept="32q3_s" id="2xAA8jfpz6h" role="2UJ2y3">
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="2xAA8jfpz6L" role="1tU5fm" />
    </node>
    <node concept="2UJ2Q1" id="2xAA8jfq8tG" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2F" resolve="DComponent" />
    </node>
  </node>
  <node concept="2UJ2oG" id="2xAA8jfpttH">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DMenuItem" />
    <node concept="32q3_s" id="2xAA8jfpttO" role="2UJ2y3">
      <property role="TrG5h" value="menu" />
      <node concept="3LmiP1" id="2xAA8jfpvDs" role="1tU5fm">
        <ref role="2XDbjv" node="skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="32q3_s" id="2xAA8jfptuk" role="2UJ2y3">
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="2xAA8jfptuK" role="1tU5fm" />
    </node>
    <node concept="2UJ2Q1" id="2xAA8jfqtz$" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2F" resolve="DComponent" />
    </node>
  </node>
  <node concept="3LmNE2" id="2xAA8jfp_4q">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="2xAA8jfpttw" resolve="DMenu" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="2xAA8jfpUEk" role="1FPzNG">
      <property role="TrG5h" value="menuItems" />
      <property role="3K1B09" value="true" />
      <node concept="_YKpA" id="2xAA8jfpV4w" role="1tU5fm">
        <node concept="3LmiP1" id="2xAA8jfpV52" role="_ZDj9">
          <ref role="2XDbjv" node="2xAA8jfpttH" resolve="DMenuItem" />
        </node>
      </node>
    </node>
    <node concept="1FPxxo" id="2xAA8jfpV3Z" role="1FPzNG" />
    <node concept="1OA0iY" id="2xAA8jfpPu5" role="1FPzNG">
      <node concept="1OA3wd" id="2xAA8jfpPuh" role="1OA3wj">
        <property role="TrG5h" value="menu" />
        <node concept="3uibUv" id="2xAA8jfpPun" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JMenu" resolve="JMenu" />
        </node>
      </node>
      <node concept="3clFbS" id="2xAA8jfpPu6" role="1OA0iy">
        <node concept="3clFbF" id="2xAA8jfpX3A" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfpXKw" role="3clFbG">
            <node concept="2ShNRf" id="2xAA8jfpXWm" role="37vLTx">
              <node concept="1pGfFk" id="2xAA8jfpXKV" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JMenu.&lt;init&gt;(java.lang.String)" resolve="JMenu" />
                <node concept="1SfVH9" id="2xAA8jfpXZk" role="37wK5m">
                  <ref role="3cqZAo" node="2xAA8jfpz6h" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="5IyTM" id="2xAA8jfpX3_" role="37vLTJ">
              <ref role="3cqZAo" node="2xAA8jfpPuh" resolve="menu" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xAA8jfpZck" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfpZmO" role="3clFbG">
            <node concept="5IyTM" id="2xAA8jfpZot" role="37vLTx">
              <ref role="3cqZAo" node="2xAA8jfpPuh" resolve="menu" />
            </node>
            <node concept="5IyTM" id="2xAA8jfq9qb" role="37vLTJ">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2xAA8jfpPu7" role="1OA0iw">
        <node concept="3clFbF" id="2xAA8jfpYq_" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfpZ7j" role="3clFbG">
            <node concept="10Nm6u" id="2xAA8jfpZaz" role="37vLTx" />
            <node concept="5IyTM" id="2xAA8jfpYq$" role="37vLTJ">
              <ref role="3cqZAo" node="2xAA8jfpPuh" resolve="menu" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="2xAA8jfpYmh" role="1OA3xZ">
        <ref role="1OA0iW" node="2xAA8jfpUEk" resolve="menuItems" />
        <node concept="3clFbS" id="2xAA8jfpYmi" role="1OA0iB">
          <node concept="3clFbF" id="2xAA8jfqb$2" role="3cqZAp">
            <node concept="2OqwBi" id="2xAA8jfqcgB" role="3clFbG">
              <node concept="5IyTM" id="2xAA8jfqb$1" role="2Oq$k0">
                <ref role="3cqZAo" node="2xAA8jfpPuh" resolve="menu" />
              </node>
              <node concept="liA8E" id="2xAA8jfqfI_" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JMenu.removeAll()" resolve="removeAll" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="2xAA8jfqfP8" role="3cqZAp">
            <node concept="2GrKxI" id="2xAA8jfqfPa" role="2Gsz3X">
              <property role="TrG5h" value="item" />
            </node>
            <node concept="1OA3xA" id="2xAA8jfqfUe" role="2GsD0m" />
            <node concept="3clFbS" id="2xAA8jfqfPe" role="2LFqv$">
              <node concept="3clFbF" id="2xAA8jfqg1V" role="3cqZAp">
                <node concept="2OqwBi" id="2xAA8jfqgIw" role="3clFbG">
                  <node concept="5IyTM" id="2xAA8jfqg1U" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xAA8jfpPuh" resolve="menu" />
                  </node>
                  <node concept="liA8E" id="2xAA8jfqjd6" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JMenu.add(javax.swing.JMenuItem)" resolve="add" />
                    <node concept="2OqwBi" id="2xAA8jfqjvq" role="37wK5m">
                      <node concept="2GrUjf" id="2xAA8jfqjks" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="2xAA8jfqfPa" resolve="item" />
                      </node>
                      <node concept="1OA3xM" id="2xAA8jfCVPu" role="2OqNvi">
                        <ref role="3cqZAo" node="2xAA8jfqjHL" resolve="menuItem" />
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
  <node concept="3LmNE2" id="2xAA8jfp_4L">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="2xAA8jfpttH" resolve="DMenuItem" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1FPxxo" id="2xAA8jfqveD" role="1FPzNG" />
    <node concept="1OA0iY" id="2xAA8jfqbxx" role="1FPzNG">
      <node concept="1OA3wd" id="2xAA8jfqjHL" role="1OA3wj">
        <property role="TrG5h" value="menuItem" />
        <node concept="3uibUv" id="2xAA8jfqjHR" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JMenuItem" resolve="JMenuItem" />
        </node>
      </node>
      <node concept="1OA3wd" id="2xAA8jfqk$n" role="1OA3wj">
        <property role="TrG5h" value="actionListener" />
        <node concept="3uibUv" id="2xAA8jfqk$L" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~ActionListener" resolve="ActionListener" />
        </node>
      </node>
      <node concept="3clFbS" id="2xAA8jfqbxy" role="1OA0iy">
        <node concept="3clFbF" id="2xAA8jfqk_Y" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfqkJS" role="3clFbG">
            <node concept="2ShNRf" id="2xAA8jfqkL1" role="37vLTx">
              <node concept="YeOm9" id="2xAA8jfql8Z" role="2ShVmc">
                <node concept="1Y3b0j" id="2xAA8jfql92" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="2xAA8jfql93" role="1B3o_S" />
                  <node concept="3clFb_" id="2xAA8jfql9h" role="jymVt">
                    <property role="TrG5h" value="actionPerformed" />
                    <node concept="3Tm1VV" id="2xAA8jfql9i" role="1B3o_S" />
                    <node concept="3cqZAl" id="2xAA8jfql9k" role="3clF45" />
                    <node concept="37vLTG" id="2xAA8jfql9l" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="2xAA8jfql9m" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="2xAA8jfql9n" role="3clF47">
                      <node concept="3clFbF" id="3knfDr4MsEg" role="3cqZAp">
                        <node concept="2OqwBi" id="3knfDr4Mt2a" role="3clFbG">
                          <node concept="2O$n0J" id="3knfDr4MsEe" role="2Oq$k0" />
                          <node concept="liA8E" id="3knfDr4Mtt0" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="3knfDr4MtXD" role="37wK5m">
                              <node concept="3clFbS" id="3knfDr4MtXE" role="1bW5cS">
                                <node concept="3clFbF" id="2xAA8jfquz7" role="3cqZAp">
                                  <node concept="2275Hy" id="2xAA8jfquz6" role="3clFbG">
                                    <ref role="37wK5l" node="2xAA8jfquh$" resolve="action" />
                                    <node concept="37vLTw" id="2xAA8jfqv9Q" role="37wK5m">
                                      <ref role="3cqZAo" node="2xAA8jfql9l" resolve="e" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2xAA8jfql9p" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5IyTM" id="2xAA8jfqk_W" role="37vLTJ">
              <ref role="3cqZAo" node="2xAA8jfqk$n" resolve="actionListener" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xAA8jfqjIK" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfqko_" role="3clFbG">
            <node concept="2ShNRf" id="2xAA8jfqkz$" role="37vLTx">
              <node concept="1pGfFk" id="2xAA8jfqkyF" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JMenuItem.&lt;init&gt;()" resolve="JMenuItem" />
              </node>
            </node>
            <node concept="5IyTM" id="2xAA8jfqjIJ" role="37vLTJ">
              <ref role="3cqZAo" node="2xAA8jfqjHL" resolve="menuItem" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xAA8jfqtEX" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfqu7x" role="3clFbG">
            <node concept="5IyTM" id="2xAA8jfqueg" role="37vLTx">
              <ref role="3cqZAo" node="2xAA8jfqjHL" resolve="menuItem" />
            </node>
            <node concept="5IyTM" id="2xAA8jfqtEV" role="37vLTJ">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xAA8jfqlcU" role="3cqZAp">
          <node concept="2OqwBi" id="2xAA8jfqlTz" role="3clFbG">
            <node concept="5IyTM" id="2xAA8jfqlcS" role="2Oq$k0">
              <ref role="3cqZAo" node="2xAA8jfqjHL" resolve="menuItem" />
            </node>
            <node concept="liA8E" id="2xAA8jfqpie" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
              <node concept="5IyTM" id="2xAA8jfqpl2" role="37wK5m">
                <ref role="3cqZAo" node="2xAA8jfqk$n" resolve="actionListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2xAA8jfqbxz" role="1OA0iw">
        <node concept="3clFbF" id="2xAA8jfqpmG" role="3cqZAp">
          <node concept="2OqwBi" id="2xAA8jfqq0o" role="3clFbG">
            <node concept="5IyTM" id="2xAA8jfqpmF" role="2Oq$k0">
              <ref role="3cqZAo" node="2xAA8jfqjHL" resolve="menuItem" />
            </node>
            <node concept="liA8E" id="2xAA8jfqshI" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.removeActionListener(java.awt.event.ActionListener)" resolve="removeActionListener" />
              <node concept="5IyTM" id="2xAA8jfqsky" role="37wK5m">
                <ref role="3cqZAo" node="2xAA8jfqk$n" resolve="actionListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xAA8jfqsn9" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfqt0J" role="3clFbG">
            <node concept="10Nm6u" id="2xAA8jfqt3X" role="37vLTx" />
            <node concept="5IyTM" id="2xAA8jfqsn7" role="37vLTJ">
              <ref role="3cqZAo" node="2xAA8jfqjHL" resolve="menuItem" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2xAA8jfqt6q" role="3cqZAp">
          <node concept="37vLTI" id="2xAA8jfqtrb" role="3clFbG">
            <node concept="10Nm6u" id="2xAA8jfqttA" role="37vLTx" />
            <node concept="5IyTM" id="2xAA8jfqt6o" role="37vLTJ">
              <ref role="3cqZAo" node="2xAA8jfqk$n" resolve="actionListener" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="2xAA8jfquh$" role="1FPzNG">
      <property role="TrG5h" value="action" />
      <property role="1EzhhJ" value="true" />
      <property role="1ePe$S" value="true" />
      <node concept="37vLTG" id="2xAA8jfquBA" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="2xAA8jfquDX" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2xAA8jfquh_" role="1B3o_S" />
      <node concept="3clFbS" id="2xAA8jfquhA" role="3clF47" />
      <node concept="3cqZAl" id="2xAA8jfqunT" role="3clF45" />
    </node>
  </node>
  <node concept="2UJ2oG" id="7wc8RN4MUFm">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DImage" />
    <node concept="32q3_s" id="7wc8RN4MUFn" role="2UJ2y3">
      <property role="TrG5h" value="imagePath" />
      <node concept="17QB3L" id="7wc8RN4MUFE" role="1tU5fm" />
    </node>
  </node>
  <node concept="3LmNE2" id="7wc8RN4MV4m">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="7wc8RN4MUFm" resolve="DImage" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="6lHrNJlri8f" role="1FPzNG">
      <property role="TrG5h" value="image" />
      <node concept="3uibUv" id="6lHrNJlrnC1" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Image" resolve="Image" />
      </node>
    </node>
    <node concept="1FPxxo" id="6lHrNJlry$3" role="1FPzNG" />
    <node concept="3tBE6w" id="6lHrNJlroHN" role="1FPzNG">
      <node concept="9aQIb" id="6lHrNJlroLW" role="30jUnX">
        <node concept="3clFbS" id="6lHrNJlroLX" role="9aQI4">
          <node concept="3cpWs8" id="6lHrNJlroNZ" role="3cqZAp">
            <node concept="3cpWsn" id="6lHrNJlroNY" role="3cpWs9">
              <property role="TrG5h" value="imageStream" />
              <node concept="3uibUv" id="6lHrNJlroO0" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
              </node>
              <node concept="2OqwBi" id="6lHrNJlrpmf" role="33vP2m">
                <node concept="2OqwBi" id="6lHrNJlrpi_" role="2Oq$k0">
                  <node concept="liA8E" id="6lHrNJlrpiA" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getClassLoader()" resolve="getClassLoader" />
                  </node>
                  <node concept="3VsKOn" id="6lHrNJlrshg" role="2Oq$k0">
                    <ref role="3VsUkX" to="u4ym:7wc8RN4MMv1" resolve="D2D" />
                  </node>
                </node>
                <node concept="liA8E" id="6lHrNJlrpmg" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~ClassLoader.getResourceAsStream(java.lang.String)" resolve="getResourceAsStream" />
                  <node concept="1SfVH9" id="6lHrNJlrpmh" role="37wK5m">
                    <ref role="3cqZAo" node="7wc8RN4MUFn" resolve="imagePath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6lHrNJlrspL" role="3cqZAp">
            <node concept="3clFbC" id="6lHrNJlrspM" role="3clFbw">
              <node concept="37vLTw" id="6lHrNJlrspN" role="3uHU7B">
                <ref role="3cqZAo" node="6lHrNJlroNY" resolve="imageStream" />
              </node>
              <node concept="10Nm6u" id="6lHrNJlrspO" role="3uHU7w" />
            </node>
            <node concept="9aQIb" id="6lHrNJlrspZ" role="9aQIa">
              <node concept="3clFbS" id="6lHrNJlrsq0" role="9aQI4">
                <node concept="3J1_TO" id="6lHrNJlrsql" role="3cqZAp">
                  <node concept="3uVAMA" id="6lHrNJlrsqm" role="1zxBo5">
                    <node concept="3clFbS" id="6lHrNJlrsqa" role="1zc67A">
                      <node concept="1tn5gs" id="6lHrNJlry8L" role="3cqZAp">
                        <node concept="3Bts2Z" id="6lHrNJlry8O" role="3Bts2V" />
                        <node concept="3cpWs3" id="6lHrNJlry8P" role="1tmZ$1">
                          <node concept="Xl_RD" id="6lHrNJlry8Q" role="3uHU7B">
                            <property role="Xl_RC" value="can not read resource at " />
                          </node>
                          <node concept="1SfVH9" id="6lHrNJlry8R" role="3uHU7w">
                            <ref role="3cqZAo" node="7wc8RN4MUFn" resolve="imagePath" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="6lHrNJlxLoK" role="1W62Nj">
                          <node concept="1eOMI4" id="6lHrNJlxLoL" role="2Oq$k0">
                            <node concept="10QFUN" id="6lHrNJlxLoM" role="1eOMHV">
                              <node concept="3uibUv" id="6lHrNJlxLoN" role="10QFUM">
                                <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                              </node>
                              <node concept="1eOMI4" id="6lHrNJlxLoO" role="10QFUP">
                                <node concept="10QFUN" id="6lHrNJlxLoP" role="1eOMHV">
                                  <node concept="3uibUv" id="6lHrNJlxLoQ" role="10QFUM">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="2Wb9Zs" id="6lHrNJlxLoR" role="10QFUP" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="6lHrNJlxLoS" role="2OqNvi">
                            <ref role="37wK5l" to="kag7:~Mutable.dAncestor(java.lang.Class)" resolve="dAncestor" />
                            <node concept="3VsKOn" id="6lHrNJlxLoT" role="37wK5m">
                              <ref role="3VsUkX" to="t4tl:~DModel" resolve="DModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="XOnhg" id="6lHrNJlrsq6" role="1zc67B">
                      <property role="TrG5h" value="e" />
                      <node concept="nSUau" id="6lHrNJlrsq8" role="1tU5fm">
                        <node concept="3uibUv" id="6lHrNJlrsq7" role="nSUat">
                          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="6lHrNJlrsq2" role="1zxBo7">
                    <node concept="3clFbF" id="6lHrNJlrvxX" role="3cqZAp">
                      <node concept="E34o$" id="6lHrNJlrw3h" role="3clFbG">
                        <node concept="2YIFZM" id="6lHrNJlrwcD" role="37vLTx">
                          <ref role="37wK5l" to="oqcp:~ImageIO.read(java.io.InputStream)" resolve="read" />
                          <ref role="1Pybhc" to="oqcp:~ImageIO" resolve="ImageIO" />
                          <node concept="37vLTw" id="6lHrNJlrwlO" role="37wK5m">
                            <ref role="3cqZAo" node="6lHrNJlroNY" resolve="imageStream" />
                          </node>
                        </node>
                        <node concept="1SfVH9" id="6lHrNJlrvxW" role="37vLTJ">
                          <ref role="3cqZAo" node="6lHrNJlri8f" resolve="image" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6lHrNJlrspQ" role="3clFbx">
              <node concept="1tn5gs" id="6lHrNJlrtFc" role="3cqZAp">
                <node concept="3Bts2Z" id="6lHrNJlrtHC" role="3Bts2V" />
                <node concept="3cpWs3" id="6lHrNJlrspW" role="1tmZ$1">
                  <node concept="Xl_RD" id="6lHrNJlrspX" role="3uHU7B">
                    <property role="Xl_RC" value="can not find resource at " />
                  </node>
                  <node concept="1SfVH9" id="6lHrNJlrsBw" role="3uHU7w">
                    <ref role="3cqZAo" node="7wc8RN4MUFn" resolve="imagePath" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6lHrNJlrU9d" role="1W62Nj">
                  <node concept="1eOMI4" id="6lHrNJlrTs7" role="2Oq$k0">
                    <node concept="10QFUN" id="6lHrNJlrTs4" role="1eOMHV">
                      <node concept="3uibUv" id="6lHrNJlrT$o" role="10QFUM">
                        <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                      </node>
                      <node concept="1eOMI4" id="6lHrNJlxuNM" role="10QFUP">
                        <node concept="10QFUN" id="6lHrNJlxuNJ" role="1eOMHV">
                          <node concept="3uibUv" id="6lHrNJlxv48" role="10QFUM">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                          <node concept="2Wb9Zs" id="6lHrNJlrTIU" role="10QFUP" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6lHrNJlrVBY" role="2OqNvi">
                    <ref role="37wK5l" to="kag7:~Mutable.dAncestor(java.lang.Class)" resolve="dAncestor" />
                    <node concept="3VsKOn" id="6lHrNJls0Hq" role="37wK5m">
                      <ref role="3VsUkX" to="t4tl:~DModel" resolve="DModel" />
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
  <node concept="2UJ2oG" id="6YJvVULTHtj">
    <property role="3GE5qa" value="values" />
    <property role="TrG5h" value="DLineSegment" />
    <property role="1VbJ0V" value="true" />
    <node concept="32q3_s" id="6YJvVULTHtD" role="2UJ2y3">
      <property role="TrG5h" value="a" />
      <node concept="3LmiP1" id="6YJvVULTHu1" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="32q3_s" id="6YJvVULTIso" role="2UJ2y3">
      <property role="TrG5h" value="b" />
      <node concept="3LmiP1" id="6YJvVULTIzH" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
  </node>
  <node concept="3LmNE2" id="6YJvVULTIXD">
    <property role="3GE5qa" value="values" />
    <ref role="2UJ2Q8" node="6YJvVULTHtj" resolve="DLineSegment" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="kUGYC" id="1bLYJ3eBsWT" role="1FPzNG">
      <property role="TrG5h" value="t" />
      <property role="2RZe$O" value="true" />
      <node concept="37vLTG" id="1bLYJ3eBKBz" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3LmiP1" id="1bLYJ3eBKDU" role="1tU5fm">
          <ref role="2XDbjv" node="6YJvVULTHtj" resolve="DLineSegment" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1bLYJ3eBsWU" role="1B3o_S" />
      <node concept="3clFbS" id="1bLYJ3eBsWV" role="3clF47">
        <node concept="3cpWs8" id="1bLYJ3eC_yU" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eC_yV" role="3cpWs9">
            <property role="TrG5h" value="x1" />
            <node concept="10P55v" id="1bLYJ3eC_mY" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eC_yW" role="33vP2m">
              <node concept="1SfVH9" id="1bLYJ3eC_yX" role="2Oq$k0">
                <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
              </node>
              <node concept="32jkxy" id="1bLYJ3eC_yY" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bLYJ3eCCR8" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eCCR9" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10P55v" id="1bLYJ3eCCI6" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eCCRa" role="33vP2m">
              <node concept="32jkxy" id="1bLYJ3eCCRb" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
              </node>
              <node concept="1SfVH9" id="1bLYJ3eCCRc" role="2Oq$k0">
                <ref role="3cqZAo" node="6YJvVULTIso" resolve="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bLYJ3eCAyM" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eCAyN" role="3cpWs9">
            <property role="TrG5h" value="x3" />
            <node concept="10P55v" id="1bLYJ3eCAk$" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eCAyO" role="33vP2m">
              <node concept="2OqwBi" id="1bLYJ3eCAyP" role="2Oq$k0">
                <node concept="37vLTw" id="1bLYJ3eCAyQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bLYJ3eBKBz" resolve="l" />
                </node>
                <node concept="32jkxy" id="1bLYJ3eCAyR" role="2OqNvi">
                  <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
                </node>
              </node>
              <node concept="32jkxy" id="1bLYJ3eCAyS" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bLYJ3eCC0f" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eCC0g" role="3cpWs9">
            <property role="TrG5h" value="x4" />
            <node concept="10P55v" id="1bLYJ3eCBJo" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eCC0h" role="33vP2m">
              <node concept="2OqwBi" id="1bLYJ3eCC0i" role="2Oq$k0">
                <node concept="37vLTw" id="1bLYJ3eCC0j" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bLYJ3eBKBz" resolve="l" />
                </node>
                <node concept="32jkxy" id="1bLYJ3eCC0k" role="2OqNvi">
                  <ref role="3cqZAo" node="6YJvVULTIso" resolve="b" />
                </node>
              </node>
              <node concept="32jkxy" id="1bLYJ3eCC0l" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bLYJ3eCGwP" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eCGwQ" role="3cpWs9">
            <property role="TrG5h" value="y1" />
            <node concept="10P55v" id="1bLYJ3eCGkA" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eCGwR" role="33vP2m">
              <node concept="1SfVH9" id="1bLYJ3eCGwS" role="2Oq$k0">
                <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
              </node>
              <node concept="32jkxy" id="1bLYJ3eCGwT" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bLYJ3eCIcx" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eCIcy" role="3cpWs9">
            <property role="TrG5h" value="y2" />
            <node concept="10P55v" id="1bLYJ3eCHOr" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eCIcz" role="33vP2m">
              <node concept="1SfVH9" id="1bLYJ3eCIc$" role="2Oq$k0">
                <ref role="3cqZAo" node="6YJvVULTIso" resolve="b" />
              </node>
              <node concept="32jkxy" id="1bLYJ3eCIc_" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bLYJ3eCEQq" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eCEQr" role="3cpWs9">
            <property role="TrG5h" value="y3" />
            <node concept="10P55v" id="1bLYJ3eCEoo" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eCEQs" role="33vP2m">
              <node concept="2OqwBi" id="1bLYJ3eCEQt" role="2Oq$k0">
                <node concept="37vLTw" id="1bLYJ3eCEQu" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bLYJ3eBKBz" resolve="l" />
                </node>
                <node concept="32jkxy" id="1bLYJ3eCEQv" role="2OqNvi">
                  <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
                </node>
              </node>
              <node concept="32jkxy" id="1bLYJ3eCEQw" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bLYJ3eCFEc" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eCFEd" role="3cpWs9">
            <property role="TrG5h" value="y4" />
            <node concept="10P55v" id="1bLYJ3eCFxk" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eCFEe" role="33vP2m">
              <node concept="2OqwBi" id="1bLYJ3eCFEf" role="2Oq$k0">
                <node concept="37vLTw" id="1bLYJ3eCFEg" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bLYJ3eBKBz" resolve="l" />
                </node>
                <node concept="32jkxy" id="1bLYJ3eCFEh" role="2OqNvi">
                  <ref role="3cqZAo" node="6YJvVULTIso" resolve="b" />
                </node>
              </node>
              <node concept="32jkxy" id="1bLYJ3eCFEi" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1bLYJ3eBQY5" role="3cqZAp">
          <node concept="FJ1c_" id="1bLYJ3eCgFg" role="3clFbG">
            <node concept="1eOMI4" id="1bLYJ3eCg8O" role="3uHU7B">
              <node concept="3cpWsd" id="1bLYJ3eCes_" role="1eOMHV">
                <node concept="17qRlL" id="1bLYJ3eC7Lb" role="3uHU7B">
                  <node concept="1eOMI4" id="1bLYJ3eC9yU" role="3uHU7w">
                    <node concept="3cpWsd" id="1bLYJ3eCaa0" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCFEj" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCFEd" resolve="y4" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eCEQx" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eCEQr" resolve="y3" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="1bLYJ3eBRlp" role="3uHU7B">
                    <node concept="3cpWsd" id="1bLYJ3eBS$4" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCAyT" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCAyN" resolve="x3" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eC_yZ" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eC_yV" resolve="x1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="17qRlL" id="1bLYJ3eCeJh" role="3uHU7w">
                  <node concept="1eOMI4" id="1bLYJ3eCeJi" role="3uHU7w">
                    <node concept="3cpWsd" id="1bLYJ3eCeJj" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCC0m" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCC0g" resolve="x4" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eCAyU" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eCAyN" resolve="x3" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="1bLYJ3eCeJu" role="3uHU7B">
                    <node concept="3cpWsd" id="1bLYJ3eCeJv" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCEQy" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCEQr" resolve="y3" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eCGwV" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eCGwQ" resolve="y1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="1bLYJ3eCh1F" role="3uHU7w">
              <node concept="3cpWsd" id="1bLYJ3eCh1G" role="1eOMHV">
                <node concept="17qRlL" id="1bLYJ3eCh1H" role="3uHU7B">
                  <node concept="1eOMI4" id="1bLYJ3eCh1I" role="3uHU7w">
                    <node concept="3cpWsd" id="1bLYJ3eCh1J" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCFEk" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCFEd" resolve="y4" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eCEQz" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eCEQr" resolve="y3" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="1bLYJ3eCh1U" role="3uHU7B">
                    <node concept="3cpWsd" id="1bLYJ3eCh1V" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCCRd" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCCR9" resolve="x2" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eC_z0" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eC_yV" resolve="x1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="17qRlL" id="1bLYJ3eCh24" role="3uHU7w">
                  <node concept="1eOMI4" id="1bLYJ3eCh25" role="3uHU7w">
                    <node concept="3cpWsd" id="1bLYJ3eCh26" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCC0n" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCC0g" resolve="x4" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eCAyV" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eCAyN" resolve="x3" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="1bLYJ3eCh2h" role="3uHU7B">
                    <node concept="3cpWsd" id="1bLYJ3eCh2i" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCIcA" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCIcy" resolve="y2" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eCGwU" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eCGwQ" resolve="y1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P55v" id="1bLYJ3eBKlw" role="3clF45" />
    </node>
    <node concept="kUGYC" id="1bLYJ3eBKmy" role="1FPzNG">
      <property role="TrG5h" value="u" />
      <property role="2RZe$O" value="true" />
      <node concept="37vLTG" id="1bLYJ3eBKHT" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3LmiP1" id="1bLYJ3eBKHU" role="1tU5fm">
          <ref role="2XDbjv" node="6YJvVULTHtj" resolve="DLineSegment" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1bLYJ3eBKmz" role="1B3o_S" />
      <node concept="3clFbS" id="1bLYJ3eBKm$" role="3clF47">
        <node concept="3cpWs8" id="1bLYJ3eCKu6" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eCKu7" role="3cpWs9">
            <property role="TrG5h" value="x1" />
            <node concept="10P55v" id="1bLYJ3eCKu8" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eCKu9" role="33vP2m">
              <node concept="1SfVH9" id="1bLYJ3eCKua" role="2Oq$k0">
                <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
              </node>
              <node concept="32jkxy" id="1bLYJ3eCKub" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bLYJ3eCKuc" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eCKud" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10P55v" id="1bLYJ3eCKue" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eCKuf" role="33vP2m">
              <node concept="32jkxy" id="1bLYJ3eCKug" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
              </node>
              <node concept="1SfVH9" id="1bLYJ3eCKuh" role="2Oq$k0">
                <ref role="3cqZAo" node="6YJvVULTIso" resolve="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bLYJ3eCKui" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eCKuj" role="3cpWs9">
            <property role="TrG5h" value="x3" />
            <node concept="10P55v" id="1bLYJ3eCKuk" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eCKul" role="33vP2m">
              <node concept="2OqwBi" id="1bLYJ3eCKum" role="2Oq$k0">
                <node concept="37vLTw" id="1bLYJ3eCKun" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bLYJ3eBKHT" resolve="l" />
                </node>
                <node concept="32jkxy" id="1bLYJ3eCKuo" role="2OqNvi">
                  <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
                </node>
              </node>
              <node concept="32jkxy" id="1bLYJ3eCKup" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bLYJ3eCKuq" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eCKur" role="3cpWs9">
            <property role="TrG5h" value="x4" />
            <node concept="10P55v" id="1bLYJ3eCKus" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eCKut" role="33vP2m">
              <node concept="2OqwBi" id="1bLYJ3eCKuu" role="2Oq$k0">
                <node concept="37vLTw" id="1bLYJ3eCKuv" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bLYJ3eBKHT" resolve="l" />
                </node>
                <node concept="32jkxy" id="1bLYJ3eCKuw" role="2OqNvi">
                  <ref role="3cqZAo" node="6YJvVULTIso" resolve="b" />
                </node>
              </node>
              <node concept="32jkxy" id="1bLYJ3eCKux" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bLYJ3eCKuy" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eCKuz" role="3cpWs9">
            <property role="TrG5h" value="y1" />
            <node concept="10P55v" id="1bLYJ3eCKu$" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eCKu_" role="33vP2m">
              <node concept="1SfVH9" id="1bLYJ3eCKuA" role="2Oq$k0">
                <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
              </node>
              <node concept="32jkxy" id="1bLYJ3eCKuB" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bLYJ3eCKuC" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eCKuD" role="3cpWs9">
            <property role="TrG5h" value="y2" />
            <node concept="10P55v" id="1bLYJ3eCKuE" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eCKuF" role="33vP2m">
              <node concept="1SfVH9" id="1bLYJ3eCKuG" role="2Oq$k0">
                <ref role="3cqZAo" node="6YJvVULTIso" resolve="b" />
              </node>
              <node concept="32jkxy" id="1bLYJ3eCKuH" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bLYJ3eCKuI" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eCKuJ" role="3cpWs9">
            <property role="TrG5h" value="y3" />
            <node concept="10P55v" id="1bLYJ3eCKuK" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eCKuL" role="33vP2m">
              <node concept="2OqwBi" id="1bLYJ3eCKuM" role="2Oq$k0">
                <node concept="37vLTw" id="1bLYJ3eCKuN" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bLYJ3eBKHT" resolve="l" />
                </node>
                <node concept="32jkxy" id="1bLYJ3eCKuO" role="2OqNvi">
                  <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
                </node>
              </node>
              <node concept="32jkxy" id="1bLYJ3eCKuP" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bLYJ3eCKuQ" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eCKuR" role="3cpWs9">
            <property role="TrG5h" value="y4" />
            <node concept="10P55v" id="1bLYJ3eCKuS" role="1tU5fm" />
            <node concept="2OqwBi" id="1bLYJ3eCKuT" role="33vP2m">
              <node concept="2OqwBi" id="1bLYJ3eCKuU" role="2Oq$k0">
                <node concept="37vLTw" id="1bLYJ3eCKuV" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bLYJ3eBKHT" resolve="l" />
                </node>
                <node concept="32jkxy" id="1bLYJ3eCKuW" role="2OqNvi">
                  <ref role="3cqZAo" node="6YJvVULTIso" resolve="b" />
                </node>
              </node>
              <node concept="32jkxy" id="1bLYJ3eCKuX" role="2OqNvi">
                <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1bLYJ3eCKuY" role="3cqZAp">
          <node concept="FJ1c_" id="1bLYJ3eCKuZ" role="3clFbG">
            <node concept="1eOMI4" id="1bLYJ3eCKv0" role="3uHU7B">
              <node concept="3cpWsd" id="1bLYJ3eCKv1" role="1eOMHV">
                <node concept="17qRlL" id="1bLYJ3eCKv2" role="3uHU7B">
                  <node concept="1eOMI4" id="1bLYJ3eCKv3" role="3uHU7w">
                    <node concept="3cpWsd" id="1bLYJ3eCKv4" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCKv5" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCKuD" resolve="y2" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eCKv6" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eCKuz" resolve="y1" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="1bLYJ3eCKv7" role="3uHU7B">
                    <node concept="3cpWsd" id="1bLYJ3eCKv8" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCKv9" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCKuj" resolve="x3" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eCKva" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eCKu7" resolve="x1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="17qRlL" id="1bLYJ3eCKvb" role="3uHU7w">
                  <node concept="1eOMI4" id="1bLYJ3eCKvc" role="3uHU7w">
                    <node concept="3cpWsd" id="1bLYJ3eCKvd" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCKve" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCKud" resolve="x2" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eCKvf" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eCKu7" resolve="x1" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="1bLYJ3eCKvg" role="3uHU7B">
                    <node concept="3cpWsd" id="1bLYJ3eCKvh" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCKvi" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCKuJ" resolve="y3" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eCKvj" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eCKuz" resolve="y1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="1bLYJ3eCKvk" role="3uHU7w">
              <node concept="3cpWsd" id="1bLYJ3eCKvl" role="1eOMHV">
                <node concept="17qRlL" id="1bLYJ3eCKvm" role="3uHU7B">
                  <node concept="1eOMI4" id="1bLYJ3eCKvn" role="3uHU7w">
                    <node concept="3cpWsd" id="1bLYJ3eCKvo" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCKvp" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCKuR" resolve="y4" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eCKvq" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eCKuJ" resolve="y3" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="1bLYJ3eCKvr" role="3uHU7B">
                    <node concept="3cpWsd" id="1bLYJ3eCKvs" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCKvt" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCKud" resolve="x2" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eCKvu" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eCKu7" resolve="x1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="17qRlL" id="1bLYJ3eCKvv" role="3uHU7w">
                  <node concept="1eOMI4" id="1bLYJ3eCKvw" role="3uHU7w">
                    <node concept="3cpWsd" id="1bLYJ3eCKvx" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCKvy" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCKur" resolve="x4" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eCKvz" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eCKuj" resolve="x3" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="1bLYJ3eCKv$" role="3uHU7B">
                    <node concept="3cpWsd" id="1bLYJ3eCKv_" role="1eOMHV">
                      <node concept="37vLTw" id="1bLYJ3eCKvA" role="3uHU7w">
                        <ref role="3cqZAo" node="1bLYJ3eCKuD" resolve="y2" />
                      </node>
                      <node concept="37vLTw" id="1bLYJ3eCKvB" role="3uHU7B">
                        <ref role="3cqZAo" node="1bLYJ3eCKuz" resolve="y1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P55v" id="1bLYJ3eBKm_" role="3clF45" />
    </node>
    <node concept="kUGYC" id="1bLYJ3eBZGa" role="1FPzNG">
      <property role="TrG5h" value="hasIntersection" />
      <property role="2RZe$O" value="true" />
      <node concept="37vLTG" id="1bLYJ3eC0Hf" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3LmiP1" id="1bLYJ3eC0Hg" role="1tU5fm">
          <ref role="2XDbjv" node="6YJvVULTHtj" resolve="DLineSegment" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1bLYJ3eBZGb" role="1B3o_S" />
      <node concept="3clFbS" id="1bLYJ3eBZGc" role="3clF47">
        <node concept="3cpWs8" id="1bLYJ3eC0ti" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eC0tl" role="3cpWs9">
            <property role="TrG5h" value="t" />
            <node concept="10P55v" id="1bLYJ3eC0tg" role="1tU5fm" />
            <node concept="2275Hy" id="1bLYJ3eC0AA" role="33vP2m">
              <ref role="37wK5l" node="1bLYJ3eBsWT" resolve="t" />
              <node concept="37vLTw" id="1bLYJ3eC0Nk" role="37wK5m">
                <ref role="3cqZAo" node="1bLYJ3eC0Hf" resolve="l" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bLYJ3eC15q" role="3cqZAp">
          <node concept="3cpWsn" id="1bLYJ3eC15t" role="3cpWs9">
            <property role="TrG5h" value="u" />
            <node concept="10P55v" id="1bLYJ3eC15o" role="1tU5fm" />
            <node concept="2275Hy" id="1bLYJ3eC1hc" role="33vP2m">
              <ref role="37wK5l" node="1bLYJ3eBKmy" resolve="u" />
              <node concept="37vLTw" id="1bLYJ3eC1mC" role="37wK5m">
                <ref role="3cqZAo" node="1bLYJ3eC0Hf" resolve="l" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1bLYJ3eC1xZ" role="3cqZAp">
          <node concept="1Wc70l" id="1bLYJ3eC63K" role="3clFbG">
            <node concept="2dkUwp" id="1bLYJ3eC63L" role="3uHU7w">
              <node concept="3b6qkQ" id="1bLYJ3eC63M" role="3uHU7w">
                <property role="$nhwW" value="1.0d" />
              </node>
              <node concept="37vLTw" id="1bLYJ3eC63N" role="3uHU7B">
                <ref role="3cqZAo" node="1bLYJ3eC15t" resolve="u" />
              </node>
            </node>
            <node concept="1Wc70l" id="1bLYJ3eC5Zb" role="3uHU7B">
              <node concept="1Wc70l" id="1bLYJ3eC3sW" role="3uHU7B">
                <node concept="2d3UOw" id="1bLYJ3eC2nh" role="3uHU7B">
                  <node concept="3b6qkQ" id="1bLYJ3eC5mp" role="3uHU7w">
                    <property role="$nhwW" value="0.0d" />
                  </node>
                  <node concept="37vLTw" id="1bLYJ3eC7j_" role="3uHU7B">
                    <ref role="3cqZAo" node="1bLYJ3eC0tl" resolve="t" />
                  </node>
                </node>
                <node concept="2dkUwp" id="1bLYJ3eC4Hb" role="3uHU7w">
                  <node concept="3b6qkQ" id="1bLYJ3eC54l" role="3uHU7w">
                    <property role="$nhwW" value="1.0d" />
                  </node>
                  <node concept="37vLTw" id="1bLYJ3eC6q0" role="3uHU7B">
                    <ref role="3cqZAo" node="1bLYJ3eC0tl" resolve="t" />
                  </node>
                </node>
              </node>
              <node concept="2d3UOw" id="1bLYJ3eC63O" role="3uHU7w">
                <node concept="37vLTw" id="1bLYJ3eC63P" role="3uHU7B">
                  <ref role="3cqZAo" node="1bLYJ3eC15t" resolve="u" />
                </node>
                <node concept="3b6qkQ" id="1bLYJ3eC63Q" role="3uHU7w">
                  <property role="$nhwW" value="0.0d" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="1bLYJ3eBZSa" role="3clF45" />
    </node>
    <node concept="kUGYC" id="1bLYJ3eBKnI" role="1FPzNG">
      <property role="TrG5h" value="intersection" />
      <property role="2RZe$O" value="true" />
      <node concept="37vLTG" id="1bLYJ3eBKJz" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3LmiP1" id="1bLYJ3eBKJ$" role="1tU5fm">
          <ref role="2XDbjv" node="6YJvVULTHtj" resolve="DLineSegment" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1bLYJ3eBKnJ" role="1B3o_S" />
      <node concept="3clFbS" id="1bLYJ3eBKnK" role="3clF47">
        <node concept="3clFbF" id="1bLYJ3eBUQd" role="3cqZAp">
          <node concept="2OqwBi" id="1bLYJ3eBWKK" role="3clFbG">
            <node concept="1SfVH9" id="1bLYJ3eBWGm" role="2Oq$k0">
              <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
            </node>
            <node concept="2$Gk$L" id="1bLYJ3eBX89" role="2OqNvi">
              <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
              <node concept="2OqwBi" id="1bLYJ3eBY65" role="37wK5m">
                <node concept="2OqwBi" id="1bLYJ3eBXs2" role="2Oq$k0">
                  <node concept="2$Gk$L" id="1bLYJ3eBXOw" role="2OqNvi">
                    <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                    <node concept="1SfVH9" id="1bLYJ3eBZpI" role="37wK5m">
                      <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
                    </node>
                  </node>
                  <node concept="1SfVH9" id="1bLYJ3eBZgF" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YJvVULTIso" resolve="b" />
                  </node>
                </node>
                <node concept="2$Gk$L" id="1bLYJ3eBYx0" role="2OqNvi">
                  <ref role="37wK5l" node="2xAA8jfB2O5" resolve="mult" />
                  <node concept="2275Hy" id="1bLYJ3eBYFq" role="37wK5m">
                    <ref role="37wK5l" node="1bLYJ3eBsWT" resolve="t" />
                    <node concept="37vLTw" id="1bLYJ3eBYQu" role="37wK5m">
                      <ref role="3cqZAo" node="1bLYJ3eBKJz" resolve="l" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3LmiP1" id="1bLYJ3eBKpy" role="3clF45">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="kUGYC" id="2ihDbyJLGje" role="1FPzNG">
      <property role="TrG5h" value="hit" />
      <property role="2RZe$O" value="true" />
      <node concept="37vLTG" id="2ihDbyJLHg4" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3LmiP1" id="2ihDbyJLHjy" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="37vLTG" id="6JXi$nD3prQ" role="3clF46">
        <property role="TrG5h" value="dist" />
        <node concept="10P55v" id="6JXi$nD3qla" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2ihDbyJLGjf" role="1B3o_S" />
      <node concept="3clFbS" id="2ihDbyJLGjg" role="3clF47">
        <node concept="3cpWs8" id="2ihDbyJLIfv" role="3cqZAp">
          <node concept="3cpWsn" id="2ihDbyJLIfw" role="3cpWs9">
            <property role="TrG5h" value="lowx" />
            <node concept="10P55v" id="2ihDbyJLIfx" role="1tU5fm" />
            <node concept="3cpWsd" id="6JXi$nD3S8F" role="33vP2m">
              <node concept="37vLTw" id="6JXi$nD3SQN" role="3uHU7w">
                <ref role="3cqZAo" node="6JXi$nD3prQ" resolve="dist" />
              </node>
              <node concept="2YIFZM" id="2ihDbyJLIfy" role="3uHU7B">
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <ref role="37wK5l" to="wyt6:~Math.min(double,double)" resolve="min" />
                <node concept="2OqwBi" id="2ihDbyJLIfz" role="37wK5m">
                  <node concept="1SfVH9" id="2ihDbyJLOqa" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
                  </node>
                  <node concept="32jkxy" id="2ihDbyJLIf_" role="2OqNvi">
                    <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2ihDbyJLIfA" role="37wK5m">
                  <node concept="1SfVH9" id="2ihDbyJLUT7" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YJvVULTIso" resolve="b" />
                  </node>
                  <node concept="32jkxy" id="2ihDbyJLIfC" role="2OqNvi">
                    <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2ihDbyJLIfD" role="3cqZAp">
          <node concept="3cpWsn" id="2ihDbyJLIfE" role="3cpWs9">
            <property role="TrG5h" value="highx" />
            <node concept="10P55v" id="2ihDbyJLIfF" role="1tU5fm" />
            <node concept="3cpWs3" id="6JXi$nD3YmG" role="33vP2m">
              <node concept="2YIFZM" id="2ihDbyJLIfG" role="3uHU7B">
                <ref role="37wK5l" to="wyt6:~Math.max(double,double)" resolve="max" />
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <node concept="2OqwBi" id="2ihDbyJLIfH" role="37wK5m">
                  <node concept="1SfVH9" id="2ihDbyJLPuu" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
                  </node>
                  <node concept="32jkxy" id="2ihDbyJLIfJ" role="2OqNvi">
                    <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2ihDbyJLIfK" role="37wK5m">
                  <node concept="1SfVH9" id="2ihDbyJLU6M" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YJvVULTIso" resolve="b" />
                  </node>
                  <node concept="32jkxy" id="2ihDbyJLIfM" role="2OqNvi">
                    <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6JXi$nD3TZA" role="3uHU7w">
                <ref role="3cqZAo" node="6JXi$nD3prQ" resolve="dist" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2ihDbyJLIfN" role="3cqZAp">
          <node concept="3cpWsn" id="2ihDbyJLIfO" role="3cpWs9">
            <property role="TrG5h" value="lowy" />
            <node concept="10P55v" id="2ihDbyJLIfP" role="1tU5fm" />
            <node concept="3cpWsd" id="6JXi$nD3Xbw" role="33vP2m">
              <node concept="2YIFZM" id="2ihDbyJLIfQ" role="3uHU7B">
                <ref role="37wK5l" to="wyt6:~Math.min(double,double)" resolve="min" />
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <node concept="2OqwBi" id="2ihDbyJLIfR" role="37wK5m">
                  <node concept="1SfVH9" id="2ihDbyJLQvF" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
                  </node>
                  <node concept="32jkxy" id="2ihDbyJLIfT" role="2OqNvi">
                    <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2ihDbyJLIfU" role="37wK5m">
                  <node concept="1SfVH9" id="2ihDbyJLThu" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YJvVULTIso" resolve="b" />
                  </node>
                  <node concept="32jkxy" id="2ihDbyJLIfW" role="2OqNvi">
                    <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6JXi$nD3V8_" role="3uHU7w">
                <ref role="3cqZAo" node="6JXi$nD3prQ" resolve="dist" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2ihDbyJLIfX" role="3cqZAp">
          <node concept="3cpWsn" id="2ihDbyJLIfY" role="3cpWs9">
            <property role="TrG5h" value="highy" />
            <node concept="10P55v" id="2ihDbyJLIfZ" role="1tU5fm" />
            <node concept="3cpWs3" id="6JXi$nD3VPm" role="33vP2m">
              <node concept="37vLTw" id="6JXi$nD3WuJ" role="3uHU7w">
                <ref role="3cqZAo" node="6JXi$nD3prQ" resolve="dist" />
              </node>
              <node concept="2YIFZM" id="2ihDbyJLIg0" role="3uHU7B">
                <ref role="37wK5l" to="wyt6:~Math.max(double,double)" resolve="max" />
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <node concept="2OqwBi" id="2ihDbyJLIg1" role="37wK5m">
                  <node concept="1SfVH9" id="2ihDbyJLRtU" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
                  </node>
                  <node concept="32jkxy" id="2ihDbyJLIg3" role="2OqNvi">
                    <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2ihDbyJLIg4" role="37wK5m">
                  <node concept="1SfVH9" id="2ihDbyJLSpb" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YJvVULTIso" resolve="b" />
                  </node>
                  <node concept="32jkxy" id="2ihDbyJLIg6" role="2OqNvi">
                    <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2ihDbyJLIg7" role="3cqZAp">
          <node concept="1Wc70l" id="6JXi$nD5PxP" role="3cqZAk">
            <node concept="1Wc70l" id="2ihDbyJLIgj" role="3uHU7B">
              <node concept="1Wc70l" id="2ihDbyJLIgk" role="3uHU7B">
                <node concept="1Wc70l" id="2ihDbyJLIgl" role="3uHU7B">
                  <node concept="3eOSWO" id="2ihDbyJLIgm" role="3uHU7B">
                    <node concept="2OqwBi" id="2ihDbyJLIgn" role="3uHU7B">
                      <node concept="37vLTw" id="2ihDbyJLIgo" role="2Oq$k0">
                        <ref role="3cqZAo" node="2ihDbyJLHg4" resolve="p" />
                      </node>
                      <node concept="32jkxy" id="2ihDbyJLIgp" role="2OqNvi">
                        <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2ihDbyJLIgq" role="3uHU7w">
                      <ref role="3cqZAo" node="2ihDbyJLIfw" resolve="lowx" />
                    </node>
                  </node>
                  <node concept="3eOVzh" id="2ihDbyJLIgr" role="3uHU7w">
                    <node concept="2OqwBi" id="2ihDbyJLIgs" role="3uHU7B">
                      <node concept="37vLTw" id="2ihDbyJLIgt" role="2Oq$k0">
                        <ref role="3cqZAo" node="2ihDbyJLHg4" resolve="p" />
                      </node>
                      <node concept="32jkxy" id="2ihDbyJLIgu" role="2OqNvi">
                        <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2ihDbyJLIgv" role="3uHU7w">
                      <ref role="3cqZAo" node="2ihDbyJLIfE" resolve="highx" />
                    </node>
                  </node>
                </node>
                <node concept="3eOSWO" id="2ihDbyJLIgw" role="3uHU7w">
                  <node concept="2OqwBi" id="2ihDbyJLIgx" role="3uHU7B">
                    <node concept="37vLTw" id="2ihDbyJLIgy" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ihDbyJLHg4" resolve="p" />
                    </node>
                    <node concept="32jkxy" id="2ihDbyJLIgz" role="2OqNvi">
                      <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2ihDbyJLIg$" role="3uHU7w">
                    <ref role="3cqZAo" node="2ihDbyJLIfO" resolve="lowy" />
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="2ihDbyJLIg_" role="3uHU7w">
                <node concept="2OqwBi" id="2ihDbyJLIgA" role="3uHU7B">
                  <node concept="37vLTw" id="2ihDbyJLIgB" role="2Oq$k0">
                    <ref role="3cqZAo" node="2ihDbyJLHg4" resolve="p" />
                  </node>
                  <node concept="32jkxy" id="2ihDbyJLIgC" role="2OqNvi">
                    <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                  </node>
                </node>
                <node concept="37vLTw" id="2ihDbyJLIgD" role="3uHU7w">
                  <ref role="3cqZAo" node="2ihDbyJLIfY" resolve="highy" />
                </node>
              </node>
            </node>
            <node concept="3eOVzh" id="5rHgiqQGrR0" role="3uHU7w">
              <node concept="37vLTw" id="5rHgiqQGspT" role="3uHU7w">
                <ref role="3cqZAo" node="6JXi$nD3prQ" resolve="dist" />
              </node>
              <node concept="2275Hy" id="5rHgiqQGCyJ" role="3uHU7B">
                <ref role="37wK5l" node="5rHgiqQGuMd" resolve="distance" />
                <node concept="37vLTw" id="5rHgiqQGD$x" role="37wK5m">
                  <ref role="3cqZAo" node="2ihDbyJLHg4" resolve="p" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2ihDbyJLH9i" role="3clF45" />
    </node>
    <node concept="kUGYC" id="5rHgiqQGuMd" role="1FPzNG">
      <property role="TrG5h" value="distance" />
      <property role="2RZe$O" value="true" />
      <node concept="3Tm1VV" id="5rHgiqQGuMe" role="1B3o_S" />
      <node concept="3clFbS" id="5rHgiqQGuMf" role="3clF47">
        <node concept="3clFbF" id="5rHgiqQGFar" role="3cqZAp">
          <node concept="2YIFZM" id="7QGAU2f3RPH" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Math.abs(double)" resolve="abs" />
            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
            <node concept="2OqwBi" id="5rHgiqQGnkJ" role="37wK5m">
              <node concept="2OqwBi" id="5rHgiqQGklK" role="2Oq$k0">
                <node concept="32jkxy" id="5rHgiqQGle$" role="2OqNvi">
                  <ref role="3cqZAo" node="5rHgiqQFNOE" resolve="perp" />
                </node>
                <node concept="1SfVH9" id="5rHgiqQGH5_" role="2Oq$k0">
                  <ref role="3cqZAo" node="2ihDbyJXriV" resolve="unit" />
                </node>
              </node>
              <node concept="2$Gk$L" id="5rHgiqQGnXp" role="2OqNvi">
                <ref role="37wK5l" node="2xAA8jfAZeM" resolve="dot" />
                <node concept="2OqwBi" id="5rHgiqQGpu0" role="37wK5m">
                  <node concept="37vLTw" id="5rHgiqQGoGz" role="2Oq$k0">
                    <ref role="3cqZAo" node="5rHgiqQGEaP" resolve="p" />
                  </node>
                  <node concept="2$Gk$L" id="5rHgiqQGqe3" role="2OqNvi">
                    <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                    <node concept="1SfVH9" id="5rHgiqQGqPr" role="37wK5m">
                      <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P55v" id="5rHgiqQGwoC" role="3clF45" />
      <node concept="37vLTG" id="5rHgiqQGEaP" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3LmiP1" id="5rHgiqQGEaO" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2ihDbyJXjyF" role="1FPzNG">
      <property role="TrG5h" value="vector" />
      <property role="1oBfZR" value="true" />
      <node concept="3LmiP1" id="2ihDbyJXlu1" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="2ihDbyJXoiM" role="33vP2m">
        <node concept="1SfVH9" id="2ihDbyJXo0h" role="2Oq$k0">
          <ref role="3cqZAo" node="6YJvVULTIso" resolve="b" />
        </node>
        <node concept="2$Gk$L" id="2ihDbyJXoKT" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
          <node concept="1SfVH9" id="2ihDbyJXp38" role="37wK5m">
            <ref role="3cqZAo" node="6YJvVULTHtD" resolve="a" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2ihDbyJXriV" role="1FPzNG">
      <property role="TrG5h" value="unit" />
      <property role="1oBfZR" value="true" />
      <node concept="3LmiP1" id="2ihDbyJXtkt" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="2ihDbyJXwp_" role="33vP2m">
        <node concept="1SfVH9" id="2ihDbyJXwgA" role="2Oq$k0">
          <ref role="3cqZAo" node="2ihDbyJXjyF" resolve="vector" />
        </node>
        <node concept="32jkxy" id="2ihDbyJXwSk" role="2OqNvi">
          <ref role="3cqZAo" node="2xAA8jfBn6l" resolve="unit" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2UJ2oG" id="681X9Tz0KVS">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DNodeComponent" />
    <node concept="2UJ2Q1" id="681X9Tz1zbB" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2F" resolve="DComponent" />
    </node>
  </node>
  <node concept="3LmNE2" id="681X9Tz0KVU">
    <property role="3GE5qa" value="gui" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <ref role="2UJ2Q8" node="681X9Tz0KVS" resolve="DNodeComponent" />
    <node concept="32q3_s" id="681X9Tz1uNc" role="1FPzNG">
      <property role="TrG5h" value="node" />
      <node concept="3Tqbb2" id="681X9Tz1uNy" role="1tU5fm" />
    </node>
    <node concept="32q3_s" id="7eX99ou0F5U" role="1FPzNG">
      <property role="TrG5h" value="isSelected" />
      <node concept="10P_77" id="7eX99ou0IdP" role="1tU5fm" />
    </node>
    <node concept="3tBE6w" id="7eX99ou0V24" role="1FPzNG">
      <node concept="9aQIb" id="7eX99ou0Ynw" role="30jUnX">
        <node concept="3clFbS" id="7eX99ou0Ynx" role="9aQI4">
          <node concept="3clFbJ" id="7eX99ou0YWY" role="3cqZAp">
            <node concept="3clFbS" id="7eX99ou0YX0" role="3clFbx">
              <node concept="3cpWs8" id="7eX99ou0Y$k" role="3cqZAp">
                <node concept="3cpWsn" id="7eX99ou0Y$l" role="3cpWs9">
                  <property role="TrG5h" value="canvas" />
                  <node concept="3LmiP1" id="7eX99ou0Y$m" role="1tU5fm">
                    <ref role="2XDbjv" node="skgx$J4Z32" resolve="DCanvas" />
                  </node>
                  <node concept="2OqwBi" id="7eX99ou0Y$n" role="33vP2m">
                    <node concept="2Wb9Zs" id="7eX99ou0YQd" role="2Oq$k0" />
                    <node concept="3BHqF8" id="7eX99ou0Y$p" role="2OqNvi">
                      <ref role="3BGHVm" node="skgx$J4Z32" resolve="DCanvas" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7eX99ou10sZ" role="3cqZAp">
                <node concept="3clFbS" id="7eX99ou10t1" role="3clFbx">
                  <node concept="1DcWWT" id="7eX99ou13b$" role="3cqZAp">
                    <node concept="3clFbS" id="7eX99ou13bA" role="2LFqv$">
                      <node concept="3clFbJ" id="7eX99ou1nNF" role="3cqZAp">
                        <node concept="3clFbS" id="7eX99ou1nNH" role="3clFbx">
                          <node concept="3clFbF" id="7eX99ou1piS" role="3cqZAp">
                            <node concept="E34o$" id="7eX99ou1qwa" role="3clFbG">
                              <node concept="3clFbT" id="7eX99ou1qRD" role="37vLTx" />
                              <node concept="2OqwBi" id="7eX99ou1ppj" role="37vLTJ">
                                <node concept="37vLTw" id="7eX99ou1piR" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7eX99ou13bB" resolve="other" />
                                </node>
                                <node concept="32jkxy" id="7eX99ou1pOl" role="2OqNvi">
                                  <ref role="3cqZAo" node="7eX99ou0F5U" resolve="isSelected" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="17QLQc" id="7eX99ou1o3s" role="3clFbw">
                          <node concept="2Wb9Zs" id="7eX99ou1o8Y" role="3uHU7w" />
                          <node concept="37vLTw" id="7eX99ou1nT7" role="3uHU7B">
                            <ref role="3cqZAo" node="7eX99ou13bB" resolve="other" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="7eX99ou13bB" role="1Duv9x">
                      <property role="TrG5h" value="other" />
                      <node concept="3LmiP1" id="7eX99ou1nrS" role="1tU5fm">
                        <ref role="2XDbjv" node="681X9Tz0KVS" resolve="DNodeComponent" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7eX99ou1lIY" role="1DdaDG">
                      <node concept="2OqwBi" id="7eX99ou15RE" role="2Oq$k0">
                        <node concept="2OqwBi" id="7eX99ou13Cv" role="2Oq$k0">
                          <node concept="37vLTw" id="7eX99ou13pD" role="2Oq$k0">
                            <ref role="3cqZAo" node="7eX99ou0Y$l" resolve="canvas" />
                          </node>
                          <node concept="32jkxy" id="7eX99ou14cp" role="2OqNvi">
                            <ref role="3cqZAo" node="7nNrlO1Gveo" resolve="shapes" />
                          </node>
                        </node>
                        <node concept="13MTOL" id="7eX99ou1iFO" role="2OqNvi">
                          <ref role="13MTZf" node="Vg5Fsxma4s" resolve="component" />
                        </node>
                      </node>
                      <node concept="3MEsww" id="7eX99ou1n7r" role="2OqNvi">
                        <ref role="3MEk2i" node="681X9Tz0KVS" resolve="DNodeComponent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="7eX99ou10Ha" role="3clFbw">
                  <node concept="10Nm6u" id="7eX99ou10V7" role="3uHU7w" />
                  <node concept="37vLTw" id="7eX99ou10yO" role="3uHU7B">
                    <ref role="3cqZAo" node="7eX99ou0Y$l" resolve="canvas" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7eX99ou0ZAJ" role="3clFbw">
              <node concept="3fqX7Q" id="7eX99ou107r" role="3uHU7w">
                <node concept="3J2VuX" id="7eX99ou107t" role="3fr31v">
                  <node concept="1SfVH9" id="7eX99ou107u" role="3J2yhu">
                    <ref role="3cqZAo" node="7eX99ou0F5U" resolve="isSelected" />
                  </node>
                </node>
              </node>
              <node concept="1SfVH9" id="7eX99ou0Z2N" role="3uHU7B">
                <ref role="3cqZAo" node="7eX99ou0F5U" resolve="isSelected" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1FPxxo" id="681X9Tz1wKw" role="1FPzNG" />
    <node concept="1OA0iY" id="681X9Tz1wMJ" role="1FPzNG">
      <node concept="1OA3wd" id="681X9Tz1zcG" role="1OA3wj">
        <property role="TrG5h" value="nodeEditor" />
        <node concept="3uibUv" id="681X9Tz1zh4" role="1tU5fm">
          <ref role="3uigEE" to="u4ym:Vg5FswJd4h" resolve="DNodeEditorComponent" />
        </node>
      </node>
      <node concept="1OA3wd" id="7eX99otYDCr" role="1OA3wj">
        <property role="TrG5h" value="selectionListener" />
        <node concept="3uibUv" id="7eX99otYGpC" role="1tU5fm">
          <ref role="3uigEE" to="lwvz:~SelectionListener" resolve="SelectionListener" />
        </node>
      </node>
      <node concept="3clFbS" id="681X9Tz1wMK" role="1OA0iy">
        <node concept="3cpWs8" id="5uiQOXmE1DU" role="3cqZAp">
          <node concept="3cpWsn" id="5uiQOXmE1DX" role="3cpWs9">
            <property role="TrG5h" value="self" />
            <property role="3TUv4t" value="true" />
            <node concept="3LmiP1" id="5uiQOXmE1DS" role="1tU5fm">
              <ref role="2XDbjv" node="681X9Tz0KVS" resolve="DNodeComponent" />
            </node>
            <node concept="2Wb9Zs" id="5uiQOXmE2H3" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbF" id="681X9Tz1zkz" role="3cqZAp">
          <node concept="37vLTI" id="681X9Tz1zsd" role="3clFbG">
            <node concept="5IyTM" id="681X9Tz1zky" role="37vLTJ">
              <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
            </node>
            <node concept="2ShNRf" id="3La3n2rOnpY" role="37vLTx">
              <node concept="YeOm9" id="5uiQOXmDt5x" role="2ShVmc">
                <node concept="1Y3b0j" id="5uiQOXmDt5$" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="u4ym:Vg5FswJdtP" resolve="DNodeEditorComponent" />
                  <ref role="1Y3XeK" to="u4ym:Vg5FswJd4h" resolve="DNodeEditorComponent" />
                  <node concept="3Tm1VV" id="5uiQOXmDt5_" role="1B3o_S" />
                  <node concept="2YIFZM" id="3La3n2rHWc4" role="37wK5m">
                    <ref role="37wK5l" to="alof:~ProjectHelper.getProjectRepository(com.intellij.openapi.project.Project)" resolve="getProjectRepository" />
                    <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                    <node concept="2YIFZM" id="1WrK$_RwBh2" role="37wK5m">
                      <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                      <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                      <node concept="2OqwBi" id="1WrK$_Rbzv_" role="37wK5m">
                        <node concept="2O$n0J" id="1WrK$_Rbzgj" role="2Oq$k0" />
                        <node concept="liA8E" id="1WrK$_Rb$7d" role="2OqNvi">
                          <ref role="37wK5l" to="t4tl:~INativeRunner.project()" resolve="project" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="5uiQOXmDAGu" role="jymVt">
                    <property role="TrG5h" value="processMouseMotionEvent" />
                    <node concept="3Tmbuc" id="5uiQOXmDAGv" role="1B3o_S" />
                    <node concept="3cqZAl" id="5uiQOXmDAGw" role="3clF45" />
                    <node concept="37vLTG" id="5uiQOXmDAGx" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="5uiQOXmDAGy" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5uiQOXmDAGz" role="3clF47">
                      <node concept="3clFbF" id="5uiQOXmEMqc" role="3cqZAp">
                        <node concept="3nyPlj" id="5uiQOXmEMqa" role="3clFbG">
                          <ref role="37wK5l" to="dxuu:~JComponent.processMouseMotionEvent(java.awt.event.MouseEvent)" resolve="processMouseMotionEvent" />
                          <node concept="37vLTw" id="5uiQOXmETfD" role="37wK5m">
                            <ref role="3cqZAo" node="5uiQOXmDAGx" resolve="e" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="7eX99otEXki" role="3cqZAp">
                        <node concept="3clFbS" id="7eX99otEXkk" role="3clFbx">
                          <node concept="3clFbF" id="7eX99otCC17" role="3cqZAp">
                            <node concept="2OqwBi" id="7eX99otCEH3" role="3clFbG">
                              <node concept="2O$n0J" id="7eX99otCC15" role="2Oq$k0" />
                              <node concept="liA8E" id="7eX99otCGju" role="2OqNvi">
                                <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                                <node concept="1bVj0M" id="7eX99otCJDg" role="37wK5m">
                                  <node concept="3clFbS" id="7eX99otCJDh" role="1bW5cS">
                                    <node concept="3cpWs8" id="5uiQOXmE7JN" role="3cqZAp">
                                      <node concept="3cpWsn" id="5uiQOXmE7JO" role="3cpWs9">
                                        <property role="TrG5h" value="canvas" />
                                        <node concept="3LmiP1" id="5uiQOXmE6Qo" role="1tU5fm">
                                          <ref role="2XDbjv" node="skgx$J4Z32" resolve="DCanvas" />
                                        </node>
                                        <node concept="2OqwBi" id="5uiQOXmE7JP" role="33vP2m">
                                          <node concept="37vLTw" id="5uiQOXmE7JQ" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5uiQOXmE1DX" resolve="self" />
                                          </node>
                                          <node concept="3BHqF8" id="5uiQOXmE7JR" role="2OqNvi">
                                            <ref role="3BGHVm" node="skgx$J4Z32" resolve="DCanvas" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="5uiQOXmEaYP" role="3cqZAp">
                                      <node concept="3clFbS" id="5uiQOXmEaYR" role="3clFbx">
                                        <node concept="3cpWs8" id="7eX99otxyBv" role="3cqZAp">
                                          <node concept="3cpWsn" id="7eX99otxyBw" role="3cpWs9">
                                            <property role="TrG5h" value="location" />
                                            <node concept="3uibUv" id="7eX99otxxmj" role="1tU5fm">
                                              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                                            </node>
                                            <node concept="2OqwBi" id="7eX99otxyBx" role="33vP2m">
                                              <node concept="5IyTM" id="7eX99otxyBy" role="2Oq$k0">
                                                <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
                                              </node>
                                              <node concept="liA8E" id="7eX99otxyBz" role="2OqNvi">
                                                <ref role="37wK5l" to="z60i:~Component.getLocation()" resolve="getLocation" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="7eX99otxIq2" role="3cqZAp">
                                          <node concept="2OqwBi" id="7eX99otwNNJ" role="3clFbG">
                                            <node concept="37vLTw" id="7eX99otwJ70" role="2Oq$k0">
                                              <ref role="3cqZAo" node="5uiQOXmDAGx" resolve="e" />
                                            </node>
                                            <node concept="liA8E" id="7eX99otwQIX" role="2OqNvi">
                                              <ref role="37wK5l" to="hyam:~MouseEvent.translatePoint(int,int)" resolve="translatePoint" />
                                              <node concept="2OqwBi" id="7eX99otxtgN" role="37wK5m">
                                                <node concept="37vLTw" id="7eX99otxyB$" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="7eX99otxyBw" resolve="location" />
                                                </node>
                                                <node concept="2OwXpG" id="7eX99otxvSy" role="2OqNvi">
                                                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="7eX99otx$4T" role="37wK5m">
                                                <node concept="37vLTw" id="7eX99otx$4U" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="7eX99otxyBw" resolve="location" />
                                                </node>
                                                <node concept="2OwXpG" id="7eX99otxAOk" role="2OqNvi">
                                                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="7eX99otwJ6U" role="3cqZAp">
                                          <node concept="2OqwBi" id="7eX99otwJ6V" role="3clFbG">
                                            <node concept="2OqwBi" id="7eX99otwJ6W" role="2Oq$k0">
                                              <node concept="37vLTw" id="7eX99otwJ6X" role="2Oq$k0">
                                                <ref role="3cqZAo" node="5uiQOXmE7JO" resolve="canvas" />
                                              </node>
                                              <node concept="1OA3xM" id="7eX99otwJ6Y" role="2OqNvi">
                                                <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="7eX99otwJ6Z" role="2OqNvi">
                                              <ref role="37wK5l" to="u4ym:5uiQOXmFXlC" resolve="processMouseMotionEvent" />
                                              <node concept="37vLTw" id="7eX99otxFRo" role="37wK5m">
                                                <ref role="3cqZAo" node="5uiQOXmDAGx" resolve="e" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3y3z36" id="5uiQOXmEe_h" role="3clFbw">
                                        <node concept="37vLTw" id="5uiQOXmEcK3" role="3uHU7B">
                                          <ref role="3cqZAo" node="5uiQOXmE7JO" resolve="canvas" />
                                        </node>
                                        <node concept="10Nm6u" id="5uiQOXmEjjr" role="3uHU7w" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="7eX99otFf_L" role="3clFbw">
                          <node concept="3y3z36" id="7eX99otF7pW" role="3uHU7B">
                            <node concept="2OqwBi" id="7eX99otF1BN" role="3uHU7B">
                              <node concept="37vLTw" id="7eX99otF0X9" role="2Oq$k0">
                                <ref role="3cqZAo" node="5uiQOXmDAGx" resolve="e" />
                              </node>
                              <node concept="liA8E" id="7eX99otF523" role="2OqNvi">
                                <ref role="37wK5l" to="z60i:~AWTEvent.getID()" resolve="getID" />
                              </node>
                            </node>
                            <node concept="10M0yZ" id="7eX99otFd9h" role="3uHU7w">
                              <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_ENTERED" resolve="MOUSE_ENTERED" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                          </node>
                          <node concept="3y3z36" id="7eX99otFhBJ" role="3uHU7w">
                            <node concept="2OqwBi" id="7eX99otFhBK" role="3uHU7B">
                              <node concept="37vLTw" id="7eX99otFhBL" role="2Oq$k0">
                                <ref role="3cqZAo" node="5uiQOXmDAGx" resolve="e" />
                              </node>
                              <node concept="liA8E" id="7eX99otFhBM" role="2OqNvi">
                                <ref role="37wK5l" to="z60i:~AWTEvent.getID()" resolve="getID" />
                              </node>
                            </node>
                            <node concept="10M0yZ" id="7eX99otFjxJ" role="3uHU7w">
                              <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_EXITED" resolve="MOUSE_EXITED" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5uiQOXmDAGB" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="5uiQOXmDuzt" role="jymVt">
                    <property role="TrG5h" value="processMouseEvent" />
                    <node concept="3Tmbuc" id="5uiQOXmDuzu" role="1B3o_S" />
                    <node concept="3cqZAl" id="5uiQOXmDuzw" role="3clF45" />
                    <node concept="37vLTG" id="5uiQOXmDuzx" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="5uiQOXmDuzy" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5uiQOXmDuzF" role="3clF47">
                      <node concept="3clFbF" id="5uiQOXmDuzJ" role="3cqZAp">
                        <node concept="3nyPlj" id="5uiQOXmDuzI" role="3clFbG">
                          <ref role="37wK5l" to="dxuu:~JComponent.processMouseEvent(java.awt.event.MouseEvent)" resolve="processMouseEvent" />
                          <node concept="37vLTw" id="5uiQOXmDuzH" role="37wK5m">
                            <ref role="3cqZAo" node="5uiQOXmDuzx" resolve="e" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="7eX99otFrFx" role="3cqZAp">
                        <node concept="3clFbS" id="7eX99otFrFz" role="3clFbx">
                          <node concept="3clFbF" id="7eX99otCSVY" role="3cqZAp">
                            <node concept="2OqwBi" id="7eX99otCVD8" role="3clFbG">
                              <node concept="2O$n0J" id="7eX99otCSVW" role="2Oq$k0" />
                              <node concept="liA8E" id="7eX99otCXsO" role="2OqNvi">
                                <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                                <node concept="1bVj0M" id="7eX99otD1PL" role="37wK5m">
                                  <node concept="3clFbS" id="7eX99otD1PM" role="1bW5cS">
                                    <node concept="3cpWs8" id="5uiQOXmFsOh" role="3cqZAp">
                                      <node concept="3cpWsn" id="5uiQOXmFsOi" role="3cpWs9">
                                        <property role="TrG5h" value="canvas" />
                                        <node concept="3LmiP1" id="5uiQOXmFsOj" role="1tU5fm">
                                          <ref role="2XDbjv" node="skgx$J4Z32" resolve="DCanvas" />
                                        </node>
                                        <node concept="2OqwBi" id="5uiQOXmFsOk" role="33vP2m">
                                          <node concept="37vLTw" id="5uiQOXmFsOl" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5uiQOXmE1DX" resolve="self" />
                                          </node>
                                          <node concept="3BHqF8" id="5uiQOXmFsOm" role="2OqNvi">
                                            <ref role="3BGHVm" node="skgx$J4Z32" resolve="DCanvas" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="5uiQOXmEZ_A" role="3cqZAp">
                                      <node concept="3clFbS" id="5uiQOXmEZ_B" role="3clFbx">
                                        <node concept="3cpWs8" id="7eX99otxPHN" role="3cqZAp">
                                          <node concept="3cpWsn" id="7eX99otxPHO" role="3cpWs9">
                                            <property role="TrG5h" value="location" />
                                            <node concept="3uibUv" id="7eX99otxPHP" role="1tU5fm">
                                              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                                            </node>
                                            <node concept="2OqwBi" id="7eX99otxPHQ" role="33vP2m">
                                              <node concept="5IyTM" id="7eX99otxPHR" role="2Oq$k0">
                                                <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
                                              </node>
                                              <node concept="liA8E" id="7eX99otxPHS" role="2OqNvi">
                                                <ref role="37wK5l" to="z60i:~Component.getLocation()" resolve="getLocation" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="7eX99otxPHT" role="3cqZAp">
                                          <node concept="2OqwBi" id="7eX99otxPHU" role="3clFbG">
                                            <node concept="37vLTw" id="7eX99otxPHV" role="2Oq$k0">
                                              <ref role="3cqZAo" node="5uiQOXmDuzx" resolve="e" />
                                            </node>
                                            <node concept="liA8E" id="7eX99otxPHW" role="2OqNvi">
                                              <ref role="37wK5l" to="hyam:~MouseEvent.translatePoint(int,int)" resolve="translatePoint" />
                                              <node concept="2OqwBi" id="7eX99otxPHX" role="37wK5m">
                                                <node concept="37vLTw" id="7eX99otxPHY" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="7eX99otxPHO" resolve="location" />
                                                </node>
                                                <node concept="2OwXpG" id="7eX99otxPHZ" role="2OqNvi">
                                                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="7eX99otxPI0" role="37wK5m">
                                                <node concept="37vLTw" id="7eX99otxPI1" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="7eX99otxPHO" resolve="location" />
                                                </node>
                                                <node concept="2OwXpG" id="7eX99otxPI2" role="2OqNvi">
                                                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="7eX99otwI4J" role="3cqZAp">
                                          <node concept="2OqwBi" id="7eX99otwI4K" role="3clFbG">
                                            <node concept="2OqwBi" id="7eX99otwI4L" role="2Oq$k0">
                                              <node concept="37vLTw" id="7eX99otwI4M" role="2Oq$k0">
                                                <ref role="3cqZAo" node="5uiQOXmFsOi" resolve="canvas" />
                                              </node>
                                              <node concept="1OA3xM" id="7eX99otwI4N" role="2OqNvi">
                                                <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="7eX99otwI4O" role="2OqNvi">
                                              <ref role="37wK5l" to="u4ym:5uiQOXmFXlr" resolve="processMouseEvent" />
                                              <node concept="37vLTw" id="7eX99otwI4P" role="37wK5m">
                                                <ref role="3cqZAo" node="5uiQOXmDuzx" resolve="e" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3y3z36" id="5uiQOXmEZ_O" role="3clFbw">
                                        <node concept="37vLTw" id="5uiQOXmEZ_P" role="3uHU7B">
                                          <ref role="3cqZAo" node="5uiQOXmFsOi" resolve="canvas" />
                                        </node>
                                        <node concept="10Nm6u" id="5uiQOXmEZ_Q" role="3uHU7w" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="7eX99otFtK2" role="3clFbw">
                          <node concept="3y3z36" id="7eX99otFtK3" role="3uHU7B">
                            <node concept="2OqwBi" id="7eX99otFtK4" role="3uHU7B">
                              <node concept="37vLTw" id="7eX99otFtK5" role="2Oq$k0">
                                <ref role="3cqZAo" node="5uiQOXmDuzx" resolve="e" />
                              </node>
                              <node concept="liA8E" id="7eX99otFtK6" role="2OqNvi">
                                <ref role="37wK5l" to="z60i:~AWTEvent.getID()" resolve="getID" />
                              </node>
                            </node>
                            <node concept="10M0yZ" id="7eX99otFtK7" role="3uHU7w">
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                              <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_ENTERED" resolve="MOUSE_ENTERED" />
                            </node>
                          </node>
                          <node concept="3y3z36" id="7eX99otFtK8" role="3uHU7w">
                            <node concept="2OqwBi" id="7eX99otFtK9" role="3uHU7B">
                              <node concept="37vLTw" id="7eX99otFtKa" role="2Oq$k0">
                                <ref role="3cqZAo" node="5uiQOXmDuzx" resolve="e" />
                              </node>
                              <node concept="liA8E" id="7eX99otFtKb" role="2OqNvi">
                                <ref role="37wK5l" to="z60i:~AWTEvent.getID()" resolve="getID" />
                              </node>
                            </node>
                            <node concept="10M0yZ" id="7eX99otFtKc" role="3uHU7w">
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                              <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_EXITED" resolve="MOUSE_EXITED" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5uiQOXmDuzG" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="5uiQOXmDuzK" role="jymVt">
                    <property role="TrG5h" value="processKeyEvent" />
                    <node concept="3Tmbuc" id="5uiQOXmDuzL" role="1B3o_S" />
                    <node concept="3cqZAl" id="5uiQOXmDuzN" role="3clF45" />
                    <node concept="37vLTG" id="5uiQOXmDuzO" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="5uiQOXmDuzP" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~KeyEvent" resolve="KeyEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5uiQOXmDuzY" role="3clF47">
                      <node concept="3clFbF" id="5uiQOXmDu$2" role="3cqZAp">
                        <node concept="3nyPlj" id="5uiQOXmDu$1" role="3clFbG">
                          <ref role="37wK5l" to="dxuu:~JComponent.processKeyEvent(java.awt.event.KeyEvent)" resolve="processKeyEvent" />
                          <node concept="37vLTw" id="5uiQOXmDu$0" role="37wK5m">
                            <ref role="3cqZAo" node="5uiQOXmDuzO" resolve="e" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7eX99otDg1j" role="3cqZAp">
                        <node concept="2OqwBi" id="7eX99otDiAm" role="3clFbG">
                          <node concept="2O$n0J" id="7eX99otDg1h" role="2Oq$k0" />
                          <node concept="liA8E" id="7eX99otDjV5" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="7eX99otDnmr" role="37wK5m">
                              <node concept="3clFbS" id="7eX99otDnms" role="1bW5cS">
                                <node concept="3cpWs8" id="5uiQOXmFxrG" role="3cqZAp">
                                  <node concept="3cpWsn" id="5uiQOXmFxrH" role="3cpWs9">
                                    <property role="TrG5h" value="canvas" />
                                    <node concept="3LmiP1" id="5uiQOXmFxrI" role="1tU5fm">
                                      <ref role="2XDbjv" node="skgx$J4Z32" resolve="DCanvas" />
                                    </node>
                                    <node concept="2OqwBi" id="5uiQOXmFxrJ" role="33vP2m">
                                      <node concept="37vLTw" id="5uiQOXmFxrK" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5uiQOXmE1DX" resolve="self" />
                                      </node>
                                      <node concept="3BHqF8" id="5uiQOXmFxrL" role="2OqNvi">
                                        <ref role="3BGHVm" node="skgx$J4Z32" resolve="DCanvas" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="5uiQOXmF4Gn" role="3cqZAp">
                                  <node concept="3clFbS" id="5uiQOXmF4Go" role="3clFbx">
                                    <node concept="3clFbF" id="5uiQOXmFFMK" role="3cqZAp">
                                      <node concept="2OqwBi" id="7eX99otwB3O" role="3clFbG">
                                        <node concept="2OqwBi" id="7eX99otw$us" role="2Oq$k0">
                                          <node concept="37vLTw" id="7eX99otwyD7" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5uiQOXmFxrH" resolve="canvas" />
                                          </node>
                                          <node concept="1OA3xM" id="7eX99otw_x6" role="2OqNvi">
                                            <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="7eX99otwEaK" role="2OqNvi">
                                          <ref role="37wK5l" to="u4ym:5uiQOXmFXlP" resolve="processKeyEvent" />
                                          <node concept="37vLTw" id="7eX99otwH58" role="37wK5m">
                                            <ref role="3cqZAo" node="5uiQOXmDuzO" resolve="e" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3y3z36" id="5uiQOXmF4G_" role="3clFbw">
                                    <node concept="37vLTw" id="5uiQOXmF4GA" role="3uHU7B">
                                      <ref role="3cqZAo" node="5uiQOXmFxrH" resolve="canvas" />
                                    </node>
                                    <node concept="10Nm6u" id="5uiQOXmF4GB" role="3uHU7w" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5uiQOXmDuzZ" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eX99otYIsL" role="3cqZAp">
          <node concept="37vLTI" id="7eX99otYKFO" role="3clFbG">
            <node concept="2ShNRf" id="7eX99otYKNl" role="37vLTx">
              <node concept="YeOm9" id="7eX99otYPR0" role="2ShVmc">
                <node concept="1Y3b0j" id="7eX99otYPR3" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" to="lwvz:~SelectionListener" resolve="SelectionListener" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" />
                  <node concept="3Tm1VV" id="7eX99otYPR4" role="1B3o_S" />
                  <node concept="3clFb_" id="7eX99otYPRi" role="jymVt">
                    <property role="TrG5h" value="selectionChanged" />
                    <node concept="3Tm1VV" id="7eX99otYPRj" role="1B3o_S" />
                    <node concept="3cqZAl" id="7eX99otYPRl" role="3clF45" />
                    <node concept="37vLTG" id="7eX99otYPRm" role="3clF46">
                      <property role="TrG5h" value="p1" />
                      <node concept="3uibUv" id="7eX99otYPRn" role="1tU5fm">
                        <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="7eX99otYPRo" role="3clF46">
                      <property role="TrG5h" value="p2" />
                      <node concept="3uibUv" id="7eX99otYPRp" role="1tU5fm">
                        <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="7eX99otYPRq" role="3clF46">
                      <property role="TrG5h" value="p3" />
                      <node concept="3uibUv" id="7eX99otYPRr" role="1tU5fm">
                        <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7eX99otYPRs" role="3clF47">
                      <node concept="3clFbF" id="7eX99ou0MWu" role="3cqZAp">
                        <node concept="2OqwBi" id="7eX99ou0Npl" role="3clFbG">
                          <node concept="2O$n0J" id="7eX99ou0MWt" role="2Oq$k0" />
                          <node concept="liA8E" id="7eX99ou0O2T" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="7eX99ou0Ora" role="37wK5m">
                              <node concept="3clFbS" id="7eX99ou0Orb" role="1bW5cS">
                                <node concept="3clFbF" id="7eX99ou0ONI" role="3cqZAp">
                                  <node concept="E34o$" id="7eX99ou0PDe" role="3clFbG">
                                    <node concept="3y3z36" id="7eX99ou0Q_g" role="37vLTx">
                                      <node concept="10Nm6u" id="7eX99ou0RMl" role="3uHU7w" />
                                      <node concept="37vLTw" id="7eX99ou0Q3k" role="3uHU7B">
                                        <ref role="3cqZAo" node="7eX99otYPRq" resolve="p3" />
                                      </node>
                                    </node>
                                    <node concept="1SfVH9" id="7eX99ou0ONH" role="37vLTJ">
                                      <ref role="3cqZAo" node="7eX99ou0F5U" resolve="isSelected" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="7eX99otYPRu" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5IyTM" id="7eX99otYIsJ" role="37vLTJ">
              <ref role="3cqZAo" node="7eX99otYDCr" resolve="selectionListener" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eX99otYU6D" role="3cqZAp">
          <node concept="2OqwBi" id="7eX99otZ4fV" role="3clFbG">
            <node concept="2OqwBi" id="7eX99otYYOj" role="2Oq$k0">
              <node concept="5IyTM" id="7eX99otYXNB" role="2Oq$k0">
                <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
              </node>
              <node concept="liA8E" id="7eX99otZ3iZ" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
              </node>
            </node>
            <node concept="liA8E" id="7eX99otZ5Jj" role="2OqNvi">
              <ref role="37wK5l" to="lwvz:~SelectionManager.addSelectionListener(jetbrains.mps.openapi.editor.selection.SelectionListener)" resolve="addSelectionListener" />
              <node concept="5IyTM" id="7eX99otZ5Qa" role="37wK5m">
                <ref role="3cqZAo" node="7eX99otYDCr" resolve="selectionListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3gYsXlMJ_U0" role="3cqZAp">
          <node concept="37vLTI" id="3gYsXlMJAw7" role="3clFbG">
            <node concept="5IyTM" id="3gYsXlMJAH9" role="37vLTx">
              <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
            </node>
            <node concept="5IyTM" id="3gYsXlMJ_TY" role="37vLTJ">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="681X9Tz1wML" role="1OA0iw">
        <node concept="3clFbF" id="7eX99otZ5Wp" role="3cqZAp">
          <node concept="2OqwBi" id="7eX99otZ5Wq" role="3clFbG">
            <node concept="2OqwBi" id="7eX99otZ5Wr" role="2Oq$k0">
              <node concept="5IyTM" id="7eX99otZ5Ws" role="2Oq$k0">
                <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
              </node>
              <node concept="liA8E" id="7eX99otZ5Wt" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
              </node>
            </node>
            <node concept="liA8E" id="7eX99otZ5Wu" role="2OqNvi">
              <ref role="37wK5l" to="lwvz:~SelectionManager.removeSelectionListener(jetbrains.mps.openapi.editor.selection.SelectionListener)" resolve="removeSelectionListener" />
              <node concept="5IyTM" id="7eX99otZ5Wv" role="37wK5m">
                <ref role="3cqZAo" node="7eX99otYDCr" resolve="selectionListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eX99otZ72R" role="3cqZAp">
          <node concept="37vLTI" id="7eX99otZ7gC" role="3clFbG">
            <node concept="10Nm6u" id="7eX99otZ7wQ" role="37vLTx" />
            <node concept="5IyTM" id="7eX99otZ72P" role="37vLTJ">
              <ref role="3cqZAo" node="7eX99otYDCr" resolve="selectionListener" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3gYsXlMKvKz" role="3cqZAp">
          <node concept="37vLTI" id="3gYsXlMKwsI" role="3clFbG">
            <node concept="10Nm6u" id="3gYsXlMKw_4" role="37vLTx" />
            <node concept="5IyTM" id="3gYsXlMKvKy" role="37vLTJ">
              <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="3gYsXlMKw_$" role="1OA3xZ">
        <ref role="1OA0iW" node="681X9Tz1uNc" resolve="node" />
        <node concept="3clFbS" id="3gYsXlMKw__" role="1OA0iB">
          <node concept="3clFbF" id="3gYsXlMKwKS" role="3cqZAp">
            <node concept="2OqwBi" id="3gYsXlMKxti" role="3clFbG">
              <node concept="5IyTM" id="3gYsXlMKwKR" role="2Oq$k0">
                <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
              </node>
              <node concept="liA8E" id="3gYsXlMK$TY" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.editNode(org.jetbrains.mps.openapi.model.SNode)" resolve="editNode" />
                <node concept="2OqwBi" id="1US0OOX5Ez6" role="37wK5m">
                  <node concept="1eOMI4" id="1US0OOX5C_s" role="2Oq$k0">
                    <node concept="10QFUN" id="1US0OOX5CG1" role="1eOMHV">
                      <node concept="3uibUv" id="1US0OOX5Dj3" role="10QFUM">
                        <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                      </node>
                      <node concept="1OA3xA" id="1US0OOX5BHh" role="10QFUP" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1US0OOX5HsZ" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DNewableObject.tryOriginal()" resolve="tryOriginal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5nC4fNhZIQY" role="3cqZAp">
            <node concept="2OqwBi" id="5nC4fNhZK4I" role="3clFbG">
              <node concept="5IyTM" id="5nC4fNhZIQW" role="2Oq$k0">
                <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
              </node>
              <node concept="liA8E" id="5nC4fNhZOyU" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~NodeEditorComponent.rebuildEditorContent()" resolve="rebuildEditorContent" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3gYsXlMKG_Q" role="3cqZAp">
            <node concept="2OqwBi" id="3gYsXlMKHlr" role="3clFbG">
              <node concept="5IyTM" id="3gYsXlMKG_O" role="2Oq$k0">
                <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
              </node>
              <node concept="liA8E" id="3gYsXlMKJQ1" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="5nC4fNiq27F" role="1OA3xZ">
        <ref role="1OA0iW" node="4NMtPTvGUBA" resolve="location" />
        <node concept="3clFbS" id="5nC4fNiq27G" role="1OA0iB">
          <node concept="3clFbJ" id="5uiQOXm936C" role="3cqZAp">
            <node concept="3clFbS" id="5uiQOXm936E" role="3clFbx">
              <node concept="3clFbF" id="5uiQOXm8W2B" role="3cqZAp">
                <node concept="2OqwBi" id="5uiQOXm8X2O" role="3clFbG">
                  <node concept="5IyTM" id="5uiQOXm8W2A" role="2Oq$k0">
                    <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
                  </node>
                  <node concept="liA8E" id="5uiQOXm91uL" role="2OqNvi">
                    <ref role="37wK5l" to="u4ym:5uiQOXm8oED" resolve="doSetLocation" />
                    <node concept="2OqwBi" id="5uiQOXm91K9" role="37wK5m">
                      <node concept="1OA3xA" id="5uiQOXm91_E" role="2Oq$k0" />
                      <node concept="2$Gk$L" id="5uiQOXm92a0" role="2OqNvi">
                        <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5uiQOXm92ye" role="37wK5m">
                      <node concept="1OA3xA" id="5uiQOXm92mm" role="2Oq$k0" />
                      <node concept="2$Gk$L" id="5uiQOXm92W4" role="2OqNvi">
                        <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5uiQOXm93oF" role="3clFbw">
              <node concept="10Nm6u" id="5uiQOXm93BQ" role="3uHU7w" />
              <node concept="1OA3xA" id="5uiQOXm93eH" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="5uiQOXm93M3" role="1OA3xZ">
        <ref role="1OA0iW" node="46vl3mDwqLd" resolve="size" />
        <node concept="3clFbS" id="5uiQOXm93M4" role="1OA0iB">
          <node concept="3clFbJ" id="5uiQOXm94oF" role="3cqZAp">
            <node concept="3clFbS" id="5uiQOXm94oG" role="3clFbx">
              <node concept="3clFbF" id="5uiQOXm94oH" role="3cqZAp">
                <node concept="2OqwBi" id="5uiQOXm94oI" role="3clFbG">
                  <node concept="5IyTM" id="5uiQOXm94oJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
                  </node>
                  <node concept="liA8E" id="5uiQOXm94oK" role="2OqNvi">
                    <ref role="37wK5l" to="u4ym:5uiQOXm8Gv1" resolve="doSetSize" />
                    <node concept="2OqwBi" id="5uiQOXm94oL" role="37wK5m">
                      <node concept="1OA3xA" id="5uiQOXm94oM" role="2Oq$k0" />
                      <node concept="2$Gk$L" id="5uiQOXm94oN" role="2OqNvi">
                        <ref role="37wK5l" node="7ESv7kyhKXZ" resolve="width" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5uiQOXm94oO" role="37wK5m">
                      <node concept="1OA3xA" id="5uiQOXm94oP" role="2Oq$k0" />
                      <node concept="2$Gk$L" id="5uiQOXm94oQ" role="2OqNvi">
                        <ref role="37wK5l" node="7ESv7kyhKY9" resolve="height" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5uiQOXm94oR" role="3clFbw">
              <node concept="10Nm6u" id="5uiQOXm94oS" role="3uHU7w" />
              <node concept="1OA3xA" id="5uiQOXm94oT" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="7eX99ou1qT5" role="1OA3xZ">
        <ref role="1OA0iW" node="7eX99ou0F5U" resolve="isSelected" />
        <node concept="3clFbS" id="7eX99ou1qT6" role="1OA0iB">
          <node concept="3clFbJ" id="7eX99ou1wy0" role="3cqZAp">
            <node concept="3fqX7Q" id="7eX99ou1wBM" role="3clFbw">
              <node concept="1OA3xA" id="7eX99ou1wHB" role="3fr31v" />
            </node>
            <node concept="3clFbS" id="7eX99ou1wy2" role="3clFbx">
              <node concept="3clFbF" id="7eX99ou1wNq" role="3cqZAp">
                <node concept="2OqwBi" id="7eX99ou1xHM" role="3clFbG">
                  <node concept="5IyTM" id="7eX99ou1wNp" role="2Oq$k0">
                    <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
                  </node>
                  <node concept="liA8E" id="7eX99ou1AcC" role="2OqNvi">
                    <ref role="37wK5l" to="exr9:~EditorComponent.clearSelectionStack()" resolve="clearSelectionStack" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3LmNE2" id="5S9goljncXv">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="WHdioYVYaT" resolve="DVisible" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
  </node>
  <node concept="311c5q" id="31sbKqyPOVu">
    <property role="3GE5qa" value="diagrams" />
    <ref role="311c5K" to="53d4:31sbKqyPLDd" resolve="Diagram" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="4Oa6zNZz9Lj" role="1FPzNG">
      <property role="TrG5h" value="canvas" />
      <property role="3K1B09" value="true" />
      <node concept="3LmiP1" id="4Oa6zNZz9Mp" role="1tU5fm">
        <ref role="2XDbjv" node="3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="32q3_s" id="Vg5FswJWWZ" role="1FPzNG">
      <property role="TrG5h" value="jComponent" />
      <property role="1incD5" value="true" />
      <property role="KodbT" value="true" />
      <node concept="3uibUv" id="Vg5FswJX0b" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2OqwBi" id="Vg5FswWCr8" role="33vP2m">
        <node concept="1SfVH9" id="Vg5FswWC4s" role="2Oq$k0">
          <ref role="3cqZAo" node="4Oa6zNZz9Lj" resolve="canvas" />
        </node>
        <node concept="32jkxy" id="Vg5Fsx9$Ap" role="2OqNvi">
          <ref role="3cqZAo" node="4Oa6zO0kSh3" resolve="jComponent" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2UJ2oG" id="3OZjsowptDc">
    <property role="3GE5qa" value="diagrams" />
    <property role="TrG5h" value="DFilledNode" />
    <node concept="32q3_s" id="3HJBHARurzj" role="2UJ2y3">
      <property role="TrG5h" value="diagram" />
      <node concept="3LmiP1" id="3HJBHARusGL" role="1tU5fm">
        <ref role="2XDbjv" node="3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="2UJ2Q1" id="3OZjsowptDf" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z45" resolve="DFilledShape" />
    </node>
    <node concept="32q3_s" id="3OZjsowptDh" role="2UJ2y3">
      <property role="TrG5h" value="node" />
      <node concept="3Tqbb2" id="3OZjsowptJt" role="1tU5fm">
        <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
    </node>
  </node>
  <node concept="2UJ2oG" id="3OZjsowp$AG">
    <property role="3GE5qa" value="diagrams" />
    <property role="TrG5h" value="DMultiLineEdge" />
    <node concept="32q3_s" id="3OZjsowq9ys" role="2UJ2y3">
      <property role="TrG5h" value="from" />
      <node concept="3LmiP1" id="3OZjsowu2NE" role="1tU5fm">
        <ref role="2XDbjv" node="3OZjsowptDc" resolve="DFilledNode" />
      </node>
    </node>
    <node concept="32q3_s" id="3OZjsowu2R1" role="2UJ2y3">
      <property role="TrG5h" value="to" />
      <node concept="3LmiP1" id="3OZjsowu2SE" role="1tU5fm">
        <ref role="2XDbjv" node="3OZjsowptDc" resolve="DFilledNode" />
      </node>
    </node>
    <node concept="32q3_s" id="3OZjsowp$AH" role="2UJ2y3">
      <property role="TrG5h" value="association" />
      <node concept="3Tqbb2" id="3OZjsowp$BL" role="1tU5fm">
        <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
    </node>
    <node concept="2UJ2Q1" id="3OZjsowp_8g" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z3O" resolve="DMultiLineShape" />
    </node>
  </node>
  <node concept="311c5q" id="3OZjsowpKLA">
    <property role="3GE5qa" value="diagrams" />
    <ref role="311c5K" to="53d4:31sbKqyPLDe" resolve="NodeLayout" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="2T0xVNLUzkF" role="1FPzNG">
      <property role="TrG5h" value="id" />
      <property role="3CZYri" value="true" />
      <node concept="17QB3L" id="1J7fUUysenz" role="1tU5fm" />
      <node concept="2OqwBi" id="1J7fUUyscH6" role="33vP2m">
        <node concept="2OqwBi" id="2T0xVNLU_4_" role="2Oq$k0">
          <node concept="2Wb9Zs" id="2T0xVNLU$O4" role="2Oq$k0" />
          <node concept="3TrEf2" id="2T0xVNLU_yR" role="2OqNvi">
            <ref role="3Tt5mk" to="53d4:31sbKqyPLDf" resolve="node" />
          </node>
        </node>
        <node concept="3TrcHB" id="1J7fUUysdIz" role="2OqNvi">
          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2T0xVNLUbde" role="1FPzNG">
      <property role="TrG5h" value="position" />
      <node concept="3LmiP1" id="2T0xVNLUblx" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="3KEV6E" id="2T0xVNLUfLe" role="33vP2m">
        <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
        <node concept="2Pygp_" id="2T0xVNLUfLf" role="2Pygpa">
          <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
          <node concept="10QFUN" id="2T0xVNLUg_H" role="2PygpA">
            <node concept="10P55v" id="2T0xVNLUgJh" role="10QFUM" />
            <node concept="2OqwBi" id="2T0xVNLUg0W" role="10QFUP">
              <node concept="2Wb9Zs" id="2T0xVNLUfOv" role="2Oq$k0" />
              <node concept="3TrcHB" id="2T0xVNLUgsU" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPLDJ" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Pygp_" id="2T0xVNLUfLg" role="2Pygpa">
          <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
          <node concept="10QFUN" id="2T0xVNLUhFe" role="2PygpA">
            <node concept="10P55v" id="2T0xVNLUhON" role="10QFUM" />
            <node concept="2OqwBi" id="2T0xVNLUh6s" role="10QFUP">
              <node concept="2Wb9Zs" id="2T0xVNLUgTY" role="2Oq$k0" />
              <node concept="3TrcHB" id="2T0xVNLUhyr" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPLDL" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="311c5q" id="3OZjsowqv_L">
    <property role="3GE5qa" value="diagrams" />
    <ref role="311c5K" to="53d4:31sbKqyPLDj" resolve="EdgeLayout" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="7QGAU2f05_a" role="1FPzNG">
      <property role="TrG5h" value="id" />
      <property role="3CZYri" value="true" />
      <node concept="2OqwBi" id="1J7fUUysap6" role="33vP2m">
        <node concept="2OqwBi" id="7QGAU2f0a5V" role="2Oq$k0">
          <node concept="2Wb9Zs" id="7QGAU2f09Mm" role="2Oq$k0" />
          <node concept="3TrEf2" id="7QGAU2f0aJ_" role="2OqNvi">
            <ref role="3Tt5mk" to="53d4:31sbKqyPLDk" resolve="association" />
          </node>
        </node>
        <node concept="3TrcHB" id="1J7fUUysaZ2" role="2OqNvi">
          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="17QB3L" id="1J7fUUysbdT" role="1tU5fm" />
    </node>
  </node>
  <node concept="311c5q" id="3OZjsowqvAi">
    <property role="3GE5qa" value="diagrams" />
    <ref role="311c5K" to="53d4:31sbKqyPLDm" resolve="JointLayout" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="98RYWvGFaI" role="1FPzNG">
      <property role="TrG5h" value="position" />
      <node concept="3LmiP1" id="98RYWvGFhx" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="3KEV6E" id="98RYWvGHzW" role="33vP2m">
        <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
        <node concept="2Pygp_" id="98RYWvGHzX" role="2Pygpa">
          <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
          <node concept="10QFUN" id="98RYWvNhfr" role="2PygpA">
            <node concept="10P55v" id="98RYWvNhqW" role="10QFUM" />
            <node concept="2OqwBi" id="98RYWvGHXc" role="10QFUP">
              <node concept="2Wb9Zs" id="98RYWvGHDJ" role="2Oq$k0" />
              <node concept="3TrcHB" id="98RYWvGIpM" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPMf7" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Pygp_" id="98RYWvGHzY" role="2Pygpa">
          <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
          <node concept="10QFUN" id="98RYWvNh$i" role="2PygpA">
            <node concept="10P55v" id="98RYWvNhAs" role="10QFUM" />
            <node concept="2OqwBi" id="98RYWvGIJA" role="10QFUP">
              <node concept="2Wb9Zs" id="98RYWvGI$g" role="2Oq$k0" />
              <node concept="3TrcHB" id="98RYWvGJiD" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPMf9" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3LmNE2" id="3OZjsowqDmb">
    <property role="3GE5qa" value="diagrams" />
    <ref role="2UJ2Q8" node="3OZjsowptDc" resolve="DFilledNode" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="1J7fUUysHQf" role="1FPzNG">
      <property role="TrG5h" value="lineEdges" />
      <node concept="_YKpA" id="1J7fUUysHPY" role="1tU5fm">
        <node concept="3LmiP1" id="1J7fUUysHPZ" role="_ZDj9">
          <ref role="2XDbjv" node="3OZjsowp$AG" resolve="DMultiLineEdge" />
        </node>
      </node>
      <node concept="2OqwBi" id="1J7fUUysHQ0" role="33vP2m">
        <node concept="2OqwBi" id="1J7fUUysHQ1" role="2Oq$k0">
          <node concept="1SfVH9" id="1J7fUUysHQ2" role="2Oq$k0">
            <ref role="3cqZAo" node="3HJBHARurzj" resolve="diagram" />
          </node>
          <node concept="32jkxy" id="1J7fUUysHQ3" role="2OqNvi">
            <ref role="3cqZAo" node="3OZjsowtd_X" resolve="lineEdges" />
          </node>
        </node>
        <node concept="3zZkjj" id="1J7fUUysHQ4" role="2OqNvi">
          <node concept="1bVj0M" id="1J7fUUysHQ5" role="23t8la">
            <node concept="3clFbS" id="1J7fUUysHQ6" role="1bW5cS">
              <node concept="3clFbF" id="1J7fUUysHQ7" role="3cqZAp">
                <node concept="17R0WA" id="1J7fUUysHQ8" role="3clFbG">
                  <node concept="2Wb9Zs" id="1J7fUUysHQ9" role="3uHU7w" />
                  <node concept="2OqwBi" id="1J7fUUysHQa" role="3uHU7B">
                    <node concept="37vLTw" id="1J7fUUysHQb" role="2Oq$k0">
                      <ref role="3cqZAo" node="1J7fUUysHQd" resolve="e" />
                    </node>
                    <node concept="32jkxy" id="1J7fUUysHQc" role="2OqNvi">
                      <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="1J7fUUysHQd" role="1bW2Oz">
              <property role="TrG5h" value="e" />
              <node concept="2jxLKc" id="1J7fUUysHQe" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2CQk7M4lME$" role="1FPzNG">
      <property role="TrG5h" value="layout" />
      <node concept="3Tqbb2" id="2CQk7M4lNb5" role="1tU5fm">
        <ref role="ehGHo" to="53d4:31sbKqyPLDe" resolve="NodeLayout" />
      </node>
      <node concept="2pJPEk" id="2CQk7M4lPNP" role="33vP2m">
        <node concept="2pJPED" id="2CQk7M4lQc$" role="2pJPEn">
          <ref role="2pJxaS" to="53d4:31sbKqyPLDe" resolve="NodeLayout" />
          <node concept="2pIpSj" id="2CQk7M4lQ$k" role="2pJxcM">
            <ref role="2pIpSl" to="53d4:31sbKqyPLDf" resolve="node" />
            <node concept="36biLy" id="2CQk7M4lQBE" role="28nt2d">
              <node concept="1SfVH9" id="2CQk7M4lQH6" role="36biLW">
                <ref role="3cqZAo" node="3OZjsowptDh" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="2pIpSj" id="1J7fUUysM8P" role="2pJxcM">
            <ref role="2pIpSl" to="53d4:31sbKqyPLEi" resolve="edges" />
            <node concept="36biLy" id="1J7fUUysMg0" role="28nt2d">
              <node concept="2OqwBi" id="1J7fUUysMgc" role="36biLW">
                <node concept="1SfVH9" id="1J7fUUysMgd" role="2Oq$k0">
                  <ref role="3cqZAo" node="1J7fUUysHQf" resolve="lineEdges" />
                </node>
                <node concept="13MTOL" id="1J7fUUysMge" role="2OqNvi">
                  <ref role="13MTZf" node="2CQk7M4lA0g" resolve="layout" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2pJxcG" id="1J7fUUysVDK" role="2pJxcM">
            <ref role="2pJxcJ" to="53d4:31sbKqyPLDJ" resolve="x" />
            <node concept="2OqwBi" id="1J7fUUysVNf" role="28ntcv">
              <node concept="1SfVH9" id="1J7fUUysVNg" role="2Oq$k0">
                <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
              </node>
              <node concept="2$Gk$L" id="1J7fUUysVNh" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
          </node>
          <node concept="2pJxcG" id="1J7fUUysW8s" role="2pJxcM">
            <ref role="2pJxcJ" to="53d4:31sbKqyPLDL" resolve="y" />
            <node concept="WxPPo" id="1J7fUUysWwA" role="28ntcv">
              <node concept="2OqwBi" id="1J7fUUysWLz" role="WxPPp">
                <node concept="1SfVH9" id="1J7fUUysWw$" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                </node>
                <node concept="2$Gk$L" id="1J7fUUysXf3" role="2OqNvi">
                  <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="2T0xVNLUk6W" role="1FPzNG">
      <node concept="3clFbF" id="1J7fUUysXm9" role="30jUnX">
        <node concept="E34o$" id="3HJBHARuqJC" role="3clFbG">
          <node concept="1SfVH9" id="3HJBHARuqAW" role="37vLTJ">
            <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
          </node>
          <node concept="2OqwBi" id="5uiQOXmgEF1" role="37vLTx">
            <node concept="1SfVH9" id="5uiQOXmgEF2" role="2Oq$k0">
              <ref role="3cqZAo" node="2CQk7M4lME$" resolve="layout" />
            </node>
            <node concept="32jkxy" id="5uiQOXmgEF3" role="2OqNvi">
              <ref role="3cqZAo" node="2T0xVNLUbde" resolve="position" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3LmNE2" id="3OZjsowqD_I">
    <property role="3GE5qa" value="diagrams" />
    <ref role="2UJ2Q8" node="3OZjsowp$AG" resolve="DMultiLineEdge" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="2CQk7M4mVfs" role="1FPzNG">
      <property role="TrG5h" value="jointLayouts" />
      <node concept="2I9FWS" id="2CQk7M4mWds" role="1tU5fm">
        <ref role="2I9WkF" to="53d4:31sbKqyPLDm" resolve="JointLayout" />
      </node>
      <node concept="2OqwBi" id="2CQk7M4n0IV" role="33vP2m">
        <node concept="1SfVH9" id="2CQk7M4n0IW" role="2Oq$k0">
          <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
        </node>
        <node concept="3$u5V9" id="2CQk7M4n0IX" role="2OqNvi">
          <node concept="1bVj0M" id="2CQk7M4n0IY" role="23t8la">
            <node concept="3clFbS" id="2CQk7M4n0IZ" role="1bW5cS">
              <node concept="3clFbF" id="2CQk7M4n0J0" role="3cqZAp">
                <node concept="2pJPEk" id="2CQk7M4n0J1" role="3clFbG">
                  <node concept="2pJPED" id="2CQk7M4n0J2" role="2pJPEn">
                    <ref role="2pJxaS" to="53d4:31sbKqyPLDm" resolve="JointLayout" />
                    <node concept="2pJxcG" id="2CQk7M4n0J3" role="2pJxcM">
                      <ref role="2pJxcJ" to="53d4:31sbKqyPMf7" resolve="x" />
                      <node concept="WxPPo" id="2CQk7M4n0J4" role="28ntcv">
                        <node concept="2OqwBi" id="2CQk7M4n0J5" role="WxPPp">
                          <node concept="37vLTw" id="2CQk7M4n0J6" role="2Oq$k0">
                            <ref role="3cqZAo" node="2CQk7M4n0Jd" resolve="j" />
                          </node>
                          <node concept="2$Gk$L" id="2CQk7M4n0J7" role="2OqNvi">
                            <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2pJxcG" id="2CQk7M4n0J8" role="2pJxcM">
                      <ref role="2pJxcJ" to="53d4:31sbKqyPMf9" resolve="y" />
                      <node concept="WxPPo" id="2CQk7M4n0J9" role="28ntcv">
                        <node concept="2OqwBi" id="2CQk7M4n0Ja" role="WxPPp">
                          <node concept="37vLTw" id="2CQk7M4n0Jb" role="2Oq$k0">
                            <ref role="3cqZAo" node="2CQk7M4n0Jd" resolve="j" />
                          </node>
                          <node concept="2$Gk$L" id="2CQk7M4n0Jc" role="2OqNvi">
                            <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="2CQk7M4n0Jd" role="1bW2Oz">
              <property role="TrG5h" value="j" />
              <node concept="2jxLKc" id="2CQk7M4n0Je" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2CQk7M4lA0g" role="1FPzNG">
      <property role="TrG5h" value="layout" />
      <node concept="3Tqbb2" id="2CQk7M4lAPf" role="1tU5fm">
        <ref role="ehGHo" to="53d4:31sbKqyPLDj" resolve="EdgeLayout" />
      </node>
      <node concept="2pJPEk" id="2CQk7M4lFxr" role="33vP2m">
        <node concept="2pJPED" id="2CQk7M4lFPx" role="2pJPEn">
          <ref role="2pJxaS" to="53d4:31sbKqyPLDj" resolve="EdgeLayout" />
          <node concept="2pIpSj" id="2CQk7M4lGpw" role="2pJxcM">
            <ref role="2pIpSl" to="53d4:31sbKqyPLDk" resolve="association" />
            <node concept="36biLy" id="2CQk7M4lGz2" role="28nt2d">
              <node concept="1SfVH9" id="2CQk7M4lGCu" role="36biLW">
                <ref role="3cqZAo" node="3OZjsowp$AH" resolve="association" />
              </node>
            </node>
          </node>
          <node concept="2pIpSj" id="1J7fUUysQx6" role="2pJxcM">
            <ref role="2pIpSl" to="53d4:31sbKqyPMf4" resolve="joints" />
            <node concept="36biLy" id="1J7fUUysQHc" role="28nt2d">
              <node concept="1SfVH9" id="1J7fUUysQR8" role="36biLW">
                <ref role="3cqZAo" node="2CQk7M4mVfs" resolve="jointLayouts" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2ihDbyJWVEx" role="1FPzNG">
      <property role="TrG5h" value="firstJoint" />
      <property role="KodbT" value="true" />
      <node concept="3LmiP1" id="2ihDbyJWVEy" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="2ihDbyJWVEz" role="33vP2m">
        <node concept="1SfVH9" id="2ihDbyJWVE$" role="2Oq$k0">
          <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
        </node>
        <node concept="1uHKPH" id="2ihDbyJX9x8" role="2OqNvi" />
      </node>
    </node>
    <node concept="32q3_s" id="1bLYJ3eERnI" role="1FPzNG">
      <property role="TrG5h" value="lastJoint" />
      <property role="KodbT" value="true" />
      <node concept="3LmiP1" id="1bLYJ3eERnC" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="2ihDbyJWR_y" role="33vP2m">
        <node concept="1SfVH9" id="2ihDbyJWQml" role="2Oq$k0">
          <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
        </node>
        <node concept="1yVyf7" id="2ihDbyJWUxN" role="2OqNvi" />
      </node>
    </node>
    <node concept="3tBE6w" id="6YJvVULQ2x0" role="1FPzNG">
      <node concept="3clFbF" id="6YJvVULQ2$i" role="30jUnX">
        <node concept="E34o$" id="6YJvVULQ2Hl" role="3clFbG">
          <node concept="1SfVH9" id="6YJvVULQ2$h" role="37vLTJ">
            <ref role="3cqZAo" node="10mRasGpZJ8" resolve="beginPoint" />
          </node>
          <node concept="2OqwBi" id="1bLYJ3eEUby" role="37vLTx">
            <node concept="1SfVH9" id="1bLYJ3eETYa" role="2Oq$k0">
              <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
            </node>
            <node concept="2$Gk$L" id="1bLYJ3eEUI6" role="2OqNvi">
              <ref role="37wK5l" node="3OZjsowvM5f" resolve="intersection" />
              <node concept="3K4zz7" id="2ihDbyK3_Fw" role="37wK5m">
                <node concept="1SfVH9" id="2ihDbyK3_Zl" role="3K4E3e">
                  <ref role="3cqZAo" node="2ihDbyJWVEx" resolve="firstJoint" />
                </node>
                <node concept="2OqwBi" id="2ihDbyK3D$8" role="3K4GZi">
                  <node concept="1SfVH9" id="2ihDbyK3Adj" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
                  </node>
                  <node concept="32jkxy" id="2ihDbyK3E5y" role="2OqNvi">
                    <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                  </node>
                </node>
                <node concept="3y3z36" id="2ihDbyK3$Id" role="3K4Cdx">
                  <node concept="10Nm6u" id="2ihDbyK3_bs" role="3uHU7w" />
                  <node concept="1SfVH9" id="2ihDbyK3$vh" role="3uHU7B">
                    <ref role="3cqZAo" node="2ihDbyJWVEx" resolve="firstJoint" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="6YJvVULQ3D3" role="1FPzNG">
      <node concept="3clFbF" id="6YJvVULQ3HK" role="30jUnX">
        <node concept="E34o$" id="6YJvVULQ3QW" role="3clFbG">
          <node concept="2OqwBi" id="1bLYJ3eEVdD" role="37vLTx">
            <node concept="1SfVH9" id="1bLYJ3eEPmQ" role="2Oq$k0">
              <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
            </node>
            <node concept="2$Gk$L" id="1bLYJ3eEVCl" role="2OqNvi">
              <ref role="37wK5l" node="3OZjsowvM5f" resolve="intersection" />
              <node concept="3K4zz7" id="2ihDbyK3AYq" role="37wK5m">
                <node concept="1SfVH9" id="2ihDbyK3AYr" role="3K4E3e">
                  <ref role="3cqZAo" node="1bLYJ3eERnI" resolve="lastJoint" />
                </node>
                <node concept="2OqwBi" id="2ihDbyK3EEv" role="3K4GZi">
                  <node concept="1SfVH9" id="2ihDbyK3AYs" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                  </node>
                  <node concept="32jkxy" id="2ihDbyK3Fc6" role="2OqNvi">
                    <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                  </node>
                </node>
                <node concept="3y3z36" id="2ihDbyK3AYt" role="3K4Cdx">
                  <node concept="10Nm6u" id="2ihDbyK3AYu" role="3uHU7w" />
                  <node concept="1SfVH9" id="2ihDbyK3AYv" role="3uHU7B">
                    <ref role="3cqZAo" node="1bLYJ3eERnI" resolve="lastJoint" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1SfVH9" id="6YJvVULQ3HJ" role="37vLTJ">
            <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="98RYWvG7Td" role="1FPzNG">
      <node concept="3clFbF" id="1J7fUUysZ17" role="30jUnX">
        <node concept="E34o$" id="10mRasGHpM4" role="3clFbG">
          <node concept="1SfVH9" id="10mRasGHpM5" role="37vLTJ">
            <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
          </node>
          <node concept="2OqwBi" id="1J7fUUysZW3" role="37vLTx">
            <node concept="2OqwBi" id="1J7fUUysZG1" role="2Oq$k0">
              <node concept="1SfVH9" id="10mRasGHpMb" role="2Oq$k0">
                <ref role="3cqZAo" node="2CQk7M4lA0g" resolve="layout" />
              </node>
              <node concept="3Tsc0h" id="10mRasGHpMc" role="2OqNvi">
                <ref role="3TtcxE" to="53d4:31sbKqyPMf4" resolve="joints" />
              </node>
            </node>
            <node concept="13MTOL" id="10mRasGHpMd" role="2OqNvi">
              <ref role="13MTZf" node="98RYWvGFaI" resolve="position" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2UJ2oG" id="3OZjsowr30i">
    <property role="3GE5qa" value="diagrams" />
    <property role="TrG5h" value="DDiagramCanvas" />
    <node concept="32q3_s" id="3OZjsowr3$L" role="2UJ2y3">
      <property role="TrG5h" value="layout" />
      <node concept="3Tqbb2" id="3OZjsowr3_S" role="1tU5fm">
        <ref role="ehGHo" to="53d4:31sbKqyPLDd" resolve="Diagram" />
      </node>
    </node>
    <node concept="2UJ2Q1" id="3OZjsowrjsY" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z32" resolve="DCanvas" />
    </node>
  </node>
  <node concept="3LmNE2" id="3OZjsowr30j">
    <property role="3GE5qa" value="diagrams" />
    <ref role="2UJ2Q8" node="3OZjsowr30i" resolve="DDiagramCanvas" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="3OZjsowt8Zr" role="1FPzNG">
      <property role="TrG5h" value="filledNodes" />
      <node concept="_YKpA" id="3OZjsowt8Zm" role="1tU5fm">
        <node concept="3LmiP1" id="3OZjsowt8Zn" role="_ZDj9">
          <ref role="2XDbjv" node="3OZjsowptDc" resolve="DFilledNode" />
        </node>
      </node>
      <node concept="2OqwBi" id="3OZjsowt8Zo" role="33vP2m">
        <node concept="1SfVH9" id="3OZjsowt8Zp" role="2Oq$k0">
          <ref role="3cqZAo" node="7nNrlO1Gveo" resolve="shapes" />
        </node>
        <node concept="3MEsww" id="3OZjsowt8Zq" role="2OqNvi">
          <ref role="3MEk2i" node="3OZjsowptDc" resolve="DFilledNode" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="3OZjsowtd_X" role="1FPzNG">
      <property role="TrG5h" value="lineEdges" />
      <node concept="_YKpA" id="3OZjsowtd_S" role="1tU5fm">
        <node concept="3LmiP1" id="3OZjsowtd_T" role="_ZDj9">
          <ref role="2XDbjv" node="3OZjsowp$AG" resolve="DMultiLineEdge" />
        </node>
      </node>
      <node concept="2OqwBi" id="3OZjsowtd_U" role="33vP2m">
        <node concept="1SfVH9" id="3OZjsowtd_V" role="2Oq$k0">
          <ref role="3cqZAo" node="7nNrlO1Gveo" resolve="shapes" />
        </node>
        <node concept="3MEsww" id="3OZjsowtd_W" role="2OqNvi">
          <ref role="3MEk2i" node="3OZjsowp$AG" resolve="DMultiLineEdge" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="3OZjsowrnIY" role="1FPzNG">
      <property role="TrG5h" value="xs" />
      <node concept="2hMVRd" id="3OZjsowrrLL" role="1tU5fm">
        <node concept="10P55v" id="3OZjsowrrLN" role="2hN53Y" />
      </node>
      <node concept="36be1Y" id="3OZjsowrztP" role="33vP2m">
        <node concept="2OqwBi" id="3OZjsowrPp3" role="2Gi6C2">
          <node concept="2OqwBi" id="3OZjsowrnIT" role="2Oq$k0">
            <node concept="1SfVH9" id="3OZjsowt8Zt" role="2Oq$k0">
              <ref role="3cqZAo" node="3OZjsowt8Zr" resolve="filledNodes" />
            </node>
            <node concept="13MTOL" id="3OZjsowrnIX" role="2OqNvi">
              <ref role="13MTZf" node="3OZjsowsF15" resolve="max" />
            </node>
          </node>
          <node concept="13MTOL" id="3OZjsowrRk$" role="2OqNvi">
            <ref role="13MTZf" node="4NMtPTvGW7s" resolve="x" />
          </node>
        </node>
        <node concept="2OqwBi" id="3OZjsowr_hp" role="2Gi6C2">
          <node concept="2OqwBi" id="3OZjsowr_hq" role="2Oq$k0">
            <node concept="1SfVH9" id="3OZjsowtd_Z" role="2Oq$k0">
              <ref role="3cqZAo" node="3OZjsowtd_X" resolve="lineEdges" />
            </node>
            <node concept="13MTOL" id="3OZjsowr_hs" role="2OqNvi">
              <ref role="13MTZf" node="2ihDbyJLAdG" resolve="joints" />
            </node>
          </node>
          <node concept="13MTOL" id="3OZjsowr_ht" role="2OqNvi">
            <ref role="13MTZf" node="4NMtPTvGW7s" resolve="x" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="3OZjsowrsiY" role="1FPzNG">
      <property role="TrG5h" value="ys" />
      <node concept="2hMVRd" id="3OZjsows2BL" role="1tU5fm">
        <node concept="10P55v" id="3OZjsows2BN" role="2hN53Y" />
      </node>
      <node concept="36be1Y" id="3OZjsows0WQ" role="33vP2m">
        <node concept="2OqwBi" id="3OZjsows0WR" role="2Gi6C2">
          <node concept="2OqwBi" id="3OZjsows0WS" role="2Oq$k0">
            <node concept="1SfVH9" id="3OZjsowt8Zs" role="2Oq$k0">
              <ref role="3cqZAo" node="3OZjsowt8Zr" resolve="filledNodes" />
            </node>
            <node concept="13MTOL" id="3OZjsows0WW" role="2OqNvi">
              <ref role="13MTZf" node="3OZjsowsF15" resolve="max" />
            </node>
          </node>
          <node concept="13MTOL" id="3OZjsows4nu" role="2OqNvi">
            <ref role="13MTZf" node="4NMtPTvGXWc" resolve="y" />
          </node>
        </node>
        <node concept="2OqwBi" id="3OZjsows0WY" role="2Gi6C2">
          <node concept="2OqwBi" id="3OZjsows0WZ" role="2Oq$k0">
            <node concept="1SfVH9" id="3OZjsowtd_Y" role="2Oq$k0">
              <ref role="3cqZAo" node="3OZjsowtd_X" resolve="lineEdges" />
            </node>
            <node concept="13MTOL" id="3OZjsows0X3" role="2OqNvi">
              <ref role="13MTZf" node="2ihDbyJLAdG" resolve="joints" />
            </node>
          </node>
          <node concept="13MTOL" id="3OZjsows5MZ" role="2OqNvi">
            <ref role="13MTZf" node="4NMtPTvGXWc" resolve="y" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="6E86S2AMKGx" role="1FPzNG">
      <property role="TrG5h" value="maxX" />
      <node concept="10P55v" id="2Jp98iqeEDQ" role="1tU5fm" />
      <node concept="2OqwBi" id="2Jp98iqf1Af" role="33vP2m">
        <node concept="1SfVH9" id="3OZjsowrnIZ" role="2Oq$k0">
          <ref role="3cqZAo" node="3OZjsowrnIY" resolve="xs" />
        </node>
        <node concept="1MD8d$" id="2Jp98iqf6QF" role="2OqNvi">
          <node concept="1bVj0M" id="2Jp98iqf6QH" role="23t8la">
            <node concept="3clFbS" id="2Jp98iqf6QI" role="1bW5cS">
              <node concept="3clFbF" id="2Jp98iqf82Y" role="3cqZAp">
                <node concept="2YIFZM" id="2Jp98iqf8no" role="3clFbG">
                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                  <ref role="37wK5l" to="wyt6:~Math.max(double,double)" resolve="max" />
                  <node concept="37vLTw" id="2Jp98iqf8Qv" role="37wK5m">
                    <ref role="3cqZAo" node="2Jp98iqf6QJ" resolve="s" />
                  </node>
                  <node concept="37vLTw" id="2Jp98iqf9g6" role="37wK5m">
                    <ref role="3cqZAo" node="2Jp98iqf6QL" resolve="x" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="2Jp98iqf6QJ" role="1bW2Oz">
              <property role="TrG5h" value="s" />
              <node concept="10P55v" id="2Jp98iqf7yA" role="1tU5fm" />
            </node>
            <node concept="Rh6nW" id="2Jp98iqf6QL" role="1bW2Oz">
              <property role="TrG5h" value="x" />
              <node concept="2jxLKc" id="2Jp98iqf6QM" role="1tU5fm" />
            </node>
          </node>
          <node concept="3b6qkQ" id="2Jp98iqf9RJ" role="1MDeny">
            <property role="$nhwW" value="0.0d" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="3OZjsowr7Xq" role="1FPzNG">
      <property role="TrG5h" value="maxY" />
      <node concept="10P55v" id="3OZjsowr7Xr" role="1tU5fm" />
      <node concept="2OqwBi" id="3OZjsowr7Xs" role="33vP2m">
        <node concept="1SfVH9" id="3OZjsowrsiZ" role="2Oq$k0">
          <ref role="3cqZAo" node="3OZjsowrsiY" resolve="ys" />
        </node>
        <node concept="1MD8d$" id="3OZjsowr7X_" role="2OqNvi">
          <node concept="1bVj0M" id="3OZjsowr7XA" role="23t8la">
            <node concept="3clFbS" id="3OZjsowr7XB" role="1bW5cS">
              <node concept="3clFbF" id="3OZjsowr7XC" role="3cqZAp">
                <node concept="2YIFZM" id="3OZjsowr7XD" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~Math.max(double,double)" resolve="max" />
                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                  <node concept="37vLTw" id="3OZjsowr7XE" role="37wK5m">
                    <ref role="3cqZAo" node="3OZjsowr7XG" resolve="s" />
                  </node>
                  <node concept="37vLTw" id="3OZjsowr7XF" role="37wK5m">
                    <ref role="3cqZAo" node="3OZjsowr7XI" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="3OZjsowr7XG" role="1bW2Oz">
              <property role="TrG5h" value="s" />
              <node concept="10P55v" id="3OZjsowr7XH" role="1tU5fm" />
            </node>
            <node concept="Rh6nW" id="3OZjsowr7XI" role="1bW2Oz">
              <property role="TrG5h" value="y" />
              <node concept="2jxLKc" id="3OZjsowr7XJ" role="1tU5fm" />
            </node>
          </node>
          <node concept="3b6qkQ" id="3OZjsowr7XK" role="1MDeny">
            <property role="$nhwW" value="0.0d" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="6E86S2AMrFR" role="1FPzNG">
      <node concept="3clFbF" id="6E86S2AMrY4" role="30jUnX">
        <node concept="E34o$" id="6E86S2AMs6a" role="3clFbG">
          <node concept="3KEV6E" id="6E86S2AMue0" role="37vLTx">
            <ref role="2UJ2yc" node="4NMtPTvGXY5" resolve="DDimension" />
            <node concept="2Pygp_" id="6E86S2AMue1" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGXY6" resolve="width" />
              <node concept="3cpWs3" id="6E86S2ANh9L" role="2PygpA">
                <node concept="3b6qkQ" id="6E86S2ANhlO" role="3uHU7w">
                  <property role="$nhwW" value="100.0d" />
                </node>
                <node concept="1SfVH9" id="6E86S2ANfWs" role="3uHU7B">
                  <ref role="3cqZAo" node="6E86S2AMKGx" resolve="maxX" />
                </node>
              </node>
            </node>
            <node concept="2Pygp_" id="6E86S2AMue2" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGY55" resolve="height" />
              <node concept="3cpWs3" id="6E86S2AMInV" role="2PygpA">
                <node concept="3b6qkQ" id="6E86S2AMJcL" role="3uHU7w">
                  <property role="$nhwW" value="100.0d" />
                </node>
                <node concept="1SfVH9" id="2Jp98iqfg0s" role="3uHU7B">
                  <ref role="3cqZAo" node="3OZjsowr7Xq" resolve="maxY" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1SfVH9" id="6E86S2AMrY3" role="37vLTJ">
            <ref role="3cqZAo" node="46vl3mDwqIr" resolve="preferredSize" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="55oixcmGjeY" role="1FPzNG">
      <node concept="3clFbF" id="55oixcmGwj0" role="30jUnX">
        <node concept="E34o$" id="55oixcmG$qn" role="3clFbG">
          <node concept="2OqwBi" id="55oixcmG_Vy" role="37vLTx">
            <node concept="1SfVH9" id="55oixcmG$EL" role="2Oq$k0">
              <ref role="3cqZAo" node="3OZjsowt8Zr" resolve="filledNodes" />
            </node>
            <node concept="13MTOL" id="55oixcmGD$m" role="2OqNvi">
              <ref role="13MTZf" node="2CQk7M4lME$" resolve="layout" />
            </node>
          </node>
          <node concept="2OqwBi" id="55oixcmGxLG" role="37vLTJ">
            <node concept="2OqwBi" id="55oixcmGwDd" role="2Oq$k0">
              <node concept="2Wb9Zs" id="55oixcmGwiZ" role="2Oq$k0" />
              <node concept="32jkxy" id="55oixcmGxg9" role="2OqNvi">
                <ref role="3cqZAo" node="3OZjsowr3$L" resolve="layout" />
              </node>
            </node>
            <node concept="3Tsc0h" id="55oixcmGyxT" role="2OqNvi">
              <ref role="3TtcxE" to="53d4:31sbKqyPLDh" resolve="nodes" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

