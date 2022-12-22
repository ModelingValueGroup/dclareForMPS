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
        <property id="4435611260595733753" name="composite" index="3K1B09" />
      </concept>
      <concept id="2483495814491113449" name="DclareMPS.structure.RuleSet" flags="ng" index="3tBE6x">
        <reference id="5858913584106722103" name="aspect" index="2RaPBF" />
        <child id="7599581349097315861" name="members" index="1FPzNG" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
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
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
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
    <node concept="1OA0iY" id="3ySjgkDG3vn" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vo" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vp" role="1OA0iw" />
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
    <node concept="1OA0iY" id="3ySjgkDG3vJ" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vK" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vL" role="1OA0iw" />
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
        <property role="TrG5h" value="listener" />
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
      <node concept="3uibUv" id="76QCTJD2mHq" role="1tU5fm">
        <ref role="3uigEE" to="zrbp:~Set" resolve="Set" />
        <node concept="3uibUv" id="76QCTJD2mIJ" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="3K4zz7" id="76QCTJD2tVW" role="33vP2m">
        <node concept="2YIFZM" id="76QCTJD2usa" role="3K4E3e">
          <ref role="37wK5l" to="zrbp:~Set.of(java.lang.Object...)" resolve="of" />
          <ref role="1Pybhc" to="zrbp:~Set" resolve="Set" />
          <node concept="3uibUv" id="76QCTJD2zYf" role="3PaCim">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
        <node concept="1SfVH9" id="76QCTJD2uEd" role="3K4GZi">
          <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
        </node>
        <node concept="3clFbC" id="76QCTJD2sXc" role="3K4Cdx">
          <node concept="10Nm6u" id="76QCTJD2tUj" role="3uHU7w" />
          <node concept="1SfVH9" id="76QCTJD2s1k" role="3uHU7B">
            <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
          </node>
        </node>
      </node>
    </node>
    <node concept="32q3_s" id="76QCTJD2$Tv" role="1FPzNG">
      <property role="TrG5h" value="isCtrlDownL" />
      <node concept="10P_77" id="76QCTJD2_2e" role="1tU5fm" />
      <node concept="2OqwBi" id="76QCTJD2EgX" role="33vP2m">
        <node concept="1SfVH9" id="76QCTJD2D7t" role="2Oq$k0">
          <ref role="3cqZAo" node="76QCTJD2lWZ" resolve="pressedKeys" />
        </node>
        <node concept="liA8E" id="76QCTJD2Kol" role="2OqNvi">
          <ref role="37wK5l" to="zrbp:~ContainingCollection.contains(java.lang.Object)" resolve="contains" />
          <node concept="10M0yZ" id="76QCTJD2LhU" role="37wK5m">
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
        <node concept="liA8E" id="76QCTJD2Nmb" role="2OqNvi">
          <ref role="37wK5l" to="zrbp:~ContainingCollection.contains(java.lang.Object)" resolve="contains" />
          <node concept="10M0yZ" id="76QCTJD2PrL" role="37wK5m">
            <ref role="3cqZAo" to="hyam:~KeyEvent.VK_ALT" resolve="VK_ALT" />
            <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

