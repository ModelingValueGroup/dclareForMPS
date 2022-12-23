<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3ec44d77-eb4f-4600-add0-5e671af45a7b(DclareGui.rules)">
  <persistence version="9" />
  <languages>
    <use id="c32b788d-8e4b-4023-97f5-3e90d04ed77b" name="DclareMPS" version="5" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="zrbp" ref="e584ff77-930e-4637-8df0-b4c8d3b6de91/java:org.modelingvalue.collections(DclareRuntime/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="c32b788d-8e4b-4023-97f5-3e90d04ed77b" name="DclareMPS">
      <concept id="4010647915821593701" name="DclareMPS.structure.MethodCall" flags="ng" index="2275Hy" />
      <concept id="4157899317040512276" name="DclareMPS.structure.NativeFieldReference" flags="ng" index="5IyTM" />
      <concept id="4122011871452503133" name="DclareMPS.structure.Method" flags="ig" index="kUGYC">
        <property id="6993379498019360941" name="constant" index="2RZe$O" />
      </concept>
      <concept id="7503535305242222763" name="DclareMPS.structure.MethodCallOperation" flags="ng" index="2$Gk$L" />
      <concept id="3943890974580131286" name="DclareMPS.structure.Equation" flags="ng" index="E34o$" />
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
      <concept id="2483495814491113448" name="DclareMPS.structure.Rule" flags="ng" index="3tBE6w">
        <child id="7745179321625723507" name="statement" index="30jUnX" />
      </concept>
      <concept id="2483495814491113449" name="DclareMPS.structure.RuleSet" flags="ng" index="3tBE6x">
        <reference id="5858913584106722103" name="aspect" index="2RaPBF" />
        <child id="7599581349097315861" name="members" index="1FPzNG" />
      </concept>
      <concept id="2911181905331434060" name="DclareMPS.structure.StructAncestorOperation" flags="ng" index="3BHqF8">
        <reference id="2911181905331504722" name="class" index="3BGHVm" />
      </concept>
      <concept id="7599581349097323169" name="DclareMPS.structure.PlaceholderRuleSetMember" flags="ng" index="1FPxxo" />
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
      <concept id="6584359627792080980" name="DclareMPS.structure.NativePost" flags="ng" index="1OA3xA" />
      <concept id="6584359627792080960" name="DclareMPS.structure.NativeFieldOperation" flags="ng" index="1OA3xM" />
      <concept id="5191463817731928991" name="DclareMPS.structure.AttributeReference" flags="ng" index="1SfVH9" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
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
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
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
    <node concept="1FPxxo" id="2xAA8jfByhc" role="1FPzNG" />
    <node concept="1OA0iY" id="3ySjgkDG3vb" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vc" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vd" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4C">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z3o" resolve="DSplitPane" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3vh" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vi" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vj" role="1OA0iw" />
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
      <node concept="1SfVH9" id="2xAA8jfCUT8" role="33vP2m">
        <ref role="3cqZAo" node="2xAA8jfCHII" resolve="lineColor" />
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
    <node concept="1OA0iY" id="3ySjgkDG3vt" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vu" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vv" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4F">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z3d" resolve="DPanel" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3vz" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3v$" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3v_" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4G">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z3O" resolve="DLine" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3vD" role="1FPzNG">
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
                      <node concept="3clFbF" id="2xAA8jfoSsG" role="3cqZAp">
                        <node concept="2275Hy" id="2xAA8jfoSsF" role="3clFbG">
                          <ref role="37wK5l" node="2xAA8jfoS7Y" resolve="close" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2xAA8jfoRIM" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" />
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
    <node concept="1OA0iY" id="3ySjgkDG3vP" role="1FPzNG">
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
              <property role="$nhwW" value="0.0" />
            </node>
          </node>
          <node concept="2Pygp_" id="46vl3mDwwF5" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
            <node concept="3b6qkQ" id="46vl3mDwwJ5" role="2PygpA">
              <property role="$nhwW" value="0.0" />
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
              <property role="$nhwW" value="0.0" />
            </node>
          </node>
          <node concept="2Pygp_" id="46vl3mDJweP" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGY55" resolve="hight" />
            <node concept="3b6qkQ" id="46vl3mDJweQ" role="2PygpA">
              <property role="$nhwW" value="0.0" />
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
                        <ref role="37wK5l" node="7ESv7kyhKY9" resolve="hight" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2xAA8jfp6Ta" role="3clFbw">
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
                            <ref role="37wK5l" node="7ESv7kyhKY9" resolve="hight" />
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
                            <ref role="37wK5l" node="7ESv7kyhKY9" resolve="hight" />
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
                        <node concept="37vLTI" id="46vl3mDUY4Q" role="3clFbG">
                          <node concept="3KEV6E" id="46vl3mDUYes" role="37vLTx">
                            <ref role="2UJ2yc" node="4NMtPTvGXY5" resolve="DDimension" />
                            <node concept="2Pygp_" id="46vl3mDUYet" role="2Pygpa">
                              <ref role="2Pygpw" node="4NMtPTvGXY6" resolve="width" />
                              <node concept="2OqwBi" id="46vl3mDV1A5" role="2PygpA">
                                <node concept="37vLTw" id="46vl3mDV8kp" role="2Oq$k0">
                                  <ref role="3cqZAo" node="46vl3mDUZ48" resolve="dim" />
                                </node>
                                <node concept="2OwXpG" id="46vl3mDV9G1" role="2OqNvi">
                                  <ref role="2Oxat5" to="z60i:~Dimension.width" resolve="width" />
                                </node>
                              </node>
                            </node>
                            <node concept="2Pygp_" id="46vl3mDUYeu" role="2Pygpa">
                              <ref role="2Pygpw" node="4NMtPTvGY55" resolve="hight" />
                              <node concept="2OqwBi" id="46vl3mDV3Fc" role="2PygpA">
                                <node concept="37vLTw" id="46vl3mDV36f" role="2Oq$k0">
                                  <ref role="3cqZAo" node="46vl3mDUZ48" resolve="dim" />
                                </node>
                                <node concept="2OwXpG" id="46vl3mDV4Sc" role="2OqNvi">
                                  <ref role="2Oxat5" to="z60i:~Dimension.height" resolve="height" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1SfVH9" id="46vl3mDUXRK" role="37vLTJ">
                            <ref role="3cqZAo" node="46vl3mDwqLd" resolve="size" />
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
                        <node concept="37vLTI" id="46vl3mDVcfJ" role="3clFbG">
                          <node concept="3KEV6E" id="46vl3mDVc_U" role="37vLTx">
                            <ref role="2UJ2yc" node="4NMtPTvGW7r" resolve="DPoint" />
                            <node concept="2Pygp_" id="46vl3mDVc_V" role="2Pygpa">
                              <ref role="2Pygpw" node="4NMtPTvGW7s" resolve="x" />
                              <node concept="2OqwBi" id="46vl3mDVdf6" role="2PygpA">
                                <node concept="37vLTw" id="46vl3mDVcMw" role="2Oq$k0">
                                  <ref role="3cqZAo" node="46vl3mDV9Nt" resolve="loc" />
                                </node>
                                <node concept="2OwXpG" id="46vl3mDVeBj" role="2OqNvi">
                                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                </node>
                              </node>
                            </node>
                            <node concept="2Pygp_" id="46vl3mDVc_W" role="2Pygpa">
                              <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
                              <node concept="2OqwBi" id="46vl3mDVfbC" role="2PygpA">
                                <node concept="37vLTw" id="46vl3mDVeW$" role="2Oq$k0">
                                  <ref role="3cqZAo" node="46vl3mDV9Nt" resolve="loc" />
                                </node>
                                <node concept="2OwXpG" id="46vl3mDVfPr" role="2OqNvi">
                                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1SfVH9" id="46vl3mDVbZs" role="37vLTJ">
                            <ref role="3cqZAo" node="4NMtPTvGUBA" resolve="location" />
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
              <ref role="3cqZAo" node="4NMtPTvGXXu" resolve="listener" />
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
                <ref role="3cqZAo" node="4NMtPTvGXXu" resolve="listener" />
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
                <ref role="3cqZAo" node="4NMtPTvGXXu" resolve="listener" />
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
              <ref role="3cqZAo" node="4NMtPTvGXXu" resolve="listener" />
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
      <node concept="37vLTG" id="76QCTJD3BHF" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="76QCTJD3BKb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="76QCTJD3BIU" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="76QCTJD3BLc" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="76QCTJD3B7F" role="1B3o_S" />
      <node concept="3clFbS" id="76QCTJD3B7G" role="3clF47" />
      <node concept="3cqZAl" id="76QCTJD3BG1" role="3clF45" />
    </node>
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
                    <node concept="3clFbS" id="76QCTJD3zbi" role="3clF47" />
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
                        <node concept="9aQIb" id="76QCTJD3MMd" role="9aQIa">
                          <node concept="3clFbS" id="76QCTJD3MMe" role="9aQI4">
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
                            <node concept="3clFbF" id="76QCTJD3Rs4" role="3cqZAp">
                              <node concept="37vLTI" id="76QCTJD3TeQ" role="3clFbG">
                                <node concept="3clFbC" id="76QCTJD3WFP" role="37vLTx">
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
                                <node concept="2OqwBi" id="76QCTJD3R$7" role="37vLTJ">
                                  <node concept="1SfVH9" id="76QCTJD3Rs2" role="2Oq$k0">
                                    <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                  </node>
                                  <node concept="32jkxy" id="76QCTJD3Sr1" role="2OqNvi">
                                    <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
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
                          <node concept="3clFbF" id="76QCTJD3Mtg" role="3cqZAp">
                            <node concept="2275Hy" id="76QCTJD3Mth" role="3clFbG">
                              <ref role="37wK5l" node="76QCTJD3B7E" resolve="popup" />
                              <node concept="2OqwBi" id="76QCTJD3Mti" role="37wK5m">
                                <node concept="37vLTw" id="76QCTJD3Mtj" role="2Oq$k0">
                                  <ref role="3cqZAo" node="76QCTJD3zb3" resolve="e" />
                                </node>
                                <node concept="liA8E" id="76QCTJD3Mtk" role="2OqNvi">
                                  <ref role="37wK5l" to="hyam:~MouseEvent.getX()" resolve="getX" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="76QCTJD3Mtl" role="37wK5m">
                                <node concept="37vLTw" id="76QCTJD3Mtm" role="2Oq$k0">
                                  <ref role="3cqZAo" node="76QCTJD3zb3" resolve="e" />
                                </node>
                                <node concept="liA8E" id="76QCTJD3Mtn" role="2OqNvi">
                                  <ref role="37wK5l" to="hyam:~MouseEvent.getY()" resolve="getY" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="76QCTJD3N4P" role="9aQIa">
                          <node concept="3clFbS" id="76QCTJD3N4Q" role="9aQI4">
                            <node concept="3clFbF" id="76QCTJD3YWO" role="3cqZAp">
                              <node concept="2OqwBi" id="76QCTJD3YWV" role="3clFbG">
                                <node concept="1SfVH9" id="76QCTJD3YWW" role="2Oq$k0">
                                  <ref role="3cqZAo" node="76QCTJD2RMW" resolve="deviceInput" />
                                </node>
                                <node concept="32jkxy" id="76QCTJD3YWX" role="2OqNvi">
                                  <ref role="3cqZAo" node="76QCTJD2lco" resolve="isLeftMouseDown" />
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
      </node>
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4L">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z4h" resolve="DCircle" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3w7" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3w8" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3w9" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4M">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z32" resolve="DCanvas" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="32q3_s" id="7nNrlO1Gveo" role="1FPzNG">
      <property role="TrG5h" value="shapes" />
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
    <node concept="1OA0iY" id="3ySjgkDG3wd" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3we" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3wf" role="1OA0iw" />
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
      <property role="TrG5h" value="hight" />
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
                <ref role="3cqZAo" node="4NMtPTvGY55" resolve="hight" />
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
      <property role="TrG5h" value="hight" />
      <property role="2RZe$O" value="true" />
      <node concept="3Tm1VV" id="7ESv7kyhKYa" role="1B3o_S" />
      <node concept="3clFbS" id="7ESv7kyhKYb" role="3clF47">
        <node concept="3clFbF" id="7ESv7kyhKYc" role="3cqZAp">
          <node concept="10QFUN" id="7ESv7kyhKYd" role="3clFbG">
            <node concept="10Oyi0" id="7ESv7kyhKYe" role="10QFUM" />
            <node concept="10QFUN" id="7ESv7kyhKYf" role="10QFUP">
              <node concept="10P55v" id="7ESv7kyhKYg" role="10QFUM" />
              <node concept="1SfVH9" id="7ESv7kyhLvM" role="10QFUP">
                <ref role="3cqZAo" node="4NMtPTvGY55" resolve="hight" />
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
            <node concept="3cmrfG" id="76QCTJD2l3j" role="2PygpA">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="2Pygp_" id="76QCTJD2l1X" role="2Pygpa">
            <ref role="2Pygpw" node="4NMtPTvGXWc" resolve="y" />
            <node concept="3cmrfG" id="76QCTJD2laR" role="2PygpA">
              <property role="3cmrfH" value="0" />
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
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" />
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
                      <node concept="3clFbF" id="2xAA8jfquz7" role="3cqZAp">
                        <node concept="2275Hy" id="2xAA8jfquz6" role="3clFbG">
                          <ref role="37wK5l" node="2xAA8jfquh$" resolve="action" />
                          <node concept="37vLTw" id="2xAA8jfqv9Q" role="37wK5m">
                            <ref role="3cqZAo" node="2xAA8jfql9l" resolve="e" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2xAA8jfql9p" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" />
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
</model>

