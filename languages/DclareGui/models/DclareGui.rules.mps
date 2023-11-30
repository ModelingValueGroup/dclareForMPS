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
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="22ra" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.update(MPS.Editor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="h2sj" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.random(JDK/)" />
    <import index="fbzs" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.geom(JDK/)" />
    <import index="hypd" ref="r:aa31e43e-9240-4f4d-b6db-5c1c9a86c59e(jetbrains.mps.lang.project.structure)" implicit="true" />
    <import index="wev6" ref="r:f29914af-ae14-4589-b53d-f60c6018b368(jetbrains.mps.lang.project.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="c32b788d-8e4b-4023-97f5-3e90d04ed77b" name="DclareMPS">
      <concept id="4010647915821593701" name="DclareMPS.structure.MethodCall" flags="ng" index="2275Hy" />
      <concept id="4985363384999243769" name="DclareMPS.structure.AspectRuleSet" flags="ng" index="22cvTG">
        <property id="4378867844617511299" name="ruleSetName" index="202BMp" />
      </concept>
      <concept id="4985363385001746602" name="DclareMPS.structure.NodeContextType" flags="ng" index="22qN4Z">
        <reference id="4985363385001748246" name="concept" index="22qNq3" />
      </concept>
      <concept id="4157899317040512276" name="DclareMPS.structure.NativeFieldReference" flags="ng" index="5IyTM" />
      <concept id="4122011871452503133" name="DclareMPS.structure.Method" flags="ig" index="kUGYC">
        <property id="1356567042690438412" name="puplic" index="2BgUI5" />
        <property id="6993379498019360941" name="constant" index="2RZe$O" />
        <property id="6750683335363385218" name="native" index="1ePe$S" />
      </concept>
      <concept id="6637169638614587929" name="DclareMPS.structure.InnerExpression" flags="ng" index="2zIEM7" />
      <concept id="7503535305242222763" name="DclareMPS.structure.MethodCallOperation" flags="ng" index="2$Gk$L" />
      <concept id="2328169690264975584" name="DclareMPS.structure.CheckedDotExpressionWithElse" flags="ng" index="2_n6$v">
        <child id="2328169690265034470" name="else" index="2_mOWp" />
      </concept>
      <concept id="3943890974580131286" name="DclareMPS.structure.Equation" flags="ng" index="E34o$" />
      <concept id="5340879331378614396" name="DclareMPS.structure.NativeDclare" flags="ng" index="H4GO8" />
      <concept id="8102307003770101093" name="DclareMPS.structure.NativeRunner" flags="ng" index="2O$n0J" />
      <concept id="4893482730976715512" name="DclareMPS.structure.StructBuilderInitAttribute" flags="ng" index="2Pygp_">
        <reference id="4893482730976715517" name="attribute" index="2Pygpw" />
        <child id="4893482730976715515" name="initValue" index="2PygpA" />
      </concept>
      <concept id="5858913584106721930" name="DclareMPS.structure.AspectReference" flags="ng" index="2RaPxm">
        <reference id="5858913584106721931" name="aspect" index="2RaPxn" />
      </concept>
      <concept id="5858913584106642961" name="DclareMPS.structure.Aspect" flags="ng" index="2Rb1jd">
        <property id="6646394970002079166" name="allwaysOn" index="2bPw2W" />
        <property id="8690218989273699402" name="primitiveTypeDefaults" index="2WACxE" />
        <child id="5858913584106721980" name="dependencies" index="2RaPxw" />
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
      <concept id="5867814440126781489" name="DclareMPS.structure.Models" flags="ng" index="2YLb8l" />
      <concept id="7745179321613461204" name="DclareMPS.structure.NodeRuleSet" flags="ng" index="311c5q">
        <reference id="7745179321613461246" name="concept" index="311c5K" />
      </concept>
      <concept id="5274342987130696546" name="DclareMPS.structure.AttributeOperation" flags="ng" index="32jkxy" />
      <concept id="5274342987128242780" name="DclareMPS.structure.Attribute" flags="ng" index="32q3_s">
        <property id="5753592850735620892" name="defaultInitializer" index="2dyzOE" />
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
      <concept id="7588516345720320680" name="DclareMPS.structure.NativeRunnable" flags="ng" index="1fE671" />
      <concept id="3580017979174966332" name="DclareMPS.structure.ModuleOperation" flags="ng" index="1j$Ddu" />
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
      <concept id="7599581349099358534" name="DclareMPS.structure.RuleSetComment" flags="ng" index="1FHQIZ">
        <property id="7599581349099358541" name="text" index="1FHQIO" />
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
      <concept id="9055784064631785626" name="DclareMPS.structure.StructIsInstanceOfOperation" flags="ng" index="3MEtcU">
        <reference id="9055784064631823156" name="class" index="3MEk2k" />
      </concept>
      <concept id="9055784064631784161" name="DclareMPS.structure.StructTypeCastExpression" flags="ng" index="3MEt_1">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
        <reference id="9055784064631823158" name="class" index="3MEk2m" />
        <child id="9055784064631873602" name="leftExpression" index="3MEzJy" />
      </concept>
      <concept id="6584359627792080012" name="DclareMPS.structure.NativeDeclaration" flags="ng" index="1OA0iY">
        <reference id="5562880834217355092" name="group" index="1YqvnL" />
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
      <concept id="5704830781080583712" name="DclareMPS.structure.Feature" flags="ng" index="3XbxXY">
        <child id="4985363385001683626" name="contextType" index="22r3GZ" />
      </concept>
      <concept id="5562880834215759818" name="DclareMPS.structure.NativeGroup" flags="ng" index="1YshPJ">
        <child id="7588516345720305869" name="scheduler" index="1fEaI$" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
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
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
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
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
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
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <child id="6750920497477046361" name="conceptArgument" index="3MHsoP" />
      </concept>
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
      </concept>
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOM">
        <reference id="3562215692195600259" name="link" index="13MTZg" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFC" />
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
      <concept id="5779574625832259537" name="jetbrains.mps.lang.smodel.structure.EnumMember_PresentationOperation" flags="ng" index="1XCIdh" />
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
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
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
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
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="5232196642625574978" name="jetbrains.mps.baseLanguage.collections.structure.HeadListOperation" flags="nn" index="1eb2ty">
        <child id="5232196642625574980" name="upToIndex" index="1eb2t$" />
      </concept>
      <concept id="5232196642625575054" name="jetbrains.mps.baseLanguage.collections.structure.TailListOperation" flags="nn" index="1eb2uI">
        <child id="5232196642625575056" name="fromIndex" index="1eb2uK" />
      </concept>
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
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
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
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
    <property role="2bPw2W" value="true" />
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
      <ref role="1YqvnL" node="6_fOQ$Bh29y" resolve="GUI" />
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
    <node concept="32q3_s" id="12WXgwkVoAg" role="1FPzNG">
      <property role="TrG5h" value="min" />
      <node concept="3LmiP1" id="12WXgwkVoAh" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="32q3_s" id="3OZjsowsF15" role="1FPzNG">
      <property role="TrG5h" value="max" />
      <node concept="3LmiP1" id="3OZjsowsGgS" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
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
      <property role="TrG5h" value="hitLeft" />
      <node concept="10P_77" id="3nsHMGrYXa2" role="1tU5fm" />
    </node>
    <node concept="32q3_s" id="2cgTHFOzwuc" role="1FPzNG">
      <property role="TrG5h" value="hitRight" />
      <node concept="10P_77" id="2cgTHFOzx5D" role="1tU5fm" />
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
              <node concept="1Wc70l" id="17hC4n5Gxuo" role="3uHU7B">
                <node concept="3fqX7Q" id="17hC4n5GxUe" role="3uHU7B">
                  <node concept="2OqwBi" id="17hC4n5GxX8" role="3fr31v">
                    <node concept="2OqwBi" id="17hC4n5GxX9" role="2Oq$k0">
                      <node concept="37vLTw" id="17hC4n5GxXa" role="2Oq$k0">
                        <ref role="3cqZAo" node="2ihDbyJQ8e$" resolve="di" />
                      </node>
                      <node concept="32jkxy" id="17hC4n5GxXb" role="2OqNvi">
                        <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                      </node>
                    </node>
                    <node concept="3JPx81" id="17hC4n5GxXc" role="2OqNvi">
                      <node concept="10M0yZ" id="17hC4n5Gyni" role="25WWJ7">
                        <ref role="3cqZAo" to="hyam:~KeyEvent.VK_CONTROL" resolve="VK_CONTROL" />
                        <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2275Hy" id="2ihDbyJQ8eQ" role="3uHU7w">
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
            </node>
            <node concept="3clFbS" id="2ihDbyJQ8eZ" role="3clFbx">
              <node concept="3clFbJ" id="2cgTHFOzBBY" role="3cqZAp">
                <node concept="3clFbS" id="2cgTHFOzBC0" role="3clFbx">
                  <node concept="3clFbF" id="2ihDbyJQ8fa" role="3cqZAp">
                    <node concept="E34o$" id="2ihDbyJQ8fb" role="3clFbG">
                      <node concept="3clFbT" id="2ihDbyJQ8fc" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="1SfVH9" id="2ihDbyJQ8fd" role="37vLTJ">
                        <ref role="3cqZAo" node="3nsHMGrYX5W" resolve="hitLeft" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="2cgTHFOzCQs" role="3clFbw">
                  <node concept="2OqwBi" id="2ihDbyJQ8eN" role="3uHU7B">
                    <node concept="37vLTw" id="2ihDbyJQ8eO" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ihDbyJQ8e$" resolve="di" />
                    </node>
                    <node concept="32jkxy" id="2ihDbyJQ8eP" role="2OqNvi">
                      <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                    </node>
                  </node>
                  <node concept="3J2VuX" id="2cgTHFOzFy$" role="3uHU7w">
                    <node concept="3fqX7Q" id="2cgTHFOzFYT" role="3J2yhu">
                      <node concept="2OqwBi" id="2cgTHFOzFYV" role="3fr31v">
                        <node concept="37vLTw" id="2cgTHFOzFYW" role="2Oq$k0">
                          <ref role="3cqZAo" node="2ihDbyJQ8e$" resolve="di" />
                        </node>
                        <node concept="32jkxy" id="2cgTHFOzFYX" role="2OqNvi">
                          <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="2cgTHFOzGJt" role="3cqZAp">
                <node concept="3clFbS" id="2cgTHFOzGJu" role="3clFbx">
                  <node concept="3clFbF" id="2cgTHFOzGJv" role="3cqZAp">
                    <node concept="E34o$" id="2cgTHFOzGJw" role="3clFbG">
                      <node concept="3clFbT" id="2cgTHFOzGJx" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="1SfVH9" id="2cgTHFOzGJy" role="37vLTJ">
                        <ref role="3cqZAo" node="2cgTHFOzwuc" resolve="hitRight" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="2cgTHFOzGJz" role="3clFbw">
                  <node concept="2OqwBi" id="2cgTHFOzGJ$" role="3uHU7B">
                    <node concept="37vLTw" id="2cgTHFOzGJ_" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ihDbyJQ8e$" resolve="di" />
                    </node>
                    <node concept="32jkxy" id="2cgTHFOzGJA" role="2OqNvi">
                      <ref role="3cqZAo" node="5uiQOXmb7jt" resolve="isRightMouseDown" />
                    </node>
                  </node>
                  <node concept="3J2VuX" id="2cgTHFOzGJB" role="3uHU7w">
                    <node concept="3fqX7Q" id="2cgTHFOzGJC" role="3J2yhu">
                      <node concept="2OqwBi" id="2cgTHFOzGJD" role="3fr31v">
                        <node concept="37vLTw" id="2cgTHFOzGJE" role="2Oq$k0">
                          <ref role="3cqZAo" node="2ihDbyJQ8e$" resolve="di" />
                        </node>
                        <node concept="32jkxy" id="2cgTHFOzGJF" role="2OqNvi">
                          <ref role="3cqZAo" node="5uiQOXmb7jt" resolve="isRightMouseDown" />
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
    <node concept="3tBE6w" id="2cgTHFOzNds" role="1FPzNG">
      <node concept="9aQIb" id="2cgTHFOzNQU" role="30jUnX">
        <node concept="3clFbS" id="2cgTHFOzNQV" role="9aQI4">
          <node concept="3cpWs8" id="2cgTHFOzPXu" role="3cqZAp">
            <node concept="3cpWsn" id="2cgTHFOzPXv" role="3cpWs9">
              <property role="TrG5h" value="di" />
              <node concept="3LmiP1" id="2cgTHFOzPXw" role="1tU5fm">
                <ref role="2XDbjv" node="2gyk5S1Dvn0" resolve="DDeviceInput" />
              </node>
              <node concept="2OqwBi" id="2cgTHFOzPXx" role="33vP2m">
                <node concept="1SfVH9" id="2cgTHFOzPXy" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                </node>
                <node concept="32jkxy" id="2cgTHFOzPXz" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2cgTHFOzJwl" role="3cqZAp">
            <node concept="3clFbS" id="2cgTHFOzJwn" role="3clFbx">
              <node concept="3clFbF" id="2cgTHFOzLoz" role="3cqZAp">
                <node concept="E34o$" id="2cgTHFOzLo$" role="3clFbG">
                  <node concept="3clFbT" id="2cgTHFOzLo_" role="37vLTx" />
                  <node concept="1SfVH9" id="2cgTHFOzLoA" role="37vLTJ">
                    <ref role="3cqZAo" node="3nsHMGrYX5W" resolve="hitLeft" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="2ihDbyJQ8ff" role="3clFbw">
              <node concept="1SfVH9" id="2ihDbyJQ8fs" role="3uHU7B">
                <ref role="3cqZAo" node="3nsHMGrYX5W" resolve="hitLeft" />
              </node>
              <node concept="3fqX7Q" id="2ihDbyJQ8fi" role="3uHU7w">
                <node concept="2OqwBi" id="2ihDbyJQ8fj" role="3fr31v">
                  <node concept="37vLTw" id="2ihDbyJQ8fk" role="2Oq$k0">
                    <ref role="3cqZAo" node="2cgTHFOzPXv" resolve="di" />
                  </node>
                  <node concept="32jkxy" id="2ihDbyJQ8fl" role="2OqNvi">
                    <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2cgTHFOzJ_J" role="3cqZAp">
            <node concept="3clFbS" id="2cgTHFOzJ_L" role="3clFbx">
              <node concept="3clFbF" id="2cgTHFOzLHJ" role="3cqZAp">
                <node concept="E34o$" id="2cgTHFOzLHK" role="3clFbG">
                  <node concept="3clFbT" id="2cgTHFOzLHL" role="37vLTx" />
                  <node concept="1SfVH9" id="2cgTHFOzLHM" role="37vLTJ">
                    <ref role="3cqZAo" node="2cgTHFOzwuc" resolve="hitRight" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="2cgTHFOzKhu" role="3clFbw">
              <node concept="1SfVH9" id="2cgTHFOzKhv" role="3uHU7B">
                <ref role="3cqZAo" node="2cgTHFOzwuc" resolve="hitRight" />
              </node>
              <node concept="3fqX7Q" id="2cgTHFOzKhw" role="3uHU7w">
                <node concept="2OqwBi" id="2cgTHFOzKhx" role="3fr31v">
                  <node concept="37vLTw" id="2cgTHFOzKhy" role="2Oq$k0">
                    <ref role="3cqZAo" node="2cgTHFOzPXv" resolve="di" />
                  </node>
                  <node concept="32jkxy" id="2cgTHFOzKhz" role="2OqNvi">
                    <ref role="3cqZAo" node="5uiQOXmb7jt" resolve="isRightMouseDown" />
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
      <node concept="17R0WA" id="2$ONhhSAog" role="33vP2m">
        <node concept="2Wb9Zs" id="2$ONhhSALS" role="3uHU7w" />
        <node concept="2OqwBi" id="2$ONhhS$Oe" role="3uHU7B">
          <node concept="1SfVH9" id="2$ONhhS$px" role="2Oq$k0">
            <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
          </node>
          <node concept="32jkxy" id="2$ONhhS_y$" role="2OqNvi">
            <ref role="3cqZAo" node="7ypR234gWrk" resolve="dragged" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1FPxxo" id="2xAA8jfBD2R" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3vn" role="1FPzNG">
      <ref role="1YqvnL" node="6_fOQ$Bh29y" resolve="GUI" />
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
    <node concept="32q3_s" id="3HJBHAQJ0r1" role="1FPzNG">
      <property role="TrG5h" value="size" />
      <node concept="3LmiP1" id="3HJBHAQJ0Z0" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGXY5" resolve="DDimension" />
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
    <node concept="3tBE6w" id="3OZjsowsKi7" role="1FPzNG">
      <node concept="3clFbF" id="3OZjsowsLl5" role="30jUnX">
        <node concept="E34o$" id="3OZjsowsLPU" role="3clFbG">
          <node concept="2OqwBi" id="3OZjsowsMDH" role="37vLTx">
            <node concept="1SfVH9" id="3OZjsowsMak" role="2Oq$k0">
              <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
            </node>
            <node concept="2$Gk$L" id="3OZjsowsNhx" role="2OqNvi">
              <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
              <node concept="1SfVH9" id="3OZjsowsNJI" role="37wK5m">
                <ref role="3cqZAo" node="10mRasGrb1A" resolve="half" />
              </node>
            </node>
          </node>
          <node concept="1SfVH9" id="3OZjsowsLl4" role="37vLTJ">
            <ref role="3cqZAo" node="3OZjsowsF15" resolve="max" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="12WXgwkVwut" role="1FPzNG">
      <node concept="3clFbF" id="12WXgwkVwuu" role="30jUnX">
        <node concept="E34o$" id="12WXgwkVwuv" role="3clFbG">
          <node concept="2OqwBi" id="12WXgwkVwuw" role="37vLTx">
            <node concept="1SfVH9" id="12WXgwkVwux" role="2Oq$k0">
              <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
            </node>
            <node concept="2$Gk$L" id="12WXgwkVwuy" role="2OqNvi">
              <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
              <node concept="1SfVH9" id="12WXgwkVwuz" role="37wK5m">
                <ref role="3cqZAo" node="10mRasGrb1A" resolve="half" />
              </node>
            </node>
          </node>
          <node concept="1SfVH9" id="12WXgwkVwu$" role="37vLTJ">
            <ref role="3cqZAo" node="12WXgwkVoAg" resolve="min" />
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
      <ref role="1YqvnL" node="6_fOQ$Bh29y" resolve="GUI" />
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
            <node concept="2OqwBi" id="1bDgvLYjmJP" role="37wK5m">
              <node concept="37vLTw" id="1bDgvLYjmJQ" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJBHAQJw40" resolve="s" />
              </node>
              <node concept="2$Gk$L" id="1bDgvLYjmJR" role="2OqNvi">
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
        <node concept="3clFbF" id="AtimHgB8Nt" role="3cqZAp">
          <node concept="2275Hy" id="AtimHgB8Nr" role="3clFbG">
            <ref role="37wK5l" node="AtimHgAZXP" resolve="paintFilling" />
            <node concept="37vLTw" id="AtimHgB9u4" role="37wK5m">
              <ref role="3cqZAo" node="3HJBHAQJ9kX" resolve="g" />
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
      <property role="2dyzOE" value="true" />
      <node concept="3rvAFt" id="3XDIiT4chz2" role="1tU5fm">
        <node concept="3LmiP1" id="3XDIiT4cj9r" role="3rvQeY">
          <ref role="2XDbjv" node="skgx$J4Z2F" resolve="DComponent" />
        </node>
        <node concept="3uibUv" id="3XDIiT4cjao" role="3rvSg0">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="3XDIiT4cmHg" role="33vP2m">
        <node concept="3rGOSV" id="3XDIiT4cusv" role="2ShVmc">
          <node concept="3LmiP1" id="3XDIiT4cvx3" role="3rHrn6">
            <ref role="2XDbjv" node="skgx$J4Z2F" resolve="DComponent" />
          </node>
          <node concept="3uibUv" id="3XDIiT4cwdd" role="3rHtpV">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
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
      <ref role="1YqvnL" node="6_fOQ$Bh29y" resolve="GUI" />
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
    <node concept="32q3_s" id="5xYqfN6zq4c" role="1FPzNG">
      <property role="TrG5h" value="allPoints" />
      <node concept="_YKpA" id="5xYqfN6zrMK" role="1tU5fm">
        <node concept="3LmiP1" id="5xYqfN6zst4" role="_ZDj9">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="36be1Y" id="5xYqfN6zzFE" role="33vP2m">
        <node concept="1SfVH9" id="5xYqfN6z$hJ" role="2Gi6C2">
          <ref role="3cqZAo" node="2ihDbyJMAjR" resolve="points" />
        </node>
        <node concept="2EnYce" id="5xYqfN6zCfS" role="2Gi6C2">
          <node concept="1SfVH9" id="5xYqfN6z_dN" role="2Oq$k0">
            <ref role="3cqZAo" node="Vg5Fsxma4s" resolve="component" />
          </node>
          <node concept="32jkxy" id="5xYqfN6zAUb" role="2OqNvi">
            <ref role="3cqZAo" node="4NMtPTvGUBA" resolve="location" />
          </node>
        </node>
        <node concept="2EnYce" id="5xYqfN6zMmQ" role="2Gi6C2">
          <node concept="2EnYce" id="5xYqfN6zNym" role="2Oq$k0">
            <node concept="1SfVH9" id="5xYqfN6zDfw" role="2Oq$k0">
              <ref role="3cqZAo" node="Vg5Fsxma4s" resolve="component" />
            </node>
            <node concept="32jkxy" id="5xYqfN6zEFc" role="2OqNvi">
              <ref role="3cqZAo" node="4NMtPTvGUBA" resolve="location" />
            </node>
          </node>
          <node concept="2$Gk$L" id="5xYqfN6zGsK" role="2OqNvi">
            <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
            <node concept="2EnYce" id="5xYqfN6zPD2" role="37wK5m">
              <node concept="2EnYce" id="5xYqfN6zOQN" role="2Oq$k0">
                <node concept="1SfVH9" id="5xYqfN6zHa8" role="2Oq$k0">
                  <ref role="3cqZAo" node="Vg5Fsxma4s" resolve="component" />
                </node>
                <node concept="32jkxy" id="5xYqfN6zIQ0" role="2OqNvi">
                  <ref role="3cqZAo" node="46vl3mDwqLd" resolve="size" />
                </node>
              </node>
              <node concept="2$Gk$L" id="5xYqfN6zLIv" role="2OqNvi">
                <ref role="37wK5l" node="46vl3mDwqPk" resolve="toPoint" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="5xYqfN6wWZS" role="1FPzNG">
      <node concept="3clFbF" id="5xYqfN6xcv1" role="30jUnX">
        <node concept="E34o$" id="5xYqfN6xcTQ" role="3clFbG">
          <node concept="1SfVH9" id="5xYqfN6xcv0" role="37vLTJ">
            <ref role="3cqZAo" node="3OZjsowsF15" resolve="max" />
          </node>
          <node concept="3KEV6E" id="5xYqfN6xnLX" role="37vLTx">
            <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
            <node concept="2Pygp_" id="5xYqfN6xnLY" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
              <node concept="2OqwBi" id="5xYqfN6xdRI" role="2PygpA">
                <node concept="2OqwBi" id="5xYqfN6xjJz" role="2Oq$k0">
                  <node concept="1SfVH9" id="5xYqfN6xdRJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5xYqfN6zq4c" resolve="allPoints" />
                  </node>
                  <node concept="13MTOL" id="5xYqfN6xq1o" role="2OqNvi">
                    <ref role="13MTZf" node="4NMtPTvGW7s" resolve="x" />
                  </node>
                </node>
                <node concept="1MD8d$" id="5xYqfN6xdRK" role="2OqNvi">
                  <node concept="1bVj0M" id="5xYqfN6xdRL" role="23t8la">
                    <node concept="3clFbS" id="5xYqfN6xdRM" role="1bW5cS">
                      <node concept="3clFbF" id="5xYqfN6xdRN" role="3cqZAp">
                        <node concept="2YIFZM" id="5xYqfN6xdRO" role="3clFbG">
                          <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                          <ref role="37wK5l" to="wyt6:~Math.max(double,double)" resolve="max" />
                          <node concept="37vLTw" id="5xYqfN6xdRP" role="37wK5m">
                            <ref role="3cqZAo" node="5xYqfN6xdRR" resolve="s" />
                          </node>
                          <node concept="37vLTw" id="5xYqfN6xdRQ" role="37wK5m">
                            <ref role="3cqZAo" node="5xYqfN6xdRT" resolve="x" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="5xYqfN6xdRR" role="1bW2Oz">
                      <property role="TrG5h" value="s" />
                      <node concept="10P55v" id="5xYqfN6xdRS" role="1tU5fm" />
                    </node>
                    <node concept="Rh6nW" id="5xYqfN6xdRT" role="1bW2Oz">
                      <property role="TrG5h" value="x" />
                      <node concept="2jxLKc" id="5xYqfN6xdRU" role="1tU5fm" />
                    </node>
                  </node>
                  <node concept="3b6qkQ" id="5xYqfN6xdRV" role="1MDeny">
                    <property role="$nhwW" value="0.0d" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Pygp_" id="5xYqfN6xnLZ" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
              <node concept="2OqwBi" id="5xYqfN6xqpV" role="2PygpA">
                <node concept="2OqwBi" id="5xYqfN6xqpW" role="2Oq$k0">
                  <node concept="1SfVH9" id="5xYqfN6xqpX" role="2Oq$k0">
                    <ref role="3cqZAo" node="5xYqfN6zq4c" resolve="allPoints" />
                  </node>
                  <node concept="13MTOL" id="5xYqfN6xqpY" role="2OqNvi">
                    <ref role="13MTZf" node="4NMtPTvGXWc" resolve="y" />
                  </node>
                </node>
                <node concept="1MD8d$" id="5xYqfN6xqpZ" role="2OqNvi">
                  <node concept="1bVj0M" id="5xYqfN6xqq0" role="23t8la">
                    <node concept="3clFbS" id="5xYqfN6xqq1" role="1bW5cS">
                      <node concept="3clFbF" id="5xYqfN6xqq2" role="3cqZAp">
                        <node concept="2YIFZM" id="5xYqfN6xqq3" role="3clFbG">
                          <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                          <ref role="37wK5l" to="wyt6:~Math.max(double,double)" resolve="max" />
                          <node concept="37vLTw" id="5xYqfN6xqq4" role="37wK5m">
                            <ref role="3cqZAo" node="5xYqfN6xqq6" resolve="s" />
                          </node>
                          <node concept="37vLTw" id="5xYqfN6xqq5" role="37wK5m">
                            <ref role="3cqZAo" node="5xYqfN6xqq8" resolve="x" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="5xYqfN6xqq6" role="1bW2Oz">
                      <property role="TrG5h" value="s" />
                      <node concept="10P55v" id="5xYqfN6xqq7" role="1tU5fm" />
                    </node>
                    <node concept="Rh6nW" id="5xYqfN6xqq8" role="1bW2Oz">
                      <property role="TrG5h" value="x" />
                      <node concept="2jxLKc" id="5xYqfN6xqq9" role="1tU5fm" />
                    </node>
                  </node>
                  <node concept="3b6qkQ" id="5xYqfN6xqqa" role="1MDeny">
                    <property role="$nhwW" value="0.0d" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="5xYqfN6xsz$" role="1FPzNG">
      <node concept="3clFbF" id="5xYqfN6xsz_" role="30jUnX">
        <node concept="E34o$" id="5xYqfN6xszA" role="3clFbG">
          <node concept="1SfVH9" id="5xYqfN6xszB" role="37vLTJ">
            <ref role="3cqZAo" node="12WXgwkVoAg" resolve="min" />
          </node>
          <node concept="3KEV6E" id="5xYqfN6xszC" role="37vLTx">
            <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
            <node concept="2Pygp_" id="5xYqfN6xszD" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
              <node concept="2OqwBi" id="5xYqfN6xszE" role="2PygpA">
                <node concept="2OqwBi" id="5xYqfN6xszF" role="2Oq$k0">
                  <node concept="1SfVH9" id="5xYqfN6xszG" role="2Oq$k0">
                    <ref role="3cqZAo" node="5xYqfN6zq4c" resolve="allPoints" />
                  </node>
                  <node concept="13MTOL" id="5xYqfN6xszH" role="2OqNvi">
                    <ref role="13MTZf" node="4NMtPTvGW7s" resolve="x" />
                  </node>
                </node>
                <node concept="1MD8d$" id="5xYqfN6xszI" role="2OqNvi">
                  <node concept="1bVj0M" id="5xYqfN6xszJ" role="23t8la">
                    <node concept="3clFbS" id="5xYqfN6xszK" role="1bW5cS">
                      <node concept="3clFbF" id="5xYqfN6xszL" role="3cqZAp">
                        <node concept="2YIFZM" id="5xYqfN6xwIU" role="3clFbG">
                          <ref role="37wK5l" to="wyt6:~Math.min(double,double)" resolve="min" />
                          <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                          <node concept="37vLTw" id="5xYqfN6xwIV" role="37wK5m">
                            <ref role="3cqZAo" node="5xYqfN6xszP" resolve="s" />
                          </node>
                          <node concept="37vLTw" id="5xYqfN6xwIW" role="37wK5m">
                            <ref role="3cqZAo" node="5xYqfN6xszR" resolve="x" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="5xYqfN6xszP" role="1bW2Oz">
                      <property role="TrG5h" value="s" />
                      <node concept="10P55v" id="5xYqfN6xszQ" role="1tU5fm" />
                    </node>
                    <node concept="Rh6nW" id="5xYqfN6xszR" role="1bW2Oz">
                      <property role="TrG5h" value="x" />
                      <node concept="2jxLKc" id="5xYqfN6xszS" role="1tU5fm" />
                    </node>
                  </node>
                  <node concept="10M0yZ" id="5xYqfN6xvN8" role="1MDeny">
                    <ref role="3cqZAo" to="wyt6:~Double.MAX_VALUE" resolve="MAX_VALUE" />
                    <ref role="1PxDUh" to="wyt6:~Double" resolve="Double" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Pygp_" id="5xYqfN6xszU" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
              <node concept="2OqwBi" id="5xYqfN6xszV" role="2PygpA">
                <node concept="2OqwBi" id="5xYqfN6xszW" role="2Oq$k0">
                  <node concept="1SfVH9" id="5xYqfN6xszX" role="2Oq$k0">
                    <ref role="3cqZAo" node="5xYqfN6zq4c" resolve="allPoints" />
                  </node>
                  <node concept="13MTOL" id="5xYqfN6xszY" role="2OqNvi">
                    <ref role="13MTZf" node="4NMtPTvGXWc" resolve="y" />
                  </node>
                </node>
                <node concept="1MD8d$" id="5xYqfN6xszZ" role="2OqNvi">
                  <node concept="1bVj0M" id="5xYqfN6xs$0" role="23t8la">
                    <node concept="3clFbS" id="5xYqfN6xs$1" role="1bW5cS">
                      <node concept="3clFbF" id="5xYqfN6xs$2" role="3cqZAp">
                        <node concept="2YIFZM" id="5xYqfN6xwq3" role="3clFbG">
                          <ref role="37wK5l" to="wyt6:~Math.min(double,double)" resolve="min" />
                          <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                          <node concept="37vLTw" id="5xYqfN6xwq4" role="37wK5m">
                            <ref role="3cqZAo" node="5xYqfN6xs$6" resolve="s" />
                          </node>
                          <node concept="37vLTw" id="5xYqfN6xwq5" role="37wK5m">
                            <ref role="3cqZAo" node="5xYqfN6xs$8" resolve="x" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="5xYqfN6xs$6" role="1bW2Oz">
                      <property role="TrG5h" value="s" />
                      <node concept="10P55v" id="5xYqfN6xs$7" role="1tU5fm" />
                    </node>
                    <node concept="Rh6nW" id="5xYqfN6xs$8" role="1bW2Oz">
                      <property role="TrG5h" value="x" />
                      <node concept="2jxLKc" id="5xYqfN6xs$9" role="1tU5fm" />
                    </node>
                  </node>
                  <node concept="10M0yZ" id="5xYqfN6xw6A" role="1MDeny">
                    <ref role="3cqZAo" to="wyt6:~Double.MAX_VALUE" resolve="MAX_VALUE" />
                    <ref role="1PxDUh" to="wyt6:~Double" resolve="Double" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
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
    <node concept="32q3_s" id="2ihDbyJURQi" role="1FPzNG">
      <property role="TrG5h" value="draggedJointIndex" />
      <property role="KodbT" value="true" />
      <node concept="3uibUv" id="2ihDbyJUSJN" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
      </node>
    </node>
    <node concept="3tBE6w" id="2ihDbyJVszZ" role="1FPzNG">
      <node concept="3clFbJ" id="2ihDbyJVtwY" role="30jUnX">
        <node concept="1Wc70l" id="6QF1CPN$2fs" role="3clFbw">
          <node concept="3y3z36" id="6QF1CPN$43K" role="3uHU7w">
            <node concept="10Nm6u" id="6QF1CPN$4Q4" role="3uHU7w" />
            <node concept="1SfVH9" id="6QF1CPN$2GL" role="3uHU7B">
              <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
            </node>
          </node>
          <node concept="1SfVH9" id="2ihDbyJVtFC" role="3uHU7B">
            <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
          </node>
        </node>
        <node concept="3clFbS" id="2ihDbyJVtx0" role="3clFbx">
          <node concept="3cpWs8" id="5BQzS3JeMVE" role="3cqZAp">
            <node concept="3cpWsn" id="5BQzS3JeMVF" role="3cpWs9">
              <property role="TrG5h" value="mp" />
              <node concept="3LmiP1" id="5BQzS3JeLXz" role="1tU5fm">
                <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
              </node>
              <node concept="2OqwBi" id="5BQzS3JeMVG" role="33vP2m">
                <node concept="2OqwBi" id="5BQzS3JeMVH" role="2Oq$k0">
                  <node concept="1SfVH9" id="5BQzS3JeMVI" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                  </node>
                  <node concept="32jkxy" id="5BQzS3JeMVJ" role="2OqNvi">
                    <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                  </node>
                </node>
                <node concept="32jkxy" id="5BQzS3JeMVK" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5BQzS3Jf6U4" role="3cqZAp">
            <node concept="37vLTI" id="5BQzS3Jf71k" role="3clFbG">
              <node concept="3KEV6E" id="5BQzS3Jf73N" role="37vLTx">
                <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                <node concept="2Pygp_" id="5BQzS3Jf73O" role="2Pygpa">
                  <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                  <node concept="3K4zz7" id="5BQzS3Jfayw" role="2PygpA">
                    <node concept="3b6qkQ" id="5BQzS3JfaQT" role="3K4E3e">
                      <property role="$nhwW" value="1.0" />
                    </node>
                    <node concept="2OqwBi" id="5BQzS3JfbvW" role="3K4GZi">
                      <node concept="37vLTw" id="5BQzS3Jfb18" role="2Oq$k0">
                        <ref role="3cqZAo" node="5BQzS3JeMVF" resolve="mp" />
                      </node>
                      <node concept="32jkxy" id="5BQzS3Jfc2j" role="2OqNvi">
                        <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                      </node>
                    </node>
                    <node concept="3eOVzh" id="5BQzS3Jf9GQ" role="3K4Cdx">
                      <node concept="3b6qkQ" id="5BQzS3Jfap$" role="3uHU7w">
                        <property role="$nhwW" value="1.0" />
                      </node>
                      <node concept="2OqwBi" id="5BQzS3Jf8fp" role="3uHU7B">
                        <node concept="37vLTw" id="5BQzS3Jf880" role="2Oq$k0">
                          <ref role="3cqZAo" node="5BQzS3JeMVF" resolve="mp" />
                        </node>
                        <node concept="32jkxy" id="5BQzS3Jf8AE" role="2OqNvi">
                          <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Pygp_" id="5BQzS3Jf73P" role="2Pygpa">
                  <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                  <node concept="3K4zz7" id="5BQzS3JfdHv" role="2PygpA">
                    <node concept="3b6qkQ" id="5BQzS3Jfe1V" role="3K4E3e">
                      <property role="$nhwW" value="1.0" />
                    </node>
                    <node concept="2OqwBi" id="5BQzS3Jfend" role="3K4GZi">
                      <node concept="37vLTw" id="5BQzS3Jfeej" role="2Oq$k0">
                        <ref role="3cqZAo" node="5BQzS3JeMVF" resolve="mp" />
                      </node>
                      <node concept="32jkxy" id="5BQzS3Jfezr" role="2OqNvi">
                        <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                      </node>
                    </node>
                    <node concept="3eOVzh" id="5BQzS3JfcVh" role="3K4Cdx">
                      <node concept="3b6qkQ" id="5BQzS3JfdBy" role="3uHU7w">
                        <property role="$nhwW" value="1.0" />
                      </node>
                      <node concept="2OqwBi" id="5BQzS3Jfcoj" role="3uHU7B">
                        <node concept="37vLTw" id="5BQzS3JfclN" role="2Oq$k0">
                          <ref role="3cqZAo" node="5BQzS3JeMVF" resolve="mp" />
                        </node>
                        <node concept="32jkxy" id="5BQzS3Jfcyz" role="2OqNvi">
                          <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="5BQzS3Jf6U2" role="37vLTJ">
                <ref role="3cqZAo" node="5BQzS3JeMVF" resolve="mousePosition" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2ihDbyJVtQG" role="3cqZAp">
            <node concept="E34o$" id="2ihDbyJVuHd" role="3clFbG">
              <node concept="1SfVH9" id="2ihDbyJVuIW" role="37vLTJ">
                <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
              </node>
              <node concept="36be1Y" id="1XnM_rg2HTU" role="37vLTx">
                <node concept="2OqwBi" id="1XnM_rg2HTV" role="2Gi6C2">
                  <node concept="1SfVH9" id="1XnM_rg2HTW" role="2Oq$k0">
                    <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                  </node>
                  <node concept="1eb2ty" id="1XnM_rg2HTX" role="2OqNvi">
                    <node concept="1SfVH9" id="1XnM_rg2HTY" role="1eb2t$">
                      <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5BQzS3JeMVL" role="2Gi6C2">
                  <ref role="3cqZAo" node="5BQzS3JeMVF" resolve="mousePosition" />
                </node>
                <node concept="2OqwBi" id="1XnM_rg2HU4" role="2Gi6C2">
                  <node concept="1SfVH9" id="1XnM_rg2HU5" role="2Oq$k0">
                    <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                  </node>
                  <node concept="1eb2uI" id="1XnM_rg2HU6" role="2OqNvi">
                    <node concept="3cpWs3" id="1XnM_rg2HU7" role="1eb2uK">
                      <node concept="3cmrfG" id="1XnM_rg2HU8" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="1SfVH9" id="1XnM_rg2HU9" role="3uHU7B">
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
          <node concept="3cpWs8" id="2ihDbyJUAKo" role="3cqZAp">
            <node concept="3cpWsn" id="2ihDbyJUAKr" role="3cpWs9">
              <property role="TrG5h" value="mp" />
              <node concept="3LmiP1" id="2ihDbyJUAKm" role="1tU5fm">
                <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
              </node>
              <node concept="2OqwBi" id="2ihDbyJU$LP" role="33vP2m">
                <node concept="32jkxy" id="2ihDbyJU$LR" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                </node>
                <node concept="2OqwBi" id="2JMLIMxUMXx" role="2Oq$k0">
                  <node concept="1SfVH9" id="2JMLIMxUMXy" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                  </node>
                  <node concept="32jkxy" id="2JMLIMxUMXz" role="2OqNvi">
                    <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                  </node>
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
              </node>
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="1J7fUUywYjL" role="3clFbw">
          <node concept="3clFbC" id="1J7fUUywZ8A" role="3uHU7w">
            <node concept="10Nm6u" id="1J7fUUywZCx" role="3uHU7w" />
            <node concept="1SfVH9" id="1J7fUUywYMD" role="3uHU7B">
              <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
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
          <node concept="3cpWs8" id="2JMLIMxUODK" role="3cqZAp">
            <node concept="3cpWsn" id="2JMLIMxUODL" role="3cpWs9">
              <property role="TrG5h" value="mp" />
              <node concept="3LmiP1" id="2JMLIMxUODM" role="1tU5fm">
                <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
              </node>
              <node concept="2OqwBi" id="2JMLIMxUODN" role="33vP2m">
                <node concept="32jkxy" id="2JMLIMxUODO" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                </node>
                <node concept="2OqwBi" id="2JMLIMxUODP" role="2Oq$k0">
                  <node concept="1SfVH9" id="2JMLIMxUODQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                  </node>
                  <node concept="32jkxy" id="2JMLIMxUODR" role="2OqNvi">
                    <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2ihDbyJUG$K" role="3cqZAp">
            <node concept="3clFbS" id="2ihDbyJUG$L" role="3clFbx">
              <node concept="3clFbF" id="17hC4n5Zhx3" role="3cqZAp">
                <node concept="E34o$" id="17hC4n5Zhx4" role="3clFbG">
                  <node concept="1SfVH9" id="17hC4n5Zhx5" role="37vLTJ">
                    <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                  </node>
                  <node concept="36be1Y" id="17hC4n5Zhx6" role="37vLTx">
                    <node concept="2OqwBi" id="17hC4n5Zhx7" role="2Gi6C2">
                      <node concept="1SfVH9" id="17hC4n5Zhx8" role="2Oq$k0">
                        <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                      </node>
                      <node concept="1eb2ty" id="17hC4n5Zhx9" role="2OqNvi">
                        <node concept="1SfVH9" id="17hC4n5Zhxa" role="1eb2t$">
                          <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="17hC4n5Zhxb" role="2Gi6C2">
                      <node concept="1SfVH9" id="17hC4n5Zhxc" role="2Oq$k0">
                        <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                      </node>
                      <node concept="1eb2uI" id="17hC4n5Zhxd" role="2OqNvi">
                        <node concept="3cpWs3" id="17hC4n5Zhxe" role="1eb2uK">
                          <node concept="3cmrfG" id="17hC4n5Zhxf" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="1SfVH9" id="17hC4n5Zhxg" role="3uHU7B">
                            <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                          </node>
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
                      <node concept="2OqwBi" id="2JMLIMxUJwa" role="2Gi6C2">
                        <node concept="1y4W85" id="10mRasGAn$z" role="2Oq$k0">
                          <node concept="1SfVH9" id="10mRasGAomk" role="1y58nS">
                            <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                          </node>
                          <node concept="1SfVH9" id="10mRasGAlOM" role="1y566C">
                            <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                          </node>
                        </node>
                        <node concept="2$Gk$L" id="2JMLIMxUKq4" role="2OqNvi">
                          <ref role="37wK5l" node="10mRasGA8ci" resolve="snap" />
                          <node concept="3cmrfG" id="2JMLIMxUKSV" role="37wK5m">
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
            <node concept="3eOVzh" id="17hC4n5ZfFp" role="3clFbw">
              <node concept="3b6qkQ" id="17hC4n5ZfFq" role="3uHU7w">
                <property role="$nhwW" value="10.0d" />
              </node>
              <node concept="2OqwBi" id="17hC4n5ZfFr" role="3uHU7B">
                <node concept="2$Gk$L" id="17hC4n5ZfFs" role="2OqNvi">
                  <ref role="37wK5l" node="5rHgiqQGuMd" resolve="distance" />
                  <node concept="37vLTw" id="17hC4n5ZfFv" role="37wK5m">
                    <ref role="3cqZAo" node="2JMLIMxUODL" resolve="mp" />
                  </node>
                </node>
                <node concept="3KEV6E" id="17hC4n5ZfFw" role="2Oq$k0">
                  <ref role="2UJ2yc" node="6YJvVULTHtj" resolve="DLineSegment" />
                  <node concept="2Pygp_" id="17hC4n5ZfFx" role="2Pygpa">
                    <ref role="2Pygpw" node="6YJvVULTHtD" resolve="a" />
                    <node concept="1y4W85" id="17hC4n5ZfFy" role="2PygpA">
                      <node concept="1SfVH9" id="17hC4n5ZfFz" role="1y58nS">
                        <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                      </node>
                      <node concept="1SfVH9" id="17hC4n5ZfF$" role="1y566C">
                        <ref role="3cqZAo" node="2ihDbyJMAjR" resolve="points" />
                      </node>
                    </node>
                  </node>
                  <node concept="2Pygp_" id="17hC4n5ZfF_" role="2Pygpa">
                    <ref role="2Pygpw" node="6YJvVULTIso" resolve="b" />
                    <node concept="1y4W85" id="17hC4n5ZfFA" role="2PygpA">
                      <node concept="3cpWs3" id="17hC4n5ZfFB" role="1y58nS">
                        <node concept="1SfVH9" id="17hC4n5ZfFC" role="3uHU7B">
                          <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
                        </node>
                        <node concept="3cmrfG" id="17hC4n5ZfFD" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                      </node>
                      <node concept="1SfVH9" id="17hC4n5ZfFE" role="1y566C">
                        <ref role="3cqZAo" node="2ihDbyJMAjR" resolve="points" />
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
        </node>
        <node concept="1Wc70l" id="1J7fUUywUM1" role="3clFbw">
          <node concept="3y3z36" id="1J7fUUywWWz" role="3uHU7w">
            <node concept="10Nm6u" id="1J7fUUywXRE" role="3uHU7w" />
            <node concept="1SfVH9" id="1J7fUUywVoa" role="3uHU7B">
              <ref role="3cqZAo" node="2ihDbyJURQi" resolve="draggedJointIndex" />
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
      <ref role="1YqvnL" node="6_fOQ$Bh29y" resolve="GUI" />
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
      <ref role="1YqvnL" node="6_fOQ$Bh29y" resolve="GUI" />
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
          <ref role="3uigEE" to="hyam:~ComponentAdapter" resolve="ComponentAdapter" />
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
                  <ref role="1Y3XeK" to="hyam:~ComponentAdapter" resolve="ComponentAdapter" />
                  <ref role="37wK5l" to="hyam:~ComponentAdapter.&lt;init&gt;()" resolve="ComponentAdapter" />
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
    <node concept="32q3_s" id="1bDgvLYqnyq" role="1FPzNG">
      <property role="TrG5h" value="textWith" />
      <node concept="10Oyi0" id="1bDgvLYqnyi" role="1tU5fm" />
      <node concept="3K4zz7" id="1bDgvLYvMDO" role="33vP2m">
        <node concept="3cmrfG" id="1bDgvLYvNCC" role="3K4E3e">
          <property role="3cmrfH" value="10" />
        </node>
        <node concept="3clFbC" id="1bDgvLYvKLN" role="3K4Cdx">
          <node concept="1SfVH9" id="1bDgvLYvKdU" role="3uHU7B">
            <ref role="3cqZAo" node="3nsHMGrYS6G" resolve="text" />
          </node>
          <node concept="10Nm6u" id="1bDgvLYvOCY" role="3uHU7w" />
        </node>
        <node concept="2_n6$v" id="1bDgvLYqnyj" role="3K4GZi">
          <node concept="3cmrfG" id="1bDgvLYqnyk" role="2_mOWp">
            <property role="3cmrfH" value="10" />
          </node>
          <node concept="2OqwBi" id="1bDgvLYqnyl" role="2Oq$k0">
            <node concept="1SfVH9" id="1bDgvLYqnym" role="2Oq$k0">
              <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
            </node>
            <node concept="32jkxy" id="1bDgvLYqnyn" role="2OqNvi">
              <ref role="3cqZAo" node="1bDgvLYgfGm" resolve="fontMetrics" />
            </node>
          </node>
          <node concept="liA8E" id="1bDgvLYqnyo" role="2OqNvi">
            <ref role="37wK5l" to="z60i:~FontMetrics.stringWidth(java.lang.String)" resolve="stringWidth" />
            <node concept="1SfVH9" id="1bDgvLYqnyp" role="37wK5m">
              <ref role="3cqZAo" node="3nsHMGrYS6G" resolve="text" />
            </node>
          </node>
        </node>
      </node>
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
        <node concept="1Wc70l" id="6QF1CPN$8Kf" role="3clFbw">
          <node concept="1SfVH9" id="2CQk7M4dnKQ" role="3uHU7B">
            <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
          </node>
          <node concept="3y3z36" id="6QF1CPN$9cz" role="3uHU7w">
            <node concept="10Nm6u" id="6QF1CPN$9c$" role="3uHU7w" />
            <node concept="1SfVH9" id="6QF1CPN$9c_" role="3uHU7B">
              <ref role="3cqZAo" node="3nsHMGrYSG4" resolve="dragStartPosition" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2CQk7M4dnuS" role="3clFbx">
          <node concept="3cpWs8" id="2JMLIMxUWIE" role="3cqZAp">
            <node concept="3cpWsn" id="2JMLIMxUWIF" role="3cpWs9">
              <property role="TrG5h" value="mp" />
              <node concept="3LmiP1" id="2JMLIMxUWIG" role="1tU5fm">
                <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
              </node>
              <node concept="2OqwBi" id="2JMLIMxUWIH" role="33vP2m">
                <node concept="32jkxy" id="2JMLIMxUWII" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                </node>
                <node concept="2OqwBi" id="2JMLIMxUWIJ" role="2Oq$k0">
                  <node concept="1SfVH9" id="2JMLIMxUWIK" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                  </node>
                  <node concept="32jkxy" id="2JMLIMxUWIL" role="2OqNvi">
                    <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                  </node>
                </node>
              </node>
            </node>
          </node>
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
                    <node concept="2$Gk$L" id="2CQk7M4dnYn" role="2OqNvi">
                      <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                      <node concept="1SfVH9" id="2CQk7M4dnYo" role="37wK5m">
                        <ref role="3cqZAo" node="2ihDbyJQukV" resolve="dragStartMousePosition" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2JMLIMxUXyc" role="2Oq$k0">
                      <ref role="3cqZAo" node="2JMLIMxUWIF" resolve="mp" />
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
          <node concept="3cpWs8" id="2JMLIMxUUYz" role="3cqZAp">
            <node concept="3cpWsn" id="2JMLIMxUUY$" role="3cpWs9">
              <property role="TrG5h" value="mp" />
              <node concept="3LmiP1" id="2JMLIMxUUY_" role="1tU5fm">
                <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
              </node>
              <node concept="2OqwBi" id="2JMLIMxUUYA" role="33vP2m">
                <node concept="32jkxy" id="2JMLIMxUUYB" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                </node>
                <node concept="2OqwBi" id="2JMLIMxUUYC" role="2Oq$k0">
                  <node concept="1SfVH9" id="2JMLIMxUUYD" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                  </node>
                  <node concept="32jkxy" id="2JMLIMxUUYE" role="2OqNvi">
                    <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                  </node>
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
              <node concept="1SfVH9" id="3nsHMGrZdeF" role="37vLTJ">
                <ref role="3cqZAo" node="2ihDbyJQukV" resolve="dragStartMousePosition" />
              </node>
              <node concept="37vLTw" id="2JMLIMxUVKz" role="37vLTx">
                <ref role="3cqZAo" node="2JMLIMxUUY$" resolve="mp" />
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
          <node concept="3cpWs8" id="2JMLIMxUVLA" role="3cqZAp">
            <node concept="3cpWsn" id="2JMLIMxUVLB" role="3cpWs9">
              <property role="TrG5h" value="mp" />
              <node concept="3LmiP1" id="2JMLIMxUVLC" role="1tU5fm">
                <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
              </node>
              <node concept="2OqwBi" id="2JMLIMxUVLD" role="33vP2m">
                <node concept="32jkxy" id="2JMLIMxUVLE" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                </node>
                <node concept="2OqwBi" id="2JMLIMxUVLF" role="2Oq$k0">
                  <node concept="1SfVH9" id="2JMLIMxUVLG" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                  </node>
                  <node concept="32jkxy" id="2JMLIMxUVLH" role="2OqNvi">
                    <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2JMLIMxUCSn" role="3cqZAp">
            <node concept="E34o$" id="2JMLIMxUCSo" role="3clFbG">
              <node concept="1SfVH9" id="2JMLIMxUCSp" role="37vLTJ">
                <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
              </node>
              <node concept="2OqwBi" id="2JMLIMxUENQ" role="37vLTx">
                <node concept="2OqwBi" id="2JMLIMxUCSq" role="2Oq$k0">
                  <node concept="1SfVH9" id="2JMLIMxUCSr" role="2Oq$k0">
                    <ref role="3cqZAo" node="3nsHMGrYSG4" resolve="dragStartPosition" />
                  </node>
                  <node concept="2$Gk$L" id="2JMLIMxUCSs" role="2OqNvi">
                    <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
                    <node concept="2OqwBi" id="2JMLIMxUCSt" role="37wK5m">
                      <node concept="2$Gk$L" id="2JMLIMxUCSz" role="2OqNvi">
                        <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                        <node concept="1SfVH9" id="2JMLIMxUCS$" role="37wK5m">
                          <ref role="3cqZAo" node="2ihDbyJQukV" resolve="dragStartMousePosition" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2JMLIMxUWGt" role="2Oq$k0">
                        <ref role="3cqZAo" node="2JMLIMxUVLB" resolve="mp" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2$Gk$L" id="2JMLIMxUFu0" role="2OqNvi">
                  <ref role="37wK5l" node="10mRasGA8ci" resolve="snap" />
                  <node concept="3cmrfG" id="2JMLIMxUFQO" role="37wK5m">
                    <property role="3cmrfH" value="20" />
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
      <ref role="1YqvnL" node="6_fOQ$Bh29y" resolve="GUI" />
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
    <node concept="kUGYC" id="AtimHgAZXP" role="1FPzNG">
      <property role="1ePe$S" value="true" />
      <property role="TrG5h" value="paintFilling" />
      <node concept="37vLTG" id="AtimHgAZXQ" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="AtimHgAZXR" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="AtimHgAZXS" role="1B3o_S" />
      <node concept="3clFbS" id="AtimHgAZXT" role="3clF47" />
      <node concept="3cqZAl" id="AtimHgAZXU" role="3clF45" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4J">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z2s" resolve="DContainer" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="4NMtPTvGUBA" role="1FPzNG">
      <property role="TrG5h" value="location" />
      <property role="2dyzOE" value="true" />
      <node concept="3LmiP1" id="4NMtPTvGXXf" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="3KEV6E" id="7meuijCQGMD" role="33vP2m">
        <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
        <node concept="2Pygp_" id="7meuijCQGME" role="2Pygpa">
          <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
          <node concept="3b6qkQ" id="7meuijCQH7T" role="2PygpA">
            <property role="$nhwW" value="0.0d" />
          </node>
        </node>
        <node concept="2Pygp_" id="7meuijCQGMF" role="2Pygpa">
          <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
          <node concept="3b6qkQ" id="7meuijCQHjr" role="2PygpA">
            <property role="$nhwW" value="0.0d" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="46vl3mDwqLd" role="1FPzNG">
      <property role="TrG5h" value="size" />
      <property role="2dyzOE" value="true" />
      <node concept="3LmiP1" id="46vl3mDwqM$" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGXY5" resolve="DDimension" />
      </node>
      <node concept="3KEV6E" id="7meuijCQIgq" role="33vP2m">
        <ref role="2UJ2yc" node="4NMtPTvGXY5" resolve="DDimension" />
        <node concept="2Pygp_" id="7meuijCQIgr" role="2Pygpa">
          <ref role="2Pygpw" node="4NMtPTvGXY6" resolve="width" />
          <node concept="3b6qkQ" id="7meuijCQKIB" role="2PygpA">
            <property role="$nhwW" value="100.0d" />
          </node>
        </node>
        <node concept="2Pygp_" id="7meuijCQIgs" role="2Pygpa">
          <ref role="2Pygpw" node="4NMtPTvGY55" resolve="height" />
          <node concept="3b6qkQ" id="7meuijCQL98" role="2PygpA">
            <property role="$nhwW" value="100.0d" />
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
      <ref role="1YqvnL" node="6_fOQ$Bh29y" resolve="GUI" />
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
            <node concept="1Wc70l" id="4582acfVIcR" role="3clFbw">
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
                          <node concept="1OA3xA" id="6FHmkWLaj0B" role="2Oq$k0" />
                          <node concept="2$Gk$L" id="6FHmkWLajbT" role="2OqNvi">
                            <ref role="37wK5l" node="7ESv7kyhKXZ" resolve="width" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="46vl3mDVo5d" role="37wK5m">
                          <node concept="1OA3xA" id="6FHmkWLajpA" role="2Oq$k0" />
                          <node concept="2$Gk$L" id="6FHmkWLaj$W" role="2OqNvi">
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
    <node concept="32q3_s" id="6FHmkWMhQ2O" role="1FPzNG">
      <property role="TrG5h" value="scale" />
      <property role="2dyzOE" value="true" />
      <node concept="10P55v" id="6FHmkWMhSs4" role="1tU5fm" />
      <node concept="3b6qkQ" id="6FHmkWMi1WU" role="33vP2m">
        <property role="$nhwW" value="1.0d" />
      </node>
    </node>
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
    <node concept="32q3_s" id="17hC4n5OqiO" role="1FPzNG">
      <property role="TrG5h" value="hasFocus" />
      <node concept="10P_77" id="17hC4n5OqAe" role="1tU5fm" />
    </node>
    <node concept="1FPxxo" id="2cgTHFO6hpD" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3w1" role="1FPzNG">
      <ref role="1YqvnL" node="6_fOQ$Bh29y" resolve="GUI" />
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
                                <node concept="3clFbF" id="17hC4n5CDD3" role="3cqZAp">
                                  <node concept="E34o$" id="17hC4n5CI8b" role="3clFbG">
                                    <node concept="2YIFZM" id="17hC4n5CKlD" role="37vLTx">
                                      <ref role="37wK5l" to="u4ym:17hC4n5C4Pa" resolve="setModifiers" />
                                      <ref role="1Pybhc" to="u4ym:17hC4n5BZ7$" resolve="DGuiUtil" />
                                      <node concept="37vLTw" id="17hC4n5CNZz" role="37wK5m">
                                        <ref role="3cqZAo" node="76QCTJD3zbf" resolve="e" />
                                      </node>
                                      <node concept="2OqwBi" id="17hC4n5CL2v" role="37wK5m">
                                        <node concept="1SfVH9" id="17hC4n5CL2w" role="2Oq$k0">
                                          <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                        </node>
                                        <node concept="32jkxy" id="17hC4n5CL2x" role="2OqNvi">
                                          <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="17hC4n5CFey" role="37vLTJ">
                                      <node concept="1SfVH9" id="17hC4n5CDD1" role="2Oq$k0">
                                        <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                      </node>
                                      <node concept="32jkxy" id="17hC4n5CGg0" role="2OqNvi">
                                        <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="7h_p2Gfqbg4" role="3cqZAp">
                                  <node concept="E34o$" id="7h_p2GfqepR" role="3clFbG">
                                    <node concept="2OqwBi" id="7h_p2Gfqcs7" role="37vLTJ">
                                      <node concept="1SfVH9" id="7h_p2Gfqbg3" role="2Oq$k0">
                                        <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                      </node>
                                      <node concept="32jkxy" id="7h_p2GfqdD_" role="2OqNvi">
                                        <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="6FHmkWMie94" role="37vLTx">
                                      <node concept="2$Gk$L" id="6FHmkWMifrm" role="2OqNvi">
                                        <ref role="37wK5l" node="2xAA8jfBhgV" resolve="div" />
                                        <node concept="1SfVH9" id="6FHmkWMihqY" role="37wK5m">
                                          <ref role="3cqZAo" node="6FHmkWMhQ2O" resolve="scale" />
                                        </node>
                                      </node>
                                      <node concept="3KEV6E" id="7h_p2Gfqf7c" role="2Oq$k0">
                                        <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                                        <node concept="2Pygp_" id="7h_p2Gfqf7d" role="2Pygpa">
                                          <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                                          <node concept="10QFUN" id="6FHmkWMObE7" role="2PygpA">
                                            <node concept="2OqwBi" id="6FHmkWMOd6w" role="10QFUP">
                                              <node concept="37vLTw" id="6FHmkWMObE5" role="2Oq$k0">
                                                <ref role="3cqZAo" node="76QCTJD3zbf" resolve="e" />
                                              </node>
                                              <node concept="liA8E" id="6FHmkWMOfM$" role="2OqNvi">
                                                <ref role="37wK5l" to="hyam:~MouseEvent.getX()" resolve="getX" />
                                              </node>
                                            </node>
                                            <node concept="10P55v" id="6FHmkWMOjVs" role="10QFUM" />
                                          </node>
                                        </node>
                                        <node concept="2Pygp_" id="7h_p2Gfqf7e" role="2Pygpa">
                                          <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                                          <node concept="10QFUN" id="6FHmkWMOlNH" role="2PygpA">
                                            <node concept="10P55v" id="6FHmkWMOpWa" role="10QFUM" />
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
                      <node concept="3clFbF" id="17hC4n5Dgwy" role="3cqZAp">
                        <node concept="2OqwBi" id="17hC4n5Dgwz" role="3clFbG">
                          <node concept="2O$n0J" id="17hC4n5Dgw$" role="2Oq$k0" />
                          <node concept="liA8E" id="17hC4n5Dgw_" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="17hC4n5DgwA" role="37wK5m">
                              <node concept="3clFbS" id="17hC4n5DgwB" role="1bW5cS">
                                <node concept="3clFbF" id="17hC4n5DgwC" role="3cqZAp">
                                  <node concept="E34o$" id="17hC4n5DgwD" role="3clFbG">
                                    <node concept="2YIFZM" id="17hC4n5DgwE" role="37vLTx">
                                      <ref role="1Pybhc" to="u4ym:17hC4n5BZ7$" resolve="DGuiUtil" />
                                      <ref role="37wK5l" to="u4ym:17hC4n5C4Pa" resolve="setModifiers" />
                                      <node concept="37vLTw" id="17hC4n5DgwF" role="37wK5m">
                                        <ref role="3cqZAo" node="76QCTJD3zaR" resolve="e" />
                                      </node>
                                      <node concept="2OqwBi" id="17hC4n5DgwG" role="37wK5m">
                                        <node concept="1SfVH9" id="17hC4n5DgwH" role="2Oq$k0">
                                          <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                        </node>
                                        <node concept="32jkxy" id="17hC4n5DgwI" role="2OqNvi">
                                          <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="17hC4n5DgwJ" role="37vLTJ">
                                      <node concept="1SfVH9" id="17hC4n5DgwK" role="2Oq$k0">
                                        <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                      </node>
                                      <node concept="32jkxy" id="17hC4n5DgwL" role="2OqNvi">
                                        <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                                      </node>
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
                          <node concept="10M0yZ" id="4EauV0Xf0V_" role="3uHU7w">
                            <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON3" resolve="BUTTON3" />
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
                                        <node concept="2OqwBi" id="2JMLIMyl9Bd" role="37wK5m">
                                          <node concept="2$Gk$L" id="2JMLIMyl9Be" role="2OqNvi">
                                            <ref role="37wK5l" node="2xAA8jfBhgV" resolve="div" />
                                            <node concept="1SfVH9" id="2JMLIMyl9Bf" role="37wK5m">
                                              <ref role="3cqZAo" node="6FHmkWMhQ2O" resolve="scale" />
                                            </node>
                                          </node>
                                          <node concept="3KEV6E" id="2JMLIMyl9Bg" role="2Oq$k0">
                                            <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                                            <node concept="2Pygp_" id="2JMLIMyl9Bh" role="2Pygpa">
                                              <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                                              <node concept="10QFUN" id="2JMLIMyl9Bi" role="2PygpA">
                                                <node concept="2OqwBi" id="2JMLIMyl9Bj" role="10QFUP">
                                                  <node concept="37vLTw" id="2JMLIMyl9Bk" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="76QCTJD3zaR" resolve="e" />
                                                  </node>
                                                  <node concept="liA8E" id="2JMLIMyl9Bl" role="2OqNvi">
                                                    <ref role="37wK5l" to="hyam:~MouseEvent.getX()" resolve="getX" />
                                                  </node>
                                                </node>
                                                <node concept="10P55v" id="2JMLIMyl9Bm" role="10QFUM" />
                                              </node>
                                            </node>
                                            <node concept="2Pygp_" id="2JMLIMyl9Bn" role="2Pygpa">
                                              <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                                              <node concept="10QFUN" id="2JMLIMyl9Bo" role="2PygpA">
                                                <node concept="10P55v" id="2JMLIMyl9Bp" role="10QFUM" />
                                                <node concept="2OqwBi" id="2JMLIMyl9Bq" role="10QFUP">
                                                  <node concept="37vLTw" id="2JMLIMyl9Br" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="76QCTJD3zaR" resolve="e" />
                                                  </node>
                                                  <node concept="liA8E" id="2JMLIMyl9Bs" role="2OqNvi">
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
                      <node concept="3clFbF" id="17hC4n5DcIz" role="3cqZAp">
                        <node concept="2OqwBi" id="17hC4n5DcI_" role="3clFbG">
                          <node concept="2O$n0J" id="17hC4n5DcIA" role="2Oq$k0" />
                          <node concept="liA8E" id="17hC4n5DcIB" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="17hC4n5DcIC" role="37wK5m">
                              <node concept="3clFbS" id="17hC4n5DcID" role="1bW5cS">
                                <node concept="3clFbF" id="17hC4n5DcIE" role="3cqZAp">
                                  <node concept="E34o$" id="17hC4n5DcIF" role="3clFbG">
                                    <node concept="2YIFZM" id="17hC4n5DcIG" role="37vLTx">
                                      <ref role="1Pybhc" to="u4ym:17hC4n5BZ7$" resolve="DGuiUtil" />
                                      <ref role="37wK5l" to="u4ym:17hC4n5C4Pa" resolve="setModifiers" />
                                      <node concept="37vLTw" id="17hC4n5DcIH" role="37wK5m">
                                        <ref role="3cqZAo" node="76QCTJD3zb3" resolve="e" />
                                      </node>
                                      <node concept="2OqwBi" id="17hC4n5DcII" role="37wK5m">
                                        <node concept="1SfVH9" id="17hC4n5DcIJ" role="2Oq$k0">
                                          <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                        </node>
                                        <node concept="32jkxy" id="17hC4n5DcIK" role="2OqNvi">
                                          <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="17hC4n5DcIL" role="37vLTJ">
                                      <node concept="1SfVH9" id="17hC4n5DcIM" role="2Oq$k0">
                                        <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                      </node>
                                      <node concept="32jkxy" id="17hC4n5DcIN" role="2OqNvi">
                                        <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
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
                          <node concept="10M0yZ" id="4EauV0Xf2jl" role="3uHU7w">
                            <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON3" resolve="BUTTON3" />
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
                                        <node concept="2OqwBi" id="2JMLIMyl3C6" role="37wK5m">
                                          <node concept="2$Gk$L" id="2JMLIMyl3C7" role="2OqNvi">
                                            <ref role="37wK5l" node="2xAA8jfBhgV" resolve="div" />
                                            <node concept="1SfVH9" id="2JMLIMyl3C8" role="37wK5m">
                                              <ref role="3cqZAo" node="6FHmkWMhQ2O" resolve="scale" />
                                            </node>
                                          </node>
                                          <node concept="3KEV6E" id="2JMLIMyl3C9" role="2Oq$k0">
                                            <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                                            <node concept="2Pygp_" id="2JMLIMyl3Ca" role="2Pygpa">
                                              <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                                              <node concept="10QFUN" id="2JMLIMyl3Cb" role="2PygpA">
                                                <node concept="2OqwBi" id="2JMLIMyl3Cc" role="10QFUP">
                                                  <node concept="37vLTw" id="2JMLIMyl3Cd" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="76QCTJD3zb3" resolve="e" />
                                                  </node>
                                                  <node concept="liA8E" id="2JMLIMyl3Ce" role="2OqNvi">
                                                    <ref role="37wK5l" to="hyam:~MouseEvent.getX()" resolve="getX" />
                                                  </node>
                                                </node>
                                                <node concept="10P55v" id="2JMLIMyl3Cf" role="10QFUM" />
                                              </node>
                                            </node>
                                            <node concept="2Pygp_" id="2JMLIMyl3Cg" role="2Pygpa">
                                              <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                                              <node concept="10QFUN" id="2JMLIMyl3Ch" role="2PygpA">
                                                <node concept="10P55v" id="2JMLIMyl3Ci" role="10QFUM" />
                                                <node concept="2OqwBi" id="2JMLIMyl3Cj" role="10QFUP">
                                                  <node concept="37vLTw" id="2JMLIMyl3Ck" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="76QCTJD3zb3" resolve="e" />
                                                  </node>
                                                  <node concept="liA8E" id="2JMLIMyl3Cl" role="2OqNvi">
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
                                <node concept="3clFbF" id="17hC4n5Dnw1" role="3cqZAp">
                                  <node concept="E34o$" id="17hC4n5Dnw2" role="3clFbG">
                                    <node concept="2YIFZM" id="17hC4n5Dnw3" role="37vLTx">
                                      <ref role="37wK5l" to="u4ym:17hC4n5C4Pa" resolve="setModifiers" />
                                      <ref role="1Pybhc" to="u4ym:17hC4n5BZ7$" resolve="DGuiUtil" />
                                      <node concept="37vLTw" id="17hC4n5Dnw4" role="37wK5m">
                                        <ref role="3cqZAo" node="5uiQOXmvNkT" resolve="e" />
                                      </node>
                                      <node concept="2OqwBi" id="17hC4n5Dnw5" role="37wK5m">
                                        <node concept="1SfVH9" id="17hC4n5Dnw6" role="2Oq$k0">
                                          <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                        </node>
                                        <node concept="32jkxy" id="17hC4n5Dnw7" role="2OqNvi">
                                          <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="17hC4n5Dnw8" role="37vLTJ">
                                      <node concept="1SfVH9" id="17hC4n5Dnw9" role="2Oq$k0">
                                        <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                      </node>
                                      <node concept="32jkxy" id="17hC4n5Dnwa" role="2OqNvi">
                                        <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="5uiQOXmvTsQ" role="3cqZAp">
                                  <node concept="E34o$" id="5uiQOXmvTsR" role="3clFbG">
                                    <node concept="2OqwBi" id="5uiQOXmvTsS" role="37vLTJ">
                                      <node concept="1SfVH9" id="5uiQOXmvTsT" role="2Oq$k0">
                                        <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                      </node>
                                      <node concept="32jkxy" id="5uiQOXmvTsU" role="2OqNvi">
                                        <ref role="3cqZAo" node="5uiQOXmd7mf" resolve="isMousePositionIn" />
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
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
                                <node concept="3clFbF" id="17hC4n5DryI" role="3cqZAp">
                                  <node concept="E34o$" id="17hC4n5DryJ" role="3clFbG">
                                    <node concept="2YIFZM" id="17hC4n5DryK" role="37vLTx">
                                      <ref role="37wK5l" to="u4ym:17hC4n5C4Pa" resolve="setModifiers" />
                                      <ref role="1Pybhc" to="u4ym:17hC4n5BZ7$" resolve="DGuiUtil" />
                                      <node concept="37vLTw" id="17hC4n5DryL" role="37wK5m">
                                        <ref role="3cqZAo" node="5uiQOXmvNl5" resolve="e" />
                                      </node>
                                      <node concept="2OqwBi" id="17hC4n5DryM" role="37wK5m">
                                        <node concept="1SfVH9" id="17hC4n5DryN" role="2Oq$k0">
                                          <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                        </node>
                                        <node concept="32jkxy" id="17hC4n5DryO" role="2OqNvi">
                                          <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="17hC4n5DryP" role="37vLTJ">
                                      <node concept="1SfVH9" id="17hC4n5DryQ" role="2Oq$k0">
                                        <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                      </node>
                                      <node concept="32jkxy" id="17hC4n5DryR" role="2OqNvi">
                                        <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="5uiQOXmvWiA" role="3cqZAp">
                                  <node concept="E34o$" id="5uiQOXmvWiB" role="3clFbG">
                                    <node concept="2OqwBi" id="5uiQOXmvWiC" role="37vLTJ">
                                      <node concept="1SfVH9" id="5uiQOXmvWiD" role="2Oq$k0">
                                        <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                      </node>
                                      <node concept="32jkxy" id="5uiQOXmvWiE" role="2OqNvi">
                                        <ref role="3cqZAo" node="5uiQOXmd7mf" resolve="isMousePositionIn" />
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
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
                      <node concept="3clFbF" id="3FzOqqF48Qq" role="3cqZAp">
                        <node concept="2OqwBi" id="3FzOqqF48Qs" role="3clFbG">
                          <node concept="2O$n0J" id="3FzOqqF48Qt" role="2Oq$k0" />
                          <node concept="liA8E" id="3FzOqqF48Qu" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="3FzOqqF48Qv" role="37wK5m">
                              <node concept="3clFbS" id="3FzOqqF48Qw" role="1bW5cS">
                                <node concept="3clFbF" id="3FzOqqF48Qx" role="3cqZAp">
                                  <node concept="E34o$" id="3FzOqqF4c5o" role="3clFbG">
                                    <node concept="2OqwBi" id="3FzOqqF48Qz" role="37vLTJ">
                                      <node concept="1SfVH9" id="3FzOqqF48Q$" role="2Oq$k0">
                                        <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                      </node>
                                      <node concept="32jkxy" id="3FzOqqF48Q_" role="2OqNvi">
                                        <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                                      </node>
                                    </node>
                                    <node concept="36be1Y" id="3FzOqqF4u3N" role="37vLTx">
                                      <node concept="2YIFZM" id="17hC4n5CWus" role="2Gi6C2">
                                        <ref role="37wK5l" to="u4ym:17hC4n5C4Pa" resolve="setModifiers" />
                                        <ref role="1Pybhc" to="u4ym:17hC4n5BZ7$" resolve="DGuiUtil" />
                                        <node concept="37vLTw" id="17hC4n5CWut" role="37wK5m">
                                          <ref role="3cqZAo" node="76QCTJD3$U0" resolve="e" />
                                        </node>
                                        <node concept="2OqwBi" id="17hC4n5CWuu" role="37wK5m">
                                          <node concept="1SfVH9" id="17hC4n5CWuv" role="2Oq$k0">
                                            <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                          </node>
                                          <node concept="32jkxy" id="17hC4n5CWuw" role="2OqNvi">
                                            <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="3FzOqqF4z_s" role="2Gi6C2">
                                        <node concept="37vLTw" id="3FzOqqF4yyk" role="2Oq$k0">
                                          <ref role="3cqZAo" node="76QCTJD3$U0" resolve="e" />
                                        </node>
                                        <node concept="liA8E" id="3FzOqqF4_Fl" role="2OqNvi">
                                          <ref role="37wK5l" to="hyam:~KeyEvent.getKeyCode()" resolve="getKeyCode" />
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
                      <node concept="3clFbF" id="3FzOqqF4BZ2" role="3cqZAp">
                        <node concept="2OqwBi" id="3FzOqqF4BZ4" role="3clFbG">
                          <node concept="2O$n0J" id="3FzOqqF4BZ5" role="2Oq$k0" />
                          <node concept="liA8E" id="3FzOqqF4BZ6" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="3FzOqqF4BZ7" role="37wK5m">
                              <node concept="3clFbS" id="3FzOqqF4BZ8" role="1bW5cS">
                                <node concept="3clFbF" id="3FzOqqF4BZ9" role="3cqZAp">
                                  <node concept="E34o$" id="3FzOqqF4BZa" role="3clFbG">
                                    <node concept="2OqwBi" id="3FzOqqF4BZb" role="37vLTJ">
                                      <node concept="1SfVH9" id="3FzOqqF4BZc" role="2Oq$k0">
                                        <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                      </node>
                                      <node concept="32jkxy" id="3FzOqqF4BZd" role="2OqNvi">
                                        <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="3FzOqqF4Fja" role="37vLTx">
                                      <node concept="3zZkjj" id="3FzOqqF4JS$" role="2OqNvi">
                                        <node concept="1bVj0M" id="3FzOqqF4JSA" role="23t8la">
                                          <node concept="3clFbS" id="3FzOqqF4JSB" role="1bW5cS">
                                            <node concept="3clFbF" id="3FzOqqF4Lji" role="3cqZAp">
                                              <node concept="17QLQc" id="3FzOqqF4NrY" role="3clFbG">
                                                <node concept="37vLTw" id="3FzOqqF4Ljh" role="3uHU7B">
                                                  <ref role="3cqZAo" node="3FzOqqF4JSC" resolve="k" />
                                                </node>
                                                <node concept="2OqwBi" id="3FzOqqF4O7b" role="3uHU7w">
                                                  <node concept="37vLTw" id="3FzOqqF4O7c" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="76QCTJD3$Uc" resolve="e" />
                                                  </node>
                                                  <node concept="liA8E" id="3FzOqqF4O7d" role="2OqNvi">
                                                    <ref role="37wK5l" to="hyam:~KeyEvent.getKeyCode()" resolve="getKeyCode" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="Rh6nW" id="3FzOqqF4JSC" role="1bW2Oz">
                                            <property role="TrG5h" value="k" />
                                            <node concept="2jxLKc" id="3FzOqqF4JSD" role="1tU5fm" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2YIFZM" id="17hC4n5D33_" role="2Oq$k0">
                                        <ref role="37wK5l" to="u4ym:17hC4n5C4Pa" resolve="setModifiers" />
                                        <ref role="1Pybhc" to="u4ym:17hC4n5BZ7$" resolve="DGuiUtil" />
                                        <node concept="37vLTw" id="17hC4n5D33A" role="37wK5m">
                                          <ref role="3cqZAo" node="76QCTJD3$Uc" resolve="e" />
                                        </node>
                                        <node concept="2OqwBi" id="17hC4n5D33B" role="37wK5m">
                                          <node concept="1SfVH9" id="17hC4n5D33C" role="2Oq$k0">
                                            <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                          </node>
                                          <node concept="32jkxy" id="17hC4n5D33D" role="2OqNvi">
                                            <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
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
        <node concept="3clFbF" id="17hC4n5OgqM" role="3cqZAp">
          <node concept="37vLTI" id="17hC4n5Oj_5" role="3clFbG">
            <node concept="2ShNRf" id="17hC4n5OjKu" role="37vLTx">
              <node concept="YeOm9" id="17hC4n5OknU" role="2ShVmc">
                <node concept="1Y3b0j" id="17hC4n5OknX" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" to="hyam:~FocusAdapter" resolve="FocusAdapter" />
                  <ref role="37wK5l" to="hyam:~FocusAdapter.&lt;init&gt;()" resolve="FocusAdapter" />
                  <node concept="3Tm1VV" id="17hC4n5OknY" role="1B3o_S" />
                  <node concept="3clFb_" id="17hC4n5Ol03" role="jymVt">
                    <property role="TrG5h" value="focusGained" />
                    <node concept="3Tm1VV" id="17hC4n5Ol04" role="1B3o_S" />
                    <node concept="3cqZAl" id="17hC4n5Ol06" role="3clF45" />
                    <node concept="37vLTG" id="17hC4n5Ol07" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="17hC4n5Ol08" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~FocusEvent" resolve="FocusEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="17hC4n5Ol0a" role="3clF47">
                      <node concept="3clFbF" id="17hC4n5OwPu" role="3cqZAp">
                        <node concept="2OqwBi" id="17hC4n5Oxnw" role="3clFbG">
                          <node concept="2O$n0J" id="17hC4n5OwPt" role="2Oq$k0" />
                          <node concept="liA8E" id="17hC4n5Oy50" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="17hC4n5OyNC" role="37wK5m">
                              <node concept="3clFbS" id="17hC4n5OyND" role="1bW5cS">
                                <node concept="3clFbF" id="17hC4n5Ozen" role="3cqZAp">
                                  <node concept="E34o$" id="17hC4n5O_o3" role="3clFbG">
                                    <node concept="3clFbT" id="17hC4n5OAEV" role="37vLTx">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                    <node concept="1SfVH9" id="2cgTHFO6_Zt" role="37vLTJ">
                                      <ref role="3cqZAo" node="17hC4n5OqiO" resolve="hasFocus" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="17hC4n5Ol0b" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="17hC4n5OkZR" role="jymVt">
                    <property role="TrG5h" value="focusLost" />
                    <node concept="3Tm1VV" id="17hC4n5OkZS" role="1B3o_S" />
                    <node concept="3cqZAl" id="17hC4n5OkZU" role="3clF45" />
                    <node concept="37vLTG" id="17hC4n5OkZV" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="17hC4n5OkZW" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~FocusEvent" resolve="FocusEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="17hC4n5OkZY" role="3clF47">
                      <node concept="3clFbF" id="17hC4n5OARA" role="3cqZAp">
                        <node concept="2OqwBi" id="17hC4n5OARB" role="3clFbG">
                          <node concept="2O$n0J" id="17hC4n5OARC" role="2Oq$k0" />
                          <node concept="liA8E" id="17hC4n5OARD" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.run(java.lang.Runnable)" resolve="run" />
                            <node concept="1bVj0M" id="17hC4n5OARE" role="37wK5m">
                              <node concept="3clFbS" id="17hC4n5OARF" role="1bW5cS">
                                <node concept="3clFbF" id="17hC4n5OARG" role="3cqZAp">
                                  <node concept="E34o$" id="17hC4n5OARH" role="3clFbG">
                                    <node concept="3clFbT" id="17hC4n5OBGU" role="37vLTx" />
                                    <node concept="1SfVH9" id="2cgTHFO6BhB" role="37vLTJ">
                                      <ref role="3cqZAo" node="17hC4n5OqiO" resolve="hasFocus" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="17hC4n5OkZZ" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5IyTM" id="17hC4n5OgqK" role="37vLTJ">
              <ref role="3cqZAo" node="17hC4n5Oa$w" resolve="focusAdapter" />
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
        <node concept="3clFbF" id="17hC4n5O4TH" role="3cqZAp">
          <node concept="2OqwBi" id="17hC4n5O8fl" role="3clFbG">
            <node concept="5IyTM" id="17hC4n5O4TF" role="2Oq$k0">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
            <node concept="liA8E" id="17hC4n5OavU" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.addFocusListener(java.awt.event.FocusListener)" resolve="addFocusListener" />
              <node concept="5IyTM" id="17hC4n5OdtP" role="37wK5m">
                <ref role="3cqZAo" node="17hC4n5Oa$w" resolve="focusAdapter" />
              </node>
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
        <node concept="3clFbF" id="17hC4n5OBUV" role="3cqZAp">
          <node concept="2OqwBi" id="17hC4n5OBUW" role="3clFbG">
            <node concept="5IyTM" id="17hC4n5OBUX" role="2Oq$k0">
              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
            </node>
            <node concept="liA8E" id="17hC4n5OBUY" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.removeFocusListener(java.awt.event.FocusListener)" resolve="removeFocusListener" />
              <node concept="5IyTM" id="17hC4n5OBUZ" role="37wK5m">
                <ref role="3cqZAo" node="17hC4n5Oa$w" resolve="focusAdapter" />
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
        <node concept="3clFbF" id="17hC4n5OCu9" role="3cqZAp">
          <node concept="37vLTI" id="17hC4n5OCX_" role="3clFbG">
            <node concept="10Nm6u" id="17hC4n5ODdH" role="37vLTx" />
            <node concept="5IyTM" id="17hC4n5OCu7" role="37vLTJ">
              <ref role="3cqZAo" node="17hC4n5Oa$w" resolve="focusAdapter" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA3wd" id="17hC4n5Oa$w" role="1OA3wj">
        <property role="TrG5h" value="focusAdapter" />
        <node concept="3uibUv" id="17hC4n5OdeZ" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~FocusAdapter" resolve="FocusAdapter" />
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="76QCTJD3B7E" role="1FPzNG">
      <property role="TrG5h" value="popup" />
      <property role="1ePe$S" value="true" />
      <node concept="37vLTG" id="76QCTJD3BIU" role="3clF46">
        <property role="TrG5h" value="pos" />
        <node concept="3LmiP1" id="2JMLIMyl0Cg" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
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
    <node concept="32q3_s" id="12WXgwkVEfb" role="1FPzNG">
      <property role="TrG5h" value="radiusPoint" />
      <node concept="3LmiP1" id="12WXgwkVEf5" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="3KEV6E" id="12WXgwkVEf6" role="33vP2m">
        <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
        <node concept="2Pygp_" id="12WXgwkVEf7" role="2Pygpa">
          <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
          <node concept="1SfVH9" id="12WXgwkVEf8" role="2PygpA">
            <ref role="3cqZAo" node="3nsHMGrXC3n" resolve="radius" />
          </node>
        </node>
        <node concept="2Pygp_" id="12WXgwkVEf9" role="2Pygpa">
          <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
          <node concept="1SfVH9" id="12WXgwkVEfa" role="2PygpA">
            <ref role="3cqZAo" node="3nsHMGrXC3n" resolve="radius" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="3OZjsowsQ3l" role="1FPzNG">
      <node concept="3clFbF" id="3OZjsowsQ3m" role="30jUnX">
        <node concept="E34o$" id="3OZjsowsQ3n" role="3clFbG">
          <node concept="2OqwBi" id="3OZjsowsQ3o" role="37vLTx">
            <node concept="1SfVH9" id="3OZjsowsQ3p" role="2Oq$k0">
              <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
            </node>
            <node concept="2$Gk$L" id="3OZjsowsQ3q" role="2OqNvi">
              <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
              <node concept="1SfVH9" id="12WXgwkVEfd" role="37wK5m">
                <ref role="3cqZAo" node="12WXgwkVEfb" />
              </node>
            </node>
          </node>
          <node concept="1SfVH9" id="3OZjsowsQ3u" role="37vLTJ">
            <ref role="3cqZAo" node="3OZjsowsF15" resolve="max" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="12WXgwkVB6E" role="1FPzNG">
      <node concept="3clFbF" id="12WXgwkVB6F" role="30jUnX">
        <node concept="E34o$" id="12WXgwkVB6G" role="3clFbG">
          <node concept="2OqwBi" id="12WXgwkVB6H" role="37vLTx">
            <node concept="1SfVH9" id="12WXgwkVB6I" role="2Oq$k0">
              <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
            </node>
            <node concept="2$Gk$L" id="12WXgwkVB6J" role="2OqNvi">
              <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
              <node concept="1SfVH9" id="12WXgwkVEfc" role="37wK5m">
                <ref role="3cqZAo" node="12WXgwkVEfb" />
              </node>
            </node>
          </node>
          <node concept="1SfVH9" id="12WXgwkVB6P" role="37vLTJ">
            <ref role="3cqZAo" node="12WXgwkVoAg" resolve="min" />
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
        <node concept="3clFbF" id="5sMhwdtSNKj" role="3cqZAp">
          <node concept="2OqwBi" id="5sMhwdtE_3x" role="3clFbG">
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
      <ref role="1YqvnL" node="6_fOQ$Bh29y" resolve="GUI" />
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
        <node concept="3clFbF" id="AtimHgBdx9" role="3cqZAp">
          <node concept="2275Hy" id="AtimHgBdxa" role="3clFbG">
            <ref role="37wK5l" node="AtimHgAZXP" resolve="paintFilling" />
            <node concept="37vLTw" id="AtimHgBdxb" role="37wK5m">
              <ref role="3cqZAo" node="3nsHMGrYCVT" resolve="g" />
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
      <property role="2dyzOE" value="true" />
      <node concept="3uibUv" id="3nsHMGrWmrT" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="7meuijCR4qq" role="33vP2m">
        <ref role="3cqZAo" to="z60i:~Color.WHITE" resolve="WHITE" />
        <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
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
    <node concept="32q3_s" id="AO_ohtcSsj" role="1FPzNG">
      <property role="TrG5h" value="editorHints" />
      <property role="KodbT" value="true" />
      <node concept="10Q1$e" id="AO_ohtcSsk" role="1tU5fm">
        <node concept="17QB3L" id="AO_ohtcSsl" role="10Q1$1" />
      </node>
    </node>
    <node concept="32q3_s" id="6FHmkWKN04o" role="1FPzNG">
      <property role="TrG5h" value="defaultFont" />
      <property role="KodbT" value="true" />
      <node concept="3uibUv" id="6FHmkWKN04p" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
      </node>
    </node>
    <node concept="32q3_s" id="6FHmkWL3dyy" role="1FPzNG">
      <property role="TrG5h" value="scaledFont" />
      <property role="KodbT" value="true" />
      <node concept="3uibUv" id="6FHmkWL3dyz" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
      </node>
    </node>
    <node concept="32q3_s" id="1bDgvLYgfGm" role="1FPzNG">
      <property role="KodbT" value="true" />
      <property role="TrG5h" value="defaultFontMetrics" />
      <node concept="3uibUv" id="1bDgvLYgiyU" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~FontMetrics" resolve="FontMetrics" />
      </node>
    </node>
    <node concept="32q3_s" id="6QF1CPNqors" role="1FPzNG">
      <property role="TrG5h" value="textHeight" />
      <node concept="10Oyi0" id="6QF1CPNq$R0" role="1tU5fm" />
      <node concept="2_n6$v" id="6QF1CPNqO6H" role="33vP2m">
        <node concept="3cmrfG" id="6QF1CPNtWX6" role="2_mOWp">
          <property role="3cmrfH" value="13" />
        </node>
        <node concept="1SfVH9" id="6QF1CPNqIsA" role="2Oq$k0">
          <ref role="3cqZAo" node="1bDgvLYgfGm" resolve="defaultFontMetrics" />
        </node>
        <node concept="liA8E" id="6QF1CPNqJNv" role="2OqNvi">
          <ref role="37wK5l" to="z60i:~FontMetrics.getHeight()" resolve="getHeight" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="QwQmtNmQS8" role="1FPzNG">
      <property role="TrG5h" value="dPanel" />
      <property role="KodbT" value="true" />
      <node concept="3uibUv" id="QwQmtNmUl4" role="1tU5fm">
        <ref role="3uigEE" to="u4ym:5uiQOXmFP5Y" resolve="DPanel" />
      </node>
    </node>
    <node concept="3tBE6w" id="6FHmkWMxyY9" role="1FPzNG">
      <node concept="3clFbF" id="6FHmkWMx$rU" role="30jUnX">
        <node concept="E34o$" id="6FHmkWMx_sQ" role="3clFbG">
          <node concept="1SfVH9" id="6FHmkWMx$rT" role="37vLTJ">
            <ref role="3cqZAo" node="6FHmkWMhQ2O" resolve="scale" />
          </node>
          <node concept="3K4zz7" id="6QF1CPN9M3$" role="37vLTx">
            <node concept="FJ1c_" id="6QF1CPN9Pbo" role="3K4E3e">
              <node concept="2OqwBi" id="6QF1CPN9QhD" role="3uHU7w">
                <node concept="1SfVH9" id="6QF1CPN9Px_" role="2Oq$k0">
                  <ref role="3cqZAo" node="6FHmkWKN04o" resolve="defaultFont" />
                </node>
                <node concept="liA8E" id="6QF1CPN9Rf$" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Font.getSize2D()" resolve="getSize2D" />
                </node>
              </node>
              <node concept="2OqwBi" id="6QF1CPN9NrK" role="3uHU7B">
                <node concept="1SfVH9" id="6QF1CPN9MFl" role="2Oq$k0">
                  <ref role="3cqZAo" node="6FHmkWL3dyy" resolve="scaledFont" />
                </node>
                <node concept="liA8E" id="6QF1CPN9Op_" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Font.getSize2D()" resolve="getSize2D" />
                </node>
              </node>
            </node>
            <node concept="3b6qkQ" id="6QF1CPN9Msf" role="3K4GZi">
              <property role="$nhwW" value="1.0d" />
            </node>
            <node concept="1Wc70l" id="6QF1CPN9KrN" role="3K4Cdx">
              <node concept="3y3z36" id="6QF1CPN9LuZ" role="3uHU7w">
                <node concept="10Nm6u" id="6QF1CPN9LZw" role="3uHU7w" />
                <node concept="1SfVH9" id="6QF1CPN9KKr" role="3uHU7B">
                  <ref role="3cqZAo" node="6FHmkWKN04o" resolve="defaultFont" />
                </node>
              </node>
              <node concept="3y3z36" id="6QF1CPN9J_P" role="3uHU7B">
                <node concept="1SfVH9" id="6QF1CPN9J2P" role="3uHU7B">
                  <ref role="3cqZAo" node="6FHmkWL3dyy" resolve="scaledFont" />
                </node>
                <node concept="10Nm6u" id="6QF1CPN9KnY" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="Vg5FsxyVVS" role="1FPzNG">
      <property role="TrG5h" value="components" />
      <node concept="_YKpA" id="Vg5FsxyWAN" role="1tU5fm">
        <node concept="3LmiP1" id="QwQmtNlzyN" role="_ZDj9">
          <ref role="2XDbjv" node="skgx$J4Z2F" resolve="DComponent" />
        </node>
      </node>
      <node concept="36be1Y" id="Vg5Fsxzidm" role="33vP2m">
        <node concept="2OqwBi" id="Vg5Fsxz1Nj" role="2Gi6C2">
          <node concept="1SfVH9" id="Vg5Fsxz0D8" role="2Oq$k0">
            <ref role="3cqZAo" node="7nNrlO1Gveo" resolve="shapes" />
          </node>
          <node concept="13MTOL" id="Vg5Fsxz5lN" role="2OqNvi">
            <ref role="13MTZf" node="Vg5Fsxma4s" resolve="component" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="5PFtE$oCBED" role="1FPzNG">
      <node concept="3clFbF" id="5PFtE$oCDl4" role="30jUnX">
        <node concept="2OqwBi" id="5PFtE$oCEDJ" role="3clFbG">
          <node concept="1SfVH9" id="5PFtE$oCDl3" role="2Oq$k0">
            <ref role="3cqZAo" node="Vg5FsxyVVS" resolve="components" />
          </node>
          <node concept="2es0OD" id="5PFtE$oCIom" role="2OqNvi">
            <node concept="1bVj0M" id="5PFtE$oCIoo" role="23t8la">
              <node concept="3clFbS" id="5PFtE$oCIop" role="1bW5cS">
                <node concept="3clFbF" id="5PFtE$oCIFM" role="3cqZAp">
                  <node concept="E34o$" id="5PFtE$oCKxs" role="3clFbG">
                    <node concept="1SfVH9" id="5PFtE$oCKV1" role="37vLTx">
                      <ref role="3cqZAo" node="6FHmkWMhQ2O" resolve="scale" />
                    </node>
                    <node concept="2OqwBi" id="5PFtE$oCINg" role="37vLTJ">
                      <node concept="37vLTw" id="5PFtE$oCIFL" role="2Oq$k0">
                        <ref role="3cqZAo" node="5PFtE$oCIoq" resolve="c" />
                      </node>
                      <node concept="32jkxy" id="5PFtE$oCJhS" role="2OqNvi">
                        <ref role="3cqZAo" node="6FHmkWMhQ2O" resolve="scale" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="5PFtE$oCIoq" role="1bW2Oz">
                <property role="TrG5h" value="c" />
                <node concept="2jxLKc" id="5PFtE$oCIor" role="1tU5fm" />
              </node>
            </node>
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
                    <ref role="3cqZAo" node="3nsHMGrYX5W" resolve="hitLeft" />
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
              <node concept="1Dw8fO" id="1XnM_rg7DeK" role="3cqZAp">
                <node concept="3clFbS" id="1XnM_rg7DeM" role="2LFqv$">
                  <node concept="3cpWs8" id="1XnM_rg7Lqg" role="3cqZAp">
                    <node concept="3cpWsn" id="1XnM_rg7Lqj" role="3cpWs9">
                      <property role="TrG5h" value="shape" />
                      <node concept="3LmiP1" id="1XnM_rg7Lqk" role="1tU5fm">
                        <ref role="2XDbjv" node="skgx$J4Z2r" resolve="DShape" />
                      </node>
                      <node concept="1y4W85" id="1XnM_rg7Mcj" role="33vP2m">
                        <node concept="37vLTw" id="1XnM_rg7Myc" role="1y58nS">
                          <ref role="3cqZAo" node="1XnM_rg7DeN" resolve="i" />
                        </node>
                        <node concept="1SfVH9" id="1XnM_rg7LFn" role="1y566C">
                          <ref role="3cqZAo" node="7nNrlO1Gveo" resolve="shapes" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2cgTHFOWS7P" role="3cqZAp">
                    <node concept="3clFbS" id="2cgTHFOWS7R" role="3clFbx">
                      <node concept="3cpWs8" id="2e_OnsiyxVg" role="3cqZAp">
                        <node concept="3cpWsn" id="2e_OnsiyxVh" role="3cpWs9">
                          <property role="TrG5h" value="hit" />
                          <node concept="10P_77" id="2e_Onsiywcf" role="1tU5fm" />
                          <node concept="2OqwBi" id="2e_OnsiyxVi" role="33vP2m">
                            <node concept="37vLTw" id="2e_OnsiyxVj" role="2Oq$k0">
                              <ref role="3cqZAo" node="1XnM_rg7Lqj" resolve="shape" />
                            </node>
                            <node concept="32jkxy" id="2e_OnsiyxVk" role="2OqNvi">
                              <ref role="3cqZAo" node="3nsHMGrYX5W" resolve="hitLeft" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2cgTHFOX4H9" role="3cqZAp">
                        <node concept="E34o$" id="2cgTHFOX7L4" role="3clFbG">
                          <node concept="2OqwBi" id="2cgTHFOX6C6" role="37vLTJ">
                            <node concept="3MEt_1" id="2cgTHFOX6is" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <ref role="3MEk2m" node="681X9Tz0KVS" resolve="DNodeComponent" />
                              <node concept="2OqwBi" id="2cgTHFOX4Hb" role="3MEzJy">
                                <node concept="37vLTw" id="2cgTHFOX4Hc" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1XnM_rg7Lqj" resolve="shape" />
                                </node>
                                <node concept="32jkxy" id="2cgTHFOX4Hd" role="2OqNvi">
                                  <ref role="3cqZAo" node="Vg5Fsxma4s" resolve="component" />
                                </node>
                              </node>
                            </node>
                            <node concept="32jkxy" id="2cgTHFOX7aV" role="2OqNvi">
                              <ref role="3cqZAo" node="7eX99ou0F5U" resolve="isSelected" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="2e_OnsiyxVl" role="37vLTx">
                            <ref role="3cqZAo" node="2e_OnsiyxVh" resolve="hit" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="2e_Onsiyyj9" role="3cqZAp">
                        <node concept="3clFbS" id="2e_Onsiyyjb" role="3clFbx">
                          <node concept="3clFbF" id="2e_OnsiyyTr" role="3cqZAp">
                            <node concept="37vLTI" id="2e_OnsiyzLj" role="3clFbG">
                              <node concept="3cmrfG" id="2e_OnsiyzSN" role="37vLTx">
                                <property role="3cmrfH" value="-1" />
                              </node>
                              <node concept="37vLTw" id="2e_OnsiyyTq" role="37vLTJ">
                                <ref role="3cqZAo" node="1XnM_rg7DeN" resolve="i" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="2e_Onsiyyyv" role="3clFbw">
                          <ref role="3cqZAo" node="2e_OnsiyxVh" resolve="hit" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2cgTHFOX3QH" role="3clFbw">
                      <node concept="2OqwBi" id="2cgTHFOX35$" role="2Oq$k0">
                        <node concept="37vLTw" id="2cgTHFOX2WR" role="2Oq$k0">
                          <ref role="3cqZAo" node="1XnM_rg7Lqj" resolve="shape" />
                        </node>
                        <node concept="32jkxy" id="2cgTHFOX3pY" role="2OqNvi">
                          <ref role="3cqZAo" node="Vg5Fsxma4s" resolve="component" />
                        </node>
                      </node>
                      <node concept="3MEtcU" id="2cgTHFOX4s6" role="2OqNvi">
                        <ref role="3MEk2k" node="681X9Tz0KVS" resolve="DNodeComponent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="1XnM_rg7DeN" role="1Duv9x">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="1XnM_rg7DhY" role="1tU5fm" />
                  <node concept="3cpWsd" id="1XnM_rg7JUe" role="33vP2m">
                    <node concept="3cmrfG" id="1XnM_rg7JZt" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="1XnM_rg7Fwy" role="3uHU7B">
                      <node concept="1SfVH9" id="1XnM_rg7F78" role="2Oq$k0">
                        <ref role="3cqZAo" node="7nNrlO1Gveo" resolve="shapes" />
                      </node>
                      <node concept="34oBXx" id="1XnM_rg7Ip3" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="2d3UOw" id="1XnM_rg7KAg" role="1Dwp0S">
                  <node concept="37vLTw" id="1XnM_rg7DVb" role="3uHU7B">
                    <ref role="3cqZAo" node="1XnM_rg7DeN" resolve="i" />
                  </node>
                  <node concept="3cmrfG" id="1XnM_rg7L0S" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3uO5VW" id="1XnM_rg7LoT" role="1Dwrff">
                  <node concept="37vLTw" id="1XnM_rg7LoV" role="2$L3a6">
                    <ref role="3cqZAo" node="1XnM_rg7DeN" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7eX99ou3pPi" role="3clFbw">
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
              <node concept="2OqwBi" id="7eX99ou3qjL" role="3uHU7w">
                <node concept="37vLTw" id="7eX99ou3qaI" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eX99ou3lXZ" resolve="di" />
                </node>
                <node concept="32jkxy" id="7eX99ou3qB3" role="2OqNvi">
                  <ref role="3cqZAo" node="5uiQOXmd7mf" resolve="isMousePositionIn" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1FPxxo" id="7ypR234heXV" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3wd" role="1FPzNG">
      <ref role="1YqvnL" node="6_fOQ$Bh29y" resolve="GUI" />
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
                      <node concept="3clFbF" id="3nsHMGrWV1O" role="3cqZAp">
                        <node concept="2OqwBi" id="3nsHMGrWVYj" role="3clFbG">
                          <node concept="2O$n0J" id="3nsHMGrWV1M" role="2Oq$k0" />
                          <node concept="liA8E" id="3nsHMGrWWDY" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~INativeRunner.runNow(java.lang.Runnable)" resolve="runNow" />
                            <node concept="1bVj0M" id="3nsHMGrWXm4" role="37wK5m">
                              <node concept="3clFbS" id="3nsHMGrWXm5" role="1bW5cS">
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
                                      <node concept="2OqwBi" id="5xYqfN6uTbF" role="10QFUP">
                                        <node concept="37vLTw" id="3nsHMGrWIcJ" role="2Oq$k0">
                                          <ref role="3cqZAo" node="Vg5Fsz9AlP" resolve="g" />
                                        </node>
                                        <node concept="liA8E" id="5xYqfN6uU8s" role="2OqNvi">
                                          <ref role="37wK5l" to="z60i:~Graphics.create()" resolve="create" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="6FHmkWLpR_j" role="3cqZAp">
                                  <node concept="3cpWsn" id="6FHmkWLpR_k" role="3cpWs9">
                                    <property role="TrG5h" value="t" />
                                    <node concept="3uibUv" id="6FHmkWLpQ98" role="1tU5fm">
                                      <ref role="3uigEE" to="fbzs:~AffineTransform" resolve="AffineTransform" />
                                    </node>
                                    <node concept="2ShNRf" id="6FHmkWLq0yK" role="33vP2m">
                                      <node concept="1pGfFk" id="6FHmkWLpZOt" role="2ShVmc">
                                        <ref role="37wK5l" to="fbzs:~AffineTransform.&lt;init&gt;(java.awt.geom.AffineTransform)" resolve="AffineTransform" />
                                        <node concept="2OqwBi" id="6FHmkWLpR_l" role="37wK5m">
                                          <node concept="37vLTw" id="6FHmkWLpR_m" role="2Oq$k0">
                                            <ref role="3cqZAo" node="3nsHMGrWGYu" resolve="g2d" />
                                          </node>
                                          <node concept="liA8E" id="6FHmkWLpR_n" role="2OqNvi">
                                            <ref role="37wK5l" to="z60i:~Graphics2D.getTransform()" resolve="getTransform" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="6FHmkWKcD50" role="3cqZAp">
                                  <node concept="2OqwBi" id="6FHmkWLk7oe" role="3clFbG">
                                    <node concept="37vLTw" id="6FHmkWLpR_o" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6FHmkWLpR_k" resolve="transform" />
                                    </node>
                                    <node concept="liA8E" id="6FHmkWLk8hJ" role="2OqNvi">
                                      <ref role="37wK5l" to="fbzs:~AffineTransform.concatenate(java.awt.geom.AffineTransform)" resolve="concatenate" />
                                      <node concept="2YIFZM" id="6FHmkWMxFO_" role="37wK5m">
                                        <ref role="37wK5l" to="fbzs:~AffineTransform.getScaleInstance(double,double)" resolve="getScaleInstance" />
                                        <ref role="1Pybhc" to="fbzs:~AffineTransform" resolve="AffineTransform" />
                                        <node concept="1SfVH9" id="6FHmkWMxH_8" role="37wK5m">
                                          <ref role="3cqZAo" node="6FHmkWMhQ2O" resolve="scale" />
                                        </node>
                                        <node concept="1SfVH9" id="6FHmkWMxJmV" role="37wK5m">
                                          <ref role="3cqZAo" node="6FHmkWMhQ2O" resolve="scale" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="6FHmkWLpU8f" role="3cqZAp">
                                  <node concept="2OqwBi" id="6FHmkWLpVzZ" role="3clFbG">
                                    <node concept="37vLTw" id="6FHmkWLpU8d" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3nsHMGrWGYu" resolve="g2d" />
                                    </node>
                                    <node concept="liA8E" id="6FHmkWLpWPn" role="2OqNvi">
                                      <ref role="37wK5l" to="z60i:~Graphics2D.setTransform(java.awt.geom.AffineTransform)" resolve="setTransform" />
                                      <node concept="37vLTw" id="6FHmkWLpY$$" role="37wK5m">
                                        <ref role="3cqZAo" node="6FHmkWLpR_k" resolve="t" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
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
                                <node concept="3clFbJ" id="35HVCqFLbkw" role="3cqZAp">
                                  <node concept="3clFbS" id="35HVCqFLbky" role="3clFbx">
                                    <node concept="3clFbF" id="35HVCqFLiL3" role="3cqZAp">
                                      <node concept="2OqwBi" id="35HVCqFLk4R" role="3clFbG">
                                        <node concept="37vLTw" id="35HVCqFLiL1" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3nsHMGrWGYu" resolve="g2d" />
                                        </node>
                                        <node concept="liA8E" id="35HVCqFLliv" role="2OqNvi">
                                          <ref role="37wK5l" to="z60i:~Graphics.setFont(java.awt.Font)" resolve="setFont" />
                                          <node concept="1SfVH9" id="35HVCqFLmKm" role="37wK5m">
                                            <ref role="3cqZAo" node="6FHmkWKN04o" resolve="defaultFont" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3y3z36" id="35HVCqFLeiL" role="3clFbw">
                                    <node concept="10Nm6u" id="35HVCqFLhEP" role="3uHU7w" />
                                    <node concept="1SfVH9" id="35HVCqFLcBV" role="3uHU7B">
                                      <ref role="3cqZAo" node="6FHmkWKN04o" resolve="defaultFont" />
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
                                <node concept="3clFbF" id="5xYqfN6uX67" role="3cqZAp">
                                  <node concept="2OqwBi" id="5xYqfN6uYre" role="3clFbG">
                                    <node concept="37vLTw" id="5xYqfN6uX65" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3nsHMGrWGYu" resolve="g2d" />
                                    </node>
                                    <node concept="liA8E" id="5xYqfN6uZF6" role="2OqNvi">
                                      <ref role="37wK5l" to="z60i:~Graphics.dispose()" resolve="dispose" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="Vg5Fsz9AlY" role="3cqZAp">
                        <node concept="3nyPlj" id="Vg5Fsz9AlX" role="3clFbG">
                          <ref role="37wK5l" to="dxuu:~JComponent.paintChildren(java.awt.Graphics)" resolve="paintChildren" />
                          <node concept="37vLTw" id="Vg5Fsz9AlW" role="37wK5m">
                            <ref role="3cqZAo" node="Vg5Fsz9AlP" resolve="g" />
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
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
        <node concept="3clFbF" id="faO$66_4GI" role="3cqZAp">
          <node concept="2OqwBi" id="faO$66_5yb" role="3clFbG">
            <node concept="5IyTM" id="faO$66_4GG" role="2Oq$k0">
              <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
            </node>
            <node concept="liA8E" id="faO$66_8Z8" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.setFocusCycleRoot(boolean)" resolve="setFocusCycleRoot" />
              <node concept="3clFbT" id="faO$66_9pa" role="37wK5m">
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
                          <node concept="2OqwBi" id="4582acgSg8u" role="37wK5m">
                            <node concept="37vLTw" id="4582acgSfTB" role="2Oq$k0">
                              <ref role="3cqZAo" node="3gYsXlMLu7a" resolve="c" />
                            </node>
                            <node concept="1OA3xM" id="4582acgSgVR" role="2OqNvi">
                              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                            </node>
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
                          <node concept="2OqwBi" id="QwQmtNlAbI" role="37wK5m">
                            <node concept="37vLTw" id="3gYsXlMLu7A" role="2Oq$k0">
                              <ref role="3cqZAo" node="3gYsXlMLu7G" resolve="c" />
                            </node>
                            <node concept="1OA3xM" id="QwQmtNlAPn" role="2OqNvi">
                              <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                            </node>
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
      <node concept="1OA0iZ" id="QwQmtNnEaD" role="1OA3xZ">
        <ref role="1OA0iW" node="QwQmtNmQS8" resolve="dPanel" />
        <node concept="3clFbS" id="QwQmtNnEaE" role="1OA0iB">
          <node concept="3clFbF" id="QwQmtNnEpj" role="3cqZAp">
            <node concept="E34o$" id="QwQmtNnFm5" role="3clFbG">
              <node concept="5IyTM" id="2kRpT$F4xEX" role="37vLTx">
                <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
              </node>
              <node concept="1SfVH9" id="QwQmtNnEpi" role="37vLTJ">
                <ref role="3cqZAo" node="QwQmtNmQS8" resolve="dPanel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="35HVCqFLo0e" role="1OA3xZ">
        <ref role="1OA0iW" node="6FHmkWKN04o" resolve="scaledFont" />
        <node concept="3clFbS" id="35HVCqFLo0f" role="1OA0iB">
          <node concept="3clFbF" id="35HVCqFLqYx" role="3cqZAp">
            <node concept="E34o$" id="35HVCqFLqYy" role="3clFbG">
              <node concept="2OqwBi" id="35HVCqFLqYz" role="37vLTx">
                <node concept="5IyTM" id="35HVCqFLqY$" role="2Oq$k0">
                  <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
                </node>
                <node concept="liA8E" id="35HVCqFLqY_" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getFontMetrics(java.awt.Font)" resolve="getFontMetrics" />
                  <node concept="1SfVH9" id="35HVCqFLrKX" role="37wK5m">
                    <ref role="3cqZAo" node="6FHmkWKN04o" resolve="scaledFont" />
                  </node>
                </node>
              </node>
              <node concept="1SfVH9" id="35HVCqFLqYD" role="37vLTJ">
                <ref role="3cqZAo" node="1bDgvLYgfGm" resolve="fontMetrics" />
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
    <node concept="kUGYC" id="AtimHgBx$o" role="1FPzNG">
      <property role="2RZe$O" value="true" />
      <property role="TrG5h" value="round" />
      <node concept="3Tm1VV" id="AtimHgBx$p" role="1B3o_S" />
      <node concept="3clFbS" id="AtimHgBx$q" role="3clF47">
        <node concept="3clFbF" id="AtimHgB$ga" role="3cqZAp">
          <node concept="3KEV6E" id="AtimHgB$g7" role="3clFbG">
            <ref role="2UJ2yc" node="4NMtPTvGXY5" resolve="DDimension" />
            <node concept="2Pygp_" id="AtimHgB$g8" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGXY6" resolve="width" />
              <node concept="10QFUN" id="AtimHgBPbg" role="2PygpA">
                <node concept="10P55v" id="AtimHgBQ0O" role="10QFUM" />
                <node concept="2275Hy" id="AtimHgCeF3" role="10QFUP">
                  <ref role="37wK5l" node="7ESv7kyhKXZ" resolve="width" />
                </node>
              </node>
            </node>
            <node concept="2Pygp_" id="AtimHgB$g9" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGY55" resolve="height" />
              <node concept="10QFUN" id="AtimHgBQ6H" role="2PygpA">
                <node concept="10P55v" id="AtimHgBQNu" role="10QFUM" />
                <node concept="2275Hy" id="AtimHgCg1D" role="10QFUP">
                  <ref role="37wK5l" node="7ESv7kyhKY9" resolve="height" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3LmiP1" id="AtimHgByUN" role="3clF45">
        <ref role="2XDbjv" node="4NMtPTvGXY5" resolve="DDimension" />
      </node>
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
    <node concept="kUGYC" id="AtimHgBZc1" role="1FPzNG">
      <property role="2RZe$O" value="true" />
      <property role="TrG5h" value="round" />
      <node concept="3Tm1VV" id="AtimHgBZc2" role="1B3o_S" />
      <node concept="3clFbS" id="AtimHgBZc3" role="3clF47">
        <node concept="3clFbF" id="AtimHgBZc4" role="3cqZAp">
          <node concept="3KEV6E" id="AtimHgBZc5" role="3clFbG">
            <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
            <node concept="2Pygp_" id="AtimHgBZc6" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
              <node concept="10QFUN" id="AtimHgBZc7" role="2PygpA">
                <node concept="10P55v" id="AtimHgBZc8" role="10QFUM" />
                <node concept="2275Hy" id="AtimHgCalt" role="10QFUP">
                  <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                </node>
              </node>
            </node>
            <node concept="2Pygp_" id="AtimHgBZcd" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
              <node concept="10QFUN" id="AtimHgBZce" role="2PygpA">
                <node concept="10P55v" id="AtimHgBZcf" role="10QFUM" />
                <node concept="2275Hy" id="AtimHgCctI" role="10QFUP">
                  <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3LmiP1" id="AtimHgBZck" role="3clF45">
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
      <property role="2dyzOE" value="true" />
      <node concept="3LmiP1" id="76QCTJD2e5c" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="3KEV6E" id="76QCTJD2l1V" role="33vP2m">
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
      <ref role="1YqvnL" node="6_fOQ$Bh29y" resolve="GUI" />
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
      <ref role="1YqvnL" node="6_fOQ$Bh29y" resolve="GUI" />
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
      <ref role="1YqvnL" node="6_fOQ$Bh29y" resolve="GUI" />
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
                                <ref role="3uigEE" to="t4tl:~DMutable" resolve="DMutable" />
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
                        <ref role="3uigEE" to="t4tl:~DMutable" resolve="DMutable" />
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
      <ref role="1YqvnL" node="6_fOQ$Bh29y" resolve="GUI" />
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
        <node concept="3cpWs8" id="AO_ohtdN$8" role="3cqZAp">
          <node concept="3cpWsn" id="AO_ohtdN$9" role="3cpWs9">
            <property role="TrG5h" value="canvas" />
            <node concept="3LmiP1" id="AO_ohtcMN5" role="1tU5fm">
              <ref role="2XDbjv" node="skgx$J4Z32" resolve="DCanvas" />
            </node>
            <node concept="2OqwBi" id="AO_ohtdN$a" role="33vP2m">
              <node concept="2Wb9Zs" id="AO_ohtdN$b" role="2Oq$k0" />
              <node concept="3BHqF8" id="AO_ohtdN$c" role="2OqNvi">
                <ref role="3BGHVm" node="skgx$J4Z32" resolve="DCanvas" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="19RvTPMrdJi" role="3cqZAp">
          <node concept="3cpWsn" id="19RvTPMrdJg" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="dPanel" />
            <node concept="3uibUv" id="19RvTPMrjlo" role="1tU5fm">
              <ref role="3uigEE" to="u4ym:5uiQOXmFP5Y" resolve="DPanel" />
            </node>
            <node concept="2OqwBi" id="19RvTPMrkEo" role="33vP2m">
              <node concept="37vLTw" id="AO_ohtdN$d" role="2Oq$k0">
                <ref role="3cqZAo" node="AO_ohtdN$9" resolve="canvas" />
              </node>
              <node concept="1OA3xM" id="19RvTPMrkEs" role="2OqNvi">
                <ref role="3cqZAo" node="3nsHMGrWoxt" resolve="panel" />
              </node>
            </node>
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
                                <ref role="37wK5l" to="t4tl:~INativeRunner.runNow(java.lang.Runnable)" resolve="runNow" />
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
                                <ref role="37wK5l" to="t4tl:~INativeRunner.runNow(java.lang.Runnable)" resolve="runNow" />
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
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2tJIrI" id="5qYJBblzzdu" role="jymVt" />
                  <node concept="3clFb_" id="19RvTPMqQFq" role="jymVt">
                    <property role="TrG5h" value="getExternalComponent" />
                    <node concept="3Tm1VV" id="19RvTPMqQFr" role="1B3o_S" />
                    <node concept="3uibUv" id="19RvTPMqQFu" role="3clF45">
                      <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                    </node>
                    <node concept="3clFbS" id="19RvTPMqQFx" role="3clF47">
                      <node concept="3clFbF" id="19RvTPMrlOy" role="3cqZAp">
                        <node concept="37vLTw" id="19RvTPMrlOx" role="3clFbG">
                          <ref role="3cqZAo" node="19RvTPMrdJg" resolve="dPanel" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="19RvTPMqQFy" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="AO_ohtcMxe" role="3cqZAp" />
        <node concept="3clFbF" id="2meRJyCcJV7" role="3cqZAp">
          <node concept="2OqwBi" id="2meRJyCcQl7" role="3clFbG">
            <node concept="2OqwBi" id="2meRJyCcKVV" role="2Oq$k0">
              <node concept="5IyTM" id="2meRJyCcJV5" role="2Oq$k0">
                <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
              </node>
              <node concept="liA8E" id="2meRJyCcPt$" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getUpdater()" resolve="getUpdater" />
              </node>
            </node>
            <node concept="liA8E" id="2meRJyCcRH5" role="2OqNvi">
              <ref role="37wK5l" to="22ra:~Updater.setInitialEditorHints(java.lang.String[])" resolve="setInitialEditorHints" />
              <node concept="2OqwBi" id="AO_ohtdQj$" role="37wK5m">
                <node concept="37vLTw" id="2meRJyCcROZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="AO_ohtdN$9" resolve="canvas" />
                </node>
                <node concept="32jkxy" id="AO_ohtdQNE" role="2OqNvi">
                  <ref role="3cqZAo" node="AO_ohtcSsj" resolve="editorHints" />
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
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
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
                      <node concept="3clFbF" id="19RvTPM$HxM" role="3cqZAp">
                        <node concept="2OqwBi" id="19RvTPM$InC" role="3clFbG">
                          <node concept="37vLTw" id="19RvTPM$HxK" role="2Oq$k0">
                            <ref role="3cqZAo" node="19RvTPMrdJg" resolve="dPanel" />
                          </node>
                          <node concept="liA8E" id="19RvTPM$JWm" role="2OqNvi">
                            <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="7eX99otYPRu" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
                    <ref role="37wK5l" to="t4tl:~DNewable.tryOriginal()" resolve="tryOriginal" />
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
              <node concept="3cpWs8" id="5PFtE$oCgJB" role="3cqZAp">
                <node concept="3cpWsn" id="5PFtE$oCgJC" role="3cpWs9">
                  <property role="TrG5h" value="l" />
                  <node concept="3LmiP1" id="5PFtE$oCgJD" role="1tU5fm">
                    <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
                  </node>
                  <node concept="2OqwBi" id="5PFtE$oCgJE" role="33vP2m">
                    <node concept="1OA3xA" id="5PFtE$oCgJG" role="2Oq$k0" />
                    <node concept="2$Gk$L" id="5PFtE$oCgJI" role="2OqNvi">
                      <ref role="37wK5l" node="2xAA8jfB2O5" resolve="mult" />
                      <node concept="1SfVH9" id="5PFtE$oCgJJ" role="37wK5m">
                        <ref role="3cqZAo" node="6FHmkWMhQ2O" resolve="scale" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5uiQOXm8W2B" role="3cqZAp">
                <node concept="2OqwBi" id="5uiQOXm8X2O" role="3clFbG">
                  <node concept="5IyTM" id="5uiQOXm8W2A" role="2Oq$k0">
                    <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
                  </node>
                  <node concept="liA8E" id="5uiQOXm91uL" role="2OqNvi">
                    <ref role="37wK5l" to="u4ym:5uiQOXm8oED" resolve="doSetLocation" />
                    <node concept="3cpWsd" id="4$xfQKnPXz8" role="37wK5m">
                      <node concept="3cmrfG" id="4$xfQKnPXA2" role="3uHU7w">
                        <property role="3cmrfH" value="5" />
                      </node>
                      <node concept="2OqwBi" id="5uiQOXm91K9" role="3uHU7B">
                        <node concept="37vLTw" id="5PFtE$owM6l" role="2Oq$k0">
                          <ref role="3cqZAo" node="5PFtE$oCgJC" resolve="l" />
                        </node>
                        <node concept="2$Gk$L" id="5uiQOXm92a0" role="2OqNvi">
                          <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsd" id="4$xfQKnPXiS" role="37wK5m">
                      <node concept="3cmrfG" id="4$xfQKnPXlM" role="3uHU7w">
                        <property role="3cmrfH" value="5" />
                      </node>
                      <node concept="2OqwBi" id="5uiQOXm92ye" role="3uHU7B">
                        <node concept="37vLTw" id="5PFtE$owMaF" role="2Oq$k0">
                          <ref role="3cqZAo" node="5PFtE$oCgJC" resolve="l" />
                        </node>
                        <node concept="2$Gk$L" id="5uiQOXm92W4" role="2OqNvi">
                          <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                        </node>
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
              <node concept="3cpWs8" id="5PFtE$oCe3Z" role="3cqZAp">
                <node concept="3cpWsn" id="5PFtE$oCe42" role="3cpWs9">
                  <property role="TrG5h" value="s" />
                  <node concept="3LmiP1" id="5PFtE$oCe3X" role="1tU5fm">
                    <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
                  </node>
                  <node concept="2OqwBi" id="5PFtE$oCeUT" role="33vP2m">
                    <node concept="2OqwBi" id="5PFtE$oCeo5" role="2Oq$k0">
                      <node concept="1OA3xA" id="5PFtE$oCegG" role="2Oq$k0" />
                      <node concept="2$Gk$L" id="5PFtE$oCeJR" role="2OqNvi">
                        <ref role="37wK5l" node="46vl3mDwqPk" resolve="toPoint" />
                      </node>
                    </node>
                    <node concept="2$Gk$L" id="5PFtE$oCfn$" role="2OqNvi">
                      <ref role="37wK5l" node="2xAA8jfB2O5" resolve="mult" />
                      <node concept="1SfVH9" id="5PFtE$oCfHY" role="37wK5m">
                        <ref role="3cqZAo" node="6FHmkWMhQ2O" resolve="scale" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5uiQOXm94oH" role="3cqZAp">
                <node concept="2OqwBi" id="5uiQOXm94oI" role="3clFbG">
                  <node concept="5IyTM" id="5uiQOXm94oJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
                  </node>
                  <node concept="liA8E" id="5uiQOXm94oK" role="2OqNvi">
                    <ref role="37wK5l" to="u4ym:5uiQOXm8Gv1" resolve="doSetSize" />
                    <node concept="2OqwBi" id="5uiQOXm94oL" role="37wK5m">
                      <node concept="37vLTw" id="5PFtE$o$dsJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="5PFtE$oCe42" resolve="p" />
                      </node>
                      <node concept="2$Gk$L" id="5uiQOXm94oN" role="2OqNvi">
                        <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5uiQOXm94oO" role="37wK5m">
                      <node concept="37vLTw" id="5PFtE$o$dTR" role="2Oq$k0">
                        <ref role="3cqZAo" node="5PFtE$oCe42" resolve="p" />
                      </node>
                      <node concept="2$Gk$L" id="5uiQOXm94oQ" role="2OqNvi">
                        <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
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
      <node concept="1OA0iZ" id="5PFtE$oChJz" role="1OA3xZ">
        <ref role="1OA0iW" node="6FHmkWMhQ2O" resolve="scale" />
        <node concept="3clFbS" id="5PFtE$oChJ$" role="1OA0iB">
          <node concept="3clFbJ" id="5PFtE$oCrGa" role="3cqZAp">
            <node concept="3clFbS" id="5PFtE$oCrGc" role="3clFbx">
              <node concept="3cpWs8" id="5PFtE$oClUS" role="3cqZAp">
                <node concept="3cpWsn" id="5PFtE$oClUT" role="3cpWs9">
                  <property role="TrG5h" value="l" />
                  <node concept="3LmiP1" id="5PFtE$oClUU" role="1tU5fm">
                    <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
                  </node>
                  <node concept="2OqwBi" id="5PFtE$oClUV" role="33vP2m">
                    <node concept="1SfVH9" id="5PFtE$oCowL" role="2Oq$k0">
                      <ref role="3cqZAo" node="4NMtPTvGUBA" resolve="location" />
                    </node>
                    <node concept="2$Gk$L" id="5PFtE$oClUX" role="2OqNvi">
                      <ref role="37wK5l" node="2xAA8jfB2O5" resolve="mult" />
                      <node concept="1SfVH9" id="5PFtE$oClUY" role="37wK5m">
                        <ref role="3cqZAo" node="6FHmkWMhQ2O" resolve="scale" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5PFtE$oClUZ" role="3cqZAp">
                <node concept="2OqwBi" id="5PFtE$oClV0" role="3clFbG">
                  <node concept="5IyTM" id="5PFtE$oClV1" role="2Oq$k0">
                    <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
                  </node>
                  <node concept="liA8E" id="5PFtE$oClV2" role="2OqNvi">
                    <ref role="37wK5l" to="u4ym:5uiQOXm8oED" resolve="doSetLocation" />
                    <node concept="3cpWsd" id="4$xfQKnPX1W" role="37wK5m">
                      <node concept="3cmrfG" id="4$xfQKnPX4Q" role="3uHU7w">
                        <property role="3cmrfH" value="5" />
                      </node>
                      <node concept="2OqwBi" id="5PFtE$oClV3" role="3uHU7B">
                        <node concept="37vLTw" id="5PFtE$oClV4" role="2Oq$k0">
                          <ref role="3cqZAo" node="5PFtE$oClUT" resolve="l" />
                        </node>
                        <node concept="2$Gk$L" id="5PFtE$oClV5" role="2OqNvi">
                          <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsd" id="4$xfQKnPWvZ" role="37wK5m">
                      <node concept="3cmrfG" id="4$xfQKnPWA1" role="3uHU7w">
                        <property role="3cmrfH" value="5" />
                      </node>
                      <node concept="2OqwBi" id="5PFtE$oClV6" role="3uHU7B">
                        <node concept="37vLTw" id="5PFtE$oClV7" role="2Oq$k0">
                          <ref role="3cqZAo" node="5PFtE$oClUT" resolve="l" />
                        </node>
                        <node concept="2$Gk$L" id="5PFtE$oClV8" role="2OqNvi">
                          <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5PFtE$oCscz" role="3clFbw">
              <node concept="10Nm6u" id="5PFtE$oCsuD" role="3uHU7w" />
              <node concept="1SfVH9" id="5PFtE$oCs0f" role="3uHU7B">
                <ref role="3cqZAo" node="4NMtPTvGUBA" resolve="location" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5PFtE$oCuno" role="3cqZAp">
            <node concept="3clFbS" id="5PFtE$oCunq" role="3clFbx">
              <node concept="3cpWs8" id="5PFtE$oCn74" role="3cqZAp">
                <node concept="3cpWsn" id="5PFtE$oCn75" role="3cpWs9">
                  <property role="TrG5h" value="s" />
                  <node concept="3LmiP1" id="5PFtE$oCn76" role="1tU5fm">
                    <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
                  </node>
                  <node concept="2OqwBi" id="5PFtE$oCn77" role="33vP2m">
                    <node concept="2OqwBi" id="5PFtE$oCn78" role="2Oq$k0">
                      <node concept="1SfVH9" id="5PFtE$oCoVg" role="2Oq$k0">
                        <ref role="3cqZAo" node="46vl3mDwqLd" resolve="size" />
                      </node>
                      <node concept="2$Gk$L" id="5PFtE$oCn7a" role="2OqNvi">
                        <ref role="37wK5l" node="46vl3mDwqPk" resolve="toPoint" />
                      </node>
                    </node>
                    <node concept="2$Gk$L" id="5PFtE$oCn7b" role="2OqNvi">
                      <ref role="37wK5l" node="2xAA8jfB2O5" resolve="mult" />
                      <node concept="1SfVH9" id="5PFtE$oCn7c" role="37wK5m">
                        <ref role="3cqZAo" node="6FHmkWMhQ2O" resolve="scale" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5PFtE$oCn7d" role="3cqZAp">
                <node concept="2OqwBi" id="5PFtE$oCn7e" role="3clFbG">
                  <node concept="5IyTM" id="5PFtE$oCn7f" role="2Oq$k0">
                    <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
                  </node>
                  <node concept="liA8E" id="5PFtE$oCn7g" role="2OqNvi">
                    <ref role="37wK5l" to="u4ym:5uiQOXm8Gv1" resolve="doSetSize" />
                    <node concept="2OqwBi" id="5PFtE$oCn7h" role="37wK5m">
                      <node concept="37vLTw" id="5PFtE$oCn7i" role="2Oq$k0">
                        <ref role="3cqZAo" node="5PFtE$oCn75" resolve="s" />
                      </node>
                      <node concept="2$Gk$L" id="5PFtE$oCn7j" role="2OqNvi">
                        <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5PFtE$oCn7k" role="37wK5m">
                      <node concept="37vLTw" id="5PFtE$oCn7l" role="2Oq$k0">
                        <ref role="3cqZAo" node="5PFtE$oCn75" resolve="s" />
                      </node>
                      <node concept="2$Gk$L" id="5PFtE$oCn7m" role="2OqNvi">
                        <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5PFtE$oCuZ1" role="3clFbw">
              <node concept="10Nm6u" id="5PFtE$oCvh8" role="3uHU7w" />
              <node concept="1SfVH9" id="5PFtE$oCuMF" role="3uHU7B">
                <ref role="3cqZAo" node="46vl3mDwqLd" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5PFtE$oGpHc" role="3cqZAp">
            <node concept="3cpWsn" id="5PFtE$oGpHd" role="3cpWs9">
              <property role="TrG5h" value="canvas" />
              <node concept="3LmiP1" id="5PFtE$oGpHe" role="1tU5fm">
                <ref role="2XDbjv" node="skgx$J4Z32" resolve="DCanvas" />
              </node>
              <node concept="2OqwBi" id="5PFtE$oGpHf" role="33vP2m">
                <node concept="2Wb9Zs" id="5PFtE$oGpHg" role="2Oq$k0" />
                <node concept="3BHqF8" id="5PFtE$oGpHh" role="2OqNvi">
                  <ref role="3BGHVm" node="skgx$J4Z32" resolve="DCanvas" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5PFtE$oGqqG" role="3cqZAp">
            <node concept="3clFbS" id="5PFtE$oGqqI" role="3clFbx">
              <node concept="3clFbF" id="5PFtE$oGrC8" role="3cqZAp">
                <node concept="2OqwBi" id="5PFtE$oGt3N" role="3clFbG">
                  <node concept="5IyTM" id="5PFtE$oGs3d" role="2Oq$k0">
                    <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
                  </node>
                  <node concept="liA8E" id="5PFtE$oOEWL" role="2OqNvi">
                    <ref role="37wK5l" to="u4ym:5PFtE$oNznW" resolve="setFontSize" />
                    <node concept="2OqwBi" id="5PFtE$oOGOT" role="37wK5m">
                      <node concept="2OqwBi" id="5PFtE$oOFTE" role="2Oq$k0">
                        <node concept="37vLTw" id="5PFtE$oOFIR" role="2Oq$k0">
                          <ref role="3cqZAo" node="5PFtE$oGpHd" resolve="canvas" />
                        </node>
                        <node concept="32jkxy" id="5PFtE$oOGlW" role="2OqNvi">
                          <ref role="3cqZAo" node="6FHmkWL3dyy" resolve="scaledFont" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5PFtE$oOHM5" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Font.getSize()" resolve="getSize" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5PFtE$oGrjU" role="3clFbw">
              <node concept="10Nm6u" id="5PFtE$oGry7" role="3uHU7w" />
              <node concept="37vLTw" id="5PFtE$oGqGS" role="3uHU7B">
                <ref role="3cqZAo" node="5PFtE$oGpHd" resolve="canvas" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1OA0iZ" id="7eX99ou1qT5" role="1OA3xZ">
        <ref role="1OA0iW" node="7eX99ou0F5U" resolve="isSelected" />
        <node concept="3clFbS" id="7eX99ou1qT6" role="1OA0iB">
          <node concept="3clFbJ" id="2cgTHFOX9_r" role="3cqZAp">
            <node concept="3clFbS" id="2cgTHFOX9_t" role="3clFbx">
              <node concept="3clFbF" id="2cgTHFOXaIB" role="3cqZAp">
                <node concept="2OqwBi" id="2cgTHFOXaID" role="3clFbG">
                  <node concept="5IyTM" id="2cgTHFOXaIE" role="2Oq$k0">
                    <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
                  </node>
                  <node concept="liA8E" id="2cgTHFOXzlC" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JComponent.requestFocus()" resolve="requestFocus" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1OA3xA" id="2cgTHFOX9It" role="3clFbw" />
            <node concept="9aQIb" id="2cgTHFOXbvw" role="9aQIa">
              <node concept="3clFbS" id="2cgTHFOXbvx" role="9aQI4">
                <node concept="3clFbF" id="7eX99ou1wNq" role="3cqZAp">
                  <node concept="2OqwBi" id="7eX99ou1xHM" role="3clFbG">
                    <node concept="5IyTM" id="7eX99ou1wNp" role="2Oq$k0">
                      <ref role="3cqZAo" node="681X9Tz1zcG" resolve="nodeEditor" />
                    </node>
                    <node concept="liA8E" id="6SQjciYkyKV" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.clearSelectionStack()" resolve="clearSelectionStack" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3$xSZ_i6TuL" role="3cqZAp">
            <node concept="2OqwBi" id="3$xSZ_i6TuM" role="3clFbG">
              <node concept="2OqwBi" id="3$xSZ_i6TuN" role="2Oq$k0">
                <node concept="2OqwBi" id="3$xSZ_i6TuO" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="3$xSZ_i6TuP" role="2Oq$k0" />
                  <node concept="3BHqF8" id="3$xSZ_i6TuQ" role="2OqNvi">
                    <ref role="3BGHVm" node="skgx$J4Z2F" resolve="DComponent" />
                  </node>
                </node>
                <node concept="1OA3xM" id="3$xSZ_i6TuR" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                </node>
              </node>
              <node concept="liA8E" id="3$xSZ_i6TuS" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
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
      <node concept="2EnYce" id="5BQzS3JSVql" role="33vP2m">
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
      <node concept="2_n6$v" id="2cgTHFQbG7g" role="33vP2m">
        <node concept="Xl_RD" id="2cgTHFQbGui" role="2_mOWp">
          <property role="Xl_RC" value="" />
        </node>
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
    <node concept="32q3_s" id="76DRFzMe15v" role="1FPzNG">
      <property role="TrG5h" value="position" />
      <property role="3CZYri" value="true" />
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
            <node concept="WxPPo" id="2JMLIMxNw8e" role="28ntcv">
              <node concept="3K4zz7" id="2JMLIMxNwNS" role="WxPPp">
                <node concept="2OqwBi" id="2JMLIMxNB6p" role="3K4GZi">
                  <node concept="2zIEM7" id="2JMLIMxN_nK" role="2Oq$k0" />
                  <node concept="3TrcHB" id="2JMLIMxNBNY" role="2OqNvi">
                    <ref role="3TsBF5" to="53d4:31sbKqyPLDJ" resolve="x" />
                  </node>
                </node>
                <node concept="2275Hy" id="2JMLIMxNw8d" role="3K4Cdx">
                  <ref role="37wK5l" node="2JMLIMxNsp_" resolve="writeLayout" />
                </node>
                <node concept="2OqwBi" id="1J7fUUysVNf" role="3K4E3e">
                  <node concept="1SfVH9" id="1J7fUUysVNg" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                  </node>
                  <node concept="2$Gk$L" id="1J7fUUysVNh" role="2OqNvi">
                    <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pJxcG" id="1J7fUUysW8s" role="2pJxcM">
            <ref role="2pJxcJ" to="53d4:31sbKqyPLDL" resolve="y" />
            <node concept="WxPPo" id="2JMLIMxNxwl" role="28ntcv">
              <node concept="3K4zz7" id="2JMLIMxNy9G" role="WxPPp">
                <node concept="2OqwBi" id="2JMLIMxN$os" role="3K4GZi">
                  <node concept="2zIEM7" id="2JMLIMxNyJ7" role="2Oq$k0" />
                  <node concept="3TrcHB" id="2JMLIMxN_8V" role="2OqNvi">
                    <ref role="3TsBF5" to="53d4:31sbKqyPLDL" resolve="y" />
                  </node>
                </node>
                <node concept="2275Hy" id="2JMLIMxNxwk" role="3K4Cdx">
                  <ref role="37wK5l" node="2JMLIMxNsp_" resolve="writeLayout" />
                </node>
                <node concept="2OqwBi" id="2JMLIMxNFKt" role="3K4E3e">
                  <node concept="1SfVH9" id="2JMLIMxNEDa" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                  </node>
                  <node concept="2$Gk$L" id="2JMLIMxNGgR" role="2OqNvi">
                    <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="2T0xVNLUk6W" role="1FPzNG">
      <node concept="9aQIb" id="2JMLIMy5Skq" role="30jUnX">
        <node concept="3clFbS" id="2JMLIMy5Skr" role="9aQI4">
          <node concept="3cpWs8" id="2JMLIMy5SMs" role="3cqZAp">
            <node concept="3cpWsn" id="2JMLIMy5SMt" role="3cpWs9">
              <property role="TrG5h" value="position" />
              <node concept="3LmiP1" id="2JMLIMy5SAA" role="1tU5fm">
                <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
              </node>
              <node concept="2OqwBi" id="2JMLIMy5SMu" role="33vP2m">
                <node concept="1SfVH9" id="2JMLIMy5SMv" role="2Oq$k0">
                  <ref role="3cqZAo" node="2CQk7M4lME$" resolve="layout" />
                </node>
                <node concept="32jkxy" id="2JMLIMy5SMw" role="2OqNvi">
                  <ref role="3cqZAo" node="2T0xVNLUbde" resolve="position" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6QF1CPNYRRn" role="3cqZAp">
            <node concept="3clFbS" id="6QF1CPNYRRp" role="3clFbx">
              <node concept="3clFbF" id="6QF1CPNYTKT" role="3cqZAp">
                <node concept="E34o$" id="6QF1CPNYTZy" role="3clFbG">
                  <node concept="37vLTw" id="2JMLIMy5SMx" role="37vLTx">
                    <ref role="3cqZAo" node="2JMLIMy5SMt" resolve="position" />
                  </node>
                  <node concept="1SfVH9" id="6QF1CPNYTKR" role="37vLTJ">
                    <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2275Hy" id="2JMLIMxNvHA" role="3clFbw">
              <ref role="37wK5l" node="2JMLIMxN7yu" resolve="readLayout" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="2cgTHFPtWGo" role="1FPzNG">
      <node concept="9aQIb" id="2cgTHFPugzB" role="30jUnX">
        <node concept="3clFbS" id="2cgTHFPugzC" role="9aQI4">
          <node concept="3cpWs8" id="2cgTHFPugR_" role="3cqZAp">
            <node concept="3cpWsn" id="2cgTHFPugRA" role="3cpWs9">
              <property role="TrG5h" value="d" />
              <node concept="3LmiP1" id="2cgTHFPugJg" role="1tU5fm">
                <ref role="2XDbjv" node="3OZjsowr30i" resolve="DDiagramCanvas" />
              </node>
              <node concept="1SfVH9" id="2cgTHFPugRB" role="33vP2m">
                <ref role="3cqZAo" node="3HJBHARurzj" resolve="diagram" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2cgTHFPtX8s" role="3cqZAp">
            <node concept="1Wc70l" id="2cgTHFPuiFf" role="3clFbw">
              <node concept="3J2VuX" id="2cgTHFPujOP" role="3uHU7w">
                <node concept="3y3z36" id="2cgTHFPumyw" role="3J2yhu">
                  <node concept="10Nm6u" id="2cgTHFPuncC" role="3uHU7w" />
                  <node concept="2OqwBi" id="2cgTHFPukJZ" role="3uHU7B">
                    <node concept="37vLTw" id="2cgTHFPukz1" role="2Oq$k0">
                      <ref role="3cqZAo" node="2cgTHFPugRA" resolve="d" />
                    </node>
                    <node concept="1932wR" id="2cgTHFPulAB" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="6xUXWqdLILR" role="3uHU7B">
                <node concept="3fqX7Q" id="t2PHHvRdBo" role="3uHU7B">
                  <node concept="1SfVH9" id="6xUXWqdhUn7" role="3fr31v">
                    <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
                  </node>
                </node>
                <node concept="2OqwBi" id="t2PHHvRfvA" role="3uHU7w">
                  <node concept="1SfVH9" id="2cgTHFPtXk6" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                  </node>
                  <node concept="2$Gk$L" id="t2PHHvRg41" role="2OqNvi">
                    <ref role="37wK5l" node="2xAA8jfAMdM" resolve="isNull" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2cgTHFPtX8u" role="3clFbx">
              <node concept="3clFbF" id="t2PHHvRj3b" role="3cqZAp">
                <node concept="E34o$" id="t2PHHvRjiQ" role="3clFbG">
                  <node concept="2OqwBi" id="t2PHHvRmFW" role="37vLTx">
                    <node concept="2OqwBi" id="t2PHHvRlK5" role="2Oq$k0">
                      <node concept="2OqwBi" id="t2PHHvRl5K" role="2Oq$k0">
                        <node concept="2OqwBi" id="t2PHHvRjzm" role="2Oq$k0">
                          <node concept="37vLTw" id="t2PHHvRjpt" role="2Oq$k0">
                            <ref role="3cqZAo" node="2cgTHFPugRA" resolve="d" />
                          </node>
                          <node concept="32jkxy" id="t2PHHvRk0x" role="2OqNvi">
                            <ref role="3cqZAo" node="46vl3mDwqLd" resolve="size" />
                          </node>
                        </node>
                        <node concept="2$Gk$L" id="t2PHHvRlz5" role="2OqNvi">
                          <ref role="37wK5l" node="46vl3mDwqPk" resolve="toPoint" />
                        </node>
                      </node>
                      <node concept="2$Gk$L" id="t2PHHvRmdO" role="2OqNvi">
                        <ref role="37wK5l" node="2xAA8jfBhgV" resolve="div" />
                        <node concept="3b6qkQ" id="t2PHHvRmxQ" role="37wK5m">
                          <property role="$nhwW" value="2.0" />
                        </node>
                      </node>
                    </node>
                    <node concept="2$Gk$L" id="t2PHHvRmYj" role="2OqNvi">
                      <ref role="37wK5l" node="10mRasGA8ci" resolve="snap" />
                      <node concept="3cmrfG" id="t2PHHvRn6F" role="37wK5m">
                        <property role="3cmrfH" value="20" />
                      </node>
                    </node>
                  </node>
                  <node concept="1SfVH9" id="t2PHHvRj3a" role="37vLTJ">
                    <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="2JMLIMxN7yu" role="1FPzNG">
      <property role="TrG5h" value="readLayout" />
      <node concept="3Tm1VV" id="2JMLIMxN7yv" role="1B3o_S" />
      <node concept="3clFbS" id="2JMLIMxN7yw" role="3clF47">
        <node concept="3clFbF" id="2JMLIMxNtsm" role="3cqZAp">
          <node concept="1Wc70l" id="2JMLIMxNubn" role="3clFbG">
            <node concept="3fqX7Q" id="2JMLIMxNvps" role="3uHU7w">
              <node concept="3J2VuX" id="2JMLIMxNvpu" role="3fr31v">
                <node concept="1SfVH9" id="2JMLIMxNvpv" role="3J2yhu">
                  <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2JMLIMxNtso" role="3uHU7B">
              <node concept="1SfVH9" id="2JMLIMxNtsp" role="3fr31v">
                <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2JMLIMxNrc_" role="3clF45" />
    </node>
    <node concept="kUGYC" id="2JMLIMxNsp_" role="1FPzNG">
      <property role="TrG5h" value="writeLayout" />
      <node concept="3Tm1VV" id="2JMLIMxNspA" role="1B3o_S" />
      <node concept="3clFbS" id="2JMLIMxNspB" role="3clF47">
        <node concept="3clFbF" id="2JMLIMxNGtX" role="3cqZAp">
          <node concept="3fqX7Q" id="2JMLIMxNGtV" role="3clFbG">
            <node concept="1SfVH9" id="2JMLIMxNGLu" role="3fr31v">
              <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2JMLIMxNsTk" role="3clF45" />
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
      <node concept="2ShNRf" id="1XnM_rfLvdA" role="33vP2m">
        <node concept="kMnCb" id="1XnM_rfLN6P" role="2ShVmc">
          <node concept="3Tqbb2" id="1XnM_rfLNgK" role="kMuH3">
            <ref role="ehGHo" to="53d4:31sbKqyPLDm" resolve="JointLayout" />
          </node>
          <node concept="1bVj0M" id="1XnM_rfLNzi" role="kMx8a">
            <node concept="3clFbS" id="1XnM_rfLNzj" role="1bW5cS">
              <node concept="1Dw8fO" id="1XnM_rfLNKP" role="3cqZAp">
                <node concept="3cpWsn" id="1XnM_rfLNKQ" role="1Duv9x">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="1XnM_rfLNVI" role="1tU5fm" />
                  <node concept="3cmrfG" id="1XnM_rfSpCO" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3clFbS" id="1XnM_rfLNKR" role="2LFqv$">
                  <node concept="2n63Yl" id="1XnM_rfLZIs" role="3cqZAp">
                    <node concept="2pJPEk" id="2CQk7M4n0J1" role="2n6tg2">
                      <node concept="2pJPED" id="2CQk7M4n0J2" role="2pJPEn">
                        <ref role="2pJxaS" to="53d4:31sbKqyPLDm" resolve="JointLayout" />
                        <node concept="2pJxcG" id="2CQk7M4n0J3" role="2pJxcM">
                          <ref role="2pJxcJ" to="53d4:31sbKqyPMf7" resolve="x" />
                          <node concept="WxPPo" id="2JMLIMxO35A" role="28ntcv">
                            <node concept="3K4zz7" id="2JMLIMxO3T9" role="WxPPp">
                              <node concept="2OqwBi" id="2JMLIMxO6zC" role="3K4GZi">
                                <node concept="2zIEM7" id="2JMLIMxO4JR" role="2Oq$k0" />
                                <node concept="3TrcHB" id="2JMLIMxO7oa" role="2OqNvi">
                                  <ref role="3TsBF5" to="53d4:31sbKqyPMf7" resolve="x" />
                                </node>
                              </node>
                              <node concept="2275Hy" id="2JMLIMxO35_" role="3K4Cdx">
                                <ref role="37wK5l" node="2JMLIMxNNfW" resolve="writeLayout" />
                              </node>
                              <node concept="2OqwBi" id="2JMLIMxO9dC" role="3K4E3e">
                                <node concept="1y4W85" id="1XnM_rfMcZ6" role="2Oq$k0">
                                  <node concept="37vLTw" id="1XnM_rfMe2J" role="1y58nS">
                                    <ref role="3cqZAo" node="1XnM_rfLNKQ" resolve="i" />
                                  </node>
                                  <node concept="1SfVH9" id="1XnM_rfM0zV" role="1y566C">
                                    <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                                  </node>
                                </node>
                                <node concept="2$Gk$L" id="2JMLIMxO9Sn" role="2OqNvi">
                                  <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2pJxcG" id="2CQk7M4n0J8" role="2pJxcM">
                          <ref role="2pJxcJ" to="53d4:31sbKqyPMf9" resolve="y" />
                          <node concept="WxPPo" id="2JMLIMxOaaJ" role="28ntcv">
                            <node concept="3K4zz7" id="2JMLIMxOaaK" role="WxPPp">
                              <node concept="2OqwBi" id="2JMLIMxOaaL" role="3K4GZi">
                                <node concept="2zIEM7" id="2JMLIMxOaaM" role="2Oq$k0" />
                                <node concept="3TrcHB" id="2JMLIMxObVs" role="2OqNvi">
                                  <ref role="3TsBF5" to="53d4:31sbKqyPMf9" resolve="y" />
                                </node>
                              </node>
                              <node concept="2275Hy" id="2JMLIMxOaaO" role="3K4Cdx">
                                <ref role="37wK5l" node="2JMLIMxNNfW" resolve="writeLayout" />
                              </node>
                              <node concept="2OqwBi" id="2JMLIMxOaaP" role="3K4E3e">
                                <node concept="1y4W85" id="2JMLIMxOaaQ" role="2Oq$k0">
                                  <node concept="37vLTw" id="2JMLIMxOaaR" role="1y58nS">
                                    <ref role="3cqZAo" node="1XnM_rfLNKQ" resolve="i" />
                                  </node>
                                  <node concept="1SfVH9" id="2JMLIMxOaaS" role="1y566C">
                                    <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                                  </node>
                                </node>
                                <node concept="2$Gk$L" id="2JMLIMxOaaT" role="2OqNvi">
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
                <node concept="3eOVzh" id="1XnM_rfLPpv" role="1Dwp0S">
                  <node concept="2OqwBi" id="1XnM_rfLRgu" role="3uHU7w">
                    <node concept="1SfVH9" id="1XnM_rfLPI8" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                    </node>
                    <node concept="34oBXx" id="1XnM_rfLZsw" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="1XnM_rfLOm6" role="3uHU7B">
                    <ref role="3cqZAo" node="1XnM_rfLNKQ" resolve="i" />
                  </node>
                </node>
                <node concept="3uNrnE" id="1XnM_rfLVX$" role="1Dwrff">
                  <node concept="37vLTw" id="1XnM_rfLVXA" role="2$L3a6">
                    <ref role="3cqZAo" node="1XnM_rfLNKQ" resolve="i" />
                  </node>
                </node>
              </node>
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
    <node concept="3tBE6w" id="98RYWvG7Td" role="1FPzNG">
      <node concept="9aQIb" id="2JMLIMy5VcV" role="30jUnX">
        <node concept="3clFbS" id="2JMLIMy5VcW" role="9aQI4">
          <node concept="3cpWs8" id="2JMLIMy5W6f" role="3cqZAp">
            <node concept="3cpWsn" id="2JMLIMy5W6g" role="3cpWs9">
              <property role="TrG5h" value="points" />
              <node concept="2OqwBi" id="2JMLIMy63Mz" role="33vP2m">
                <node concept="2OqwBi" id="2JMLIMy5W6h" role="2Oq$k0">
                  <node concept="2OqwBi" id="2JMLIMy5W6i" role="2Oq$k0">
                    <node concept="3Tsc0h" id="2JMLIMy5W6j" role="2OqNvi">
                      <ref role="3TtcxE" to="53d4:31sbKqyPMf4" resolve="joints" />
                    </node>
                    <node concept="1SfVH9" id="2JMLIMy5W6k" role="2Oq$k0">
                      <ref role="3cqZAo" node="2CQk7M4lA0g" resolve="layout" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="2JMLIMy5W6l" role="2OqNvi">
                    <ref role="13MTZf" node="76DRFzMe15v" resolve="position" />
                  </node>
                </node>
                <node concept="ANE8D" id="2JMLIMy65eN" role="2OqNvi" />
              </node>
              <node concept="_YKpA" id="2JMLIMy65Op" role="1tU5fm">
                <node concept="3LmiP1" id="2JMLIMy66cm" role="_ZDj9">
                  <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5PYZXoyfG8l" role="3cqZAp">
            <node concept="3clFbS" id="5PYZXoyfG8n" role="3clFbx">
              <node concept="3clFbF" id="5PYZXoyfGzh" role="3cqZAp">
                <node concept="E34o$" id="5PYZXoyfHBk" role="3clFbG">
                  <node concept="1SfVH9" id="5PYZXoyfGzf" role="37vLTJ">
                    <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                  </node>
                  <node concept="37vLTw" id="2JMLIMy5W6m" role="37vLTx">
                    <ref role="3cqZAo" node="2JMLIMy5W6g" resolve="seq" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2275Hy" id="2JMLIMxNQ18" role="3clFbw">
              <ref role="37wK5l" node="2JMLIMxNNfL" resolve="readLayout" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="2JMLIMxNNfL" role="1FPzNG">
      <property role="TrG5h" value="readLayout" />
      <node concept="3Tm1VV" id="2JMLIMxNNfM" role="1B3o_S" />
      <node concept="3clFbS" id="2JMLIMxNNfN" role="3clF47">
        <node concept="3clFbF" id="2JMLIMxNNfO" role="3cqZAp">
          <node concept="1Wc70l" id="6QF1CPNYFAg" role="3clFbG">
            <node concept="1Wc70l" id="2JMLIMxNR8L" role="3uHU7B">
              <node concept="3fqX7Q" id="2JMLIMxNTZV" role="3uHU7w">
                <node concept="3J2VuX" id="2JMLIMxNTZX" role="3fr31v">
                  <node concept="1SfVH9" id="2JMLIMxNTZY" role="3J2yhu">
                    <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="5PYZXoyfGhn" role="3uHU7B">
                <node concept="1SfVH9" id="5PYZXoyfGjO" role="3fr31v">
                  <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2JMLIMxNXQs" role="3uHU7w">
              <node concept="1eOMI4" id="2JMLIMxNXQu" role="3fr31v">
                <node concept="1Wc70l" id="2JMLIMxNXQv" role="1eOMHV">
                  <node concept="17R0WA" id="2JMLIMxNYbI" role="3uHU7B">
                    <node concept="1SfVH9" id="2JMLIMxNXQx" role="3uHU7B">
                      <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                    </node>
                    <node concept="1SfVH9" id="2JMLIMxNXQy" role="3uHU7w">
                      <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="2JMLIMxNYEx" role="3uHU7w">
                    <node concept="2OqwBi" id="2JMLIMxNYEz" role="3fr31v">
                      <node concept="1SfVH9" id="2JMLIMxNYE$" role="2Oq$k0">
                        <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                      </node>
                      <node concept="2$Gk$L" id="2JMLIMxNYE_" role="2OqNvi">
                        <ref role="37wK5l" node="2JMLIMxN7yu" resolve="readLayout" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2JMLIMxNNfV" role="3clF45" />
    </node>
    <node concept="kUGYC" id="2JMLIMxNNfW" role="1FPzNG">
      <property role="TrG5h" value="writeLayout" />
      <node concept="3Tm1VV" id="2JMLIMxNNfX" role="1B3o_S" />
      <node concept="3clFbS" id="2JMLIMxNNfY" role="3clF47">
        <node concept="3clFbF" id="2JMLIMxNNfZ" role="3cqZAp">
          <node concept="1Wc70l" id="2JMLIMxNZzH" role="3clFbG">
            <node concept="3fqX7Q" id="2JMLIMxNNg0" role="3uHU7B">
              <node concept="1SfVH9" id="2JMLIMxNNg1" role="3fr31v">
                <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
              </node>
            </node>
            <node concept="3fqX7Q" id="2JMLIMxNZPx" role="3uHU7w">
              <node concept="1eOMI4" id="2JMLIMxNZPy" role="3fr31v">
                <node concept="1Wc70l" id="2JMLIMxNZPz" role="1eOMHV">
                  <node concept="17R0WA" id="2JMLIMxNZP$" role="3uHU7B">
                    <node concept="1SfVH9" id="2JMLIMxNZP_" role="3uHU7B">
                      <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                    </node>
                    <node concept="1SfVH9" id="2JMLIMxNZPA" role="3uHU7w">
                      <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="2JMLIMxNZPB" role="3uHU7w">
                    <node concept="2OqwBi" id="2JMLIMxNZPC" role="3fr31v">
                      <node concept="1SfVH9" id="2JMLIMxNZPD" role="2Oq$k0">
                        <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                      </node>
                      <node concept="2$Gk$L" id="2JMLIMxNZPE" role="2OqNvi">
                        <ref role="37wK5l" node="2JMLIMxNsp_" resolve="writeLayout" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2JMLIMxNNg2" role="3clF45" />
    </node>
    <node concept="1FPxxo" id="t2PHHwaNiy" role="1FPzNG" />
    <node concept="1FHQIZ" id="6n0pva780hi" role="1FPzNG">
      <property role="1FHQIO" value="Move joins along when connecting same node" />
    </node>
    <node concept="32q3_s" id="t2PHHwaVaF" role="1FPzNG">
      <property role="TrG5h" value="dragStartJoints" />
      <property role="KodbT" value="true" />
      <property role="2dyzOE" value="true" />
      <node concept="_YKpA" id="t2PHHwaVaG" role="1tU5fm">
        <node concept="3LmiP1" id="t2PHHwaVaH" role="_ZDj9">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="10Nm6u" id="t2PHHwbcyL" role="33vP2m" />
    </node>
    <node concept="3tBE6w" id="t2PHHw64Iz" role="1FPzNG">
      <node concept="3clFbJ" id="t2PHHw67ZO" role="30jUnX">
        <node concept="1Wc70l" id="6QF1CPNx2HY" role="3clFbw">
          <node concept="1Wc70l" id="t2PHHw6aXf" role="3uHU7B">
            <node concept="17R0WA" id="t2PHHw69rt" role="3uHU7B">
              <node concept="1SfVH9" id="t2PHHw68FA" role="3uHU7B">
                <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
              </node>
              <node concept="1SfVH9" id="t2PHHw6a4D" role="3uHU7w">
                <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
              </node>
            </node>
            <node concept="2OqwBi" id="t2PHHw6cl3" role="3uHU7w">
              <node concept="1SfVH9" id="t2PHHw6bC6" role="2Oq$k0">
                <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
              </node>
              <node concept="32jkxy" id="t2PHHw6dsf" role="2OqNvi">
                <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6QF1CPNx3cy" role="3uHU7w">
            <node concept="10Nm6u" id="6QF1CPNx3cz" role="3uHU7w" />
            <node concept="1SfVH9" id="6QF1CPNx3c$" role="3uHU7B">
              <ref role="3cqZAo" node="t2PHHwaVaF" resolve="dragStartJoints" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="t2PHHw67ZQ" role="3clFbx">
          <node concept="3cpWs8" id="t2PHHwbQha" role="3cqZAp">
            <node concept="3cpWsn" id="t2PHHwbQhb" role="3cpWs9">
              <property role="TrG5h" value="delta" />
              <node concept="3LmiP1" id="t2PHHwbQ3n" role="1tU5fm">
                <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
              </node>
              <node concept="2OqwBi" id="t2PHHwbQhh" role="33vP2m">
                <node concept="2OqwBi" id="t2PHHwbQhi" role="2Oq$k0">
                  <node concept="2OqwBi" id="t2PHHwbQhj" role="2Oq$k0">
                    <node concept="1SfVH9" id="t2PHHwbQhk" role="2Oq$k0">
                      <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                    </node>
                    <node concept="32jkxy" id="t2PHHwbQhl" role="2OqNvi">
                      <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                    </node>
                  </node>
                  <node concept="32jkxy" id="t2PHHwbQhm" role="2OqNvi">
                    <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                  </node>
                </node>
                <node concept="2$Gk$L" id="t2PHHwbQhn" role="2OqNvi">
                  <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                  <node concept="2OqwBi" id="t2PHHwbQho" role="37wK5m">
                    <node concept="1SfVH9" id="t2PHHwbQhp" role="2Oq$k0">
                      <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                    </node>
                    <node concept="32jkxy" id="t2PHHwbQhq" role="2OqNvi">
                      <ref role="3cqZAo" node="2ihDbyJQukV" resolve="dragStartMousePosition" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="t2PHHw6EpQ" role="3cqZAp">
            <node concept="E34o$" id="t2PHHw6KM2" role="3clFbG">
              <node concept="1SfVH9" id="t2PHHw6EpP" role="37vLTJ">
                <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
              </node>
              <node concept="2OqwBi" id="t2PHHwb$o6" role="37vLTx">
                <node concept="1SfVH9" id="t2PHHwbmTP" role="2Oq$k0">
                  <ref role="3cqZAo" node="t2PHHwaVaF" resolve="dragStartJoints" />
                </node>
                <node concept="3$u5V9" id="t2PHHwbC0f" role="2OqNvi">
                  <node concept="1bVj0M" id="t2PHHwbC0h" role="23t8la">
                    <node concept="3clFbS" id="t2PHHwbC0i" role="1bW5cS">
                      <node concept="3clFbF" id="t2PHHwbCnF" role="3cqZAp">
                        <node concept="2OqwBi" id="t2PHHwbCvq" role="3clFbG">
                          <node concept="37vLTw" id="t2PHHwbCnE" role="2Oq$k0">
                            <ref role="3cqZAo" node="t2PHHwbC0j" resolve="j" />
                          </node>
                          <node concept="2$Gk$L" id="t2PHHwbDar" role="2OqNvi">
                            <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
                            <node concept="37vLTw" id="t2PHHwbRQ$" role="37wK5m">
                              <ref role="3cqZAo" node="t2PHHwbQhb" resolve="delta" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="t2PHHwbC0j" role="1bW2Oz">
                      <property role="TrG5h" value="j" />
                      <node concept="2jxLKc" id="t2PHHwbC0k" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="t2PHHwaGcK" role="1FPzNG">
      <node concept="3clFbJ" id="t2PHHwaGcL" role="30jUnX">
        <node concept="3clFbS" id="t2PHHwaGcM" role="3clFbx">
          <node concept="3clFbF" id="t2PHHwbfMz" role="3cqZAp">
            <node concept="E34o$" id="t2PHHwbl4J" role="3clFbG">
              <node concept="1SfVH9" id="t2PHHwbl4M" role="37vLTJ">
                <ref role="3cqZAo" node="t2PHHwaVaF" resolve="dragStartJoints" />
              </node>
              <node concept="1SfVH9" id="t2PHHwbl4L" role="37vLTx">
                <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="t2PHHwaGec" role="3clFbw">
          <node concept="3clFbC" id="t2PHHwaGed" role="3uHU7w">
            <node concept="10Nm6u" id="t2PHHwaGee" role="3uHU7w" />
            <node concept="1SfVH9" id="t2PHHwaGef" role="3uHU7B">
              <ref role="3cqZAo" node="t2PHHwaVaF" resolve="dragStartJoints" />
            </node>
          </node>
          <node concept="1Wc70l" id="t2PHHwaGeg" role="3uHU7B">
            <node concept="1Wc70l" id="t2PHHwaOZr" role="3uHU7B">
              <node concept="2OqwBi" id="t2PHHwbhse" role="3uHU7w">
                <node concept="1SfVH9" id="t2PHHwaGeh" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                </node>
                <node concept="32jkxy" id="t2PHHwbi5K" role="2OqNvi">
                  <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
                </node>
              </node>
              <node concept="17R0WA" id="t2PHHwaPax" role="3uHU7B">
                <node concept="1SfVH9" id="t2PHHwaPay" role="3uHU7B">
                  <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                </node>
                <node concept="1SfVH9" id="t2PHHwaPaz" role="3uHU7w">
                  <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
                </node>
              </node>
            </node>
            <node concept="3J2VuX" id="t2PHHwaGei" role="3uHU7w">
              <node concept="3fqX7Q" id="t2PHHwaGej" role="3J2yhu">
                <node concept="2OqwBi" id="t2PHHwbiph" role="3fr31v">
                  <node concept="1SfVH9" id="t2PHHwaGek" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                  </node>
                  <node concept="32jkxy" id="t2PHHwbiK5" role="2OqNvi">
                    <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="t2PHHwaGel" role="1FPzNG">
      <node concept="3clFbJ" id="t2PHHwaGem" role="30jUnX">
        <node concept="3clFbS" id="t2PHHwaGen" role="3clFbx">
          <node concept="3clFbF" id="2JMLIMxV0eP" role="3cqZAp">
            <node concept="E34o$" id="2JMLIMxV1sC" role="3clFbG">
              <node concept="2OqwBi" id="2JMLIMxV23v" role="37vLTx">
                <node concept="1SfVH9" id="2JMLIMxV1J0" role="2Oq$k0">
                  <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                </node>
                <node concept="3$u5V9" id="2JMLIMxV73X" role="2OqNvi">
                  <node concept="1bVj0M" id="2JMLIMxV73Z" role="23t8la">
                    <node concept="3clFbS" id="2JMLIMxV740" role="1bW5cS">
                      <node concept="3clFbF" id="2JMLIMxV7lO" role="3cqZAp">
                        <node concept="2OqwBi" id="2JMLIMxV7sD" role="3clFbG">
                          <node concept="37vLTw" id="2JMLIMxV7lN" role="2Oq$k0">
                            <ref role="3cqZAo" node="2JMLIMxV741" resolve="j" />
                          </node>
                          <node concept="2$Gk$L" id="2JMLIMxV7RZ" role="2OqNvi">
                            <ref role="37wK5l" node="10mRasGA8ci" resolve="snap" />
                            <node concept="3cmrfG" id="2JMLIMxV8f_" role="37wK5m">
                              <property role="3cmrfH" value="20" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2JMLIMxV741" role="1bW2Oz">
                      <property role="TrG5h" value="j" />
                      <node concept="2jxLKc" id="2JMLIMxV742" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1SfVH9" id="2JMLIMxV0eN" role="37vLTJ">
                <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="t2PHHwaGfq" role="3cqZAp">
            <node concept="E34o$" id="t2PHHwaGfr" role="3clFbG">
              <node concept="10Nm6u" id="t2PHHwaGfs" role="37vLTx" />
              <node concept="1SfVH9" id="t2PHHwaGft" role="37vLTJ">
                <ref role="3cqZAo" node="t2PHHwaVaF" resolve="dragStartJoints" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="t2PHHwaGfu" role="3clFbw">
          <node concept="3y3z36" id="t2PHHwaGfv" role="3uHU7w">
            <node concept="10Nm6u" id="t2PHHwaGfw" role="3uHU7w" />
            <node concept="1SfVH9" id="t2PHHwaGfx" role="3uHU7B">
              <ref role="3cqZAo" node="t2PHHwaVaF" resolve="dragStartJoints" />
            </node>
          </node>
          <node concept="1Wc70l" id="t2PHHwaGfy" role="3uHU7B">
            <node concept="1Wc70l" id="t2PHHwaPq0" role="3uHU7B">
              <node concept="3fqX7Q" id="t2PHHwaGfz" role="3uHU7w">
                <node concept="2OqwBi" id="t2PHHwbk4E" role="3fr31v">
                  <node concept="1SfVH9" id="t2PHHwaGf$" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                  </node>
                  <node concept="32jkxy" id="t2PHHwbkAO" role="2OqNvi">
                    <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
                  </node>
                </node>
              </node>
              <node concept="17R0WA" id="t2PHHwaPDL" role="3uHU7B">
                <node concept="1SfVH9" id="t2PHHwaPDM" role="3uHU7B">
                  <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                </node>
                <node concept="1SfVH9" id="t2PHHwaPDN" role="3uHU7w">
                  <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
                </node>
              </node>
            </node>
            <node concept="3J2VuX" id="t2PHHwaGf_" role="3uHU7w">
              <node concept="2OqwBi" id="t2PHHwbjfa" role="3J2yhu">
                <node concept="1SfVH9" id="t2PHHwaGfA" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                </node>
                <node concept="32jkxy" id="t2PHHwbj_V" role="2OqNvi">
                  <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1FPxxo" id="t2PHHwaFdc" role="1FPzNG" />
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
      <node concept="3clFbF" id="jOUPYysjQF" role="30jUnX">
        <node concept="E34o$" id="jOUPYysk9$" role="3clFbG">
          <node concept="1SfVH9" id="jOUPYysjQE" role="37vLTJ">
            <ref role="3cqZAo" node="10mRasGpZJ8" resolve="beginPoint" />
          </node>
          <node concept="2275Hy" id="5PYZXoylbGI" role="37vLTx">
            <ref role="37wK5l" node="5PYZXoyl51T" resolve="beginDPoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="5m3fza4mgiL" role="1FPzNG">
      <node concept="3clFbF" id="jOUPYyslmT" role="30jUnX">
        <node concept="E34o$" id="5m3fza4mlg6" role="3clFbG">
          <node concept="1SfVH9" id="5m3fza4mkvc" role="37vLTJ">
            <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
          </node>
          <node concept="2275Hy" id="5PYZXoylbUS" role="37vLTx">
            <ref role="37wK5l" node="5PYZXoyl6CI" resolve="endPoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="5PYZXoyl51T" role="1FPzNG">
      <property role="TrG5h" value="beginPoint" />
      <node concept="3Tm1VV" id="5PYZXoyl51U" role="1B3o_S" />
      <node concept="3clFbS" id="5PYZXoyl51V" role="3clF47">
        <node concept="3clFbF" id="5PYZXoyl8zV" role="3cqZAp">
          <node concept="2OqwBi" id="jOUPYysi6L" role="3clFbG">
            <node concept="1SfVH9" id="jOUPYysi6M" role="2Oq$k0">
              <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
            </node>
            <node concept="2$Gk$L" id="jOUPYysi6N" role="2OqNvi">
              <ref role="37wK5l" node="3OZjsowvM5f" resolve="intersection" />
              <node concept="3K4zz7" id="jOUPYysi6O" role="37wK5m">
                <node concept="1SfVH9" id="jOUPYysi6P" role="3K4E3e">
                  <ref role="3cqZAo" node="2ihDbyJWVEx" resolve="firstJoint" />
                </node>
                <node concept="3y3z36" id="jOUPYysi6Q" role="3K4Cdx">
                  <node concept="10Nm6u" id="jOUPYysi6R" role="3uHU7w" />
                  <node concept="1SfVH9" id="jOUPYysi6S" role="3uHU7B">
                    <ref role="3cqZAo" node="2ihDbyJWVEx" resolve="firstJoint" />
                  </node>
                </node>
                <node concept="2OqwBi" id="jOUPYysi6T" role="3K4GZi">
                  <node concept="1SfVH9" id="jOUPYysi6U" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
                  </node>
                  <node concept="32jkxy" id="jOUPYysi6V" role="2OqNvi">
                    <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3LmiP1" id="5PYZXoyl5A_" role="3clF45">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="kUGYC" id="5PYZXoyl6CI" role="1FPzNG">
      <property role="TrG5h" value="endPoint" />
      <node concept="3Tm1VV" id="5PYZXoyl6CJ" role="1B3o_S" />
      <node concept="3clFbS" id="5PYZXoyl6CK" role="3clF47">
        <node concept="3clFbF" id="5PYZXoyl7Rh" role="3cqZAp">
          <node concept="2OqwBi" id="5m3fza4mmIv" role="3clFbG">
            <node concept="1SfVH9" id="5m3fza4mlTt" role="2Oq$k0">
              <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
            </node>
            <node concept="2$Gk$L" id="5m3fza4mnvV" role="2OqNvi">
              <ref role="37wK5l" node="3OZjsowvM5f" resolve="intersection" />
              <node concept="3K4zz7" id="5m3fza4mqcC" role="37wK5m">
                <node concept="1SfVH9" id="5m3fza4mqZ$" role="3K4E3e">
                  <ref role="3cqZAo" node="1bLYJ3eERnI" resolve="lastJoint" />
                </node>
                <node concept="3y3z36" id="5m3fza4mp4R" role="3K4Cdx">
                  <node concept="10Nm6u" id="5m3fza4mq6X" role="3uHU7w" />
                  <node concept="1SfVH9" id="5m3fza4modh" role="3uHU7B">
                    <ref role="3cqZAo" node="1bLYJ3eERnI" resolve="lastJoint" />
                  </node>
                </node>
                <node concept="2OqwBi" id="jOUPYyeVZa" role="3K4GZi">
                  <node concept="32jkxy" id="jOUPYyeVZc" role="2OqNvi">
                    <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                  </node>
                  <node concept="1SfVH9" id="jOUPYyeX3X" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3LmiP1" id="5PYZXoyl7em" role="3clF45">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
  </node>
  <node concept="2UJ2oG" id="3OZjsowr30i">
    <property role="3GE5qa" value="diagrams" />
    <property role="TrG5h" value="DDiagramCanvas" />
    <node concept="32q3_s" id="3OZjsowr3$L" role="2UJ2y3">
      <property role="TrG5h" value="iDiagram" />
      <node concept="3Tqbb2" id="3OZjsowr3_S" role="1tU5fm">
        <ref role="ehGHo" to="53d4:3psr82$eZ54" resolve="IDiagram" />
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
              <ref role="13MTZf" node="3OZjsowsF15" resolve="max" />
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
              <ref role="13MTZf" node="3OZjsowsF15" resolve="max" />
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
      <node concept="3cpWs3" id="4OSO3Ox_3wt" role="33vP2m">
        <node concept="3b6qkQ" id="4OSO3Ox_4SX" role="3uHU7w">
          <property role="$nhwW" value="80.0" />
        </node>
        <node concept="2OqwBi" id="2Jp98iqf1Af" role="3uHU7B">
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
    </node>
    <node concept="32q3_s" id="3OZjsowr7Xq" role="1FPzNG">
      <property role="TrG5h" value="maxY" />
      <node concept="10P55v" id="3OZjsowr7Xr" role="1tU5fm" />
      <node concept="3cpWs3" id="4OSO3OxBcXK" role="33vP2m">
        <node concept="3b6qkQ" id="4OSO3OxBec1" role="3uHU7w">
          <property role="$nhwW" value="10.0" />
        </node>
        <node concept="2OqwBi" id="3OZjsowr7Xs" role="3uHU7B">
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
                  <property role="$nhwW" value="50.0d" />
                </node>
                <node concept="17qRlL" id="6FHmkWM5Wpd" role="3uHU7B">
                  <node concept="1SfVH9" id="6FHmkWM5WDB" role="3uHU7w">
                    <ref role="3cqZAo" node="6FHmkWMhQ2O" resolve="scale" />
                  </node>
                  <node concept="1SfVH9" id="6E86S2ANfWs" role="3uHU7B">
                    <ref role="3cqZAo" node="6E86S2AMKGx" resolve="maxX" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Pygp_" id="6E86S2AMue2" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGY55" resolve="height" />
              <node concept="3cpWs3" id="6E86S2AMInV" role="2PygpA">
                <node concept="3b6qkQ" id="6E86S2AMJcL" role="3uHU7w">
                  <property role="$nhwW" value="50.0d" />
                </node>
                <node concept="17qRlL" id="6FHmkWM5WU8" role="3uHU7B">
                  <node concept="1SfVH9" id="6FHmkWM5X9J" role="3uHU7w">
                    <ref role="3cqZAo" node="6FHmkWMhQ2O" resolve="scale" />
                  </node>
                  <node concept="1SfVH9" id="2Jp98iqfg0s" role="3uHU7B">
                    <ref role="3cqZAo" node="3OZjsowr7Xq" resolve="maxY" />
                  </node>
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
    <node concept="3tBE6w" id="72ibaoqQOD9" role="1FPzNG">
      <node concept="3clFbF" id="72ibaoqQPVE" role="30jUnX">
        <node concept="E34o$" id="72ibaoqQQp5" role="3clFbG">
          <node concept="1SfVH9" id="72ibaoqQQHf" role="37vLTx">
            <ref role="3cqZAo" node="46vl3mDwqIr" resolve="preferredSize" />
          </node>
          <node concept="1SfVH9" id="72ibaoqQPVD" role="37vLTJ">
            <ref role="3cqZAo" node="46vl3mDwqLd" resolve="size" />
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
                <ref role="3cqZAo" node="3OZjsowr3$L" resolve="iDiagram" />
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
  <node concept="311c5q" id="AO_ohtsby$">
    <property role="3GE5qa" value="gui" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <ref role="311c5K" to="53d4:3psr82$c6ii" resolve="IEditor" />
    <node concept="32q3_s" id="4Oa6zNZz9Lj" role="1FPzNG">
      <property role="TrG5h" value="canvas" />
      <property role="3K1B09" value="true" />
      <property role="KodbT" value="true" />
      <node concept="3LmiP1" id="4Oa6zNZz9Mp" role="1tU5fm">
        <ref role="2XDbjv" node="skgx$J4Z32" resolve="DCanvas" />
      </node>
    </node>
    <node concept="32q3_s" id="Vg5FswJWWZ" role="1FPzNG">
      <property role="TrG5h" value="dPanel" />
      <property role="1incD5" value="true" />
      <property role="KodbT" value="true" />
      <node concept="3uibUv" id="Vg5FswJX0b" role="1tU5fm">
        <ref role="3uigEE" to="u4ym:5uiQOXmFP5Y" resolve="DPanel" />
      </node>
      <node concept="2EnYce" id="AO_oht9lJL" role="33vP2m">
        <node concept="1SfVH9" id="Vg5FswWC4s" role="2Oq$k0">
          <ref role="3cqZAo" node="4Oa6zNZz9Lj" resolve="canvas" />
        </node>
        <node concept="32jkxy" id="Vg5Fsx9$Ap" role="2OqNvi">
          <ref role="3cqZAo" node="QwQmtNmQS8" resolve="dPanel" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2kRpT$EVI8Z" role="1FPzNG">
      <property role="TrG5h" value="editorHints" />
      <property role="KodbT" value="true" />
      <node concept="10Q1$e" id="AO_oht8MCL" role="1tU5fm">
        <node concept="17QB3L" id="AO_oht8Mli" role="10Q1$1" />
      </node>
    </node>
    <node concept="32q3_s" id="6FHmkWL2D0Z" role="1FPzNG">
      <property role="TrG5h" value="defaultFont" />
      <property role="KodbT" value="true" />
      <node concept="3uibUv" id="6FHmkWL2E9m" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
      </node>
    </node>
    <node concept="32q3_s" id="6FHmkWL3wP0" role="1FPzNG">
      <property role="TrG5h" value="scaledFont" />
      <property role="KodbT" value="true" />
      <node concept="3uibUv" id="6FHmkWL3wP1" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
      </node>
    </node>
    <node concept="32q3_s" id="AO_ohtcfNz" role="1FPzNG">
      <property role="TrG5h" value="viewed" />
      <property role="2dyzOE" value="true" />
      <node concept="10P_77" id="AO_ohtcgoJ" role="1tU5fm" />
      <node concept="3clFbT" id="AO_ohtclGs" role="33vP2m" />
    </node>
    <node concept="kUGYC" id="6FHmkWK66ey" role="1FPzNG">
      <property role="TrG5h" value="init" />
      <property role="2BgUI5" value="true" />
      <node concept="37vLTG" id="6FHmkWK67nY" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="6FHmkWK67nZ" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6FHmkWK66ez" role="1B3o_S" />
      <node concept="3clFbS" id="6FHmkWK66e$" role="3clF47">
        <node concept="3clFbF" id="6FHmkWL2MwE" role="3cqZAp">
          <node concept="E34o$" id="6FHmkWL2MTk" role="3clFbG">
            <node concept="1SfVH9" id="6FHmkWL2MwC" role="37vLTJ">
              <ref role="3cqZAo" node="6FHmkWL2D0Z" resolve="defaultSettings" />
            </node>
            <node concept="2OqwBi" id="6FHmkWL3pjK" role="37vLTx">
              <node concept="10M0yZ" id="6FHmkWL2_mc" role="2Oq$k0">
                <ref role="3cqZAo" to="exr9:~EditorComponentSettingsImpl.DEFAULT_SETTINGS" resolve="DEFAULT_SETTINGS" />
                <ref role="1PxDUh" to="exr9:~EditorComponentSettingsImpl" resolve="EditorComponentSettingsImpl" />
              </node>
              <node concept="liA8E" id="6FHmkWL3qB4" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorComponentSettings.getDefaultFont()" resolve="getDefaultFont" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6FHmkWK67YK" role="3cqZAp">
          <node concept="3cpWsn" id="6FHmkWK67YL" role="3cpWs9">
            <property role="TrG5h" value="editorComponent" />
            <node concept="3uibUv" id="6FHmkWK67YM" role="1tU5fm">
              <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="2OqwBi" id="6FHmkWK67YN" role="33vP2m">
              <node concept="37vLTw" id="6FHmkWK67YO" role="2Oq$k0">
                <ref role="3cqZAo" node="6FHmkWK67nY" resolve="editorContext" />
              </node>
              <node concept="liA8E" id="6FHmkWK67YP" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6FHmkWK689Z" role="3cqZAp">
          <node concept="3cpWsn" id="6FHmkWK68a0" role="3cpWs9">
            <property role="TrG5h" value="currentUpdateSession" />
            <node concept="3uibUv" id="6FHmkWK68a1" role="1tU5fm">
              <ref role="3uigEE" to="22ra:~UpdateSession" resolve="UpdateSession" />
            </node>
            <node concept="2OqwBi" id="6FHmkWK68a2" role="33vP2m">
              <node concept="2OqwBi" id="6FHmkWK68a3" role="2Oq$k0">
                <node concept="37vLTw" id="6FHmkWK68a4" role="2Oq$k0">
                  <ref role="3cqZAo" node="6FHmkWK67YL" resolve="editorComponent" />
                </node>
                <node concept="liA8E" id="6FHmkWK68a5" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorComponent.getUpdater()" resolve="getUpdater" />
                </node>
              </node>
              <node concept="liA8E" id="6FHmkWK68a6" role="2OqNvi">
                <ref role="37wK5l" to="22ra:~Updater.getCurrentUpdateSession()" resolve="getCurrentUpdateSession" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6FHmkWK68n2" role="3cqZAp">
          <node concept="3cpWsn" id="6FHmkWK68n3" role="3cpWs9">
            <property role="TrG5h" value="hints" />
            <node concept="3uibUv" id="6FHmkWK68n4" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
              <node concept="3uibUv" id="6FHmkWK68n5" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2OqwBi" id="6FHmkWK68n6" role="33vP2m">
              <node concept="2OqwBi" id="6FHmkWK68n7" role="2Oq$k0">
                <node concept="2OqwBi" id="6FHmkWK68n8" role="2Oq$k0">
                  <node concept="37vLTw" id="6FHmkWK68n9" role="2Oq$k0">
                    <ref role="3cqZAo" node="6FHmkWK68a0" resolve="currentUpdateSession" />
                  </node>
                  <node concept="liA8E" id="6FHmkWK68na" role="2OqNvi">
                    <ref role="37wK5l" to="22ra:~UpdateSession.getCellFactory()" resolve="getCellFactory" />
                  </node>
                </node>
                <node concept="liA8E" id="6FHmkWK68nb" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCellFactory.getCellContext()" resolve="getCellContext" />
                </node>
              </node>
              <node concept="liA8E" id="6FHmkWK68nc" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCellContext.getHints()" resolve="getHints" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6FHmkWK690B" role="3cqZAp">
          <node concept="E34o$" id="6FHmkWK690C" role="3clFbG">
            <node concept="1SfVH9" id="6FHmkWK690D" role="37vLTJ">
              <ref role="3cqZAo" node="2kRpT$EVI8Z" resolve="editorHints" />
            </node>
            <node concept="2OqwBi" id="6FHmkWK690E" role="37vLTx">
              <node concept="37vLTw" id="6FHmkWK690F" role="2Oq$k0">
                <ref role="3cqZAo" node="6FHmkWK68n3" resolve="hints" />
              </node>
              <node concept="liA8E" id="6FHmkWK690G" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Collection.toArray(java.util.function.IntFunction)" resolve="toArray" />
                <node concept="1bVj0M" id="6FHmkWK690H" role="37wK5m">
                  <node concept="3clFbS" id="6FHmkWK690I" role="1bW5cS">
                    <node concept="3clFbF" id="6FHmkWK690J" role="3cqZAp">
                      <node concept="2ShNRf" id="6FHmkWK690K" role="3clFbG">
                        <node concept="3$_iS1" id="6FHmkWK690L" role="2ShVmc">
                          <node concept="3$GHV9" id="6FHmkWK690M" role="3$GQph">
                            <node concept="37vLTw" id="6FHmkWK690N" role="3$I4v7">
                              <ref role="3cqZAo" node="6FHmkWK690P" resolve="i" />
                            </node>
                          </node>
                          <node concept="17QB3L" id="6FHmkWK690O" role="3$_nBY" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="6FHmkWK690P" role="1bW2Oz">
                    <property role="TrG5h" value="i" />
                    <node concept="10Oyi0" id="6FHmkWK690Q" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6FHmkWK69Jo" role="3cqZAp">
          <node concept="E34o$" id="6FHmkWK69Jp" role="3clFbG">
            <node concept="3clFbT" id="6FHmkWK69Jq" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="1SfVH9" id="6FHmkWK69Jr" role="37vLTJ">
              <ref role="3cqZAo" node="AO_ohtcfNz" resolve="viewed" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6FHmkWK66Tu" role="3clF45" />
    </node>
    <node concept="kUGYC" id="7SMfHClgL6N" role="1FPzNG">
      <property role="2BgUI5" value="true" />
      <property role="TrG5h" value="update" />
      <node concept="37vLTG" id="AO_oht8$kM" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="AO_oht8$qi" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7SMfHClgL6O" role="1B3o_S" />
      <node concept="3clFbS" id="7SMfHClgL6P" role="3clF47">
        <node concept="3cpWs8" id="5rqqEQcuy_Y" role="3cqZAp">
          <node concept="3cpWsn" id="5rqqEQcuy_Z" role="3cpWs9">
            <property role="TrG5h" value="editorComponent" />
            <node concept="3uibUv" id="5rqqEQcuxOU" role="1tU5fm">
              <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="2OqwBi" id="5rqqEQcuyA0" role="33vP2m">
              <node concept="37vLTw" id="5rqqEQcuyA1" role="2Oq$k0">
                <ref role="3cqZAo" node="AO_oht8$kM" resolve="editorContext" />
              </node>
              <node concept="liA8E" id="5rqqEQcuyA2" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="35HVCqFKLkm" role="3cqZAp">
          <node concept="E34o$" id="35HVCqFKM06" role="3clFbG">
            <node concept="1SfVH9" id="35HVCqFKLkk" role="37vLTJ">
              <ref role="3cqZAo" node="6FHmkWL3wP0" resolve="scaledFont" />
            </node>
            <node concept="2OqwBi" id="6FHmkWL3DKe" role="37vLTx">
              <node concept="2OqwBi" id="35HVCqFKyiF" role="2Oq$k0">
                <node concept="liA8E" id="35HVCqFK_FH" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorComponent.getEditorComponentSettings()" resolve="getEditorComponentSettings" />
                </node>
                <node concept="37vLTw" id="35HVCqFKCqe" role="2Oq$k0">
                  <ref role="3cqZAo" node="5rqqEQcuy_Z" resolve="editorComponent" />
                </node>
              </node>
              <node concept="liA8E" id="6FHmkWL3ESx" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorComponentSettings.getDefaultFont()" resolve="getDefaultFont" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7SMfHClgT2x" role="3clF45" />
    </node>
    <node concept="3tBE6w" id="AO_ohtcPtY" role="1FPzNG">
      <node concept="3clFbJ" id="AO_ohtcQ2w" role="30jUnX">
        <node concept="3y3z36" id="AO_ohtcQKY" role="3clFbw">
          <node concept="10Nm6u" id="AO_ohtcR9y" role="3uHU7w" />
          <node concept="1SfVH9" id="AO_ohtcQlT" role="3uHU7B">
            <ref role="3cqZAo" node="4Oa6zNZz9Lj" resolve="canvas" />
          </node>
        </node>
        <node concept="3clFbS" id="AO_ohtcQ2y" role="3clFbx">
          <node concept="3clFbF" id="6FHmkWL3nqE" role="3cqZAp">
            <node concept="E34o$" id="6FHmkWL3nqF" role="3clFbG">
              <node concept="1SfVH9" id="6FHmkWL3nqH" role="37vLTx">
                <ref role="3cqZAo" node="6FHmkWL2D0Z" resolve="defaultFont" />
              </node>
              <node concept="2OqwBi" id="6FHmkWL3nqJ" role="37vLTJ">
                <node concept="1SfVH9" id="6FHmkWL3nqK" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Oa6zNZz9Lj" resolve="canvas" />
                </node>
                <node concept="32jkxy" id="6FHmkWL3nqL" role="2OqNvi">
                  <ref role="3cqZAo" node="6FHmkWKN04o" resolve="defaultFont" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="AO_ohtcTGB" role="3cqZAp">
            <node concept="E34o$" id="AO_ohtcVpF" role="3clFbG">
              <node concept="1SfVH9" id="AO_ohtcVIQ" role="37vLTx">
                <ref role="3cqZAo" node="2kRpT$EVI8Z" resolve="editorHints" />
              </node>
              <node concept="2OqwBi" id="AO_ohtcU5L" role="37vLTJ">
                <node concept="1SfVH9" id="AO_ohtcTGA" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Oa6zNZz9Lj" resolve="canvas" />
                </node>
                <node concept="32jkxy" id="AO_ohtcUD_" role="2OqNvi">
                  <ref role="3cqZAo" node="AO_ohtcSsj" resolve="editorHints" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="6FHmkWK9xry" role="1FPzNG">
      <node concept="3clFbJ" id="6FHmkWK9xrz" role="30jUnX">
        <node concept="3y3z36" id="6FHmkWK9xr$" role="3clFbw">
          <node concept="10Nm6u" id="6FHmkWK9xr_" role="3uHU7w" />
          <node concept="1SfVH9" id="6FHmkWK9xrA" role="3uHU7B">
            <ref role="3cqZAo" node="4Oa6zNZz9Lj" resolve="canvas" />
          </node>
        </node>
        <node concept="3clFbS" id="6FHmkWK9xrB" role="3clFbx">
          <node concept="3clFbF" id="6FHmkWK9xrI" role="3cqZAp">
            <node concept="E34o$" id="6FHmkWK9xrJ" role="3clFbG">
              <node concept="1SfVH9" id="6FHmkWK9xrK" role="37vLTx">
                <ref role="3cqZAo" node="6FHmkWL3wP0" resolve="scaledFont" />
              </node>
              <node concept="2OqwBi" id="6FHmkWK9xrL" role="37vLTJ">
                <node concept="1SfVH9" id="6FHmkWK9xrM" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Oa6zNZz9Lj" resolve="canvas" />
                </node>
                <node concept="32jkxy" id="6FHmkWK9xrN" role="2OqNvi">
                  <ref role="3cqZAo" node="6FHmkWL3dyy" resolve="scaledFont" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YshPJ" id="6_fOQ$Bh29y">
    <property role="3GE5qa" value="gui" />
    <property role="TrG5h" value="GUI" />
    <node concept="3clFbS" id="6_fOQ$Bh29z" role="1fEaI$">
      <node concept="3clFbF" id="6_fOQ$Bh29_" role="3cqZAp">
        <node concept="2OqwBi" id="6_fOQ$Bh2zk" role="3clFbG">
          <node concept="H4GO8" id="4CuBnhBfRGW" role="2Oq$k0" />
          <node concept="liA8E" id="6_fOQ$Bh43N" role="2OqNvi">
            <ref role="37wK5l" to="t4tl:~DClareMPS.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
            <node concept="1fE671" id="6_fOQ$Bh45s" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2Rb1jd" id="67eN9Qke_aX">
    <property role="TrG5h" value="CONCEPT_DIAGRAM" />
    <property role="3GE5qa" value="concept_diagram" />
    <property role="2bPw2W" value="true" />
    <node concept="2RaPxm" id="67eN9Qkfwk2" role="2RaPxw">
      <ref role="2RaPxn" node="3HJBHARsh6E" resolve="DIAGRAM" />
    </node>
  </node>
  <node concept="2UJ2oG" id="3HJBHARsh7U">
    <property role="3GE5qa" value="concept_diagram" />
    <property role="TrG5h" value="ConceptDiagramCanvas" />
    <node concept="2UJ2Q1" id="3HJBHARsh7X" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="3OZjsowr30i" resolve="DDiagramCanvas" />
    </node>
  </node>
  <node concept="2UJ2oG" id="3HJBHARtgyV">
    <property role="3GE5qa" value="concept_diagram" />
    <property role="TrG5h" value="ConceptRectangle" />
    <node concept="2UJ2Q1" id="1CjrrCKfpT6" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z4a" resolve="DRectangleShape" />
    </node>
    <node concept="2UJ2Q1" id="3HJBHARtgyY" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="3OZjsowptDc" resolve="DFilledNode" />
    </node>
  </node>
  <node concept="2UJ2oG" id="6YJvVULPUly">
    <property role="3GE5qa" value="concept_diagram" />
    <property role="TrG5h" value="ConceptSpecialisationLine" />
    <node concept="2UJ2Q1" id="6YJvVULPUlT" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="3OZjsowp$AG" resolve="DMultiLineEdge" />
    </node>
  </node>
  <node concept="311c5q" id="4Oa6zNZz9Li">
    <property role="3GE5qa" value="concept_diagram" />
    <ref role="311c5K" to="53d4:67eN9QkffP5" resolve="ConceptDiagram" />
    <ref role="2RaPBF" node="67eN9Qke_aX" resolve="CONCEPT_DIAGRAM" />
    <node concept="3tBE6w" id="1CjrrCKbRBn" role="1FPzNG">
      <node concept="3clFbF" id="1CjrrCKbT5A" role="30jUnX">
        <node concept="E34o$" id="1CjrrCKbTna" role="3clFbG">
          <node concept="1SfVH9" id="1CjrrCKbT5_" role="37vLTJ">
            <ref role="3cqZAo" node="4Oa6zNZz9Lj" resolve="canvas" />
          </node>
          <node concept="3K4zz7" id="3NjYK5XEdzv" role="37vLTx">
            <node concept="10Nm6u" id="3NjYK5XEeam" role="3K4GZi" />
            <node concept="1SfVH9" id="3NjYK5XEcNr" role="3K4Cdx">
              <ref role="3cqZAo" node="AO_ohtcfNz" resolve="viewed" />
            </node>
            <node concept="3KEV6E" id="1CjrrCKbT$i" role="3K4E3e">
              <ref role="2UJ2yc" node="3HJBHARsh7U" resolve="ClassDiagramCanvas" />
              <node concept="2Pygp_" id="1CjrrCKbT$j" role="2Pygpa">
                <ref role="2Pygpw" node="3OZjsowr3$L" resolve="iDiagram" />
                <node concept="2Wb9Zs" id="1CjrrCKbTNx" role="2PygpA" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2$yK5YK4RH1" role="1FPzNG">
      <property role="TrG5h" value="module" />
      <node concept="3uibUv" id="2$yK5YK4RGV" role="1tU5fm">
        <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
      </node>
      <node concept="2OqwBi" id="2$yK5YK4RGW" role="33vP2m">
        <node concept="2OqwBi" id="2$yK5YK4RGX" role="2Oq$k0">
          <node concept="2Wb9Zs" id="2$yK5YK4RGY" role="2Oq$k0" />
          <node concept="I4A8Y" id="2$yK5YK4RGZ" role="2OqNvi" />
        </node>
        <node concept="1j$Ddu" id="2$yK5YK4RH0" role="2OqNvi" />
      </node>
    </node>
    <node concept="3tBE6w" id="7aFw1sqrYDo" role="1FPzNG">
      <node concept="3clFbJ" id="7aFw1sqs0eJ" role="30jUnX">
        <node concept="3clFbS" id="7aFw1sqs0eL" role="3clFbx">
          <node concept="3clFbF" id="7aFw1sqs7Za" role="3cqZAp">
            <node concept="E34o$" id="7aFw1sqsawv" role="3clFbG">
              <node concept="2pJPEk" id="7aFw1sqsruM" role="37vLTx">
                <node concept="2pJPED" id="7aFw1sqssuS" role="2pJPEn">
                  <ref role="2pJxaS" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
                  <node concept="2pJxcG" id="7aFw1sqsuTl" role="2pJxcM">
                    <ref role="2pJxcJ" to="hypd:1AZH1sZHi4e" resolve="qualifiedName" />
                    <node concept="WxPPo" id="7aFw1sqsyLj" role="28ntcv">
                      <node concept="2OqwBi" id="7aFw1sqsIlg" role="WxPPp">
                        <node concept="1SfVH9" id="2$yK5YK4RH3" role="2Oq$k0">
                          <ref role="3cqZAo" node="2$yK5YK4RH1" />
                        </node>
                        <node concept="liA8E" id="7aFw1sqsLua" role="2OqNvi">
                          <ref role="37wK5l" to="t4tl:~DModule.getModuleName()" resolve="getModuleName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2pJxcG" id="7aFw1sqsxsM" role="2pJxcM">
                    <ref role="2pJxcJ" to="hypd:1AZH1sZHi4d" resolve="uuid" />
                    <node concept="2OqwBi" id="2BHFktfnm8n" role="28ntcv">
                      <node concept="2YIFZM" id="2BHFktfnm7_" role="2Oq$k0">
                        <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                        <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                      </node>
                      <node concept="liA8E" id="2BHFktfnmax" role="2OqNvi">
                        <ref role="37wK5l" to="dush:~PersistenceFacade.asString(org.jetbrains.mps.openapi.module.SModuleId)" resolve="asString" />
                        <node concept="2OqwBi" id="2BHFktfnmcm" role="37wK5m">
                          <node concept="liA8E" id="2BHFktfnmfG" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~DModule.getModuleId()" resolve="getModuleId" />
                          </node>
                          <node concept="1SfVH9" id="2$yK5YK4RH2" role="2Oq$k0">
                            <ref role="3cqZAo" node="2$yK5YK4RH1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7aFw1sqsoZP" role="37vLTJ">
                <node concept="2Wb9Zs" id="7aFw1sqsnHi" role="2Oq$k0" />
                <node concept="3TrEf2" id="7aFw1sqsql0" role="2OqNvi">
                  <ref role="3Tt5mk" to="53d4:7aFw1spS2SV" resolve="drawnModuleREf" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="22lmx$" id="7aFw1sqtdW2" role="3clFbw">
          <node concept="22lmx$" id="7aFw1sqsT89" role="3uHU7B">
            <node concept="3clFbC" id="7aFw1sqsjZi" role="3uHU7B">
              <node concept="2OqwBi" id="7aFw1sqseww" role="3uHU7B">
                <node concept="2Wb9Zs" id="7aFw1sqsd4_" role="2Oq$k0" />
                <node concept="3TrEf2" id="7aFw1sqsgk0" role="2OqNvi">
                  <ref role="3Tt5mk" to="53d4:7aFw1spS2SV" resolve="drawnModuleREf" />
                </node>
              </node>
              <node concept="10Nm6u" id="7aFw1sqslhF" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="7aFw1sqt5jF" role="3uHU7w">
              <node concept="2OqwBi" id="7aFw1sqt0Eg" role="2Oq$k0">
                <node concept="2OqwBi" id="7aFw1sqsWvp" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="7aFw1sqsULP" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7aFw1sqsYCh" role="2OqNvi">
                    <ref role="3Tt5mk" to="53d4:7aFw1spS2SV" resolve="drawnModuleREf" />
                  </node>
                </node>
                <node concept="3TrcHB" id="7aFw1sqt2IJ" role="2OqNvi">
                  <ref role="3TsBF5" to="hypd:1AZH1sZHi4e" resolve="qualifiedName" />
                </node>
              </node>
              <node concept="17RlXB" id="7aFw1sqt9GR" role="2OqNvi" />
            </node>
          </node>
          <node concept="2OqwBi" id="7aFw1sqtjna" role="3uHU7w">
            <node concept="2OqwBi" id="7aFw1sqtfAW" role="2Oq$k0">
              <node concept="2OqwBi" id="7aFw1sqtfAX" role="2Oq$k0">
                <node concept="2Wb9Zs" id="7aFw1sqtfAY" role="2Oq$k0" />
                <node concept="3TrEf2" id="7aFw1sqtfAZ" role="2OqNvi">
                  <ref role="3Tt5mk" to="53d4:7aFw1spS2SV" resolve="drawnModuleREf" />
                </node>
              </node>
              <node concept="3TrcHB" id="7aFw1sqtfB0" role="2OqNvi">
                <ref role="3TsBF5" to="hypd:1AZH1sZHi4d" resolve="uuid" />
              </node>
            </node>
            <node concept="17RlXB" id="7aFw1sqtnMd" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="7aFw1sqxL8C" role="1FPzNG">
      <property role="TrG5h" value="drawnModule" />
      <property role="KodbT" value="true" />
      <node concept="3uibUv" id="7aFw1sqxL8v" role="1tU5fm">
        <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
      </node>
      <node concept="2YIFZM" id="7aFw1sqFtxF" role="33vP2m">
        <ref role="37wK5l" to="u4ym:7aFw1sqCQKd" resolve="resolve" />
        <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
        <node concept="2OqwBi" id="7aFw1sqxL8x" role="37wK5m">
          <node concept="2OqwBi" id="7aFw1sqxL8y" role="2Oq$k0">
            <node concept="2Wb9Zs" id="7aFw1sqxL8z" role="2Oq$k0" />
            <node concept="3TrEf2" id="7aFw1sqxL8$" role="2OqNvi">
              <ref role="3Tt5mk" to="53d4:7aFw1spS2SV" resolve="drawnModuleREf" />
            </node>
          </node>
          <node concept="2qgKlT" id="7aFw1sqxL8_" role="2OqNvi">
            <ref role="37wK5l" to="wev6:2BHFktfnkjF" resolve="toModuleReference" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="7aFw1spOSDx" role="1FPzNG">
      <property role="TrG5h" value="drawnModel" />
      <property role="KodbT" value="true" />
      <node concept="H_c77" id="7aFw1spOSDt" role="1tU5fm" />
      <node concept="2EnYce" id="2$yK5YKlAo1" role="33vP2m">
        <node concept="2EnYce" id="2$yK5YKlz6Q" role="2Oq$k0">
          <node concept="1SfVH9" id="7aFw1sqxL8D" role="2Oq$k0">
            <ref role="3cqZAo" node="7aFw1sqxL8C" resolve="drawnModule" />
          </node>
          <node concept="2YLb8l" id="7aFw1sqyfjj" role="2OqNvi" />
        </node>
        <node concept="1z4cxt" id="7aFw1sqykGI" role="2OqNvi">
          <node concept="1bVj0M" id="7aFw1sqykGK" role="23t8la">
            <node concept="3clFbS" id="7aFw1sqykGL" role="1bW5cS">
              <node concept="3clFbF" id="7aFw1sqyqzF" role="3cqZAp">
                <node concept="2_n6$v" id="t2PHHuhrSq" role="3clFbG">
                  <node concept="3clFbT" id="t2PHHuhrSr" role="2_mOWp" />
                  <node concept="2OqwBi" id="t2PHHuhrSs" role="2Oq$k0">
                    <node concept="37vLTw" id="t2PHHuhrSt" role="2Oq$k0">
                      <ref role="3cqZAo" node="7aFw1sqykGM" resolve="m" />
                    </node>
                    <node concept="LkI2h" id="t2PHHuhrSu" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="t2PHHuhrSv" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                    <node concept="Xl_RD" id="t2PHHuhrSw" role="37wK5m">
                      <property role="Xl_RC" value=".structure" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="7aFw1sqykGM" role="1bW2Oz">
              <property role="TrG5h" value="m" />
              <node concept="2jxLKc" id="7aFw1sqykGN" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="12WXgwl7Cq8" role="1FPzNG">
      <node concept="3clFbJ" id="12WXgwl7COz" role="30jUnX">
        <node concept="22lmx$" id="2$yK5YKm4GY" role="3clFbw">
          <node concept="2OqwBi" id="12WXgwl7Dai" role="3uHU7B">
            <node concept="2Wb9Zs" id="12WXgwl7CRt" role="2Oq$k0" />
            <node concept="3TrcHB" id="12WXgwl7FJ5" role="2OqNvi">
              <ref role="3TsBF5" to="53d4:12WXgwl7Bd8" resolve="manual" />
            </node>
          </node>
          <node concept="3clFbC" id="2$yK5YKm6G7" role="3uHU7w">
            <node concept="10Nm6u" id="2$yK5YKm6G8" role="3uHU7w" />
            <node concept="1SfVH9" id="2$yK5YKm6G9" role="3uHU7B">
              <ref role="3cqZAo" node="7aFw1spOSDx" resolve="drawnModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="12WXgwl7CO_" role="3clFbx">
          <node concept="3clFbF" id="12WXgwl7GeM" role="3cqZAp">
            <node concept="E34o$" id="12WXgwl7GeO" role="3clFbG">
              <node concept="2OqwBi" id="12WXgwl7GeP" role="37vLTJ">
                <node concept="2Wb9Zs" id="12WXgwl7GeQ" role="2Oq$k0" />
                <node concept="3Tsc0h" id="12WXgwl7GeR" role="2OqNvi">
                  <ref role="3TtcxE" to="53d4:67eN9Qkfp8P" resolve="concepts" />
                </node>
              </node>
              <node concept="2OqwBi" id="12WXgwl7KMZ" role="37vLTx">
                <node concept="2OqwBi" id="12WXgwl7HjI" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="12WXgwl7GZ4" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="12WXgwl7HTI" role="2OqNvi">
                    <ref role="3TtcxE" to="53d4:67eN9Qkfp8P" resolve="concepts" />
                  </node>
                </node>
                <node concept="3zZkjj" id="12WXgwl7R_8" role="2OqNvi">
                  <node concept="1bVj0M" id="12WXgwl7R_a" role="23t8la">
                    <node concept="3clFbS" id="12WXgwl7R_b" role="1bW5cS">
                      <node concept="3clFbF" id="12WXgwl7Sj3" role="3cqZAp">
                        <node concept="22lmx$" id="12WXgwl8FMW" role="3clFbG">
                          <node concept="3clFbC" id="12WXgwl8HYY" role="3uHU7B">
                            <node concept="10Nm6u" id="12WXgwl8IC4" role="3uHU7w" />
                            <node concept="2OqwBi" id="12WXgwl8FRu" role="3uHU7B">
                              <node concept="37vLTw" id="12WXgwl8FRv" role="2Oq$k0">
                                <ref role="3cqZAo" node="12WXgwl7R_c" resolve="cr" />
                              </node>
                              <node concept="3TrEf2" id="12WXgwl8FRw" role="2OqNvi">
                                <ref role="3Tt5mk" to="53d4:67eN9Qkg3uE" resolve="concept" />
                              </node>
                            </node>
                          </node>
                          <node concept="3y3z36" id="HeoZc4wMFg" role="3uHU7w">
                            <node concept="10Nm6u" id="HeoZc4wMXH" role="3uHU7w" />
                            <node concept="2OqwBi" id="HeoZc4wLPR" role="3uHU7B">
                              <node concept="2OqwBi" id="HeoZc4xtsT" role="2Oq$k0">
                                <node concept="37vLTw" id="HeoZc4wJJI" role="2Oq$k0">
                                  <ref role="3cqZAo" node="12WXgwl7R_c" resolve="cr" />
                                </node>
                                <node concept="3TrEf2" id="HeoZc4xu5n" role="2OqNvi">
                                  <ref role="3Tt5mk" to="53d4:67eN9Qkg3uE" resolve="concept" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="HeoZc4wMua" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="12WXgwl7R_c" role="1bW2Oz">
                      <property role="TrG5h" value="cr" />
                      <node concept="2jxLKc" id="12WXgwl7R_d" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="12WXgwl7FJq" role="9aQIa">
          <node concept="3clFbS" id="12WXgwl7FJr" role="9aQI4">
            <node concept="3clFbF" id="12WXgwl7FJF" role="3cqZAp">
              <node concept="E34o$" id="1CjrrCLyTp5" role="3clFbG">
                <node concept="2OqwBi" id="1CjrrCLyTpx" role="37vLTJ">
                  <node concept="2Wb9Zs" id="1CjrrCLyTpy" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="1CjrrCLyTpz" role="2OqNvi">
                    <ref role="3TtcxE" to="53d4:67eN9Qkfp8P" resolve="concepts" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1CjrrCLyTp7" role="37vLTx">
                  <node concept="2OqwBi" id="5Fq7Ll0b8HS" role="2Oq$k0">
                    <node concept="2OqwBi" id="1CjrrCLyTp8" role="2Oq$k0">
                      <node concept="1SfVH9" id="7aFw1spOSDy" role="2Oq$k0">
                        <ref role="3cqZAo" node="7aFw1spOSDx" />
                      </node>
                      <node concept="2RRcyG" id="1CjrrCLyTpc" role="2OqNvi">
                        <node concept="chp4Y" id="1CjrrCLyTpd" role="3MHsoP">
                          <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                        </node>
                      </node>
                    </node>
                    <node concept="2S7cBI" id="5Fq7Ll0boYg" role="2OqNvi">
                      <node concept="1bVj0M" id="5Fq7Ll0boYi" role="23t8la">
                        <node concept="3clFbS" id="5Fq7Ll0boYj" role="1bW5cS">
                          <node concept="3clFbF" id="5Fq7Ll0bsbv" role="3cqZAp">
                            <node concept="2OqwBi" id="5Fq7Ll0bswQ" role="3clFbG">
                              <node concept="37vLTw" id="5Fq7Ll0bsbu" role="2Oq$k0">
                                <ref role="3cqZAo" node="5Fq7Ll0boYk" resolve="c" />
                              </node>
                              <node concept="3TrcHB" id="5Fq7Ll0bu85" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="5Fq7Ll0boYk" role="1bW2Oz">
                          <property role="TrG5h" value="c" />
                          <node concept="2jxLKc" id="5Fq7Ll0boYl" role="1tU5fm" />
                        </node>
                      </node>
                      <node concept="1nlBCl" id="5Fq7Ll0boYm" role="2S7zOq">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="1CjrrCLyTpe" role="2OqNvi">
                    <node concept="1bVj0M" id="1CjrrCLyTpf" role="23t8la">
                      <node concept="3clFbS" id="1CjrrCLyTpg" role="1bW5cS">
                        <node concept="3clFbF" id="1CjrrCLyTph" role="3cqZAp">
                          <node concept="2pJPEk" id="1CjrrCLyTpi" role="3clFbG">
                            <node concept="2pJPED" id="1CjrrCLyTpj" role="2pJPEn">
                              <ref role="2pJxaS" to="53d4:67eN9Qkg3uD" resolve="ConceptRef" />
                              <node concept="2pIpSj" id="1CjrrCLyTpk" role="2pJxcM">
                                <ref role="2pIpSl" to="53d4:67eN9Qkg3uE" resolve="concept" />
                                <node concept="36biLy" id="1CjrrCLyTpl" role="28nt2d">
                                  <node concept="37vLTw" id="1CjrrCLyTpm" role="36biLW">
                                    <ref role="3cqZAo" node="1CjrrCLyTpn" resolve="c" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="1CjrrCLyTpn" role="1bW2Oz">
                        <property role="TrG5h" value="c" />
                        <node concept="2jxLKc" id="1CjrrCLyTpo" role="1tU5fm" />
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
  <node concept="3LmNE2" id="3HJBHARtF84">
    <property role="3GE5qa" value="concept_diagram" />
    <ref role="2UJ2Q8" node="3HJBHARsh7U" resolve="ClassDiagramCanvas" />
    <ref role="2RaPBF" node="67eN9Qke_aX" resolve="CONCEPT_DIAGRAM" />
    <node concept="32q3_s" id="1J7fUUyvBwU" role="1FPzNG">
      <property role="TrG5h" value="conceptsInDiagram" />
      <node concept="2I9FWS" id="1J7fUUyvBwO" role="1tU5fm">
        <ref role="2I9WkF" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
      <node concept="2OqwBi" id="1AFJzHF7kZo" role="33vP2m">
        <node concept="2OqwBi" id="1J7fUUyvBwP" role="2Oq$k0">
          <node concept="2OqwBi" id="1J7fUUyvBwQ" role="2Oq$k0">
            <node concept="3Tsc0h" id="1J7fUUyvBwS" role="2OqNvi">
              <ref role="3TtcxE" to="53d4:67eN9Qkfp8P" resolve="concepts" />
            </node>
            <node concept="1PxgMI" id="1CjrrCKctJX" role="2Oq$k0">
              <node concept="chp4Y" id="1CjrrCKctJY" role="3oSUPX">
                <ref role="cht4Q" to="53d4:67eN9QkffP5" resolve="ConceptDiagram" />
              </node>
              <node concept="1SfVH9" id="1CjrrCKctJZ" role="1m5AlR">
                <ref role="3cqZAo" node="3OZjsowr3$L" resolve="iDiagram" />
              </node>
            </node>
          </node>
          <node concept="13MTOM" id="1J7fUUyvBwT" role="2OqNvi">
            <ref role="13MTZg" to="53d4:67eN9Qkg3uE" resolve="concept" />
          </node>
        </node>
        <node concept="3zZkjj" id="1AFJzHF7nN2" role="2OqNvi">
          <node concept="1bVj0M" id="1AFJzHF7nN4" role="23t8la">
            <node concept="3clFbS" id="1AFJzHF7nN5" role="1bW5cS">
              <node concept="3clFbF" id="1AFJzHF7rkG" role="3cqZAp">
                <node concept="3fqX7Q" id="1AFJzHF7xjd" role="3clFbG">
                  <node concept="2OqwBi" id="1AFJzHF7xjf" role="3fr31v">
                    <node concept="37vLTw" id="1AFJzHF7xjg" role="2Oq$k0">
                      <ref role="3cqZAo" node="1AFJzHF7nN6" resolve="c" />
                    </node>
                    <node concept="2$Gk$L" id="1AFJzHF7xjh" role="2OqNvi">
                      <ref role="37wK5l" node="7BVZ4Aes__T" resolve="isSmart" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="1AFJzHF7nN6" role="1bW2Oz">
              <property role="TrG5h" value="c" />
              <node concept="2jxLKc" id="1AFJzHF7nN7" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="5rHgiqRdo1s" role="1FPzNG">
      <property role="TrG5h" value="conceptRectangles" />
      <node concept="_YKpA" id="5rHgiqRdo1b" role="1tU5fm">
        <node concept="3LmiP1" id="5rHgiqRdo1c" role="_ZDj9">
          <ref role="2XDbjv" node="3HJBHARtgyV" resolve="ClassRectangle" />
        </node>
      </node>
      <node concept="2OqwBi" id="5rHgiqRdo1d" role="33vP2m">
        <node concept="1SfVH9" id="1J7fUUyvBwV" role="2Oq$k0">
          <ref role="3cqZAo" node="1J7fUUyvBwU" resolve="classesInDiagram" />
        </node>
        <node concept="3$u5V9" id="5rHgiqRdo1h" role="2OqNvi">
          <node concept="1bVj0M" id="5rHgiqRdo1i" role="23t8la">
            <node concept="3clFbS" id="5rHgiqRdo1j" role="1bW5cS">
              <node concept="3clFbF" id="5rHgiqRdo1k" role="3cqZAp">
                <node concept="3KEV6E" id="5rHgiqRdo1l" role="3clFbG">
                  <ref role="2UJ2yc" node="3HJBHARtgyV" resolve="ClassRectangle" />
                  <node concept="2Pygp_" id="5rHgiqRdo1m" role="2Pygpa">
                    <ref role="2Pygpw" node="3HJBHARurzj" resolve="diagram" />
                    <node concept="2Wb9Zs" id="5rHgiqRdo1n" role="2PygpA" />
                  </node>
                  <node concept="2Pygp_" id="5rHgiqRdo1o" role="2Pygpa">
                    <ref role="2Pygpw" node="3OZjsowptDh" resolve="node" />
                    <node concept="37vLTw" id="5rHgiqRdo1p" role="2PygpA">
                      <ref role="3cqZAo" node="5rHgiqRdo1q" resolve="c" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="5rHgiqRdo1q" role="1bW2Oz">
              <property role="TrG5h" value="c" />
              <node concept="2jxLKc" id="5rHgiqRdo1r" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="5rHgiqRduwP" role="1FPzNG">
      <property role="TrG5h" value="specialisationLines" />
      <node concept="_YKpA" id="5rHgiqRduwi" role="1tU5fm">
        <node concept="3LmiP1" id="5rHgiqRduwj" role="_ZDj9">
          <ref role="2XDbjv" node="6YJvVULPUly" resolve="SpecialisationLine" />
        </node>
      </node>
      <node concept="2OqwBi" id="5rHgiqRduwk" role="33vP2m">
        <node concept="1SfVH9" id="5rHgiqRduwN" role="2Oq$k0">
          <ref role="3cqZAo" node="5rHgiqRdo1s" resolve="classRectangles" />
        </node>
        <node concept="13MTOL" id="1J7fUUywnHA" role="2OqNvi">
          <ref role="13MTZf" node="1J7fUUyw7XL" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2Aev2yeXDC9" role="1FPzNG">
      <property role="TrG5h" value="linkLines" />
      <node concept="_YKpA" id="2Aev2yeXDCa" role="1tU5fm">
        <node concept="3LmiP1" id="2Aev2yeXDCb" role="_ZDj9">
          <ref role="2XDbjv" node="67eN9QkfT0n" resolve="LinkLine" />
        </node>
      </node>
      <node concept="2OqwBi" id="2Aev2yeXDCc" role="33vP2m">
        <node concept="1SfVH9" id="2Aev2yeXDCd" role="2Oq$k0">
          <ref role="3cqZAo" node="5rHgiqRdo1s" resolve="classRectangles" />
        </node>
        <node concept="13MTOL" id="2Aev2yeXDCe" role="2OqNvi">
          <ref role="13MTZf" node="2Aev2yeXJ7A" />
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="3HJBHARtFpv" role="1FPzNG">
      <node concept="3clFbF" id="3HJBHARu8pu" role="30jUnX">
        <node concept="E34o$" id="3HJBHARu97V" role="3clFbG">
          <node concept="1SfVH9" id="3HJBHARu8ps" role="37vLTJ">
            <ref role="3cqZAo" node="7nNrlO1Gveo" resolve="shapes" />
          </node>
          <node concept="36be1Y" id="6YJvVULQb2U" role="37vLTx">
            <node concept="1SfVH9" id="5rHgiqRdo1t" role="2Gi6C2">
              <ref role="3cqZAo" node="5rHgiqRdo1s" resolve="classRectangles" />
            </node>
            <node concept="1SfVH9" id="5rHgiqRduwQ" role="2Gi6C2">
              <ref role="3cqZAo" node="5rHgiqRduwP" resolve="specialisationLines" />
            </node>
            <node concept="1SfVH9" id="2Aev2yeXTGD" role="2Gi6C2">
              <ref role="3cqZAo" node="2Aev2yeXDC9" resolve="associationLines" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="1fAdGMqwNqM" role="1FPzNG">
      <node concept="3clFbF" id="1fAdGMqwNYK" role="30jUnX">
        <node concept="E34o$" id="1fAdGMqwPSt" role="3clFbG">
          <node concept="1SfVH9" id="3NjYK5XERmA" role="37vLTJ">
            <ref role="3cqZAo" node="3nsHMGrWhjH" resolve="color" />
          </node>
          <node concept="2ShNRf" id="3NjYK5XF9QJ" role="37vLTx">
            <node concept="1pGfFk" id="3NjYK5XF9L2" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
              <node concept="3cmrfG" id="3NjYK5XF9XD" role="37wK5m">
                <property role="3cmrfH" value="246" />
              </node>
              <node concept="3cmrfG" id="3NjYK5XFaf5" role="37wK5m">
                <property role="3cmrfH" value="246" />
              </node>
              <node concept="3cmrfG" id="3NjYK5XFaP6" role="37wK5m">
                <property role="3cmrfH" value="246" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3LmNE2" id="3HJBHARumYR">
    <property role="3GE5qa" value="concept_diagram" />
    <ref role="2UJ2Q8" node="3HJBHARtgyV" resolve="ClassRectangle" />
    <ref role="2RaPBF" node="67eN9Qke_aX" resolve="CONCEPT_DIAGRAM" />
    <node concept="3tBE6w" id="3knfDr4NEYY" role="1FPzNG">
      <node concept="3clFbF" id="3knfDr4NF_m" role="30jUnX">
        <node concept="E34o$" id="3knfDr4NFTG" role="3clFbG">
          <node concept="10M0yZ" id="3knfDr4NKCq" role="37vLTx">
            <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="1SfVH9" id="3knfDr4NF_l" role="37vLTJ">
            <ref role="3cqZAo" node="2xAA8jfCHII" resolve="lineColor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="1CjrrCLu6Qj" role="1FPzNG">
      <node concept="3clFbF" id="1CjrrCLu7iM" role="30jUnX">
        <node concept="E34o$" id="1CjrrCLu7Js" role="3clFbG">
          <node concept="1SfVH9" id="1CjrrCLu7iL" role="37vLTJ">
            <ref role="3cqZAo" node="3nsHMGrYPEM" resolve="color" />
          </node>
          <node concept="3K4zz7" id="HeoZc4zeIn" role="37vLTx">
            <node concept="2OqwBi" id="HeoZc4zdcr" role="3K4Cdx">
              <node concept="1SfVH9" id="HeoZc4zcEM" role="2Oq$k0">
                <ref role="3cqZAo" node="1CjrrCKcYEt" resolve="cdmClass" />
              </node>
              <node concept="1mIQ4w" id="HeoZc4zedM" role="2OqNvi">
                <node concept="chp4Y" id="HeoZc4zegG" role="cj9EA">
                  <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="67eN9Qkhs6e" role="3K4E3e">
              <ref role="3cqZAo" node="1CjrrCLv7bc" resolve="lightYellow" />
              <ref role="1PxDUh" node="1CjrrCLv78O" resolve="Colors" />
            </node>
            <node concept="10M0yZ" id="67eN9QkhsCR" role="3K4GZi">
              <ref role="3cqZAo" node="HeoZc4zGJi" resolve="lightBlue" />
              <ref role="1PxDUh" node="1CjrrCLv78O" resolve="Colors" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="3HJBHARumYU" role="1FPzNG">
      <node concept="3clFbF" id="3HJBHARun1T" role="30jUnX">
        <node concept="E34o$" id="3HJBHARunq8" role="3clFbG">
          <node concept="2OqwBi" id="3HJBHARunIK" role="37vLTx">
            <node concept="1SfVH9" id="3HJBHARunu9" role="2Oq$k0">
              <ref role="3cqZAo" node="1CjrrCKcYEt" resolve="cdmClass" />
            </node>
            <node concept="3TrcHB" id="3HJBHARuosc" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
          <node concept="1SfVH9" id="3HJBHARun1S" role="37vLTJ">
            <ref role="3cqZAo" node="3nsHMGrYS6G" resolve="text" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="3HJBHARuoy9" role="1FPzNG">
      <node concept="3clFbF" id="3HJBHARuqeV" role="30jUnX">
        <node concept="E34o$" id="3HJBHARuqoo" role="3clFbG">
          <node concept="3KEV6E" id="3HJBHARuqt5" role="37vLTx">
            <ref role="2UJ2yc" node="4NMtPTvGXY5" resolve="DDimension" />
            <node concept="2Pygp_" id="3HJBHARuqt6" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGXY6" resolve="width" />
              <node concept="2YIFZM" id="1bDgvLYj$Pr" role="2PygpA">
                <ref role="37wK5l" to="wyt6:~Math.max(double,double)" resolve="max" />
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <node concept="3b6qkQ" id="1bDgvLYj_7A" role="37wK5m">
                  <property role="$nhwW" value="120.0d" />
                </node>
                <node concept="3cpWs3" id="1bDgvLYtuxb" role="37wK5m">
                  <node concept="3cmrfG" id="1bDgvLYtuzZ" role="3uHU7w">
                    <property role="3cmrfH" value="4" />
                  </node>
                  <node concept="10QFUN" id="1bDgvLYo6as" role="3uHU7B">
                    <node concept="10P55v" id="1bDgvLYo79w" role="10QFUM" />
                    <node concept="1SfVH9" id="1bDgvLYqnyr" role="10QFUP">
                      <ref role="3cqZAo" node="1bDgvLYqnyq" resolve="textWith" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Pygp_" id="3HJBHARuqt7" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGY55" resolve="height" />
              <node concept="2YIFZM" id="1bDgvLYjEbN" role="2PygpA">
                <ref role="37wK5l" to="wyt6:~Math.max(double,double)" resolve="max" />
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <node concept="3b6qkQ" id="1bDgvLYjExR" role="37wK5m">
                  <property role="$nhwW" value="40.0d" />
                </node>
                <node concept="3cpWs3" id="1bDgvLYttgT" role="37wK5m">
                  <node concept="3cmrfG" id="1bDgvLYtu1L" role="3uHU7w">
                    <property role="3cmrfH" value="4" />
                  </node>
                  <node concept="10QFUN" id="1bDgvLYo9GG" role="3uHU7B">
                    <node concept="10P55v" id="1bDgvLYo9ZN" role="10QFUM" />
                    <node concept="2OqwBi" id="1bDgvLYjFM9" role="10QFUP">
                      <node concept="1SfVH9" id="1bDgvLYjFme" role="2Oq$k0">
                        <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                      </node>
                      <node concept="32jkxy" id="1bDgvLYjGtv" role="2OqNvi">
                        <ref role="3cqZAo" node="6QF1CPNqors" resolve="textHeight" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1SfVH9" id="3HJBHARuqeU" role="37vLTJ">
            <ref role="3cqZAo" node="3HJBHAQJ0r1" resolve="size" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="1CjrrCKcYEt" role="1FPzNG">
      <property role="TrG5h" value="concept" />
      <node concept="3Tqbb2" id="1CjrrCKd2SD" role="1tU5fm">
        <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
      <node concept="1PxgMI" id="1CjrrCKdyzJ" role="33vP2m">
        <node concept="chp4Y" id="1CjrrCKdBlH" role="3oSUPX">
          <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
        <node concept="1SfVH9" id="1CjrrCKdqXf" role="1m5AlR">
          <ref role="3cqZAo" node="3OZjsowptDh" resolve="node" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="67eN9Qkjv_b" role="1FPzNG">
      <property role="TrG5h" value="supers" />
      <node concept="2I9FWS" id="67eN9QkjwOR" role="1tU5fm">
        <ref role="2I9WkF" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
      <node concept="36be1Y" id="67eN9QkkmXy" role="33vP2m">
        <node concept="2EnYce" id="67eN9QkkqSh" role="2Gi6C2">
          <node concept="1PxgMI" id="67eN9QkknXP" role="2Oq$k0">
            <property role="1BlNFC" value="true" />
            <node concept="chp4Y" id="67eN9QkkohQ" role="3oSUPX">
              <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
            </node>
            <node concept="1SfVH9" id="67eN9Qkknzu" role="1m5AlR">
              <ref role="3cqZAo" node="1CjrrCKcYEt" resolve="concept" />
            </node>
          </node>
          <node concept="3TrEf2" id="67eN9QkkpQw" role="2OqNvi">
            <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
          </node>
        </node>
        <node concept="2EnYce" id="67eN9QkkNDk" role="2Gi6C2">
          <node concept="2EnYce" id="67eN9Qkkrc7" role="2Oq$k0">
            <node concept="1PxgMI" id="67eN9Qkkrc8" role="2Oq$k0">
              <property role="1BlNFC" value="true" />
              <node concept="chp4Y" id="67eN9Qkkrc9" role="3oSUPX">
                <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
              </node>
              <node concept="1SfVH9" id="67eN9Qkkrca" role="1m5AlR">
                <ref role="3cqZAo" node="1CjrrCKcYEt" resolve="concept" />
              </node>
            </node>
            <node concept="3Tsc0h" id="67eN9Qkks1T" role="2OqNvi">
              <ref role="3TtcxE" to="tpce:h0Pzm$Y" resolve="implements" />
            </node>
          </node>
          <node concept="13MTOM" id="67eN9QkkEo$" role="2OqNvi">
            <ref role="13MTZg" to="tpce:h0PrY0D" resolve="intfc" />
          </node>
        </node>
        <node concept="2EnYce" id="67eN9Qkl2s_" role="2Gi6C2">
          <node concept="2EnYce" id="67eN9QkkY$G" role="2Oq$k0">
            <node concept="1PxgMI" id="67eN9QkkP8g" role="2Oq$k0">
              <property role="1BlNFC" value="true" />
              <node concept="chp4Y" id="67eN9QkkPyO" role="3oSUPX">
                <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
              </node>
              <node concept="1SfVH9" id="67eN9QkkOAB" role="1m5AlR">
                <ref role="3cqZAo" node="1CjrrCKcYEt" resolve="concept" />
              </node>
            </node>
            <node concept="3Tsc0h" id="67eN9QkkRj1" role="2OqNvi">
              <ref role="3TtcxE" to="tpce:h0PrDRO" resolve="extends" />
            </node>
          </node>
          <node concept="13MTOM" id="67eN9QkkXP$" role="2OqNvi">
            <ref role="13MTZg" to="tpce:h0PrY0D" resolve="intfc" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="1J7fUUyvv6x" role="1FPzNG">
      <property role="TrG5h" value="supersInDiagram" />
      <node concept="2I9FWS" id="1J7fUUyvv6c" role="1tU5fm">
        <ref role="2I9WkF" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
      <node concept="2OqwBi" id="1J7fUUyvv6d" role="33vP2m">
        <node concept="3zZkjj" id="1J7fUUyvv6j" role="2OqNvi">
          <node concept="1bVj0M" id="1J7fUUyvv6k" role="23t8la">
            <node concept="3clFbS" id="1J7fUUyvv6l" role="1bW5cS">
              <node concept="3clFbF" id="1J7fUUyvv6m" role="3cqZAp">
                <node concept="2OqwBi" id="1J7fUUyvv6n" role="3clFbG">
                  <node concept="2OqwBi" id="1J7fUUyvv6p" role="2Oq$k0">
                    <node concept="3MEt_1" id="1J7fUUyvRGf" role="2Oq$k0">
                      <ref role="3MEk2m" node="3HJBHARsh7U" resolve="ClassDiagramCanvas" />
                      <node concept="1SfVH9" id="1J7fUUyvv6q" role="3MEzJy">
                        <ref role="3cqZAo" node="3HJBHARurzj" resolve="diagram" />
                      </node>
                    </node>
                    <node concept="32jkxy" id="1J7fUUyvSPF" role="2OqNvi">
                      <ref role="3cqZAo" node="1J7fUUyvBwU" resolve="classesInDiagram" />
                    </node>
                  </node>
                  <node concept="3JPx81" id="1J7fUUyvv6t" role="2OqNvi">
                    <node concept="37vLTw" id="1J7fUUyvv6u" role="25WWJ7">
                      <ref role="3cqZAo" node="1J7fUUyvv6v" resolve="s" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="1J7fUUyvv6v" role="1bW2Oz">
              <property role="TrG5h" value="s" />
              <node concept="2jxLKc" id="1J7fUUyvv6w" role="1tU5fm" />
            </node>
          </node>
        </node>
        <node concept="1SfVH9" id="67eN9Qkl4pq" role="2Oq$k0">
          <ref role="3cqZAo" node="67eN9Qkjv_b" resolve="supers" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="3HJBHARuIqo" role="1FPzNG">
      <property role="TrG5h" value="superRectangles" />
      <node concept="_YKpA" id="1J7fUUyw8fJ" role="1tU5fm">
        <node concept="3LmiP1" id="1J7fUUyw8fL" role="_ZDj9">
          <ref role="2XDbjv" node="3HJBHARtgyV" resolve="ClassRectangle" />
        </node>
      </node>
      <node concept="2OqwBi" id="3HJBHARvnlq" role="33vP2m">
        <node concept="1SfVH9" id="1J7fUUyvv6y" role="2Oq$k0">
          <ref role="3cqZAo" node="1J7fUUyvv6x" resolve="supersInDiagram" />
        </node>
        <node concept="3$u5V9" id="3HJBHARvoeI" role="2OqNvi">
          <node concept="1bVj0M" id="3HJBHARvoeK" role="23t8la">
            <node concept="3clFbS" id="3HJBHARvoeL" role="1bW5cS">
              <node concept="3clFbF" id="3HJBHARvoww" role="3cqZAp">
                <node concept="3KEV6E" id="3HJBHARvowt" role="3clFbG">
                  <ref role="2UJ2yc" node="3HJBHARtgyV" resolve="ClassRectangle" />
                  <node concept="2Pygp_" id="3HJBHARvowu" role="2Pygpa">
                    <ref role="2Pygpw" node="3HJBHARurzj" resolve="diagram" />
                    <node concept="1SfVH9" id="3HJBHARvp6a" role="2PygpA">
                      <ref role="3cqZAo" node="3HJBHARurzj" resolve="diagram" />
                    </node>
                  </node>
                  <node concept="2Pygp_" id="3HJBHARvowv" role="2Pygpa">
                    <ref role="2Pygpw" node="3OZjsowptDh" resolve="node" />
                    <node concept="37vLTw" id="3HJBHARvphK" role="2PygpA">
                      <ref role="3cqZAo" node="3HJBHARvoeM" resolve="s" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="3HJBHARvoeM" role="1bW2Oz">
              <property role="TrG5h" value="s" />
              <node concept="2jxLKc" id="3HJBHARvoeN" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="1J7fUUyw7XL" role="1FPzNG">
      <property role="TrG5h" value="specialisationLines" />
      <node concept="_YKpA" id="1J7fUUywokw" role="1tU5fm">
        <node concept="3LmiP1" id="1J7fUUywouP" role="_ZDj9">
          <ref role="2XDbjv" node="6YJvVULPUly" resolve="SpecialisationLine" />
        </node>
      </node>
      <node concept="2OqwBi" id="1J7fUUywth3" role="33vP2m">
        <node concept="1SfVH9" id="1J7fUUywsag" role="2Oq$k0">
          <ref role="3cqZAo" node="3HJBHARuIqo" resolve="supers" />
        </node>
        <node concept="3$u5V9" id="1J7fUUyww6m" role="2OqNvi">
          <node concept="1bVj0M" id="1J7fUUyww6o" role="23t8la">
            <node concept="3clFbS" id="1J7fUUyww6p" role="1bW5cS">
              <node concept="3clFbF" id="1J7fUUywwFZ" role="3cqZAp">
                <node concept="3KEV6E" id="5rHgiqRduwD" role="3clFbG">
                  <ref role="2UJ2yc" node="6YJvVULPUly" resolve="SpecialisationLine" />
                  <node concept="2Pygp_" id="5rHgiqRduwE" role="2Pygpa">
                    <ref role="2Pygpw" node="3OZjsowq9ys" resolve="from" />
                    <node concept="2Wb9Zs" id="1J7fUUywxao" role="2PygpA" />
                  </node>
                  <node concept="2Pygp_" id="5rHgiqRduwG" role="2Pygpa">
                    <ref role="2Pygpw" node="3OZjsowu2R1" resolve="to" />
                    <node concept="37vLTw" id="5rHgiqRduwH" role="2PygpA">
                      <ref role="3cqZAo" node="1J7fUUyww6q" resolve="sup" />
                    </node>
                  </node>
                  <node concept="2Pygp_" id="1CjrrCKcFoA" role="2Pygpa">
                    <ref role="2Pygpw" node="3OZjsowp$AH" resolve="association" />
                    <node concept="2OqwBi" id="1CjrrCKcHOo" role="2PygpA">
                      <node concept="37vLTw" id="1CjrrCKcH7X" role="2Oq$k0">
                        <ref role="3cqZAo" node="1J7fUUyww6q" resolve="sup" />
                      </node>
                      <node concept="32jkxy" id="1CjrrCKcIVN" role="2OqNvi">
                        <ref role="3cqZAo" node="3OZjsowptDh" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="1J7fUUyww6q" role="1bW2Oz">
              <property role="TrG5h" value="sup" />
              <node concept="2jxLKc" id="1J7fUUyww6r" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2Aev2yeXXfF" role="1FPzNG">
      <property role="TrG5h" value="linksInDiagram" />
      <node concept="2I9FWS" id="2Aev2yeXXXz" role="1tU5fm">
        <ref role="2I9WkF" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
      </node>
      <node concept="36be1Y" id="2Aev2yf1p3C" role="33vP2m">
        <node concept="2OqwBi" id="7BVZ4AeyQTN" role="2Gi6C2">
          <node concept="2OqwBi" id="67eN9Qklo5p" role="2Oq$k0">
            <node concept="1SfVH9" id="67eN9QklmW3" role="2Oq$k0">
              <ref role="3cqZAo" node="1CjrrCKcYEt" resolve="concept" />
            </node>
            <node concept="3Tsc0h" id="67eN9Qklp$N" role="2OqNvi">
              <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
            </node>
          </node>
          <node concept="3zZkjj" id="2Aev2yf0hy3" role="2OqNvi">
            <node concept="1bVj0M" id="2Aev2yf0hy5" role="23t8la">
              <node concept="3clFbS" id="2Aev2yf0hy6" role="1bW5cS">
                <node concept="3clFbF" id="2Aev2yf0m5A" role="3cqZAp">
                  <node concept="2OqwBi" id="2Aev2yf0m5C" role="3clFbG">
                    <node concept="2OqwBi" id="2Aev2yf0m5D" role="2Oq$k0">
                      <node concept="3MEt_1" id="2Aev2yf0m5E" role="2Oq$k0">
                        <ref role="3MEk2m" node="3HJBHARsh7U" resolve="ConceptDiagramCanvas" />
                        <node concept="1SfVH9" id="2Aev2yf0m5F" role="3MEzJy">
                          <ref role="3cqZAo" node="3HJBHARurzj" resolve="diagram" />
                        </node>
                      </node>
                      <node concept="32jkxy" id="2Aev2yf0m5G" role="2OqNvi">
                        <ref role="3cqZAo" node="1J7fUUyvBwU" resolve="conceptsInDiagram" />
                      </node>
                    </node>
                    <node concept="3JPx81" id="2Aev2yf0m5H" role="2OqNvi">
                      <node concept="2OqwBi" id="67eN9Qkltsv" role="25WWJ7">
                        <node concept="37vLTw" id="67eN9QklsFE" role="2Oq$k0">
                          <ref role="3cqZAo" node="2Aev2yf0hy7" resolve="link" />
                        </node>
                        <node concept="2$Gk$L" id="1AFJzHFbbGh" role="2OqNvi">
                          <ref role="37wK5l" node="7BVZ4AeE4_O" resolve="smartTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="2Aev2yf0hy7" role="1bW2Oz">
                <property role="TrG5h" value="link" />
                <node concept="2jxLKc" id="2Aev2yf0hy8" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2Aev2yeXJ7A" role="1FPzNG">
      <property role="TrG5h" value="linkLines" />
      <node concept="_YKpA" id="2Aev2yeXJ7B" role="1tU5fm">
        <node concept="3LmiP1" id="2Aev2yeXJ7C" role="_ZDj9">
          <ref role="2XDbjv" node="67eN9QkfT0n" resolve="LinkLine" />
        </node>
      </node>
      <node concept="2OqwBi" id="2Aev2yeXJ7D" role="33vP2m">
        <node concept="1SfVH9" id="2Aev2yeXJ7E" role="2Oq$k0">
          <ref role="3cqZAo" node="2Aev2yeXXfF" resolve="references" />
        </node>
        <node concept="3$u5V9" id="2Aev2yeXJ7F" role="2OqNvi">
          <node concept="1bVj0M" id="2Aev2yeXJ7G" role="23t8la">
            <node concept="3clFbS" id="2Aev2yeXJ7H" role="1bW5cS">
              <node concept="3clFbF" id="2Aev2yeXJ7I" role="3cqZAp">
                <node concept="3KEV6E" id="2Aev2yeXJ7J" role="3clFbG">
                  <ref role="2UJ2yc" node="67eN9QkfT0n" resolve="LinkLine" />
                  <node concept="2Pygp_" id="2Aev2yeXJ7K" role="2Pygpa">
                    <ref role="2Pygpw" node="3OZjsowq9ys" resolve="from" />
                    <node concept="2Wb9Zs" id="2Aev2yeXJ7L" role="2PygpA" />
                  </node>
                  <node concept="2Pygp_" id="2Aev2yeXJ7M" role="2Pygpa">
                    <ref role="2Pygpw" node="3OZjsowu2R1" resolve="to" />
                    <node concept="3KEV6E" id="2Aev2yeYwaN" role="2PygpA">
                      <ref role="2UJ2yc" node="3HJBHARtgyV" resolve="ConceptRectangle" />
                      <node concept="2Pygp_" id="2Aev2yeYxAx" role="2Pygpa">
                        <ref role="2Pygpw" node="3HJBHARurzj" resolve="diagram" />
                        <node concept="1SfVH9" id="2Aev2yeYygK" role="2PygpA">
                          <ref role="3cqZAo" node="3HJBHARurzj" resolve="diagram" />
                        </node>
                      </node>
                      <node concept="2Pygp_" id="2Aev2yeYwEA" role="2Pygpa">
                        <ref role="2Pygpw" node="3OZjsowptDh" resolve="node" />
                        <node concept="2OqwBi" id="7BVZ4AeFxvN" role="2PygpA">
                          <node concept="37vLTw" id="7BVZ4AeFxbY" role="2Oq$k0">
                            <ref role="3cqZAo" node="2Aev2yeXJ7S" resolve="link" />
                          </node>
                          <node concept="2$Gk$L" id="1AFJzHF7BBV" role="2OqNvi">
                            <ref role="37wK5l" node="7BVZ4AeE4_O" resolve="smartTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Pygp_" id="2Aev2yeXJ7O" role="2Pygpa">
                    <ref role="2Pygpw" node="3OZjsowp$AH" resolve="association" />
                    <node concept="37vLTw" id="2Aev2yeXJ7Q" role="2PygpA">
                      <ref role="3cqZAo" node="2Aev2yeXJ7S" resolve="ref" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="2Aev2yeXJ7S" role="1bW2Oz">
              <property role="TrG5h" value="link" />
              <node concept="2jxLKc" id="2Aev2yeXJ7T" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2Rb1jd" id="3HJBHARsh6E">
    <property role="TrG5h" value="DIAGRAM" />
    <property role="3GE5qa" value="diagrams" />
    <property role="2bPw2W" value="true" />
    <node concept="2RaPxm" id="3HJBHARtGgi" role="2RaPxw">
      <ref role="2RaPxn" node="WHdioYVYbd" resolve="GUI" />
    </node>
  </node>
  <node concept="3LmNE2" id="6YJvVULQ2v8">
    <property role="3GE5qa" value="concept_diagram" />
    <ref role="2UJ2Q8" node="6YJvVULPUly" resolve="SpecialisationLine" />
    <ref role="2RaPBF" node="67eN9Qke_aX" resolve="CONCEPT_DIAGRAM" />
    <node concept="3tBE6w" id="6YJvVULQ8NW" role="1FPzNG">
      <node concept="3clFbF" id="6YJvVULQ8NX" role="30jUnX">
        <node concept="E34o$" id="6YJvVULQ8NY" role="3clFbG">
          <node concept="10M0yZ" id="6YJvVULQ8NZ" role="37vLTx">
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
          </node>
          <node concept="1SfVH9" id="6YJvVULQ8O0" role="37vLTJ">
            <ref role="3cqZAo" node="2xAA8jfCHII" resolve="lineColor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="1bLYJ3fRJjN" role="1FPzNG">
      <property role="TrG5h" value="lastUnit" />
      <node concept="3LmiP1" id="1bLYJ3fRKll" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="1bLYJ3grXC2" role="33vP2m">
        <node concept="2OqwBi" id="2ihDbyK3HLi" role="2Oq$k0">
          <node concept="1SfVH9" id="2ihDbyJYn_H" role="2Oq$k0">
            <ref role="3cqZAo" node="1bLYJ3eDu7H" resolve="lineSegments" />
          </node>
          <node concept="1yVyf7" id="2ihDbyK3L9b" role="2OqNvi" />
        </node>
        <node concept="32jkxy" id="1bLYJ3grYis" role="2OqNvi">
          <ref role="3cqZAo" node="2ihDbyJXriV" resolve="unit" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="1bLYJ3fS7lg" role="1FPzNG">
      <property role="TrG5h" value="lastPerp" />
      <node concept="3LmiP1" id="1bLYJ3fS7VP" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="5rHgiqRaAX6" role="33vP2m">
        <node concept="2OqwBi" id="5rHgiqRa_P5" role="2Oq$k0">
          <node concept="1SfVH9" id="5rHgiqRa_t7" role="2Oq$k0">
            <ref role="3cqZAo" node="1bLYJ3fRJjN" resolve="lastUnit" />
          </node>
          <node concept="32jkxy" id="5rHgiqRaAoZ" role="2OqNvi">
            <ref role="3cqZAo" node="5rHgiqQFNOE" resolve="perp" />
          </node>
        </node>
        <node concept="2$Gk$L" id="5rHgiqRaBtk" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB2O5" resolve="mult" />
          <node concept="3b6qkQ" id="5rHgiqRaBZn" role="37wK5m">
            <property role="$nhwW" value="7.0d" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="1bLYJ3fRSol" role="1FPzNG">
      <property role="TrG5h" value="distEndPoint" />
      <node concept="3LmiP1" id="1bLYJ3fRSTH" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="1bLYJ3fRVJv" role="33vP2m">
        <node concept="1SfVH9" id="1bLYJ3fRVJw" role="2Oq$k0">
          <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
        </node>
        <node concept="2$Gk$L" id="1bLYJ3fRVJx" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
          <node concept="2OqwBi" id="1bLYJ3fRVJy" role="37wK5m">
            <node concept="1SfVH9" id="1bLYJ3fRVJz" role="2Oq$k0">
              <ref role="3cqZAo" node="1bLYJ3fRJjN" resolve="lastUnit" />
            </node>
            <node concept="2$Gk$L" id="1bLYJ3fRVJ$" role="2OqNvi">
              <ref role="37wK5l" node="2xAA8jfB2O5" resolve="mult" />
              <node concept="3b6qkQ" id="4OSO3Oxu4eE" role="37wK5m">
                <property role="$nhwW" value="14.0d" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="1bLYJ3fRX17" role="1FPzNG">
      <property role="TrG5h" value="left" />
      <node concept="3LmiP1" id="1bLYJ3fRXyM" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="1bLYJ3eKD1s" role="33vP2m">
        <node concept="1SfVH9" id="1bLYJ3fRWaU" role="2Oq$k0">
          <ref role="3cqZAo" node="1bLYJ3fRSol" resolve="distEndPoint" />
        </node>
        <node concept="2$Gk$L" id="1bLYJ3eKDm0" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
          <node concept="1SfVH9" id="1bLYJ3fRRT0" role="37wK5m">
            <ref role="3cqZAo" node="1bLYJ3fS7lg" resolve="lastPerp" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="1bLYJ3fS0hM" role="1FPzNG">
      <property role="TrG5h" value="right" />
      <node concept="3LmiP1" id="1bLYJ3fS0PX" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="1bLYJ3eKCmG" role="33vP2m">
        <node concept="1SfVH9" id="1bLYJ3fRWfZ" role="2Oq$k0">
          <ref role="3cqZAo" node="1bLYJ3fRSol" resolve="distEndPoint" />
        </node>
        <node concept="2$Gk$L" id="1bLYJ3eKCKH" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
          <node concept="1SfVH9" id="1bLYJ3fRRNc" role="37wK5m">
            <ref role="3cqZAo" node="1bLYJ3fS7lg" resolve="lastPerp" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1FPxxo" id="1bLYJ3eKbW9" role="1FPzNG" />
    <node concept="kUGYC" id="67eN9Qkf7hl" role="1FPzNG">
      <property role="1ePe$S" value="true" />
      <property role="TrG5h" value="paintEnd" />
      <node concept="37vLTG" id="67eN9Qkf7hm" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="67eN9Qkf7hn" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="67eN9Qkf7ho" role="1B3o_S" />
      <node concept="3clFbS" id="67eN9Qkf7hp" role="3clF47">
        <node concept="3clFbF" id="1bLYJ3eKdf3" role="3cqZAp">
          <node concept="2YIFZM" id="3HJBHAQJWv8" role="3clFbG">
            <ref role="1Pybhc" to="u4ym:7wc8RN4MMv1" resolve="D2D" />
            <ref role="37wK5l" to="u4ym:7wc8RN4MQ$M" resolve="drawPoly" />
            <node concept="37vLTw" id="3HJBHAQJW$D" role="37wK5m">
              <ref role="3cqZAo" node="67eN9Qkf7hm" resolve="g" />
            </node>
            <node concept="10M0yZ" id="1bLYJ3eKl_H" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
              <ref role="3cqZAo" to="z60i:~Color.WHITE" resolve="WHITE" />
            </node>
            <node concept="10M0yZ" id="1bLYJ3eKi4X" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
              <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
            </node>
            <node concept="10QFUN" id="1bLYJ3gqADz" role="37wK5m">
              <node concept="17QB3L" id="1bLYJ3gqAY$" role="10QFUM" />
              <node concept="10Nm6u" id="1bLYJ3eKnJy" role="10QFUP" />
            </node>
            <node concept="2OqwBi" id="3HJBHAQJX6R" role="37wK5m">
              <node concept="1SfVH9" id="1bLYJ3eKo83" role="2Oq$k0">
                <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQJYzM" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJBHAQJY2B" role="37wK5m">
              <node concept="1SfVH9" id="1bLYJ3eKovm" role="2Oq$k0">
                <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQJYj9" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJBHAQJZod" role="37wK5m">
              <node concept="1SfVH9" id="1bLYJ3fS4Kk" role="2Oq$k0">
                <ref role="3cqZAo" node="1bLYJ3fRX17" resolve="left" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQJZDZ" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJBHAQK0d4" role="37wK5m">
              <node concept="1SfVH9" id="1bLYJ3fS4G5" role="2Oq$k0">
                <ref role="3cqZAo" node="1bLYJ3fRX17" resolve="left" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQK0vu" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJBHAQK14a" role="37wK5m">
              <node concept="1SfVH9" id="1bLYJ3fS45u" role="2Oq$k0">
                <ref role="3cqZAo" node="1bLYJ3fS0hM" resolve="right" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQK1w3" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJBHAQK1Xn" role="37wK5m">
              <node concept="1SfVH9" id="1bLYJ3fS4au" role="2Oq$k0">
                <ref role="3cqZAo" node="1bLYJ3fS0hM" resolve="right" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQK2pR" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="67eN9Qkf7hq" role="3clF45" />
    </node>
  </node>
  <node concept="3LmNE2" id="67eN9QkfM3B">
    <property role="3GE5qa" value="concept_diagram" />
    <ref role="2UJ2Q8" node="67eN9QkfT0n" resolve="ReferenceLine" />
    <ref role="2RaPBF" node="67eN9Qke_aX" resolve="CONCEPT_DIAGRAM" />
    <node concept="3tBE6w" id="67eN9QkfM3C" role="1FPzNG">
      <node concept="3clFbF" id="67eN9QkfM3D" role="30jUnX">
        <node concept="E34o$" id="67eN9QkfM3E" role="3clFbG">
          <node concept="10M0yZ" id="67eN9QkfM3F" role="37vLTx">
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
          </node>
          <node concept="1SfVH9" id="67eN9QkfM3G" role="37vLTJ">
            <ref role="3cqZAo" node="2xAA8jfCHII" resolve="lineColor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="67eN9QkfM3H" role="1FPzNG">
      <property role="TrG5h" value="link" />
      <node concept="3Tqbb2" id="67eN9QkfM3I" role="1tU5fm">
        <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
      </node>
      <node concept="1PxgMI" id="67eN9QkfM3J" role="33vP2m">
        <node concept="chp4Y" id="67eN9QkfM3K" role="3oSUPX">
          <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
        </node>
        <node concept="2OqwBi" id="67eN9QkfM3L" role="1m5AlR">
          <node concept="2Wb9Zs" id="67eN9QkfM3M" role="2Oq$k0" />
          <node concept="32jkxy" id="67eN9QkfM3N" role="2OqNvi">
            <ref role="3cqZAo" node="3OZjsowp$AH" resolve="association" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="67eN9QkfM3O" role="1FPzNG">
      <property role="TrG5h" value="roleText" />
      <node concept="17QB3L" id="67eN9QkfM3P" role="1tU5fm" />
      <node concept="2_n6$v" id="67eN9QkgQMa" role="33vP2m">
        <node concept="Xl_RD" id="67eN9QkgRAD" role="2_mOWp" />
        <node concept="2OqwBi" id="67eN9QkgJCt" role="2Oq$k0">
          <node concept="1SfVH9" id="67eN9QkgIAl" role="2Oq$k0">
            <ref role="3cqZAo" node="67eN9QkfM3H" resolve="link" />
          </node>
          <node concept="3TrcHB" id="67eN9QkgLI1" role="2OqNvi">
            <ref role="3TsBF5" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
          </node>
        </node>
        <node concept="1XCIdh" id="67eN9QkgOlZ" role="2OqNvi" />
      </node>
    </node>
    <node concept="3tBE6w" id="50h2gZ$bfks" role="1FPzNG">
      <node concept="3clFbF" id="50h2gZ$biGw" role="30jUnX">
        <node concept="E34o$" id="50h2gZ$bjYn" role="3clFbG">
          <node concept="2OqwBi" id="50h2gZ$bl6p" role="37vLTx">
            <node concept="1SfVH9" id="50h2gZ$bkNJ" role="2Oq$k0">
              <ref role="3cqZAo" node="67eN9QkfM3H" resolve="link" />
            </node>
            <node concept="3TrcHB" id="50h2gZ$bn$8" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
          <node concept="1SfVH9" id="50h2gZ$biGv" role="37vLTJ">
            <ref role="3cqZAo" node="5x0Fo$V6e0j" resolve="text" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="67eN9QkfM46" role="1FPzNG">
      <property role="TrG5h" value="textLeft" />
      <node concept="10P_77" id="67eN9QkfM47" role="1tU5fm" />
      <node concept="22lmx$" id="67eN9QkfM48" role="33vP2m">
        <node concept="3eOVzh" id="67eN9QkfM49" role="3uHU7B">
          <node concept="2OqwBi" id="67eN9QkfM4a" role="3uHU7B">
            <node concept="1SfVH9" id="67eN9QkfM4b" role="2Oq$k0">
              <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
            </node>
            <node concept="2$Gk$L" id="67eN9QkfM4c" role="2OqNvi">
              <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
            </node>
          </node>
          <node concept="3cpWs3" id="67eN9QkfM4d" role="3uHU7w">
            <node concept="2OqwBi" id="67eN9QkfM4e" role="3uHU7B">
              <node concept="2OqwBi" id="67eN9QkfM4f" role="2Oq$k0">
                <node concept="1SfVH9" id="67eN9QkfM4g" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
                </node>
                <node concept="32jkxy" id="67eN9QkfM4h" role="2OqNvi">
                  <ref role="3cqZAo" node="12WXgwkVoAg" resolve="min" />
                </node>
              </node>
              <node concept="2$Gk$L" id="67eN9QkfM4i" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="3cmrfG" id="67eN9QkfM4j" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="1eOMI4" id="67eN9QkfM4k" role="3uHU7w">
          <node concept="1Wc70l" id="67eN9QkfM4l" role="1eOMHV">
            <node concept="3eOSWO" id="67eN9QkfM4m" role="3uHU7B">
              <node concept="2OqwBi" id="67eN9QkfM4n" role="3uHU7B">
                <node concept="1SfVH9" id="67eN9QkfM4o" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
                </node>
                <node concept="2$Gk$L" id="67eN9QkfM4p" role="2OqNvi">
                  <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="67eN9QkfM4q" role="3uHU7w">
                <node concept="2OqwBi" id="67eN9QkfM4r" role="2Oq$k0">
                  <node concept="1SfVH9" id="67eN9QkfM4s" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
                  </node>
                  <node concept="32jkxy" id="67eN9QkfM4t" role="2OqNvi">
                    <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                  </node>
                </node>
                <node concept="2$Gk$L" id="67eN9QkfM4u" role="2OqNvi">
                  <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                </node>
              </node>
            </node>
            <node concept="3eOVzh" id="67eN9QkfM4v" role="3uHU7w">
              <node concept="2OqwBi" id="67eN9QkfM4w" role="3uHU7B">
                <node concept="1SfVH9" id="67eN9QkfM4x" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
                </node>
                <node concept="2$Gk$L" id="67eN9QkfM4y" role="2OqNvi">
                  <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="67eN9QkfM4z" role="3uHU7w">
                <node concept="2OqwBi" id="67eN9QkfM4$" role="2Oq$k0">
                  <node concept="1SfVH9" id="67eN9QkfM4_" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
                  </node>
                  <node concept="32jkxy" id="67eN9QkfM4A" role="2OqNvi">
                    <ref role="3cqZAo" node="3OZjsowsF15" resolve="max" />
                  </node>
                </node>
                <node concept="2$Gk$L" id="67eN9QkfM4B" role="2OqNvi">
                  <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="67eN9QkfM4C" role="1FPzNG">
      <property role="TrG5h" value="textUp" />
      <node concept="10P_77" id="67eN9QkfM4D" role="1tU5fm" />
      <node concept="22lmx$" id="67eN9QkfM4E" role="33vP2m">
        <node concept="3eOVzh" id="67eN9QkfM4F" role="3uHU7B">
          <node concept="2OqwBi" id="67eN9QkfM4G" role="3uHU7B">
            <node concept="1SfVH9" id="67eN9QkfM4H" role="2Oq$k0">
              <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
            </node>
            <node concept="2$Gk$L" id="67eN9QkfM4I" role="2OqNvi">
              <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
            </node>
          </node>
          <node concept="3cpWs3" id="67eN9QkfM4J" role="3uHU7w">
            <node concept="2OqwBi" id="67eN9QkfM4K" role="3uHU7B">
              <node concept="2OqwBi" id="67eN9QkfM4L" role="2Oq$k0">
                <node concept="1SfVH9" id="67eN9QkfM4M" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
                </node>
                <node concept="32jkxy" id="67eN9QkfM4N" role="2OqNvi">
                  <ref role="3cqZAo" node="12WXgwkVoAg" resolve="min" />
                </node>
              </node>
              <node concept="2$Gk$L" id="67eN9QkfM4O" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
            <node concept="3cmrfG" id="67eN9QkfM4P" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="1eOMI4" id="67eN9QkfM4Q" role="3uHU7w">
          <node concept="1Wc70l" id="67eN9QkfM4R" role="1eOMHV">
            <node concept="2d3UOw" id="67eN9QkfM4S" role="3uHU7B">
              <node concept="2OqwBi" id="67eN9QkfM4T" role="3uHU7B">
                <node concept="1SfVH9" id="67eN9QkfM4U" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
                </node>
                <node concept="2$Gk$L" id="67eN9QkfM4V" role="2OqNvi">
                  <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                </node>
              </node>
              <node concept="2OqwBi" id="67eN9QkfM4W" role="3uHU7w">
                <node concept="2OqwBi" id="67eN9QkfM4X" role="2Oq$k0">
                  <node concept="1SfVH9" id="67eN9QkfM4Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
                  </node>
                  <node concept="32jkxy" id="67eN9QkfM4Z" role="2OqNvi">
                    <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                  </node>
                </node>
                <node concept="2$Gk$L" id="67eN9QkfM50" role="2OqNvi">
                  <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                </node>
              </node>
            </node>
            <node concept="3eOVzh" id="67eN9QkfM51" role="3uHU7w">
              <node concept="2OqwBi" id="67eN9QkfM52" role="3uHU7B">
                <node concept="1SfVH9" id="67eN9QkfM53" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
                </node>
                <node concept="2$Gk$L" id="67eN9QkfM54" role="2OqNvi">
                  <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                </node>
              </node>
              <node concept="2OqwBi" id="67eN9QkfM55" role="3uHU7w">
                <node concept="2OqwBi" id="67eN9QkfM56" role="2Oq$k0">
                  <node concept="1SfVH9" id="67eN9QkfM57" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
                  </node>
                  <node concept="32jkxy" id="67eN9QkfM58" role="2OqNvi">
                    <ref role="3cqZAo" node="3OZjsowsF15" resolve="max" />
                  </node>
                </node>
                <node concept="2$Gk$L" id="67eN9QkfM59" role="2OqNvi">
                  <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="67eN9QkfM5a" role="1FPzNG">
      <property role="TrG5h" value="comp" />
      <node concept="10P_77" id="67eN9QkfM5b" role="1tU5fm" />
      <node concept="17R0WA" id="67eN9QkgZkH" role="33vP2m">
        <node concept="2OqwBi" id="67eN9Qkh4BK" role="3uHU7w">
          <node concept="1XH99k" id="67eN9Qkh2Gw" role="2Oq$k0">
            <ref role="1XH99l" to="tpce:3Ftr4R6BFyl" resolve="LinkMetaclass" />
          </node>
          <node concept="2ViDtV" id="67eN9Qkh7dK" role="2OqNvi">
            <ref role="2ViDtZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
          </node>
        </node>
        <node concept="2OqwBi" id="67eN9QkfM5c" role="3uHU7B">
          <node concept="1SfVH9" id="67eN9QkfM5d" role="2Oq$k0">
            <ref role="3cqZAo" node="67eN9QkfM3H" resolve="link" />
          </node>
          <node concept="3TrcHB" id="67eN9QkfM5e" role="2OqNvi">
            <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1FPxxo" id="67eN9QkCwAN" role="1FPzNG" />
    <node concept="3tBE6w" id="67eN9QkCzrj" role="1FPzNG">
      <node concept="3clFbJ" id="67eN9QkCAco" role="30jUnX">
        <node concept="1Wc70l" id="67eN9QkCCSb" role="3clFbw">
          <node concept="17R0WA" id="67eN9QkCBBg" role="3uHU7B">
            <node concept="1SfVH9" id="67eN9QkCAN7" role="3uHU7B">
              <ref role="3cqZAo" node="3OZjsowu2R1" resolve="to" />
            </node>
            <node concept="1SfVH9" id="67eN9QkCCej" role="3uHU7w">
              <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
            </node>
          </node>
          <node concept="1eOMI4" id="67eN9QkFDzP" role="3uHU7w">
            <node concept="22lmx$" id="67eN9QkFnK1" role="1eOMHV">
              <node concept="2OqwBi" id="67eN9QkCF9l" role="3uHU7B">
                <node concept="1SfVH9" id="67eN9QkCD_u" role="2Oq$k0">
                  <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                </node>
                <node concept="1v1jN8" id="67eN9QkCJce" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="67eN9QkFzPE" role="3uHU7w">
                <node concept="1y4W85" id="67eN9QkFqA1" role="2Oq$k0">
                  <node concept="3cmrfG" id="67eN9QkFroQ" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="1SfVH9" id="67eN9QkFoQQ" role="1y566C">
                    <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
                  </node>
                </node>
                <node concept="2$Gk$L" id="67eN9QkF$RN" role="2OqNvi">
                  <ref role="37wK5l" node="2xAA8jfAMdM" resolve="isNull" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="67eN9QkCAcq" role="3clFbx">
          <node concept="3clFbF" id="67eN9QkCJgf" role="3cqZAp">
            <node concept="E34o$" id="67eN9QkCK0z" role="3clFbG">
              <node concept="36be1Y" id="67eN9QkCKC9" role="37vLTx">
                <node concept="3KEV6E" id="t2PHHvFdO7" role="2Gi6C2">
                  <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                  <node concept="2Pygp_" id="t2PHHvFdO8" role="2Pygpa">
                    <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                    <node concept="3cpWs3" id="t2PHHvFdO9" role="2PygpA">
                      <node concept="3b6qkQ" id="t2PHHvFdOa" role="3uHU7w">
                        <property role="$nhwW" value="110.0d" />
                      </node>
                      <node concept="2OqwBi" id="t2PHHvFdOb" role="3uHU7B">
                        <node concept="2OqwBi" id="t2PHHvFdOc" role="2Oq$k0">
                          <node concept="1SfVH9" id="t2PHHvFdOd" role="2Oq$k0">
                            <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                          </node>
                          <node concept="32jkxy" id="t2PHHvFdOe" role="2OqNvi">
                            <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                          </node>
                        </node>
                        <node concept="32jkxy" id="t2PHHvFdOf" role="2OqNvi">
                          <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Pygp_" id="t2PHHvFdOg" role="2Pygpa">
                    <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                    <node concept="2OqwBi" id="t2PHHvFdOj" role="2PygpA">
                      <node concept="2OqwBi" id="t2PHHvFdOk" role="2Oq$k0">
                        <node concept="1SfVH9" id="t2PHHvFdOl" role="2Oq$k0">
                          <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                        </node>
                        <node concept="32jkxy" id="t2PHHvFdOm" role="2OqNvi">
                          <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                        </node>
                      </node>
                      <node concept="32jkxy" id="t2PHHvFdOn" role="2OqNvi">
                        <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3KEV6E" id="67eN9QkCLrC" role="2Gi6C2">
                  <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                  <node concept="2Pygp_" id="67eN9QkCLrD" role="2Pygpa">
                    <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                    <node concept="3cpWs3" id="67eN9QkCUdC" role="2PygpA">
                      <node concept="3b6qkQ" id="35HVCqFFMiW" role="3uHU7w">
                        <property role="$nhwW" value="110.0d" />
                      </node>
                      <node concept="2OqwBi" id="67eN9QkCOGq" role="3uHU7B">
                        <node concept="2OqwBi" id="67eN9QkCMRj" role="2Oq$k0">
                          <node concept="1SfVH9" id="67eN9QkCM5u" role="2Oq$k0">
                            <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                          </node>
                          <node concept="32jkxy" id="67eN9QkCNQX" role="2OqNvi">
                            <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                          </node>
                        </node>
                        <node concept="32jkxy" id="35HVCqFFO9h" role="2OqNvi">
                          <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Pygp_" id="67eN9QkCLrE" role="2Pygpa">
                    <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                    <node concept="3cpWs3" id="67eN9QkCZmG" role="2PygpA">
                      <node concept="3b6qkQ" id="35HVCqFFMLG" role="3uHU7w">
                        <property role="$nhwW" value="60.0d" />
                      </node>
                      <node concept="2OqwBi" id="67eN9QkCXYl" role="3uHU7B">
                        <node concept="2OqwBi" id="67eN9QkCW9g" role="2Oq$k0">
                          <node concept="1SfVH9" id="67eN9QkCVte" role="2Oq$k0">
                            <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                          </node>
                          <node concept="32jkxy" id="67eN9QkCX8V" role="2OqNvi">
                            <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                          </node>
                        </node>
                        <node concept="32jkxy" id="35HVCqFFPNR" role="2OqNvi">
                          <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3KEV6E" id="t2PHHvFji9" role="2Gi6C2">
                  <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                  <node concept="2Pygp_" id="t2PHHvFjia" role="2Pygpa">
                    <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                    <node concept="2OqwBi" id="t2PHHvFjid" role="2PygpA">
                      <node concept="2OqwBi" id="t2PHHvFjie" role="2Oq$k0">
                        <node concept="1SfVH9" id="t2PHHvFjif" role="2Oq$k0">
                          <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                        </node>
                        <node concept="32jkxy" id="t2PHHvFjig" role="2OqNvi">
                          <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                        </node>
                      </node>
                      <node concept="32jkxy" id="t2PHHvFjih" role="2OqNvi">
                        <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                      </node>
                    </node>
                  </node>
                  <node concept="2Pygp_" id="t2PHHvFjii" role="2Pygpa">
                    <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                    <node concept="3cpWs3" id="t2PHHvFjij" role="2PygpA">
                      <node concept="3b6qkQ" id="t2PHHvFjik" role="3uHU7w">
                        <property role="$nhwW" value="60.0d" />
                      </node>
                      <node concept="2OqwBi" id="t2PHHvFjil" role="3uHU7B">
                        <node concept="2OqwBi" id="t2PHHvFjim" role="2Oq$k0">
                          <node concept="1SfVH9" id="t2PHHvFjin" role="2Oq$k0">
                            <ref role="3cqZAo" node="3OZjsowq9ys" resolve="from" />
                          </node>
                          <node concept="32jkxy" id="t2PHHvFjio" role="2OqNvi">
                            <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                          </node>
                        </node>
                        <node concept="32jkxy" id="t2PHHvFjip" role="2OqNvi">
                          <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1SfVH9" id="67eN9QkCJge" role="37vLTJ">
                <ref role="3cqZAo" node="2ihDbyJLAdG" resolve="joints" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1FPxxo" id="67eN9QkfM5R" role="1FPzNG" />
    <node concept="32q3_s" id="67eN9QkfM5S" role="1FPzNG">
      <property role="TrG5h" value="lastUnit" />
      <node concept="3LmiP1" id="67eN9QkfM5T" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="67eN9QkfM5U" role="33vP2m">
        <node concept="2OqwBi" id="67eN9QkfM5V" role="2Oq$k0">
          <node concept="1SfVH9" id="67eN9QkfM5W" role="2Oq$k0">
            <ref role="3cqZAo" node="1bLYJ3eDu7H" resolve="lineSegments" />
          </node>
          <node concept="1yVyf7" id="67eN9QkfM5X" role="2OqNvi" />
        </node>
        <node concept="32jkxy" id="67eN9QkfM5Y" role="2OqNvi">
          <ref role="3cqZAo" node="2ihDbyJXriV" resolve="unit" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="67eN9QkfM5Z" role="1FPzNG">
      <property role="TrG5h" value="lastPerp" />
      <node concept="3LmiP1" id="67eN9QkfM60" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="67eN9QkfM61" role="33vP2m">
        <node concept="2OqwBi" id="67eN9QkfM62" role="2Oq$k0">
          <node concept="1SfVH9" id="67eN9QkfM63" role="2Oq$k0">
            <ref role="3cqZAo" node="67eN9QkfM5S" resolve="lastUnit" />
          </node>
          <node concept="32jkxy" id="67eN9QkfM64" role="2OqNvi">
            <ref role="3cqZAo" node="5rHgiqQFNOE" resolve="perp" />
          </node>
        </node>
        <node concept="2$Gk$L" id="67eN9QkfM65" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB2O5" resolve="mult" />
          <node concept="3b6qkQ" id="67eN9QkfM66" role="37wK5m">
            <property role="$nhwW" value="5.0d" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="67eN9QkfM67" role="1FPzNG">
      <property role="TrG5h" value="distEndPoint" />
      <node concept="3LmiP1" id="67eN9QkfM68" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="67eN9QkfM69" role="33vP2m">
        <node concept="1SfVH9" id="67eN9QkfM6a" role="2Oq$k0">
          <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
        </node>
        <node concept="2$Gk$L" id="67eN9QkfM6b" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
          <node concept="2OqwBi" id="67eN9QkfM6c" role="37wK5m">
            <node concept="1SfVH9" id="67eN9QkfM6d" role="2Oq$k0">
              <ref role="3cqZAo" node="67eN9QkfM5S" resolve="lastUnit" />
            </node>
            <node concept="2$Gk$L" id="67eN9QkfM6e" role="2OqNvi">
              <ref role="37wK5l" node="2xAA8jfB2O5" resolve="mult" />
              <node concept="3b6qkQ" id="67eN9QkfM6f" role="37wK5m">
                <property role="$nhwW" value="10.0d" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="67eN9QkfM6g" role="1FPzNG">
      <property role="TrG5h" value="lastLeft" />
      <node concept="3LmiP1" id="67eN9QkfM6h" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="67eN9QkfM6i" role="33vP2m">
        <node concept="1SfVH9" id="67eN9QkfM6j" role="2Oq$k0">
          <ref role="3cqZAo" node="67eN9QkfM67" resolve="distEndPoint" />
        </node>
        <node concept="2$Gk$L" id="67eN9QkfM6k" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
          <node concept="1SfVH9" id="67eN9QkfM6l" role="37wK5m">
            <ref role="3cqZAo" node="67eN9QkfM5Z" resolve="lastPerp" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="67eN9QkfM6m" role="1FPzNG">
      <property role="TrG5h" value="lastRight" />
      <node concept="3LmiP1" id="67eN9QkfM6n" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="67eN9QkfM6o" role="33vP2m">
        <node concept="1SfVH9" id="67eN9QkfM6p" role="2Oq$k0">
          <ref role="3cqZAo" node="67eN9QkfM67" resolve="distEndPoint" />
        </node>
        <node concept="2$Gk$L" id="67eN9QkfM6q" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
          <node concept="1SfVH9" id="67eN9QkfM6r" role="37wK5m">
            <ref role="3cqZAo" node="67eN9QkfM5Z" resolve="lastPerp" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1FPxxo" id="67eN9QkfM6s" role="1FPzNG" />
    <node concept="32q3_s" id="67eN9QkfM6t" role="1FPzNG">
      <property role="TrG5h" value="firstUnit" />
      <node concept="3LmiP1" id="67eN9QkfM6u" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="67eN9QkfM6v" role="33vP2m">
        <node concept="2OqwBi" id="67eN9QkfM6w" role="2Oq$k0">
          <node concept="1SfVH9" id="67eN9QkfM6x" role="2Oq$k0">
            <ref role="3cqZAo" node="1bLYJ3eDu7H" resolve="lineSegments" />
          </node>
          <node concept="1uHKPH" id="67eN9QkfM6y" role="2OqNvi" />
        </node>
        <node concept="32jkxy" id="67eN9QkfM6z" role="2OqNvi">
          <ref role="3cqZAo" node="2ihDbyJXriV" resolve="unit" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="67eN9QkfM6$" role="1FPzNG">
      <property role="TrG5h" value="firstPerp" />
      <node concept="3LmiP1" id="67eN9QkfM6_" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="67eN9QkfM6A" role="33vP2m">
        <node concept="2OqwBi" id="67eN9QkfM6B" role="2Oq$k0">
          <node concept="1SfVH9" id="67eN9QkfM6C" role="2Oq$k0">
            <ref role="3cqZAo" node="67eN9QkfM6t" resolve="firstUnit" />
          </node>
          <node concept="32jkxy" id="67eN9QkfM6D" role="2OqNvi">
            <ref role="3cqZAo" node="5rHgiqQFNOE" resolve="perp" />
          </node>
        </node>
        <node concept="2$Gk$L" id="67eN9QkfM6E" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB2O5" resolve="mult" />
          <node concept="3b6qkQ" id="67eN9QkfM6F" role="37wK5m">
            <property role="$nhwW" value="5.0d" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="67eN9QkfM6G" role="1FPzNG">
      <property role="TrG5h" value="distABeginPoint" />
      <node concept="3LmiP1" id="67eN9QkfM6H" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="67eN9QkfM6I" role="33vP2m">
        <node concept="1SfVH9" id="67eN9QkfM6J" role="2Oq$k0">
          <ref role="3cqZAo" node="10mRasGpZJ8" resolve="beginPoint" />
        </node>
        <node concept="2$Gk$L" id="67eN9QkfM6K" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
          <node concept="2OqwBi" id="67eN9QkfM6L" role="37wK5m">
            <node concept="1SfVH9" id="67eN9QkfM6M" role="2Oq$k0">
              <ref role="3cqZAo" node="67eN9QkfM6t" resolve="firstUnit" />
            </node>
            <node concept="2$Gk$L" id="67eN9QkfM6N" role="2OqNvi">
              <ref role="37wK5l" node="2xAA8jfB2O5" resolve="mult" />
              <node concept="3b6qkQ" id="67eN9QkfM6O" role="37wK5m">
                <property role="$nhwW" value="10.0d" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="67eN9QkfM6P" role="1FPzNG">
      <property role="TrG5h" value="distBBeginPoint" />
      <node concept="3LmiP1" id="67eN9QkfM6Q" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="67eN9QkfM6R" role="33vP2m">
        <node concept="1SfVH9" id="67eN9QkfM6S" role="2Oq$k0">
          <ref role="3cqZAo" node="10mRasGpZJ8" resolve="beginPoint" />
        </node>
        <node concept="2$Gk$L" id="67eN9QkfM6T" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
          <node concept="2OqwBi" id="67eN9QkfM6U" role="37wK5m">
            <node concept="1SfVH9" id="67eN9QkfM6V" role="2Oq$k0">
              <ref role="3cqZAo" node="67eN9QkfM6t" resolve="firstUnit" />
            </node>
            <node concept="2$Gk$L" id="67eN9QkfM6W" role="2OqNvi">
              <ref role="37wK5l" node="2xAA8jfB2O5" resolve="mult" />
              <node concept="3b6qkQ" id="67eN9QkfM6X" role="37wK5m">
                <property role="$nhwW" value="20.0d" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="67eN9QkfM6Y" role="1FPzNG">
      <property role="TrG5h" value="firstLeft" />
      <node concept="3LmiP1" id="67eN9QkfM6Z" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="67eN9QkfM70" role="33vP2m">
        <node concept="1SfVH9" id="67eN9QkfM71" role="2Oq$k0">
          <ref role="3cqZAo" node="67eN9QkfM6G" resolve="distABeginPoint" />
        </node>
        <node concept="2$Gk$L" id="67eN9QkfM72" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
          <node concept="1SfVH9" id="67eN9QkfM73" role="37wK5m">
            <ref role="3cqZAo" node="67eN9QkfM6$" resolve="firstPerp" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="67eN9QkfM74" role="1FPzNG">
      <property role="TrG5h" value="firstRight" />
      <node concept="3LmiP1" id="67eN9QkfM75" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="67eN9QkfM76" role="33vP2m">
        <node concept="1SfVH9" id="67eN9QkfM77" role="2Oq$k0">
          <ref role="3cqZAo" node="67eN9QkfM6G" resolve="distABeginPoint" />
        </node>
        <node concept="2$Gk$L" id="67eN9QkfM78" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
          <node concept="1SfVH9" id="67eN9QkfM79" role="37wK5m">
            <ref role="3cqZAo" node="67eN9QkfM6$" resolve="firstPerp" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1FPxxo" id="67eN9QkfM7a" role="1FPzNG" />
    <node concept="kUGYC" id="67eN9QkfM7b" role="1FPzNG">
      <property role="1ePe$S" value="true" />
      <property role="TrG5h" value="paintBegin" />
      <node concept="37vLTG" id="67eN9QkfM7c" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="67eN9QkfM7d" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="67eN9QkfM7e" role="1B3o_S" />
      <node concept="3clFbS" id="67eN9QkfM7f" role="3clF47">
        <node concept="3clFbJ" id="67eN9QkfM7g" role="3cqZAp">
          <node concept="3clFbS" id="67eN9QkfM7h" role="3clFbx">
            <node concept="3clFbF" id="67eN9QkfM7i" role="3cqZAp">
              <node concept="2YIFZM" id="67eN9QkfM7j" role="3clFbG">
                <ref role="37wK5l" to="u4ym:7wc8RN4MQ$M" resolve="drawPoly" />
                <ref role="1Pybhc" to="u4ym:7wc8RN4MMv1" resolve="D2D" />
                <node concept="37vLTw" id="67eN9QkfM7k" role="37wK5m">
                  <ref role="3cqZAo" node="67eN9QkfM7c" resolve="g" />
                </node>
                <node concept="10M0yZ" id="67eN9QkfM7l" role="37wK5m">
                  <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                  <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                </node>
                <node concept="10M0yZ" id="67eN9QkfM7m" role="37wK5m">
                  <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                  <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                </node>
                <node concept="10QFUN" id="67eN9QkfM7n" role="37wK5m">
                  <node concept="17QB3L" id="67eN9QkfM7o" role="10QFUM" />
                  <node concept="10Nm6u" id="67eN9QkfM7p" role="10QFUP" />
                </node>
                <node concept="2OqwBi" id="67eN9QkfM7q" role="37wK5m">
                  <node concept="1SfVH9" id="67eN9QkfM7r" role="2Oq$k0">
                    <ref role="3cqZAo" node="67eN9QkfM6P" resolve="distBBeginPoint" />
                  </node>
                  <node concept="2$Gk$L" id="67eN9QkfM7s" role="2OqNvi">
                    <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                  </node>
                </node>
                <node concept="2OqwBi" id="67eN9QkfM7t" role="37wK5m">
                  <node concept="1SfVH9" id="67eN9QkfM7u" role="2Oq$k0">
                    <ref role="3cqZAo" node="67eN9QkfM6P" resolve="distBBeginPoint" />
                  </node>
                  <node concept="2$Gk$L" id="67eN9QkfM7v" role="2OqNvi">
                    <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                  </node>
                </node>
                <node concept="2OqwBi" id="67eN9QkfM7w" role="37wK5m">
                  <node concept="1SfVH9" id="67eN9QkfM7x" role="2Oq$k0">
                    <ref role="3cqZAo" node="67eN9QkfM6Y" resolve="firstLeft" />
                  </node>
                  <node concept="2$Gk$L" id="67eN9QkfM7y" role="2OqNvi">
                    <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                  </node>
                </node>
                <node concept="2OqwBi" id="67eN9QkfM7z" role="37wK5m">
                  <node concept="1SfVH9" id="67eN9QkfM7$" role="2Oq$k0">
                    <ref role="3cqZAo" node="67eN9QkfM6Y" resolve="firstLeft" />
                  </node>
                  <node concept="2$Gk$L" id="67eN9QkfM7_" role="2OqNvi">
                    <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                  </node>
                </node>
                <node concept="2OqwBi" id="67eN9QkfM7A" role="37wK5m">
                  <node concept="1SfVH9" id="67eN9QkfM7B" role="2Oq$k0">
                    <ref role="3cqZAo" node="10mRasGpZJ8" resolve="beginPoint" />
                  </node>
                  <node concept="2$Gk$L" id="67eN9QkfM7C" role="2OqNvi">
                    <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                  </node>
                </node>
                <node concept="2OqwBi" id="67eN9QkfM7D" role="37wK5m">
                  <node concept="1SfVH9" id="67eN9QkfM7E" role="2Oq$k0">
                    <ref role="3cqZAo" node="10mRasGpZJ8" resolve="beginPoint" />
                  </node>
                  <node concept="2$Gk$L" id="67eN9QkfM7F" role="2OqNvi">
                    <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                  </node>
                </node>
                <node concept="2OqwBi" id="67eN9QkfM7G" role="37wK5m">
                  <node concept="1SfVH9" id="67eN9QkfM7H" role="2Oq$k0">
                    <ref role="3cqZAo" node="67eN9QkfM74" resolve="firstRight" />
                  </node>
                  <node concept="2$Gk$L" id="67eN9QkfM7I" role="2OqNvi">
                    <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                  </node>
                </node>
                <node concept="2OqwBi" id="67eN9QkfM7J" role="37wK5m">
                  <node concept="1SfVH9" id="67eN9QkfM7K" role="2Oq$k0">
                    <ref role="3cqZAo" node="67eN9QkfM74" resolve="firstRight" />
                  </node>
                  <node concept="2$Gk$L" id="67eN9QkfM7L" role="2OqNvi">
                    <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1SfVH9" id="67eN9QkfM7M" role="3clFbw">
            <ref role="3cqZAo" node="67eN9QkfM5a" resolve="comp" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="67eN9QkfM7N" role="3clF45" />
    </node>
    <node concept="kUGYC" id="67eN9QkfM7O" role="1FPzNG">
      <property role="1ePe$S" value="true" />
      <property role="TrG5h" value="paintEnd" />
      <node concept="37vLTG" id="67eN9QkfM7P" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="67eN9QkfM7Q" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="67eN9QkfM7R" role="1B3o_S" />
      <node concept="3clFbS" id="67eN9QkfM7S" role="3clF47">
        <node concept="3clFbF" id="67eN9QkfM7V" role="3cqZAp">
          <node concept="2YIFZM" id="67eN9QkfM7W" role="3clFbG">
            <ref role="37wK5l" to="u4ym:7wc8RN4MQzA" resolve="drawLine" />
            <ref role="1Pybhc" to="u4ym:7wc8RN4MMv1" resolve="D2D" />
            <node concept="37vLTw" id="67eN9QkfM7X" role="37wK5m">
              <ref role="3cqZAo" node="67eN9QkfM7P" resolve="g" />
            </node>
            <node concept="10M0yZ" id="67eN9QkfM7Y" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
              <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
            </node>
            <node concept="10QFUN" id="67eN9QkfM7Z" role="37wK5m">
              <node concept="17QB3L" id="67eN9QkfM80" role="10QFUM" />
              <node concept="10Nm6u" id="67eN9QkfM81" role="10QFUP" />
            </node>
            <node concept="2OqwBi" id="67eN9QkfM82" role="37wK5m">
              <node concept="1SfVH9" id="67eN9QkfM83" role="2Oq$k0">
                <ref role="3cqZAo" node="67eN9QkfM6g" resolve="lastLeft" />
              </node>
              <node concept="2$Gk$L" id="67eN9QkfM84" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="67eN9QkfM85" role="37wK5m">
              <node concept="1SfVH9" id="67eN9QkfM86" role="2Oq$k0">
                <ref role="3cqZAo" node="67eN9QkfM6g" resolve="lastLeft" />
              </node>
              <node concept="2$Gk$L" id="67eN9QkfM87" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
            <node concept="2OqwBi" id="67eN9QkfM88" role="37wK5m">
              <node concept="1SfVH9" id="67eN9QkfM89" role="2Oq$k0">
                <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
              </node>
              <node concept="2$Gk$L" id="67eN9QkfM8a" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="67eN9QkfM8b" role="37wK5m">
              <node concept="1SfVH9" id="67eN9QkfM8c" role="2Oq$k0">
                <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
              </node>
              <node concept="2$Gk$L" id="67eN9QkfM8d" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
            <node concept="2OqwBi" id="67eN9QkfM8e" role="37wK5m">
              <node concept="1SfVH9" id="67eN9QkfM8f" role="2Oq$k0">
                <ref role="3cqZAo" node="67eN9QkfM6m" resolve="lastRight" />
              </node>
              <node concept="2$Gk$L" id="67eN9QkfM8g" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="67eN9QkfM8h" role="37wK5m">
              <node concept="1SfVH9" id="67eN9QkfM8i" role="2Oq$k0">
                <ref role="3cqZAo" node="67eN9QkfM6m" resolve="lastRight" />
              </node>
              <node concept="2$Gk$L" id="67eN9QkfM8j" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="67eN9QkfM8n" role="3cqZAp">
          <node concept="3cpWsn" id="67eN9QkfM8o" role="3cpWs9">
            <property role="TrG5h" value="textSize" />
            <node concept="10Q1$e" id="67eN9QkfM8p" role="1tU5fm">
              <node concept="10Oyi0" id="67eN9QkfM8q" role="10Q1$1" />
            </node>
            <node concept="2YIFZM" id="67eN9QkfM8r" role="33vP2m">
              <ref role="37wK5l" to="u4ym:1JJxjdN67qh" resolve="textSize" />
              <ref role="1Pybhc" to="u4ym:7wc8RN4MMv1" resolve="D2D" />
              <node concept="37vLTw" id="67eN9QkfM8s" role="37wK5m">
                <ref role="3cqZAo" node="67eN9QkfM7P" resolve="g" />
              </node>
              <node concept="1SfVH9" id="67eN9QkfM8t" role="37wK5m">
                <ref role="3cqZAo" node="67eN9QkfM3O" resolve="roleText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="67eN9QkfM8u" role="3cqZAp">
          <node concept="2YIFZM" id="67eN9QkfM8v" role="3clFbG">
            <ref role="37wK5l" to="u4ym:48t5RdhaY9I" resolve="drawText" />
            <ref role="1Pybhc" to="u4ym:7wc8RN4MMv1" resolve="D2D" />
            <node concept="37vLTw" id="67eN9QkfM8w" role="37wK5m">
              <ref role="3cqZAo" node="67eN9QkfM7P" resolve="g" />
            </node>
            <node concept="10M0yZ" id="67eN9QkfM8x" role="37wK5m">
              <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
              <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="1SfVH9" id="67eN9QkfM8y" role="37wK5m">
              <ref role="3cqZAo" node="67eN9QkfM3O" resolve="roleText" />
            </node>
            <node concept="3cpWs3" id="67eN9QkfM8z" role="37wK5m">
              <node concept="1eOMI4" id="67eN9QkfM8$" role="3uHU7w">
                <node concept="3K4zz7" id="67eN9QkfM8_" role="1eOMHV">
                  <node concept="1SfVH9" id="67eN9QkfM8A" role="3K4Cdx">
                    <ref role="3cqZAo" node="67eN9QkfM46" resolve="textLeft" />
                  </node>
                  <node concept="3cpWsd" id="67eN9QkfM8B" role="3K4E3e">
                    <node concept="3cmrfG" id="67eN9QkfM8C" role="3uHU7w">
                      <property role="3cmrfH" value="7" />
                    </node>
                    <node concept="1ZRNhn" id="67eN9QkfM8D" role="3uHU7B">
                      <node concept="AH0OO" id="67eN9QkfM8E" role="2$L3a6">
                        <node concept="3cmrfG" id="67eN9QkfM8F" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="67eN9QkfM8G" role="AHHXb">
                          <ref role="3cqZAo" node="67eN9QkfM8o" resolve="textSize" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="67eN9QkfM8H" role="3K4GZi">
                    <property role="3cmrfH" value="7" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="67eN9QkfM8I" role="3uHU7B">
                <node concept="1SfVH9" id="67eN9QkfM8J" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
                </node>
                <node concept="2$Gk$L" id="67eN9QkfM8K" role="2OqNvi">
                  <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
                </node>
              </node>
            </node>
            <node concept="3cpWs3" id="67eN9QkfM8L" role="37wK5m">
              <node concept="1eOMI4" id="67eN9QkfM8M" role="3uHU7w">
                <node concept="3K4zz7" id="67eN9QkfM8N" role="1eOMHV">
                  <node concept="1ZRNhn" id="67eN9QkfM8O" role="3K4E3e">
                    <node concept="3cmrfG" id="67eN9QkfM8P" role="2$L3a6">
                      <property role="3cmrfH" value="8" />
                    </node>
                  </node>
                  <node concept="1SfVH9" id="67eN9QkfM8Q" role="3K4Cdx">
                    <ref role="3cqZAo" node="67eN9QkfM4C" resolve="textUp" />
                  </node>
                  <node concept="3cpWs3" id="67eN9QkfM8R" role="3K4GZi">
                    <node concept="3cmrfG" id="67eN9QkfM8S" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="AH0OO" id="67eN9QkfM8T" role="3uHU7B">
                      <node concept="3cmrfG" id="67eN9QkfM8U" role="AHEQo">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="37vLTw" id="67eN9QkfM8V" role="AHHXb">
                        <ref role="3cqZAo" node="67eN9QkfM8o" resolve="textSize" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="67eN9QkfM8W" role="3uHU7B">
                <node concept="1SfVH9" id="67eN9QkfM8X" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
                </node>
                <node concept="2$Gk$L" id="67eN9QkfM8Y" role="2OqNvi">
                  <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="67eN9QkfM8Z" role="3clF45" />
    </node>
  </node>
  <node concept="2UJ2oG" id="67eN9QkfT0n">
    <property role="3GE5qa" value="concept_diagram" />
    <property role="TrG5h" value="LinkLine" />
    <node concept="2UJ2Q1" id="67eN9QkfT0o" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="3OZjsowp$AG" resolve="DMultiLineEdge" />
    </node>
  </node>
  <node concept="3HP615" id="1CjrrCLv78O">
    <property role="TrG5h" value="Colors" />
    <property role="3GE5qa" value="concept_diagram" />
    <node concept="Wx3nA" id="1CjrrCLv7bc" role="jymVt">
      <property role="TrG5h" value="lightYellow" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1CjrrCLv7bd" role="1B3o_S" />
      <node concept="3uibUv" id="1CjrrCLv7aZ" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="1CjrrCLv7gu" role="33vP2m">
        <node concept="1pGfFk" id="1CjrrCLv7bw" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="1CjrrCLxoxg" role="37wK5m">
            <property role="3cmrfH" value="255" />
          </node>
          <node concept="3cmrfG" id="1CjrrCLw8IM" role="37wK5m">
            <property role="3cmrfH" value="255" />
          </node>
          <node concept="3cmrfG" id="1CjrrCLw8V$" role="37wK5m">
            <property role="3cmrfH" value="220" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="HeoZc4zGJi" role="jymVt">
      <property role="TrG5h" value="lightBlue" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="HeoZc4zGJj" role="1B3o_S" />
      <node concept="3uibUv" id="HeoZc4zGJk" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="HeoZc4zGJl" role="33vP2m">
        <node concept="1pGfFk" id="HeoZc4zGJm" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="HeoZc4zGJn" role="37wK5m">
            <property role="3cmrfH" value="235" />
          </node>
          <node concept="3cmrfG" id="HeoZc4zGJo" role="37wK5m">
            <property role="3cmrfH" value="235" />
          </node>
          <node concept="3cmrfG" id="HeoZc4zGJp" role="37wK5m">
            <property role="3cmrfH" value="255" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="HeoZc4zGIZ" role="jymVt" />
    <node concept="3Tm1VV" id="1CjrrCLv78P" role="1B3o_S" />
  </node>
  <node concept="311c5q" id="5hEUvARtaAl">
    <property role="3GE5qa" value="struct_diagram" />
    <ref role="311c5K" to="53d4:5hEUvARta2y" resolve="StructDiagram" />
    <ref role="2RaPBF" node="5hEUvARtdnC" resolve="STRUCT_DIAGRAM" />
    <node concept="3tBE6w" id="3jHNPFKJUp3" role="1FPzNG">
      <node concept="3clFbF" id="3jHNPFKJUp4" role="30jUnX">
        <node concept="E34o$" id="3jHNPFKJUp5" role="3clFbG">
          <node concept="1SfVH9" id="3jHNPFKJUp6" role="37vLTJ">
            <ref role="3cqZAo" node="4Oa6zNZz9Lj" resolve="canvas" />
          </node>
          <node concept="3K4zz7" id="3jHNPFKJUp7" role="37vLTx">
            <node concept="10Nm6u" id="3jHNPFKJUp8" role="3K4GZi" />
            <node concept="1SfVH9" id="3jHNPFKJUp9" role="3K4Cdx">
              <ref role="3cqZAo" node="AO_ohtcfNz" resolve="viewed" />
            </node>
            <node concept="3KEV6E" id="3jHNPFKJUpa" role="3K4E3e">
              <ref role="2UJ2yc" node="2QCHpowuQyh" resolve="StructDiagramCanvas" />
              <node concept="2Pygp_" id="3jHNPFKJUpb" role="2Pygpa">
                <ref role="2Pygpw" node="3OZjsowr3$L" resolve="iDiagram" />
                <node concept="2Wb9Zs" id="3jHNPFKJUpc" role="2PygpA" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2QCHpowuGpK" role="1FPzNG">
      <property role="TrG5h" value="module" />
      <node concept="3uibUv" id="2QCHpowuGpE" role="1tU5fm">
        <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
      </node>
      <node concept="2OqwBi" id="2QCHpowuGpF" role="33vP2m">
        <node concept="2OqwBi" id="2QCHpowuGpG" role="2Oq$k0">
          <node concept="2Wb9Zs" id="2QCHpowuGpH" role="2Oq$k0" />
          <node concept="I4A8Y" id="2QCHpowuGpI" role="2OqNvi" />
        </node>
        <node concept="1j$Ddu" id="2QCHpowuGpJ" role="2OqNvi" />
      </node>
    </node>
    <node concept="3tBE6w" id="2$yK5YK4xze" role="1FPzNG">
      <node concept="3clFbJ" id="2$yK5YK4xzf" role="30jUnX">
        <node concept="3clFbS" id="2$yK5YK4xzg" role="3clFbx">
          <node concept="3clFbF" id="2$yK5YK4xzh" role="3cqZAp">
            <node concept="E34o$" id="2$yK5YK4xzi" role="3clFbG">
              <node concept="2pJPEk" id="2$yK5YK4xzj" role="37vLTx">
                <node concept="2pJPED" id="2$yK5YK4xzk" role="2pJPEn">
                  <ref role="2pJxaS" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
                  <node concept="2pJxcG" id="2$yK5YK4xzl" role="2pJxcM">
                    <ref role="2pJxcJ" to="hypd:1AZH1sZHi4e" resolve="qualifiedName" />
                    <node concept="WxPPo" id="2$yK5YK4xzm" role="28ntcv">
                      <node concept="2OqwBi" id="2$yK5YK4xzn" role="WxPPp">
                        <node concept="liA8E" id="2$yK5YK4xzt" role="2OqNvi">
                          <ref role="37wK5l" to="t4tl:~DModule.getModuleName()" resolve="getModuleName" />
                        </node>
                        <node concept="1SfVH9" id="2$yK5YK4Aqp" role="2Oq$k0">
                          <ref role="3cqZAo" node="2QCHpowuGpK" resolve="module" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2pJxcG" id="2$yK5YK4xzu" role="2pJxcM">
                    <ref role="2pJxcJ" to="hypd:1AZH1sZHi4d" resolve="uuid" />
                    <node concept="2OqwBi" id="2$yK5YK4xzv" role="28ntcv">
                      <node concept="2YIFZM" id="2$yK5YK4xzw" role="2Oq$k0">
                        <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                        <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                      </node>
                      <node concept="liA8E" id="2$yK5YK4xzx" role="2OqNvi">
                        <ref role="37wK5l" to="dush:~PersistenceFacade.asString(org.jetbrains.mps.openapi.module.SModuleId)" resolve="asString" />
                        <node concept="2OqwBi" id="2$yK5YK4xzy" role="37wK5m">
                          <node concept="liA8E" id="2$yK5YK4xzz" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~DModule.getModuleId()" resolve="getModuleId" />
                          </node>
                          <node concept="1SfVH9" id="2$yK5YK4Pmk" role="2Oq$k0">
                            <ref role="3cqZAo" node="2QCHpowuGpK" resolve="module" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2$yK5YK4xzD" role="37vLTJ">
                <node concept="2Wb9Zs" id="2$yK5YK4xzE" role="2Oq$k0" />
                <node concept="3TrEf2" id="2$yK5YK4xzF" role="2OqNvi">
                  <ref role="3Tt5mk" to="53d4:2$yK5YK4u0F" resolve="drawnModuleREf" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="22lmx$" id="2$yK5YK4xzG" role="3clFbw">
          <node concept="22lmx$" id="2$yK5YK4xzH" role="3uHU7B">
            <node concept="3clFbC" id="2$yK5YK4xzI" role="3uHU7B">
              <node concept="2OqwBi" id="2$yK5YK4xzJ" role="3uHU7B">
                <node concept="2Wb9Zs" id="2$yK5YK4xzK" role="2Oq$k0" />
                <node concept="3TrEf2" id="2$yK5YK4xzL" role="2OqNvi">
                  <ref role="3Tt5mk" to="53d4:2$yK5YK4u0F" resolve="drawnModuleREf" />
                </node>
              </node>
              <node concept="10Nm6u" id="2$yK5YK4xzM" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="2$yK5YK4xzN" role="3uHU7w">
              <node concept="2OqwBi" id="2$yK5YK4xzO" role="2Oq$k0">
                <node concept="2OqwBi" id="2$yK5YK4xzP" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="2$yK5YK4xzQ" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2$yK5YK4xzR" role="2OqNvi">
                    <ref role="3Tt5mk" to="53d4:2$yK5YK4u0F" resolve="drawnModuleREf" />
                  </node>
                </node>
                <node concept="3TrcHB" id="2$yK5YK4xzS" role="2OqNvi">
                  <ref role="3TsBF5" to="hypd:1AZH1sZHi4e" resolve="qualifiedName" />
                </node>
              </node>
              <node concept="17RlXB" id="2$yK5YK4xzT" role="2OqNvi" />
            </node>
          </node>
          <node concept="2OqwBi" id="2$yK5YK4xzU" role="3uHU7w">
            <node concept="2OqwBi" id="2$yK5YK4xzV" role="2Oq$k0">
              <node concept="2OqwBi" id="2$yK5YK4xzW" role="2Oq$k0">
                <node concept="2Wb9Zs" id="2$yK5YK4xzX" role="2Oq$k0" />
                <node concept="3TrEf2" id="2$yK5YK4xzY" role="2OqNvi">
                  <ref role="3Tt5mk" to="53d4:2$yK5YK4u0F" resolve="drawnModuleREf" />
                </node>
              </node>
              <node concept="3TrcHB" id="2$yK5YK4xzZ" role="2OqNvi">
                <ref role="3TsBF5" to="hypd:1AZH1sZHi4d" resolve="uuid" />
              </node>
            </node>
            <node concept="17RlXB" id="2$yK5YK4x$0" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2$yK5YK4x$1" role="1FPzNG">
      <property role="TrG5h" value="drawnModule" />
      <property role="KodbT" value="true" />
      <node concept="3uibUv" id="2$yK5YK4x$2" role="1tU5fm">
        <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
      </node>
      <node concept="2YIFZM" id="2$yK5YK4x$3" role="33vP2m">
        <ref role="37wK5l" to="u4ym:7aFw1sqCQKd" resolve="resolve" />
        <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
        <node concept="2OqwBi" id="2$yK5YK4x$4" role="37wK5m">
          <node concept="2OqwBi" id="2$yK5YK4x$5" role="2Oq$k0">
            <node concept="2Wb9Zs" id="2$yK5YK4x$6" role="2Oq$k0" />
            <node concept="3TrEf2" id="2$yK5YK4x$7" role="2OqNvi">
              <ref role="3Tt5mk" to="53d4:2$yK5YK4u0F" resolve="drawnModuleREf" />
            </node>
          </node>
          <node concept="2qgKlT" id="2$yK5YK4x$8" role="2OqNvi">
            <ref role="37wK5l" to="wev6:2BHFktfnkjF" resolve="toModuleReference" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2$yK5YK4x$9" role="1FPzNG">
      <property role="TrG5h" value="drawnModel" />
      <property role="KodbT" value="true" />
      <node concept="H_c77" id="2$yK5YK4x$a" role="1tU5fm" />
      <node concept="2EnYce" id="2$yK5YKlLLz" role="33vP2m">
        <node concept="2EnYce" id="2$yK5YKlIyR" role="2Oq$k0">
          <node concept="1SfVH9" id="2$yK5YK4x$d" role="2Oq$k0">
            <ref role="3cqZAo" node="2$yK5YK4x$1" resolve="drawnModule" />
          </node>
          <node concept="2YLb8l" id="2$yK5YK4x$e" role="2OqNvi" />
        </node>
        <node concept="1z4cxt" id="2$yK5YK4x$f" role="2OqNvi">
          <node concept="1bVj0M" id="2$yK5YK4x$g" role="23t8la">
            <node concept="3clFbS" id="2$yK5YK4x$h" role="1bW5cS">
              <node concept="3clFbF" id="t2PHHuhgZs" role="3cqZAp">
                <node concept="2_n6$v" id="t2PHHuhpau" role="3clFbG">
                  <node concept="3clFbT" id="t2PHHuhq4Y" role="2_mOWp" />
                  <node concept="2OqwBi" id="t2PHHuhho5" role="2Oq$k0">
                    <node concept="37vLTw" id="t2PHHuhgZr" role="2Oq$k0">
                      <ref role="3cqZAo" node="2$yK5YK4x$q" resolve="m" />
                    </node>
                    <node concept="LkI2h" id="t2PHHuhifn" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="t2PHHuhjKh" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                    <node concept="Xl_RD" id="t2PHHuhk4j" role="37wK5m">
                      <property role="Xl_RC" value=".rules" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="2$yK5YK4x$q" role="1bW2Oz">
              <property role="TrG5h" value="m" />
              <node concept="2jxLKc" id="2$yK5YK4x$r" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="2$yK5YK5FWI" role="1FPzNG">
      <node concept="3clFbJ" id="2$yK5YK5FWJ" role="30jUnX">
        <node concept="22lmx$" id="2$yK5YKlQDU" role="3clFbw">
          <node concept="3clFbC" id="2$yK5YKlWCT" role="3uHU7w">
            <node concept="10Nm6u" id="2$yK5YKlZpZ" role="3uHU7w" />
            <node concept="1SfVH9" id="2$yK5YKlSBy" role="3uHU7B">
              <ref role="3cqZAo" node="2$yK5YK4x$9" resolve="drawnModel" />
            </node>
          </node>
          <node concept="2OqwBi" id="2$yK5YK5FWK" role="3uHU7B">
            <node concept="2Wb9Zs" id="2$yK5YK5FWL" role="2Oq$k0" />
            <node concept="3TrcHB" id="2$yK5YK5FWM" role="2OqNvi">
              <ref role="3TsBF5" to="53d4:2$yK5YK5zMw" resolve="manual" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2$yK5YK5FWN" role="3clFbx">
          <node concept="3clFbF" id="2$yK5YK5FWO" role="3cqZAp">
            <node concept="E34o$" id="2$yK5YK5FWP" role="3clFbG">
              <node concept="2OqwBi" id="2$yK5YK5FWQ" role="37vLTJ">
                <node concept="2Wb9Zs" id="2$yK5YK5FWR" role="2Oq$k0" />
                <node concept="3Tsc0h" id="2$yK5YK5FWS" role="2OqNvi">
                  <ref role="3TtcxE" to="53d4:5hEUvARtaAj" resolve="structs" />
                </node>
              </node>
              <node concept="2OqwBi" id="2$yK5YK5FWT" role="37vLTx">
                <node concept="2OqwBi" id="2$yK5YK5FWU" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="2$yK5YK5FWV" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="2$yK5YK5FWW" role="2OqNvi">
                    <ref role="3TtcxE" to="53d4:5hEUvARtaAj" resolve="structs" />
                  </node>
                </node>
                <node concept="3zZkjj" id="2$yK5YK5FWX" role="2OqNvi">
                  <node concept="1bVj0M" id="2$yK5YK5FWY" role="23t8la">
                    <node concept="3clFbS" id="2$yK5YK5FWZ" role="1bW5cS">
                      <node concept="3clFbF" id="2$yK5YK5FX0" role="3cqZAp">
                        <node concept="22lmx$" id="2$yK5YK5FX1" role="3clFbG">
                          <node concept="3clFbC" id="2$yK5YK5FX2" role="3uHU7B">
                            <node concept="10Nm6u" id="2$yK5YK5FX3" role="3uHU7w" />
                            <node concept="2OqwBi" id="2$yK5YK5FX4" role="3uHU7B">
                              <node concept="37vLTw" id="2$yK5YK5FX5" role="2Oq$k0">
                                <ref role="3cqZAo" node="2$yK5YK5FXe" resolve="cr" />
                              </node>
                              <node concept="3TrEf2" id="2$yK5YK5FX6" role="2OqNvi">
                                <ref role="3Tt5mk" to="53d4:5hEUvARtaxq" resolve="struct" />
                              </node>
                            </node>
                          </node>
                          <node concept="3y3z36" id="2$yK5YK5FX7" role="3uHU7w">
                            <node concept="10Nm6u" id="2$yK5YK5FX8" role="3uHU7w" />
                            <node concept="2OqwBi" id="2$yK5YK5FX9" role="3uHU7B">
                              <node concept="2OqwBi" id="2$yK5YK5FXa" role="2Oq$k0">
                                <node concept="37vLTw" id="2$yK5YK5FXb" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2$yK5YK5FXe" resolve="cr" />
                                </node>
                                <node concept="3TrEf2" id="2$yK5YK5FXc" role="2OqNvi">
                                  <ref role="3Tt5mk" to="53d4:5hEUvARtaxq" resolve="struct" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="2$yK5YK5FXd" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2$yK5YK5FXe" role="1bW2Oz">
                      <property role="TrG5h" value="cr" />
                      <node concept="2jxLKc" id="2$yK5YK5FXf" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="2$yK5YK5FXg" role="9aQIa">
          <node concept="3clFbS" id="2$yK5YK5FXh" role="9aQI4">
            <node concept="3clFbF" id="2$yK5YK5FXi" role="3cqZAp">
              <node concept="E34o$" id="2$yK5YK5FXj" role="3clFbG">
                <node concept="2OqwBi" id="2$yK5YK5FXk" role="37vLTJ">
                  <node concept="2Wb9Zs" id="2$yK5YK5FXl" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="2$yK5YK5FXm" role="2OqNvi">
                    <ref role="3TtcxE" to="53d4:5hEUvARtaAj" resolve="structs" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2$yK5YK5FXn" role="37vLTx">
                  <node concept="2OqwBi" id="2$yK5YK5FXo" role="2Oq$k0">
                    <node concept="2OqwBi" id="2$yK5YK5FXp" role="2Oq$k0">
                      <node concept="1SfVH9" id="2$yK5YK5FXq" role="2Oq$k0">
                        <ref role="3cqZAo" node="2$yK5YK4x$9" resolve="drawnModel" />
                      </node>
                      <node concept="2RRcyG" id="2$yK5YK5FXr" role="2OqNvi">
                        <node concept="chp4Y" id="2$yK5YK5FXs" role="3MHsoP">
                          <ref role="cht4Q" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
                        </node>
                      </node>
                    </node>
                    <node concept="2S7cBI" id="2$yK5YK5FXt" role="2OqNvi">
                      <node concept="1bVj0M" id="2$yK5YK5FXu" role="23t8la">
                        <node concept="3clFbS" id="2$yK5YK5FXv" role="1bW5cS">
                          <node concept="3clFbF" id="2$yK5YK5FXw" role="3cqZAp">
                            <node concept="2OqwBi" id="2$yK5YK5FXx" role="3clFbG">
                              <node concept="37vLTw" id="2$yK5YK5FXy" role="2Oq$k0">
                                <ref role="3cqZAo" node="2$yK5YK5FX$" resolve="c" />
                              </node>
                              <node concept="3TrcHB" id="2$yK5YK5FXz" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="2$yK5YK5FX$" role="1bW2Oz">
                          <property role="TrG5h" value="c" />
                          <node concept="2jxLKc" id="2$yK5YK5FX_" role="1tU5fm" />
                        </node>
                      </node>
                      <node concept="1nlBCl" id="2$yK5YK5FXA" role="2S7zOq">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="2$yK5YK5FXB" role="2OqNvi">
                    <node concept="1bVj0M" id="2$yK5YK5FXC" role="23t8la">
                      <node concept="3clFbS" id="2$yK5YK5FXD" role="1bW5cS">
                        <node concept="3clFbF" id="2$yK5YK5FXE" role="3cqZAp">
                          <node concept="2pJPEk" id="2$yK5YK5FXF" role="3clFbG">
                            <node concept="2pJPED" id="2$yK5YK5FXG" role="2pJPEn">
                              <ref role="2pJxaS" to="53d4:5hEUvARtaxp" resolve="StructRef" />
                              <node concept="2pIpSj" id="2$yK5YK5FXH" role="2pJxcM">
                                <ref role="2pIpSl" to="53d4:5hEUvARtaxq" resolve="struct" />
                                <node concept="36biLy" id="2$yK5YK5FXI" role="28nt2d">
                                  <node concept="37vLTw" id="2$yK5YK5FXJ" role="36biLW">
                                    <ref role="3cqZAo" node="2$yK5YK5FXK" resolve="c" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="2$yK5YK5FXK" role="1bW2Oz">
                        <property role="TrG5h" value="s" />
                        <node concept="2jxLKc" id="2$yK5YK5FXL" role="1tU5fm" />
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
    <node concept="1FPxxo" id="2$yK5YK5DK$" role="1FPzNG" />
  </node>
  <node concept="2Rb1jd" id="5hEUvARtdnC">
    <property role="TrG5h" value="STRUCT_DIAGRAM" />
    <property role="3GE5qa" value="struct_diagram" />
    <property role="2bPw2W" value="true" />
    <node concept="2RaPxm" id="5hEUvARtdnD" role="2RaPxw">
      <ref role="2RaPxn" node="3HJBHARsh6E" resolve="DIAGRAM" />
    </node>
  </node>
  <node concept="2UJ2oG" id="2QCHpowuQyh">
    <property role="3GE5qa" value="struct_diagram" />
    <property role="TrG5h" value="StructDiagramCanvas" />
    <node concept="2UJ2Q1" id="2QCHpowuQyW" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="3OZjsowr30i" resolve="DDiagramCanvas" />
    </node>
  </node>
  <node concept="3LmNE2" id="2QCHpowuSL$">
    <property role="3GE5qa" value="struct_diagram" />
    <ref role="2UJ2Q8" node="2QCHpowuQyh" resolve="StructDiagramCanvas" />
    <ref role="2RaPBF" node="5hEUvARtdnC" resolve="STRUCT_DIAGRAM" />
    <node concept="32q3_s" id="2QCHpowuTqZ" role="1FPzNG">
      <property role="TrG5h" value="structsInDiagram" />
      <node concept="2I9FWS" id="2QCHpowuTr0" role="1tU5fm">
        <ref role="2I9WkF" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
      </node>
      <node concept="2OqwBi" id="2QCHpowuTr1" role="33vP2m">
        <node concept="2OqwBi" id="2QCHpowuTr2" role="2Oq$k0">
          <node concept="3Tsc0h" id="2QCHpowuTr3" role="2OqNvi">
            <ref role="3TtcxE" to="53d4:5hEUvARtaAj" resolve="structs" />
          </node>
          <node concept="1PxgMI" id="2QCHpowuTr4" role="2Oq$k0">
            <node concept="chp4Y" id="2QCHpowuTr5" role="3oSUPX">
              <ref role="cht4Q" to="53d4:5hEUvARta2y" resolve="StructDiagram" />
            </node>
            <node concept="1SfVH9" id="2QCHpowuTr6" role="1m5AlR">
              <ref role="3cqZAo" node="3OZjsowr3$L" resolve="iDiagram" />
            </node>
          </node>
        </node>
        <node concept="13MTOM" id="2QCHpowuTr7" role="2OqNvi">
          <ref role="13MTZg" to="53d4:5hEUvARtaxq" resolve="struct" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2QCHpowuTr8" role="1FPzNG">
      <property role="TrG5h" value="structRectangles" />
      <node concept="_YKpA" id="2QCHpowuTr9" role="1tU5fm">
        <node concept="3LmiP1" id="2QCHpowuTra" role="_ZDj9">
          <ref role="2XDbjv" node="2QCHpowuSLJ" resolve="StructRectangle" />
        </node>
      </node>
      <node concept="2OqwBi" id="2QCHpowuTrb" role="33vP2m">
        <node concept="1SfVH9" id="2QCHpowuTrc" role="2Oq$k0">
          <ref role="3cqZAo" node="2QCHpowuTqZ" resolve="conceptsInDiagram" />
        </node>
        <node concept="3$u5V9" id="2QCHpowuTrd" role="2OqNvi">
          <node concept="1bVj0M" id="2QCHpowuTre" role="23t8la">
            <node concept="3clFbS" id="2QCHpowuTrf" role="1bW5cS">
              <node concept="3clFbF" id="2QCHpowuTrg" role="3cqZAp">
                <node concept="3KEV6E" id="2QCHpowuTrh" role="3clFbG">
                  <ref role="2UJ2yc" node="2QCHpowuSLJ" resolve="StructRectangle" />
                  <node concept="2Pygp_" id="2QCHpowuTri" role="2Pygpa">
                    <ref role="2Pygpw" node="3HJBHARurzj" resolve="diagram" />
                    <node concept="2Wb9Zs" id="2QCHpowuTrj" role="2PygpA" />
                  </node>
                  <node concept="2Pygp_" id="2QCHpowuTrk" role="2Pygpa">
                    <ref role="2Pygpw" node="3OZjsowptDh" resolve="node" />
                    <node concept="37vLTw" id="2QCHpowuTrl" role="2PygpA">
                      <ref role="3cqZAo" node="2QCHpowuTrm" resolve="c" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="2QCHpowuTrm" role="1bW2Oz">
              <property role="TrG5h" value="c" />
              <node concept="2jxLKc" id="2QCHpowuTrn" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2QCHpowuTro" role="1FPzNG">
      <property role="TrG5h" value="specialisationLines" />
      <node concept="_YKpA" id="2QCHpowuTrp" role="1tU5fm">
        <node concept="3LmiP1" id="2QCHpowuTrq" role="_ZDj9">
          <ref role="2XDbjv" node="2QCHpowuSMF" resolve="StructSpecialisationLine" />
        </node>
      </node>
      <node concept="2OqwBi" id="76DRFzMItUn" role="33vP2m">
        <node concept="1SfVH9" id="76DRFzME$ah" role="2Oq$k0">
          <ref role="3cqZAo" node="2QCHpowuTr8" resolve="structRectangles" />
        </node>
        <node concept="13MTOL" id="76DRFzMIxKW" role="2OqNvi">
          <ref role="13MTZf" node="2QCHpoww0PK" resolve="specialisationLines" />
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="2QCHpowuTr$" role="1FPzNG">
      <node concept="3clFbF" id="2QCHpowuTr_" role="30jUnX">
        <node concept="E34o$" id="2QCHpowuTrA" role="3clFbG">
          <node concept="1SfVH9" id="2QCHpowuTrB" role="37vLTJ">
            <ref role="3cqZAo" node="7nNrlO1Gveo" resolve="shapes" />
          </node>
          <node concept="36be1Y" id="2QCHpowuTrC" role="37vLTx">
            <node concept="1SfVH9" id="2QCHpowuTrD" role="2Gi6C2">
              <ref role="3cqZAo" node="2QCHpowuTr8" resolve="conceptRectangles" />
            </node>
            <node concept="1SfVH9" id="2QCHpowuTrE" role="2Gi6C2">
              <ref role="3cqZAo" node="2QCHpowuTro" resolve="specialisationLines" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="2QCHpowuTrG" role="1FPzNG">
      <node concept="3clFbF" id="2QCHpowuTrH" role="30jUnX">
        <node concept="E34o$" id="2QCHpowuTrI" role="3clFbG">
          <node concept="1SfVH9" id="2QCHpowuTrJ" role="37vLTJ">
            <ref role="3cqZAo" node="3nsHMGrWhjH" resolve="color" />
          </node>
          <node concept="2ShNRf" id="2QCHpowuTrK" role="37vLTx">
            <node concept="1pGfFk" id="2QCHpowuTrL" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
              <node concept="3cmrfG" id="2QCHpowuTrM" role="37wK5m">
                <property role="3cmrfH" value="246" />
              </node>
              <node concept="3cmrfG" id="2QCHpowuTrN" role="37wK5m">
                <property role="3cmrfH" value="246" />
              </node>
              <node concept="3cmrfG" id="2QCHpowuTrO" role="37wK5m">
                <property role="3cmrfH" value="246" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="76DRFzME$ag" role="1FPzNG">
      <property role="TrG5h" value="superLevels" />
      <node concept="2hMVRd" id="76DRFzMEIt1" role="1tU5fm">
        <node concept="10Oyi0" id="76DRFzMEIt3" role="2hN53Y" />
      </node>
      <node concept="2OqwBi" id="76DRFzME$ad" role="33vP2m">
        <node concept="1SfVH9" id="76DRFzME$ae" role="2Oq$k0">
          <ref role="3cqZAo" node="2QCHpowuTr8" resolve="structRectangles" />
        </node>
        <node concept="13MTOL" id="76DRFzME$af" role="2OqNvi">
          <ref role="13MTZf" node="3aGGciKnkt4" resolve="superLevel" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="76DRFzME0WJ" role="1FPzNG">
      <property role="TrG5h" value="lines" />
      <node concept="3rvAFt" id="76DRFzMEJ7C" role="1tU5fm">
        <node concept="10Oyi0" id="76DRFzMEJkW" role="3rvQeY" />
        <node concept="_YKpA" id="76DRFzMEK7U" role="3rvSg0">
          <node concept="3LmiP1" id="76DRFzMEKjn" role="_ZDj9">
            <ref role="2XDbjv" node="2QCHpowuSLJ" resolve="StructRectangle" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="76DRFzMERnq" role="1FPzNG">
      <node concept="9aQIb" id="76DRFzMES34" role="30jUnX">
        <node concept="3clFbS" id="76DRFzMES35" role="9aQI4">
          <node concept="3cpWs8" id="76DRFzMESg1" role="3cqZAp">
            <node concept="3cpWsn" id="76DRFzMESg4" role="3cpWs9">
              <property role="TrG5h" value="map" />
              <node concept="3rvAFt" id="76DRFzMESfY" role="1tU5fm">
                <node concept="10Oyi0" id="76DRFzMESgj" role="3rvQeY" />
                <node concept="_YKpA" id="76DRFzMESgu" role="3rvSg0">
                  <node concept="3LmiP1" id="76DRFzMESgv" role="_ZDj9">
                    <ref role="2XDbjv" node="2QCHpowuSLJ" resolve="StructRectangle" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="76DRFzMESux" role="33vP2m">
                <node concept="3rGOSV" id="76DRFzMESrI" role="2ShVmc">
                  <node concept="10Oyi0" id="76DRFzMESrJ" role="3rHrn6" />
                  <node concept="_YKpA" id="76DRFzMESrK" role="3rHtpV">
                    <node concept="3LmiP1" id="76DRFzMESrL" role="_ZDj9">
                      <ref role="2XDbjv" node="2QCHpowuSLJ" resolve="StructRectangle" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="76DRFzMEU1k" role="3cqZAp">
            <node concept="2GrKxI" id="76DRFzMEU1m" role="2Gsz3X">
              <property role="TrG5h" value="l" />
            </node>
            <node concept="1SfVH9" id="76DRFzMEU6q" role="2GsD0m">
              <ref role="3cqZAo" node="76DRFzME$ag" resolve="superLevels" />
            </node>
            <node concept="3clFbS" id="76DRFzMEU1q" role="2LFqv$">
              <node concept="3clFbF" id="76DRFzMEUum" role="3cqZAp">
                <node concept="37vLTI" id="76DRFzMEW3E" role="3clFbG">
                  <node concept="3EllGN" id="76DRFzMEV0Z" role="37vLTJ">
                    <node concept="2GrUjf" id="76DRFzMEV75" role="3ElVtu">
                      <ref role="2Gs0qQ" node="76DRFzMEU1m" resolve="l" />
                    </node>
                    <node concept="37vLTw" id="76DRFzMEUul" role="3ElQJh">
                      <ref role="3cqZAo" node="76DRFzMESg4" resolve="map" />
                    </node>
                  </node>
                  <node concept="36be1Y" id="76DRFzMEWeO" role="37vLTx">
                    <node concept="2OqwBi" id="76DRFzMOq4h" role="2Gi6C2">
                      <node concept="2OqwBi" id="76DRFzMEWBJ" role="2Oq$k0">
                        <node concept="1SfVH9" id="76DRFzMEWm2" role="2Oq$k0">
                          <ref role="3cqZAo" node="2QCHpowuTr8" resolve="structRectangles" />
                        </node>
                        <node concept="3zZkjj" id="76DRFzMF046" role="2OqNvi">
                          <node concept="1bVj0M" id="76DRFzMF048" role="23t8la">
                            <node concept="3clFbS" id="76DRFzMF049" role="1bW5cS">
                              <node concept="3clFbF" id="76DRFzMF0Bb" role="3cqZAp">
                                <node concept="3clFbC" id="76DRFzMF3FP" role="3clFbG">
                                  <node concept="2GrUjf" id="76DRFzMF4wG" role="3uHU7w">
                                    <ref role="2Gs0qQ" node="76DRFzMEU1m" resolve="l" />
                                  </node>
                                  <node concept="2OqwBi" id="76DRFzMF0PP" role="3uHU7B">
                                    <node concept="37vLTw" id="76DRFzMF0Ba" role="2Oq$k0">
                                      <ref role="3cqZAo" node="76DRFzMF04a" resolve="sr" />
                                    </node>
                                    <node concept="32jkxy" id="76DRFzMF1wr" role="2OqNvi">
                                      <ref role="3cqZAo" node="3aGGciKnkt4" resolve="superLevel" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="76DRFzMF04a" role="1bW2Oz">
                              <property role="TrG5h" value="sr" />
                              <node concept="2jxLKc" id="76DRFzMF04b" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2S7cBI" id="76DRFzMOrCG" role="2OqNvi">
                        <node concept="1bVj0M" id="76DRFzMOrCI" role="23t8la">
                          <node concept="3clFbS" id="76DRFzMOrCJ" role="1bW5cS">
                            <node concept="3clFbF" id="76DRFzMOsod" role="3cqZAp">
                              <node concept="2_n6$v" id="76DRFzMOLm7" role="3clFbG">
                                <node concept="3cmrfG" id="76DRFzMOLTH" role="2_mOWp">
                                  <property role="3cmrfH" value="0" />
                                </node>
                                <node concept="2OqwBi" id="76DRFzMOCXW" role="2Oq$k0">
                                  <node concept="2OqwBi" id="76DRFzMOvZV" role="2Oq$k0">
                                    <node concept="2OqwBi" id="76DRFzMOsI7" role="2Oq$k0">
                                      <node concept="37vLTw" id="76DRFzMOsoc" role="2Oq$k0">
                                        <ref role="3cqZAo" node="76DRFzMOrCK" resolve="sr" />
                                      </node>
                                      <node concept="32jkxy" id="76DRFzMOu5l" role="2OqNvi">
                                        <ref role="3cqZAo" node="2QCHpoww0Pw" resolve="superRectangles" />
                                      </node>
                                    </node>
                                    <node concept="2S7cBI" id="76DRFzMOAvB" role="2OqNvi">
                                      <node concept="1bVj0M" id="76DRFzMOAvD" role="23t8la">
                                        <node concept="3clFbS" id="76DRFzMOAvE" role="1bW5cS">
                                          <node concept="3clFbF" id="76DRFzMOBkI" role="3cqZAp">
                                            <node concept="2OqwBi" id="76DRFzMOBzx" role="3clFbG">
                                              <node concept="37vLTw" id="76DRFzMOBkH" role="2Oq$k0">
                                                <ref role="3cqZAo" node="76DRFzMOAvF" resolve="s" />
                                              </node>
                                              <node concept="32jkxy" id="76DRFzMOC1A" role="2OqNvi">
                                                <ref role="3cqZAo" node="3aGGciKnkt4" resolve="superLevel" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="76DRFzMOAvF" role="1bW2Oz">
                                          <property role="TrG5h" value="s" />
                                          <node concept="2jxLKc" id="76DRFzMOAvG" role="1tU5fm" />
                                        </node>
                                      </node>
                                      <node concept="1nlBCl" id="76DRFzMOCx9" role="2S7zOq" />
                                    </node>
                                  </node>
                                  <node concept="1uHKPH" id="76DRFzMOEED" role="2OqNvi" />
                                </node>
                                <node concept="32jkxy" id="76DRFzMOGEE" role="2OqNvi">
                                  <ref role="3cqZAo" node="76DRFzMF70V" resolve="linePosition" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="76DRFzMOrCK" role="1bW2Oz">
                            <property role="TrG5h" value="sr" />
                            <node concept="2jxLKc" id="76DRFzMOrCL" role="1tU5fm" />
                          </node>
                        </node>
                        <node concept="1nlBCl" id="76DRFzMOrCM" role="2S7zOq">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="76DRFzMESPC" role="3cqZAp">
            <node concept="E34o$" id="76DRFzMET$i" role="3clFbG">
              <node concept="37vLTw" id="76DRFzMETSO" role="37vLTx">
                <ref role="3cqZAo" node="76DRFzMESg4" resolve="map" />
              </node>
              <node concept="1SfVH9" id="76DRFzMESPA" role="37vLTJ">
                <ref role="3cqZAo" node="76DRFzME0WJ" resolve="lines" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="76DRFzMVqD2" role="1FPzNG">
      <property role="TrG5h" value="maxLineLength" />
      <node concept="10Oyi0" id="76DRFzMVrHP" role="1tU5fm" />
      <node concept="2OqwBi" id="76DRFzMWbVD" role="33vP2m">
        <node concept="2OqwBi" id="76DRFzMW7ID" role="2Oq$k0">
          <node concept="2OqwBi" id="76DRFzMW3k4" role="2Oq$k0">
            <node concept="2OqwBi" id="76DRFzMW0mV" role="2Oq$k0">
              <node concept="1SfVH9" id="76DRFzMVZBG" role="2Oq$k0">
                <ref role="3cqZAo" node="76DRFzME0WJ" resolve="lines" />
              </node>
              <node concept="T8wYR" id="76DRFzMW2fw" role="2OqNvi" />
            </node>
            <node concept="2S7cBI" id="76DRFzMW46M" role="2OqNvi">
              <node concept="1bVj0M" id="76DRFzMW46O" role="23t8la">
                <node concept="3clFbS" id="76DRFzMW46P" role="1bW5cS">
                  <node concept="3clFbF" id="76DRFzMW4N6" role="3cqZAp">
                    <node concept="2OqwBi" id="76DRFzMW4Zc" role="3clFbG">
                      <node concept="37vLTw" id="76DRFzMW4N5" role="2Oq$k0">
                        <ref role="3cqZAo" node="76DRFzMW46Q" resolve="v" />
                      </node>
                      <node concept="34oBXx" id="76DRFzMW6EY" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="76DRFzMW46Q" role="1bW2Oz">
                  <property role="TrG5h" value="v" />
                  <node concept="2jxLKc" id="76DRFzMW46R" role="1tU5fm" />
                </node>
              </node>
              <node concept="1nlBCl" id="76DRFzMW7ef" role="2S7zOq" />
            </node>
          </node>
          <node concept="1uHKPH" id="76DRFzMWamo" role="2OqNvi" />
        </node>
        <node concept="34oBXx" id="76DRFzMWflu" role="2OqNvi" />
      </node>
    </node>
  </node>
  <node concept="2UJ2oG" id="2QCHpowuSLJ">
    <property role="3GE5qa" value="struct_diagram" />
    <property role="TrG5h" value="StructRectangle" />
    <node concept="2UJ2Q1" id="2QCHpowuSMr" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z4a" resolve="DRectangleShape" />
    </node>
    <node concept="2UJ2Q1" id="2QCHpowuSMt" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="3OZjsowptDc" resolve="DFilledNode" />
    </node>
  </node>
  <node concept="3LmNE2" id="2QCHpowuSMw">
    <property role="3GE5qa" value="struct_diagram" />
    <ref role="2UJ2Q8" node="2QCHpowuSLJ" resolve="StructRectangle" />
    <ref role="2RaPBF" node="5hEUvARtdnC" resolve="STRUCT_DIAGRAM" />
    <node concept="3tBE6w" id="2QCHpoww0O6" role="1FPzNG">
      <node concept="3clFbF" id="2QCHpoww0O7" role="30jUnX">
        <node concept="E34o$" id="2QCHpoww0O8" role="3clFbG">
          <node concept="10M0yZ" id="2QCHpoww0O9" role="37vLTx">
            <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="1SfVH9" id="2QCHpoww0Oa" role="37vLTJ">
            <ref role="3cqZAo" node="2xAA8jfCHII" resolve="lineColor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="2QCHpoww0Ob" role="1FPzNG">
      <node concept="3clFbF" id="2QCHpoww0Oc" role="30jUnX">
        <node concept="E34o$" id="2QCHpoww0Od" role="3clFbG">
          <node concept="1SfVH9" id="2QCHpoww0Oe" role="37vLTJ">
            <ref role="3cqZAo" node="3nsHMGrYPEM" resolve="color" />
          </node>
          <node concept="3K4zz7" id="3jHNPFKOW6S" role="37vLTx">
            <node concept="2OqwBi" id="3jHNPFKOOD6" role="3K4Cdx">
              <node concept="1PxgMI" id="3jHNPFKOIkO" role="2Oq$k0">
                <node concept="chp4Y" id="3jHNPFKOLmc" role="3oSUPX">
                  <ref role="cht4Q" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
                </node>
                <node concept="1SfVH9" id="3jHNPFKOC8e" role="1m5AlR">
                  <ref role="3cqZAo" node="3OZjsowptDh" resolve="node" />
                </node>
              </node>
              <node concept="3TrcHB" id="3jHNPFKSHZC" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:5JHZE0wKKUr" resolve="isValueClass" />
              </node>
            </node>
            <node concept="10M0yZ" id="2QCHpoww0Ok" role="3K4GZi">
              <ref role="3cqZAo" node="1CjrrCLv7bc" resolve="lightYellow" />
              <ref role="1PxDUh" node="1CjrrCLv78O" resolve="Colors" />
            </node>
            <node concept="10M0yZ" id="3jHNPFKP5u2" role="3K4E3e">
              <ref role="3cqZAo" node="HeoZc4zGJi" resolve="lightBlue" />
              <ref role="1PxDUh" node="1CjrrCLv78O" resolve="Colors" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="2QCHpoww0Om" role="1FPzNG">
      <node concept="3clFbF" id="2QCHpoww0On" role="30jUnX">
        <node concept="E34o$" id="2QCHpoww0Oo" role="3clFbG">
          <node concept="2OqwBi" id="2QCHpoww0Op" role="37vLTx">
            <node concept="1SfVH9" id="2QCHpoww0Oq" role="2Oq$k0">
              <ref role="3cqZAo" node="2QCHpoww0OO" resolve="struct" />
            </node>
            <node concept="3TrcHB" id="2QCHpoww0Or" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
          <node concept="1SfVH9" id="2QCHpoww0Os" role="37vLTJ">
            <ref role="3cqZAo" node="3nsHMGrYS6G" resolve="text" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="2QCHpoww0Ot" role="1FPzNG">
      <node concept="3clFbF" id="2QCHpoww0Ou" role="30jUnX">
        <node concept="E34o$" id="2QCHpoww0Ov" role="3clFbG">
          <node concept="3KEV6E" id="2QCHpoww0Ow" role="37vLTx">
            <ref role="2UJ2yc" node="4NMtPTvGXY5" resolve="DDimension" />
            <node concept="2Pygp_" id="2QCHpoww0Ox" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGXY6" resolve="width" />
              <node concept="2YIFZM" id="2QCHpoww0Oy" role="2PygpA">
                <ref role="37wK5l" to="wyt6:~Math.max(double,double)" resolve="max" />
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <node concept="3b6qkQ" id="2QCHpoww0Oz" role="37wK5m">
                  <property role="$nhwW" value="120.0d" />
                </node>
                <node concept="3cpWs3" id="2QCHpoww0O$" role="37wK5m">
                  <node concept="3cmrfG" id="2QCHpoww0O_" role="3uHU7w">
                    <property role="3cmrfH" value="4" />
                  </node>
                  <node concept="10QFUN" id="2QCHpoww0OA" role="3uHU7B">
                    <node concept="10P55v" id="2QCHpoww0OB" role="10QFUM" />
                    <node concept="1SfVH9" id="6QF1CPNqs8t" role="10QFUP">
                      <ref role="3cqZAo" node="1bDgvLYqnyq" resolve="textWith" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Pygp_" id="2QCHpoww0OD" role="2Pygpa">
              <ref role="2Pygpw" node="4NMtPTvGY55" resolve="height" />
              <node concept="2YIFZM" id="2QCHpoww0OE" role="2PygpA">
                <ref role="37wK5l" to="wyt6:~Math.max(double,double)" resolve="max" />
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <node concept="3b6qkQ" id="2QCHpoww0OF" role="37wK5m">
                  <property role="$nhwW" value="40.0d" />
                </node>
                <node concept="3cpWs3" id="2QCHpoww0OG" role="37wK5m">
                  <node concept="3cmrfG" id="2QCHpoww0OH" role="3uHU7w">
                    <property role="3cmrfH" value="4" />
                  </node>
                  <node concept="10QFUN" id="2QCHpoww0OI" role="3uHU7B">
                    <node concept="10P55v" id="2QCHpoww0OJ" role="10QFUM" />
                    <node concept="2OqwBi" id="6QF1CPNqWYQ" role="10QFUP">
                      <node concept="1SfVH9" id="6QF1CPNqWo4" role="2Oq$k0">
                        <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                      </node>
                      <node concept="32jkxy" id="6QF1CPNqY8U" role="2OqNvi">
                        <ref role="3cqZAo" node="6QF1CPNqors" resolve="textHeight" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1SfVH9" id="2QCHpoww0ON" role="37vLTJ">
            <ref role="3cqZAo" node="3HJBHAQJ0r1" resolve="size" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2QCHpoww0OO" role="1FPzNG">
      <property role="TrG5h" value="struct" />
      <node concept="3Tqbb2" id="2QCHpoww0OP" role="1tU5fm">
        <ref role="ehGHo" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
      </node>
      <node concept="1PxgMI" id="2QCHpoww0OQ" role="33vP2m">
        <node concept="chp4Y" id="2QCHpoww0OR" role="3oSUPX">
          <ref role="cht4Q" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
        </node>
        <node concept="1SfVH9" id="2QCHpoww0OS" role="1m5AlR">
          <ref role="3cqZAo" node="3OZjsowptDh" resolve="node" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2QCHpoww0OT" role="1FPzNG">
      <property role="TrG5h" value="supers" />
      <node concept="2I9FWS" id="2QCHpoww0OU" role="1tU5fm">
        <ref role="2I9WkF" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
      </node>
      <node concept="36be1Y" id="2QCHpoww0OV" role="33vP2m">
        <node concept="2OqwBi" id="2QCHpowxoZE" role="2Gi6C2">
          <node concept="2OqwBi" id="2QCHpowxgLh" role="2Oq$k0">
            <node concept="1SfVH9" id="2QCHpoww0OZ" role="2Oq$k0">
              <ref role="3cqZAo" node="2QCHpoww0OO" resolve="struct" />
            </node>
            <node concept="3Tsc0h" id="2QCHpowxloj" role="2OqNvi">
              <ref role="3TtcxE" to="7ggn:4$bpWrNHODa" resolve="extends" />
            </node>
          </node>
          <node concept="13MTOM" id="2QCHpowx$zW" role="2OqNvi">
            <ref role="13MTZg" to="7ggn:4$bpWrNHOD8" resolve="class" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2QCHpoww0Pf" role="1FPzNG">
      <property role="TrG5h" value="supersInDiagram" />
      <node concept="2I9FWS" id="2QCHpoww0Pg" role="1tU5fm">
        <ref role="2I9WkF" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
      </node>
      <node concept="2OqwBi" id="2QCHpoww0Ph" role="33vP2m">
        <node concept="3zZkjj" id="2QCHpoww0Pi" role="2OqNvi">
          <node concept="1bVj0M" id="2QCHpoww0Pj" role="23t8la">
            <node concept="3clFbS" id="2QCHpoww0Pk" role="1bW5cS">
              <node concept="3clFbF" id="2QCHpoww0Pl" role="3cqZAp">
                <node concept="2OqwBi" id="2QCHpoww0Pm" role="3clFbG">
                  <node concept="2OqwBi" id="2QCHpoww0Pn" role="2Oq$k0">
                    <node concept="3MEt_1" id="76DRFzMVhXI" role="2Oq$k0">
                      <ref role="3MEk2m" node="2QCHpowuQyh" resolve="StructDiagramCanvas" />
                      <node concept="1SfVH9" id="76DRFzMUNJy" role="3MEzJy">
                        <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                      </node>
                    </node>
                    <node concept="32jkxy" id="2QCHpoww0Pq" role="2OqNvi">
                      <ref role="3cqZAo" node="2QCHpowuTqZ" resolve="structsInDiagram" />
                    </node>
                  </node>
                  <node concept="3JPx81" id="2QCHpoww0Pr" role="2OqNvi">
                    <node concept="37vLTw" id="2QCHpoww0Ps" role="25WWJ7">
                      <ref role="3cqZAo" node="2QCHpoww0Pt" resolve="s" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="2QCHpoww0Pt" role="1bW2Oz">
              <property role="TrG5h" value="s" />
              <node concept="2jxLKc" id="2QCHpoww0Pu" role="1tU5fm" />
            </node>
          </node>
        </node>
        <node concept="1SfVH9" id="2QCHpoww0Pv" role="2Oq$k0">
          <ref role="3cqZAo" node="2QCHpoww0OT" resolve="supers" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2QCHpoww0Pw" role="1FPzNG">
      <property role="TrG5h" value="superRectangles" />
      <node concept="_YKpA" id="2QCHpoww0Px" role="1tU5fm">
        <node concept="3LmiP1" id="2QCHpoww0Py" role="_ZDj9">
          <ref role="2XDbjv" node="2QCHpowuSLJ" resolve="StructRectangle" />
        </node>
      </node>
      <node concept="2OqwBi" id="2QCHpoww0Pz" role="33vP2m">
        <node concept="1SfVH9" id="2QCHpoww0P$" role="2Oq$k0">
          <ref role="3cqZAo" node="2QCHpoww0Pf" resolve="supersInDiagram" />
        </node>
        <node concept="3$u5V9" id="2QCHpoww0P_" role="2OqNvi">
          <node concept="1bVj0M" id="2QCHpoww0PA" role="23t8la">
            <node concept="3clFbS" id="2QCHpoww0PB" role="1bW5cS">
              <node concept="3clFbF" id="2QCHpoww0PC" role="3cqZAp">
                <node concept="3KEV6E" id="2QCHpoww0PD" role="3clFbG">
                  <ref role="2UJ2yc" node="2QCHpowuSLJ" resolve="StructRectangle" />
                  <node concept="2Pygp_" id="2QCHpoww0PE" role="2Pygpa">
                    <ref role="2Pygpw" node="3HJBHARurzj" resolve="diagram" />
                    <node concept="1SfVH9" id="2QCHpoww0PF" role="2PygpA">
                      <ref role="3cqZAo" node="3HJBHARurzj" resolve="diagram" />
                    </node>
                  </node>
                  <node concept="2Pygp_" id="2QCHpoww0PG" role="2Pygpa">
                    <ref role="2Pygpw" node="3OZjsowptDh" resolve="node" />
                    <node concept="37vLTw" id="2QCHpoww0PH" role="2PygpA">
                      <ref role="3cqZAo" node="2QCHpoww0PI" resolve="s" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="2QCHpoww0PI" role="1bW2Oz">
              <property role="TrG5h" value="s" />
              <node concept="2jxLKc" id="2QCHpoww0PJ" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2QCHpoww0PK" role="1FPzNG">
      <property role="TrG5h" value="specialisationLines" />
      <node concept="_YKpA" id="2QCHpoww0PL" role="1tU5fm">
        <node concept="3LmiP1" id="2QCHpoww0PM" role="_ZDj9">
          <ref role="2XDbjv" node="2QCHpowuSMF" resolve="StructSpecialisationLine" />
        </node>
      </node>
      <node concept="2OqwBi" id="2QCHpoww0PN" role="33vP2m">
        <node concept="1SfVH9" id="2QCHpoww0PO" role="2Oq$k0">
          <ref role="3cqZAo" node="2QCHpoww0Pw" resolve="superRectangles" />
        </node>
        <node concept="3$u5V9" id="2QCHpoww0PP" role="2OqNvi">
          <node concept="1bVj0M" id="2QCHpoww0PQ" role="23t8la">
            <node concept="3clFbS" id="2QCHpoww0PR" role="1bW5cS">
              <node concept="3clFbF" id="2QCHpoww0PS" role="3cqZAp">
                <node concept="3KEV6E" id="2QCHpoww0PT" role="3clFbG">
                  <ref role="2UJ2yc" node="2QCHpowuSMF" resolve="StructSpecialisationLine" />
                  <node concept="2Pygp_" id="2QCHpoww0PU" role="2Pygpa">
                    <ref role="2Pygpw" node="3OZjsowq9ys" resolve="from" />
                    <node concept="2Wb9Zs" id="2QCHpoww0PV" role="2PygpA" />
                  </node>
                  <node concept="2Pygp_" id="2QCHpoww0PW" role="2Pygpa">
                    <ref role="2Pygpw" node="3OZjsowu2R1" resolve="to" />
                    <node concept="37vLTw" id="2QCHpoww0PX" role="2PygpA">
                      <ref role="3cqZAo" node="2QCHpoww0Q2" resolve="sup" />
                    </node>
                  </node>
                  <node concept="2Pygp_" id="2QCHpoww0PY" role="2Pygpa">
                    <ref role="2Pygpw" node="3OZjsowp$AH" resolve="association" />
                    <node concept="2OqwBi" id="2QCHpoww0PZ" role="2PygpA">
                      <node concept="37vLTw" id="2QCHpoww0Q0" role="2Oq$k0">
                        <ref role="3cqZAo" node="2QCHpoww0Q2" resolve="sup" />
                      </node>
                      <node concept="32jkxy" id="2QCHpoww0Q1" role="2OqNvi">
                        <ref role="3cqZAo" node="3OZjsowptDh" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="2QCHpoww0Q2" role="1bW2Oz">
              <property role="TrG5h" value="sup" />
              <node concept="2jxLKc" id="2QCHpoww0Q3" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="3aGGciKnkt4" role="1FPzNG">
      <property role="TrG5h" value="superLevel" />
      <node concept="10Oyi0" id="3aGGciKnxB1" role="1tU5fm" />
      <node concept="3cpWs3" id="dr1SXXppqL" role="33vP2m">
        <node concept="3cmrfG" id="dr1SXXpqiy" role="3uHU7w">
          <property role="3cmrfH" value="1" />
        </node>
        <node concept="1eOMI4" id="dr1SXXpnsE" role="3uHU7B">
          <node concept="2_n6$v" id="3aGGciKoa0H" role="1eOMHV">
            <node concept="3cmrfG" id="3aGGciKolQU" role="2_mOWp">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="3aGGciKnW$y" role="2Oq$k0">
              <node concept="2OqwBi" id="3aGGciKnJ73" role="2Oq$k0">
                <node concept="1SfVH9" id="3aGGciKnHVU" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QCHpoww0Pw" resolve="superRectangles" />
                </node>
                <node concept="2S7cBI" id="3aGGciKnUos" role="2OqNvi">
                  <node concept="1bVj0M" id="3aGGciKnUou" role="23t8la">
                    <node concept="3clFbS" id="3aGGciKnUov" role="1bW5cS">
                      <node concept="3clFbF" id="3aGGciKnVcV" role="3cqZAp">
                        <node concept="2OqwBi" id="3aGGciKnVn4" role="3clFbG">
                          <node concept="37vLTw" id="3aGGciKnVcU" role="2Oq$k0">
                            <ref role="3cqZAo" node="3aGGciKnUow" resolve="s" />
                          </node>
                          <node concept="32jkxy" id="3aGGciKnW2y" role="2OqNvi">
                            <ref role="3cqZAo" node="3aGGciKnkt4" resolve="superLevel" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3aGGciKnUow" role="1bW2Oz">
                      <property role="TrG5h" value="s" />
                      <node concept="2jxLKc" id="3aGGciKnUox" role="1tU5fm" />
                    </node>
                  </node>
                  <node concept="1nlBCl" id="3aGGciKnYjE" role="2S7zOq" />
                </node>
              </node>
              <node concept="1uHKPH" id="3aGGciKnZ5A" role="2OqNvi" />
            </node>
            <node concept="32jkxy" id="3aGGciKo0Ca" role="2OqNvi">
              <ref role="3cqZAo" node="3aGGciKnkt4" resolve="superLevel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="76DRFzMF70V" role="1FPzNG">
      <property role="TrG5h" value="linePosition" />
      <node concept="10Oyi0" id="76DRFzMF86q" role="1tU5fm" />
      <node concept="3cpWs3" id="76DRFzMF$bw" role="33vP2m">
        <node concept="3cmrfG" id="76DRFzMF$ev" role="3uHU7w">
          <property role="3cmrfH" value="1" />
        </node>
        <node concept="2OqwBi" id="76DRFzMFq$M" role="3uHU7B">
          <node concept="3EllGN" id="76DRFzMFoZB" role="2Oq$k0">
            <node concept="1SfVH9" id="76DRFzMFpu7" role="3ElVtu">
              <ref role="3cqZAo" node="3aGGciKnkt4" resolve="superLevel" />
            </node>
            <node concept="2OqwBi" id="76DRFzMFnjM" role="3ElQJh">
              <node concept="3MEt_1" id="76DRFzMVdEe" role="2Oq$k0">
                <ref role="3MEk2m" node="2QCHpowuQyh" resolve="StructDiagramCanvas" />
                <node concept="1SfVH9" id="76DRFzMUNJz" role="3MEzJy">
                  <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                </node>
              </node>
              <node concept="32jkxy" id="76DRFzMFo3k" role="2OqNvi">
                <ref role="3cqZAo" node="76DRFzME0WJ" resolve="lines" />
              </node>
            </node>
          </node>
          <node concept="2WmjW8" id="76DRFzMFuuo" role="2OqNvi">
            <node concept="2Wb9Zs" id="76DRFzMFuQY" role="25WWJ7" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="76DRFzMWjEn" role="1FPzNG">
      <property role="TrG5h" value="filling" />
      <node concept="10Oyi0" id="76DRFzMWkQq" role="1tU5fm" />
      <node concept="1eOMI4" id="76DRFzMZURP" role="33vP2m">
        <node concept="3cpWsd" id="76DRFzMWD65" role="1eOMHV">
          <node concept="2OqwBi" id="76DRFzMWAoh" role="3uHU7B">
            <node concept="3MEt_1" id="76DRFzMW_Kp" role="2Oq$k0">
              <ref role="3MEk2m" node="2QCHpowuQyh" resolve="StructDiagramCanvas" />
              <node concept="1SfVH9" id="76DRFzMW_nb" role="3MEzJy">
                <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
              </node>
            </node>
            <node concept="32jkxy" id="76DRFzMWB3C" role="2OqNvi">
              <ref role="3cqZAo" node="76DRFzMVqD2" resolve="maxLineLength" />
            </node>
          </node>
          <node concept="2OqwBi" id="76DRFzMWFdz" role="3uHU7w">
            <node concept="3EllGN" id="76DRFzMWDsg" role="2Oq$k0">
              <node concept="1SfVH9" id="76DRFzMWDsh" role="3ElVtu">
                <ref role="3cqZAo" node="3aGGciKnkt4" resolve="superLevel" />
              </node>
              <node concept="2OqwBi" id="76DRFzMWDsi" role="3ElQJh">
                <node concept="3MEt_1" id="76DRFzMWDsj" role="2Oq$k0">
                  <ref role="3MEk2m" node="2QCHpowuQyh" resolve="StructDiagramCanvas" />
                  <node concept="1SfVH9" id="76DRFzMWDsk" role="3MEzJy">
                    <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                  </node>
                </node>
                <node concept="32jkxy" id="76DRFzMWDsl" role="2OqNvi">
                  <ref role="3cqZAo" node="76DRFzME0WJ" resolve="lines" />
                </node>
              </node>
            </node>
            <node concept="34oBXx" id="76DRFzMWJal" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2JMLIMy2I38" role="1FPzNG">
      <property role="TrG5h" value="autoLayout" />
      <node concept="10P_77" id="2JMLIMy2I2Z" role="1tU5fm" />
      <node concept="2OqwBi" id="2JMLIMy2I30" role="33vP2m">
        <node concept="1PxgMI" id="2JMLIMy2I31" role="2Oq$k0">
          <node concept="chp4Y" id="2JMLIMy2I32" role="3oSUPX">
            <ref role="cht4Q" to="53d4:5hEUvARta2y" resolve="StructDiagram" />
          </node>
          <node concept="2OqwBi" id="2JMLIMy2I33" role="1m5AlR">
            <node concept="3MEt_1" id="2JMLIMy2I34" role="2Oq$k0">
              <ref role="3MEk2m" node="2QCHpowuQyh" resolve="StructDiagramCanvas" />
              <node concept="1SfVH9" id="2JMLIMy2I35" role="3MEzJy">
                <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
              </node>
            </node>
            <node concept="32jkxy" id="2JMLIMy2I36" role="2OqNvi">
              <ref role="3cqZAo" node="3OZjsowr3$L" resolve="iDiagram" />
            </node>
          </node>
        </node>
        <node concept="3TrcHB" id="2JMLIMy2I37" role="2OqNvi">
          <ref role="3TsBF5" to="53d4:6FHmkWJHQpQ" resolve="autoLayout" />
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="2JMLIMy2$pa" role="1FPzNG">
      <property role="TrG5h" value="readLayout" />
      <node concept="3Tm1VV" id="2JMLIMy2$pb" role="1B3o_S" />
      <node concept="3clFbS" id="2JMLIMy2$pc" role="3clF47">
        <node concept="3clFbF" id="2JMLIMy2GeD" role="3cqZAp">
          <node concept="1Wc70l" id="2JMLIMy2H9$" role="3clFbG">
            <node concept="3fqX7Q" id="2JMLIMy2HFh" role="3uHU7w">
              <node concept="1SfVH9" id="2JMLIMy2TeL" role="3fr31v">
                <ref role="3cqZAo" node="2JMLIMy2I38" resolve="autoLayout" />
              </node>
            </node>
            <node concept="1Wc70l" id="2JMLIMy2GeF" role="3uHU7B">
              <node concept="3fqX7Q" id="2JMLIMy2GeJ" role="3uHU7B">
                <node concept="1SfVH9" id="2JMLIMy2GeK" role="3fr31v">
                  <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
                </node>
              </node>
              <node concept="3fqX7Q" id="2JMLIMy2GeG" role="3uHU7w">
                <node concept="3J2VuX" id="2JMLIMy2GeH" role="3fr31v">
                  <node concept="1SfVH9" id="2JMLIMy2GeI" role="3J2yhu">
                    <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2JMLIMy2AgN" role="3clF45" />
    </node>
    <node concept="3tBE6w" id="3aGGciKofE9" role="1FPzNG">
      <node concept="3clFbJ" id="6FHmkWJEPKs" role="30jUnX">
        <node concept="1Wc70l" id="6FHmkWJHTiF" role="3clFbw">
          <node concept="1SfVH9" id="2JMLIMy2I39" role="3uHU7B">
            <ref role="3cqZAo" node="2JMLIMy2I38" />
          </node>
          <node concept="3fqX7Q" id="6FHmkWJEQ42" role="3uHU7w">
            <node concept="1SfVH9" id="6FHmkWJEQ6W" role="3fr31v">
              <ref role="3cqZAo" node="7ypR234gP0F" resolve="dragging" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6FHmkWJEPKu" role="3clFbx">
          <node concept="3clFbF" id="6xUXWqdwqtZ" role="3cqZAp">
            <node concept="E34o$" id="6xUXWqdwqRi" role="3clFbG">
              <node concept="1SfVH9" id="6xUXWqdwqtY" role="37vLTJ">
                <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
              </node>
              <node concept="2OqwBi" id="6xUXWqdkOcH" role="37vLTx">
                <node concept="2$Gk$L" id="6xUXWqdkOcI" role="2OqNvi">
                  <ref role="37wK5l" node="10mRasGA8ci" resolve="snap" />
                  <node concept="3cmrfG" id="6xUXWqdkOcJ" role="37wK5m">
                    <property role="3cmrfH" value="20" />
                  </node>
                </node>
                <node concept="3KEV6E" id="6xUXWqdkOcK" role="2Oq$k0">
                  <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                  <node concept="2Pygp_" id="6xUXWqdkOcL" role="2Pygpa">
                    <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                    <node concept="17qRlL" id="6xUXWqdkOcM" role="2PygpA">
                      <node concept="1SfVH9" id="6xUXWqdkOcN" role="3uHU7B">
                        <ref role="3cqZAo" node="76DRFzMF70V" resolve="linePosition" />
                      </node>
                      <node concept="1eOMI4" id="6xUXWqdkOcO" role="3uHU7w">
                        <node concept="3cpWs3" id="6xUXWqdkOcP" role="1eOMHV">
                          <node concept="3b6qkQ" id="6xUXWqdkOcQ" role="3uHU7B">
                            <property role="$nhwW" value="200.0" />
                          </node>
                          <node concept="17qRlL" id="6xUXWqdkOcR" role="3uHU7w">
                            <node concept="3b6qkQ" id="6xUXWqdkOcS" role="3uHU7w">
                              <property role="$nhwW" value="50.0" />
                            </node>
                            <node concept="1SfVH9" id="6xUXWqdkOcT" role="3uHU7B">
                              <ref role="3cqZAo" node="76DRFzMWjEn" resolve="filling" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Pygp_" id="6xUXWqdkOcU" role="2Pygpa">
                    <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                    <node concept="17qRlL" id="6xUXWqdkOcV" role="2PygpA">
                      <node concept="3b6qkQ" id="6xUXWqdkOcW" role="3uHU7w">
                        <property role="$nhwW" value="100.0" />
                      </node>
                      <node concept="1SfVH9" id="6xUXWqdkOcX" role="3uHU7B">
                        <ref role="3cqZAo" node="3aGGciKnkt4" resolve="superLevel" />
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
  <node concept="2UJ2oG" id="2QCHpowuSMF">
    <property role="3GE5qa" value="struct_diagram" />
    <property role="TrG5h" value="StructSpecialisationLine" />
    <node concept="2UJ2Q1" id="2QCHpowuSNo" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="3OZjsowp$AG" resolve="DMultiLineEdge" />
    </node>
  </node>
  <node concept="3LmNE2" id="2QCHpowuSNq">
    <property role="3GE5qa" value="struct_diagram" />
    <ref role="2UJ2Q8" node="2QCHpowuSMF" resolve="StructSpecialisationLine" />
    <ref role="2RaPBF" node="5hEUvARtdnC" resolve="STRUCT_DIAGRAM" />
    <node concept="3tBE6w" id="2QCHpowxNy2" role="1FPzNG">
      <node concept="3clFbF" id="2QCHpowxNy3" role="30jUnX">
        <node concept="E34o$" id="2QCHpowxNy4" role="3clFbG">
          <node concept="10M0yZ" id="2QCHpowxNy5" role="37vLTx">
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
          </node>
          <node concept="1SfVH9" id="2QCHpowxNy6" role="37vLTJ">
            <ref role="3cqZAo" node="2xAA8jfCHII" resolve="lineColor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2QCHpowxNy7" role="1FPzNG">
      <property role="TrG5h" value="lastUnit" />
      <node concept="3LmiP1" id="2QCHpowxNy8" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="2QCHpowxNy9" role="33vP2m">
        <node concept="2OqwBi" id="2QCHpowxNya" role="2Oq$k0">
          <node concept="1SfVH9" id="2QCHpowxNyb" role="2Oq$k0">
            <ref role="3cqZAo" node="1bLYJ3eDu7H" resolve="lineSegments" />
          </node>
          <node concept="1yVyf7" id="2QCHpowxNyc" role="2OqNvi" />
        </node>
        <node concept="32jkxy" id="2QCHpowxNyd" role="2OqNvi">
          <ref role="3cqZAo" node="2ihDbyJXriV" resolve="unit" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2QCHpowxNye" role="1FPzNG">
      <property role="TrG5h" value="lastPerp" />
      <node concept="3LmiP1" id="2QCHpowxNyf" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="2QCHpowxNyg" role="33vP2m">
        <node concept="2OqwBi" id="2QCHpowxNyh" role="2Oq$k0">
          <node concept="1SfVH9" id="2QCHpowxNyi" role="2Oq$k0">
            <ref role="3cqZAo" node="2QCHpowxNy7" resolve="lastUnit" />
          </node>
          <node concept="32jkxy" id="2QCHpowxNyj" role="2OqNvi">
            <ref role="3cqZAo" node="5rHgiqQFNOE" resolve="perp" />
          </node>
        </node>
        <node concept="2$Gk$L" id="2QCHpowxNyk" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB2O5" resolve="mult" />
          <node concept="3b6qkQ" id="2QCHpowxNyl" role="37wK5m">
            <property role="$nhwW" value="7.0d" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2QCHpowxNym" role="1FPzNG">
      <property role="TrG5h" value="distEndPoint" />
      <node concept="3LmiP1" id="2QCHpowxNyn" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="2QCHpowxNyo" role="33vP2m">
        <node concept="1SfVH9" id="2QCHpowxNyp" role="2Oq$k0">
          <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
        </node>
        <node concept="2$Gk$L" id="2QCHpowxNyq" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
          <node concept="2OqwBi" id="2QCHpowxNyr" role="37wK5m">
            <node concept="1SfVH9" id="2QCHpowxNys" role="2Oq$k0">
              <ref role="3cqZAo" node="2QCHpowxNy7" resolve="lastUnit" />
            </node>
            <node concept="2$Gk$L" id="2QCHpowxNyt" role="2OqNvi">
              <ref role="37wK5l" node="2xAA8jfB2O5" resolve="mult" />
              <node concept="3b6qkQ" id="2QCHpowxNyu" role="37wK5m">
                <property role="$nhwW" value="14.0d" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2QCHpowxNyv" role="1FPzNG">
      <property role="TrG5h" value="left" />
      <node concept="3LmiP1" id="2QCHpowxNyw" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="2QCHpowxNyx" role="33vP2m">
        <node concept="1SfVH9" id="2QCHpowxNyy" role="2Oq$k0">
          <ref role="3cqZAo" node="2QCHpowxNym" resolve="distEndPoint" />
        </node>
        <node concept="2$Gk$L" id="2QCHpowxNyz" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
          <node concept="1SfVH9" id="2QCHpowxNy$" role="37wK5m">
            <ref role="3cqZAo" node="2QCHpowxNye" resolve="lastPerp" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2QCHpowxNy_" role="1FPzNG">
      <property role="TrG5h" value="right" />
      <node concept="3LmiP1" id="2QCHpowxNyA" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="2OqwBi" id="2QCHpowxNyB" role="33vP2m">
        <node concept="1SfVH9" id="2QCHpowxNyC" role="2Oq$k0">
          <ref role="3cqZAo" node="2QCHpowxNym" resolve="distEndPoint" />
        </node>
        <node concept="2$Gk$L" id="2QCHpowxNyD" role="2OqNvi">
          <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
          <node concept="1SfVH9" id="2QCHpowxNyE" role="37wK5m">
            <ref role="3cqZAo" node="2QCHpowxNye" resolve="lastPerp" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1FPxxo" id="2QCHpowxNyF" role="1FPzNG" />
    <node concept="kUGYC" id="2QCHpowxNyG" role="1FPzNG">
      <property role="1ePe$S" value="true" />
      <property role="TrG5h" value="paintEnd" />
      <node concept="37vLTG" id="2QCHpowxNyH" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="2QCHpowxNyI" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2QCHpowxNyJ" role="1B3o_S" />
      <node concept="3clFbS" id="2QCHpowxNyK" role="3clF47">
        <node concept="3clFbF" id="2QCHpowxNyL" role="3cqZAp">
          <node concept="2YIFZM" id="2QCHpowxNyM" role="3clFbG">
            <ref role="1Pybhc" to="u4ym:7wc8RN4MMv1" resolve="D2D" />
            <ref role="37wK5l" to="u4ym:7wc8RN4MQ$M" resolve="drawPoly" />
            <node concept="37vLTw" id="2QCHpowxNyN" role="37wK5m">
              <ref role="3cqZAo" node="2QCHpowxNyH" resolve="g" />
            </node>
            <node concept="10M0yZ" id="2QCHpowxNyO" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
              <ref role="3cqZAo" to="z60i:~Color.WHITE" resolve="WHITE" />
            </node>
            <node concept="10M0yZ" id="2QCHpowxNyP" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
              <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
            </node>
            <node concept="10QFUN" id="2QCHpowxNyQ" role="37wK5m">
              <node concept="17QB3L" id="2QCHpowxNyR" role="10QFUM" />
              <node concept="10Nm6u" id="2QCHpowxNyS" role="10QFUP" />
            </node>
            <node concept="2OqwBi" id="2QCHpowxNyT" role="37wK5m">
              <node concept="1SfVH9" id="2QCHpowxNyU" role="2Oq$k0">
                <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
              </node>
              <node concept="2$Gk$L" id="2QCHpowxNyV" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="2QCHpowxNyW" role="37wK5m">
              <node concept="1SfVH9" id="2QCHpowxNyX" role="2Oq$k0">
                <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
              </node>
              <node concept="2$Gk$L" id="2QCHpowxNyY" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
            <node concept="2OqwBi" id="2QCHpowxNyZ" role="37wK5m">
              <node concept="1SfVH9" id="2QCHpowxNz0" role="2Oq$k0">
                <ref role="3cqZAo" node="2QCHpowxNyv" resolve="left" />
              </node>
              <node concept="2$Gk$L" id="2QCHpowxNz1" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="2QCHpowxNz2" role="37wK5m">
              <node concept="1SfVH9" id="2QCHpowxNz3" role="2Oq$k0">
                <ref role="3cqZAo" node="2QCHpowxNyv" resolve="left" />
              </node>
              <node concept="2$Gk$L" id="2QCHpowxNz4" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
            <node concept="2OqwBi" id="2QCHpowxNz5" role="37wK5m">
              <node concept="1SfVH9" id="2QCHpowxNz6" role="2Oq$k0">
                <ref role="3cqZAo" node="2QCHpowxNy_" resolve="right" />
              </node>
              <node concept="2$Gk$L" id="2QCHpowxNz7" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="2QCHpowxNz8" role="37wK5m">
              <node concept="1SfVH9" id="2QCHpowxNz9" role="2Oq$k0">
                <ref role="3cqZAo" node="2QCHpowxNy_" resolve="right" />
              </node>
              <node concept="2$Gk$L" id="2QCHpowxNza" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2QCHpowxNzb" role="3clF45" />
    </node>
  </node>
  <node concept="22cvTG" id="7BVZ4Aes__I">
    <property role="3GE5qa" value="concept_diagram" />
    <property role="202BMp" value="Util" />
    <ref role="2RaPBF" node="67eN9Qke_aX" resolve="CONCEPT_DIAGRAM" />
    <node concept="1FPxxo" id="7BVZ4AetVp2" role="1FPzNG" />
    <node concept="kUGYC" id="7BVZ4Aes__T" role="1FPzNG">
      <property role="TrG5h" value="isSmart" />
      <node concept="3Tm1VV" id="7BVZ4Aes__U" role="1B3o_S" />
      <node concept="3clFbS" id="7BVZ4Aes__V" role="3clF47">
        <node concept="3clFbF" id="7BVZ4AesEby" role="3cqZAp">
          <node concept="1Wc70l" id="7BVZ4AetCAk" role="3clFbG">
            <node concept="17R0WA" id="7BVZ4AetPkJ" role="3uHU7w">
              <node concept="2OqwBi" id="7BVZ4AetRUv" role="3uHU7w">
                <node concept="1XH99k" id="7BVZ4AetQpi" role="2Oq$k0">
                  <ref role="1XH99l" to="tpce:3Ftr4R6BFyl" resolve="LinkMetaclass" />
                </node>
                <node concept="2ViDtV" id="7BVZ4AetU_u" role="2OqNvi">
                  <ref role="2ViDtZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                </node>
              </node>
              <node concept="2OqwBi" id="7BVZ4AetKk1" role="3uHU7B">
                <node concept="1y4W85" id="7BVZ4AetIbe" role="2Oq$k0">
                  <node concept="3cmrfG" id="7BVZ4AetJjC" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="7BVZ4AetESi" role="1y566C">
                    <node concept="2Wb9Zs" id="7BVZ4AetE1_" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7BVZ4AetFVO" role="2OqNvi">
                      <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                    </node>
                  </node>
                </node>
                <node concept="3TrcHB" id="7BVZ4AetLQm" role="2OqNvi">
                  <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7BVZ4Aet8o9" role="3uHU7B">
              <node concept="2OqwBi" id="7BVZ4AesMs_" role="3uHU7B">
                <node concept="2OqwBi" id="7BVZ4AesEXK" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="7BVZ4AesEbx" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7BVZ4AesFUt" role="2OqNvi">
                    <ref role="3TtcxE" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
                  </node>
                </node>
                <node concept="1v1jN8" id="7BVZ4Aet1ub" role="2OqNvi" />
              </node>
              <node concept="3clFbC" id="7BVZ4AetAAe" role="3uHU7w">
                <node concept="2OqwBi" id="7BVZ4Aetfcx" role="3uHU7B">
                  <node concept="2OqwBi" id="7BVZ4Aet8Sk" role="2Oq$k0">
                    <node concept="2Wb9Zs" id="7BVZ4Aet8_l" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7BVZ4Aet9o8" role="2OqNvi">
                      <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="7BVZ4Aetuhv" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="7BVZ4AetBPV" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="7BVZ4Aes_El" role="3clF45" />
      <node concept="22qN4Z" id="7BVZ4AexJRn" role="22r3GZ">
        <ref role="22qNq3" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
    </node>
    <node concept="1FPxxo" id="7BVZ4AeE2qn" role="1FPzNG" />
    <node concept="kUGYC" id="7BVZ4AeE4_O" role="1FPzNG">
      <property role="TrG5h" value="smartTarget" />
      <node concept="3Tm1VV" id="7BVZ4AeE4_P" role="1B3o_S" />
      <node concept="3clFbS" id="7BVZ4AeE4_Q" role="3clF47">
        <node concept="3clFbF" id="7BVZ4AeEnia" role="3cqZAp">
          <node concept="3K4zz7" id="7BVZ4AeEvyJ" role="3clFbG">
            <node concept="2OqwBi" id="7BVZ4AeFisj" role="3K4E3e">
              <node concept="2OqwBi" id="7BVZ4AeF47g" role="2Oq$k0">
                <node concept="2OqwBi" id="7BVZ4AeE_rP" role="2Oq$k0">
                  <node concept="2OqwBi" id="7BVZ4AeExLv" role="2Oq$k0">
                    <node concept="2Wb9Zs" id="7BVZ4AeEwKa" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7BVZ4AeEz0M" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="7BVZ4AeEBqO" role="2OqNvi">
                    <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                  </node>
                </node>
                <node concept="1uHKPH" id="7BVZ4AeFbgV" role="2OqNvi" />
              </node>
              <node concept="3TrEf2" id="7BVZ4AeFjNE" role="2OqNvi">
                <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
              </node>
            </node>
            <node concept="2OqwBi" id="7BVZ4AeFoa0" role="3K4GZi">
              <node concept="2Wb9Zs" id="7BVZ4AeFkQ3" role="2Oq$k0" />
              <node concept="3TrEf2" id="7BVZ4AeFpwr" role="2OqNvi">
                <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
              </node>
            </node>
            <node concept="2OqwBi" id="7BVZ4AeErZO" role="3K4Cdx">
              <node concept="2OqwBi" id="7BVZ4AeEozg" role="2Oq$k0">
                <node concept="2Wb9Zs" id="7BVZ4AeEni9" role="2Oq$k0" />
                <node concept="3TrEf2" id="7BVZ4AeEqvN" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                </node>
              </node>
              <node concept="2$Gk$L" id="7BVZ4AeEtSl" role="2OqNvi">
                <ref role="37wK5l" node="7BVZ4Aes__T" resolve="isSmart" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="22qN4Z" id="7BVZ4AeE8UO" role="22r3GZ">
        <ref role="22qNq3" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
      </node>
      <node concept="3Tqbb2" id="7BVZ4AeEb18" role="3clF45">
        <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
    </node>
    <node concept="1FPxxo" id="7BVZ4AetWd4" role="1FPzNG" />
  </node>
</model>

