<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:484d68ee-91ab-4199-84e9-f43210a9918b(DclareMPSPlugin.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="2" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="11" />
    <use id="69b8a993-9b87-4d96-bf0c-3559f4bb0c63" name="jetbrains.mps.lang.slanguage" version="0" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="3ecd7c84-cde3-45de-886c-135ecc69b742" name="jetbrains.mps.lang.refactoring" version="0" />
  </languages>
  <imports>
    <import index="t4tl" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.dclare.mps(DclareMPSRuntime/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="jzwl" ref="r:76834813-368a-40cb-b154-43230d04bc7e(DclareMPS.plugin)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="3783" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.kernel.language(MPS.Core/)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="tpf8" ref="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" />
    <import index="iwwu" ref="r:2c4d9270-b6d6-44af-aecd-e01a223680db(jetbrains.mps.kernel.model)" />
    <import index="w88" ref="r:90fa2771-55a5-4174-b12a-f5413c5a876c(jetbrains.mps.ide.devkit.actions)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="mbwu" ref="r:484d68ee-91ab-4199-84e9-f43210a9918b(DclareMPSPlugin.plugin)" />
    <import index="8a6h" ref="r:66be19c1-5b29-480c-8d33-33b23b1579f6(DclareMPS.refactorings)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="9oh" ref="r:de82dfab-9448-49ba-813e-2b0579f7fb15(jetbrains.mps.ide.platform.actions)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="25x5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.text(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="2450897840534683979" name="jetbrains.mps.lang.plugin.structure.EditorTabReference" flags="nn" index="2vPdvi">
        <reference id="2450897840534683980" name="editorTab" index="2vPdvl" />
      </concept>
      <concept id="2450897840534683975" name="jetbrains.mps.lang.plugin.structure.Order" flags="ng" index="2vPdvu">
        <child id="2450897840534683977" name="tab" index="2vPdvg" />
      </concept>
      <concept id="1213888797251" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_Project" flags="nn" index="2xqhHp" />
      <concept id="3743831881070657672" name="jetbrains.mps.lang.plugin.structure.BaseNodeBlock" flags="in" index="2E2Kfa" />
      <concept id="3743831881070611759" name="jetbrains.mps.lang.plugin.structure.EditorTab" flags="ng" index="2E2WTH">
        <property id="3743831881070611767" name="shortcutChar" index="2E2WTP" />
        <reference id="3743831881070611760" name="baseNodeConcept" index="2E2WTM" />
        <child id="3743831881070657666" name="isApplicableBlock" index="2E2Kf0" />
        <child id="3743831881070611762" name="baseNodeBlock" index="2E2WTK" />
        <child id="3743831881070613126" name="order" index="2E2X74" />
        <child id="3743831881070612960" name="nodesBlock" index="2E2Xay" />
        <child id="1640281869714699888" name="createTabBlock" index="1D6cnr" />
      </concept>
      <concept id="3743831881070613135" name="jetbrains.mps.lang.plugin.structure.IsApplicableTabBlock" flags="in" index="2E2X7d" />
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1210179134063" name="jetbrains.mps.lang.plugin.structure.PreferencesComponentDeclaration" flags="ng" index="34j2dQ">
        <child id="1210179829398" name="persistenPropertyDeclaration" index="34lFYf" />
        <child id="1210676907584" name="afterReadBlock" index="3xXSXp" />
        <child id="1210684426855" name="preferencePage" index="3yq$HY" />
      </concept>
      <concept id="1210179190070" name="jetbrains.mps.lang.plugin.structure.PersistentPropertyDeclaration" flags="ng" index="34jfKJ" />
      <concept id="1210180874794" name="jetbrains.mps.lang.plugin.structure.PersistentPropertyReference" flags="nn" index="34pFcN" />
      <concept id="1203851983563" name="jetbrains.mps.lang.plugin.structure.GetNodeBlock" flags="in" index="1baRJj" />
      <concept id="1203853034639" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_node" flags="nn" index="1beSmn" />
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1210676879526" name="jetbrains.mps.lang.plugin.structure.OnAfterReadBlock" flags="in" index="3xXM6Z" />
      <concept id="1210684385183" name="jetbrains.mps.lang.plugin.structure.PreferencePage" flags="ng" index="3yqqq6">
        <property id="1557260317236259345" name="helpTopic" index="3EcmCg" />
        <child id="1210686845551" name="component" index="3yzNdQ" />
        <child id="1210686936988" name="resetBlock" index="3y$9q5" />
        <child id="1210686956582" name="commitBlock" index="3y$ekZ" />
        <child id="1210763647050" name="isModifiedBlock" index="3B8L_j" />
      </concept>
      <concept id="1210686882550" name="jetbrains.mps.lang.plugin.structure.PreferencePageResetBlock" flags="in" index="3yzWfJ" />
      <concept id="1210686969356" name="jetbrains.mps.lang.plugin.structure.PreferencePageCommitBlock" flags="in" index="3y$hsl" />
      <concept id="1210690798207" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_PreferencePage_component" flags="nn" index="3yMSdA" />
      <concept id="1210763550007" name="jetbrains.mps.lang.plugin.structure.PreferencePageIsModifiedBlock" flags="in" index="3B8pKI" />
      <concept id="1640281869714699879" name="jetbrains.mps.lang.plugin.structure.CreateTabBlock" flags="ng" index="1D6cnc">
        <property id="1640281869714699886" name="commandOnCreate" index="1D6cn5" />
        <child id="7459370737647652579" name="conceptsBlock" index="1YUSN9" />
        <child id="7459370737647652611" name="createBlock" index="1YUSOD" />
      </concept>
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
      <concept id="7459370737647652607" name="jetbrains.mps.lang.plugin.structure.ConceptsBlock" flags="in" index="1YUSNl" />
      <concept id="7459370737647652609" name="jetbrains.mps.lang.plugin.structure.CreateBlock" flags="in" index="1YUSOF" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
        <child id="481983775135178838" name="fieldDeclaration" index="2uRRBA" />
      </concept>
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
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
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="3ecd7c84-cde3-45de-886c-135ecc69b742" name="jetbrains.mps.lang.refactoring">
      <concept id="6598645150040035709" name="jetbrains.mps.lang.refactoring.structure.IsRefactoringApplicable" flags="nn" index="3trCAK">
        <reference id="6598645150040035710" name="refactoring" index="3trCAN" />
        <child id="6598645150040036518" name="target" index="3trCLF" />
      </concept>
      <concept id="2298239814950983788" name="jetbrains.mps.lang.refactoring.structure.ExecuteRefactoringStatement" flags="nn" index="1Xdei3">
        <reference id="2298239814950983795" name="refactoring" index="1Xdeis" />
        <child id="2298239814950983794" name="project" index="1Xdeit" />
        <child id="2298239814950983792" name="target" index="1Xdeiv" />
      </concept>
    </language>
    <language id="69b8a993-9b87-4d96-bf0c-3559f4bb0c63" name="jetbrains.mps.lang.slanguage">
      <concept id="6171083915388330090" name="jetbrains.mps.lang.slanguage.structure.AspectModelRefExpression" flags="ng" index="1qvjxa">
        <reference id="6171083915388597767" name="aspect" index="1quiSB" />
        <child id="6171083915388330091" name="lang" index="1qvjxb" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp">
        <reference id="1218736638915" name="classifier" index="32nkFo" />
      </concept>
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="7776141288922801652" name="jetbrains.mps.lang.actions.structure.NF_Concept_NewInstance" flags="nn" index="q_SaT" />
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
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
    </language>
  </registry>
  <node concept="2DaZZR" id="_0lD0iRHOm" />
  <node concept="2uRRBy" id="2og$lMxAO5u">
    <property role="TrG5h" value="DclarePlugin" />
    <node concept="2BZ0e9" id="5LbVSrDCROd" role="2uRRBA">
      <property role="TrG5h" value="engine" />
      <node concept="3Tm6S6" id="5LbVSrDCROe" role="1B3o_S" />
      <node concept="3uibUv" id="MKle5XFXDg" role="1tU5fm">
        <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
      </node>
    </node>
    <node concept="2uRRBT" id="2og$lMxAO5v" role="2uRRB$">
      <node concept="3clFbS" id="2og$lMxAO5w" role="2VODD2">
        <node concept="3clFbF" id="5LbVSrDCTN$" role="3cqZAp">
          <node concept="37vLTI" id="5LbVSrDCUM7" role="3clFbG">
            <node concept="2OqwBi" id="5LbVSrDCU8H" role="37vLTJ">
              <node concept="2WthIp" id="5LbVSrDCTNy" role="2Oq$k0" />
              <node concept="2BZ7hE" id="5LbVSrDCUog" role="2OqNvi">
                <ref role="2WH_rO" node="5LbVSrDCROd" resolve="engine" />
              </node>
            </node>
            <node concept="2ShNRf" id="5LbVSrDCoTV" role="37vLTx">
              <node concept="1pGfFk" id="5LbVSrDCoTW" role="2ShVmc">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.&lt;init&gt;(org.jetbrains.mps.openapi.project.Project)" resolve="DclareForMPSEngine" />
                <node concept="1KvdUw" id="5LbVSrDCoTX" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4o9njCw5o55" role="3cqZAp">
          <node concept="2OqwBi" id="4o9njCw5on8" role="3clFbG">
            <node concept="10M0yZ" id="4o9njCw5odc" role="2Oq$k0">
              <ref role="3cqZAo" node="4o9njCw5asw" resolve="PLUGINS" />
              <ref role="1PxDUh" node="4o9njCw56H3" resolve="DclarePluginUtil" />
            </node>
            <node concept="liA8E" id="4o9njCw5o$Y" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="2OqwBi" id="4o9njCw5Dy5" role="37wK5m">
                <node concept="1KvdUw" id="4o9njCw5oOL" role="2Oq$k0" />
                <node concept="liA8E" id="4o9njCw5EnJ" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~MPSProject.getProject():com.intellij.openapi.project.Project" resolve="getProject" />
                </node>
              </node>
              <node concept="2OqwBi" id="5LbVSrDCT1V" role="37wK5m">
                <node concept="2WthIp" id="5LbVSrDCT1Y" role="2Oq$k0" />
                <node concept="2BZ7hE" id="5LbVSrDCT20" role="2OqNvi">
                  <ref role="2WH_rO" node="5LbVSrDCROd" resolve="engine" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="2og$lMxAO5P" role="2uRRB_">
      <node concept="3clFbS" id="2og$lMxAO5Q" role="2VODD2">
        <node concept="3clFbF" id="5LbVSrDCVBt" role="3cqZAp">
          <node concept="2OqwBi" id="5LbVSrDCVYU" role="3clFbG">
            <node concept="2OqwBi" id="5LbVSrDCVBn" role="2Oq$k0">
              <node concept="2WthIp" id="5LbVSrDCVBq" role="2Oq$k0" />
              <node concept="2BZ7hE" id="5LbVSrDCVBs" role="2OqNvi">
                <ref role="2WH_rO" node="5LbVSrDCROd" resolve="engine" />
              </node>
            </node>
            <node concept="liA8E" id="5LbVSrDCWoY" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.stop():void" resolve="stop" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5LbVSrDCOSU" role="3cqZAp">
          <node concept="2OqwBi" id="5LbVSrDCo1$" role="3clFbG">
            <node concept="10M0yZ" id="5LbVSrDCo1_" role="2Oq$k0">
              <ref role="1PxDUh" node="4o9njCw56H3" resolve="DclarePluginUtil" />
              <ref role="3cqZAo" node="4o9njCw5asw" resolve="PLUGINS" />
            </node>
            <node concept="liA8E" id="5LbVSrDCo1A" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object):java.lang.Object" resolve="remove" />
              <node concept="2OqwBi" id="5LbVSrDCo1B" role="37wK5m">
                <node concept="1KvdUw" id="5LbVSrDCo1C" role="2Oq$k0" />
                <node concept="liA8E" id="5LbVSrDCo1D" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~MPSProject.getProject():com.intellij.openapi.project.Project" resolve="getProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="34j2dQ" id="4Y8BM43M7ZV">
    <property role="TrG5h" value="DclarePreferences" />
    <node concept="34jfKJ" id="4Y8BM43MiH6" role="34lFYf">
      <property role="TrG5h" value="trace" />
      <node concept="10P_77" id="4Y8BM43MiKw" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="5LbVSrDAu_C" role="34lFYf">
      <property role="TrG5h" value="on" />
      <node concept="10P_77" id="5LbVSrDAu_D" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="2unJcb5530d" role="34lFYf">
      <property role="TrG5h" value="keepState" />
      <node concept="10P_77" id="2unJcb555PC" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="GLgNzrkAU0" role="34lFYf">
      <property role="TrG5h" value="maxNrOfChanges" />
      <node concept="10Oyi0" id="GLgNzrkBIh" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="GLgNzrkGxI" role="34lFYf">
      <property role="TrG5h" value="maxTotalNrOfChanges" />
      <node concept="10Oyi0" id="GLgNzrkHla" role="1tU5fm" />
    </node>
    <node concept="3yqqq6" id="4Y8BM43M7ZW" role="3yq$HY">
      <property role="TrG5h" value="Dclare" />
      <property role="3EcmCg" value="switch tracing on and off" />
      <node concept="3B8pKI" id="4Y8BM43M7ZY" role="3B8L_j">
        <node concept="3clFbS" id="4Y8BM43M7ZZ" role="2VODD2">
          <node concept="3cpWs8" id="5LbVSrDBAzx" role="3cqZAp">
            <node concept="3cpWsn" id="5LbVSrDBAzy" role="3cpWs9">
              <property role="TrG5h" value="onBox" />
              <node concept="3uibUv" id="5LbVSrDBAzz" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="10QFUN" id="5LbVSrDBAz$" role="33vP2m">
                <node concept="3uibUv" id="5LbVSrDBAz_" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
                </node>
                <node concept="2OqwBi" id="5LbVSrDBAzA" role="10QFUP">
                  <node concept="3yMSdA" id="5LbVSrDBAzB" role="2Oq$k0" />
                  <node concept="liA8E" id="5LbVSrDBAzC" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int):java.awt.Component" resolve="getComponent" />
                    <node concept="3cmrfG" id="GLgNzrs0FQ" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5LbVSrDBBMX" role="3cqZAp">
            <node concept="3cpWsn" id="5LbVSrDBBMY" role="3cpWs9">
              <property role="TrG5h" value="traceBox" />
              <node concept="3uibUv" id="5LbVSrDBBMZ" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="10QFUN" id="5LbVSrDBBN0" role="33vP2m">
                <node concept="3uibUv" id="5LbVSrDBBN1" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
                </node>
                <node concept="2OqwBi" id="5LbVSrDBBN2" role="10QFUP">
                  <node concept="3yMSdA" id="5LbVSrDBBN3" role="2Oq$k0" />
                  <node concept="liA8E" id="5LbVSrDBBN4" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int):java.awt.Component" resolve="getComponent" />
                    <node concept="3cmrfG" id="GLgNzrs2Ci" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7S$pNDL4tS9" role="3cqZAp">
            <node concept="3cpWsn" id="7S$pNDL4tSa" role="3cpWs9">
              <property role="TrG5h" value="keepStateBox" />
              <node concept="3uibUv" id="7S$pNDL4tSb" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="10QFUN" id="7S$pNDL4tSc" role="33vP2m">
                <node concept="3uibUv" id="7S$pNDL4tSd" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
                </node>
                <node concept="2OqwBi" id="7S$pNDL4tSe" role="10QFUP">
                  <node concept="3yMSdA" id="7S$pNDL4tSf" role="2Oq$k0" />
                  <node concept="liA8E" id="7S$pNDL4tSg" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int):java.awt.Component" resolve="getComponent" />
                    <node concept="3cmrfG" id="7S$pNDL4tSh" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="GLgNzrm$NI" role="3cqZAp">
            <node concept="3cpWsn" id="GLgNzrm$NJ" role="3cpWs9">
              <property role="TrG5h" value="max" />
              <node concept="3uibUv" id="GLgNzrmMyb" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="GLgNzrm$NL" role="33vP2m">
                <node concept="3uibUv" id="GLgNzrmLwW" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2OqwBi" id="GLgNzrm$NN" role="10QFUP">
                  <node concept="3yMSdA" id="GLgNzrm$NO" role="2Oq$k0" />
                  <node concept="liA8E" id="GLgNzrm$NP" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int):java.awt.Component" resolve="getComponent" />
                    <node concept="3cmrfG" id="7S$pNDL4wnr" role="37wK5m">
                      <property role="3cmrfH" value="7" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="GLgNzrmAOU" role="3cqZAp">
            <node concept="3cpWsn" id="GLgNzrmAOV" role="3cpWs9">
              <property role="TrG5h" value="maxTotal" />
              <node concept="3uibUv" id="GLgNzrmN$C" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="GLgNzrmAOX" role="33vP2m">
                <node concept="3uibUv" id="GLgNzrmKvY" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2OqwBi" id="GLgNzrmAOZ" role="10QFUP">
                  <node concept="3yMSdA" id="GLgNzrmAP0" role="2Oq$k0" />
                  <node concept="liA8E" id="GLgNzrmAP1" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int):java.awt.Component" resolve="getComponent" />
                    <node concept="3cmrfG" id="7S$pNDL4x$d" role="37wK5m">
                      <property role="3cmrfH" value="9" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4Y8BM43MyUx" role="3cqZAp">
            <node concept="22lmx$" id="GLgNzrngWV" role="3clFbG">
              <node concept="17QLQc" id="GLgNzrntsj" role="3uHU7w">
                <node concept="2OqwBi" id="GLgNzrnzLZ" role="3uHU7w">
                  <node concept="2WthIp" id="GLgNzrnyAX" role="2Oq$k0" />
                  <node concept="34pFcN" id="GLgNzrn$SX" role="2OqNvi">
                    <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                  </node>
                </node>
                <node concept="0kSF2" id="GLgNzrnpqR" role="3uHU7B">
                  <node concept="3uibUv" id="GLgNzrnqCZ" role="0kSFW">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                  <node concept="2OqwBi" id="GLgNzrnlg9" role="0kSFX">
                    <node concept="37vLTw" id="GLgNzrnjDu" role="2Oq$k0">
                      <ref role="3cqZAo" node="GLgNzrmAOV" resolve="maxTotal" />
                    </node>
                    <node concept="liA8E" id="GLgNzrnniB" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue():java.lang.Object" resolve="getValue" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="7S$pNDL4yYD" role="3uHU7B">
                <node concept="17QLQc" id="GLgNzrn04S" role="3uHU7w">
                  <node concept="0kSF2" id="GLgNzrmW8v" role="3uHU7B">
                    <node concept="3uibUv" id="GLgNzrmXl5" role="0kSFW">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                    <node concept="2OqwBi" id="GLgNzrmS14" role="0kSFX">
                      <node concept="37vLTw" id="GLgNzrmQtq" role="2Oq$k0">
                        <ref role="3cqZAo" node="GLgNzrm$NJ" resolve="max" />
                      </node>
                      <node concept="liA8E" id="GLgNzrmU20" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue():java.lang.Object" resolve="getValue" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="GLgNzrn2qu" role="3uHU7w">
                    <node concept="2WthIp" id="GLgNzrn1gY" role="2Oq$k0" />
                    <node concept="34pFcN" id="GLgNzrn3vU" role="2OqNvi">
                      <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                    </node>
                  </node>
                </node>
                <node concept="22lmx$" id="GLgNzrmvHz" role="3uHU7B">
                  <node concept="22lmx$" id="5LbVSrDBNOJ" role="3uHU7B">
                    <node concept="3y3z36" id="4Y8BM43MPjR" role="3uHU7B">
                      <node concept="2OqwBi" id="4Y8BM43MMMq" role="3uHU7B">
                        <node concept="37vLTw" id="5LbVSrDBHwP" role="2Oq$k0">
                          <ref role="3cqZAo" node="5LbVSrDBAzy" resolve="onBox" />
                        </node>
                        <node concept="liA8E" id="4Y8BM43MOed" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected():boolean" resolve="isSelected" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4Y8BM43MP47" role="3uHU7w">
                        <node concept="2WthIp" id="4Y8BM43MP4a" role="2Oq$k0" />
                        <node concept="34pFcN" id="5LbVSrDBIXk" role="2OqNvi">
                          <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="on" />
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="5LbVSrDBU94" role="3uHU7w">
                      <node concept="2OqwBi" id="5LbVSrDBPZO" role="3uHU7B">
                        <node concept="37vLTw" id="5LbVSrDBOIe" role="2Oq$k0">
                          <ref role="3cqZAo" node="5LbVSrDBBMY" resolve="traceBox" />
                        </node>
                        <node concept="liA8E" id="5LbVSrDBRK_" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected():boolean" resolve="isSelected" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5LbVSrDBVSh" role="3uHU7w">
                        <node concept="2WthIp" id="5LbVSrDBV61" role="2Oq$k0" />
                        <node concept="34pFcN" id="5LbVSrDBWGh" role="2OqNvi">
                          <ref role="2WH_rO" node="4Y8BM43MiH6" resolve="trace" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="7S$pNDL4FCl" role="3uHU7w">
                    <node concept="2OqwBi" id="7S$pNDL4IqM" role="3uHU7w">
                      <node concept="2WthIp" id="7S$pNDL4H6U" role="2Oq$k0" />
                      <node concept="34pFcN" id="7S$pNDL4JOO" role="2OqNvi">
                        <ref role="2WH_rO" node="2unJcb5530d" resolve="keepState" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7S$pNDL4Asm" role="3uHU7B">
                      <node concept="37vLTw" id="7S$pNDL4$D9" role="2Oq$k0">
                        <ref role="3cqZAo" node="7S$pNDL4tSa" resolve="keepStateBox" />
                      </node>
                      <node concept="liA8E" id="7S$pNDL4CIz" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected():boolean" resolve="isSelected" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3yzWfJ" id="4Y8BM43M800" role="3y$9q5">
        <node concept="3clFbS" id="4Y8BM43M801" role="2VODD2">
          <node concept="3clFbJ" id="6gErcZbJ2g3" role="3cqZAp">
            <node concept="3clFbS" id="6gErcZbJ2g4" role="3clFbx">
              <node concept="3clFbF" id="6gErcZbJ2g5" role="3cqZAp">
                <node concept="37vLTI" id="6gErcZbJ2g6" role="3clFbG">
                  <node concept="3cmrfG" id="6gErcZbJ2g7" role="37vLTx">
                    <property role="3cmrfH" value="8" />
                  </node>
                  <node concept="2OqwBi" id="6gErcZbJ2g8" role="37vLTJ">
                    <node concept="2WthIp" id="6gErcZbJ2g9" role="2Oq$k0" />
                    <node concept="34pFcN" id="5IZNT_vMlgO" role="2OqNvi">
                      <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2dkUwp" id="6gErcZbJ2gb" role="3clFbw">
              <node concept="2OqwBi" id="6gErcZbJ2gc" role="3uHU7B">
                <node concept="2WthIp" id="6gErcZbJ2gd" role="2Oq$k0" />
                <node concept="34pFcN" id="6gErcZbJ2ge" role="2OqNvi">
                  <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                </node>
              </node>
              <node concept="3cmrfG" id="6gErcZbJ2gf" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6gErcZbISS4" role="3cqZAp">
            <node concept="3clFbS" id="6gErcZbISS5" role="3clFbx">
              <node concept="3clFbF" id="6gErcZbISS6" role="3cqZAp">
                <node concept="37vLTI" id="6gErcZbISS7" role="3clFbG">
                  <node concept="2OqwBi" id="6gErcZbISS8" role="37vLTJ">
                    <node concept="2WthIp" id="6gErcZbISS9" role="2Oq$k0" />
                    <node concept="34pFcN" id="6gErcZbISSa" role="2OqNvi">
                      <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="6gErcZbISSb" role="37vLTx">
                    <property role="3cmrfH" value="100000" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2dkUwp" id="6gErcZbISSc" role="3clFbw">
              <node concept="2OqwBi" id="6gErcZbISSd" role="3uHU7B">
                <node concept="2WthIp" id="6gErcZbISSe" role="2Oq$k0" />
                <node concept="34pFcN" id="6gErcZbISSf" role="2OqNvi">
                  <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                </node>
              </node>
              <node concept="3cmrfG" id="6gErcZbISSg" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5LbVSrDAGGf" role="3cqZAp">
            <node concept="2OqwBi" id="5LbVSrDAHBM" role="3clFbG">
              <node concept="3yMSdA" id="5LbVSrDAGGd" role="2Oq$k0" />
              <node concept="liA8E" id="5LbVSrDAISS" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.removeAll():void" resolve="removeAll" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzrphWo" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrpk2l" role="3clFbG">
              <node concept="3yMSdA" id="GLgNzrphWm" role="2Oq$k0" />
              <node concept="liA8E" id="GLgNzrpmrn" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
                <node concept="2ShNRf" id="GLgNzrpodD" role="37wK5m">
                  <node concept="1pGfFk" id="GLgNzrpqnE" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                    <node concept="Xl_RD" id="GLgNzrpsbH" role="37wK5m">
                      <property role="Xl_RC" value="Engine on" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5LbVSrDB1Bl" role="3cqZAp">
            <node concept="3cpWsn" id="5LbVSrDB1Bm" role="3cpWs9">
              <property role="TrG5h" value="onBox" />
              <node concept="3uibUv" id="5LbVSrDB1Bi" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="2ShNRf" id="5LbVSrDB1Bn" role="33vP2m">
                <node concept="1pGfFk" id="5LbVSrDB1Bo" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;()" resolve="JCheckBox" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5LbVSrDBecT" role="3cqZAp">
            <node concept="2OqwBi" id="5LbVSrDBfeq" role="3clFbG">
              <node concept="37vLTw" id="5LbVSrDBecR" role="2Oq$k0">
                <ref role="3cqZAo" node="5LbVSrDB1Bm" resolve="onBox" />
              </node>
              <node concept="liA8E" id="5LbVSrDBgOq" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean):void" resolve="setSelected" />
                <node concept="2OqwBi" id="5LbVSrDBgRj" role="37wK5m">
                  <node concept="2WthIp" id="5LbVSrDBgRm" role="2Oq$k0" />
                  <node concept="34pFcN" id="5LbVSrDBgRo" role="2OqNvi">
                    <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="on" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5LbVSrDAwXv" role="3cqZAp">
            <node concept="2OqwBi" id="5LbVSrDAxSs" role="3clFbG">
              <node concept="3yMSdA" id="5LbVSrDAwXt" role="2Oq$k0" />
              <node concept="liA8E" id="5LbVSrDAz93" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
                <node concept="37vLTw" id="5LbVSrDB1Bq" role="37wK5m">
                  <ref role="3cqZAo" node="5LbVSrDB1Bm" resolve="onBox" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzrp_li" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrp_lj" role="3clFbG">
              <node concept="3yMSdA" id="GLgNzrp_lk" role="2Oq$k0" />
              <node concept="liA8E" id="GLgNzrp_ll" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
                <node concept="2ShNRf" id="GLgNzrp_lm" role="37wK5m">
                  <node concept="1pGfFk" id="GLgNzrp_ln" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                    <node concept="Xl_RD" id="GLgNzrp_lo" role="37wK5m">
                      <property role="Xl_RC" value="Tracing on" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5LbVSrDB5aY" role="3cqZAp">
            <node concept="3cpWsn" id="5LbVSrDB5aZ" role="3cpWs9">
              <property role="TrG5h" value="traceBox" />
              <node concept="3uibUv" id="5LbVSrDB5aX" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="2ShNRf" id="5LbVSrDB5b0" role="33vP2m">
                <node concept="1pGfFk" id="5LbVSrDB5b1" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;()" resolve="JCheckBox" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4Y8BM43MB$o" role="3cqZAp">
            <node concept="2OqwBi" id="4Y8BM43MKk9" role="3clFbG">
              <node concept="37vLTw" id="5LbVSrDB94g" role="2Oq$k0">
                <ref role="3cqZAo" node="5LbVSrDB5aZ" resolve="traceBox" />
              </node>
              <node concept="liA8E" id="4Y8BM43MKuH" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean):void" resolve="setSelected" />
                <node concept="2OqwBi" id="4o9njCw5QQo" role="37wK5m">
                  <node concept="2WthIp" id="4o9njCw5QeU" role="2Oq$k0" />
                  <node concept="34pFcN" id="4o9njCw5RrQ" role="2OqNvi">
                    <ref role="2WH_rO" node="4Y8BM43MiH6" resolve="trace" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5LbVSrDAevV" role="3cqZAp">
            <node concept="2OqwBi" id="5LbVSrDAfpg" role="3clFbG">
              <node concept="3yMSdA" id="5LbVSrDAevT" role="2Oq$k0" />
              <node concept="liA8E" id="5LbVSrDAgxC" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
                <node concept="37vLTw" id="5LbVSrDB5b3" role="37wK5m">
                  <ref role="3cqZAo" node="5LbVSrDB5aZ" resolve="traceBox" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7S$pNDL2LOQ" role="3cqZAp">
            <node concept="2OqwBi" id="7S$pNDL2O5x" role="3clFbG">
              <node concept="3yMSdA" id="7S$pNDL2LOO" role="2Oq$k0" />
              <node concept="liA8E" id="7S$pNDL2QD2" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
                <node concept="2ShNRf" id="7S$pNDL2RPa" role="37wK5m">
                  <node concept="1pGfFk" id="7S$pNDL33Yn" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                    <node concept="Xl_RD" id="7S$pNDL36iC" role="37wK5m">
                      <property role="Xl_RC" value="Keep non-persistent state" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7S$pNDL3uxx" role="3cqZAp">
            <node concept="3cpWsn" id="7S$pNDL3uxy" role="3cpWs9">
              <property role="TrG5h" value="keepStateBox" />
              <node concept="3uibUv" id="7S$pNDL3uxz" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="2ShNRf" id="7S$pNDL3wvu" role="33vP2m">
                <node concept="1pGfFk" id="7S$pNDL3wv9" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;()" resolve="JCheckBox" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7S$pNDL3ywb" role="3cqZAp">
            <node concept="2OqwBi" id="7S$pNDL3_34" role="3clFbG">
              <node concept="37vLTw" id="7S$pNDL3yw9" role="2Oq$k0">
                <ref role="3cqZAo" node="7S$pNDL3uxy" resolve="keepStateBox" />
              </node>
              <node concept="liA8E" id="7S$pNDL3Cl_" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean):void" resolve="setSelected" />
                <node concept="2OqwBi" id="7S$pNDL3Czb" role="37wK5m">
                  <node concept="2WthIp" id="7S$pNDL3CrI" role="2Oq$k0" />
                  <node concept="34pFcN" id="7S$pNDL3CFd" role="2OqNvi">
                    <ref role="2WH_rO" node="2unJcb5530d" resolve="keepState" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7S$pNDL3ES9" role="3cqZAp">
            <node concept="2OqwBi" id="7S$pNDL3Haf" role="3clFbG">
              <node concept="3yMSdA" id="7S$pNDL3ES7" role="2Oq$k0" />
              <node concept="liA8E" id="7S$pNDL3J3Y" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
                <node concept="37vLTw" id="7S$pNDL3Kmo" role="37wK5m">
                  <ref role="3cqZAo" node="7S$pNDL3uxy" resolve="keepStateBox" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzrpBj0" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrpBj1" role="3clFbG">
              <node concept="3yMSdA" id="GLgNzrpBj2" role="2Oq$k0" />
              <node concept="liA8E" id="GLgNzrpBj3" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
                <node concept="2ShNRf" id="GLgNzrpBj4" role="37wK5m">
                  <node concept="1pGfFk" id="GLgNzrpBj5" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                    <node concept="Xl_RD" id="GLgNzrpBj6" role="37wK5m">
                      <property role="Xl_RC" value="Maximum number of changes per rule (instance) per transaction" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="GLgNzrlG_V" role="3cqZAp">
            <node concept="3cpWsn" id="GLgNzrlG_W" role="3cpWs9">
              <property role="TrG5h" value="max" />
              <node concept="3uibUv" id="GLgNzrmhdT" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="2ShNRf" id="GLgNzrlG_Y" role="33vP2m">
                <node concept="1pGfFk" id="GLgNzrmaXV" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JFormattedTextField.&lt;init&gt;(java.lang.Object)" resolve="JFormattedTextField" />
                  <node concept="10M0yZ" id="GLgNzrmcQD" role="37wK5m">
                    <ref role="1PxDUh" to="25x5:~NumberFormat" resolve="NumberFormat" />
                    <ref role="3cqZAo" to="25x5:~NumberFormat.INTEGER_FIELD" resolve="INTEGER_FIELD" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzrm2DI" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrm49C" role="3clFbG">
              <node concept="37vLTw" id="GLgNzrm2DG" role="2Oq$k0">
                <ref role="3cqZAo" node="GLgNzrlG_W" resolve="max" />
              </node>
              <node concept="liA8E" id="GLgNzrmji_" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="2OqwBi" id="GLgNzrmjTP" role="37wK5m">
                  <node concept="2WthIp" id="GLgNzrmjA0" role="2Oq$k0" />
                  <node concept="34pFcN" id="GLgNzrmkgx" role="2OqNvi">
                    <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzrlQMq" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrlS3a" role="3clFbG">
              <node concept="3yMSdA" id="GLgNzrlQMo" role="2Oq$k0" />
              <node concept="liA8E" id="GLgNzrlTEe" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
                <node concept="37vLTw" id="GLgNzrlUCY" role="37wK5m">
                  <ref role="3cqZAo" node="GLgNzrlG_W" resolve="max" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzrpDfo" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrpDfp" role="3clFbG">
              <node concept="3yMSdA" id="GLgNzrpDfq" role="2Oq$k0" />
              <node concept="liA8E" id="GLgNzrpDfr" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
                <node concept="2ShNRf" id="GLgNzrpDfs" role="37wK5m">
                  <node concept="1pGfFk" id="GLgNzrpDft" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                    <node concept="Xl_RD" id="GLgNzrpDfu" role="37wK5m">
                      <property role="Xl_RC" value="Maximum total number of changes per transaction" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="GLgNzrlxZY" role="3cqZAp">
            <node concept="3cpWsn" id="GLgNzrlxZZ" role="3cpWs9">
              <property role="TrG5h" value="maxTotal" />
              <node concept="3uibUv" id="GLgNzrmmS0" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="2ShNRf" id="GLgNzrmffe" role="33vP2m">
                <node concept="1pGfFk" id="GLgNzrmfff" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JFormattedTextField.&lt;init&gt;(java.lang.Object)" resolve="JFormattedTextField" />
                  <node concept="10M0yZ" id="GLgNzrmffg" role="37wK5m">
                    <ref role="3cqZAo" to="25x5:~NumberFormat.INTEGER_FIELD" resolve="INTEGER_FIELD" />
                    <ref role="1PxDUh" to="25x5:~NumberFormat" resolve="NumberFormat" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzrmlFg" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrmokW" role="3clFbG">
              <node concept="37vLTw" id="GLgNzrmlFe" role="2Oq$k0">
                <ref role="3cqZAo" node="GLgNzrlxZZ" resolve="maxTotal" />
              </node>
              <node concept="liA8E" id="GLgNzrmqj_" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="2OqwBi" id="GLgNzrmqCx" role="37wK5m">
                  <node concept="2WthIp" id="GLgNzrmqsD" role="2Oq$k0" />
                  <node concept="34pFcN" id="GLgNzrmqZd" role="2OqNvi">
                    <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzrlJje" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrlKt1" role="3clFbG">
              <node concept="3yMSdA" id="GLgNzrlJjc" role="2Oq$k0" />
              <node concept="liA8E" id="GLgNzrlLVI" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
                <node concept="37vLTw" id="GLgNzrlMPa" role="37wK5m">
                  <ref role="3cqZAo" node="GLgNzrlxZZ" resolve="maxTotal" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Dw8fO" id="6_bAO4Vq2WM" role="3cqZAp">
            <node concept="3clFbS" id="6_bAO4Vq2WO" role="2LFqv$">
              <node concept="3clFbF" id="6_bAO4VoGDp" role="3cqZAp">
                <node concept="2OqwBi" id="6_bAO4VoIJ3" role="3clFbG">
                  <node concept="3yMSdA" id="6_bAO4VoGDn" role="2Oq$k0" />
                  <node concept="liA8E" id="6_bAO4VoKuA" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
                    <node concept="2ShNRf" id="6_bAO4VoLzn" role="37wK5m">
                      <node concept="1pGfFk" id="6_bAO4VoWad" role="2ShVmc">
                        <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="6_bAO4Vq2WP" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="6_bAO4Vq4Qz" role="1tU5fm" />
              <node concept="3cmrfG" id="6_bAO4Vq4RX" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3eOVzh" id="6_bAO4Vq6Hd" role="1Dwp0S">
              <node concept="37vLTw" id="6_bAO4Vq4SB" role="3uHU7B">
                <ref role="3cqZAo" node="6_bAO4Vq2WP" resolve="i" />
              </node>
              <node concept="3cmrfG" id="6_bAO4Vqv91" role="3uHU7w">
                <property role="3cmrfH" value="18" />
              </node>
            </node>
            <node concept="3uNrnE" id="6_bAO4Vq9yl" role="1Dwrff">
              <node concept="37vLTw" id="6_bAO4Vq9yn" role="2$L3a6">
                <ref role="3cqZAo" node="6_bAO4Vq2WP" resolve="i" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3y$hsl" id="4Y8BM43M802" role="3y$ekZ">
        <node concept="3clFbS" id="4Y8BM43M803" role="2VODD2">
          <node concept="3cpWs8" id="5LbVSrDBict" role="3cqZAp">
            <node concept="3cpWsn" id="5LbVSrDBicu" role="3cpWs9">
              <property role="TrG5h" value="onBox" />
              <node concept="3uibUv" id="5LbVSrDBicv" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="10QFUN" id="5LbVSrDBlGC" role="33vP2m">
                <node concept="3uibUv" id="5LbVSrDBmvd" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
                </node>
                <node concept="2OqwBi" id="5LbVSrDBjdM" role="10QFUP">
                  <node concept="3yMSdA" id="5LbVSrDBiRj" role="2Oq$k0" />
                  <node concept="liA8E" id="5LbVSrDBksx" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int):java.awt.Component" resolve="getComponent" />
                    <node concept="3cmrfG" id="GLgNzrrSS5" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4Y8BM43MPKp" role="3cqZAp">
            <node concept="37vLTI" id="4Y8BM43MRq_" role="3clFbG">
              <node concept="2OqwBi" id="4Y8BM43MSs6" role="37vLTx">
                <node concept="37vLTw" id="5LbVSrDBzWp" role="2Oq$k0">
                  <ref role="3cqZAo" node="5LbVSrDBicu" resolve="onBox" />
                </node>
                <node concept="liA8E" id="4Y8BM43MTvs" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected():boolean" resolve="isSelected" />
                </node>
              </node>
              <node concept="2OqwBi" id="4Y8BM43MPMk" role="37vLTJ">
                <node concept="2WthIp" id="4Y8BM43MPKo" role="2Oq$k0" />
                <node concept="34pFcN" id="5LbVSrDB_mi" role="2OqNvi">
                  <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="on" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5LbVSrDBnBW" role="3cqZAp">
            <node concept="3cpWsn" id="5LbVSrDBnBZ" role="3cpWs9">
              <property role="TrG5h" value="traceBox" />
              <node concept="3uibUv" id="5LbVSrDBnC0" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="10QFUN" id="5LbVSrDBnC1" role="33vP2m">
                <node concept="3uibUv" id="5LbVSrDBnC2" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
                </node>
                <node concept="2OqwBi" id="5LbVSrDBnC3" role="10QFUP">
                  <node concept="3yMSdA" id="5LbVSrDBnC4" role="2Oq$k0" />
                  <node concept="liA8E" id="5LbVSrDBnC5" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int):java.awt.Component" resolve="getComponent" />
                    <node concept="3cmrfG" id="GLgNzrrUOx" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5LbVSrDBolb" role="3cqZAp">
            <node concept="37vLTI" id="5LbVSrDBtR0" role="3clFbG">
              <node concept="2OqwBi" id="5LbVSrDBx$g" role="37vLTx">
                <node concept="37vLTw" id="5LbVSrDBwoP" role="2Oq$k0">
                  <ref role="3cqZAo" node="5LbVSrDBnBZ" resolve="traceBox" />
                </node>
                <node concept="liA8E" id="5LbVSrDBzeM" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected():boolean" resolve="isSelected" />
                </node>
              </node>
              <node concept="2OqwBi" id="5LbVSrDBoZh" role="37vLTJ">
                <node concept="2WthIp" id="5LbVSrDBol9" role="2Oq$k0" />
                <node concept="34pFcN" id="5LbVSrDBpD9" role="2OqNvi">
                  <ref role="2WH_rO" node="4Y8BM43MiH6" resolve="trace" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7S$pNDL3ShA" role="3cqZAp">
            <node concept="3cpWsn" id="7S$pNDL3ShB" role="3cpWs9">
              <property role="TrG5h" value="keepStateBox" />
              <node concept="3uibUv" id="7S$pNDL3ShC" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="10QFUN" id="7S$pNDL3ShD" role="33vP2m">
                <node concept="3uibUv" id="7S$pNDL3ShE" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
                </node>
                <node concept="2OqwBi" id="7S$pNDL3ShF" role="10QFUP">
                  <node concept="3yMSdA" id="7S$pNDL3ShG" role="2Oq$k0" />
                  <node concept="liA8E" id="7S$pNDL3ShH" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int):java.awt.Component" resolve="getComponent" />
                    <node concept="3cmrfG" id="7S$pNDL4atG" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7S$pNDL3UtG" role="3cqZAp">
            <node concept="37vLTI" id="7S$pNDL42tg" role="3clFbG">
              <node concept="2OqwBi" id="7S$pNDL4f4W" role="37vLTx">
                <node concept="37vLTw" id="7S$pNDL4e77" role="2Oq$k0">
                  <ref role="3cqZAo" node="7S$pNDL3ShB" resolve="keepStateBox" />
                </node>
                <node concept="liA8E" id="7S$pNDL4gxG" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected():boolean" resolve="isSelected" />
                </node>
              </node>
              <node concept="2OqwBi" id="7S$pNDL3W$P" role="37vLTJ">
                <node concept="2WthIp" id="7S$pNDL3UtE" role="2Oq$k0" />
                <node concept="34pFcN" id="7S$pNDL3XNQ" role="2OqNvi">
                  <ref role="2WH_rO" node="2unJcb5530d" resolve="keepState" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="GLgNzrnI83" role="3cqZAp">
            <node concept="3cpWsn" id="GLgNzrnI84" role="3cpWs9">
              <property role="TrG5h" value="max" />
              <node concept="3uibUv" id="GLgNzrnI85" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="GLgNzrnI86" role="33vP2m">
                <node concept="3uibUv" id="GLgNzrnI87" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2OqwBi" id="GLgNzrnI88" role="10QFUP">
                  <node concept="3yMSdA" id="GLgNzrnI89" role="2Oq$k0" />
                  <node concept="liA8E" id="GLgNzrnI8a" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int):java.awt.Component" resolve="getComponent" />
                    <node concept="3cmrfG" id="7S$pNDL4bIY" role="37wK5m">
                      <property role="3cmrfH" value="7" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzrnMVo" role="3cqZAp">
            <node concept="37vLTI" id="GLgNzro1OM" role="3clFbG">
              <node concept="0kSF2" id="GLgNzroepx" role="37vLTx">
                <node concept="3uibUv" id="GLgNzrogpE" role="0kSFW">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
                <node concept="2OqwBi" id="GLgNzro5WY" role="0kSFX">
                  <node concept="37vLTw" id="GLgNzro3E6" role="2Oq$k0">
                    <ref role="3cqZAo" node="GLgNzrnI84" resolve="max" />
                  </node>
                  <node concept="liA8E" id="GLgNzro8Ko" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue():java.lang.Object" resolve="getValue" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="GLgNzrnNZT" role="37vLTJ">
                <node concept="2WthIp" id="GLgNzrnMVm" role="2Oq$k0" />
                <node concept="34pFcN" id="GLgNzrnOVx" role="2OqNvi">
                  <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="GLgNzrnEa3" role="3cqZAp">
            <node concept="3cpWsn" id="GLgNzrnEa4" role="3cpWs9">
              <property role="TrG5h" value="maxTotal" />
              <node concept="3uibUv" id="GLgNzrnEa5" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="GLgNzrnEa6" role="33vP2m">
                <node concept="3uibUv" id="GLgNzrnEa7" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2OqwBi" id="GLgNzrnEa8" role="10QFUP">
                  <node concept="3yMSdA" id="GLgNzrnEa9" role="2Oq$k0" />
                  <node concept="liA8E" id="GLgNzrnEaa" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int):java.awt.Component" resolve="getComponent" />
                    <node concept="3cmrfG" id="7S$pNDL4cTs" role="37wK5m">
                      <property role="3cmrfH" value="9" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzrokQX" role="3cqZAp">
            <node concept="37vLTI" id="GLgNzro$GS" role="3clFbG">
              <node concept="0kSF2" id="GLgNzroI$T" role="37vLTx">
                <node concept="3uibUv" id="GLgNzroL3t" role="0kSFW">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
                <node concept="2OqwBi" id="GLgNzroCTz" role="0kSFX">
                  <node concept="37vLTw" id="GLgNzroA$k" role="2Oq$k0">
                    <ref role="3cqZAo" node="GLgNzrnEa4" resolve="maxTotal" />
                  </node>
                  <node concept="liA8E" id="GLgNzroFI6" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue():java.lang.Object" resolve="getValue" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="GLgNzromC0" role="37vLTJ">
                <node concept="2WthIp" id="GLgNzrokQV" role="2Oq$k0" />
                <node concept="34pFcN" id="GLgNzroopj" role="2OqNvi">
                  <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5LbVSrDC$MR" role="3cqZAp">
            <node concept="3cpWsn" id="5LbVSrDC$MU" role="3cpWs9">
              <property role="TrG5h" value="engine" />
              <node concept="3uibUv" id="GLgNzrkilS" role="1tU5fm">
                <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
              </node>
              <node concept="2OqwBi" id="5LbVSrDC$MW" role="33vP2m">
                <node concept="10M0yZ" id="5LbVSrDC$MX" role="2Oq$k0">
                  <ref role="1PxDUh" node="4o9njCw56H3" resolve="DclarePluginUtil" />
                  <ref role="3cqZAo" node="4o9njCw5asw" resolve="PLUGINS" />
                </node>
                <node concept="liA8E" id="5LbVSrDC$MY" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                  <node concept="2xqhHp" id="5LbVSrDCFYh" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzroONu" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzroQAI" role="3clFbG">
              <node concept="37vLTw" id="GLgNzroONs" role="2Oq$k0">
                <ref role="3cqZAo" node="5LbVSrDC$MU" resolve="engine" />
              </node>
              <node concept="liA8E" id="GLgNzroSs5" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setMaxTotalNrOfChanges(int):void" resolve="setMaxTotalNrOfChanges" />
                <node concept="2OqwBi" id="GLgNzroSXX" role="37wK5m">
                  <node concept="2WthIp" id="GLgNzroSFo" role="2Oq$k0" />
                  <node concept="34pFcN" id="GLgNzroTwX" role="2OqNvi">
                    <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzrnJq$" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrnKw8" role="3clFbG">
              <node concept="37vLTw" id="GLgNzrnJqy" role="2Oq$k0">
                <ref role="3cqZAo" node="5LbVSrDC$MU" resolve="engine" />
              </node>
              <node concept="liA8E" id="GLgNzrnLAJ" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setMaxNrOfChanges(int):void" resolve="setMaxNrOfChanges" />
                <node concept="2OqwBi" id="GLgNzroioG" role="37wK5m">
                  <node concept="2WthIp" id="GLgNzroi69" role="2Oq$k0" />
                  <node concept="34pFcN" id="GLgNzroiVE" role="2OqNvi">
                    <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7S$pNDL4jcD" role="3cqZAp">
            <node concept="2OqwBi" id="7S$pNDL4loN" role="3clFbG">
              <node concept="37vLTw" id="7S$pNDL4jcB" role="2Oq$k0">
                <ref role="3cqZAo" node="5LbVSrDC$MU" resolve="engine" />
              </node>
              <node concept="liA8E" id="7S$pNDL4mI_" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setKeepState(boolean):void" resolve="setKeepState" />
                <node concept="2OqwBi" id="7S$pNDL4ngN" role="37wK5m">
                  <node concept="2WthIp" id="7S$pNDL4mY3" role="2Oq$k0" />
                  <node concept="34pFcN" id="7S$pNDL4nTe" role="2OqNvi">
                    <ref role="2WH_rO" node="2unJcb5530d" resolve="keepState" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzrknZj" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrkoNS" role="3clFbG">
              <node concept="37vLTw" id="GLgNzrknZh" role="2Oq$k0">
                <ref role="3cqZAo" node="5LbVSrDC$MU" resolve="engine" />
              </node>
              <node concept="liA8E" id="GLgNzrkpDF" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setOn(boolean):void" resolve="setOn" />
                <node concept="2OqwBi" id="GLgNzrkqkc" role="37wK5m">
                  <node concept="2WthIp" id="GLgNzrkq1J" role="2Oq$k0" />
                  <node concept="34pFcN" id="GLgNzrkqP6" role="2OqNvi">
                    <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="on" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzrkuW$" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrkvIZ" role="3clFbG">
              <node concept="37vLTw" id="GLgNzrkuWy" role="2Oq$k0">
                <ref role="3cqZAo" node="5LbVSrDC$MU" resolve="engine" />
              </node>
              <node concept="liA8E" id="GLgNzrkwyH" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setTrace(boolean):void" resolve="setTrace" />
                <node concept="2OqwBi" id="GLgNzrkx4l" role="37wK5m">
                  <node concept="2WthIp" id="GLgNzrkwLS" role="2Oq$k0" />
                  <node concept="34pFcN" id="GLgNzrkxA_" role="2OqNvi">
                    <ref role="2WH_rO" node="4Y8BM43MiH6" resolve="trace" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="5LbVSrDAmF1" role="3yzNdQ">
        <node concept="1pGfFk" id="5LbVSrDAnt7" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
          <node concept="2ShNRf" id="5LbVSrDAKvz" role="37wK5m">
            <node concept="1pGfFk" id="5LbVSrDAUrQ" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~GridLayout.&lt;init&gt;(int,int)" resolve="GridLayout" />
              <node concept="3cmrfG" id="5LbVSrDB0CY" role="37wK5m">
                <property role="3cmrfH" value="16" />
              </node>
              <node concept="3cmrfG" id="GLgNzroYOS" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3xXM6Z" id="4o9njCw6yMf" role="3xXSXp">
      <node concept="3clFbS" id="4o9njCw6yMg" role="2VODD2">
        <node concept="3clFbJ" id="GLgNzrkVk6" role="3cqZAp">
          <node concept="3clFbS" id="GLgNzrkVk8" role="3clFbx">
            <node concept="3clFbF" id="GLgNzrlak5" role="3cqZAp">
              <node concept="37vLTI" id="GLgNzrlmQI" role="3clFbG">
                <node concept="3cmrfG" id="GLgNzrln$z" role="37vLTx">
                  <property role="3cmrfH" value="8" />
                </node>
                <node concept="2OqwBi" id="GLgNzrlanw" role="37vLTJ">
                  <node concept="2WthIp" id="GLgNzrlak3" role="2Oq$k0" />
                  <node concept="34pFcN" id="5IZNT_vMj5u" role="2OqNvi">
                    <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2dkUwp" id="GLgNzrl89Y" role="3clFbw">
            <node concept="2OqwBi" id="GLgNzrkVzs" role="3uHU7B">
              <node concept="2WthIp" id="GLgNzrkVzv" role="2Oq$k0" />
              <node concept="34pFcN" id="GLgNzrkVzx" role="2OqNvi">
                <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
              </node>
            </node>
            <node concept="3cmrfG" id="GLgNzrloQE" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="GLgNzrlqp5" role="3cqZAp">
          <node concept="3clFbS" id="GLgNzrlqp6" role="3clFbx">
            <node concept="3clFbF" id="GLgNzrlqp7" role="3cqZAp">
              <node concept="37vLTI" id="GLgNzrlqp8" role="3clFbG">
                <node concept="2OqwBi" id="GLgNzrlqpa" role="37vLTJ">
                  <node concept="2WthIp" id="GLgNzrlqpb" role="2Oq$k0" />
                  <node concept="34pFcN" id="GLgNzrlqpc" role="2OqNvi">
                    <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                  </node>
                </node>
                <node concept="3cmrfG" id="GLgNzrlsFm" role="37vLTx">
                  <property role="3cmrfH" value="100000" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2dkUwp" id="GLgNzrlqpd" role="3clFbw">
            <node concept="2OqwBi" id="GLgNzrlqpe" role="3uHU7B">
              <node concept="2WthIp" id="GLgNzrlqpf" role="2Oq$k0" />
              <node concept="34pFcN" id="GLgNzrlroU" role="2OqNvi">
                <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
              </node>
            </node>
            <node concept="3cmrfG" id="GLgNzrlqph" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="GLgNzrkNBP" role="3cqZAp">
          <node concept="3cpWsn" id="GLgNzrkNBS" role="3cpWs9">
            <property role="TrG5h" value="engine" />
            <node concept="3uibUv" id="GLgNzrkNBT" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
            </node>
            <node concept="2OqwBi" id="GLgNzrkNBU" role="33vP2m">
              <node concept="10M0yZ" id="GLgNzrkNBV" role="2Oq$k0">
                <ref role="3cqZAo" node="4o9njCw5asw" resolve="PLUGINS" />
                <ref role="1PxDUh" node="4o9njCw56H3" resolve="DclarePluginUtil" />
              </node>
              <node concept="liA8E" id="GLgNzrkNBW" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="2OqwBi" id="6dqVhsCfW65" role="37wK5m">
                  <node concept="1KvdUw" id="GLgNzrkPPK" role="2Oq$k0" />
                  <node concept="liA8E" id="6dqVhsCfXgE" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~MPSProject.getProject():com.intellij.openapi.project.Project" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="GLgNzrkSKE" role="3cqZAp">
          <node concept="2OqwBi" id="GLgNzrkT3k" role="3clFbG">
            <node concept="37vLTw" id="GLgNzrkSKC" role="2Oq$k0">
              <ref role="3cqZAo" node="GLgNzrkNBS" resolve="engine" />
            </node>
            <node concept="liA8E" id="GLgNzrkTpd" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setMaxTotalNrOfChanges(int):void" resolve="setMaxTotalNrOfChanges" />
              <node concept="2OqwBi" id="GLgNzrkTVc" role="37wK5m">
                <node concept="2WthIp" id="GLgNzrkTCv" role="2Oq$k0" />
                <node concept="34pFcN" id="GLgNzrkUus" role="2OqNvi">
                  <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="GLgNzrkQGA" role="3cqZAp">
          <node concept="2OqwBi" id="GLgNzrkR03" role="3clFbG">
            <node concept="37vLTw" id="GLgNzrkQG$" role="2Oq$k0">
              <ref role="3cqZAo" node="GLgNzrkNBS" resolve="engine" />
            </node>
            <node concept="liA8E" id="GLgNzrkRjS" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setMaxNrOfChanges(int):void" resolve="setMaxNrOfChanges" />
              <node concept="2OqwBi" id="GLgNzrkRPR" role="37wK5m">
                <node concept="2WthIp" id="GLgNzrkRza" role="2Oq$k0" />
                <node concept="34pFcN" id="GLgNzrkSp7" role="2OqNvi">
                  <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4o9njCw6zmp" role="3cqZAp">
          <node concept="2OqwBi" id="4o9njCw738i" role="3clFbG">
            <node concept="liA8E" id="4o9njCw745u" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setOn(boolean):void" resolve="setOn" />
              <node concept="2OqwBi" id="4o9njCw74LR" role="37wK5m">
                <node concept="2WthIp" id="4o9njCw74qU" role="2Oq$k0" />
                <node concept="34pFcN" id="GLgNzrkb9_" role="2OqNvi">
                  <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="on" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="GLgNzrkPCS" role="2Oq$k0">
              <ref role="3cqZAo" node="GLgNzrkNBS" resolve="engine" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5LbVSrDBXBf" role="3cqZAp">
          <node concept="2OqwBi" id="5LbVSrDBXBg" role="3clFbG">
            <node concept="liA8E" id="5LbVSrDBXBn" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setTrace(boolean):void" resolve="setTrace" />
              <node concept="2OqwBi" id="5LbVSrDBXBo" role="37wK5m">
                <node concept="2WthIp" id="5LbVSrDBXBp" role="2Oq$k0" />
                <node concept="34pFcN" id="5LbVSrDBXBq" role="2OqNvi">
                  <ref role="2WH_rO" node="4Y8BM43MiH6" resolve="trace" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="GLgNzrkOOj" role="2Oq$k0">
              <ref role="3cqZAo" node="GLgNzrkNBS" resolve="engine" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2unJcb559gD" role="3cqZAp">
          <node concept="2OqwBi" id="2unJcb55bkn" role="3clFbG">
            <node concept="37vLTw" id="2unJcb559gB" role="2Oq$k0">
              <ref role="3cqZAo" node="GLgNzrkNBS" resolve="engine" />
            </node>
            <node concept="liA8E" id="7S$pNDL2DDt" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setKeepState(boolean):void" resolve="setKeepState" />
              <node concept="2OqwBi" id="7S$pNDL2ETh" role="37wK5m">
                <node concept="2WthIp" id="7S$pNDL2EA9" role="2Oq$k0" />
                <node concept="34pFcN" id="7S$pNDL2FtA" role="2OqNvi">
                  <ref role="2WH_rO" node="2unJcb5530d" resolve="keepState" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4o9njCw56H3">
    <property role="TrG5h" value="DclarePluginUtil" />
    <node concept="Wx3nA" id="4o9njCw5asw" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="PLUGINS" />
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
    <node concept="3Tm1VV" id="4o9njCw56H4" role="1B3o_S" />
  </node>
  <node concept="2E2WTH" id="3E71z7ucbEa">
    <property role="TrG5h" value="Rules" />
    <property role="2E2WTP" value="R" />
    <ref role="2E2WTM" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    <node concept="2E2X7d" id="2erTeUVFa2z" role="2E2Kf0">
      <node concept="3clFbS" id="2erTeUVFa2$" role="2VODD2">
        <node concept="3clFbF" id="2erTeUVFa2_" role="3cqZAp">
          <node concept="2OqwBi" id="2erTeUVFa2A" role="3clFbG">
            <node concept="1beSmn" id="2erTeUVFa2B" role="2Oq$k0" />
            <node concept="1mIQ4w" id="2erTeUVFa2C" role="2OqNvi">
              <node concept="chp4Y" id="2erTeUVFa2D" role="cj9EA">
                <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2E2Kfa" id="3E71z7ucjCU" role="2E2WTK">
      <node concept="3clFbS" id="3E71z7ucjCV" role="2VODD2">
        <node concept="3clFbF" id="7NjRQfy0zL_" role="3cqZAp">
          <node concept="2YIFZM" id="2erTeUVF2e2" role="3clFbG">
            <ref role="1Pybhc" node="7POWRVZMxfC" resolve="DclareConceptEditorOpenHelper" />
            <ref role="37wK5l" node="7POWRVZMxfE" resolve="getBaseNode" />
            <node concept="1beSmn" id="2erTeUVF2e3" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1baRJj" id="2erTeUVFa2G" role="2E2Xay">
      <node concept="3clFbS" id="2erTeUVFa2H" role="2VODD2">
        <node concept="3cpWs8" id="74j1j8ZLRb$" role="3cqZAp">
          <node concept="3cpWsn" id="74j1j8ZLRb_" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="74j1j8ZLRbA" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="74j1j8ZLRbB" role="33vP2m">
              <node concept="2JrnkZ" id="74j1j8ZLRbC" role="2Oq$k0">
                <node concept="2OqwBi" id="74j1j8ZLRbD" role="2JrQYb">
                  <node concept="1beSmn" id="74j1j8ZLRbE" role="2Oq$k0" />
                  <node concept="I4A8Y" id="74j1j8ZLRbF" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="74j1j8ZLRbG" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="74j1j8ZLRbH" role="3cqZAp">
          <node concept="3clFbS" id="74j1j8ZLRbI" role="3clFbx">
            <node concept="3cpWs6" id="74j1j8ZLRbJ" role="3cqZAp">
              <node concept="10Nm6u" id="74j1j8ZLR$6" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="74j1j8ZLRbN" role="3clFbw">
            <node concept="1eOMI4" id="74j1j8ZLRbO" role="3fr31v">
              <node concept="2ZW3vV" id="74j1j8ZLRbP" role="1eOMHV">
                <node concept="3uibUv" id="74j1j8ZLRbQ" role="2ZW6by">
                  <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                </node>
                <node concept="37vLTw" id="74j1j8ZLRbR" role="2ZW6bz">
                  <ref role="3cqZAo" node="74j1j8ZLRb_" resolve="module" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="74j1j8ZLRbS" role="3cqZAp" />
        <node concept="3cpWs8" id="74j1j8ZLRbT" role="3cqZAp">
          <node concept="3cpWsn" id="74j1j8ZLRbU" role="3cpWs9">
            <property role="TrG5h" value="aspectModel" />
            <node concept="1qvjxa" id="qmfyRQRe5T" role="33vP2m">
              <ref role="1quiSB" to="jzwl:59OKK4YckpT" resolve="rules" />
              <node concept="37vLTw" id="qmfyRQRfLX" role="1qvjxb">
                <ref role="3cqZAo" node="74j1j8ZLRb_" resolve="module" />
              </node>
            </node>
            <node concept="3uibUv" id="74j1j8ZLRbV" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="74j1j8ZLRc3" role="3cqZAp">
          <node concept="3clFbS" id="74j1j8ZLRc4" role="3clFbx">
            <node concept="3cpWs6" id="74j1j8ZLRc5" role="3cqZAp">
              <node concept="10Nm6u" id="74j1j8ZLRVm" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="74j1j8ZLRc9" role="3clFbw">
            <node concept="10Nm6u" id="74j1j8ZLRca" role="3uHU7w" />
            <node concept="37vLTw" id="74j1j8ZLRcb" role="3uHU7B">
              <ref role="3cqZAo" node="74j1j8ZLRbU" resolve="aspectModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="74j1j8ZLRcc" role="3cqZAp" />
        <node concept="3cpWs6" id="74j1j8ZLRcd" role="3cqZAp">
          <node concept="2OqwBi" id="74j1j8ZLRce" role="3cqZAk">
            <node concept="2OqwBi" id="74j1j8ZLRcf" role="2Oq$k0">
              <node concept="1beSmn" id="74j1j8ZLRcg" role="2Oq$k0" />
              <node concept="2qgKlT" id="74j1j8ZLRch" role="2OqNvi">
                <ref role="37wK5l" to="tpcn:4G9PD8$NvPM" resolve="findConceptAspects" />
                <node concept="37vLTw" id="74j1j8ZLRci" role="37wK5m">
                  <ref role="3cqZAo" node="74j1j8ZLRbU" resolve="aspectModel" />
                </node>
              </node>
            </node>
            <node concept="1uHKPH" id="74j1j8ZLSC$" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1D6cnc" id="3E71z7ureMt" role="1D6cnr">
      <property role="1D6cn5" value="true" />
      <node concept="1YUSNl" id="3E71z7urf50" role="1YUSN9">
        <node concept="3clFbS" id="3E71z7urf51" role="2VODD2">
          <node concept="3clFbF" id="3E71z7urfdD" role="3cqZAp">
            <node concept="2ShNRf" id="2erTeUVFa37" role="3clFbG">
              <node concept="Tc6Ow" id="2erTeUVFa38" role="2ShVmc">
                <node concept="35c_gC" id="6u50yCptyMh" role="HW$Y0">
                  <ref role="35c_gD" to="7ggn:6HWpSUEuark" resolve="NodeRuleSet" />
                </node>
                <node concept="3uibUv" id="2Mnhr$7fCnM" role="HW$YZ">
                  <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1YUSOF" id="3E71z7urfQ8" role="1YUSOD">
        <node concept="3clFbS" id="3E71z7urfQ9" role="2VODD2">
          <node concept="3cpWs8" id="7NjRQfy12vn" role="3cqZAp">
            <node concept="3cpWsn" id="7NjRQfy12vq" role="3cpWs9">
              <property role="TrG5h" value="module" />
              <node concept="3uibUv" id="7NjRQfy12vr" role="1tU5fm">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
              <node concept="2OqwBi" id="7NjRQfy12vs" role="33vP2m">
                <node concept="2JrnkZ" id="7NjRQfy12vt" role="2Oq$k0">
                  <node concept="2OqwBi" id="7NjRQfy12vu" role="2JrQYb">
                    <node concept="1beSmn" id="7NjRQfy12vv" role="2Oq$k0" />
                    <node concept="I4A8Y" id="7NjRQfy12vw" role="2OqNvi" />
                  </node>
                </node>
                <node concept="liA8E" id="7NjRQfy12vx" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7NjRQfy0ZHk" role="3cqZAp">
            <node concept="3cpWsn" id="7NjRQfy0ZHn" role="3cpWs9">
              <property role="TrG5h" value="aspectModel" />
              <node concept="3uibUv" id="7NjRQfy0ZHq" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
              <node concept="1qvjxa" id="7NjRQfy11CT" role="33vP2m">
                <ref role="1quiSB" to="jzwl:59OKK4YckpT" resolve="rules" />
                <node concept="37vLTw" id="7NjRQfy11CU" role="1qvjxb">
                  <ref role="3cqZAo" node="7NjRQfy12vq" resolve="module" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7wzKMsIOfq9" role="3cqZAp">
            <node concept="3clFbS" id="7wzKMsIOfqb" role="3clFbx">
              <node concept="3cpWs8" id="2$SWsiCtx0f" role="3cqZAp">
                <node concept="3cpWsn" id="2$SWsiCtx0g" role="3cpWs9">
                  <property role="TrG5h" value="l" />
                  <node concept="3uibUv" id="2$SWsiCtx0h" role="1tU5fm">
                    <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                  </node>
                  <node concept="2YIFZM" id="2$SWsiCtx0i" role="33vP2m">
                    <ref role="1Pybhc" to="iwwu:i0YipgJ" resolve="SModelUtil" />
                    <ref role="37wK5l" to="iwwu:i0YipiN" resolve="getDeclaringLanguage" />
                    <node concept="1beSmn" id="7wzKMsIVfmW" role="37wK5m" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7wzKMsIVpuY" role="3cqZAp">
                <node concept="3cpWsn" id="7wzKMsIVpuZ" role="3cpWs9">
                  <property role="TrG5h" value="root" />
                  <node concept="3uibUv" id="7wzKMsIVpv0" role="1tU5fm">
                    <ref role="3uigEE" to="dush:~ModelRoot" resolve="ModelRoot" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7wzKMsIVkwL" role="3cqZAp">
                <node concept="3cpWsn" id="7wzKMsIVkwM" role="3cpWs9">
                  <property role="TrG5h" value="sModel" />
                  <node concept="3uibUv" id="7wzKMsIVn9T" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                  <node concept="2OqwBi" id="7wzKMsIVlWZ" role="33vP2m">
                    <node concept="37vLTw" id="7wzKMsIVlzY" role="2Oq$k0">
                      <ref role="3cqZAo" node="2$SWsiCtx0g" resolve="l" />
                    </node>
                    <node concept="liA8E" id="7wzKMsIVmDh" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~Language.getStructureModelDescriptor():org.jetbrains.mps.openapi.model.SModel" resolve="getStructureModelDescriptor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7wzKMsIVnrs" role="3cqZAp">
                <node concept="3clFbS" id="7wzKMsIVnru" role="3clFbx">
                  <node concept="3clFbF" id="7wzKMsIVqqO" role="3cqZAp">
                    <node concept="37vLTI" id="7wzKMsIVqMe" role="3clFbG">
                      <node concept="2OqwBi" id="7wzKMsIVty4" role="37vLTx">
                        <node concept="2OqwBi" id="7wzKMsIVsCy" role="2Oq$k0">
                          <node concept="2OqwBi" id="7wzKMsIVrz_" role="2Oq$k0">
                            <node concept="37vLTw" id="7wzKMsIVr1F" role="2Oq$k0">
                              <ref role="3cqZAo" node="2$SWsiCtx0g" resolve="l" />
                            </node>
                            <node concept="liA8E" id="7wzKMsIVshJ" role="2OqNvi">
                              <ref role="37wK5l" to="z1c4:~AbstractModule.getModelRoots():java.lang.Iterable" resolve="getModelRoots" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7wzKMsIVt93" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.iterator():java.util.Iterator" resolve="iterator" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7wzKMsIVubN" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7wzKMsIVqqM" role="37vLTJ">
                        <ref role="3cqZAo" node="7wzKMsIVpuZ" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="7wzKMsIVoi2" role="3clFbw">
                  <node concept="10Nm6u" id="7wzKMsIVoxj" role="3uHU7w" />
                  <node concept="37vLTw" id="7wzKMsIVnDw" role="3uHU7B">
                    <ref role="3cqZAo" node="7wzKMsIVkwM" resolve="sModel" />
                  </node>
                </node>
                <node concept="9aQIb" id="7wzKMsIVu$c" role="9aQIa">
                  <node concept="3clFbS" id="7wzKMsIVu$d" role="9aQI4">
                    <node concept="3clFbF" id="7wzKMsIVuZk" role="3cqZAp">
                      <node concept="37vLTI" id="7wzKMsIVvh$" role="3clFbG">
                        <node concept="2OqwBi" id="7wzKMsIVvSn" role="37vLTx">
                          <node concept="37vLTw" id="7wzKMsIVvyT" role="2Oq$k0">
                            <ref role="3cqZAo" node="7wzKMsIVkwM" resolve="sModel" />
                          </node>
                          <node concept="liA8E" id="7wzKMsIVwn7" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModelRoot():org.jetbrains.mps.openapi.persistence.ModelRoot" resolve="getModelRoot" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7wzKMsIVuZj" role="37vLTJ">
                          <ref role="3cqZAo" node="7wzKMsIVpuZ" resolve="root" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7wzKMsIVx55" role="3cqZAp">
                <node concept="37vLTI" id="7wzKMsJ3PCJ" role="3clFbG">
                  <node concept="37vLTw" id="7wzKMsJ3P1z" role="37vLTJ">
                    <ref role="3cqZAo" node="7NjRQfy0ZHn" resolve="aspectModel" />
                  </node>
                  <node concept="2YIFZM" id="7wzKMsIVyw6" role="37vLTx">
                    <ref role="1Pybhc" to="z1c4:~SModuleOperations" resolve="SModuleOperations" />
                    <ref role="37wK5l" to="z1c4:~SModuleOperations.createModelWithAdjustments(java.lang.String,org.jetbrains.mps.openapi.persistence.ModelRoot):org.jetbrains.mps.openapi.model.EditableSModel" resolve="createModelWithAdjustments" />
                    <node concept="3cpWs3" id="7wzKMsIV_zI" role="37wK5m">
                      <node concept="2OqwBi" id="7wzKMsIV$ir" role="3uHU7B">
                        <node concept="37vLTw" id="7wzKMsIVzQ_" role="2Oq$k0">
                          <ref role="3cqZAo" node="2$SWsiCtx0g" resolve="l" />
                        </node>
                        <node concept="liA8E" id="7wzKMsIV_3A" role="2OqNvi">
                          <ref role="37wK5l" to="z1c4:~AbstractModule.getModuleName():java.lang.String" resolve="getModuleName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7wzKMsIV_zO" role="3uHU7w">
                        <property role="Xl_RC" value=".rules" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7wzKMsIVzyc" role="37wK5m">
                      <ref role="3cqZAo" node="7wzKMsIVpuZ" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="7wzKMsIOiR2" role="3clFbw">
              <node concept="10Nm6u" id="7wzKMsIOiRc" role="3uHU7w" />
              <node concept="37vLTw" id="7wzKMsIOihR" role="3uHU7B">
                <ref role="3cqZAo" node="7NjRQfy0ZHn" resolve="aspectModel" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3E71z7urfTB" role="3cqZAp">
            <node concept="2YIFZM" id="7NjRQfy0XJn" role="3clFbG">
              <ref role="1Pybhc" to="3783:~ConceptAspectsHelper" resolve="ConceptAspectsHelper" />
              <ref role="37wK5l" to="3783:~ConceptAspectsHelper.attachNewConceptAspect(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SModel):org.jetbrains.mps.openapi.model.SNode" resolve="attachNewConceptAspect" />
              <node concept="1beSmn" id="7NjRQfy0XJp" role="37wK5m" />
              <node concept="2OqwBi" id="7NjRQfy0XJq" role="37wK5m">
                <node concept="35c_gC" id="7NjRQfy0XJr" role="2Oq$k0">
                  <ref role="35c_gD" to="7ggn:6HWpSUEuark" resolve="NodeRuleSet" />
                </node>
                <node concept="q_SaT" id="7NjRQfy0XJs" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="7NjRQfy10IH" role="37wK5m">
                <ref role="3cqZAo" node="7NjRQfy0ZHn" resolve="aspectModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2vPdvu" id="7POWRVZLtOx" role="2E2X74">
      <node concept="2vPdvi" id="7POWRVZLtOy" role="2vPdvg">
        <ref role="2vPdvl" to="w88:7POWRVZMxkx" resolve="Structure" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOz" role="2vPdvg">
        <ref role="2vPdvl" to="w88:2erTeUVF9WV" resolve="Editor" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtO$" role="2vPdvg">
        <ref role="2vPdvl" to="w88:2erTeUVFa2t" resolve="Constraints" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtO_" role="2vPdvg">
        <ref role="2vPdvl" to="w88:2erTeUVEQFB" resolve="Behavior" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOA" role="2vPdvg">
        <ref role="2vPdvl" to="w88:7POWRVZLtP_" resolve="Typesystem" />
      </node>
      <node concept="2vPdvi" id="3Qetf3cPeDq" role="2vPdvg">
        <ref role="2vPdvl" node="3E71z7ucbEa" resolve="Rules" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOB" role="2vPdvg">
        <ref role="2vPdvl" to="w88:2$SWsiCu1P0" resolve="Actions" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOC" role="2vPdvg">
        <ref role="2vPdvl" to="w88:7POWRVZLtD_" resolve="Refactorings" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOD" role="2vPdvg">
        <ref role="2vPdvl" to="w88:2erTeUVFcrJ" resolve="Intentions" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOE" role="2vPdvg">
        <ref role="2vPdvl" to="w88:2erTeUVFaZh" resolve="Find Usages" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOF" role="2vPdvg">
        <ref role="2vPdvl" to="w88:2erTeUVFaEE" resolve="Data Flow" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOG" role="2vPdvg">
        <ref role="2vPdvl" to="w88:2erTeUVF2dY" resolve="Generator" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOH" role="2vPdvg">
        <ref role="2vPdvl" to="w88:7POWRVZLtO0" resolve="Textgen" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7POWRVZMxfC">
    <property role="TrG5h" value="DclareConceptEditorOpenHelper" />
    <node concept="2YIFZL" id="7POWRVZMxfE" role="jymVt">
      <property role="TrG5h" value="getBaseNode" />
      <node concept="37vLTG" id="7POWRVZMxhx" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7POWRVZMxhy" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7POWRVZMxfH" role="3clF47">
        <node concept="3cpWs8" id="7POWRVZMxfI" role="3cqZAp">
          <node concept="3cpWsn" id="7POWRVZMxfJ" role="3cpWs9">
            <property role="TrG5h" value="baseNode" />
            <node concept="10Nm6u" id="7POWRVZMxfK" role="33vP2m" />
            <node concept="3Tqbb2" id="7POWRVZMxfL" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxfM" role="3cqZAp">
          <node concept="2OqwBi" id="7POWRVZMxfQ" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxglmXK" role="2Oq$k0">
              <ref role="3cqZAo" node="7POWRVZMxhx" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="7POWRVZMxfS" role="2OqNvi">
              <node concept="chp4Y" id="7POWRVZMxfT" role="cj9EA">
                <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7POWRVZMxfN" role="3clFbx">
            <node concept="3cpWs6" id="7POWRVZMxfO" role="3cqZAp">
              <node concept="10Nm6u" id="7POWRVZMxfP" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxfU" role="3cqZAp">
          <node concept="2OqwBi" id="7POWRVZMxg3" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm9b5" role="2Oq$k0">
              <ref role="3cqZAo" node="7POWRVZMxhx" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="7POWRVZMxg5" role="2OqNvi">
              <node concept="chp4Y" id="7POWRVZMxg6" role="cj9EA">
                <ref role="cht4Q" to="tpce:2hxg_BDjKM4" resolve="IConceptAspect" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7POWRVZMxfV" role="3clFbx">
            <node concept="3clFbF" id="7POWRVZMxfW" role="3cqZAp">
              <node concept="37vLTI" id="7POWRVZMxfX" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTt6l" role="37vLTJ">
                  <ref role="3cqZAo" node="7POWRVZMxfJ" resolve="baseNode" />
                </node>
                <node concept="2OqwBi" id="7POWRVZMxfY" role="37vLTx">
                  <node concept="2qgKlT" id="7POWRVZMxg1" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:2hxg_BDjKM8" resolve="getBaseConcept" />
                  </node>
                  <node concept="1PxgMI" id="7POWRVZMxfZ" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxglaz2" role="1m5AlR">
                      <ref role="3cqZAo" node="7POWRVZMxhx" resolve="node" />
                    </node>
                    <node concept="chp4Y" id="714IaVdH1$C" role="3oSUPX">
                      <ref role="cht4Q" to="tpce:2hxg_BDjKM4" resolve="IConceptAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxg7" role="3cqZAp">
          <node concept="3clFbC" id="7POWRVZMxge" role="3clFbw">
            <node concept="10Nm6u" id="7POWRVZMxgf" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTx7l" role="3uHU7B">
              <ref role="3cqZAo" node="7POWRVZMxfJ" resolve="baseNode" />
            </node>
          </node>
          <node concept="3clFbS" id="7POWRVZMxg8" role="3clFbx">
            <node concept="3clFbF" id="7POWRVZMxg9" role="3cqZAp">
              <node concept="37vLTI" id="7POWRVZMxga" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagT_oF" role="37vLTJ">
                  <ref role="3cqZAo" node="7POWRVZMxfJ" resolve="baseNode" />
                </node>
                <node concept="1rXfSq" id="4hiugqysj3o" role="37vLTx">
                  <ref role="37wK5l" node="7POWRVZMxhz" resolve="getBaseNode2" />
                  <node concept="37vLTw" id="2BHiRxgmzGm" role="37wK5m">
                    <ref role="3cqZAo" node="7POWRVZMxhx" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxgh" role="3cqZAp">
          <node concept="3clFbC" id="7POWRVZMxgl" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagT$o4" role="3uHU7B">
              <ref role="3cqZAo" node="7POWRVZMxfJ" resolve="baseNode" />
            </node>
            <node concept="10Nm6u" id="7POWRVZMxgm" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7POWRVZMxgi" role="3clFbx">
            <node concept="3cpWs6" id="7POWRVZMxgj" role="3cqZAp">
              <node concept="10Nm6u" id="7POWRVZMxgk" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7POWRVZMxgo" role="3cqZAp">
          <node concept="3SKdUq" id="7POWRVZMxgp" role="3SKWNk">
            <property role="3SKdUp" value="We should be sure that node and base node are inside the same module. " />
          </node>
        </node>
        <node concept="3SKdUt" id="7POWRVZMxgq" role="3cqZAp">
          <node concept="3SKdUq" id="7POWRVZMxgr" role="3SKWNk">
            <property role="3SKdUp" value="Otherwise, tabbed editor for base node will be opened, but there will be no tab for &quot;node&quot;" />
          </node>
        </node>
        <node concept="3SKdUt" id="7POWRVZMxgs" role="3cqZAp">
          <node concept="3SKdUq" id="7POWRVZMxgt" role="3SKWNk">
            <property role="3SKdUp" value="So, the user will not be able to open node by a double-click" />
          </node>
        </node>
        <node concept="3cpWs8" id="7POWRVZMxgu" role="3cqZAp">
          <node concept="3cpWsn" id="7POWRVZMxgv" role="3cpWs9">
            <property role="TrG5h" value="baseModelDesIcriptor" />
            <node concept="2JrnkZ" id="7POWRVZMxgy" role="33vP2m">
              <node concept="2OqwBi" id="7POWRVZMxgz" role="2JrQYb">
                <node concept="37vLTw" id="3GM_nagTw4I" role="2Oq$k0">
                  <ref role="3cqZAo" node="7POWRVZMxfJ" resolve="baseNode" />
                </node>
                <node concept="I4A8Y" id="7POWRVZMxg_" role="2OqNvi" />
              </node>
            </node>
            <node concept="3uibUv" id="7POWRVZMxgw" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7POWRVZMxgB" role="3cqZAp">
          <node concept="3cpWsn" id="7POWRVZMxgC" role="3cpWs9">
            <property role="TrG5h" value="mainModelDescriptor" />
            <node concept="2JrnkZ" id="7POWRVZMxgF" role="33vP2m">
              <node concept="2OqwBi" id="7POWRVZMxgG" role="2JrQYb">
                <node concept="37vLTw" id="2BHiRxgm9_1" role="2Oq$k0">
                  <ref role="3cqZAo" node="7POWRVZMxhx" resolve="node" />
                </node>
                <node concept="I4A8Y" id="7POWRVZMxgI" role="2OqNvi" />
              </node>
            </node>
            <node concept="3uibUv" id="7POWRVZMxgD" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxgK" role="3cqZAp">
          <node concept="3clFbC" id="7POWRVZMxgO" role="3clFbw">
            <node concept="10Nm6u" id="7POWRVZMxgP" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTBE2" role="3uHU7B">
              <ref role="3cqZAo" node="7POWRVZMxgC" resolve="mainModelDescriptor" />
            </node>
          </node>
          <node concept="3clFbS" id="7POWRVZMxgL" role="3clFbx">
            <node concept="3cpWs6" id="7POWRVZMxgM" role="3cqZAp">
              <node concept="10Nm6u" id="7POWRVZMxgN" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7POWRVZMxgR" role="3cqZAp">
          <node concept="3cpWsn" id="7POWRVZMxgS" role="3cpWs9">
            <property role="TrG5h" value="baseModule" />
            <node concept="2OqwBi" id="256tImPkKAF" role="33vP2m">
              <node concept="liA8E" id="256tImPkKAG" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              </node>
              <node concept="37vLTw" id="3GM_nagTuZ9" role="2Oq$k0">
                <ref role="3cqZAo" node="7POWRVZMxgv" resolve="baseModelDesIcriptor" />
              </node>
            </node>
            <node concept="3uibUv" id="7POWRVZMxgT" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7POWRVZMxgX" role="3cqZAp">
          <node concept="3cpWsn" id="7POWRVZMxgY" role="3cpWs9">
            <property role="TrG5h" value="mainModule" />
            <node concept="2OqwBi" id="256tImPkKwk" role="33vP2m">
              <node concept="liA8E" id="256tImPkKwl" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              </node>
              <node concept="37vLTw" id="3GM_nagTzkG" role="2Oq$k0">
                <ref role="3cqZAo" node="7POWRVZMxgC" resolve="mainModelDescriptor" />
              </node>
            </node>
            <node concept="3uibUv" id="7POWRVZMxgZ" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxh3" role="3cqZAp">
          <node concept="3clFbS" id="7POWRVZMxh4" role="3clFbx">
            <node concept="3clFbF" id="7POWRVZMxh5" role="3cqZAp">
              <node concept="37vLTI" id="7POWRVZMxh6" role="3clFbG">
                <node concept="2OqwBi" id="7POWRVZMxh7" role="37vLTx">
                  <node concept="1eOMI4" id="7POWRVZMxh8" role="2Oq$k0">
                    <node concept="10QFUN" id="7POWRVZMxh9" role="1eOMHV">
                      <node concept="37vLTw" id="3GM_nagT_5Z" role="10QFUP">
                        <ref role="3cqZAo" node="7POWRVZMxgY" resolve="mainModule" />
                      </node>
                      <node concept="3uibUv" id="7POWRVZMxhb" role="10QFUM">
                        <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7POWRVZMxhc" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~Generator.getSourceLanguage():jetbrains.mps.smodel.Language" resolve="getSourceLanguage" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTypw" role="37vLTJ">
                  <ref role="3cqZAo" node="7POWRVZMxgY" resolve="mainModule" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="7POWRVZMxhe" role="3clFbw">
            <node concept="3uibUv" id="7POWRVZMxhf" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
            </node>
            <node concept="37vLTw" id="3GM_nagTw_6" role="2ZW6bz">
              <ref role="3cqZAo" node="7POWRVZMxgY" resolve="mainModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxhh" role="3cqZAp">
          <node concept="3clFbS" id="7POWRVZMxhi" role="3clFbx">
            <node concept="3cpWs6" id="7POWRVZMxhj" role="3cqZAp">
              <node concept="10Nm6u" id="7POWRVZMxhk" role="3cqZAk" />
            </node>
          </node>
          <node concept="3y3z36" id="7POWRVZMxhl" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagT_lr" role="3uHU7B">
              <ref role="3cqZAo" node="7POWRVZMxgS" resolve="baseModule" />
            </node>
            <node concept="37vLTw" id="3GM_nagTx4B" role="3uHU7w">
              <ref role="3cqZAo" node="7POWRVZMxgY" resolve="mainModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxho" role="3cqZAp">
          <node concept="3fqX7Q" id="7POWRVZMxhp" role="3clFbw">
            <node concept="1rXfSq" id="4hiugqysraL" role="3fr31v">
              <ref role="37wK5l" node="7POWRVZMxik" resolve="canOpen" />
              <node concept="37vLTw" id="3GM_nagTsM$" role="37wK5m">
                <ref role="3cqZAo" node="7POWRVZMxfJ" resolve="baseNode" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7POWRVZMxhs" role="3clFbx">
            <node concept="3cpWs6" id="7POWRVZMxht" role="3cqZAp">
              <node concept="10Nm6u" id="7POWRVZMxhu" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7POWRVZMxhv" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTu77" role="3cqZAk">
            <ref role="3cqZAo" node="7POWRVZMxfJ" resolve="baseNode" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7POWRVZMxfG" role="1B3o_S" />
      <node concept="3Tqbb2" id="7POWRVZMxfF" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7POWRVZMxhz" role="jymVt">
      <property role="TrG5h" value="getBaseNode2" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="7POWRVZMxij" role="1B3o_S" />
      <node concept="3Tqbb2" id="7POWRVZMxh$" role="3clF45" />
      <node concept="37vLTG" id="7POWRVZMxh_" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7POWRVZMxhA" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7POWRVZMxhB" role="3clF47">
        <node concept="3clFbJ" id="7POWRVZMxhC" role="3cqZAp">
          <node concept="3clFbC" id="7POWRVZMxhD" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgmvJu" role="3uHU7B">
              <ref role="3cqZAo" node="7POWRVZMxh_" resolve="node" />
            </node>
            <node concept="10Nm6u" id="7POWRVZMxhF" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7POWRVZMxhG" role="3clFbx">
            <node concept="3cpWs6" id="7POWRVZMxhH" role="3cqZAp">
              <node concept="10Nm6u" id="7POWRVZMxhI" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7POWRVZMxhJ" role="3cqZAp">
          <node concept="3cpWsn" id="7POWRVZMxhK" role="3cpWs9">
            <property role="TrG5h" value="baseNode" />
            <node concept="3Tqbb2" id="7POWRVZMxhL" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
            </node>
            <node concept="1rXfSq" id="4hiugqysmpa" role="33vP2m">
              <ref role="37wK5l" node="7POWRVZMxiV" resolve="findBaseNodeMultiTab" />
              <node concept="37vLTw" id="2BHiRxgl1vd" role="37wK5m">
                <ref role="3cqZAo" node="7POWRVZMxh_" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxhO" role="3cqZAp">
          <node concept="3clFbS" id="7POWRVZMxie" role="3clFbx">
            <node concept="3cpWs6" id="7POWRVZMxif" role="3cqZAp">
              <node concept="10Nm6u" id="7POWRVZMxig" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="7POWRVZMxhP" role="3clFbw">
            <node concept="22lmx$" id="7POWRVZMxhQ" role="3uHU7B">
              <node concept="2OqwBi" id="7POWRVZMxhR" role="3uHU7B">
                <node concept="3w_OXm" id="7POWRVZMxhT" role="2OqNvi" />
                <node concept="37vLTw" id="3GM_nagTuBK" role="2Oq$k0">
                  <ref role="3cqZAo" node="7POWRVZMxhK" resolve="baseNode" />
                </node>
              </node>
              <node concept="3clFbC" id="7POWRVZMxhU" role="3uHU7w">
                <node concept="2YIFZM" id="7POWRVZMxhV" role="3uHU7B">
                  <ref role="37wK5l" to="iwwu:i0YipiN" resolve="getDeclaringLanguage" />
                  <ref role="1Pybhc" to="iwwu:i0YipgJ" resolve="SModelUtil" />
                  <node concept="37vLTw" id="3GM_nagTv1O" role="37wK5m">
                    <ref role="3cqZAo" node="7POWRVZMxhK" resolve="baseNode" />
                  </node>
                </node>
                <node concept="10Nm6u" id="7POWRVZMxhX" role="3uHU7w" />
              </node>
            </node>
            <node concept="1eOMI4" id="7POWRVZMxhY" role="3uHU7w">
              <node concept="3fqX7Q" id="7POWRVZMxi9" role="1eOMHV">
                <node concept="2YIFZM" id="7POWRVZMxia" role="3fr31v">
                  <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                  <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel):boolean" resolve="isGeneratorModel" />
                  <node concept="2OqwBi" id="7POWRVZMxib" role="37wK5m">
                    <node concept="I4A8Y" id="7POWRVZMxid" role="2OqNvi" />
                    <node concept="37vLTw" id="2BHiRxglB3e" role="2Oq$k0">
                      <ref role="3cqZAo" node="7POWRVZMxh_" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7POWRVZMxih" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTwUf" role="3cqZAk">
            <ref role="3cqZAo" node="7POWRVZMxhK" resolve="baseNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="7POWRVZMxik" role="jymVt">
      <property role="TrG5h" value="canOpen" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="7POWRVZMxio" role="3clF47">
        <node concept="3clFbJ" id="7POWRVZMxip" role="3cqZAp">
          <node concept="3fqX7Q" id="7POWRVZMxit" role="3clFbw">
            <node concept="2OqwBi" id="7POWRVZMxiu" role="3fr31v">
              <node concept="37vLTw" id="2BHiRxgm7ZZ" role="2Oq$k0">
                <ref role="3cqZAo" node="7POWRVZMxim" resolve="node" />
              </node>
              <node concept="1mIQ4w" id="7POWRVZMxiw" role="2OqNvi">
                <node concept="chp4Y" id="7POWRVZMxix" role="cj9EA">
                  <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7POWRVZMxiq" role="3clFbx">
            <node concept="3cpWs6" id="7POWRVZMxir" role="3cqZAp">
              <node concept="3clFbT" id="7POWRVZMxis" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxiy" role="3cqZAp">
          <node concept="3clFbC" id="7POWRVZMxiA" role="3clFbw">
            <node concept="10Nm6u" id="7POWRVZMxiE" role="3uHU7w" />
            <node concept="2YIFZM" id="7POWRVZMxiB" role="3uHU7B">
              <ref role="37wK5l" to="iwwu:i0YipiN" resolve="getDeclaringLanguage" />
              <ref role="1Pybhc" to="iwwu:i0YipgJ" resolve="SModelUtil" />
              <node concept="1PxgMI" id="7POWRVZMxiC" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxgmax1" role="1m5AlR">
                  <ref role="3cqZAo" node="7POWRVZMxim" resolve="node" />
                </node>
                <node concept="chp4Y" id="714IaVdH1$_" role="3oSUPX">
                  <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7POWRVZMxiz" role="3clFbx">
            <node concept="3cpWs6" id="7POWRVZMxi$" role="3cqZAp">
              <node concept="3clFbT" id="7POWRVZMxi_" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7POWRVZMxiS" role="3cqZAp">
          <node concept="3clFbT" id="7POWRVZMxiT" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7POWRVZMxim" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7POWRVZMxin" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="7POWRVZMxil" role="3clF45" />
      <node concept="3Tm6S6" id="7POWRVZMxiU" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="7POWRVZMxiV" role="jymVt">
      <property role="TrG5h" value="findBaseNodeMultiTab" />
      <property role="DiZV1" value="false" />
      <node concept="3Tqbb2" id="7POWRVZMxiW" role="3clF45">
        <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
      <node concept="37vLTG" id="7POWRVZMxiX" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7POWRVZMxiY" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7POWRVZMxiZ" role="3clF47">
        <node concept="3cpWs8" id="7POWRVZMxj0" role="3cqZAp">
          <node concept="3cpWsn" id="7POWRVZMxj1" role="3cpWs9">
            <property role="TrG5h" value="baseNode" />
            <node concept="10Nm6u" id="7POWRVZMxj3" role="33vP2m" />
            <node concept="3Tqbb2" id="7POWRVZMxj2" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxj4" role="3cqZAp">
          <node concept="3clFbS" id="7POWRVZMxje" role="3clFbx">
            <node concept="3cpWs8" id="7POWRVZMxjf" role="3cqZAp">
              <node concept="3cpWsn" id="7POWRVZMxjg" role="3cpWs9">
                <property role="TrG5h" value="bc" />
                <node concept="1PxgMI" id="7POWRVZMxji" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxgl3Ej" role="1m5AlR">
                    <ref role="3cqZAo" node="7POWRVZMxiX" resolve="node" />
                  </node>
                  <node concept="chp4Y" id="714IaVdH1$$" role="3oSUPX">
                    <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                  </node>
                </node>
                <node concept="3Tqbb2" id="7POWRVZMxjh" role="1tU5fm">
                  <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7POWRVZMxjk" role="3cqZAp">
              <node concept="3cpWsn" id="7POWRVZMxjl" role="3cpWs9">
                <property role="TrG5h" value="annotation" />
                <node concept="3Tqbb2" id="7POWRVZMxjq" role="1tU5fm">
                  <ref role="ehGHo" to="tpf8:h0n94ik" resolve="RootTemplateAnnotation" />
                </node>
                <node concept="2OqwBi" id="7POWRVZMxjm" role="33vP2m">
                  <node concept="3CFZ6_" id="7POWRVZMxjo" role="2OqNvi">
                    <node concept="3CFYIy" id="7POWRVZMxjp" role="3CFYIz">
                      <ref role="3CFYIx" to="tpf8:h0n94ik" resolve="RootTemplateAnnotation" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTtcU" role="2Oq$k0">
                    <ref role="3cqZAo" node="7POWRVZMxjg" resolve="bc" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7POWRVZMxjr" role="3cqZAp">
              <node concept="1Wc70l" id="7POWRVZMxjs" role="3clFbw">
                <node concept="2OqwBi" id="7POWRVZMxjt" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTyoD" role="2Oq$k0">
                    <ref role="3cqZAo" node="7POWRVZMxjl" resolve="annotation" />
                  </node>
                  <node concept="3x8VRR" id="7POWRVZMxjv" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="7POWRVZMxjw" role="3uHU7w">
                  <node concept="2OqwBi" id="7POWRVZMxjx" role="2Oq$k0">
                    <node concept="3TrEf2" id="7POWRVZMxjz" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:h0n9lNf" resolve="applicableConcept" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagT_KZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="7POWRVZMxjl" resolve="annotation" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="7POWRVZMxj$" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbS" id="7POWRVZMxj_" role="3clFbx">
                <node concept="3clFbF" id="7POWRVZMxjA" role="3cqZAp">
                  <node concept="37vLTI" id="7POWRVZMxjB" role="3clFbG">
                    <node concept="2OqwBi" id="7POWRVZMxjD" role="37vLTx">
                      <node concept="3TrEf2" id="7POWRVZMxjF" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpf8:h0n9lNf" resolve="applicableConcept" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTrOU" role="2Oq$k0">
                        <ref role="3cqZAo" node="7POWRVZMxjl" resolve="annotation" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagTApV" role="37vLTJ">
                      <ref role="3cqZAo" node="7POWRVZMxj1" resolve="baseNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7POWRVZMxj5" role="3clFbw">
            <node concept="2YIFZM" id="2k9fL4dT0$G" role="3uHU7B">
              <ref role="37wK5l" to="unno:2k9fL4dNTIq" resolve="isRoot" />
              <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
              <node concept="2JrnkZ" id="2k9fL4dT0$H" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxghgsn" role="2JrQYb">
                  <ref role="3cqZAo" node="7POWRVZMxiX" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7POWRVZMxja" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxglQ$Y" role="2Oq$k0">
                <ref role="3cqZAo" node="7POWRVZMxiX" resolve="node" />
              </node>
              <node concept="1mIQ4w" id="7POWRVZMxjc" role="2OqNvi">
                <node concept="chp4Y" id="7POWRVZMxjd" role="cj9EA">
                  <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxjG" role="3cqZAp">
          <node concept="2OqwBi" id="7POWRVZMxjH" role="3clFbw">
            <node concept="3w_OXm" id="7POWRVZMxjJ" role="2OqNvi" />
            <node concept="37vLTw" id="3GM_nagTxnE" role="2Oq$k0">
              <ref role="3cqZAo" node="7POWRVZMxj1" resolve="baseNode" />
            </node>
          </node>
          <node concept="3clFbS" id="7POWRVZMxjK" role="3clFbx">
            <node concept="3cpWs6" id="7POWRVZMxjL" role="3cqZAp">
              <node concept="10Nm6u" id="7POWRVZMxjM" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7POWRVZMxjN" role="3cqZAp">
          <node concept="3cpWsn" id="7POWRVZMxjO" role="3cpWs9">
            <property role="TrG5h" value="baseNodeModule" />
            <node concept="2OqwBi" id="256tImPkKEo" role="33vP2m">
              <node concept="2JrnkZ" id="256tImPkKEr" role="2Oq$k0">
                <node concept="2OqwBi" id="256tImPkKEs" role="2JrQYb">
                  <node concept="37vLTw" id="3GM_nagTv4E" role="2Oq$k0">
                    <ref role="3cqZAo" node="7POWRVZMxj1" resolve="baseNode" />
                  </node>
                  <node concept="I4A8Y" id="256tImPkKEu" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="256tImPkKEp" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              </node>
            </node>
            <node concept="3uibUv" id="7POWRVZMxjP" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7POWRVZMxjY" role="3cqZAp">
          <node concept="3cpWsn" id="7POWRVZMxjZ" role="3cpWs9">
            <property role="TrG5h" value="nodeModule" />
            <node concept="2OqwBi" id="256tImPkKyF" role="33vP2m">
              <node concept="2JrnkZ" id="256tImPkKyJ" role="2Oq$k0">
                <node concept="2OqwBi" id="256tImPkKyK" role="2JrQYb">
                  <node concept="37vLTw" id="2BHiRxgmpbT" role="2Oq$k0">
                    <ref role="3cqZAo" node="7POWRVZMxiX" resolve="node" />
                  </node>
                  <node concept="I4A8Y" id="256tImPkKyM" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="256tImPkKyG" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              </node>
            </node>
            <node concept="3uibUv" id="7POWRVZMxk0" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxk9" role="3cqZAp">
          <node concept="3clFbS" id="7POWRVZMxkd" role="3clFbx">
            <node concept="3clFbF" id="7POWRVZMxke" role="3cqZAp">
              <node concept="37vLTI" id="7POWRVZMxkf" role="3clFbG">
                <node concept="2OqwBi" id="7POWRVZMxkh" role="37vLTx">
                  <node concept="liA8E" id="7POWRVZMxkm" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~Generator.getSourceLanguage():jetbrains.mps.smodel.Language" resolve="getSourceLanguage" />
                  </node>
                  <node concept="1eOMI4" id="7POWRVZMxki" role="2Oq$k0">
                    <node concept="10QFUN" id="7POWRVZMxkj" role="1eOMHV">
                      <node concept="3uibUv" id="7POWRVZMxkl" role="10QFUM">
                        <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTvOA" role="10QFUP">
                        <ref role="3cqZAo" node="7POWRVZMxjZ" resolve="nodeModule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTxrz" role="37vLTJ">
                  <ref role="3cqZAo" node="7POWRVZMxjZ" resolve="nodeModule" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="7POWRVZMxka" role="3clFbw">
            <node concept="3uibUv" id="7POWRVZMxkc" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
            </node>
            <node concept="37vLTw" id="3GM_nagT_WT" role="2ZW6bz">
              <ref role="3cqZAo" node="7POWRVZMxjZ" resolve="nodeModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxkn" role="3cqZAp">
          <node concept="3y3z36" id="7POWRVZMxko" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTsfD" role="3uHU7B">
              <ref role="3cqZAo" node="7POWRVZMxjO" resolve="baseNodeModule" />
            </node>
            <node concept="37vLTw" id="3GM_nagTxSl" role="3uHU7w">
              <ref role="3cqZAo" node="7POWRVZMxjZ" resolve="nodeModule" />
            </node>
          </node>
          <node concept="3clFbS" id="7POWRVZMxkr" role="3clFbx">
            <node concept="3cpWs6" id="7POWRVZMxks" role="3cqZAp">
              <node concept="10Nm6u" id="7POWRVZMxkt" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7POWRVZMxku" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTxcW" role="3cqZAk">
            <ref role="3cqZAo" node="7POWRVZMxj1" resolve="baseNode" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7POWRVZMxkw" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="7POWRVZMxfD" role="1B3o_S" />
  </node>
  <node concept="sE7Ow" id="18IIFqBWWhG">
    <property role="TrG5h" value="ExtractAttribute" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Extract Attribute" />
    <node concept="2S4$dB" id="cvGLnZnRov" role="1NuT2Z">
      <property role="TrG5h" value="target" />
      <node concept="3Tm6S6" id="cvGLnZnRow" role="1B3o_S" />
      <node concept="3Tqbb2" id="cvGLnZnRox" role="1tU5fm" />
      <node concept="1oajcY" id="cvGLnZnRoy" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="cvGLnZnRoz" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="cvGLnZnRo$" role="1oa70y" />
    </node>
    <node concept="tnohg" id="18IIFqBWWhH" role="tncku">
      <node concept="3clFbS" id="18IIFqBWWhI" role="2VODD2">
        <node concept="3clFbF" id="18IIFqBX4gA" role="3cqZAp">
          <node concept="2OqwBi" id="3dReA4l3cdd" role="3clFbG">
            <node concept="liA8E" id="3dReA4l3cdf" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadInEDT(java.lang.Runnable):void" resolve="runReadInEDT" />
              <node concept="2ShNRf" id="3dReA4l3cdg" role="37wK5m">
                <node concept="YeOm9" id="3dReA4l3cdh" role="2ShVmc">
                  <node concept="1Y3b0j" id="3dReA4l3cdi" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="3dReA4l3cdj" role="1B3o_S" />
                    <node concept="3clFb_" id="3dReA4l3cdk" role="jymVt">
                      <property role="IEkAT" value="false" />
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="3dReA4l3cdl" role="1B3o_S" />
                      <node concept="3cqZAl" id="3dReA4l3cdm" role="3clF45" />
                      <node concept="3clFbS" id="3dReA4l3cdn" role="3clF47">
                        <node concept="3clFbJ" id="6HfXUkaV7Uv" role="3cqZAp">
                          <node concept="3fqX7Q" id="3GwZr6sfiO1" role="3clFbw">
                            <node concept="2YIFZM" id="3GwZr6sfiO2" role="3fr31v">
                              <ref role="1Pybhc" to="mhbf:~SNodeUtil" resolve="SNodeUtil" />
                              <ref role="37wK5l" to="mhbf:~SNodeUtil.isAccessible(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository):boolean" resolve="isAccessible" />
                              <node concept="2OqwBi" id="CJPgsJaz3f" role="37wK5m">
                                <node concept="2WthIp" id="CJPgsJaz3i" role="2Oq$k0">
                                  <ref role="32nkFo" node="18IIFqBWWhG" resolve="ExtractAttribute" />
                                </node>
                                <node concept="3gHZIF" id="CJPgsJaz3k" role="2OqNvi">
                                  <ref role="2WH_rO" node="cvGLnZnRov" resolve="target" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="CJPgsJay2X" role="37wK5m">
                                <node concept="2OqwBi" id="CJPgsJaxMN" role="2Oq$k0">
                                  <node concept="2WthIp" id="CJPgsJaxMQ" role="2Oq$k0">
                                    <ref role="32nkFo" node="18IIFqBWWhG" resolve="ExtractAttribute" />
                                  </node>
                                  <node concept="1DTwFV" id="CJPgsJaxMS" role="2OqNvi">
                                    <ref role="2WH_rO" node="cvGLnZnRoz" resolve="project" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="CJPgsJayBi" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c4:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="6HfXUkaV7Uw" role="3clFbx">
                            <node concept="3cpWs6" id="6HfXUkaV7Ux" role="3cqZAp" />
                          </node>
                        </node>
                        <node concept="1Xdei3" id="cvGLnZnRoh" role="3cqZAp">
                          <ref role="1Xdeis" to="8a6h:18IIFqBwrS4" resolve="ExpressionToAttribute" />
                          <node concept="2OqwBi" id="cvGLnZnRoi" role="1Xdeiv">
                            <node concept="2WthIp" id="cvGLnZnRoj" role="2Oq$k0" />
                            <node concept="3gHZIF" id="cvGLnZnRok" role="2OqNvi">
                              <ref role="2WH_rO" node="cvGLnZnRov" resolve="target" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="cvGLnZnRol" role="1Xdeit">
                            <node concept="2WthIp" id="cvGLnZnRom" role="2Oq$k0" />
                            <node concept="1DTwFV" id="cvGLnZnRon" role="2OqNvi">
                              <ref role="2WH_rO" node="cvGLnZnRoz" resolve="project" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_UCUt" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="CJPgsJawAE" role="2Oq$k0">
              <node concept="2OqwBi" id="CJPgsJawAF" role="2Oq$k0">
                <node concept="2WthIp" id="CJPgsJawAG" role="2Oq$k0" />
                <node concept="1DTwFV" id="18IIFqBX6YW" role="2OqNvi">
                  <ref role="2WH_rO" node="cvGLnZnRoz" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="CJPgsJawAI" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="18IIFqBX3Sd" role="tmbBb">
      <node concept="3clFbS" id="18IIFqBX3Se" role="2VODD2">
        <node concept="3clFbF" id="cvGLnZnRoq" role="3cqZAp">
          <node concept="3trCAK" id="cvGLnZnRor" role="3clFbG">
            <ref role="3trCAN" to="8a6h:18IIFqBwrS4" resolve="ExpressionToAttribute" />
            <node concept="2OqwBi" id="cvGLnZnRos" role="3trCLF">
              <node concept="2WthIp" id="cvGLnZnRot" role="2Oq$k0" />
              <node concept="3gHZIF" id="18IIFqBX7oM" role="2OqNvi">
                <ref role="2WH_rO" node="cvGLnZnRov" resolve="target" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="18IIFqBXqeu">
    <property role="TrG5h" value="RefactoringAddition" />
    <node concept="tT9cl" id="cvGLnZnRr8" role="2f5YQi">
      <ref role="tU$_T" to="9oh:5OJQJ_HXTB6" resolve="NodeRefactoring" />
    </node>
    <node concept="ftmFs" id="18IIFqBXqew" role="ftER_">
      <node concept="tCFHf" id="18IIFqBXqez" role="ftvYc">
        <ref role="tCJdB" node="18IIFqBWWhG" resolve="ExtractAttribute" />
      </node>
    </node>
  </node>
</model>

