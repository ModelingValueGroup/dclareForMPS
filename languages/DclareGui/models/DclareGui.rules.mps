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
      <concept id="5858913584106642961" name="DclareMPS.structure.Aspect" flags="ng" index="2Rb1jd" />
      <concept id="5263414693702615530" name="DclareMPS.structure.StructClass" flags="ng" index="2UJ2oG">
        <property id="6624230590629744283" name="isValueClass" index="1VbJ0V" />
        <child id="5263414693702618949" name="identity" index="2UJ2y3" />
        <child id="5263414693702617674" name="extends" index="2UJ2Qc" />
      </concept>
      <concept id="5263414693702617671" name="DclareMPS.structure.StructClassReference" flags="ng" index="2UJ2Q1">
        <reference id="5263414693702617672" name="class" index="2UJ2Qe" />
      </concept>
      <concept id="359025656632646706" name="DclareMPS.structure.ThisExpression" flags="ng" index="2Wb9Zs" />
      <concept id="5274342987130696546" name="DclareMPS.structure.AttributeOperation" flags="ng" index="32jkxy" />
      <concept id="5274342987128242780" name="DclareMPS.structure.Attribute" flags="ng" index="32q3_s">
        <property id="8249432652488838579" name="optional" index="KodbT" />
        <property id="8278332945861604355" name="constant" index="1oBfZR" />
        <property id="4435611260595733753" name="composite" index="3K1B09" />
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
      <concept id="6584359627792080012" name="DclareMPS.structure.NativeDeclaration" flags="ng" index="1OA0iY">
        <child id="6584359627792080018" name="exit" index="1OA0iw" />
        <child id="6584359627792080016" name="init" index="1OA0iy" />
        <child id="6584359627792080929" name="fields" index="1OA3wj" />
        <child id="6584359627792080973" name="handlers" index="1OA3xZ" />
      </concept>
      <concept id="6584359627792080013" name="DclareMPS.structure.NativeAttributeHandler" flags="ng" index="1OA0iZ">
        <property id="2911181905320364314" name="deferred" index="3Bjd6u" />
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
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
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
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
        <child id="1109201940907" name="parameter" index="11_B2D" />
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
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
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
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="2UJ2oG" id="WHdioYVYaT">
    <property role="TrG5h" value="DVisible" />
    <property role="3GE5qa" value="structs" />
  </node>
  <node concept="3LmNE2" id="WHdioYVYbc">
    <property role="3GE5qa" value="gui." />
    <ref role="2UJ2Q8" node="WHdioYVYaT" resolve="DVisible" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3v5" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3v6" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3v7" role="1OA0iw" />
    </node>
  </node>
  <node concept="2Rb1jd" id="WHdioYVYbd">
    <property role="TrG5h" value="GUI" />
    <property role="3GE5qa" value="gui." />
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
    <property role="TrG5h" value="DLine" />
    <node concept="2UJ2Q1" id="skgx$J4Z3R" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2r" resolve="DShape" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z45">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DFilled" />
    <node concept="2UJ2Q1" id="skgx$J4Z48" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2r" resolve="DShape" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z4a">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DRectangle" />
    <node concept="2UJ2Q1" id="skgx$J4Z4f" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z45" resolve="DFilled" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z4h">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DCircle" />
    <node concept="2UJ2Q1" id="skgx$J4Z4k" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z45" resolve="DFilled" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z4s">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DTriangle" />
    <node concept="2UJ2Q1" id="skgx$J4Z4v" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z45" resolve="DFilled" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4B">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z4s" resolve="DTriangle" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="2xAA8jfByhi" role="1FPzNG">
      <property role="TrG5h" value="radius" />
      <node concept="10Oyi0" id="2xAA8jfByhP" role="1tU5fm" />
    </node>
    <node concept="3tBE6w" id="3XDIiT4d3QO" role="1FPzNG">
      <node concept="3clFbF" id="3XDIiT4d3SY" role="30jUnX">
        <node concept="E34o$" id="3XDIiT4d3Z$" role="3clFbG">
          <node concept="1SfVH9" id="3XDIiT4d41Y" role="37vLTx">
            <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
          </node>
          <node concept="1SfVH9" id="3XDIiT4d3SX" role="37vLTJ">
            <ref role="3cqZAo" node="7nNrlO1FXar" resolve="centre" />
          </node>
        </node>
      </node>
    </node>
    <node concept="kUGYC" id="3HJBHAQJd$b" role="1FPzNG">
      <property role="TrG5h" value="hit" />
      <node concept="37vLTG" id="3HJBHAQJd$c" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3LmiP1" id="3HJBHAQJd$d" role="1tU5fm">
          <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3HJBHAQJd$e" role="1B3o_S" />
      <node concept="3clFbS" id="3HJBHAQJd$f" role="3clF47">
        <node concept="3cpWs6" id="3HJBHAQJMSq" role="3cqZAp">
          <node concept="3eOVzh" id="3HJBHAQJO_D" role="3cqZAk">
            <node concept="1SfVH9" id="3HJBHAQJOFc" role="3uHU7w">
              <ref role="3cqZAo" node="2xAA8jfByhi" resolve="radius" />
            </node>
            <node concept="2OqwBi" id="3HJBHAQJN_5" role="3uHU7B">
              <node concept="2OqwBi" id="3HJBHAQJN5p" role="2Oq$k0">
                <node concept="37vLTw" id="3HJBHAQJMXF" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJBHAQJd$c" resolve="p" />
                </node>
                <node concept="2$Gk$L" id="3HJBHAQJNmD" role="2OqNvi">
                  <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                  <node concept="1SfVH9" id="3HJBHAQJNtY" role="37wK5m">
                    <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                  </node>
                </node>
              </node>
              <node concept="32jkxy" id="3HJBHAQJNS6" role="2OqNvi">
                <ref role="3cqZAo" node="2xAA8jfAPnE" resolve="length" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3HJBHAQJd$g" role="3clF45" />
    </node>
    <node concept="kUGYC" id="3HJBHAQJd$h" role="1FPzNG">
      <property role="TrG5h" value="paint" />
      <property role="1ePe$S" value="true" />
      <node concept="37vLTG" id="3HJBHAQJd$i" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="3HJBHAQJd$j" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3HJBHAQJd$k" role="1B3o_S" />
      <node concept="3clFbS" id="3HJBHAQJd$l" role="3clF47">
        <node concept="3cpWs8" id="3HJBHAQJP51" role="3cqZAp">
          <node concept="3cpWsn" id="3HJBHAQJP54" role="3cpWs9">
            <property role="TrG5h" value="rad" />
            <node concept="10P55v" id="3HJBHAQJU1W" role="1tU5fm" />
            <node concept="1SfVH9" id="3HJBHAQJPdA" role="33vP2m">
              <ref role="3cqZAo" node="2xAA8jfByhi" resolve="radius" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJBHAQJPj9" role="3cqZAp">
          <node concept="3cpWsn" id="3HJBHAQJPjc" role="3cpWs9">
            <property role="TrG5h" value="top" />
            <node concept="3LmiP1" id="3HJBHAQJPj7" role="1tU5fm">
              <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
            </node>
            <node concept="3KEV6E" id="3HJBHAQJRPq" role="33vP2m">
              <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
              <node concept="2Pygp_" id="3HJBHAQJRPr" role="2Pygpa">
                <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                <node concept="2OqwBi" id="3HJBHAQJSeq" role="2PygpA">
                  <node concept="1SfVH9" id="3HJBHAQJS6H" role="2Oq$k0">
                    <ref role="3cqZAo" node="7nNrlO1FXar" resolve="centre" />
                  </node>
                  <node concept="32jkxy" id="3HJBHAQJSvH" role="2OqNvi">
                    <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                  </node>
                </node>
              </node>
              <node concept="2Pygp_" id="3HJBHAQJRPs" role="2Pygpa">
                <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                <node concept="3cpWsd" id="3HJBHAQJTue" role="2PygpA">
                  <node concept="FJ1c_" id="3HJBHAQJTVy" role="3uHU7w">
                    <node concept="3b6qkQ" id="7h_p2Gg0Kn1" role="3uHU7w">
                      <property role="$nhwW" value="2.0d" />
                    </node>
                    <node concept="37vLTw" id="3HJBHAQJTAD" role="3uHU7B">
                      <ref role="3cqZAo" node="3HJBHAQJP54" resolve="rad" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3HJBHAQJSFl" role="3uHU7B">
                    <node concept="1SfVH9" id="3HJBHAQJSzB" role="2Oq$k0">
                      <ref role="3cqZAo" node="7nNrlO1FXar" resolve="centre" />
                    </node>
                    <node concept="32jkxy" id="3HJBHAQJSWD" role="2OqNvi">
                      <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJBHAQJPq_" role="3cqZAp">
          <node concept="3cpWsn" id="3HJBHAQJPqC" role="3cpWs9">
            <property role="TrG5h" value="left" />
            <node concept="3LmiP1" id="3HJBHAQJPqz" role="1tU5fm">
              <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
            </node>
            <node concept="3KEV6E" id="3HJBHAQJRWm" role="33vP2m">
              <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
              <node concept="2Pygp_" id="3HJBHAQJRWn" role="2Pygpa">
                <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                <node concept="3cpWsd" id="3HJBHAQJUfL" role="2PygpA">
                  <node concept="FJ1c_" id="3HJBHAQJUfM" role="3uHU7w">
                    <node concept="3b6qkQ" id="7h_p2Gg0La$" role="3uHU7w">
                      <property role="$nhwW" value="2.0d" />
                    </node>
                    <node concept="37vLTw" id="3HJBHAQJUfO" role="3uHU7B">
                      <ref role="3cqZAo" node="3HJBHAQJP54" resolve="rad" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3HJBHAQJUfP" role="3uHU7B">
                    <node concept="1SfVH9" id="3HJBHAQJUfQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="7nNrlO1FXar" resolve="centre" />
                    </node>
                    <node concept="32jkxy" id="3HJBHAQJVkW" role="2OqNvi">
                      <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Pygp_" id="3HJBHAQJRWo" role="2Pygpa">
                <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                <node concept="3cpWs3" id="3HJBHAQJVvt" role="2PygpA">
                  <node concept="2OqwBi" id="3HJBHAQJUzv" role="3uHU7B">
                    <node concept="1SfVH9" id="3HJBHAQJUzw" role="2Oq$k0">
                      <ref role="3cqZAo" node="7nNrlO1FXar" resolve="centre" />
                    </node>
                    <node concept="32jkxy" id="3HJBHAQJUzx" role="2OqNvi">
                      <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                    </node>
                  </node>
                  <node concept="FJ1c_" id="3HJBHAQJUzs" role="3uHU7w">
                    <node concept="3b6qkQ" id="7h_p2Gg0LtI" role="3uHU7w">
                      <property role="$nhwW" value="2.02" />
                    </node>
                    <node concept="37vLTw" id="3HJBHAQJUzu" role="3uHU7B">
                      <ref role="3cqZAo" node="3HJBHAQJP54" resolve="rad" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJBHAQJPJ5" role="3cqZAp">
          <node concept="3cpWsn" id="3HJBHAQJPJ8" role="3cpWs9">
            <property role="TrG5h" value="right" />
            <node concept="3LmiP1" id="3HJBHAQJPJ3" role="1tU5fm">
              <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
            </node>
            <node concept="3KEV6E" id="3HJBHAQJS3c" role="33vP2m">
              <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
              <node concept="2Pygp_" id="3HJBHAQJS3d" role="2Pygpa">
                <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                <node concept="3cpWs3" id="3HJBHAQJW44" role="2PygpA">
                  <node concept="2OqwBi" id="3HJBHAQJUCE" role="3uHU7B">
                    <node concept="1SfVH9" id="3HJBHAQJUCF" role="2Oq$k0">
                      <ref role="3cqZAo" node="7nNrlO1FXar" resolve="centre" />
                    </node>
                    <node concept="32jkxy" id="3HJBHAQJW1d" role="2OqNvi">
                      <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                    </node>
                  </node>
                  <node concept="FJ1c_" id="3HJBHAQJUCB" role="3uHU7w">
                    <node concept="3b6qkQ" id="7h_p2Gg0M1P" role="3uHU7w">
                      <property role="$nhwW" value="2.0d" />
                    </node>
                    <node concept="37vLTw" id="3HJBHAQJUCD" role="3uHU7B">
                      <ref role="3cqZAo" node="3HJBHAQJP54" resolve="rad" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Pygp_" id="3HJBHAQJS3e" role="2Pygpa">
                <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                <node concept="3cpWs3" id="3HJBHAQJWj8" role="2PygpA">
                  <node concept="2OqwBi" id="3HJBHAQJUHM" role="3uHU7B">
                    <node concept="1SfVH9" id="3HJBHAQJUHN" role="2Oq$k0">
                      <ref role="3cqZAo" node="7nNrlO1FXar" resolve="centre" />
                    </node>
                    <node concept="32jkxy" id="3HJBHAQJUHO" role="2OqNvi">
                      <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                    </node>
                  </node>
                  <node concept="FJ1c_" id="3HJBHAQJUHJ" role="3uHU7w">
                    <node concept="3b6qkQ" id="7h_p2Gg0MkZ" role="3uHU7w">
                      <property role="$nhwW" value="2.0d" />
                    </node>
                    <node concept="37vLTw" id="3HJBHAQJUHL" role="3uHU7B">
                      <ref role="3cqZAo" node="3HJBHAQJP54" resolve="rad" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJBHAQJQUP" role="3cqZAp">
          <node concept="3cpWsn" id="3HJBHAQJQUQ" role="3cpWs9">
            <property role="TrG5h" value="fc" />
            <node concept="3uibUv" id="3HJBHAQJQUR" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="1SfVH9" id="3HJBHAQJR3D" role="33vP2m">
              <ref role="3cqZAo" node="3nsHMGrYPEM" resolve="color" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJBHAQJRcf" role="3cqZAp">
          <node concept="3cpWsn" id="3HJBHAQJRcg" role="3cpWs9">
            <property role="TrG5h" value="lc" />
            <node concept="3uibUv" id="3HJBHAQJRch" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="1SfVH9" id="3HJBHAQJRln" role="33vP2m">
              <ref role="3cqZAo" node="2xAA8jfCHII" resolve="lineColor" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJBHAQJRxZ" role="3cqZAp">
          <node concept="3cpWsn" id="3HJBHAQJRy2" role="3cpWs9">
            <property role="TrG5h" value="str" />
            <node concept="17QB3L" id="3HJBHAQJRxX" role="1tU5fm" />
            <node concept="1SfVH9" id="3HJBHAQJRFi" role="33vP2m">
              <ref role="3cqZAo" node="3nsHMGrYS6G" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3HJBHAQJWnE" role="3cqZAp">
          <node concept="2YIFZM" id="3HJBHAQJWv8" role="3clFbG">
            <ref role="37wK5l" node="7wc8RN4MQ$M" resolve="drawPoly" />
            <ref role="1Pybhc" node="7wc8RN4MMv1" resolve="D2D" />
            <node concept="37vLTw" id="3HJBHAQJW$D" role="37wK5m">
              <ref role="3cqZAo" node="3HJBHAQJd$i" resolve="g" />
            </node>
            <node concept="37vLTw" id="3HJBHAQJWGq" role="37wK5m">
              <ref role="3cqZAo" node="3HJBHAQJQUQ" resolve="fc" />
            </node>
            <node concept="37vLTw" id="3HJBHAQJWOr" role="37wK5m">
              <ref role="3cqZAo" node="3HJBHAQJRcg" resolve="lc" />
            </node>
            <node concept="37vLTw" id="3HJBHAQK3s1" role="37wK5m">
              <ref role="3cqZAo" node="3HJBHAQJRy2" resolve="str" />
            </node>
            <node concept="2OqwBi" id="3HJBHAQJX6R" role="37wK5m">
              <node concept="37vLTw" id="3HJBHAQJWY0" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJBHAQJPjc" resolve="top" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQJYzM" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJBHAQJY2B" role="37wK5m">
              <node concept="37vLTw" id="3HJBHAQJXUN" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJBHAQJPjc" resolve="top" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQJYj9" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJBHAQJZod" role="37wK5m">
              <node concept="37vLTw" id="3HJBHAQJYZ7" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJBHAQJPqC" resolve="left" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQJZDZ" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJBHAQK0d4" role="37wK5m">
              <node concept="37vLTw" id="3HJBHAQJZNm" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJBHAQJPqC" resolve="left" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQK0vu" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJBHAQK14a" role="37wK5m">
              <node concept="37vLTw" id="3HJBHAQK0DN" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJBHAQJPJ8" resolve="right" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQK1w3" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJBHAQK1Xn" role="37wK5m">
              <node concept="37vLTw" id="3HJBHAQK1FY" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJBHAQJPJ8" resolve="right" />
              </node>
              <node concept="2$Gk$L" id="3HJBHAQK2pR" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3HJBHAQJd$m" role="3clF45" />
    </node>
    <node concept="1FPxxo" id="2xAA8jfByhc" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3vb" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vc" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vd" role="1OA0iw" />
      <node concept="1OA0iZ" id="3HJBHAQK4V2" role="1OA3xZ">
        <ref role="1OA0iW" node="2xAA8jfByhi" resolve="radius" />
        <node concept="3clFbS" id="3HJBHAQK4V3" role="1OA0iB">
          <node concept="3clFbF" id="3HJBHAQK4YC" role="3cqZAp">
            <node concept="2OqwBi" id="3HJBHAQK6kI" role="3clFbG">
              <node concept="2OqwBi" id="3HJBHAQK5wv" role="2Oq$k0">
                <node concept="2OqwBi" id="3HJBHAQK54y" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="3HJBHAQK4YB" role="2Oq$k0" />
                  <node concept="3BHqF8" id="3HJBHAQK5rM" role="2OqNvi">
                    <ref role="3BGHVm" node="skgx$J4Z2F" resolve="DComponent" />
                  </node>
                </node>
                <node concept="1OA3xM" id="3HJBHAQK5MH" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                </node>
              </node>
              <node concept="liA8E" id="3HJBHAQK8f8" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
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
        <ref role="3uigEE" node="5QJfFCjNkzU" resolve="SplitDimension" />
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
                    <node concept="Rm8GO" id="5QJfFCjNtxE" role="3uHU7w">
                      <ref role="Rm8GQ" node="5QJfFCjNkEm" resolve="vertical" />
                      <ref role="1Px2BO" node="5QJfFCjNkzU" resolve="SplitOrientation" />
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
        <ref role="1OA0iW" node="5QJfFCjNjAF" resolve="splitDimension" />
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
                      <ref role="1Px2BO" node="5QJfFCjNkzU" resolve="SplitOrientation" />
                      <ref role="Rm8GQ" node="5QJfFCjNkEm" resolve="vertical" />
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
    <node concept="32q3_s" id="2xAA8jfCCHw" role="1FPzNG">
      <property role="TrG5h" value="position" />
      <node concept="3LmiP1" id="2xAA8jfCCIA" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="32q3_s" id="7nNrlO1FXar" role="1FPzNG">
      <property role="TrG5h" value="centre" />
      <node concept="3LmiP1" id="7nNrlO1FXhA" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
      <node concept="3K4zz7" id="7nNrlO1Gc7D" role="33vP2m">
        <node concept="3KEV6E" id="7nNrlO1Gcdr" role="3K4E3e">
          <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
          <node concept="2Pygp_" id="7nNrlO1Gcds" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
            <node concept="3b6qkQ" id="7nNrlO1Gcjf" role="2PygpA">
              <property role="$nhwW" value="0.0d" />
            </node>
          </node>
          <node concept="2Pygp_" id="7nNrlO1Gcdt" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
            <node concept="3b6qkQ" id="7nNrlO1Gcpi" role="2PygpA">
              <property role="$nhwW" value="0.0d" />
            </node>
          </node>
        </node>
        <node concept="1SfVH9" id="7nNrlO1GcP7" role="3K4GZi">
          <ref role="3cqZAo" node="7nNrlO1FXar" resolve="centre" />
        </node>
        <node concept="3clFbC" id="7nNrlO1GbPN" role="3K4Cdx">
          <node concept="10Nm6u" id="7nNrlO1Gc2P" role="3uHU7w" />
          <node concept="1SfVH9" id="7nNrlO1GbHw" role="3uHU7B">
            <ref role="3cqZAo" node="7nNrlO1FXar" resolve="centre" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="2xAA8jfCGgn" role="1FPzNG">
      <property role="TrG5h" value="highlighted" />
      <node concept="10P_77" id="2xAA8jfCGhZ" role="1tU5fm" />
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
    <node concept="32q3_s" id="7nNrlO1Gd19" role="1FPzNG">
      <property role="TrG5h" value="selected" />
      <node concept="10P_77" id="7nNrlO1Gd9m" role="1tU5fm" />
    </node>
    <node concept="3tBE6w" id="7nNrlO1GKVM" role="1FPzNG">
      <node concept="3clFbJ" id="7nNrlO1GLzY" role="30jUnX">
        <node concept="1SfVH9" id="7nNrlO1TSwR" role="3clFbw">
          <ref role="3cqZAo" node="7nNrlO1Gd19" resolve="selected" />
        </node>
        <node concept="3clFbS" id="7nNrlO1GL$0" role="3clFbx" />
      </node>
    </node>
    <node concept="3tBE6w" id="7nNrlO1GjLl" role="1FPzNG">
      <node concept="3clFbJ" id="7nNrlO1GjUr" role="30jUnX">
        <node concept="1Wc70l" id="7nNrlO1Gu9S" role="3clFbw">
          <node concept="1SfVH9" id="7nNrlO1GjZA" role="3uHU7B">
            <ref role="3cqZAo" node="7nNrlO1Gd19" resolve="selected" />
          </node>
          <node concept="2OqwBi" id="7nNrlO1Gms4" role="3uHU7w">
            <node concept="2OqwBi" id="7nNrlO1GkUI" role="2Oq$k0">
              <node concept="2OqwBi" id="7nNrlO1Gkee" role="2Oq$k0">
                <node concept="1SfVH9" id="7nNrlO1Gk4P" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                </node>
                <node concept="32jkxy" id="7nNrlO1GkD0" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                </node>
              </node>
              <node concept="32jkxy" id="7nNrlO1Gliy" role="2OqNvi">
                <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
              </node>
            </node>
            <node concept="3JPx81" id="4NMbKfvRnQt" role="2OqNvi">
              <node concept="10M0yZ" id="7nNrlO1Gttp" role="25WWJ7">
                <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                <ref role="3cqZAo" to="hyam:~KeyEvent.VK_DELETE" resolve="VK_DELETE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="7nNrlO1GjUt" role="3clFbx">
          <node concept="3clFbF" id="7nNrlO1Gk4Q" role="3cqZAp">
            <node concept="E34o$" id="7nNrlO1GB_y" role="3clFbG">
              <node concept="2OqwBi" id="7nNrlO1GuRZ" role="37vLTJ">
                <node concept="1SfVH9" id="7nNrlO1GuIA" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                </node>
                <node concept="32jkxy" id="7nNrlO1G_9p" role="2OqNvi">
                  <ref role="3cqZAo" node="7nNrlO1Gveo" resolve="shapes" />
                </node>
              </node>
              <node concept="2OqwBi" id="4NMbKfvRQlN" role="37vLTx">
                <node concept="2OqwBi" id="4NMbKfvRPMN" role="2Oq$k0">
                  <node concept="1SfVH9" id="4NMbKfvRPMO" role="2Oq$k0">
                    <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                  </node>
                  <node concept="32jkxy" id="4NMbKfvRPMP" role="2OqNvi">
                    <ref role="3cqZAo" node="7nNrlO1Gveo" resolve="shapes" />
                  </node>
                </node>
                <node concept="3zZkjj" id="4NMbKfvRVz5" role="2OqNvi">
                  <node concept="1bVj0M" id="4NMbKfvRVz7" role="23t8la">
                    <node concept="3clFbS" id="4NMbKfvRVz8" role="1bW5cS">
                      <node concept="3clFbF" id="4NMbKfvRVz9" role="3cqZAp">
                        <node concept="17QLQc" id="4NMbKfvRVza" role="3clFbG">
                          <node concept="2Wb9Zs" id="4NMbKfvRVzb" role="3uHU7w" />
                          <node concept="37vLTw" id="4NMbKfvRVzc" role="3uHU7B">
                            <ref role="3cqZAo" node="4NMbKfvRVzd" resolve="s" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="4NMbKfvRVzd" role="1bW2Oz">
                      <property role="TrG5h" value="s" />
                      <node concept="2jxLKc" id="4NMbKfvRVze" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
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
    <node concept="1FPxxo" id="2xAA8jfBD2R" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3vn" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vo" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vp" role="1OA0iw" />
      <node concept="1OA0iZ" id="2xAA8jgzUnj" role="1OA3xZ">
        <ref role="1OA0iW" node="2xAA8jfCCHw" resolve="position" />
        <node concept="3clFbS" id="2xAA8jgzUnk" role="1OA0iB">
          <node concept="3clFbF" id="7nNrlO1FWyR" role="3cqZAp">
            <node concept="2OqwBi" id="7nNrlO1FWyS" role="3clFbG">
              <node concept="2OqwBi" id="7nNrlO1FWyT" role="2Oq$k0">
                <node concept="2OqwBi" id="7nNrlO1FWyU" role="2Oq$k0">
                  <node concept="2Wb9Zs" id="7nNrlO1FWyV" role="2Oq$k0" />
                  <node concept="3BHqF8" id="7nNrlO1FWyW" role="2OqNvi">
                    <ref role="3BGHVm" node="skgx$J4Z2F" resolve="DComponent" />
                  </node>
                </node>
                <node concept="1OA3xM" id="7nNrlO1FWyX" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2Tzy" resolve="component" />
                </node>
              </node>
              <node concept="liA8E" id="7nNrlO1FWyY" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
              </node>
            </node>
          </node>
        </node>
      </node>
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
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4E">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z4a" resolve="DRectangle" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
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
              <property role="$nhwW" value="100.0d" />
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
    <node concept="3tBE6w" id="3HJBHAQJ6LP" role="1FPzNG">
      <node concept="3clFbF" id="3HJBHAQJ6OB" role="30jUnX">
        <node concept="E34o$" id="3HJBHAQJ6Vf" role="3clFbG">
          <node concept="2OqwBi" id="3HJBHAQJ73O" role="37vLTx">
            <node concept="1SfVH9" id="3HJBHAQJ6XF" role="2Oq$k0">
              <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
            </node>
            <node concept="2$Gk$L" id="3HJBHAQJ7pG" role="2OqNvi">
              <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
              <node concept="2OqwBi" id="3HJBHAQJ81y" role="37wK5m">
                <node concept="2OqwBi" id="3HJBHAQJ7_x" role="2Oq$k0">
                  <node concept="1SfVH9" id="3HJBHAQJ7tq" role="2Oq$k0">
                    <ref role="3cqZAo" node="3HJBHAQJ0r1" resolve="size" />
                  </node>
                  <node concept="2$Gk$L" id="3HJBHAQJ7VY" role="2OqNvi">
                    <ref role="37wK5l" node="46vl3mDwqPk" resolve="toPoint" />
                  </node>
                </node>
                <node concept="2$Gk$L" id="3HJBHAQJ8l0" role="2OqNvi">
                  <ref role="37wK5l" node="2xAA8jfBhgV" resolve="div" />
                  <node concept="3b6qkQ" id="3HJBHAQJ8wf" role="37wK5m">
                    <property role="$nhwW" value="2.0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1SfVH9" id="3HJBHAQJ6OA" role="37vLTJ">
            <ref role="3cqZAo" node="7nNrlO1FXar" resolve="centre" />
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
            <node concept="1SfVH9" id="3HJBHAQJe6L" role="33vP2m">
              <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
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
            <node concept="1SfVH9" id="3HJBHAQJx8f" role="33vP2m">
              <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
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
        <node concept="3cpWs8" id="3HJBHAQJw45" role="3cqZAp">
          <node concept="3cpWsn" id="3HJBHAQJw44" role="3cpWs9">
            <property role="TrG5h" value="fc" />
            <node concept="3uibUv" id="3HJBHAQJw46" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="1SfVH9" id="3HJBHAQJxUq" role="33vP2m">
              <ref role="3cqZAo" node="3nsHMGrYPEM" resolve="color" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJBHAQJw49" role="3cqZAp">
          <node concept="3cpWsn" id="3HJBHAQJw48" role="3cpWs9">
            <property role="TrG5h" value="lc" />
            <node concept="3uibUv" id="3HJBHAQJw4a" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="1SfVH9" id="3HJBHAQJywC" role="33vP2m">
              <ref role="3cqZAo" node="2xAA8jfCHII" resolve="lineColor" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJBHAQJw4d" role="3cqZAp">
          <node concept="3cpWsn" id="3HJBHAQJw4c" role="3cpWs9">
            <property role="TrG5h" value="str" />
            <node concept="17QB3L" id="3HJBHAQJyVr" role="1tU5fm" />
            <node concept="1SfVH9" id="3HJBHAQJyHM" role="33vP2m">
              <ref role="3cqZAo" node="3nsHMGrYS6G" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3HJBHAQJw4g" role="3cqZAp">
          <node concept="2YIFZM" id="3HJBHAQJwhl" role="3clFbG">
            <ref role="1Pybhc" node="7wc8RN4MMv1" resolve="D2D" />
            <ref role="37wK5l" node="7wc8RN4MM$Y" resolve="drawRect" />
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
            <node concept="37vLTw" id="3HJBHAQJwh_" role="37wK5m">
              <ref role="3cqZAo" node="3HJBHAQJw44" resolve="fc" />
            </node>
            <node concept="37vLTw" id="3HJBHAQJwhA" role="37wK5m">
              <ref role="3cqZAo" node="3HJBHAQJw48" resolve="lc" />
            </node>
            <node concept="37vLTw" id="3HJBHAQJwhB" role="37wK5m">
              <ref role="3cqZAo" node="3HJBHAQJw4c" resolve="str" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3HJBHAQJ9lt" role="3clF45" />
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
    <ref role="2UJ2Q8" node="skgx$J4Z3O" resolve="DLine" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="6lHrNJlyP$n" role="1FPzNG">
      <property role="TrG5h" value="endPoint" />
      <node concept="3LmiP1" id="6lHrNJlyP_g" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="3tBE6w" id="6lHrNJlyQPu" role="1FPzNG">
      <node concept="3clFbF" id="6lHrNJlyQSN" role="30jUnX">
        <node concept="E34o$" id="6lHrNJlyR07" role="3clFbG">
          <node concept="2OqwBi" id="6lHrNJlyRa4" role="37vLTx">
            <node concept="1SfVH9" id="6lHrNJlyR3f" role="2Oq$k0">
              <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
            </node>
            <node concept="2$Gk$L" id="6lHrNJlyRu5" role="2OqNvi">
              <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
              <node concept="2OqwBi" id="6lHrNJlySBI" role="37wK5m">
                <node concept="2OqwBi" id="6lHrNJlyS8n" role="2Oq$k0">
                  <node concept="1SfVH9" id="6lHrNJlyRys" role="2Oq$k0">
                    <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
                  </node>
                  <node concept="2$Gk$L" id="6lHrNJlySrD" role="2OqNvi">
                    <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                    <node concept="1SfVH9" id="6lHrNJlySx7" role="37wK5m">
                      <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
                    </node>
                  </node>
                </node>
                <node concept="2$Gk$L" id="6lHrNJlySWo" role="2OqNvi">
                  <ref role="37wK5l" node="2xAA8jfBhgV" resolve="div" />
                  <node concept="3b6qkQ" id="6lHrNJlyTfM" role="37wK5m">
                    <property role="$nhwW" value="2.0d" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1SfVH9" id="6lHrNJlyQSM" role="37vLTJ">
            <ref role="3cqZAo" node="7nNrlO1FXar" resolve="centre" />
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
        <node concept="3cpWs8" id="6lHrNJlz5q_" role="3cqZAp">
          <node concept="3cpWsn" id="6lHrNJlz5q$" role="3cpWs9">
            <property role="TrG5h" value="start" />
            <node concept="3LmiP1" id="6lHrNJlz5Wq" role="1tU5fm">
              <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
            </node>
            <node concept="1SfVH9" id="6lHrNJlz5NG" role="33vP2m">
              <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6lHrNJlz5qD" role="3cqZAp">
          <node concept="3cpWsn" id="6lHrNJlz5qC" role="3cpWs9">
            <property role="TrG5h" value="end" />
            <node concept="3LmiP1" id="6lHrNJlz66Q" role="1tU5fm">
              <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
            </node>
            <node concept="1SfVH9" id="6lHrNJlz5OT" role="33vP2m">
              <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6lHrNJlz5qH" role="3cqZAp">
          <node concept="3cpWsn" id="6lHrNJlz5qG" role="3cpWs9">
            <property role="TrG5h" value="lowx" />
            <node concept="10P55v" id="6lHrNJlz5qI" role="1tU5fm" />
            <node concept="2YIFZM" id="6lHrNJlz7fa" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~Math.min(double,double)" resolve="min" />
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <node concept="2OqwBi" id="6lHrNJlz7Jy" role="37wK5m">
                <node concept="37vLTw" id="6lHrNJlz7ym" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJlz5q$" resolve="start" />
                </node>
                <node concept="32jkxy" id="6lHrNJlz83G" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="6lHrNJlz94x" role="37wK5m">
                <node concept="37vLTw" id="6lHrNJlz8HF" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJlz5qC" resolve="end" />
                </node>
                <node concept="32jkxy" id="6lHrNJlz9p$" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6lHrNJlz5qN" role="3cqZAp">
          <node concept="3cpWsn" id="6lHrNJlz5qM" role="3cpWs9">
            <property role="TrG5h" value="highx" />
            <node concept="10P55v" id="6lHrNJlz5qO" role="1tU5fm" />
            <node concept="2YIFZM" id="6lHrNJlzahQ" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~Math.max(double,double)" resolve="max" />
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <node concept="2OqwBi" id="6lHrNJlzaRX" role="37wK5m">
                <node concept="37vLTw" id="6lHrNJlzaxH" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJlz5q$" resolve="start" />
                </node>
                <node concept="32jkxy" id="6lHrNJlzbGU" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="6lHrNJlzcyb" role="37wK5m">
                <node concept="37vLTw" id="6lHrNJlzcaQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJlz5qC" resolve="end" />
                </node>
                <node concept="32jkxy" id="6lHrNJlzdfr" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6lHrNJlz5qT" role="3cqZAp">
          <node concept="3cpWsn" id="6lHrNJlz5qS" role="3cpWs9">
            <property role="TrG5h" value="lowy" />
            <node concept="10P55v" id="6lHrNJlz5qU" role="1tU5fm" />
            <node concept="2YIFZM" id="6lHrNJlzd$y" role="33vP2m">
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <ref role="37wK5l" to="wyt6:~Math.min(double,double)" resolve="min" />
              <node concept="2OqwBi" id="6lHrNJlzd$z" role="37wK5m">
                <node concept="37vLTw" id="6lHrNJlzd$$" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJlz5q$" resolve="start" />
                </node>
                <node concept="32jkxy" id="6lHrNJlzd$_" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                </node>
              </node>
              <node concept="2OqwBi" id="6lHrNJlzd$A" role="37wK5m">
                <node concept="37vLTw" id="6lHrNJlzd$B" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJlz5qC" resolve="end" />
                </node>
                <node concept="32jkxy" id="6lHrNJlzd$C" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6lHrNJlz5qZ" role="3cqZAp">
          <node concept="3cpWsn" id="6lHrNJlz5qY" role="3cpWs9">
            <property role="TrG5h" value="highy" />
            <node concept="10P55v" id="6lHrNJlz5r0" role="1tU5fm" />
            <node concept="2YIFZM" id="6lHrNJlze7p" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~Math.max(double,double)" resolve="max" />
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <node concept="2OqwBi" id="6lHrNJlze7q" role="37wK5m">
                <node concept="37vLTw" id="6lHrNJlze7r" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJlz5q$" resolve="start" />
                </node>
                <node concept="32jkxy" id="6lHrNJlze7s" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                </node>
              </node>
              <node concept="2OqwBi" id="6lHrNJlze7t" role="37wK5m">
                <node concept="37vLTw" id="6lHrNJlze7u" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJlz5qC" resolve="end" />
                </node>
                <node concept="32jkxy" id="6lHrNJlze7v" role="2OqNvi">
                  <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6lHrNJlz5r4" role="3cqZAp">
          <node concept="1Wc70l" id="6lHrNJlzvug" role="3cqZAk">
            <node concept="2OqwBi" id="6lHrNJlzwNi" role="3uHU7w">
              <node concept="2OqwBi" id="6lHrNJlzvZV" role="2Oq$k0">
                <node concept="37vLTw" id="6lHrNJlzvCl" role="2Oq$k0">
                  <ref role="3cqZAo" node="6lHrNJlz5qC" resolve="end" />
                </node>
                <node concept="2$Gk$L" id="6lHrNJlzwlb" role="2OqNvi">
                  <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                  <node concept="37vLTw" id="6lHrNJlzwtd" role="37wK5m">
                    <ref role="3cqZAo" node="6lHrNJlz5q$" resolve="start" />
                  </node>
                </node>
              </node>
              <node concept="2$Gk$L" id="6lHrNJlzyuB" role="2OqNvi">
                <ref role="37wK5l" node="2xAA8jfBtte" resolve="equalAngle" />
                <node concept="2OqwBi" id="6lHrNJlzz5I" role="37wK5m">
                  <node concept="37vLTw" id="6lHrNJlzyZV" role="2Oq$k0">
                    <ref role="3cqZAo" node="6lHrNJlz5qC" resolve="end" />
                  </node>
                  <node concept="2$Gk$L" id="6lHrNJlzzB2" role="2OqNvi">
                    <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                    <node concept="37vLTw" id="6lHrNJlzzSi" role="37wK5m">
                      <ref role="3cqZAo" node="6lHrNJlyQ9D" resolve="p" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="6lHrNJlzsdr" role="3uHU7B">
              <node concept="1Wc70l" id="6lHrNJlzoLA" role="3uHU7B">
                <node concept="1Wc70l" id="6lHrNJlzmbs" role="3uHU7B">
                  <node concept="3eOSWO" id="6lHrNJlzizM" role="3uHU7B">
                    <node concept="2OqwBi" id="6lHrNJlzgJA" role="3uHU7B">
                      <node concept="37vLTw" id="6lHrNJlzgrl" role="2Oq$k0">
                        <ref role="3cqZAo" node="6lHrNJlyQ9D" resolve="p" />
                      </node>
                      <node concept="32jkxy" id="6lHrNJlzhA2" role="2OqNvi">
                        <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6lHrNJlziEh" role="3uHU7w">
                      <ref role="3cqZAo" node="6lHrNJlz5qG" resolve="lowx" />
                    </node>
                  </node>
                  <node concept="3eOVzh" id="6lHrNJlznNP" role="3uHU7w">
                    <node concept="2OqwBi" id="6lHrNJlzmod" role="3uHU7B">
                      <node concept="37vLTw" id="6lHrNJlzmjx" role="2Oq$k0">
                        <ref role="3cqZAo" node="6lHrNJlyQ9D" resolve="p" />
                      </node>
                      <node concept="32jkxy" id="6lHrNJlzn6P" role="2OqNvi">
                        <ref role="3cqZAo" node="4NMtPTvGW7s" resolve="x" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6lHrNJlzo87" role="3uHU7w">
                      <ref role="3cqZAo" node="6lHrNJlz5qM" resolve="highx" />
                    </node>
                  </node>
                </node>
                <node concept="3eOSWO" id="6lHrNJlzrrh" role="3uHU7w">
                  <node concept="2OqwBi" id="6lHrNJlzoZS" role="3uHU7B">
                    <node concept="37vLTw" id="6lHrNJlzoUL" role="2Oq$k0">
                      <ref role="3cqZAo" node="6lHrNJlyQ9D" resolve="p" />
                    </node>
                    <node concept="32jkxy" id="6lHrNJlzpJl" role="2OqNvi">
                      <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6lHrNJlzrzw" role="3uHU7w">
                    <ref role="3cqZAo" node="6lHrNJlz5qS" resolve="lowy" />
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="6lHrNJlzutW" role="3uHU7w">
                <node concept="2OqwBi" id="6lHrNJlzsta" role="3uHU7B">
                  <node concept="37vLTw" id="6lHrNJlzsnC" role="2Oq$k0">
                    <ref role="3cqZAo" node="6lHrNJlyQ9D" resolve="p" />
                  </node>
                  <node concept="32jkxy" id="6lHrNJlztuT" role="2OqNvi">
                    <ref role="3cqZAo" node="4NMtPTvGXWc" resolve="y" />
                  </node>
                </node>
                <node concept="37vLTw" id="6lHrNJlzuNU" role="3uHU7w">
                  <ref role="3cqZAo" node="6lHrNJlz5qY" resolve="highy" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6lHrNJlyQ9H" role="3clF45" />
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
        <node concept="3cpWs8" id="6lHrNJlyTxg" role="3cqZAp">
          <node concept="3cpWsn" id="6lHrNJlyTxf" role="3cpWs9">
            <property role="TrG5h" value="pt" />
            <node concept="3LmiP1" id="6lHrNJlyUe9" role="1tU5fm">
              <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
            </node>
            <node concept="1SfVH9" id="6lHrNJlyUK1" role="33vP2m">
              <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6lHrNJlyTxk" role="3cqZAp">
          <node concept="3cpWsn" id="6lHrNJlyTxj" role="3cpWs9">
            <property role="TrG5h" value="end" />
            <node concept="3LmiP1" id="6lHrNJlyUqz" role="1tU5fm">
              <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
            </node>
            <node concept="1SfVH9" id="6lHrNJlyV4Y" role="33vP2m">
              <ref role="3cqZAo" node="6lHrNJlyP$n" resolve="endPoint" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6lHrNJlyTxo" role="3cqZAp">
          <node concept="3cpWsn" id="6lHrNJlyTxn" role="3cpWs9">
            <property role="TrG5h" value="lc" />
            <node concept="3uibUv" id="6lHrNJlyTxp" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="1SfVH9" id="6lHrNJlyVgJ" role="33vP2m">
              <ref role="3cqZAo" node="2xAA8jfCHII" resolve="lineColor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6lHrNJlyTxr" role="3cqZAp">
          <node concept="2YIFZM" id="6lHrNJlyTI0" role="3clFbG">
            <ref role="1Pybhc" node="7wc8RN4MMv1" resolve="D2D" />
            <ref role="37wK5l" node="7wc8RN4MQzA" resolve="drawLine" />
            <node concept="37vLTw" id="6lHrNJlyTI1" role="37wK5m">
              <ref role="3cqZAo" node="6lHrNJlyQ9J" resolve="g" />
            </node>
            <node concept="37vLTw" id="6lHrNJlyTI2" role="37wK5m">
              <ref role="3cqZAo" node="6lHrNJlyTxn" resolve="lc" />
            </node>
            <node concept="2OqwBi" id="6lHrNJlyVNP" role="37wK5m">
              <node concept="37vLTw" id="6lHrNJlyVqs" role="2Oq$k0">
                <ref role="3cqZAo" node="6lHrNJlyTxf" resolve="pt" />
              </node>
              <node concept="2$Gk$L" id="6lHrNJlyYZl" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="6lHrNJlyXbe" role="37wK5m">
              <node concept="37vLTw" id="6lHrNJlyWTA" role="2Oq$k0">
                <ref role="3cqZAo" node="6lHrNJlyTxf" resolve="pt" />
              </node>
              <node concept="2$Gk$L" id="6lHrNJlyXuT" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
            <node concept="2OqwBi" id="6lHrNJlz1kS" role="37wK5m">
              <node concept="37vLTw" id="6lHrNJlz185" role="2Oq$k0">
                <ref role="3cqZAo" node="6lHrNJlyTxj" resolve="end" />
              </node>
              <node concept="2$Gk$L" id="6lHrNJlz1F$" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK0G" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="6lHrNJlz2ic" role="37wK5m">
              <node concept="37vLTw" id="6lHrNJlz27X" role="2Oq$k0">
                <ref role="3cqZAo" node="6lHrNJlyTxj" resolve="end" />
              </node>
              <node concept="2$Gk$L" id="6lHrNJlz316" role="2OqNvi">
                <ref role="37wK5l" node="7ESv7kyhK1A" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6lHrNJlyQ9N" role="3clF45" />
    </node>
    <node concept="1FPxxo" id="6lHrNJlyP$a" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3vD" role="1FPzNG">
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
      <node concept="3clFbS" id="3ySjgkDG3vE" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vF" role="1OA0iw" />
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
    <node concept="kUGYC" id="2xAA8jfoS7Y" role="1FPzNG">
      <property role="TrG5h" value="closedByUser" />
      <property role="1EzhhJ" value="true" />
      <property role="1ePe$S" value="true" />
      <node concept="3Tm1VV" id="2xAA8jfoS7Z" role="1B3o_S" />
      <node concept="3clFbS" id="2xAA8jfoS80" role="3clF47" />
      <node concept="3cqZAl" id="2xAA8jfoSfI" role="3clF45" />
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
        <property role="3Bjd6u" value="true" />
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
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4I">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z45" resolve="DFilled" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="3nsHMGrYPEM" role="1FPzNG">
      <property role="TrG5h" value="color" />
      <node concept="3uibUv" id="3nsHMGrYPFx" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="3K4zz7" id="3nsHMGrYRXu" role="33vP2m">
        <node concept="10M0yZ" id="3nsHMGrYS0O" role="3K4E3e">
          <ref role="3cqZAo" to="z60i:~Color.yellow" resolve="yellow" />
          <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="10M0yZ" id="3nsHMGrYS4l" role="3K4GZi">
          <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
          <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="1SfVH9" id="3nsHMGrYR_B" role="3K4Cdx">
          <ref role="3cqZAo" node="7nNrlO1Gd19" resolve="selected" />
        </node>
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
    <node concept="32q3_s" id="3nsHMGrYVuQ" role="1FPzNG">
      <property role="TrG5h" value="dragStartMousePosition" />
      <property role="KodbT" value="true" />
      <node concept="3LmiP1" id="3nsHMGrYVy1" role="1tU5fm">
        <ref role="2XDbjv" node="4NMtPTvGW7r" resolve="DPoint" />
      </node>
    </node>
    <node concept="3tBE6w" id="3nsHMGrYWSD" role="1FPzNG">
      <node concept="3clFbF" id="3nsHMGrYWWT" role="30jUnX">
        <node concept="E34o$" id="3nsHMGrYX1L" role="3clFbG">
          <node concept="3K4zz7" id="3nsHMGrYYmo" role="37vLTx">
            <node concept="2OqwBi" id="3nsHMGrYYxR" role="3K4E3e">
              <node concept="1SfVH9" id="3nsHMGrYYrG" role="2Oq$k0">
                <ref role="3cqZAo" node="3nsHMGrYSG4" resolve="dragStartPosition" />
              </node>
              <node concept="2$Gk$L" id="3nsHMGrYYNb" role="2OqNvi">
                <ref role="37wK5l" node="2xAA8jfB71b" resolve="plus" />
                <node concept="2OqwBi" id="3nsHMGrZ0DM" role="37wK5m">
                  <node concept="2OqwBi" id="3nsHMGrYZUu" role="2Oq$k0">
                    <node concept="2OqwBi" id="3nsHMGrYZc5" role="2Oq$k0">
                      <node concept="1SfVH9" id="3nsHMGrYZ0j" role="2Oq$k0">
                        <ref role="3cqZAo" node="2xAA8jfQBlZ" resolve="canvas" />
                      </node>
                      <node concept="32jkxy" id="3nsHMGrYZAV" role="2OqNvi">
                        <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                      </node>
                    </node>
                    <node concept="32jkxy" id="3nsHMGrZ0iT" role="2OqNvi">
                      <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                    </node>
                  </node>
                  <node concept="2$Gk$L" id="3nsHMGrZ0WR" role="2OqNvi">
                    <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                    <node concept="1SfVH9" id="3nsHMGrZ156" role="37wK5m">
                      <ref role="3cqZAo" node="3nsHMGrYVuQ" resolve="dragStartMousePosition" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1SfVH9" id="3nsHMGrYYUd" role="3K4GZi">
              <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
            </node>
            <node concept="1SfVH9" id="3nsHMGrYXVl" role="3K4Cdx">
              <ref role="3cqZAo" node="3nsHMGrYX5W" resolve="dragging" />
            </node>
          </node>
          <node concept="1SfVH9" id="3nsHMGrYWWS" role="37vLTJ">
            <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="3nsHMGrYX5W" role="1FPzNG">
      <property role="TrG5h" value="dragging" />
      <node concept="10P_77" id="3nsHMGrYXa2" role="1tU5fm" />
    </node>
    <node concept="3tBE6w" id="3nsHMGrZ5Oq" role="1FPzNG">
      <node concept="9aQIb" id="3nsHMGrZ5ZP" role="30jUnX">
        <node concept="3clFbS" id="3nsHMGrZ5ZQ" role="9aQI4">
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
          <node concept="3clFbJ" id="3nsHMGrZ64u" role="3cqZAp">
            <node concept="1Wc70l" id="2T0xVNLS_7I" role="3clFbw">
              <node concept="3J2VuX" id="3nsHMGrZaUU" role="3uHU7w">
                <node concept="3y3z36" id="3nsHMGrZbO_" role="3J2yhu">
                  <node concept="10Nm6u" id="3nsHMGrZbVi" role="3uHU7w" />
                  <node concept="2OqwBi" id="3nsHMGrZb8q" role="3uHU7B">
                    <node concept="2Wb9Zs" id="3nsHMGrZb20" role="2Oq$k0" />
                    <node concept="1932wR" id="3nsHMGrZbu_" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="3nsHMGrZaNH" role="3uHU7B">
                <node concept="1Wc70l" id="2T0xVNLS_Xr" role="3uHU7B">
                  <node concept="2OqwBi" id="3nsHMGrZa4a" role="3uHU7w">
                    <node concept="37vLTw" id="3nsHMGrZ9Yl" role="2Oq$k0">
                      <ref role="3cqZAo" node="3nsHMGrZ6LB" resolve="di" />
                    </node>
                    <node concept="32jkxy" id="3nsHMGrZakc" role="2OqNvi">
                      <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                    </node>
                  </node>
                  <node concept="2275Hy" id="3nsHMGrZcmE" role="3uHU7B">
                    <ref role="37wK5l" node="2xAA8jfB$je" resolve="hit" />
                    <node concept="2OqwBi" id="3nsHMGrZcBx" role="37wK5m">
                      <node concept="37vLTw" id="3nsHMGrZcvO" role="2Oq$k0">
                        <ref role="3cqZAo" node="3nsHMGrZ6LB" resolve="di" />
                      </node>
                      <node concept="32jkxy" id="3nsHMGrZcSb" role="2OqNvi">
                        <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="3nsHMGrZ9wL" role="3uHU7w">
                  <node concept="3J2VuX" id="3nsHMGrZ9wN" role="3fr31v">
                    <node concept="2OqwBi" id="3nsHMGrZ9wO" role="3J2yhu">
                      <node concept="37vLTw" id="3nsHMGrZ9wP" role="2Oq$k0">
                        <ref role="3cqZAo" node="3nsHMGrZ6LB" resolve="di" />
                      </node>
                      <node concept="32jkxy" id="3nsHMGrZ9wQ" role="2OqNvi">
                        <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3nsHMGrZ64w" role="3clFbx">
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
                    <ref role="3cqZAo" node="3nsHMGrYVuQ" resolve="dragStartMousePosition" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3nsHMGrZ7tK" role="3cqZAp">
                <node concept="E34o$" id="3nsHMGrZ88w" role="3clFbG">
                  <node concept="3clFbT" id="3nsHMGrZ8dC" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="1SfVH9" id="3nsHMGrZ7tJ" role="37vLTJ">
                    <ref role="3cqZAo" node="3nsHMGrYX5W" resolve="dragging" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="3nsHMGrZ64G" role="3eNLev">
              <node concept="1Wc70l" id="3nsHMGrZesb" role="3eO9$A">
                <node concept="1eOMI4" id="3nsHMGrZez0" role="3uHU7w">
                  <node concept="22lmx$" id="3nsHMGrZe_I" role="1eOMHV">
                    <node concept="3fqX7Q" id="3nsHMGrZeBq" role="3uHU7B">
                      <node concept="2OqwBi" id="3nsHMGrZeJ7" role="3fr31v">
                        <node concept="37vLTw" id="3nsHMGrZeD7" role="2Oq$k0">
                          <ref role="3cqZAo" node="3nsHMGrZ6LB" resolve="di" />
                        </node>
                        <node concept="32jkxy" id="3nsHMGrZeYN" role="2OqNvi">
                          <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3nsHMGrZgq7" role="3uHU7w">
                      <node concept="2OqwBi" id="3nsHMGrZfe4" role="2Oq$k0">
                        <node concept="37vLTw" id="3nsHMGrZf6k" role="2Oq$k0">
                          <ref role="3cqZAo" node="3nsHMGrZ6LB" resolve="di" />
                        </node>
                        <node concept="32jkxy" id="3nsHMGrZfuj" role="2OqNvi">
                          <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                        </node>
                      </node>
                      <node concept="3JPx81" id="3nsHMGrZjnf" role="2OqNvi">
                        <node concept="10M0yZ" id="3nsHMGrZjv_" role="25WWJ7">
                          <ref role="3cqZAo" to="hyam:~KeyEvent.VK_ESCAPE" resolve="VK_ESCAPE" />
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1SfVH9" id="3nsHMGrZe4o" role="3uHU7B">
                  <ref role="3cqZAo" node="3nsHMGrYX5W" resolve="dragging" />
                </node>
              </node>
              <node concept="3clFbS" id="3nsHMGrZ64I" role="3eOfB_">
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
                        <ref role="3cqZAo" node="3nsHMGrZ6LB" resolve="di" />
                      </node>
                      <node concept="32jkxy" id="3nsHMGrZkmr" role="2OqNvi">
                        <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
                      </node>
                    </node>
                    <node concept="3JPx81" id="3nsHMGrZkms" role="2OqNvi">
                      <node concept="10M0yZ" id="3nsHMGrZkmt" role="25WWJ7">
                        <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        <ref role="3cqZAo" to="hyam:~KeyEvent.VK_ESCAPE" resolve="VK_ESCAPE" />
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
                      <ref role="3cqZAo" node="3nsHMGrYVuQ" resolve="dragStartMousePosition" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3nsHMGrZ8xh" role="3cqZAp">
                  <node concept="E34o$" id="3nsHMGrZ8Wi" role="3clFbG">
                    <node concept="3clFbT" id="3nsHMGrZ952" role="37vLTx" />
                    <node concept="1SfVH9" id="3nsHMGrZ8xg" role="37vLTJ">
                      <ref role="3cqZAo" node="3nsHMGrYX5W" resolve="dragging" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1FPxxo" id="3nsHMGrZ54U" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3vP" role="1FPzNG">
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
            <node concept="3y3z36" id="6PgdeE5_OJF" role="3clFbw">
              <node concept="10Nm6u" id="6PgdeE5_OSq" role="3uHU7w" />
              <node concept="1OA3xA" id="6PgdeE5_ODE" role="3uHU7B" />
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
        <property role="3Bjd6u" value="true" />
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
      <node concept="1OA3wd" id="4NMtPTvGXXu" role="1OA3wj">
        <property role="TrG5h" value="componentlistener" />
        <node concept="3uibUv" id="46vl3mDwxqp" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~ComponentListener" resolve="ComponentListener" />
        </node>
      </node>
      <node concept="3clFbS" id="3ySjgkDG3vW" role="1OA0iy">
        <node concept="3clFbF" id="46vl3mDULBm" role="3cqZAp">
          <node concept="37vLTI" id="46vl3mDULKW" role="3clFbG">
            <node concept="2ShNRf" id="46vl3mDULNv" role="37vLTx">
              <node concept="YeOm9" id="46vl3mDULWn" role="2ShVmc">
                <node concept="1Y3b0j" id="46vl3mDULWq" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" to="hyam:~ComponentListener" resolve="ComponentListener" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
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
        <node concept="3clFbF" id="46vl3mDUO8J" role="3cqZAp">
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
        <node concept="3clFbF" id="76QCTJD3ri9" role="3cqZAp">
          <node concept="37vLTI" id="76QCTJD3rDf" role="3clFbG">
            <node concept="10Nm6u" id="76QCTJD3rFD" role="37vLTx" />
            <node concept="5IyTM" id="76QCTJD3ri7" role="37vLTJ">
              <ref role="3cqZAo" node="4NMtPTvGXXu" resolve="componentlistener" />
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
    <node concept="32q3_s" id="4Oa6zO0kSh3" role="1FPzNG">
      <property role="TrG5h" value="jComponent" />
      <property role="KodbT" value="true" />
      <node concept="3uibUv" id="4Oa6zO0kUkn" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
    <node concept="1FPxxo" id="4Oa6zO0kRpd" role="1FPzNG" />
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
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="76QCTJD3zb7" role="2AJF6D">
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
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4L">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z4h" resolve="DCircle" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="3nsHMGrXC3n" role="1FPzNG">
      <property role="TrG5h" value="radius" />
      <node concept="10Oyi0" id="3nsHMGrXC46" role="1tU5fm" />
    </node>
    <node concept="3tBE6w" id="3nsHMGrXDB2" role="1FPzNG">
      <node concept="3clFbF" id="3nsHMGrXFdK" role="30jUnX">
        <node concept="E34o$" id="3nsHMGrYC$t" role="3clFbG">
          <node concept="1SfVH9" id="3nsHMGrYCAr" role="37vLTx">
            <ref role="3cqZAo" node="2xAA8jfCCHw" resolve="position" />
          </node>
          <node concept="1SfVH9" id="3nsHMGrXFdJ" role="37vLTJ">
            <ref role="3cqZAo" node="7nNrlO1FXar" resolve="centre" />
          </node>
        </node>
      </node>
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
            <node concept="1SfVH9" id="6lHrNJly7Tf" role="33vP2m">
              <ref role="3cqZAo" node="3nsHMGrXC3n" resolve="radius" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6lHrNJly3LX" role="3cqZAp">
          <node concept="3cpWsn" id="6lHrNJly3LW" role="3cpWs9">
            <property role="TrG5h" value="fc" />
            <node concept="3uibUv" id="6lHrNJly3LY" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="1SfVH9" id="6lHrNJly84N" role="33vP2m">
              <ref role="3cqZAo" node="3nsHMGrYPEM" resolve="color" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6lHrNJly3M1" role="3cqZAp">
          <node concept="3cpWsn" id="6lHrNJly3M0" role="3cpWs9">
            <property role="TrG5h" value="lc" />
            <node concept="3uibUv" id="6lHrNJly3M2" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="1SfVH9" id="6lHrNJly8qN" role="33vP2m">
              <ref role="3cqZAo" node="2xAA8jfCHII" resolve="lineColor" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6lHrNJly3M5" role="3cqZAp">
          <node concept="3cpWsn" id="6lHrNJly3M4" role="3cpWs9">
            <property role="TrG5h" value="str" />
            <node concept="17QB3L" id="6lHrNJly4iX" role="1tU5fm" />
            <node concept="1SfVH9" id="6lHrNJly8Lw" role="33vP2m">
              <ref role="3cqZAo" node="3nsHMGrYS6G" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6lHrNJly3M8" role="3cqZAp">
          <node concept="2YIFZM" id="6lHrNJly3Z9" role="3clFbG">
            <ref role="1Pybhc" node="7wc8RN4MMv1" resolve="D2D" />
            <ref role="37wK5l" node="7wc8RN4MQyw" resolve="drawOval" />
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
            <node concept="37vLTw" id="6lHrNJly3Zt" role="37wK5m">
              <ref role="3cqZAo" node="6lHrNJly3LW" resolve="fc" />
            </node>
            <node concept="37vLTw" id="6lHrNJly3Zu" role="37wK5m">
              <ref role="3cqZAo" node="6lHrNJly3M0" resolve="lc" />
            </node>
            <node concept="37vLTw" id="6lHrNJly3Zv" role="37wK5m">
              <ref role="3cqZAo" node="6lHrNJly3M4" resolve="str" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3nsHMGrYCVX" role="3clF45" />
    </node>
    <node concept="1FPxxo" id="3nsHMGrYCBv" role="1FPzNG" />
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
    <node concept="32q3_s" id="4NMbKfv14S_" role="1FPzNG">
      <property role="TrG5h" value="selected" />
      <node concept="2OqwBi" id="4NMbKfvkryc" role="33vP2m">
        <node concept="1SfVH9" id="4NMbKfvkqlR" role="2Oq$k0">
          <ref role="3cqZAo" node="4NMbKfv14S_" resolve="selected" />
        </node>
        <node concept="3zZkjj" id="4NMbKfvQEd7" role="2OqNvi">
          <node concept="1bVj0M" id="4NMbKfvQEd9" role="23t8la">
            <node concept="3clFbS" id="4NMbKfvQEda" role="1bW5cS">
              <node concept="3clFbF" id="4NMbKfvQEAP" role="3cqZAp">
                <node concept="2OqwBi" id="4NMbKfvQESP" role="3clFbG">
                  <node concept="37vLTw" id="4NMbKfvQEAO" role="2Oq$k0">
                    <ref role="3cqZAo" node="4NMbKfvQEdb" resolve="s" />
                  </node>
                  <node concept="32jkxy" id="4NMbKfvQFjL" role="2OqNvi">
                    <ref role="3cqZAo" node="7nNrlO1Gd19" resolve="selected" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rh6nW" id="4NMbKfvQEdb" role="1bW2Oz">
              <property role="TrG5h" value="s" />
              <node concept="2jxLKc" id="4NMbKfvQEdc" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2hMVRd" id="4NMbKfvQ_xU" role="1tU5fm">
        <node concept="3LmiP1" id="4NMbKfvQ_xW" role="2hN53Y">
          <ref role="2XDbjv" node="skgx$J4Z2r" resolve="DShape" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="3nsHMGrVVaZ" role="1FPzNG">
      <property role="TrG5h" value="mode" />
      <property role="KodbT" value="true" />
      <node concept="3LmiP1" id="3nsHMGrWgJp" role="1tU5fm">
        <ref role="2XDbjv" node="3nsHMGrVVd_" resolve="DCanvasMode" />
      </node>
    </node>
    <node concept="1FPxxo" id="3nsHMGrXgUc" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3wd" role="1FPzNG">
      <node concept="1OA3wd" id="3nsHMGrWoxt" role="1OA3wj">
        <property role="TrG5h" value="panel" />
        <node concept="3uibUv" id="3nsHMGrWrLE" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
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
                  <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                  <ref role="1Y3XeK" to="dxuu:~JPanel" resolve="JPanel" />
                  <node concept="3Tm1VV" id="3nsHMGrWt9f" role="1B3o_S" />
                  <node concept="3clFb_" id="3nsHMGrWG1m" role="jymVt">
                    <property role="TrG5h" value="paintComponent" />
                    <node concept="3Tmbuc" id="3nsHMGrWG1n" role="1B3o_S" />
                    <node concept="3cqZAl" id="3nsHMGrWG1p" role="3clF45" />
                    <node concept="37vLTG" id="3nsHMGrWG1q" role="3clF46">
                      <property role="TrG5h" value="g" />
                      <node concept="3uibUv" id="3nsHMGrWG1r" role="1tU5fm">
                        <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="3nsHMGrWG1v" role="3clF47">
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
                              <ref role="3cqZAo" node="3nsHMGrWG1q" resolve="g" />
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
                      <node concept="3clFbF" id="3nsHMGrWG1z" role="3cqZAp">
                        <node concept="3nyPlj" id="3nsHMGrWG1y" role="3clFbG">
                          <ref role="37wK5l" to="dxuu:~JComponent.paintComponent(java.awt.Graphics)" resolve="paintComponent" />
                          <node concept="37vLTw" id="3nsHMGrWG1x" role="37wK5m">
                            <ref role="3cqZAo" node="3nsHMGrWG1q" resolve="g" />
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
                                <node concept="3clFbF" id="3nsHMGrWYap" role="3cqZAp">
                                  <node concept="2OqwBi" id="3nsHMGrWZAC" role="3clFbG">
                                    <node concept="1SfVH9" id="3nsHMGrWYao" role="2Oq$k0">
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
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3nsHMGrWG1w" role="2AJF6D">
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
    </node>
  </node>
  <node concept="2UJ2oG" id="4NMtPTvGW7r">
    <property role="3GE5qa" value="structs" />
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
    <property role="3GE5qa" value="structs" />
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
    <property role="3GE5qa" value="gui" />
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
    <property role="3GE5qa" value="gui" />
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
      <property role="TrG5h" value="normal" />
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
      <node concept="3Tm1VV" id="2xAA8jfBttf" role="1B3o_S" />
      <node concept="3clFbS" id="2xAA8jfBttg" role="3clF47">
        <node concept="3clFbF" id="2xAA8jfBu_z" role="3cqZAp">
          <node concept="3eOVzh" id="2xAA8jfBwSV" role="3clFbG">
            <node concept="3b6qkQ" id="2xAA8jfBxhc" role="3uHU7w">
              <property role="$nhwW" value="0.002d" />
            </node>
            <node concept="2OqwBi" id="2xAA8jfBvTu" role="3uHU7B">
              <node concept="2OqwBi" id="2xAA8jfBuW9" role="2Oq$k0">
                <node concept="1SfVH9" id="2xAA8jfBu_y" role="2Oq$k0">
                  <ref role="3cqZAo" node="2xAA8jfBn6l" resolve="normal" />
                </node>
                <node concept="2$Gk$L" id="2xAA8jfBvgg" role="2OqNvi">
                  <ref role="37wK5l" node="2xAA8jfB2rY" resolve="minus" />
                  <node concept="2OqwBi" id="2xAA8jfBvy7" role="37wK5m">
                    <node concept="37vLTw" id="2xAA8jfBvnx" role="2Oq$k0">
                      <ref role="3cqZAo" node="2xAA8jfBuuQ" resolve="p" />
                    </node>
                    <node concept="32jkxy" id="2xAA8jfBvK8" role="2OqNvi">
                      <ref role="3cqZAo" node="2xAA8jfBn6l" resolve="normal" />
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
    <node concept="32q3_s" id="76QCTJD2lWZ" role="1FPzNG">
      <property role="TrG5h" value="pressedKeys" />
      <node concept="2hMVRd" id="4NMbKfvQJvu" role="1tU5fm">
        <node concept="10Oyi0" id="4NMbKfvQQsR" role="2hN53Y" />
      </node>
    </node>
    <node concept="32q3_s" id="76QCTJD2$Tv" role="1FPzNG">
      <property role="TrG5h" value="isCtrlDownL" />
      <node concept="10P_77" id="76QCTJD2_2e" role="1tU5fm" />
      <node concept="2OqwBi" id="76QCTJD2EgX" role="33vP2m">
        <node concept="1SfVH9" id="76QCTJD2D7t" role="2Oq$k0">
          <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
        </node>
        <node concept="3JPx81" id="4NMbKfvQZ71" role="2OqNvi">
          <node concept="10M0yZ" id="76QCTJD2LhU" role="25WWJ7">
            <ref role="3cqZAo" to="hyam:~KeyEvent.VK_CONTROL" resolve="VK_CONTROL" />
            <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="76QCTJD2Nm7" role="1FPzNG">
      <property role="TrG5h" value="isAltDownL" />
      <node concept="10P_77" id="76QCTJD2Nm8" role="1tU5fm" />
      <node concept="2OqwBi" id="76QCTJD2Nm9" role="33vP2m">
        <node concept="1SfVH9" id="76QCTJD2Nma" role="2Oq$k0">
          <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
        </node>
        <node concept="3JPx81" id="4NMbKfvR3v_" role="2OqNvi">
          <node concept="10M0yZ" id="76QCTJD2PrL" role="25WWJ7">
            <ref role="3cqZAo" to="hyam:~KeyEvent.VK_ALT" resolve="VK_ALT" />
            <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
          </node>
        </node>
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
  </node>
  <node concept="2UJ2oG" id="3nsHMGrVVd_">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DCanvasMode" />
    <node concept="32q3_s" id="3nsHMGrVVdA" role="2UJ2y3">
      <property role="TrG5h" value="canvas" />
      <node concept="3LmiP1" id="3nsHMGrWb6d" role="1tU5fm">
        <ref role="2XDbjv" node="skgx$J4Z32" resolve="DCanvas" />
      </node>
    </node>
  </node>
  <node concept="2UJ2oG" id="3nsHMGrZkMx">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DClickMode" />
    <node concept="2UJ2Q1" id="3nsHMGrZkM$" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="3nsHMGrVVd_" resolve="DCanvasMode" />
    </node>
  </node>
  <node concept="3LmNE2" id="3nsHMGrZkMG">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="3nsHMGrZkMx" resolve="DClickMode" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="7wc8RN4MyWz" role="1FPzNG">
      <property role="TrG5h" value="action" />
      <node concept="3uibUv" id="7wc8RN4MC24" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
        <node concept="3LmiP1" id="7wc8RN4MC3I" role="11_B2D">
          <ref role="2XDbjv" node="skgx$J4Z32" resolve="DCanvas" />
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="7wc8RN4MIh7" role="1FPzNG">
      <node concept="9aQIb" id="7wc8RN4MIl9" role="30jUnX">
        <node concept="3clFbS" id="7wc8RN4MIla" role="9aQI4">
          <node concept="3cpWs8" id="7wc8RN4MIn1" role="3cqZAp">
            <node concept="3cpWsn" id="7wc8RN4MIn4" role="3cpWs9">
              <property role="TrG5h" value="di" />
              <node concept="3LmiP1" id="7wc8RN4MIn0" role="1tU5fm">
                <ref role="2XDbjv" node="2gyk5S1Dvn0" resolve="DDeviceInput" />
              </node>
              <node concept="2OqwBi" id="7wc8RN4MIGi" role="33vP2m">
                <node concept="1SfVH9" id="7wc8RN4MI$v" role="2Oq$k0">
                  <ref role="3cqZAo" node="3nsHMGrVVdA" resolve="canvas" />
                </node>
                <node concept="32jkxy" id="7wc8RN4MJ4y" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7wc8RN4MJ8U" role="3cqZAp">
            <node concept="3clFbS" id="7wc8RN4MJ8W" role="3clFbx">
              <node concept="3clFbF" id="7wc8RN4MKvu" role="3cqZAp">
                <node concept="2OqwBi" id="7wc8RN4MKF3" role="3clFbG">
                  <node concept="1SfVH9" id="7wc8RN4MKvs" role="2Oq$k0">
                    <ref role="3cqZAo" node="7wc8RN4MyWz" resolve="action" />
                  </node>
                  <node concept="liA8E" id="7wc8RN4MMnc" role="2OqNvi">
                    <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
                    <node concept="1SfVH9" id="7wc8RN4MMry" role="37wK5m">
                      <ref role="3cqZAo" node="3nsHMGrVVdA" resolve="canvas" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7wc8RN4MK0D" role="3clFbw">
              <node concept="3fqX7Q" id="7wc8RN4MK3u" role="3uHU7w">
                <node concept="3J2VuX" id="7wc8RN4MK5y" role="3fr31v">
                  <node concept="2OqwBi" id="7wc8RN4MKd1" role="3J2yhu">
                    <node concept="37vLTw" id="7wc8RN4MK79" role="2Oq$k0">
                      <ref role="3cqZAo" node="7wc8RN4MIn4" resolve="di" />
                    </node>
                    <node concept="32jkxy" id="7wc8RN4MKs_" role="2OqNvi">
                      <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7wc8RN4MJgQ" role="3uHU7B">
                <node concept="37vLTw" id="7wc8RN4MJbk" role="2Oq$k0">
                  <ref role="3cqZAo" node="7wc8RN4MIn4" resolve="di" />
                </node>
                <node concept="32jkxy" id="7wc8RN4MJ$c" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2UJ2oG" id="ZC_rTbhUlY">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DSelectMode" />
  </node>
  <node concept="2UJ2oG" id="ZC_rTbhUmv">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DLineMode" />
    <node concept="2UJ2Q1" id="ZC_rTbhUmy" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="3nsHMGrVVd_" resolve="DCanvasMode" />
    </node>
  </node>
  <node concept="3LmNE2" id="ZC_rTbhV83">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="ZC_rTbhUmv" resolve="DLineMode" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="3HJBHAQK8gb" role="1FPzNG">
      <property role="TrG5h" value="shapes" />
      <node concept="_YKpA" id="3HJBHAQK8h4" role="1tU5fm">
        <node concept="3LmiP1" id="3HJBHAQK8i3" role="_ZDj9">
          <ref role="2XDbjv" node="skgx$J4Z2r" resolve="DShape" />
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="3HJBHAQK94H" role="1FPzNG">
      <property role="TrG5h" value="action" />
      <node concept="3uibUv" id="3HJBHAQK9Sm" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~BiConsumer" resolve="BiConsumer" />
        <node concept="3LmiP1" id="3HJBHAQK9XU" role="11_B2D">
          <ref role="2XDbjv" node="skgx$J4Z32" resolve="DCanvas" />
        </node>
        <node concept="_YKpA" id="3HJBHAQK9ZQ" role="11_B2D">
          <node concept="3LmiP1" id="3HJBHAQKa2c" role="_ZDj9">
            <ref role="2XDbjv" node="skgx$J4Z2r" resolve="DShape" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="3HJBHAQKaXv" role="1FPzNG">
      <property role="TrG5h" value="clickedShape" />
      <property role="KodbT" value="true" />
      <node concept="3LmiP1" id="3HJBHAQKb0l" role="1tU5fm">
        <ref role="2XDbjv" node="skgx$J4Z2r" resolve="DShape" />
      </node>
    </node>
    <node concept="3tBE6w" id="3HJBHAQKaMw" role="1FPzNG">
      <node concept="9aQIb" id="3HJBHAQKaPH" role="30jUnX">
        <node concept="3clFbS" id="3HJBHAQKaPI" role="9aQI4">
          <node concept="3cpWs8" id="3HJBHAQKd5M" role="3cqZAp">
            <node concept="3cpWsn" id="3HJBHAQKd5P" role="3cpWs9">
              <property role="TrG5h" value="di" />
              <node concept="3LmiP1" id="3HJBHAQKd5L" role="1tU5fm">
                <ref role="2XDbjv" node="2gyk5S1Dvn0" resolve="DDeviceInput" />
              </node>
              <node concept="2OqwBi" id="3HJBHAQKdjL" role="33vP2m">
                <node concept="1SfVH9" id="3HJBHAQKda3" role="2Oq$k0">
                  <ref role="3cqZAo" node="3nsHMGrVVdA" resolve="canvas" />
                </node>
                <node concept="32jkxy" id="3HJBHAQKdHC" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3HJBHAQKe01" role="3cqZAp">
            <node concept="3clFbS" id="3HJBHAQKe03" role="3clFbx">
              <node concept="3clFbF" id="3HJBHAQKgbM" role="3cqZAp">
                <node concept="E34o$" id="3HJBHAQKgiy" role="3clFbG">
                  <node concept="2OqwBi" id="3HJBHAQKhUf" role="37vLTx">
                    <node concept="2OqwBi" id="3HJBHAQKgyh" role="2Oq$k0">
                      <node concept="1SfVH9" id="3HJBHAQKgnD" role="2Oq$k0">
                        <ref role="3cqZAo" node="3nsHMGrVVdA" resolve="canvas" />
                      </node>
                      <node concept="32jkxy" id="3HJBHAQKgUh" role="2OqNvi">
                        <ref role="3cqZAo" node="7nNrlO1Gveo" resolve="shapes" />
                      </node>
                    </node>
                    <node concept="1z4cxt" id="3HJBHAQKkPT" role="2OqNvi">
                      <node concept="1bVj0M" id="3HJBHAQKkPV" role="23t8la">
                        <node concept="3clFbS" id="3HJBHAQKkPW" role="1bW5cS">
                          <node concept="3clFbF" id="3HJBHAQKl2G" role="3cqZAp">
                            <node concept="2OqwBi" id="3HJBHAQKl6m" role="3clFbG">
                              <node concept="37vLTw" id="3HJBHAQKl2F" role="2Oq$k0">
                                <ref role="3cqZAo" node="3HJBHAQKkPX" resolve="s" />
                              </node>
                              <node concept="2$Gk$L" id="3HJBHAQKlyH" role="2OqNvi">
                                <ref role="37wK5l" node="2xAA8jfB$je" resolve="hit" />
                                <node concept="2OqwBi" id="3HJBHAQKlOH" role="37wK5m">
                                  <node concept="37vLTw" id="3HJBHAQKlFG" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3HJBHAQKd5P" resolve="di" />
                                  </node>
                                  <node concept="32jkxy" id="3HJBHAQKm6A" role="2OqNvi">
                                    <ref role="3cqZAo" node="76QCTJD2e4Z" resolve="mousePosition" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="3HJBHAQKkPX" role="1bW2Oz">
                          <property role="TrG5h" value="s" />
                          <node concept="2jxLKc" id="3HJBHAQKkPY" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1SfVH9" id="3HJBHAQKgbK" role="37vLTJ">
                    <ref role="3cqZAo" node="3HJBHAQKaXv" resolve="clickedShape" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3HJBHAQKfpR" role="3clFbw">
              <node concept="3fqX7Q" id="3HJBHAQKfx6" role="3uHU7w">
                <node concept="3J2VuX" id="3HJBHAQKfBu" role="3fr31v">
                  <node concept="2OqwBi" id="3HJBHAQKfPn" role="3J2yhu">
                    <node concept="37vLTw" id="3HJBHAQKfJf" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJBHAQKd5P" resolve="di" />
                    </node>
                    <node concept="32jkxy" id="3HJBHAQKg5g" role="2OqNvi">
                      <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3HJBHAQKeAE" role="3uHU7B">
                <node concept="37vLTw" id="3HJBHAQKew2" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJBHAQKd5P" resolve="di" />
                </node>
                <node concept="32jkxy" id="3HJBHAQKeVb" role="2OqNvi">
                  <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="3HJBHAQKe1y" role="9aQIa">
              <node concept="3clFbS" id="3HJBHAQKe1z" role="9aQI4">
                <node concept="3clFbF" id="3HJBHAQKe37" role="3cqZAp">
                  <node concept="E34o$" id="3HJBHAQKekh" role="3clFbG">
                    <node concept="10Nm6u" id="3HJBHAQKetq" role="37vLTx" />
                    <node concept="1SfVH9" id="3HJBHAQKe36" role="37vLTJ">
                      <ref role="3cqZAo" node="3HJBHAQKaXv" resolve="clickedShape" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3tBE6w" id="3HJBHAQKcwG" role="1FPzNG">
      <node concept="9aQIb" id="3HJBHAQKcAd" role="30jUnX">
        <node concept="3clFbS" id="3HJBHAQKcAe" role="9aQI4">
          <node concept="3cpWs8" id="3HJBHAQKdOu" role="3cqZAp">
            <node concept="3cpWsn" id="3HJBHAQKdOx" role="3cpWs9">
              <property role="TrG5h" value="s" />
              <node concept="3LmiP1" id="3HJBHAQKdOt" role="1tU5fm">
                <ref role="2XDbjv" node="skgx$J4Z2r" resolve="DShape" />
              </node>
              <node concept="1SfVH9" id="3HJBHAQKdU6" role="33vP2m">
                <ref role="3cqZAo" node="3HJBHAQKaXv" resolve="clickedShape" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3HJBHAQKmjF" role="3cqZAp">
            <node concept="3clFbS" id="3HJBHAQKmjH" role="3clFbx">
              <node concept="3clFbJ" id="3HJBHAQKmEY" role="3cqZAp">
                <node concept="3clFbS" id="3HJBHAQKmF0" role="3clFbx">
                  <node concept="3clFbF" id="3HJBHAQKt_s" role="3cqZAp">
                    <node concept="E34o$" id="3HJBHAQKukH" role="3clFbG">
                      <node concept="1SfVH9" id="3HJBHAQKt_q" role="37vLTJ">
                        <ref role="3cqZAo" node="3HJBHAQK8gb" resolve="shapes" />
                      </node>
                      <node concept="36be1Y" id="3HJBHAQKykB" role="37vLTx">
                        <node concept="37vLTw" id="3HJBHAQKyoN" role="2Gi6C2">
                          <ref role="3cqZAo" node="3HJBHAQKdOx" resolve="s" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3HJBHAQKyvJ" role="3cqZAp">
                    <node concept="E34o$" id="3HJBHAQKzfk" role="3clFbG">
                      <node concept="3clFbT" id="3HJBHAQKznP" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="2OqwBi" id="3HJBHAQKywM" role="37vLTJ">
                        <node concept="37vLTw" id="3HJBHAQKyvH" role="2Oq$k0">
                          <ref role="3cqZAo" node="3HJBHAQKdOx" resolve="s" />
                        </node>
                        <node concept="32jkxy" id="3HJBHAQKyKO" role="2OqNvi">
                          <ref role="3cqZAo" node="2xAA8jfCGgn" resolve="highlighted" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3HJBHAQKnzg" role="3clFbw">
                  <node concept="1SfVH9" id="3HJBHAQKmGy" role="2Oq$k0">
                    <ref role="3cqZAo" node="3HJBHAQK8gb" resolve="shapes" />
                  </node>
                  <node concept="1v1jN8" id="3HJBHAQKq36" role="2OqNvi" />
                </node>
                <node concept="3eNFk2" id="3HJBHAQKq5a" role="3eNLev">
                  <node concept="3fqX7Q" id="3HJBHAQKq7Q" role="3eO9$A">
                    <node concept="2OqwBi" id="3HJBHAQKr0f" role="3fr31v">
                      <node concept="1SfVH9" id="3HJBHAQKq9r" role="2Oq$k0">
                        <ref role="3cqZAo" node="3HJBHAQK8gb" resolve="shapes" />
                      </node>
                      <node concept="3JPx81" id="3HJBHAQKtwb" role="2OqNvi">
                        <node concept="37vLTw" id="3HJBHAQKtzd" role="25WWJ7">
                          <ref role="3cqZAo" node="3HJBHAQKdOx" resolve="s" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="3HJBHAQKq5c" role="3eOfB_">
                    <node concept="3clFbF" id="3HJBHAQKL5E" role="3cqZAp">
                      <node concept="2OqwBi" id="3HJBHAQKLk1" role="3clFbG">
                        <node concept="1SfVH9" id="3HJBHAQKL5C" role="2Oq$k0">
                          <ref role="3cqZAo" node="3HJBHAQK8gb" resolve="shapes" />
                        </node>
                        <node concept="TSZUe" id="3HJBHAQKNRS" role="2OqNvi">
                          <node concept="37vLTw" id="3HJBHAQKNVA" role="25WWJ7">
                            <ref role="3cqZAo" node="3HJBHAQKdOx" resolve="s" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3HJBHAQKIab" role="3cqZAp">
                      <node concept="2OqwBi" id="3HJBHAQKIpE" role="3clFbG">
                        <node concept="1SfVH9" id="3HJBHAQKIa9" role="2Oq$k0">
                          <ref role="3cqZAo" node="3HJBHAQK94H" resolve="action" />
                        </node>
                        <node concept="liA8E" id="3HJBHAQKJkq" role="2OqNvi">
                          <ref role="37wK5l" to="82uw:~BiConsumer.accept(java.lang.Object,java.lang.Object)" resolve="accept" />
                          <node concept="1SfVH9" id="3HJBHAQKJsJ" role="37wK5m">
                            <ref role="3cqZAo" node="3nsHMGrVVdA" resolve="canvas" />
                          </node>
                          <node concept="1SfVH9" id="3HJBHAQKNYH" role="37wK5m">
                            <ref role="3cqZAo" node="3HJBHAQK8gb" resolve="shapes" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3HJBHAQKzpy" role="3cqZAp">
                      <node concept="E34o$" id="3HJBHAQK$9$" role="3clFbG">
                        <node concept="3clFbT" id="3HJBHAQK$jr" role="37vLTx" />
                        <node concept="2OqwBi" id="3HJBHAQKHJ6" role="37vLTJ">
                          <node concept="1y4W85" id="3HJBHAQKHzv" role="2Oq$k0">
                            <node concept="3cmrfG" id="3HJBHAQKHGC" role="1y58nS">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="1SfVH9" id="3HJBHAQK$lk" role="1y566C">
                              <ref role="3cqZAo" node="3HJBHAQK8gb" resolve="shapes" />
                            </node>
                          </node>
                          <node concept="32jkxy" id="3HJBHAQKI4y" role="2OqNvi">
                            <ref role="3cqZAo" node="2xAA8jfCGgn" resolve="highlighted" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3HJBHAQKmph" role="3clFbw">
              <node concept="10Nm6u" id="3HJBHAQKmx6" role="3uHU7w" />
              <node concept="37vLTw" id="3HJBHAQKmm9" role="3uHU7B">
                <ref role="3cqZAo" node="3HJBHAQKdOx" resolve="s" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7wc8RN4MMv1">
    <property role="TrG5h" value="D2D" />
    <property role="3GE5qa" value="java" />
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
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                    <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
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
                  <node concept="3cpWs3" id="7wc8RN4MTiM" role="37wK5m">
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
                    <ref role="3VsUkX" node="7wc8RN4MMv1" resolve="D2D" />
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
  <node concept="Qs71p" id="5QJfFCjNkzU">
    <property role="3GE5qa" value="gui" />
    <property role="TrG5h" value="SplitOrientation" />
    <node concept="QsSxf" id="5QJfFCjNkEm" role="Qtgdg">
      <property role="TrG5h" value="vertical" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="5QJfFCjNkAq" role="Qtgdg">
      <property role="TrG5h" value="horizontal" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" />
    </node>
    <node concept="3Tm1VV" id="5QJfFCjNkzV" role="1B3o_S" />
  </node>
</model>

