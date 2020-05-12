<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:484d68ee-91ab-4199-84e9-f43210a9918b(DclareMPSPlugin.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="69b8a993-9b87-4d96-bf0c-3559f4bb0c63" name="jetbrains.mps.lang.slanguage" version="0" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="3ecd7c84-cde3-45de-886c-135ecc69b742" name="jetbrains.mps.lang.refactoring" version="0" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
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
    <import index="8a6h" ref="r:66be19c1-5b29-480c-8d33-33b23b1579f6(DclareMPS.refactorings)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="9oh" ref="r:de82dfab-9448-49ba-813e-2b0579f7fb15(jetbrains.mps.ide.platform.actions)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="25x5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.text(JDK/)" />
    <import index="jtsr" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.project(MPS.OpenAPI/)" />
    <import index="42m3" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.collections.util(DclareMPSRuntime/)" />
    <import index="zrbp" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.collections(DclareMPSRuntime/)" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="wknp" ref="r:9a42e459-6b0e-4c37-8fab-9b46bab588bd(DclareMessages.structure)" />
    <import index="kag7" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.dclare(DclareMPSRuntime/)" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" implicit="true" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" implicit="true" />
    <import index="akim" ref="r:36c1ea3b-fbca-41f9-87cc-9bacb8f18c30(DclareMessages.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.FileIcon" flags="ng" index="1QGGSu">
        <property id="2756621024541341363" name="file" index="1iqoE4" />
      </concept>
    </language>
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
      <concept id="1203071677434" name="jetbrains.mps.lang.plugin.structure.ToolDeclaration" flags="ng" index="sEfby">
        <child id="1214307129846" name="getComponentBlock" index="2Um5zG" />
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
      <concept id="1213888653896" name="jetbrains.mps.lang.plugin.structure.InitBlock" flags="in" index="2xpIHi" />
      <concept id="1213888677711" name="jetbrains.mps.lang.plugin.structure.DisposeBlock" flags="in" index="2xpOpl" />
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
      <concept id="1214307303872" name="jetbrains.mps.lang.plugin.structure.GetComponentBlock" flags="in" index="2UmK3q" />
      <concept id="6547237850567458268" name="jetbrains.mps.lang.plugin.structure.BaseToolDeclaration" flags="ng" index="2XNcJY">
        <property id="6547237850567462620" name="caption" index="2XNbzY" />
        <child id="8096638938275469615" name="toolDisposeBlock" index="uR5co" />
        <child id="8096638938275469614" name="toolInitBlock" index="uR5cp" />
        <child id="6547237850567462849" name="fieldDeclaration" index="2XNbBz" />
        <child id="6791676465872004185" name="toolIcon" index="1nVCmq" />
      </concept>
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
      <concept id="1208528650020" name="jetbrains.mps.lang.plugin.structure.ToolType" flags="in" index="1xUVSX">
        <reference id="1208529537963" name="tool" index="1xYkEM" />
      </concept>
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
      <concept id="681855071694758165" name="jetbrains.mps.lang.plugin.standalone.structure.GetToolInProjectOperation" flags="nn" index="LR4U6">
        <reference id="681855071694758166" name="tool" index="LR4U5" />
      </concept>
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1224573963862" name="jetbrains.mps.baseLanguage.structure.EnumValuesExpression" flags="nn" index="uiWXb">
        <reference id="1224573974191" name="enumClass" index="uiZuM" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
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
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1206482823744" name="jetbrains.mps.lang.smodel.structure.Model_AddRootOperation" flags="nn" index="3BYIHo">
        <child id="1206482823746" name="nodeArgument" index="3BYIHq" />
      </concept>
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
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
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.&lt;init&gt;(jetbrains.mps.project.ProjectBase,org.modelingvalue.dclare.mps.StartStopHandler)" resolve="DclareForMPSEngine" />
                <node concept="1KvdUw" id="5LbVSrDCoTX" role="37wK5m" />
                <node concept="2ShNRf" id="QlQbLbRF9I" role="37wK5m">
                  <node concept="1pGfFk" id="1sOlkZtHHye" role="2ShVmc">
                    <ref role="37wK5l" node="1sOlkZtGUn4" resolve="StartStopTransaction" />
                    <node concept="2OqwBi" id="1sOlkZtHIl9" role="37wK5m">
                      <node concept="1KvdUw" id="1sOlkZtHHOp" role="2Oq$k0" />
                      <node concept="liA8E" id="1sOlkZtHJ40" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                      </node>
                    </node>
                  </node>
                </node>
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
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="2OqwBi" id="4o9njCw5Dy5" role="37wK5m">
                <node concept="1KvdUw" id="4o9njCw5oOL" role="2Oq$k0" />
                <node concept="liA8E" id="4o9njCw5EnJ" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
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
              <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.stop()" resolve="stop" />
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
              <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
              <node concept="2OqwBi" id="5LbVSrDCo1B" role="37wK5m">
                <node concept="1KvdUw" id="5LbVSrDCo1C" role="2Oq$k0" />
                <node concept="liA8E" id="5LbVSrDCo1D" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
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
    <node concept="34jfKJ" id="5LbVSrDAu_C" role="34lFYf">
      <property role="TrG5h" value="on" />
      <node concept="10P_77" id="5LbVSrDAu_D" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="GLgNzrkAU0" role="34lFYf">
      <property role="TrG5h" value="maxNrOfChanges" />
      <node concept="10Oyi0" id="GLgNzrkBIh" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="GLgNzrkGxI" role="34lFYf">
      <property role="TrG5h" value="maxTotalNrOfChanges" />
      <node concept="10Oyi0" id="GLgNzrkHla" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="1RIwjuNzktC" role="34lFYf">
      <property role="TrG5h" value="maxNrOfObserd" />
      <node concept="10Oyi0" id="1RIwjuNzmEk" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="1RIwjuNzsTl" role="34lFYf">
      <property role="TrG5h" value="maxNrOfObservers" />
      <node concept="10Oyi0" id="1RIwjuNzsTm" role="1tU5fm" />
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
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int)" resolve="getComponent" />
                    <node concept="3cmrfG" id="GLgNzrs0FQ" role="37wK5m">
                      <property role="3cmrfH" value="1" />
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
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int)" resolve="getComponent" />
                    <node concept="3cmrfG" id="IcHFOt4nMs" role="37wK5m">
                      <property role="3cmrfH" value="3" />
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
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int)" resolve="getComponent" />
                    <node concept="3cmrfG" id="IcHFOt4oS$" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1RIwjuNAsJn" role="3cqZAp">
            <node concept="3cpWsn" id="1RIwjuNAsJo" role="3cpWs9">
              <property role="TrG5h" value="maxObserved" />
              <node concept="3uibUv" id="1RIwjuNAsJp" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="1RIwjuNAsJq" role="33vP2m">
                <node concept="3uibUv" id="1RIwjuNAsJr" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2OqwBi" id="1RIwjuNAsJs" role="10QFUP">
                  <node concept="3yMSdA" id="1RIwjuNAsJt" role="2Oq$k0" />
                  <node concept="liA8E" id="1RIwjuNAsJu" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int)" resolve="getComponent" />
                    <node concept="3cmrfG" id="1RIwjuNAsJv" role="37wK5m">
                      <property role="3cmrfH" value="7" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1RIwjuNAuvc" role="3cqZAp">
            <node concept="3cpWsn" id="1RIwjuNAuvd" role="3cpWs9">
              <property role="TrG5h" value="maxObservers" />
              <node concept="3uibUv" id="1RIwjuNAuve" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="1RIwjuNAuvf" role="33vP2m">
                <node concept="3uibUv" id="1RIwjuNAuvg" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2OqwBi" id="1RIwjuNAuvh" role="10QFUP">
                  <node concept="3yMSdA" id="1RIwjuNAuvi" role="2Oq$k0" />
                  <node concept="liA8E" id="1RIwjuNAuvj" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int)" resolve="getComponent" />
                    <node concept="3cmrfG" id="1RIwjuNAuvk" role="37wK5m">
                      <property role="3cmrfH" value="9" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1RIwjuNArva" role="3cqZAp" />
          <node concept="3clFbF" id="4Y8BM43MyUx" role="3cqZAp">
            <node concept="22lmx$" id="1RIwjuNAwm9" role="3clFbG">
              <node concept="3y3z36" id="4Y8BM43MPjR" role="3uHU7w">
                <node concept="2OqwBi" id="4Y8BM43MMMq" role="3uHU7B">
                  <node concept="37vLTw" id="5LbVSrDBHwP" role="2Oq$k0">
                    <ref role="3cqZAo" node="5LbVSrDBAzy" resolve="onBox" />
                  </node>
                  <node concept="liA8E" id="4Y8BM43MOed" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4Y8BM43MP47" role="3uHU7w">
                  <node concept="2WthIp" id="4Y8BM43MP4a" role="2Oq$k0" />
                  <node concept="34pFcN" id="5LbVSrDBIXk" role="2OqNvi">
                    <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="on" />
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="1RIwjuNAyYC" role="3uHU7B">
                <node concept="22lmx$" id="IcHFOt4LZd" role="3uHU7B">
                  <node concept="22lmx$" id="GLgNzrngWV" role="3uHU7B">
                    <node concept="17QLQc" id="GLgNzrn04S" role="3uHU7B">
                      <node concept="0kSF2" id="GLgNzrmW8v" role="3uHU7B">
                        <node concept="3uibUv" id="GLgNzrmXl5" role="0kSFW">
                          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                        </node>
                        <node concept="2OqwBi" id="GLgNzrmS14" role="0kSFX">
                          <node concept="37vLTw" id="GLgNzrmQtq" role="2Oq$k0">
                            <ref role="3cqZAo" node="GLgNzrm$NJ" resolve="max" />
                          </node>
                          <node concept="liA8E" id="GLgNzrmU20" role="2OqNvi">
                            <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
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
                    <node concept="17QLQc" id="GLgNzrntsj" role="3uHU7w">
                      <node concept="0kSF2" id="GLgNzrnpqR" role="3uHU7B">
                        <node concept="3uibUv" id="GLgNzrnqCZ" role="0kSFW">
                          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                        </node>
                        <node concept="2OqwBi" id="GLgNzrnlg9" role="0kSFX">
                          <node concept="37vLTw" id="GLgNzrnjDu" role="2Oq$k0">
                            <ref role="3cqZAo" node="GLgNzrmAOV" resolve="maxTotal" />
                          </node>
                          <node concept="liA8E" id="GLgNzrnniB" role="2OqNvi">
                            <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="GLgNzrnzLZ" role="3uHU7w">
                        <node concept="2WthIp" id="GLgNzrnyAX" role="2Oq$k0" />
                        <node concept="34pFcN" id="GLgNzrn$SX" role="2OqNvi">
                          <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17QLQc" id="1RIwjuNANZm" role="3uHU7w">
                    <node concept="2OqwBi" id="1RIwjuNARh2" role="3uHU7w">
                      <node concept="2WthIp" id="1RIwjuNAPN7" role="2Oq$k0" />
                      <node concept="34pFcN" id="1RIwjuNASEz" role="2OqNvi">
                        <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserd" />
                      </node>
                    </node>
                    <node concept="0kSF2" id="1RIwjuNAIjj" role="3uHU7B">
                      <node concept="3uibUv" id="1RIwjuNAK4G" role="0kSFW">
                        <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                      </node>
                      <node concept="2OqwBi" id="1RIwjuNACTi" role="0kSFX">
                        <node concept="37vLTw" id="1RIwjuNAAS2" role="2Oq$k0">
                          <ref role="3cqZAo" node="1RIwjuNAsJo" resolve="maxObserved" />
                        </node>
                        <node concept="liA8E" id="1RIwjuNAF25" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="17QLQc" id="1RIwjuNAU07" role="3uHU7w">
                  <node concept="2OqwBi" id="1RIwjuNAU08" role="3uHU7w">
                    <node concept="2WthIp" id="1RIwjuNAU09" role="2Oq$k0" />
                    <node concept="34pFcN" id="1RIwjuNAXnl" role="2OqNvi">
                      <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
                    </node>
                  </node>
                  <node concept="0kSF2" id="1RIwjuNAU0b" role="3uHU7B">
                    <node concept="3uibUv" id="1RIwjuNAU0c" role="0kSFW">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                    <node concept="2OqwBi" id="1RIwjuNAU0d" role="0kSFX">
                      <node concept="37vLTw" id="1RIwjuNAVTs" role="2Oq$k0">
                        <ref role="3cqZAo" node="1RIwjuNAuvd" resolve="maxObservers" />
                      </node>
                      <node concept="liA8E" id="1RIwjuNAU0f" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
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
          <node concept="3clFbJ" id="1RIwjuN$cAl" role="3cqZAp">
            <node concept="3clFbS" id="1RIwjuN$cAm" role="3clFbx">
              <node concept="3clFbF" id="1RIwjuN$cAn" role="3cqZAp">
                <node concept="37vLTI" id="1RIwjuN$cAo" role="3clFbG">
                  <node concept="2OqwBi" id="1RIwjuN$cAp" role="37vLTJ">
                    <node concept="2WthIp" id="1RIwjuN$cAq" role="2Oq$k0" />
                    <node concept="34pFcN" id="1RIwjuN$cAr" role="2OqNvi">
                      <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserd" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1RIwjuN$cAs" role="37vLTx">
                    <property role="3cmrfH" value="16" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2dkUwp" id="1RIwjuN$cAt" role="3clFbw">
              <node concept="2OqwBi" id="1RIwjuN$cAu" role="3uHU7B">
                <node concept="2WthIp" id="1RIwjuN$cAv" role="2Oq$k0" />
                <node concept="34pFcN" id="1RIwjuN$cAw" role="2OqNvi">
                  <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserd" />
                </node>
              </node>
              <node concept="3cmrfG" id="1RIwjuN$cAx" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1RIwjuN$eAH" role="3cqZAp">
            <node concept="3clFbS" id="1RIwjuN$eAI" role="3clFbx">
              <node concept="3clFbF" id="1RIwjuN$eAJ" role="3cqZAp">
                <node concept="37vLTI" id="1RIwjuN$eAK" role="3clFbG">
                  <node concept="2OqwBi" id="1RIwjuN$eAL" role="37vLTJ">
                    <node concept="2WthIp" id="1RIwjuN$eAM" role="2Oq$k0" />
                    <node concept="34pFcN" id="1RIwjuN$eAN" role="2OqNvi">
                      <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1RIwjuN$eAO" role="37vLTx">
                    <property role="3cmrfH" value="64" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2dkUwp" id="1RIwjuN$eAP" role="3clFbw">
              <node concept="2OqwBi" id="1RIwjuN$eAQ" role="3uHU7B">
                <node concept="2WthIp" id="1RIwjuN$eAR" role="2Oq$k0" />
                <node concept="34pFcN" id="1RIwjuN$eAS" role="2OqNvi">
                  <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
                </node>
              </node>
              <node concept="3cmrfG" id="1RIwjuN$eAT" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5LbVSrDAGGf" role="3cqZAp">
            <node concept="2OqwBi" id="5LbVSrDAHBM" role="3clFbG">
              <node concept="3yMSdA" id="5LbVSrDAGGd" role="2Oq$k0" />
              <node concept="liA8E" id="5LbVSrDAISS" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.removeAll()" resolve="removeAll" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1RIwjuN$qWw" role="3cqZAp" />
          <node concept="3clFbF" id="GLgNzrphWo" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrpk2l" role="3clFbG">
              <node concept="3yMSdA" id="GLgNzrphWm" role="2Oq$k0" />
              <node concept="liA8E" id="GLgNzrpmrn" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
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
                <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
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
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="37vLTw" id="5LbVSrDB1Bq" role="37wK5m">
                  <ref role="3cqZAo" node="5LbVSrDB1Bm" resolve="onBox" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1RIwjuN$kQO" role="3cqZAp" />
          <node concept="3clFbF" id="GLgNzrpBj0" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrpBj1" role="3clFbG">
              <node concept="3yMSdA" id="GLgNzrpBj2" role="2Oq$k0" />
              <node concept="liA8E" id="GLgNzrpBj3" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
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
                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
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
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="37vLTw" id="GLgNzrlUCY" role="37wK5m">
                  <ref role="3cqZAo" node="GLgNzrlG_W" resolve="max" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1RIwjuN$mR6" role="3cqZAp" />
          <node concept="3clFbF" id="GLgNzrpDfo" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrpDfp" role="3clFbG">
              <node concept="3yMSdA" id="GLgNzrpDfq" role="2Oq$k0" />
              <node concept="liA8E" id="GLgNzrpDfr" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
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
                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
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
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="37vLTw" id="GLgNzrlMPa" role="37wK5m">
                  <ref role="3cqZAo" node="GLgNzrlxZZ" resolve="maxTotal" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1RIwjuN$oUQ" role="3cqZAp" />
          <node concept="3clFbF" id="1RIwjuN$MQF" role="3cqZAp">
            <node concept="2OqwBi" id="1RIwjuN$MQG" role="3clFbG">
              <node concept="3yMSdA" id="1RIwjuN$MQH" role="2Oq$k0" />
              <node concept="liA8E" id="1RIwjuN$MQI" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="2ShNRf" id="1RIwjuN$MQJ" role="37wK5m">
                  <node concept="1pGfFk" id="1RIwjuN$MQK" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                    <node concept="Xl_RD" id="1RIwjuN$MQL" role="37wK5m">
                      <property role="Xl_RC" value="Maximum number of observed features (instances) per rule (instance)" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1RIwjuN$OXc" role="3cqZAp">
            <node concept="3cpWsn" id="1RIwjuN$OXd" role="3cpWs9">
              <property role="TrG5h" value="maxObserved" />
              <node concept="3uibUv" id="1RIwjuN$OXe" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="2ShNRf" id="1RIwjuN$OXf" role="33vP2m">
                <node concept="1pGfFk" id="1RIwjuN$OXg" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JFormattedTextField.&lt;init&gt;(java.lang.Object)" resolve="JFormattedTextField" />
                  <node concept="10M0yZ" id="1RIwjuN$OXh" role="37wK5m">
                    <ref role="3cqZAo" to="25x5:~NumberFormat.INTEGER_FIELD" resolve="INTEGER_FIELD" />
                    <ref role="1PxDUh" to="25x5:~NumberFormat" resolve="NumberFormat" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1RIwjuN$RwI" role="3cqZAp">
            <node concept="2OqwBi" id="1RIwjuN$RwJ" role="3clFbG">
              <node concept="37vLTw" id="1RIwjuN_QV1" role="2Oq$k0">
                <ref role="3cqZAo" node="1RIwjuN$OXd" resolve="maxObserved" />
              </node>
              <node concept="liA8E" id="1RIwjuN$RwL" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                <node concept="2OqwBi" id="1RIwjuN$RwM" role="37wK5m">
                  <node concept="2WthIp" id="1RIwjuN$RwN" role="2Oq$k0" />
                  <node concept="34pFcN" id="1RIwjuN_TlA" role="2OqNvi">
                    <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1RIwjuN$U77" role="3cqZAp">
            <node concept="2OqwBi" id="1RIwjuN$U78" role="3clFbG">
              <node concept="3yMSdA" id="1RIwjuN$U79" role="2Oq$k0" />
              <node concept="liA8E" id="1RIwjuN$U7a" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="37vLTw" id="3jOpaegeruk" role="37wK5m">
                  <ref role="3cqZAo" node="1RIwjuN$OXd" resolve="maxObserved" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1RIwjuN$KMB" role="3cqZAp" />
          <node concept="3clFbF" id="1RIwjuN$Wm1" role="3cqZAp">
            <node concept="2OqwBi" id="1RIwjuN$Wm2" role="3clFbG">
              <node concept="3yMSdA" id="1RIwjuN$Wm3" role="2Oq$k0" />
              <node concept="liA8E" id="1RIwjuN$Wm4" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="2ShNRf" id="1RIwjuN$Wm5" role="37wK5m">
                  <node concept="1pGfFk" id="1RIwjuN$Wm6" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                    <node concept="Xl_RD" id="1RIwjuN$Wm7" role="37wK5m">
                      <property role="Xl_RC" value="Maximum number of observing rules (instances) per feature (instance)" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1RIwjuN_0$q" role="3cqZAp">
            <node concept="3cpWsn" id="1RIwjuN_0$r" role="3cpWs9">
              <property role="TrG5h" value="maxObservers" />
              <node concept="3uibUv" id="1RIwjuN_0$s" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="2ShNRf" id="1RIwjuN_0$t" role="33vP2m">
                <node concept="1pGfFk" id="1RIwjuN_0$u" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JFormattedTextField.&lt;init&gt;(java.lang.Object)" resolve="JFormattedTextField" />
                  <node concept="10M0yZ" id="1RIwjuN_0$v" role="37wK5m">
                    <ref role="1PxDUh" to="25x5:~NumberFormat" resolve="NumberFormat" />
                    <ref role="3cqZAo" to="25x5:~NumberFormat.INTEGER_FIELD" resolve="INTEGER_FIELD" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1RIwjuN_3al" role="3cqZAp">
            <node concept="2OqwBi" id="1RIwjuN_3am" role="3clFbG">
              <node concept="37vLTw" id="1RIwjuN_R3X" role="2Oq$k0">
                <ref role="3cqZAo" node="1RIwjuN_0$r" resolve="maxObservers" />
              </node>
              <node concept="liA8E" id="1RIwjuN_3ao" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                <node concept="2OqwBi" id="1RIwjuN_3ap" role="37wK5m">
                  <node concept="2WthIp" id="1RIwjuN_3aq" role="2Oq$k0" />
                  <node concept="34pFcN" id="1RIwjuN_Rhd" role="2OqNvi">
                    <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1RIwjuN_5N_" role="3cqZAp">
            <node concept="2OqwBi" id="1RIwjuN_5NA" role="3clFbG">
              <node concept="3yMSdA" id="1RIwjuN_5NB" role="2Oq$k0" />
              <node concept="liA8E" id="1RIwjuN_5NC" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="37vLTw" id="3jOpaegesRd" role="37wK5m">
                  <ref role="3cqZAo" node="1RIwjuN_0$r" resolve="maxObservers" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1RIwjuN$KP2" role="3cqZAp" />
          <node concept="1Dw8fO" id="6_bAO4Vq2WM" role="3cqZAp">
            <node concept="3clFbS" id="6_bAO4Vq2WO" role="2LFqv$">
              <node concept="3clFbF" id="6_bAO4VoGDp" role="3cqZAp">
                <node concept="2OqwBi" id="6_bAO4VoIJ3" role="3clFbG">
                  <node concept="3yMSdA" id="6_bAO4VoGDn" role="2Oq$k0" />
                  <node concept="liA8E" id="6_bAO4VoKuA" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
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
              <node concept="3cmrfG" id="3jOpaegfbwr" role="3uHU7w">
                <property role="3cmrfH" value="30" />
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
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int)" resolve="getComponent" />
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
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
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
          <node concept="3clFbH" id="1RIwjuN$t0m" role="3cqZAp" />
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
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int)" resolve="getComponent" />
                    <node concept="3cmrfG" id="4PMfL9tSC$L" role="37wK5m">
                      <property role="3cmrfH" value="3" />
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
                    <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
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
          <node concept="3clFbH" id="1RIwjuN$vhN" role="3cqZAp" />
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
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int)" resolve="getComponent" />
                    <node concept="3cmrfG" id="4PMfL9tSDEN" role="37wK5m">
                      <property role="3cmrfH" value="5" />
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
                    <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
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
          <node concept="3clFbH" id="1RIwjuN_XGs" role="3cqZAp" />
          <node concept="3cpWs8" id="1RIwjuN_Z$F" role="3cqZAp">
            <node concept="3cpWsn" id="1RIwjuN_Z$G" role="3cpWs9">
              <property role="TrG5h" value="maxObserved" />
              <node concept="3uibUv" id="1RIwjuN_Z$H" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="1RIwjuN_Z$I" role="33vP2m">
                <node concept="3uibUv" id="1RIwjuN_Z$J" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2OqwBi" id="1RIwjuN_Z$K" role="10QFUP">
                  <node concept="3yMSdA" id="1RIwjuN_Z$L" role="2Oq$k0" />
                  <node concept="liA8E" id="1RIwjuN_Z$M" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int)" resolve="getComponent" />
                    <node concept="3cmrfG" id="1RIwjuNAjST" role="37wK5m">
                      <property role="3cmrfH" value="7" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1RIwjuNAbHA" role="3cqZAp">
            <node concept="37vLTI" id="1RIwjuNAbHB" role="3clFbG">
              <node concept="0kSF2" id="1RIwjuNAbHC" role="37vLTx">
                <node concept="3uibUv" id="1RIwjuNAbHD" role="0kSFW">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
                <node concept="2OqwBi" id="1RIwjuNAbHE" role="0kSFX">
                  <node concept="37vLTw" id="1RIwjuNAmzi" role="2Oq$k0">
                    <ref role="3cqZAo" node="1RIwjuN_Z$G" resolve="maxObserved" />
                  </node>
                  <node concept="liA8E" id="1RIwjuNAbHG" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1RIwjuNAbHH" role="37vLTJ">
                <node concept="2WthIp" id="1RIwjuNAbHI" role="2Oq$k0" />
                <node concept="34pFcN" id="1RIwjuNApfW" role="2OqNvi">
                  <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserd" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1RIwjuNA2fE" role="3cqZAp" />
          <node concept="3cpWs8" id="1RIwjuNA4xd" role="3cqZAp">
            <node concept="3cpWsn" id="1RIwjuNA4xe" role="3cpWs9">
              <property role="TrG5h" value="maxObservers" />
              <node concept="3uibUv" id="1RIwjuNA4xf" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="1RIwjuNA4xg" role="33vP2m">
                <node concept="3uibUv" id="1RIwjuNA4xh" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2OqwBi" id="1RIwjuNA4xi" role="10QFUP">
                  <node concept="3yMSdA" id="1RIwjuNA4xj" role="2Oq$k0" />
                  <node concept="liA8E" id="1RIwjuNA4xk" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.getComponent(int)" resolve="getComponent" />
                    <node concept="3cmrfG" id="1RIwjuNAla$" role="37wK5m">
                      <property role="3cmrfH" value="9" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1RIwjuNAeuc" role="3cqZAp">
            <node concept="37vLTI" id="1RIwjuNAeud" role="3clFbG">
              <node concept="0kSF2" id="1RIwjuNAeue" role="37vLTx">
                <node concept="3uibUv" id="1RIwjuNAeuf" role="0kSFW">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
                <node concept="2OqwBi" id="1RIwjuNAeug" role="0kSFX">
                  <node concept="37vLTw" id="1RIwjuNAmGW" role="2Oq$k0">
                    <ref role="3cqZAo" node="1RIwjuNA4xe" resolve="maxObservers" />
                  </node>
                  <node concept="liA8E" id="1RIwjuNAeui" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1RIwjuNAeuj" role="37vLTJ">
                <node concept="2WthIp" id="1RIwjuNAeuk" role="2Oq$k0" />
                <node concept="34pFcN" id="1RIwjuNAmUU" role="2OqNvi">
                  <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1RIwjuNA2hu" role="3cqZAp" />
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
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                  <node concept="2xqhHp" id="5LbVSrDCFYh" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1IGDYWlps4_" role="3cqZAp">
            <node concept="2OqwBi" id="1IGDYWlpuGZ" role="3clFbG">
              <node concept="37vLTw" id="1IGDYWlps4z" role="2Oq$k0">
                <ref role="3cqZAo" node="5LbVSrDC$MU" resolve="engine" />
              </node>
              <node concept="liA8E" id="1IGDYWlpwn0" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setOn(boolean)" resolve="setOn" />
                <node concept="3clFbT" id="1IGDYWlpwoq" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzroONu" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzroQAI" role="3clFbG">
              <node concept="37vLTw" id="GLgNzroONs" role="2Oq$k0">
                <ref role="3cqZAo" node="5LbVSrDC$MU" resolve="engine" />
              </node>
              <node concept="liA8E" id="GLgNzroSs5" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setMaxTotalNrOfChanges(int)" resolve="setMaxTotalNrOfChanges" />
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
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setMaxNrOfChanges(int)" resolve="setMaxNrOfChanges" />
                <node concept="2OqwBi" id="GLgNzroioG" role="37wK5m">
                  <node concept="2WthIp" id="GLgNzroi69" role="2Oq$k0" />
                  <node concept="34pFcN" id="GLgNzroiVE" role="2OqNvi">
                    <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1RIwjuN$_O7" role="3cqZAp">
            <node concept="2OqwBi" id="1RIwjuN$C72" role="3clFbG">
              <node concept="37vLTw" id="1RIwjuN$_O5" role="2Oq$k0">
                <ref role="3cqZAo" node="5LbVSrDC$MU" resolve="engine" />
              </node>
              <node concept="liA8E" id="1RIwjuN$Dsm" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setNrOfObserved(int)" resolve="setNrOfObserved" />
                <node concept="2OqwBi" id="1RIwjuN$DMW" role="37wK5m">
                  <node concept="2WthIp" id="1RIwjuN$DAC" role="2Oq$k0" />
                  <node concept="34pFcN" id="1RIwjuN$DU1" role="2OqNvi">
                    <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1RIwjuN$Gll" role="3cqZAp">
            <node concept="2OqwBi" id="1RIwjuN$IBz" role="3clFbG">
              <node concept="37vLTw" id="1RIwjuN$Glj" role="2Oq$k0">
                <ref role="3cqZAo" node="5LbVSrDC$MU" resolve="engine" />
              </node>
              <node concept="liA8E" id="1RIwjuN$JXd" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setNrOfObservers(int)" resolve="setNrOfObservers" />
                <node concept="2OqwBi" id="1RIwjuN$KjN" role="37wK5m">
                  <node concept="2WthIp" id="1RIwjuN$K7v" role="2Oq$k0" />
                  <node concept="34pFcN" id="1RIwjuN$KqS" role="2OqNvi">
                    <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
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
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setOn(boolean)" resolve="setOn" />
                <node concept="2OqwBi" id="GLgNzrkqkc" role="37wK5m">
                  <node concept="2WthIp" id="GLgNzrkq1J" role="2Oq$k0" />
                  <node concept="34pFcN" id="GLgNzrkqP6" role="2OqNvi">
                    <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="on" />
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
              <node concept="3cmrfG" id="3jOpaegfa6$" role="37wK5m">
                <property role="3cmrfH" value="20" />
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
                <node concept="2OqwBi" id="GLgNzrlanw" role="37vLTJ">
                  <node concept="2WthIp" id="GLgNzrlak3" role="2Oq$k0" />
                  <node concept="34pFcN" id="5IZNT_vMj5u" role="2OqNvi">
                    <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                  </node>
                </node>
                <node concept="3cmrfG" id="5LY9IEoaAXH" role="37vLTx">
                  <property role="3cmrfH" value="16" />
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
        <node concept="3clFbJ" id="1RIwjuNz$Ge" role="3cqZAp">
          <node concept="3clFbS" id="1RIwjuNz$Gf" role="3clFbx">
            <node concept="3clFbF" id="1RIwjuNz$Gg" role="3cqZAp">
              <node concept="37vLTI" id="1RIwjuNz$Gh" role="3clFbG">
                <node concept="2OqwBi" id="1RIwjuNz$Gj" role="37vLTJ">
                  <node concept="2WthIp" id="1RIwjuNz$Gk" role="2Oq$k0" />
                  <node concept="34pFcN" id="1RIwjuNzGP8" role="2OqNvi">
                    <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserd" />
                  </node>
                </node>
                <node concept="3cmrfG" id="1RIwjuNzNx$" role="37vLTx">
                  <property role="3cmrfH" value="100" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2dkUwp" id="1RIwjuNz$Gm" role="3clFbw">
            <node concept="2OqwBi" id="1RIwjuNz$Gn" role="3uHU7B">
              <node concept="2WthIp" id="1RIwjuNz$Go" role="2Oq$k0" />
              <node concept="34pFcN" id="1RIwjuNzEOc" role="2OqNvi">
                <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserd" />
              </node>
            </node>
            <node concept="3cmrfG" id="1RIwjuNz$Gq" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1RIwjuNzCBn" role="3cqZAp">
          <node concept="3clFbS" id="1RIwjuNzCBo" role="3clFbx">
            <node concept="3clFbF" id="1RIwjuNzCBp" role="3cqZAp">
              <node concept="37vLTI" id="1RIwjuNzCBq" role="3clFbG">
                <node concept="2OqwBi" id="1RIwjuNzCBs" role="37vLTJ">
                  <node concept="2WthIp" id="1RIwjuNzCBt" role="2Oq$k0" />
                  <node concept="34pFcN" id="1RIwjuNzKQp" role="2OqNvi">
                    <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
                  </node>
                </node>
                <node concept="3cmrfG" id="5LY9IEoahVR" role="37vLTx">
                  <property role="3cmrfH" value="100" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2dkUwp" id="1RIwjuNzCBv" role="3clFbw">
            <node concept="2OqwBi" id="1RIwjuNzCBw" role="3uHU7B">
              <node concept="2WthIp" id="1RIwjuNzCBx" role="2Oq$k0" />
              <node concept="34pFcN" id="1RIwjuNzILk" role="2OqNvi">
                <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
              </node>
            </node>
            <node concept="3cmrfG" id="1RIwjuNzCBz" role="3uHU7w">
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
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="2OqwBi" id="6dqVhsCfW65" role="37wK5m">
                  <node concept="1KvdUw" id="GLgNzrkPPK" role="2Oq$k0" />
                  <node concept="liA8E" id="6dqVhsCfXgE" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
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
              <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setMaxTotalNrOfChanges(int)" resolve="setMaxTotalNrOfChanges" />
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
              <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setMaxNrOfChanges(int)" resolve="setMaxNrOfChanges" />
              <node concept="2OqwBi" id="GLgNzrkRPR" role="37wK5m">
                <node concept="2WthIp" id="GLgNzrkRza" role="2Oq$k0" />
                <node concept="34pFcN" id="GLgNzrkSp7" role="2OqNvi">
                  <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RIwjuN$1r2" role="3cqZAp">
          <node concept="2OqwBi" id="1RIwjuN$3CC" role="3clFbG">
            <node concept="37vLTw" id="1RIwjuN$1r0" role="2Oq$k0">
              <ref role="3cqZAo" node="GLgNzrkNBS" resolve="engine" />
            </node>
            <node concept="liA8E" id="1RIwjuN$40D" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setNrOfObserved(int)" resolve="setNrOfObserved" />
              <node concept="2OqwBi" id="1RIwjuN$6KQ" role="37wK5m">
                <node concept="2WthIp" id="1RIwjuN$6KT" role="2Oq$k0" />
                <node concept="34pFcN" id="1RIwjuN$6KV" role="2OqNvi">
                  <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RIwjuN$9lT" role="3cqZAp">
          <node concept="2OqwBi" id="1RIwjuN$b$h" role="3clFbG">
            <node concept="37vLTw" id="1RIwjuN$9lR" role="2Oq$k0">
              <ref role="3cqZAo" node="GLgNzrkNBS" resolve="engine" />
            </node>
            <node concept="liA8E" id="1RIwjuN$bWV" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setNrOfObservers(int)" resolve="setNrOfObservers" />
              <node concept="2OqwBi" id="1RIwjuN$cjK" role="37wK5m">
                <node concept="2WthIp" id="1RIwjuN$c7g" role="2Oq$k0" />
                <node concept="34pFcN" id="1RIwjuN$cqP" role="2OqNvi">
                  <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4o9njCw6zmp" role="3cqZAp">
          <node concept="2OqwBi" id="4o9njCw738i" role="3clFbG">
            <node concept="liA8E" id="4o9njCw745u" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setOn(boolean)" resolve="setOn" />
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
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
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
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
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
                      <ref role="37wK5l" to="w1kc:~Language.getStructureModelDescriptor()" resolve="getStructureModelDescriptor" />
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
                              <ref role="37wK5l" to="z1c4:~AbstractModule.getModelRoots()" resolve="getModelRoots" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7wzKMsIVt93" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7wzKMsIVubN" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
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
                            <ref role="37wK5l" to="mhbf:~SModel.getModelRoot()" resolve="getModelRoot" />
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
                    <ref role="37wK5l" to="z1c4:~SModuleOperations.createModelWithAdjustments(java.lang.String,org.jetbrains.mps.openapi.persistence.ModelRoot)" resolve="createModelWithAdjustments" />
                    <node concept="3cpWs3" id="7wzKMsIV_zI" role="37wK5m">
                      <node concept="2OqwBi" id="7wzKMsIV$ir" role="3uHU7B">
                        <node concept="37vLTw" id="7wzKMsIVzQ_" role="2Oq$k0">
                          <ref role="3cqZAo" node="2$SWsiCtx0g" resolve="l" />
                        </node>
                        <node concept="liA8E" id="7wzKMsIV_3A" role="2OqNvi">
                          <ref role="37wK5l" to="z1c4:~AbstractModule.getModuleName()" resolve="getModuleName" />
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
              <ref role="37wK5l" to="3783:~ConceptAspectsHelper.attachNewConceptAspect(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SModel)" resolve="attachNewConceptAspect" />
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
          <node concept="1PaTwC" id="7$u7SPmR_uv" role="3ndbpf">
            <node concept="3oM_SD" id="7$u7SPmR_uw" role="1PaTwD">
              <property role="3oM_SC" value="We" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_ux" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uy" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uz" role="1PaTwD">
              <property role="3oM_SC" value="sure" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_u$" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_u_" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uA" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uB" role="1PaTwD">
              <property role="3oM_SC" value="base" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uC" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uD" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uE" role="1PaTwD">
              <property role="3oM_SC" value="inside" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uF" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uG" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uH" role="1PaTwD">
              <property role="3oM_SC" value="module." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7POWRVZMxgq" role="3cqZAp">
          <node concept="1PaTwC" id="7$u7SPmR_uI" role="3ndbpf">
            <node concept="3oM_SD" id="7$u7SPmR_uJ" role="1PaTwD">
              <property role="3oM_SC" value="Otherwise," />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uK" role="1PaTwD">
              <property role="3oM_SC" value="tabbed" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uL" role="1PaTwD">
              <property role="3oM_SC" value="editor" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uM" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uN" role="1PaTwD">
              <property role="3oM_SC" value="base" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uO" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uP" role="1PaTwD">
              <property role="3oM_SC" value="will" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uQ" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uR" role="1PaTwD">
              <property role="3oM_SC" value="opened," />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uS" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uT" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uU" role="1PaTwD">
              <property role="3oM_SC" value="will" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uV" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uW" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uX" role="1PaTwD">
              <property role="3oM_SC" value="tab" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uY" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_uZ" role="1PaTwD">
              <property role="3oM_SC" value="&quot;node&quot;" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7POWRVZMxgs" role="3cqZAp">
          <node concept="1PaTwC" id="7$u7SPmR_v0" role="3ndbpf">
            <node concept="3oM_SD" id="7$u7SPmR_v1" role="1PaTwD">
              <property role="3oM_SC" value="So," />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_v2" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_v3" role="1PaTwD">
              <property role="3oM_SC" value="user" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_v4" role="1PaTwD">
              <property role="3oM_SC" value="will" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_v5" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_v6" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_v7" role="1PaTwD">
              <property role="3oM_SC" value="able" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_v8" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_v9" role="1PaTwD">
              <property role="3oM_SC" value="open" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_va" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_vb" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_vc" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7$u7SPmR_vd" role="1PaTwD">
              <property role="3oM_SC" value="double-click" />
            </node>
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
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
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
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
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
                    <ref role="37wK5l" to="w1kc:~Generator.getSourceLanguage()" resolve="getSourceLanguage" />
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
                  <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
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
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
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
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
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
                    <ref role="37wK5l" to="w1kc:~Generator.getSourceLanguage()" resolve="getSourceLanguage" />
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
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadInEDT(java.lang.Runnable)" resolve="runReadInEDT" />
              <node concept="2ShNRf" id="3dReA4l3cdg" role="37wK5m">
                <node concept="YeOm9" id="3dReA4l3cdh" role="2ShVmc">
                  <node concept="1Y3b0j" id="3dReA4l3cdi" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="3dReA4l3cdj" role="1B3o_S" />
                    <node concept="3clFb_" id="3dReA4l3cdk" role="jymVt">
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
                              <ref role="37wK5l" to="mhbf:~SNodeUtil.isAccessible(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository)" resolve="isAccessible" />
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
                                  <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
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
                <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
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
  <node concept="312cEu" id="QlQbLbRAaD">
    <property role="TrG5h" value="StartStopTransaction" />
    <node concept="2tJIrI" id="QlQbLbS5C8" role="jymVt" />
    <node concept="312cEg" id="1sOlkZtGU54" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="ideaProject" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1sOlkZtGTqp" role="1B3o_S" />
      <node concept="3uibUv" id="1sOlkZtH2rp" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="1sOlkZtGU8J" role="jymVt" />
    <node concept="3clFbW" id="1sOlkZtGUn4" role="jymVt">
      <node concept="3cqZAl" id="1sOlkZtGUn6" role="3clF45" />
      <node concept="3Tm1VV" id="1sOlkZtGUn7" role="1B3o_S" />
      <node concept="3clFbS" id="1sOlkZtGUn8" role="3clF47">
        <node concept="3clFbF" id="1sOlkZtGUUY" role="3cqZAp">
          <node concept="37vLTI" id="1sOlkZtGVXq" role="3clFbG">
            <node concept="37vLTw" id="1sOlkZtGWwZ" role="37vLTx">
              <ref role="3cqZAo" node="1sOlkZtGUDp" resolve="ideaProject" />
            </node>
            <node concept="2OqwBi" id="1sOlkZtGV86" role="37vLTJ">
              <node concept="Xjq3P" id="1sOlkZtGUUX" role="2Oq$k0" />
              <node concept="2OwXpG" id="1sOlkZtGVis" role="2OqNvi">
                <ref role="2Oxat5" node="1sOlkZtGU54" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1sOlkZtGUDp" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="1sOlkZtH2Dl" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1sOlkZtGTfD" role="jymVt" />
    <node concept="3Tm1VV" id="QlQbLbRAaE" role="1B3o_S" />
    <node concept="3uibUv" id="QlQbLbRAbF" role="EKbjA">
      <ref role="3uigEE" to="t4tl:~StartStopHandler" resolve="StartStopHandler" />
    </node>
    <node concept="2tJIrI" id="2NcVYuTGdKR" role="jymVt" />
    <node concept="3clFb_" id="QlQbLbRAbQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="start" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="QlQbLbRAbR" role="1B3o_S" />
      <node concept="3cqZAl" id="QlQbLbRAbT" role="3clF45" />
      <node concept="37vLTG" id="QlQbLbRAbU" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="QlQbLbRAbV" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="QlQbLbRAbW" role="3clF47">
        <node concept="3cpWs8" id="2NcVYuTGlC0" role="3cqZAp">
          <node concept="3cpWsn" id="2NcVYuTGlC1" role="3cpWs9">
            <property role="TrG5h" value="dClare" />
            <node concept="1xUVSX" id="2NcVYuTGlC2" role="1tU5fm">
              <ref role="1xYkEM" node="3OqCb4$v3q7" resolve="DClareMessages" />
            </node>
            <node concept="2OqwBi" id="2NcVYuTGlC3" role="33vP2m">
              <node concept="37vLTw" id="2NcVYuTGlC4" role="2Oq$k0">
                <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
              </node>
              <node concept="LR4U6" id="2NcVYuTGlC5" role="2OqNvi">
                <ref role="LR4U5" node="3OqCb4$v3q7" resolve="DClareMessages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2NcVYuTGn$F" role="3cqZAp">
          <node concept="3clFbS" id="2NcVYuTGn$H" role="3clFbx">
            <node concept="3cpWs8" id="2NcVYuTGlCn" role="3cqZAp">
              <node concept="3cpWsn" id="2NcVYuTGlCo" role="3cpWs9">
                <property role="TrG5h" value="panel" />
                <node concept="3uibUv" id="2NcVYuTGlCp" role="1tU5fm">
                  <ref role="3uigEE" node="1sOlkZtG9YK" resolve="DClareMessagesPanel" />
                </node>
                <node concept="2OqwBi" id="2NcVYuTGlCq" role="33vP2m">
                  <node concept="2BZ7hE" id="2NcVYuTGlCx" role="2OqNvi">
                    <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
                  </node>
                  <node concept="37vLTw" id="2NcVYuTGpFX" role="2Oq$k0">
                    <ref role="3cqZAo" node="2NcVYuTGlC1" resolve="dClare" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1sOlkZtHcKP" role="3cqZAp">
              <node concept="3clFbS" id="1sOlkZtHcKR" role="3clFbx">
                <node concept="3clFbF" id="1sOlkZtGWN$" role="3cqZAp">
                  <node concept="2OqwBi" id="1sOlkZtH4gN" role="3clFbG">
                    <node concept="37vLTw" id="1sOlkZtHc7Q" role="2Oq$k0">
                      <ref role="3cqZAo" node="2NcVYuTGlCo" resolve="panel" />
                    </node>
                    <node concept="liA8E" id="1sOlkZtH5eS" role="2OqNvi">
                      <ref role="37wK5l" node="1sOlkZtHpWV" resolve="start" />
                      <node concept="37vLTw" id="1sOlkZtH5KG" role="37wK5m">
                        <ref role="3cqZAo" node="QlQbLbRAbU" resolve="project" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1sOlkZtHfd6" role="3clFbw">
                <node concept="10Nm6u" id="1sOlkZtHfkI" role="3uHU7w" />
                <node concept="37vLTw" id="1sOlkZtHd3n" role="3uHU7B">
                  <ref role="3cqZAo" node="2NcVYuTGlCo" resolve="panel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2NcVYuTGoP2" role="3clFbw">
            <node concept="10Nm6u" id="2NcVYuTGoZ8" role="3uHU7w" />
            <node concept="37vLTw" id="2NcVYuTGowV" role="3uHU7B">
              <ref role="3cqZAo" node="2NcVYuTGlC1" resolve="dClare" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="QlQbLbRAbX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="QlQbLbRUXz" role="jymVt" />
    <node concept="3clFb_" id="QlQbLbRUPm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="stop" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="QlQbLbRUPn" role="1B3o_S" />
      <node concept="3cqZAl" id="QlQbLbRUPp" role="3clF45" />
      <node concept="37vLTG" id="QlQbLbRUPq" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="QlQbLbRUPr" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="QlQbLbRUPs" role="3clF46">
        <property role="TrG5h" value="getter" />
        <node concept="3uibUv" id="30f$n$3amzp" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~Getter" resolve="Getter" />
        </node>
      </node>
      <node concept="37vLTG" id="7VHZ_z7AwPe" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="4lIQaixKKi_" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
        </node>
      </node>
      <node concept="3clFbS" id="QlQbLbRUPy" role="3clF47">
        <node concept="3cpWs8" id="1sOlkZtRLcx" role="3cqZAp">
          <node concept="3cpWsn" id="1sOlkZtRLcy" role="3cpWs9">
            <property role="TrG5h" value="dClare" />
            <node concept="1xUVSX" id="1sOlkZtRLcu" role="1tU5fm">
              <ref role="1xYkEM" node="3OqCb4$v3q7" resolve="DClareMessages" />
            </node>
            <node concept="2OqwBi" id="1sOlkZtRLcz" role="33vP2m">
              <node concept="37vLTw" id="1sOlkZtRLc$" role="2Oq$k0">
                <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
              </node>
              <node concept="LR4U6" id="1sOlkZtRLc_" role="2OqNvi">
                <ref role="LR4U5" node="3OqCb4$v3q7" resolve="DClareMessages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="l3V6Ja7$4w" role="3cqZAp">
          <node concept="3clFbS" id="l3V6Ja7$4y" role="3clFbx">
            <node concept="3cpWs8" id="1sOlkZtHfU7" role="3cqZAp">
              <node concept="3cpWsn" id="1sOlkZtHfU8" role="3cpWs9">
                <property role="TrG5h" value="panel" />
                <node concept="3uibUv" id="1sOlkZtHfU9" role="1tU5fm">
                  <ref role="3uigEE" node="1sOlkZtG9YK" resolve="DClareMessagesPanel" />
                </node>
                <node concept="2OqwBi" id="1sOlkZtHfUa" role="33vP2m">
                  <node concept="37vLTw" id="1sOlkZtRLcA" role="2Oq$k0">
                    <ref role="3cqZAo" node="1sOlkZtRLcy" resolve="dClare" />
                  </node>
                  <node concept="2BZ7hE" id="1sOlkZtHfUe" role="2OqNvi">
                    <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1sOlkZtHgs0" role="3cqZAp">
              <node concept="3clFbS" id="1sOlkZtHgs2" role="3clFbx">
                <node concept="3clFbF" id="1sOlkZtH6KY" role="3cqZAp">
                  <node concept="2OqwBi" id="1sOlkZtH93M" role="3clFbG">
                    <node concept="liA8E" id="1sOlkZtHa8Y" role="2OqNvi">
                      <ref role="37wK5l" node="1sOlkZtHpX5" resolve="stop" />
                      <node concept="37vLTw" id="1sOlkZtHbpR" role="37wK5m">
                        <ref role="3cqZAo" node="QlQbLbRUPq" resolve="project" />
                      </node>
                      <node concept="37vLTw" id="1sOlkZtHaF$" role="37wK5m">
                        <ref role="3cqZAo" node="QlQbLbRUPs" resolve="getter" />
                      </node>
                      <node concept="37vLTw" id="30f$n$3an2M" role="37wK5m">
                        <ref role="3cqZAo" node="7VHZ_z7AwPe" resolve="engine" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1sOlkZtHk4i" role="2Oq$k0">
                      <ref role="3cqZAo" node="1sOlkZtHfU8" resolve="panel" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1sOlkZtRH_h" role="3cqZAp">
                  <node concept="3clFbS" id="1sOlkZtRH_j" role="3clFbx">
                    <node concept="3clFbF" id="1sOlkZtRLT3" role="3cqZAp">
                      <node concept="2OqwBi" id="1sOlkZtRM8k" role="3clFbG">
                        <node concept="37vLTw" id="1sOlkZtRLT1" role="2Oq$k0">
                          <ref role="3cqZAo" node="1sOlkZtRLcy" resolve="dClare" />
                        </node>
                        <node concept="liA8E" id="1sOlkZtRMvE" role="2OqNvi">
                          <ref role="37wK5l" to="71xd:~BaseTool.openTool(boolean)" resolve="openTool" />
                          <node concept="3clFbT" id="1sOlkZtROVw" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="30f$n$3aB6T" role="3clFbw">
                    <node concept="2YIFZM" id="30f$n$3awli" role="2Oq$k0">
                      <ref role="37wK5l" to="zrbp:~Collection.of(java.lang.Object...)" resolve="of" />
                      <ref role="1Pybhc" to="zrbp:~Collection" resolve="Collection" />
                      <node concept="uiWXb" id="30f$n$3axcZ" role="37wK5m">
                        <ref role="uiZuM" to="t4tl:~DMessageType" resolve="DMessageType" />
                      </node>
                    </node>
                    <node concept="liA8E" id="30f$n$3aECD" role="2OqNvi">
                      <ref role="37wK5l" to="1ctc:~Stream.anyMatch(java.util.function.Predicate)" resolve="anyMatch" />
                      <node concept="1bVj0M" id="30f$n$3aKtD" role="37wK5m">
                        <node concept="37vLTG" id="30f$n$3aPlU" role="1bW2Oz">
                          <property role="TrG5h" value="t" />
                          <node concept="3uibUv" id="30f$n$3aPKZ" role="1tU5fm">
                            <ref role="3uigEE" to="t4tl:~DMessageType" resolve="DMessageType" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="30f$n$3aKtF" role="1bW5cS">
                          <node concept="3clFbF" id="30f$n$3aViJ" role="3cqZAp">
                            <node concept="3fqX7Q" id="5mT2CTpF7hX" role="3clFbG">
                              <node concept="2OqwBi" id="5mT2CTpFqPU" role="3fr31v">
                                <node concept="2OqwBi" id="5mT2CTpFdGd" role="2Oq$k0">
                                  <node concept="37vLTw" id="5mT2CTpFaha" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7VHZ_z7AwPe" resolve="engine" />
                                  </node>
                                  <node concept="liA8E" id="5mT2CTpFhCD" role="2OqNvi">
                                    <ref role="37wK5l" to="t4tl:~DClareMPS.getMessages(org.modelingvalue.dclare.mps.DMessageType)" resolve="getMessages" />
                                    <node concept="37vLTw" id="5mT2CTpFmC8" role="37wK5m">
                                      <ref role="3cqZAo" node="30f$n$3aPlU" resolve="t" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="5mT2CTpFvxw" role="2OqNvi">
                                  <ref role="37wK5l" to="zrbp:~Collection.isEmpty()" resolve="isEmpty" />
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
              <node concept="3y3z36" id="1sOlkZtHj6I" role="3clFbw">
                <node concept="10Nm6u" id="1sOlkZtHjqD" role="3uHU7w" />
                <node concept="37vLTw" id="1sOlkZtHgKG" role="3uHU7B">
                  <ref role="3cqZAo" node="1sOlkZtHfU8" resolve="panel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="l3V6Ja7_Ed" role="3clFbw">
            <node concept="10Nm6u" id="l3V6Ja7ApV" role="3uHU7w" />
            <node concept="37vLTw" id="l3V6Ja7_0$" role="3uHU7B">
              <ref role="3cqZAo" node="1sOlkZtRLcy" resolve="dClare" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="QlQbLbRUPz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="QlQbLbS5G_" role="jymVt" />
    <node concept="3clFb_" id="1DUQ$Ow_31c" role="jymVt">
      <property role="TrG5h" value="on" />
      <node concept="3Tm1VV" id="1DUQ$Ow_31d" role="1B3o_S" />
      <node concept="3cqZAl" id="1DUQ$Ow_31f" role="3clF45" />
      <node concept="37vLTG" id="1DUQ$Ow_31g" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1DUQ$Ow_31h" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="1DUQ$Ow_31i" role="3clF47">
        <node concept="3cpWs8" id="2NcVYuTG6fF" role="3cqZAp">
          <node concept="3cpWsn" id="2NcVYuTG6fG" role="3cpWs9">
            <property role="TrG5h" value="dClare" />
            <node concept="1xUVSX" id="2NcVYuTBeHl" role="1tU5fm">
              <ref role="1xYkEM" node="3OqCb4$v3q7" resolve="DClareMessages" />
            </node>
            <node concept="2OqwBi" id="2NcVYuTG6fH" role="33vP2m">
              <node concept="37vLTw" id="2NcVYuTG6fI" role="2Oq$k0">
                <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
              </node>
              <node concept="LR4U6" id="2NcVYuTG6fJ" role="2OqNvi">
                <ref role="LR4U5" node="3OqCb4$v3q7" resolve="DClareMessages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2NcVYuTG71G" role="3cqZAp">
          <node concept="3clFbS" id="2NcVYuTG71I" role="3clFbx">
            <node concept="3cpWs8" id="1DUQ$Ow_7t1" role="3cqZAp">
              <node concept="3cpWsn" id="1DUQ$Ow_7t2" role="3cpWs9">
                <property role="TrG5h" value="panel" />
                <node concept="3uibUv" id="1DUQ$Ow_7t3" role="1tU5fm">
                  <ref role="3uigEE" node="1sOlkZtG9YK" resolve="DClareMessagesPanel" />
                </node>
                <node concept="2OqwBi" id="1DUQ$Ow_7t4" role="33vP2m">
                  <node concept="37vLTw" id="2NcVYuTG6fK" role="2Oq$k0">
                    <ref role="3cqZAo" node="2NcVYuTG6fG" resolve="dClare" />
                  </node>
                  <node concept="2BZ7hE" id="1DUQ$Ow_7t8" role="2OqNvi">
                    <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1DUQ$Ow_7Jg" role="3cqZAp">
              <node concept="3clFbS" id="1DUQ$Ow_7Jh" role="3clFbx">
                <node concept="3clFbF" id="1DUQ$Ow_7Ji" role="3cqZAp">
                  <node concept="2OqwBi" id="1DUQ$Ow_7Jj" role="3clFbG">
                    <node concept="37vLTw" id="1DUQ$Ow_7Jk" role="2Oq$k0">
                      <ref role="3cqZAo" node="1DUQ$Ow_7t2" resolve="panel" />
                    </node>
                    <node concept="liA8E" id="1DUQ$Ow_7Jl" role="2OqNvi">
                      <ref role="37wK5l" node="1DUQ$OwxyYT" resolve="on" />
                      <node concept="37vLTw" id="1DUQ$Ow_7Jm" role="37wK5m">
                        <ref role="3cqZAo" node="1DUQ$Ow_31g" resolve="project" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1DUQ$Ow_7Jn" role="3clFbw">
                <node concept="10Nm6u" id="1DUQ$Ow_7Jo" role="3uHU7w" />
                <node concept="37vLTw" id="1DUQ$Ow_7Jp" role="3uHU7B">
                  <ref role="3cqZAo" node="1DUQ$Ow_7t2" resolve="panel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2NcVYuTG7JQ" role="3clFbw">
            <node concept="10Nm6u" id="2NcVYuTG7TW" role="3uHU7w" />
            <node concept="37vLTw" id="2NcVYuTG7rJ" role="3uHU7B">
              <ref role="3cqZAo" node="2NcVYuTG6fG" resolve="dClare" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1DUQ$Ow_31j" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1DUQ$Ow_6Ag" role="jymVt" />
    <node concept="3clFb_" id="1DUQ$Ow_31k" role="jymVt">
      <property role="TrG5h" value="off" />
      <node concept="3Tm1VV" id="1DUQ$Ow_31l" role="1B3o_S" />
      <node concept="3cqZAl" id="1DUQ$Ow_31n" role="3clF45" />
      <node concept="37vLTG" id="1DUQ$Ow_31o" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1DUQ$Ow_31p" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="3odd6ID_Hug" role="3clF46">
        <property role="TrG5h" value="getter" />
        <node concept="3uibUv" id="3odd6ID_Nb4" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~Getter" resolve="Getter" />
        </node>
      </node>
      <node concept="37vLTG" id="3odd6ID_Nmz" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="3odd6ID_NVu" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
        </node>
      </node>
      <node concept="3clFbS" id="1DUQ$Ow_31q" role="3clF47">
        <node concept="3cpWs8" id="3odd6IDAgAQ" role="3cqZAp">
          <node concept="3cpWsn" id="3odd6IDAgAT" role="3cpWs9">
            <property role="TrG5h" value="dClare" />
            <node concept="1xUVSX" id="3odd6IDAgAU" role="1tU5fm">
              <ref role="1xYkEM" node="3OqCb4$v3q7" resolve="DClareMessages" />
            </node>
            <node concept="2OqwBi" id="3odd6IDAgAV" role="33vP2m">
              <node concept="37vLTw" id="3odd6IDAgAW" role="2Oq$k0">
                <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
              </node>
              <node concept="LR4U6" id="3odd6IDAgAX" role="2OqNvi">
                <ref role="LR4U5" node="3OqCb4$v3q7" resolve="DClareMessages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2NcVYuTG8zG" role="3cqZAp">
          <node concept="3clFbS" id="2NcVYuTG8zI" role="3clFbx">
            <node concept="3cpWs8" id="1DUQ$Ow_8lw" role="3cqZAp">
              <node concept="3cpWsn" id="1DUQ$Ow_8lx" role="3cpWs9">
                <property role="TrG5h" value="panel" />
                <node concept="3uibUv" id="1DUQ$Ow_8ly" role="1tU5fm">
                  <ref role="3uigEE" node="1sOlkZtG9YK" resolve="DClareMessagesPanel" />
                </node>
                <node concept="2OqwBi" id="1DUQ$Ow_8lz" role="33vP2m">
                  <node concept="2BZ7hE" id="1DUQ$Ow_8lB" role="2OqNvi">
                    <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
                  </node>
                  <node concept="37vLTw" id="3odd6IDAi93" role="2Oq$k0">
                    <ref role="3cqZAo" node="3odd6IDAgAT" resolve="dClare" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1DUQ$Ow_88_" role="3cqZAp">
              <node concept="3clFbS" id="1DUQ$Ow_88A" role="3clFbx">
                <node concept="3clFbF" id="1DUQ$Ow_88B" role="3cqZAp">
                  <node concept="2OqwBi" id="1DUQ$Ow_88C" role="3clFbG">
                    <node concept="37vLTw" id="1DUQ$Ow_88D" role="2Oq$k0">
                      <ref role="3cqZAo" node="1DUQ$Ow_8lx" resolve="panel" />
                    </node>
                    <node concept="liA8E" id="1DUQ$Ow_88E" role="2OqNvi">
                      <ref role="37wK5l" node="1DUQ$OwuKJQ" resolve="off" />
                      <node concept="37vLTw" id="1DUQ$Ow_88F" role="37wK5m">
                        <ref role="3cqZAo" node="1DUQ$Ow_31o" resolve="project" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3odd6IDA$2T" role="3cqZAp">
                  <node concept="2OqwBi" id="3odd6IDA$2V" role="3clFbG">
                    <node concept="liA8E" id="3odd6IDA$2W" role="2OqNvi">
                      <ref role="37wK5l" node="1sOlkZtHpX5" resolve="stop" />
                      <node concept="37vLTw" id="3odd6IDA$2X" role="37wK5m">
                        <ref role="3cqZAo" node="1DUQ$Ow_31o" resolve="project" />
                      </node>
                      <node concept="37vLTw" id="3odd6IDA$2Y" role="37wK5m">
                        <ref role="3cqZAo" node="3odd6ID_Hug" resolve="getter" />
                      </node>
                      <node concept="37vLTw" id="3odd6IDA$2Z" role="37wK5m">
                        <ref role="3cqZAo" node="3odd6ID_Nmz" resolve="engine" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3odd6IDA$30" role="2Oq$k0">
                      <ref role="3cqZAo" node="1DUQ$Ow_8lx" resolve="panel" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3odd6IDAdGx" role="3cqZAp">
                  <node concept="2OqwBi" id="3odd6IDAdGy" role="3clFbG">
                    <node concept="37vLTw" id="3odd6IDAioH" role="2Oq$k0">
                      <ref role="3cqZAo" node="3odd6IDAgAT" resolve="dClare" />
                    </node>
                    <node concept="liA8E" id="3odd6IDAdG$" role="2OqNvi">
                      <ref role="37wK5l" to="71xd:~BaseTool.openTool(boolean)" resolve="openTool" />
                      <node concept="3clFbT" id="3odd6IDAdG_" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1DUQ$Ow_88G" role="3clFbw">
                <node concept="10Nm6u" id="1DUQ$Ow_88H" role="3uHU7w" />
                <node concept="37vLTw" id="1DUQ$Ow_88I" role="3uHU7B">
                  <ref role="3cqZAo" node="1DUQ$Ow_8lx" resolve="panel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2NcVYuTG9ne" role="3clFbw">
            <node concept="10Nm6u" id="2NcVYuTG9D8" role="3uHU7w" />
            <node concept="37vLTw" id="2NcVYuTG90S" role="3uHU7B">
              <ref role="3cqZAo" node="3odd6IDAgAT" resolve="dClare" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1DUQ$Ow_31r" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1DUQ$Ow_71C" role="jymVt" />
    <node concept="3clFb_" id="57dWhtn5FXY" role="jymVt">
      <property role="TrG5h" value="stats" />
      <node concept="3Tm1VV" id="57dWhtn5FXZ" role="1B3o_S" />
      <node concept="3cqZAl" id="57dWhtn5FY1" role="3clF45" />
      <node concept="37vLTG" id="57dWhtn5FY2" role="3clF46">
        <property role="TrG5h" value="statistics" />
        <node concept="3uibUv" id="57dWhtn5FY3" role="1tU5fm">
          <ref role="3uigEE" to="kag7:~UniverseStatistics" resolve="UniverseStatistics" />
        </node>
      </node>
      <node concept="3clFbS" id="57dWhtn5FY4" role="3clF47">
        <node concept="3cpWs8" id="57dWhtn8hac" role="3cqZAp">
          <node concept="3cpWsn" id="57dWhtn8had" role="3cpWs9">
            <property role="TrG5h" value="dClare" />
            <node concept="1xUVSX" id="57dWhtn8hae" role="1tU5fm">
              <ref role="1xYkEM" node="3OqCb4$v3q7" resolve="DClareMessages" />
            </node>
            <node concept="2OqwBi" id="57dWhtn8haf" role="33vP2m">
              <node concept="37vLTw" id="57dWhtn8hag" role="2Oq$k0">
                <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
              </node>
              <node concept="LR4U6" id="57dWhtn8hah" role="2OqNvi">
                <ref role="LR4U5" node="3OqCb4$v3q7" resolve="DClareMessages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2NcVYuTGahl" role="3cqZAp">
          <node concept="3clFbS" id="2NcVYuTGahn" role="3clFbx">
            <node concept="3cpWs8" id="57dWhtn8hai" role="3cqZAp">
              <node concept="3cpWsn" id="57dWhtn8haj" role="3cpWs9">
                <property role="TrG5h" value="panel" />
                <node concept="3uibUv" id="57dWhtn8hak" role="1tU5fm">
                  <ref role="3uigEE" node="1sOlkZtG9YK" resolve="DClareMessagesPanel" />
                </node>
                <node concept="2OqwBi" id="57dWhtn8hal" role="33vP2m">
                  <node concept="2BZ7hE" id="57dWhtn8ham" role="2OqNvi">
                    <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
                  </node>
                  <node concept="37vLTw" id="57dWhtn8han" role="2Oq$k0">
                    <ref role="3cqZAo" node="57dWhtn8had" resolve="dClare" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="57dWhtn8hao" role="3cqZAp">
              <node concept="3clFbS" id="57dWhtn8hap" role="3clFbx">
                <node concept="3clFbF" id="57dWhtn8haq" role="3cqZAp">
                  <node concept="2OqwBi" id="57dWhtn8har" role="3clFbG">
                    <node concept="37vLTw" id="57dWhtn8has" role="2Oq$k0">
                      <ref role="3cqZAo" node="57dWhtn8haj" resolve="panel" />
                    </node>
                    <node concept="liA8E" id="57dWhtn8hat" role="2OqNvi">
                      <ref role="37wK5l" node="57dWhtn9BGy" resolve="stats" />
                      <node concept="37vLTw" id="57dWhtnamTK" role="37wK5m">
                        <ref role="3cqZAo" node="57dWhtn5FY2" resolve="statistics" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="57dWhtn8haF" role="3clFbw">
                <node concept="10Nm6u" id="57dWhtn8haG" role="3uHU7w" />
                <node concept="37vLTw" id="57dWhtn8haH" role="3uHU7B">
                  <ref role="3cqZAo" node="57dWhtn8haj" resolve="panel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2NcVYuTGaYd" role="3clFbw">
            <node concept="10Nm6u" id="2NcVYuTGb8j" role="3uHU7w" />
            <node concept="37vLTw" id="2NcVYuTGaFo" role="3uHU7B">
              <ref role="3cqZAo" node="57dWhtn8had" resolve="dClare" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="57dWhtn5FY5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="sEfby" id="3OqCb4$v3q7">
    <property role="TrG5h" value="DClareMessages" />
    <property role="2XNbzY" value="DClare Messages" />
    <node concept="2BZ0e9" id="3OqCb4$vqbk" role="2XNbBz">
      <property role="TrG5h" value="panel" />
      <node concept="3Tm1VV" id="1sOlkZtJmNv" role="1B3o_S" />
      <node concept="3uibUv" id="1sOlkZtGu8n" role="1tU5fm">
        <ref role="3uigEE" node="1sOlkZtG9YK" resolve="DClareMessagesPanel" />
      </node>
    </node>
    <node concept="2UmK3q" id="3OqCb4$v3q8" role="2Um5zG">
      <node concept="3clFbS" id="3OqCb4$v3q9" role="2VODD2">
        <node concept="3clFbF" id="3OqCb4$vIoW" role="3cqZAp">
          <node concept="2OqwBi" id="3OqCb4$vIO3" role="3clFbG">
            <node concept="2WthIp" id="3OqCb4$vIoV" role="2Oq$k0" />
            <node concept="2BZ7hE" id="3OqCb4$vJft" role="2OqNvi">
              <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2xpIHi" id="3OqCb4$vkk7" role="uR5cp">
      <node concept="3clFbS" id="3OqCb4$vkk8" role="2VODD2">
        <node concept="3cpWs8" id="1sOlkZtG42l" role="3cqZAp">
          <node concept="3cpWsn" id="1sOlkZtG42m" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="1sOlkZtG42n" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2YIFZM" id="1sOlkZtG7Ks" role="33vP2m">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="2xqhHp" id="1sOlkZtG7KR" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1sOlkZtG8rW" role="3cqZAp">
          <node concept="3clFbS" id="1sOlkZtG8rY" role="3clFbx">
            <node concept="3cpWs8" id="3La3n2rHWc2" role="3cqZAp">
              <node concept="3cpWsn" id="3La3n2rHWc3" role="3cpWs9">
                <property role="TrG5h" value="repos" />
                <node concept="3uibUv" id="3La3n2rHWc0" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                </node>
                <node concept="2YIFZM" id="3La3n2rHWc4" role="33vP2m">
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <ref role="37wK5l" to="alof:~ProjectHelper.getProjectRepository(com.intellij.openapi.project.Project)" resolve="getProjectRepository" />
                  <node concept="2xqhHp" id="3La3n2rHWc5" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1sOlkZtGs2_" role="3cqZAp">
              <node concept="37vLTI" id="1sOlkZtGt98" role="3clFbG">
                <node concept="2ShNRf" id="1sOlkZtGtgq" role="37vLTx">
                  <node concept="1pGfFk" id="1sOlkZtGtCW" role="2ShVmc">
                    <ref role="37wK5l" node="1sOlkZtGfbv" resolve="DClareMessagesPanel" />
                    <node concept="37vLTw" id="3La3n2rHWc6" role="37wK5m">
                      <ref role="3cqZAo" node="3La3n2rHWc3" resolve="repos" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1sOlkZtGsaY" role="37vLTJ">
                  <node concept="2WthIp" id="1sOlkZtGs2z" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="1sOlkZtGslM" role="2OqNvi">
                    <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3La3n2rwY78" role="3cqZAp">
              <node concept="2OqwBi" id="3La3n2rwZbX" role="3clFbG">
                <node concept="2OqwBi" id="3La3n2rwYyz" role="2Oq$k0">
                  <node concept="37vLTw" id="3La3n2rwY76" role="2Oq$k0">
                    <ref role="3cqZAo" node="1sOlkZtG42m" resolve="mpsProject" />
                  </node>
                  <node concept="liA8E" id="3La3n2rwZ7b" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="3La3n2rwZjO" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.executeCommandInEDT(java.lang.Runnable)" resolve="executeCommandInEDT" />
                  <node concept="1bVj0M" id="1sOlkZtGuxO" role="37wK5m">
                    <node concept="3clFbS" id="1sOlkZtGuxP" role="1bW5cS">
                      <node concept="3clFbF" id="3La3n2rHTqS" role="3cqZAp">
                        <node concept="2OqwBi" id="3La3n2rHUXf" role="3clFbG">
                          <node concept="2OqwBi" id="3La3n2rHTEf" role="2Oq$k0">
                            <node concept="2WthIp" id="3La3n2rHTqQ" role="2Oq$k0" />
                            <node concept="2BZ7hE" id="3La3n2rHTTX" role="2OqNvi">
                              <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
                            </node>
                          </node>
                          <node concept="liA8E" id="3La3n2rHW19" role="2OqNvi">
                            <ref role="37wK5l" node="3La3n2rHvwH" resolve="init" />
                            <node concept="37vLTw" id="3La3n2rHWn_" role="37wK5m">
                              <ref role="3cqZAo" node="3La3n2rHWc3" resolve="repos" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1sOlkZtGuBZ" role="3cqZAp">
                        <node concept="2OqwBi" id="1sOlkZtGuL7" role="3clFbG">
                          <node concept="2WthIp" id="1sOlkZtGuBY" role="2Oq$k0" />
                          <node concept="liA8E" id="1sOlkZtGuWm" role="2OqNvi">
                            <ref role="37wK5l" to="71xd:~BaseTool.makeAvailableLater()" resolve="makeAvailableLater" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1sOlkZtG9CP" role="3clFbw">
            <node concept="10Nm6u" id="1sOlkZtG9KU" role="3uHU7w" />
            <node concept="37vLTw" id="1sOlkZtG8AW" role="3uHU7B">
              <ref role="3cqZAo" node="1sOlkZtG42m" resolve="mpsProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2xpOpl" id="3OqCb4$vkkl" role="uR5co">
      <node concept="3clFbS" id="3OqCb4$vkkm" role="2VODD2" />
    </node>
    <node concept="1QGGSu" id="32W_4IvFKnM" role="1nVCmq">
      <property role="1iqoE4" value="${module}/icons/Dclare.png" />
    </node>
  </node>
  <node concept="312cEu" id="1sOlkZtG9YK">
    <property role="TrG5h" value="DClareMessagesPanel" />
    <node concept="2tJIrI" id="1sOlkZtGcU5" role="jymVt" />
    <node concept="312cEg" id="1ajo$O32MNd" role="jymVt">
      <property role="TrG5h" value="root" />
      <node concept="3Tm6S6" id="1ajo$O32KOI" role="1B3o_S" />
      <node concept="3Tqbb2" id="1ajo$O32M$9" role="1tU5fm">
        <ref role="ehGHo" to="wknp:7e_PmaZxgoP" resolve="MessageSet" />
      </node>
    </node>
    <node concept="312cEg" id="3La3n2rObK2" role="jymVt">
      <property role="TrG5h" value="editor" />
      <node concept="3Tm6S6" id="3La3n2rO8Ia" role="1B3o_S" />
      <node concept="3uibUv" id="3La3n2rOblG" role="1tU5fm">
        <ref role="3uigEE" to="exr9:~NodeEditorComponent" resolve="NodeEditorComponent" />
      </node>
    </node>
    <node concept="2tJIrI" id="7e_PmaZAmrL" role="jymVt" />
    <node concept="3clFbW" id="1sOlkZtGfbv" role="jymVt">
      <node concept="37vLTG" id="3La3n2rHGBG" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3La3n2rHHm0" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="1sOlkZtGfbx" role="3clF45" />
      <node concept="3Tm1VV" id="1sOlkZtGfby" role="1B3o_S" />
      <node concept="3clFbS" id="1sOlkZtGfbz" role="3clF47">
        <node concept="3clFbF" id="3La3n2rOf7o" role="3cqZAp">
          <node concept="37vLTI" id="3La3n2rOmja" role="3clFbG">
            <node concept="2ShNRf" id="3La3n2rOnpY" role="37vLTx">
              <node concept="1pGfFk" id="2NcVYuTOJzT" role="2ShVmc">
                <ref role="37wK5l" to="exr9:~NodeEditorComponent.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="NodeEditorComponent" />
                <node concept="37vLTw" id="3La3n2rOG3G" role="37wK5m">
                  <ref role="3cqZAo" node="3La3n2rHGBG" resolve="repository" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3La3n2rOfR0" role="37vLTJ">
              <node concept="Xjq3P" id="3La3n2rOf7m" role="2Oq$k0" />
              <node concept="2OwXpG" id="3La3n2rOgDt" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5FinwQP1QgW" role="3cqZAp">
          <node concept="2OqwBi" id="5FinwQP1QYC" role="3clFbG">
            <node concept="Xjq3P" id="5FinwQP1QgU" role="2Oq$k0" />
            <node concept="liA8E" id="5FinwQP24i6" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollPane.setViewportView(java.awt.Component)" resolve="setViewportView" />
              <node concept="2OqwBi" id="5FinwQP25RR" role="37wK5m">
                <node concept="Xjq3P" id="5FinwQP24SN" role="2Oq$k0" />
                <node concept="2OwXpG" id="5FinwQP26Mx" role="2OqNvi">
                  <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3YQqo4704va" role="3cqZAp">
          <node concept="2OqwBi" id="3YQqo4707be" role="3clFbG">
            <node concept="2OqwBi" id="3YQqo47053H" role="2Oq$k0">
              <node concept="Xjq3P" id="3YQqo4704v8" role="2Oq$k0" />
              <node concept="liA8E" id="3YQqo4706vL" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JScrollPane.getViewport()" resolve="getViewport" />
              </node>
            </node>
            <node concept="liA8E" id="3YQqo4708mX" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBackground(java.awt.Color)" resolve="setBackground" />
              <node concept="10M0yZ" id="3YQqo470n_w" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
                <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ajo$O32Q8O" role="3cqZAp">
          <node concept="37vLTI" id="1ajo$O32Xju" role="3clFbG">
            <node concept="2OqwBi" id="1ajo$O32Uva" role="37vLTJ">
              <node concept="Xjq3P" id="1ajo$O32TxH" role="2Oq$k0" />
              <node concept="2OwXpG" id="1ajo$O32VwT" role="2OqNvi">
                <ref role="2Oxat5" node="1ajo$O32MNd" resolve="root" />
              </node>
            </node>
            <node concept="2ShNRf" id="7e_PmaZAJT4" role="37vLTx">
              <node concept="3zrR0B" id="7e_PmaZAJT5" role="2ShVmc">
                <node concept="3Tqbb2" id="7e_PmaZAJT6" role="3zrR0E">
                  <ref role="ehGHo" to="wknp:7e_PmaZxgoP" resolve="MessageSet" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3La3n2rHiU7" role="jymVt" />
    <node concept="3clFb_" id="3La3n2rHvwH" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="37vLTG" id="7e_PmaZA_rB" role="3clF46">
        <property role="TrG5h" value="repository" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7e_PmaZB7p4" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3clFbS" id="3La3n2rHvwK" role="3clF47">
        <node concept="3cpWs8" id="3La3n2rl2Ct" role="3cqZAp">
          <node concept="3cpWsn" id="3La3n2rl2Cu" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="3La3n2rl2Cq" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DTempModel" resolve="DTempModel" />
            </node>
            <node concept="2ShNRf" id="3La3n2rl2Cv" role="33vP2m">
              <node concept="1pGfFk" id="3La3n2rl2Cw" role="2ShVmc">
                <ref role="37wK5l" to="t4tl:~DTempModel.&lt;init&gt;(java.lang.String)" resolve="DTempModel" />
                <node concept="Xl_RD" id="3La3n2rl2Cx" role="37wK5m">
                  <property role="Xl_RC" value="DClareErrors" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3La3n2rl4HA" role="3cqZAp">
          <node concept="2OqwBi" id="3La3n2rl5Q_" role="3clFbG">
            <node concept="37vLTw" id="3La3n2rl4H$" role="2Oq$k0">
              <ref role="3cqZAo" node="3La3n2rl2Cu" resolve="model" />
            </node>
            <node concept="liA8E" id="3La3n2rl6Dq" role="2OqNvi">
              <ref role="37wK5l" to="g3l6:~SModelBase.attach(org.jetbrains.mps.openapi.module.SRepository)" resolve="attach" />
              <node concept="37vLTw" id="3La3n2rl7fx" role="37wK5m">
                <ref role="3cqZAo" node="7e_PmaZA_rB" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5ED0xB6Q0xk" role="3cqZAp">
          <node concept="3cpWsn" id="5ED0xB6Q0xn" role="3cpWs9">
            <property role="TrG5h" value="m" />
            <node concept="H_c77" id="5ED0xB6Q0xi" role="1tU5fm" />
            <node concept="37vLTw" id="3La3n2rl2Cy" role="33vP2m">
              <ref role="3cqZAo" node="3La3n2rl2Cu" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ED0xB6QlU4" role="3cqZAp">
          <node concept="2OqwBi" id="5ED0xB6QmCs" role="3clFbG">
            <node concept="37vLTw" id="5ED0xB6QlU2" role="2Oq$k0">
              <ref role="3cqZAo" node="5ED0xB6Q0xn" resolve="m" />
            </node>
            <node concept="3BYIHo" id="5ED0xB6QmSR" role="2OqNvi">
              <node concept="37vLTw" id="5ED0xB6QnpG" role="3BYIHq">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ED0xB6Pj_k" role="3cqZAp">
          <node concept="2OqwBi" id="5ED0xB6PkrX" role="3clFbG">
            <node concept="2OqwBi" id="3La3n2rOH68" role="2Oq$k0">
              <node concept="Xjq3P" id="5ED0xB6P_w1" role="2Oq$k0" />
              <node concept="2OwXpG" id="3La3n2rOHTK" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="5ED0xB6PltT" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.editNode(org.jetbrains.mps.openapi.model.SNode)" resolve="editNode" />
              <node concept="37vLTw" id="5ED0xB6PlX9" role="37wK5m">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3La3n2rHrRw" role="1B3o_S" />
      <node concept="3cqZAl" id="3La3n2rHyN9" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1DUQ$OwyBee" role="jymVt" />
    <node concept="3clFb_" id="1DUQ$OwxyYT" role="jymVt">
      <property role="TrG5h" value="on" />
      <node concept="37vLTG" id="1DUQ$Ow_sCL" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1DUQ$Ow_sCM" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="1DUQ$OwxyYV" role="3clF45" />
      <node concept="3Tm1VV" id="1DUQ$OwxyYW" role="1B3o_S" />
      <node concept="3clFbS" id="1DUQ$OwxyYX" role="3clF47">
        <node concept="3clFbF" id="1DUQ$Owt4ZS" role="3cqZAp">
          <node concept="37vLTI" id="1DUQ$Owt9eD" role="3clFbG">
            <node concept="3clFbT" id="1DUQ$Owt9Y2" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="1DUQ$Owt5KE" role="37vLTJ">
              <node concept="37vLTw" id="1DUQ$Owt4ZR" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="1DUQ$Owt65T" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:1DUQ$OwrN1P" resolve="engineActive" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xCxV5gb1ok" role="3cqZAp">
          <node concept="2OqwBi" id="4xCxV5gb1ol" role="3clFbG">
            <node concept="2OqwBi" id="4xCxV5gb1om" role="2Oq$k0">
              <node concept="37vLTw" id="4xCxV5gb1on" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3Tsc0h" id="4xCxV5gb1oo" role="2OqNvi">
                <ref role="3TtcxE" to="wknp:7e_PmaZxgoQ" resolve="errors" />
              </node>
            </node>
            <node concept="2Kehj3" id="4xCxV5gb1op" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="4xCxV5gb3GJ" role="3cqZAp">
          <node concept="2OqwBi" id="4xCxV5gb3GK" role="3clFbG">
            <node concept="2OqwBi" id="4xCxV5gb3GL" role="2Oq$k0">
              <node concept="37vLTw" id="4xCxV5gb3GM" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3Tsc0h" id="4xCxV5gbvQm" role="2OqNvi">
                <ref role="3TtcxE" to="wknp:30f$n$3bYxD" resolve="warnings" />
              </node>
            </node>
            <node concept="2Kehj3" id="4xCxV5gb3GO" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="4xCxV5gb86r" role="3cqZAp">
          <node concept="2OqwBi" id="4xCxV5gb86s" role="3clFbG">
            <node concept="2OqwBi" id="4xCxV5gb86t" role="2Oq$k0">
              <node concept="37vLTw" id="4xCxV5gb86u" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3Tsc0h" id="4xCxV5gby1l" role="2OqNvi">
                <ref role="3TtcxE" to="wknp:30f$n$3bYxH" resolve="infos" />
              </node>
            </node>
            <node concept="2Kehj3" id="4xCxV5gb86w" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="4xCxV5gbevC" role="3cqZAp">
          <node concept="2OqwBi" id="4xCxV5gbevD" role="3clFbG">
            <node concept="2OqwBi" id="4xCxV5gbevE" role="2Oq$k0">
              <node concept="37vLTw" id="4xCxV5gbevF" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3Tsc0h" id="4xCxV5gb$lw" role="2OqNvi">
                <ref role="3TtcxE" to="wknp:30f$n$3bYxM" resolve="debugs" />
              </node>
            </node>
            <node concept="2Kehj3" id="4xCxV5gbevH" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="3YQqo478q4a" role="3cqZAp">
          <node concept="37vLTI" id="3YQqo478$Lb" role="3clFbG">
            <node concept="3cmrfG" id="3YQqo478JrY" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="3YQqo478zpQ" role="37vLTJ">
              <node concept="37vLTw" id="3YQqo478q48" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="3YQqo478zUO" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:2TyoUkhlXBM" resolve="runs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3YQqo478JBX" role="3cqZAp">
          <node concept="37vLTI" id="3YQqo478JBY" role="3clFbG">
            <node concept="3cmrfG" id="3YQqo478JBZ" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="3YQqo478JC0" role="37vLTJ">
              <node concept="37vLTw" id="3YQqo478JC1" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="3YQqo478SLc" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:2TyoUkhlXBP" resolve="changesEver" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3YQqo478_BN" role="3cqZAp" />
        <node concept="3clFbF" id="2NcVYuTOUqC" role="3cqZAp">
          <node concept="2OqwBi" id="2NcVYuTOUqD" role="3clFbG">
            <node concept="2OqwBi" id="2NcVYuTOUqE" role="2Oq$k0">
              <node concept="Xjq3P" id="2NcVYuTOUqF" role="2Oq$k0" />
              <node concept="2OwXpG" id="2NcVYuTOUqG" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="2NcVYuTOUqH" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1sOlkZtGcUd" role="jymVt" />
    <node concept="3clFb_" id="1DUQ$OwuKJQ" role="jymVt">
      <property role="TrG5h" value="off" />
      <node concept="37vLTG" id="1DUQ$Ow_JNZ" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1DUQ$Ow_JO0" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="1DUQ$OwuKJS" role="3clF45" />
      <node concept="3Tm1VV" id="1DUQ$OwuKJT" role="1B3o_S" />
      <node concept="3clFbS" id="1DUQ$OwuKJU" role="3clF47">
        <node concept="3clFbF" id="1DUQ$Owv6Av" role="3cqZAp">
          <node concept="37vLTI" id="1DUQ$Owv6Aw" role="3clFbG">
            <node concept="3clFbT" id="1DUQ$Owv6Ax" role="37vLTx" />
            <node concept="2OqwBi" id="1DUQ$Owv6Ay" role="37vLTJ">
              <node concept="37vLTw" id="1DUQ$Owv6Az" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="1DUQ$Owv6A$" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:1DUQ$OwrN1P" resolve="engineActive" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3YQqo478T3e" role="3cqZAp">
          <node concept="37vLTI" id="3YQqo478T3f" role="3clFbG">
            <node concept="3cmrfG" id="3YQqo478T3g" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="3YQqo478T3h" role="37vLTJ">
              <node concept="37vLTw" id="3YQqo478T3i" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="3YQqo478T3j" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:2TyoUkhlXBM" resolve="runs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3YQqo478T3k" role="3cqZAp">
          <node concept="37vLTI" id="3YQqo478T3l" role="3clFbG">
            <node concept="3cmrfG" id="3YQqo478T3m" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="3YQqo478T3n" role="37vLTJ">
              <node concept="37vLTw" id="3YQqo478T3o" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="3YQqo478T3p" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:2TyoUkhlXBP" resolve="changesEver" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3YQqo478TsS" role="3cqZAp" />
        <node concept="3clFbF" id="2NcVYuTOUcl" role="3cqZAp">
          <node concept="2OqwBi" id="2NcVYuTOUcm" role="3clFbG">
            <node concept="2OqwBi" id="2NcVYuTOUcn" role="2Oq$k0">
              <node concept="Xjq3P" id="2NcVYuTOUco" role="2Oq$k0" />
              <node concept="2OwXpG" id="2NcVYuTOUcp" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="2NcVYuTOUcq" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1sOlkZtG9YL" role="1B3o_S" />
    <node concept="3uibUv" id="5FinwQP1Yj7" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JScrollPane" resolve="JScrollPane" />
    </node>
    <node concept="2tJIrI" id="1DUQ$Owx0TT" role="jymVt" />
    <node concept="3clFb_" id="1sOlkZtHpWV" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="start" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1sOlkZtHpWW" role="1B3o_S" />
      <node concept="3cqZAl" id="1sOlkZtHpWY" role="3clF45" />
      <node concept="37vLTG" id="1sOlkZtHpWZ" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1sOlkZtHpX0" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="1sOlkZtHpX3" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1DUQ$Owtw2X" role="jymVt" />
    <node concept="3clFb_" id="1sOlkZtHpX5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="stop" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1sOlkZtHpX6" role="1B3o_S" />
      <node concept="3cqZAl" id="1sOlkZtHpX8" role="3clF45" />
      <node concept="37vLTG" id="1sOlkZtHpX9" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1sOlkZtHpXa" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="30f$n$3bCt3" role="3clF46">
        <property role="TrG5h" value="getter" />
        <node concept="3uibUv" id="30f$n$3bGYF" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~Getter" resolve="Getter" />
        </node>
      </node>
      <node concept="37vLTG" id="30f$n$3bHjn" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="4lIQaixKB9g" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
        </node>
      </node>
      <node concept="3clFbS" id="1sOlkZtHpXj" role="3clF47">
        <node concept="3clFbF" id="5FinwQOV3ZB" role="3cqZAp">
          <node concept="2OqwBi" id="5FinwQOV3ZC" role="3clFbG">
            <node concept="2OqwBi" id="5FinwQOV3ZD" role="2Oq$k0">
              <node concept="37vLTw" id="5FinwQOV3ZE" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3Tsc0h" id="5FinwQOV3ZF" role="2OqNvi">
                <ref role="3TtcxE" to="wknp:7e_PmaZxgoQ" resolve="errors" />
              </node>
            </node>
            <node concept="2Kehj3" id="5FinwQOV3ZG" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="30f$n$3f4cv" role="3cqZAp">
          <node concept="2OqwBi" id="30f$n$3f4cw" role="3clFbG">
            <node concept="2OqwBi" id="30f$n$3f4cx" role="2Oq$k0">
              <node concept="37vLTw" id="30f$n$3f4cy" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3Tsc0h" id="30f$n$3fwvd" role="2OqNvi">
                <ref role="3TtcxE" to="wknp:30f$n$3bYxD" resolve="warnings" />
              </node>
            </node>
            <node concept="2Kehj3" id="30f$n$3f4c$" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="30f$n$3f95x" role="3cqZAp">
          <node concept="2OqwBi" id="30f$n$3f95y" role="3clFbG">
            <node concept="2OqwBi" id="30f$n$3f95z" role="2Oq$k0">
              <node concept="37vLTw" id="30f$n$3f95$" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3Tsc0h" id="30f$n$3fyPZ" role="2OqNvi">
                <ref role="3TtcxE" to="wknp:30f$n$3bYxH" resolve="infos" />
              </node>
            </node>
            <node concept="2Kehj3" id="30f$n$3f95A" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="30f$n$3fmQi" role="3cqZAp">
          <node concept="2OqwBi" id="30f$n$3fmQj" role="3clFbG">
            <node concept="2OqwBi" id="30f$n$3fmQk" role="2Oq$k0">
              <node concept="37vLTw" id="30f$n$3fmQl" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3Tsc0h" id="30f$n$3f_8t" role="2OqNvi">
                <ref role="3TtcxE" to="wknp:30f$n$3bYxM" resolve="debugs" />
              </node>
            </node>
            <node concept="2Kehj3" id="30f$n$3fmQn" role="2OqNvi" />
          </node>
        </node>
        <node concept="2Gpval" id="5mT2CTpE4Yu" role="3cqZAp">
          <node concept="2GrKxI" id="5mT2CTpE4Yv" role="2Gsz3X">
            <property role="TrG5h" value="e" />
          </node>
          <node concept="3clFbS" id="5mT2CTpE4Yw" role="2LFqv$">
            <node concept="3clFbF" id="5mT2CTpE4Yx" role="3cqZAp">
              <node concept="2OqwBi" id="5mT2CTpE4Yy" role="3clFbG">
                <node concept="2OqwBi" id="5mT2CTpE4Yz" role="2Oq$k0">
                  <node concept="37vLTw" id="5mT2CTpE4Y$" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
                  </node>
                  <node concept="3Tsc0h" id="5mT2CTpE4Y_" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:7e_PmaZxgoQ" resolve="errors" />
                  </node>
                </node>
                <node concept="TSZUe" id="5mT2CTpE4YA" role="2OqNvi">
                  <node concept="2OqwBi" id="1KqhpdFP61X" role="25WWJ7">
                    <node concept="35c_gC" id="1KqhpdFP61Y" role="2Oq$k0">
                      <ref role="35c_gD" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                    </node>
                    <node concept="2qgKlT" id="1KqhpdFP61Z" role="2OqNvi">
                      <ref role="37wK5l" to="akim:1KqhpdFNfb5" resolve="create" />
                      <node concept="2GrUjf" id="5mT2CTpEZgJ" role="37wK5m">
                        <ref role="2Gs0qQ" node="5mT2CTpE4Yv" resolve="e" />
                      </node>
                      <node concept="37vLTw" id="1KqhpdFPGLa" role="37wK5m">
                        <ref role="3cqZAo" node="30f$n$3bCt3" resolve="getter" />
                      </node>
                      <node concept="Rm8GO" id="5mT2CTpESUW" role="37wK5m">
                        <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
                        <ref role="Rm8GQ" to="t4tl:~DMessageType.error" resolve="error" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="10QFUN" id="5mT2CTpE4YH" role="2GsD0m">
            <node concept="2OqwBi" id="5mT2CTpE4YI" role="10QFUP">
              <node concept="37vLTw" id="5mT2CTpE4YJ" role="2Oq$k0">
                <ref role="3cqZAo" node="30f$n$3bCt3" resolve="getter" />
              </node>
              <node concept="liA8E" id="5mT2CTpE4YK" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~Getter.get(java.util.function.Supplier)" resolve="get" />
                <node concept="1bVj0M" id="5mT2CTpE4YL" role="37wK5m">
                  <node concept="3clFbS" id="5mT2CTpE4YM" role="1bW5cS">
                    <node concept="3clFbF" id="5mT2CTpE4YN" role="3cqZAp">
                      <node concept="2OqwBi" id="5mT2CTpE4YO" role="3clFbG">
                        <node concept="37vLTw" id="5mT2CTpE4YP" role="2Oq$k0">
                          <ref role="3cqZAo" node="30f$n$3bHjn" resolve="engine" />
                        </node>
                        <node concept="liA8E" id="5mT2CTpE4YQ" role="2OqNvi">
                          <ref role="37wK5l" to="t4tl:~DClareMPS.getMessages(org.modelingvalue.dclare.mps.DMessageType)" resolve="getMessages" />
                          <node concept="Rm8GO" id="5mT2CTpE4YR" role="37wK5m">
                            <ref role="Rm8GQ" to="t4tl:~DMessageType.error" resolve="error" />
                            <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="5mT2CTpE4YS" role="10QFUM">
              <ref role="3uigEE" to="zrbp:~QualifiedSet" resolve="QualifiedSet" />
              <node concept="3uibUv" id="5mT2CTpEfkO" role="11_B2D">
                <ref role="3uigEE" to="42m3:~Triple" resolve="Triple" />
                <node concept="3uibUv" id="exLA5AeoPC" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                </node>
                <node concept="3uibUv" id="2TyoUkhj90V" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DFeature" resolve="DFeature" />
                </node>
                <node concept="3uibUv" id="5mT2CTpEoG4" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="3uibUv" id="5mT2CTpE$$p" role="11_B2D">
                <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5mT2CTpF_C2" role="3cqZAp">
          <node concept="2GrKxI" id="5mT2CTpF_C3" role="2Gsz3X">
            <property role="TrG5h" value="e" />
          </node>
          <node concept="3clFbS" id="5mT2CTpF_C4" role="2LFqv$">
            <node concept="3clFbF" id="5mT2CTpF_C5" role="3cqZAp">
              <node concept="2OqwBi" id="5mT2CTpF_C6" role="3clFbG">
                <node concept="2OqwBi" id="5mT2CTpF_C7" role="2Oq$k0">
                  <node concept="37vLTw" id="5mT2CTpF_C8" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
                  </node>
                  <node concept="3Tsc0h" id="4xCxV5gbAJ1" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:30f$n$3bYxD" resolve="warnings" />
                  </node>
                </node>
                <node concept="TSZUe" id="5mT2CTpF_Ca" role="2OqNvi">
                  <node concept="2OqwBi" id="5mT2CTpF_Cb" role="25WWJ7">
                    <node concept="35c_gC" id="5mT2CTpF_Cc" role="2Oq$k0">
                      <ref role="35c_gD" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                    </node>
                    <node concept="2qgKlT" id="5mT2CTpF_Cd" role="2OqNvi">
                      <ref role="37wK5l" to="akim:1KqhpdFNfb5" resolve="create" />
                      <node concept="2GrUjf" id="5mT2CTpF_Ce" role="37wK5m">
                        <ref role="2Gs0qQ" node="5mT2CTpF_C3" resolve="e" />
                      </node>
                      <node concept="37vLTw" id="5mT2CTpF_Cf" role="37wK5m">
                        <ref role="3cqZAo" node="30f$n$3bCt3" resolve="getter" />
                      </node>
                      <node concept="Rm8GO" id="5mT2CTpG1P2" role="37wK5m">
                        <ref role="Rm8GQ" to="t4tl:~DMessageType.warning" resolve="warning" />
                        <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="10QFUN" id="5mT2CTpF_Ch" role="2GsD0m">
            <node concept="2OqwBi" id="5mT2CTpF_Ci" role="10QFUP">
              <node concept="37vLTw" id="5mT2CTpF_Cj" role="2Oq$k0">
                <ref role="3cqZAo" node="30f$n$3bCt3" resolve="getter" />
              </node>
              <node concept="liA8E" id="5mT2CTpF_Ck" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~Getter.get(java.util.function.Supplier)" resolve="get" />
                <node concept="1bVj0M" id="5mT2CTpF_Cl" role="37wK5m">
                  <node concept="3clFbS" id="5mT2CTpF_Cm" role="1bW5cS">
                    <node concept="3clFbF" id="5mT2CTpF_Cn" role="3cqZAp">
                      <node concept="2OqwBi" id="5mT2CTpF_Co" role="3clFbG">
                        <node concept="37vLTw" id="5mT2CTpF_Cp" role="2Oq$k0">
                          <ref role="3cqZAo" node="30f$n$3bHjn" resolve="engine" />
                        </node>
                        <node concept="liA8E" id="5mT2CTpF_Cq" role="2OqNvi">
                          <ref role="37wK5l" to="t4tl:~DClareMPS.getMessages(org.modelingvalue.dclare.mps.DMessageType)" resolve="getMessages" />
                          <node concept="Rm8GO" id="5mT2CTpG5$o" role="37wK5m">
                            <ref role="Rm8GQ" to="t4tl:~DMessageType.warning" resolve="warning" />
                            <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="5mT2CTpF_Cs" role="10QFUM">
              <ref role="3uigEE" to="zrbp:~QualifiedSet" resolve="QualifiedSet" />
              <node concept="3uibUv" id="exLA5AepE2" role="11_B2D">
                <ref role="3uigEE" to="42m3:~Triple" resolve="Triple" />
                <node concept="3uibUv" id="rTfv3GwU5C" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                </node>
                <node concept="3uibUv" id="2TyoUkhjgED" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DFeature" resolve="DFeature" />
                </node>
                <node concept="3uibUv" id="exLA5AepE5" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="3uibUv" id="5mT2CTpF_Cw" role="11_B2D">
                <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5mT2CTpFFYv" role="3cqZAp">
          <node concept="2GrKxI" id="5mT2CTpFFYw" role="2Gsz3X">
            <property role="TrG5h" value="e" />
          </node>
          <node concept="3clFbS" id="5mT2CTpFFYx" role="2LFqv$">
            <node concept="3clFbF" id="5mT2CTpFFYy" role="3cqZAp">
              <node concept="2OqwBi" id="5mT2CTpFFYz" role="3clFbG">
                <node concept="2OqwBi" id="5mT2CTpFFY$" role="2Oq$k0">
                  <node concept="37vLTw" id="5mT2CTpFFY_" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
                  </node>
                  <node concept="3Tsc0h" id="4xCxV5gbDmx" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:30f$n$3bYxH" resolve="infos" />
                  </node>
                </node>
                <node concept="TSZUe" id="5mT2CTpFFYB" role="2OqNvi">
                  <node concept="2OqwBi" id="5mT2CTpFFYC" role="25WWJ7">
                    <node concept="35c_gC" id="5mT2CTpFFYD" role="2Oq$k0">
                      <ref role="35c_gD" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                    </node>
                    <node concept="2qgKlT" id="5mT2CTpFFYE" role="2OqNvi">
                      <ref role="37wK5l" to="akim:1KqhpdFNfb5" resolve="create" />
                      <node concept="2GrUjf" id="5mT2CTpFFYF" role="37wK5m">
                        <ref role="2Gs0qQ" node="5mT2CTpFFYw" resolve="e" />
                      </node>
                      <node concept="37vLTw" id="5mT2CTpFFYG" role="37wK5m">
                        <ref role="3cqZAo" node="30f$n$3bCt3" resolve="getter" />
                      </node>
                      <node concept="Rm8GO" id="5mT2CTpFYb$" role="37wK5m">
                        <ref role="Rm8GQ" to="t4tl:~DMessageType.info" resolve="info" />
                        <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="10QFUN" id="5mT2CTpFFYI" role="2GsD0m">
            <node concept="2OqwBi" id="5mT2CTpFFYJ" role="10QFUP">
              <node concept="37vLTw" id="5mT2CTpFFYK" role="2Oq$k0">
                <ref role="3cqZAo" node="30f$n$3bCt3" resolve="getter" />
              </node>
              <node concept="liA8E" id="5mT2CTpFFYL" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~Getter.get(java.util.function.Supplier)" resolve="get" />
                <node concept="1bVj0M" id="5mT2CTpFFYM" role="37wK5m">
                  <node concept="3clFbS" id="5mT2CTpFFYN" role="1bW5cS">
                    <node concept="3clFbF" id="5mT2CTpFFYO" role="3cqZAp">
                      <node concept="2OqwBi" id="5mT2CTpFFYP" role="3clFbG">
                        <node concept="37vLTw" id="5mT2CTpFFYQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="30f$n$3bHjn" resolve="engine" />
                        </node>
                        <node concept="liA8E" id="5mT2CTpFFYR" role="2OqNvi">
                          <ref role="37wK5l" to="t4tl:~DClareMPS.getMessages(org.modelingvalue.dclare.mps.DMessageType)" resolve="getMessages" />
                          <node concept="Rm8GO" id="5mT2CTpFUIV" role="37wK5m">
                            <ref role="Rm8GQ" to="t4tl:~DMessageType.info" resolve="info" />
                            <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="5mT2CTpFFYT" role="10QFUM">
              <ref role="3uigEE" to="zrbp:~QualifiedSet" resolve="QualifiedSet" />
              <node concept="3uibUv" id="exLA5AeqEP" role="11_B2D">
                <ref role="3uigEE" to="42m3:~Triple" resolve="Triple" />
                <node concept="3uibUv" id="rTfv3GwV3j" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                </node>
                <node concept="3uibUv" id="2TyoUkhjiYZ" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DFeature" resolve="DFeature" />
                </node>
                <node concept="3uibUv" id="exLA5AeqES" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="3uibUv" id="5mT2CTpFFYX" role="11_B2D">
                <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5mT2CTpFJPs" role="3cqZAp">
          <node concept="2GrKxI" id="5mT2CTpFJPt" role="2Gsz3X">
            <property role="TrG5h" value="e" />
          </node>
          <node concept="3clFbS" id="5mT2CTpFJPu" role="2LFqv$">
            <node concept="3clFbF" id="5mT2CTpFJPv" role="3cqZAp">
              <node concept="2OqwBi" id="5mT2CTpFJPw" role="3clFbG">
                <node concept="2OqwBi" id="5mT2CTpFJPx" role="2Oq$k0">
                  <node concept="37vLTw" id="5mT2CTpFJPy" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
                  </node>
                  <node concept="3Tsc0h" id="4xCxV5gbFW3" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:30f$n$3bYxM" resolve="debugs" />
                  </node>
                </node>
                <node concept="TSZUe" id="5mT2CTpFJP$" role="2OqNvi">
                  <node concept="2OqwBi" id="5mT2CTpFJP_" role="25WWJ7">
                    <node concept="35c_gC" id="5mT2CTpFJPA" role="2Oq$k0">
                      <ref role="35c_gD" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                    </node>
                    <node concept="2qgKlT" id="5mT2CTpFJPB" role="2OqNvi">
                      <ref role="37wK5l" to="akim:1KqhpdFNfb5" resolve="create" />
                      <node concept="2GrUjf" id="5mT2CTpFJPC" role="37wK5m">
                        <ref role="2Gs0qQ" node="5mT2CTpFJPt" resolve="e" />
                      </node>
                      <node concept="37vLTw" id="5mT2CTpFJPD" role="37wK5m">
                        <ref role="3cqZAo" node="30f$n$3bCt3" resolve="getter" />
                      </node>
                      <node concept="Rm8GO" id="5mT2CTpFRoU" role="37wK5m">
                        <ref role="Rm8GQ" to="t4tl:~DMessageType.debug" resolve="debug" />
                        <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="10QFUN" id="5mT2CTpFJPF" role="2GsD0m">
            <node concept="2OqwBi" id="5mT2CTpFJPG" role="10QFUP">
              <node concept="37vLTw" id="5mT2CTpFJPH" role="2Oq$k0">
                <ref role="3cqZAo" node="30f$n$3bCt3" resolve="getter" />
              </node>
              <node concept="liA8E" id="5mT2CTpFJPI" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~Getter.get(java.util.function.Supplier)" resolve="get" />
                <node concept="1bVj0M" id="5mT2CTpFJPJ" role="37wK5m">
                  <node concept="3clFbS" id="5mT2CTpFJPK" role="1bW5cS">
                    <node concept="3clFbF" id="5mT2CTpFJPL" role="3cqZAp">
                      <node concept="2OqwBi" id="5mT2CTpFJPM" role="3clFbG">
                        <node concept="37vLTw" id="5mT2CTpFJPN" role="2Oq$k0">
                          <ref role="3cqZAo" node="30f$n$3bHjn" resolve="engine" />
                        </node>
                        <node concept="liA8E" id="5mT2CTpFJPO" role="2OqNvi">
                          <ref role="37wK5l" to="t4tl:~DClareMPS.getMessages(org.modelingvalue.dclare.mps.DMessageType)" resolve="getMessages" />
                          <node concept="Rm8GO" id="5mT2CTpFOm1" role="37wK5m">
                            <ref role="Rm8GQ" to="t4tl:~DMessageType.debug" resolve="debug" />
                            <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="5mT2CTpFJPQ" role="10QFUM">
              <ref role="3uigEE" to="zrbp:~QualifiedSet" resolve="QualifiedSet" />
              <node concept="3uibUv" id="exLA5AerE$" role="11_B2D">
                <ref role="3uigEE" to="42m3:~Triple" resolve="Triple" />
                <node concept="3uibUv" id="rTfv3GwVQm" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                </node>
                <node concept="3uibUv" id="2TyoUkhjlt1" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DFeature" resolve="DFeature" />
                </node>
                <node concept="3uibUv" id="exLA5AerEB" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="3uibUv" id="5mT2CTpFJPU" role="11_B2D">
                <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3YQqo478TY4" role="3cqZAp" />
        <node concept="3clFbF" id="2NcVYuTP3fD" role="3cqZAp">
          <node concept="2OqwBi" id="2NcVYuTP3fE" role="3clFbG">
            <node concept="2OqwBi" id="2NcVYuTP3fF" role="2Oq$k0">
              <node concept="Xjq3P" id="2NcVYuTP3fG" role="2Oq$k0" />
              <node concept="2OwXpG" id="2NcVYuTP3fH" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="2NcVYuTP3fI" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1BJXw5xqjJp" role="jymVt" />
    <node concept="3clFb_" id="57dWhtn9BGy" role="jymVt">
      <property role="TrG5h" value="stats" />
      <node concept="3clFbS" id="57dWhtn9BG_" role="3clF47">
        <node concept="1X3_iC" id="3YQqo470_m7" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="RRSsy" id="7R0oT8QfEjF" role="8Wnug">
            <property role="RRSoG" value="h1akgim/info" />
            <node concept="3cpWs3" id="7R0oT8QfSyf" role="RRSoy">
              <node concept="2YIFZM" id="7R0oT8QfTaA" role="3uHU7w">
                <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object)" resolve="identityHashCode" />
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <node concept="37vLTw" id="7R0oT8QfUcO" role="37wK5m">
                  <ref role="3cqZAo" node="57dWhtn9W3f" resolve="stats" />
                </node>
              </node>
              <node concept="3cpWs3" id="7R0oT8QfRBx" role="3uHU7B">
                <node concept="3cpWs3" id="7R0oT8QfEDl" role="3uHU7B">
                  <node concept="Xl_RD" id="7R0oT8QfEjH" role="3uHU7B" />
                  <node concept="37vLTw" id="7R0oT8QfFAP" role="3uHU7w">
                    <ref role="3cqZAo" node="57dWhtn9W3f" resolve="stats" />
                  </node>
                </node>
                <node concept="Xl_RD" id="7R0oT8QfS66" role="3uHU7w">
                  <property role="Xl_RC" value="     " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="57dWhtnagv5" role="3cqZAp">
          <node concept="37vLTI" id="57dWhtnairB" role="3clFbG">
            <node concept="10QFUN" id="3YQqo46YD8s" role="37vLTx">
              <node concept="2OqwBi" id="57dWhtnakiV" role="10QFUP">
                <node concept="37vLTw" id="57dWhtnajtJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="57dWhtn9W3f" resolve="stats" />
                </node>
                <node concept="liA8E" id="3YQqo46XKGt" role="2OqNvi">
                  <ref role="37wK5l" to="kag7:~UniverseStatistics.runCount()" resolve="runCount" />
                </node>
              </node>
              <node concept="10Oyi0" id="3YQqo46YD8t" role="10QFUM" />
            </node>
            <node concept="2OqwBi" id="57dWhtnahas" role="37vLTJ">
              <node concept="37vLTw" id="57dWhtnagv4" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="57dWhtnahqG" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:2TyoUkhlXBM" resolve="runs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1FrOyhdWYl5" role="3cqZAp">
          <node concept="37vLTI" id="1FrOyhdX14p" role="3clFbG">
            <node concept="2OqwBi" id="1FrOyhdX3oV" role="37vLTx">
              <node concept="37vLTw" id="1FrOyhdX2Dd" role="2Oq$k0">
                <ref role="3cqZAo" node="57dWhtn9W3f" resolve="stats" />
              </node>
              <node concept="liA8E" id="1FrOyhdX3LW" role="2OqNvi">
                <ref role="37wK5l" to="kag7:~UniverseStatistics.totalChanges()" resolve="totalChanges" />
              </node>
            </node>
            <node concept="2OqwBi" id="1FrOyhdWZsO" role="37vLTJ">
              <node concept="37vLTw" id="1FrOyhdWYl3" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="1FrOyhdX0ln" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:1FrOyhdWCsR" resolve="changes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3YQqo46XLOY" role="3cqZAp">
          <node concept="37vLTI" id="3YQqo46XLOZ" role="3clFbG">
            <node concept="10QFUN" id="3YQqo46YDql" role="37vLTx">
              <node concept="10Oyi0" id="3YQqo46YDqm" role="10QFUM" />
              <node concept="2OqwBi" id="3YQqo46XLP0" role="10QFUP">
                <node concept="37vLTw" id="3YQqo46XLP1" role="2Oq$k0">
                  <ref role="3cqZAo" node="57dWhtn9W3f" resolve="stats" />
                </node>
                <node concept="liA8E" id="3YQqo46XMiU" role="2OqNvi">
                  <ref role="37wK5l" to="kag7:~UniverseStatistics.totalChangesEver()" resolve="totalChangesEver" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3YQqo46XLP3" role="37vLTJ">
              <node concept="37vLTw" id="3YQqo46XLP4" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="3YQqo46XMEF" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:2TyoUkhlXBP" resolve="changesEver" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3YQqo478TIB" role="3cqZAp" />
        <node concept="3clFbF" id="2NcVYuTOuVE" role="3cqZAp">
          <node concept="2OqwBi" id="2NcVYuTOy8N" role="3clFbG">
            <node concept="2OqwBi" id="2NcVYuTOw0k" role="2Oq$k0">
              <node concept="Xjq3P" id="2NcVYuTOuVC" role="2Oq$k0" />
              <node concept="2OwXpG" id="2NcVYuTOxgE" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="2NcVYuTOyQG" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="57dWhtn9hB6" role="1B3o_S" />
      <node concept="3cqZAl" id="57dWhtn9BCH" role="3clF45" />
      <node concept="37vLTG" id="57dWhtn9W3f" role="3clF46">
        <property role="TrG5h" value="stats" />
        <node concept="3uibUv" id="57dWhtn9W3e" role="1tU5fm">
          <ref role="3uigEE" to="kag7:~UniverseStatistics" resolve="UniverseStatistics" />
        </node>
      </node>
    </node>
  </node>
</model>

