<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:484d68ee-91ab-4199-84e9-f43210a9918b(DclareMPSPlugin.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
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
    <import index="u4ym" ref="r:1a96ceaa-2946-43e0-af3f-cd05d77ee6d1(DclareMPSRuntime.util)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="7oz1" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.configuration(MPS.Editor/)" />
    <import index="dwmc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.uiDesigner.core(MPS.IDEA/)" />
    <import index="9z78" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.border(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="r791" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text(JDK/)" />
    <import index="akim" ref="r:36c1ea3b-fbca-41f9-87cc-9bacb8f18c30(DclareMessages.behavior)" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242773" name="modifiers" index="pLAjc" />
        <property id="1207318242774" name="keycode" index="pLAjf" />
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
        <child id="6547237850567462848" name="methodDeclaration" index="2XNbBy" />
        <child id="6547237850567462849" name="fieldDeclaration" index="2XNbBz" />
        <child id="6791676465872004185" name="toolIcon" index="1nVCmq" />
      </concept>
      <concept id="1562714432501166198" name="jetbrains.mps.lang.plugin.structure.SimpleShortcutChange" flags="lg" index="Zd509">
        <child id="1562714432501166206" name="keystroke" index="Zd501" />
      </concept>
      <concept id="1562714432501166197" name="jetbrains.mps.lang.plugin.structure.KeymapChangesDeclaration" flags="ng" index="Zd50a">
        <child id="1562714432501166199" name="shortcutChange" index="Zd508" />
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
      <concept id="6193305307616715384" name="jetbrains.mps.lang.plugin.structure.ShortcutChange" flags="ng" index="1bYyw_">
        <reference id="6193305307616734326" name="action" index="1bYAoF" />
      </concept>
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1208528650020" name="jetbrains.mps.lang.plugin.structure.ToolType" flags="in" index="1xUVSX">
        <reference id="1208529537963" name="tool" index="1xYkEM" />
      </concept>
      <concept id="1210676879526" name="jetbrains.mps.lang.plugin.structure.OnAfterReadBlock" flags="in" index="3xXM6Z" />
      <concept id="1210684385183" name="jetbrains.mps.lang.plugin.structure.PreferencePage" flags="ng" index="3yqqq6">
        <property id="1557260317236259345" name="helpTopic" index="3EcmCg" />
        <child id="1113888653567546995" name="icon" index="$jwmB" />
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
      <concept id="1224500790866" name="jetbrains.mps.baseLanguage.structure.BitwiseOrExpression" flags="nn" index="pVOtf" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
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
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
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
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
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
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
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
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
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
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
        <node concept="3cpWs8" id="3zaVTDejJf9" role="3cqZAp">
          <node concept="3cpWsn" id="3zaVTDejJfa" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="3zaVTDejIZZ" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="1KvdUw" id="3zaVTDejJfb" role="33vP2m" />
          </node>
        </node>
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
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.&lt;init&gt;(jetbrains.mps.project.ProjectBase,org.modelingvalue.dclare.mps.EngineStatusHandler)" resolve="DclareForMPSEngine" />
                <node concept="37vLTw" id="3zaVTDejJfd" role="37wK5m">
                  <ref role="3cqZAo" node="3zaVTDejJfa" resolve="mpsProject" />
                </node>
                <node concept="2ShNRf" id="QlQbLbRF9I" role="37wK5m">
                  <node concept="1pGfFk" id="1sOlkZtHHye" role="2ShVmc">
                    <ref role="37wK5l" node="1sOlkZtGUn4" resolve="MyEngineStatusHandler" />
                    <node concept="37vLTw" id="3zaVTDejL3U" role="37wK5m">
                      <ref role="3cqZAo" node="3zaVTDejJfa" resolve="mpsProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4o9njCw5o55" role="3cqZAp">
          <node concept="2OqwBi" id="4o9njCw5on8" role="3clFbG">
            <node concept="10M0yZ" id="3jy5t$Kuxrd" role="2Oq$k0">
              <ref role="3cqZAo" to="u4ym:4o9njCw5asw" resolve="ENGINES" />
              <ref role="1PxDUh" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
            </node>
            <node concept="liA8E" id="4o9njCw5o$Y" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="2OqwBi" id="3zaVTDejQ4E" role="37wK5m">
                <node concept="37vLTw" id="3zaVTDejQ4F" role="2Oq$k0">
                  <ref role="3cqZAo" node="3zaVTDejJfa" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="3zaVTDejQ4G" role="2OqNvi">
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
            <node concept="10M0yZ" id="3jy5t$KuxEB" role="2Oq$k0">
              <ref role="3cqZAo" to="u4ym:4o9njCw5asw" resolve="ENGINES" />
              <ref role="1PxDUh" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
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
    <node concept="34jfKJ" id="4FbMPtUGgRu" role="34lFYf">
      <property role="TrG5h" value="colorfulEditors" />
      <node concept="10P_77" id="4FbMPtUGhwQ" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="5LbVSrDAu_C" role="34lFYf">
      <property role="TrG5h" value="onMode" />
      <node concept="10P_77" id="5LbVSrDAu_D" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="4FbMPtUX$p$" role="34lFYf">
      <property role="TrG5h" value="devMode" />
      <node concept="10P_77" id="4FbMPtUX$p_" role="1tU5fm" />
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
      <property role="TrG5h" value="maxNrOfObserved" />
      <node concept="10Oyi0" id="1RIwjuNzmEk" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="1RIwjuNzsTl" role="34lFYf">
      <property role="TrG5h" value="maxNrOfObservers" />
      <node concept="10Oyi0" id="1RIwjuNzsTm" role="1tU5fm" />
    </node>
    <node concept="3yqqq6" id="4Y8BM43M7ZW" role="3yq$HY">
      <property role="TrG5h" value="dclare" />
      <property role="3EcmCg" value="dclare related settings" />
      <node concept="3B8pKI" id="4Y8BM43M7ZY" role="3B8L_j">
        <node concept="3clFbS" id="4Y8BM43M7ZZ" role="2VODD2">
          <node concept="3cpWs8" id="4FbMPtUYaaq" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUYaar" role="3cpWs9">
              <property role="TrG5h" value="onMode" />
              <node concept="3uibUv" id="4FbMPtUYaas" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="10QFUN" id="4FbMPtUYaat" role="33vP2m">
                <node concept="3uibUv" id="4FbMPtUYaau" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
                </node>
                <node concept="2YIFZM" id="4FbMPtUYaav" role="10QFUP">
                  <ref role="37wK5l" node="4FbMPtUXPIn" resolve="findComponentByName" />
                  <ref role="1Pybhc" node="4FbMPtUH_vD" resolve="PrefsUtils" />
                  <node concept="3yMSdA" id="4FbMPtUYaaw" role="37wK5m" />
                  <node concept="Xl_RD" id="4FbMPtUYaax" role="37wK5m">
                    <property role="Xl_RC" value="onMode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUYaay" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUYaaz" role="3cpWs9">
              <property role="TrG5h" value="devMode" />
              <node concept="3uibUv" id="4FbMPtUYaa$" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="10QFUN" id="4FbMPtUYaa_" role="33vP2m">
                <node concept="3uibUv" id="4FbMPtUYaaA" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
                </node>
                <node concept="2YIFZM" id="4FbMPtUYaaB" role="10QFUP">
                  <ref role="37wK5l" node="4FbMPtUXPIn" resolve="findComponentByName" />
                  <ref role="1Pybhc" node="4FbMPtUH_vD" resolve="PrefsUtils" />
                  <node concept="3yMSdA" id="4FbMPtUYaaC" role="37wK5m" />
                  <node concept="Xl_RD" id="4FbMPtUYaaD" role="37wK5m">
                    <property role="Xl_RC" value="devMode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUYaai" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUYaaj" role="3cpWs9">
              <property role="TrG5h" value="colorful" />
              <node concept="3uibUv" id="4FbMPtUYaak" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="10QFUN" id="4FbMPtUYaal" role="33vP2m">
                <node concept="3uibUv" id="4FbMPtUYaam" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
                </node>
                <node concept="2YIFZM" id="4FbMPtUYaan" role="10QFUP">
                  <ref role="1Pybhc" node="4FbMPtUH_vD" resolve="PrefsUtils" />
                  <ref role="37wK5l" node="4FbMPtUXPIn" resolve="findComponentByName" />
                  <node concept="3yMSdA" id="4FbMPtUYaao" role="37wK5m" />
                  <node concept="Xl_RD" id="4FbMPtUYaap" role="37wK5m">
                    <property role="Xl_RC" value="colorful" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="BvxLt1yppX" role="3cqZAp" />
          <node concept="3cpWs8" id="4FbMPtUYaaM" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUYaaN" role="3cpWs9">
              <property role="TrG5h" value="maxTotalNrOfChanges" />
              <node concept="3uibUv" id="4FbMPtUYaaO" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="4FbMPtUYaaP" role="33vP2m">
                <node concept="3uibUv" id="4FbMPtUYaaQ" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2YIFZM" id="4FbMPtUYaaR" role="10QFUP">
                  <ref role="1Pybhc" node="4FbMPtUH_vD" resolve="PrefsUtils" />
                  <ref role="37wK5l" node="4FbMPtUXPIn" resolve="findComponentByName" />
                  <node concept="3yMSdA" id="4FbMPtUYaaS" role="37wK5m" />
                  <node concept="Xl_RD" id="4FbMPtUYaaT" role="37wK5m">
                    <property role="Xl_RC" value="maxTotalNrOfChanges" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUYaaE" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUYaaF" role="3cpWs9">
              <property role="TrG5h" value="maxNrOfChanges" />
              <node concept="3uibUv" id="4FbMPtUYaaG" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="4FbMPtUYaaH" role="33vP2m">
                <node concept="3uibUv" id="4FbMPtUYaaI" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2YIFZM" id="4FbMPtUYaaJ" role="10QFUP">
                  <ref role="37wK5l" node="4FbMPtUXPIn" resolve="findComponentByName" />
                  <ref role="1Pybhc" node="4FbMPtUH_vD" resolve="PrefsUtils" />
                  <node concept="3yMSdA" id="4FbMPtUYaaK" role="37wK5m" />
                  <node concept="Xl_RD" id="4FbMPtUYaaL" role="37wK5m">
                    <property role="Xl_RC" value="maxNrOfChanges" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUYaaU" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUYaaV" role="3cpWs9">
              <property role="TrG5h" value="maxNrOfObserved" />
              <node concept="3uibUv" id="4FbMPtUYaaW" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="4FbMPtUYaaX" role="33vP2m">
                <node concept="3uibUv" id="4FbMPtUYaaY" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2YIFZM" id="4FbMPtUYaaZ" role="10QFUP">
                  <ref role="37wK5l" node="4FbMPtUXPIn" resolve="findComponentByName" />
                  <ref role="1Pybhc" node="4FbMPtUH_vD" resolve="PrefsUtils" />
                  <node concept="3yMSdA" id="4FbMPtUYab0" role="37wK5m" />
                  <node concept="Xl_RD" id="4FbMPtUYab1" role="37wK5m">
                    <property role="Xl_RC" value="maxNrOfObserved" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUYab2" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUYab3" role="3cpWs9">
              <property role="TrG5h" value="maxNrOfObservers" />
              <node concept="3uibUv" id="4FbMPtUYab4" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="4FbMPtUYab5" role="33vP2m">
                <node concept="3uibUv" id="4FbMPtUYab6" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2YIFZM" id="4FbMPtUYab7" role="10QFUP">
                  <ref role="37wK5l" node="4FbMPtUXPIn" resolve="findComponentByName" />
                  <ref role="1Pybhc" node="4FbMPtUH_vD" resolve="PrefsUtils" />
                  <node concept="3yMSdA" id="4FbMPtUYab8" role="37wK5m" />
                  <node concept="Xl_RD" id="4FbMPtUYab9" role="37wK5m">
                    <property role="Xl_RC" value="maxNrOfObservers" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4FbMPtUYafm" role="3cqZAp" />
          <node concept="3cpWs8" id="BvxLt1Bbnx" role="3cqZAp">
            <node concept="3cpWsn" id="BvxLt1Bbn$" role="3cpWs9">
              <property role="TrG5h" value="diff" />
              <node concept="10P_77" id="BvxLt1Bbnv" role="1tU5fm" />
              <node concept="3clFbT" id="BvxLt1BeYS" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbH" id="BvxLt1C8fT" role="3cqZAp" />
          <node concept="3clFbF" id="BvxLt1BhY0" role="3cqZAp">
            <node concept="37vLTI" id="BvxLt1Bj9K" role="3clFbG">
              <node concept="22lmx$" id="BvxLt1BmZL" role="37vLTx">
                <node concept="37vLTw" id="BvxLt1Bl9Q" role="3uHU7B">
                  <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
                </node>
                <node concept="3y3z36" id="BvxLt1yv3N" role="3uHU7w">
                  <node concept="2OqwBi" id="BvxLt1yv3O" role="3uHU7B">
                    <node concept="37vLTw" id="BvxLt1yv3P" role="2Oq$k0">
                      <ref role="3cqZAo" node="4FbMPtUYaaj" resolve="colorful" />
                    </node>
                    <node concept="liA8E" id="BvxLt1yv3Q" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="BvxLt1yv3R" role="3uHU7w">
                    <node concept="2WthIp" id="BvxLt1yv3S" role="2Oq$k0" />
                    <node concept="34pFcN" id="BvxLt1yv3T" role="2OqNvi">
                      <ref role="2WH_rO" node="4FbMPtUGgRu" resolve="colorfulEditors" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="BvxLt1BhXY" role="37vLTJ">
                <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="BvxLt1BrXS" role="3cqZAp">
            <node concept="37vLTI" id="BvxLt1BrXT" role="3clFbG">
              <node concept="22lmx$" id="BvxLt1BrXU" role="37vLTx">
                <node concept="37vLTw" id="BvxLt1BrXV" role="3uHU7B">
                  <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
                </node>
                <node concept="3y3z36" id="BvxLt1yv3G" role="3uHU7w">
                  <node concept="2OqwBi" id="BvxLt1yv3H" role="3uHU7B">
                    <node concept="37vLTw" id="BvxLt1yv3I" role="2Oq$k0">
                      <ref role="3cqZAo" node="4FbMPtUYaar" resolve="onMode" />
                    </node>
                    <node concept="liA8E" id="BvxLt1yv3J" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="BvxLt1yv3K" role="3uHU7w">
                    <node concept="2WthIp" id="BvxLt1yv3L" role="2Oq$k0" />
                    <node concept="34pFcN" id="BvxLt1yv3M" role="2OqNvi">
                      <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="onMode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="BvxLt1BrY3" role="37vLTJ">
                <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="BvxLt1BuZU" role="3cqZAp">
            <node concept="37vLTI" id="BvxLt1BuZV" role="3clFbG">
              <node concept="22lmx$" id="BvxLt1BuZW" role="37vLTx">
                <node concept="37vLTw" id="BvxLt1BuZX" role="3uHU7B">
                  <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
                </node>
                <node concept="3y3z36" id="BvxLt1yv3U" role="3uHU7w">
                  <node concept="2OqwBi" id="BvxLt1yv3V" role="3uHU7w">
                    <node concept="2WthIp" id="BvxLt1yv3W" role="2Oq$k0" />
                    <node concept="34pFcN" id="BvxLt1yv3X" role="2OqNvi">
                      <ref role="2WH_rO" node="4FbMPtUX$p$" resolve="devMode" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="BvxLt1yv3Y" role="3uHU7B">
                    <node concept="37vLTw" id="BvxLt1yv3Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="4FbMPtUYaaz" resolve="devMode" />
                    </node>
                    <node concept="liA8E" id="BvxLt1yv40" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="BvxLt1BuZZ" role="37vLTJ">
                <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="BvxLt1BvMZ" role="3cqZAp">
            <node concept="37vLTI" id="BvxLt1BvN0" role="3clFbG">
              <node concept="22lmx$" id="BvxLt1BvN1" role="37vLTx">
                <node concept="37vLTw" id="BvxLt1BvN2" role="3uHU7B">
                  <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
                </node>
                <node concept="17QLQc" id="BvxLt1_r$y" role="3uHU7w">
                  <node concept="0kSF2" id="BvxLt1_r$z" role="3uHU7B">
                    <node concept="3uibUv" id="BvxLt1_r$$" role="0kSFW">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                    <node concept="2OqwBi" id="BvxLt1_r$_" role="0kSFX">
                      <node concept="37vLTw" id="BvxLt1_r$A" role="2Oq$k0">
                        <ref role="3cqZAo" node="4FbMPtUYaaN" resolve="maxTotalNrOfChanges" />
                      </node>
                      <node concept="liA8E" id="BvxLt1_r$B" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="BvxLt1_r$C" role="3uHU7w">
                    <node concept="2WthIp" id="BvxLt1_r$D" role="2Oq$k0" />
                    <node concept="34pFcN" id="BvxLt1_r$E" role="2OqNvi">
                      <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="BvxLt1BvN4" role="37vLTJ">
                <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="BvxLt1BvPH" role="3cqZAp">
            <node concept="37vLTI" id="BvxLt1BvPI" role="3clFbG">
              <node concept="22lmx$" id="BvxLt1BvPJ" role="37vLTx">
                <node concept="37vLTw" id="BvxLt1BvPK" role="3uHU7B">
                  <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
                </node>
                <node concept="17QLQc" id="BvxLt1_r$F" role="3uHU7w">
                  <node concept="0kSF2" id="BvxLt1_r$G" role="3uHU7B">
                    <node concept="3uibUv" id="BvxLt1_r$H" role="0kSFW">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                    <node concept="2OqwBi" id="BvxLt1_r$I" role="0kSFX">
                      <node concept="37vLTw" id="BvxLt1_r$J" role="2Oq$k0">
                        <ref role="3cqZAo" node="4FbMPtUYaaF" resolve="maxNrOfChanges" />
                      </node>
                      <node concept="liA8E" id="BvxLt1_r$K" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="BvxLt1_r$L" role="3uHU7w">
                    <node concept="2WthIp" id="BvxLt1_r$M" role="2Oq$k0" />
                    <node concept="34pFcN" id="BvxLt1_r$N" role="2OqNvi">
                      <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="BvxLt1BvPM" role="37vLTJ">
                <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="BvxLt1Bxb4" role="3cqZAp">
            <node concept="37vLTI" id="BvxLt1Bxb5" role="3clFbG">
              <node concept="22lmx$" id="BvxLt1Bxb6" role="37vLTx">
                <node concept="37vLTw" id="BvxLt1Bxb7" role="3uHU7B">
                  <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
                </node>
                <node concept="17QLQc" id="BvxLt1yHdV" role="3uHU7w">
                  <node concept="2OqwBi" id="BvxLt1yHdW" role="3uHU7w">
                    <node concept="2WthIp" id="BvxLt1yHdX" role="2Oq$k0" />
                    <node concept="34pFcN" id="BvxLt1yHdY" role="2OqNvi">
                      <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserved" />
                    </node>
                  </node>
                  <node concept="0kSF2" id="BvxLt1yHdZ" role="3uHU7B">
                    <node concept="3uibUv" id="BvxLt1yHe0" role="0kSFW">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                    <node concept="2OqwBi" id="BvxLt1yHe1" role="0kSFX">
                      <node concept="37vLTw" id="BvxLt1yHe2" role="2Oq$k0">
                        <ref role="3cqZAo" node="4FbMPtUYaaV" resolve="maxNrOfObserved" />
                      </node>
                      <node concept="liA8E" id="BvxLt1yHe3" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="BvxLt1Bxb9" role="37vLTJ">
                <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="BvxLt1BxdY" role="3cqZAp">
            <node concept="37vLTI" id="BvxLt1BxdZ" role="3clFbG">
              <node concept="22lmx$" id="BvxLt1Bxe0" role="37vLTx">
                <node concept="37vLTw" id="BvxLt1Bxe1" role="3uHU7B">
                  <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
                </node>
                <node concept="17QLQc" id="BvxLt1yHe4" role="3uHU7w">
                  <node concept="2OqwBi" id="BvxLt1yHe5" role="3uHU7w">
                    <node concept="2WthIp" id="BvxLt1yHe6" role="2Oq$k0" />
                    <node concept="34pFcN" id="BvxLt1yHe7" role="2OqNvi">
                      <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
                    </node>
                  </node>
                  <node concept="0kSF2" id="BvxLt1yHe8" role="3uHU7B">
                    <node concept="3uibUv" id="BvxLt1yHe9" role="0kSFW">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                    <node concept="2OqwBi" id="BvxLt1yHea" role="0kSFX">
                      <node concept="37vLTw" id="BvxLt1yHeb" role="2Oq$k0">
                        <ref role="3cqZAo" node="4FbMPtUYab3" resolve="maxNrOfObservers" />
                      </node>
                      <node concept="liA8E" id="BvxLt1yHec" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="BvxLt1Bxe3" role="37vLTJ">
                <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="BvxLt1yRP2" role="3cqZAp" />
          <node concept="3cpWs6" id="4FbMPtV0OuC" role="3cqZAp">
            <node concept="37vLTw" id="BvxLt1C6Rc" role="3cqZAk">
              <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3yzWfJ" id="4Y8BM43M800" role="3y$9q5">
        <node concept="3clFbS" id="4Y8BM43M801" role="2VODD2">
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
                  <node concept="10M0yZ" id="BvxLt1DjJd" role="37vLTx">
                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_TOTAL_NR_OF_CHANGES" resolve="MAX_TOTAL_NR_OF_CHANGES" />
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
          <node concept="3clFbJ" id="6gErcZbJ2g3" role="3cqZAp">
            <node concept="3clFbS" id="6gErcZbJ2g4" role="3clFbx">
              <node concept="3clFbF" id="6gErcZbJ2g5" role="3cqZAp">
                <node concept="37vLTI" id="6gErcZbJ2g6" role="3clFbG">
                  <node concept="2OqwBi" id="6gErcZbJ2g8" role="37vLTJ">
                    <node concept="2WthIp" id="6gErcZbJ2g9" role="2Oq$k0" />
                    <node concept="34pFcN" id="5IZNT_vMlgO" role="2OqNvi">
                      <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                    </node>
                  </node>
                  <node concept="10M0yZ" id="BvxLt1Dm5U" role="37vLTx">
                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_CHANGES" resolve="MAX_NR_OF_CHANGES" />
                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
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
          <node concept="3clFbJ" id="1RIwjuN$cAl" role="3cqZAp">
            <node concept="3clFbS" id="1RIwjuN$cAm" role="3clFbx">
              <node concept="3clFbF" id="1RIwjuN$cAn" role="3cqZAp">
                <node concept="37vLTI" id="1RIwjuN$cAo" role="3clFbG">
                  <node concept="2OqwBi" id="1RIwjuN$cAp" role="37vLTJ">
                    <node concept="2WthIp" id="1RIwjuN$cAq" role="2Oq$k0" />
                    <node concept="34pFcN" id="1RIwjuN$cAr" role="2OqNvi">
                      <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserved" />
                    </node>
                  </node>
                  <node concept="10M0yZ" id="BvxLt1DnU4" role="37vLTx">
                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_OBSERVED" resolve="MAX_NR_OF_OBSERVED" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2dkUwp" id="1RIwjuN$cAt" role="3clFbw">
              <node concept="2OqwBi" id="1RIwjuN$cAu" role="3uHU7B">
                <node concept="2WthIp" id="1RIwjuN$cAv" role="2Oq$k0" />
                <node concept="34pFcN" id="1RIwjuN$cAw" role="2OqNvi">
                  <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserved" />
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
                  <node concept="10M0yZ" id="BvxLt1DpLB" role="37vLTx">
                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_OBSERVERS" resolve="MAX_NR_OF_OBSERVERS" />
                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
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
          <node concept="3clFbH" id="4FbMPtUL6jz" role="3cqZAp" />
          <node concept="3cpWs8" id="4FbMPtUUv5p" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUUv5q" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="titlePanel" />
              <node concept="3uibUv" id="4FbMPtUUv5r" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
              </node>
              <node concept="2ShNRf" id="4FbMPtUUv5s" role="33vP2m">
                <node concept="1pGfFk" id="4FbMPtUUv5t" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUL6I2" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUL6I1" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="developerPanel" />
              <node concept="3uibUv" id="4FbMPtUL6I3" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
              </node>
              <node concept="2ShNRf" id="4FbMPtULjAH" role="33vP2m">
                <node concept="1pGfFk" id="4FbMPtULjAI" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2HLAWGSjaX$" role="3cqZAp">
            <node concept="3cpWsn" id="2HLAWGSjaX_" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="presetsPanel" />
              <node concept="3uibUv" id="2HLAWGSjaXA" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
              </node>
              <node concept="2ShNRf" id="2HLAWGSjaXB" role="33vP2m">
                <node concept="1pGfFk" id="2HLAWGSjaXC" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUL6I6" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUL6I5" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="mainSpring" />
              <node concept="3uibUv" id="4FbMPtULl$$" role="1tU5fm">
                <ref role="3uigEE" to="dwmc:~Spacer" resolve="Spacer" />
              </node>
              <node concept="2ShNRf" id="4FbMPtULjOd" role="33vP2m">
                <node concept="1pGfFk" id="4FbMPtULlwh" role="2ShVmc">
                  <ref role="37wK5l" to="dwmc:~Spacer.&lt;init&gt;()" resolve="Spacer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2HLAWGSkpeT" role="3cqZAp">
            <node concept="3cpWsn" id="2HLAWGSkpeU" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="presetsSpring" />
              <node concept="3uibUv" id="2HLAWGSkpeV" role="1tU5fm">
                <ref role="3uigEE" to="dwmc:~Spacer" resolve="Spacer" />
              </node>
              <node concept="2ShNRf" id="2HLAWGSkpeW" role="33vP2m">
                <node concept="1pGfFk" id="2HLAWGSkpeX" role="2ShVmc">
                  <ref role="37wK5l" to="dwmc:~Spacer.&lt;init&gt;()" resolve="Spacer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4FbMPtULJ_G" role="3cqZAp" />
          <node concept="3cpWs8" id="4FbMPtULIg$" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtULIg_" role="3cpWs9">
              <property role="TrG5h" value="onMode" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="4FbMPtULIgA" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="2ShNRf" id="4FbMPtULIgB" role="33vP2m">
                <node concept="1pGfFk" id="4FbMPtULIgC" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;(java.lang.String)" resolve="JCheckBox" />
                  <node concept="Xl_RD" id="2HLAWGSiPHh" role="37wK5m">
                    <property role="Xl_RC" value="Dclare Engine On At Project Open" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUOrVz" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUOrV$" role="3cpWs9">
              <property role="TrG5h" value="devMode" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="4FbMPtUOrV_" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="2ShNRf" id="4FbMPtUOrVA" role="33vP2m">
                <node concept="1pGfFk" id="4FbMPtUOrVB" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;(java.lang.String)" resolve="JCheckBox" />
                  <node concept="Xl_RD" id="2HLAWGSiQPB" role="37wK5m">
                    <property role="Xl_RC" value="Developer Mode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUL6HM" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUL6HL" role="3cpWs9">
              <property role="TrG5h" value="colorful" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="4FbMPtUL6HN" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="2ShNRf" id="4FbMPtULEl_" role="33vP2m">
                <node concept="1pGfFk" id="4FbMPtULF1a" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;(java.lang.String)" resolve="JCheckBox" />
                  <node concept="Xl_RD" id="2HLAWGSiO$V" role="37wK5m">
                    <property role="Xl_RC" value="Colorful Editors" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2HLAWGSt3QT" role="3cqZAp" />
          <node concept="3clFbF" id="4FbMPtUXiEl" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUXiEm" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUXkZb" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtULIg_" resolve="onMode" />
              </node>
              <node concept="liA8E" id="4FbMPtUXiEo" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.setName(java.lang.String)" resolve="setName" />
                <node concept="Xl_RD" id="4FbMPtUXiEp" role="37wK5m">
                  <property role="Xl_RC" value="onMode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUXiRU" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUXiRV" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUXl0J" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUOrV$" resolve="devMode" />
              </node>
              <node concept="liA8E" id="4FbMPtUXiRX" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.setName(java.lang.String)" resolve="setName" />
                <node concept="Xl_RD" id="4FbMPtUXiRY" role="37wK5m">
                  <property role="Xl_RC" value="devMode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUXd$W" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUXgp3" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUXd$U" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6HL" resolve="colorful" />
              </node>
              <node concept="liA8E" id="4FbMPtUXiAi" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.setName(java.lang.String)" resolve="setName" />
                <node concept="Xl_RD" id="4FbMPtUXiBo" role="37wK5m">
                  <property role="Xl_RC" value="colorful" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2HLAWGSihHY" role="3cqZAp" />
          <node concept="3cpWs8" id="4FbMPtUModJ" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUModK" role="3cpWs9">
              <property role="TrG5h" value="maxTotalNrOfChanges" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="4FbMPtUModL" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="2ShNRf" id="4FbMPtUModM" role="33vP2m">
                <node concept="1pGfFk" id="4FbMPtUModN" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JFormattedTextField.&lt;init&gt;(java.lang.Object)" resolve="JFormattedTextField" />
                  <node concept="10M0yZ" id="4FbMPtUXCqu" role="37wK5m">
                    <ref role="1PxDUh" to="25x5:~NumberFormat" resolve="NumberFormat" />
                    <ref role="3cqZAo" to="25x5:~NumberFormat.INTEGER_FIELD" resolve="INTEGER_FIELD" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUL6HP" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUL6HO" role="3cpWs9">
              <property role="TrG5h" value="maxNrOfChanges" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="4FbMPtUL6HQ" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="2ShNRf" id="4FbMPtUMnRP" role="33vP2m">
                <node concept="1pGfFk" id="4FbMPtUModF" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JFormattedTextField.&lt;init&gt;(java.lang.Object)" resolve="JFormattedTextField" />
                  <node concept="10M0yZ" id="GLgNzrmcQD" role="37wK5m">
                    <ref role="1PxDUh" to="25x5:~NumberFormat" resolve="NumberFormat" />
                    <ref role="3cqZAo" to="25x5:~NumberFormat.INTEGER_FIELD" resolve="INTEGER_FIELD" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUPopP" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUPopQ" role="3cpWs9">
              <property role="TrG5h" value="maxNrOfObserved" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="4FbMPtUPopR" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="2ShNRf" id="4FbMPtUPopS" role="33vP2m">
                <node concept="1pGfFk" id="4FbMPtUPopT" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JFormattedTextField.&lt;init&gt;(java.lang.Object)" resolve="JFormattedTextField" />
                  <node concept="10M0yZ" id="4FbMPtUXCqz" role="37wK5m">
                    <ref role="1PxDUh" to="25x5:~NumberFormat" resolve="NumberFormat" />
                    <ref role="3cqZAo" to="25x5:~NumberFormat.INTEGER_FIELD" resolve="INTEGER_FIELD" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUPo$p" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUPo$q" role="3cpWs9">
              <property role="TrG5h" value="maxNrOfObservers" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="4FbMPtUPo$r" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="2ShNRf" id="4FbMPtUPo$s" role="33vP2m">
                <node concept="1pGfFk" id="4FbMPtUPo$t" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JFormattedTextField.&lt;init&gt;(java.lang.Object)" resolve="JFormattedTextField" />
                  <node concept="10M0yZ" id="4FbMPtUXCqC" role="37wK5m">
                    <ref role="3cqZAo" to="25x5:~NumberFormat.INTEGER_FIELD" resolve="INTEGER_FIELD" />
                    <ref role="1PxDUh" to="25x5:~NumberFormat" resolve="NumberFormat" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2HLAWGSt3A1" role="3cqZAp" />
          <node concept="3clFbF" id="4FbMPtUXq8P" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUXq8Q" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUXsCZ" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUModK" resolve="maxTotalNrOfChanges" />
              </node>
              <node concept="liA8E" id="4FbMPtUXq8S" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.setName(java.lang.String)" resolve="setName" />
                <node concept="Xl_RD" id="4FbMPtUXq8T" role="37wK5m">
                  <property role="Xl_RC" value="maxTotalNrOfChanges" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUXlp3" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUXnTI" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUXlp1" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6HO" resolve="maxNrOfChanges" />
              </node>
              <node concept="liA8E" id="4FbMPtUXq4P" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.setName(java.lang.String)" resolve="setName" />
                <node concept="Xl_RD" id="4FbMPtUXq5U" role="37wK5m">
                  <property role="Xl_RC" value="maxNrOfChanges" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUXqmD" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUXqmE" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUXsEr" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUPopQ" resolve="maxNrOfObserved" />
              </node>
              <node concept="liA8E" id="4FbMPtUXqmG" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.setName(java.lang.String)" resolve="setName" />
                <node concept="Xl_RD" id="4FbMPtUXqmH" role="37wK5m">
                  <property role="Xl_RC" value="maxNrOfObserved" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUXq$y" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUXq$z" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUXsHf" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUPo$q" resolve="maxNrOfObservers" />
              </node>
              <node concept="liA8E" id="4FbMPtUXq$_" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.setName(java.lang.String)" resolve="setName" />
                <node concept="Xl_RD" id="4FbMPtUXq$A" role="37wK5m">
                  <property role="Xl_RC" value="maxNrOfObservers" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2HLAWGSt3la" role="3cqZAp" />
          <node concept="3clFbF" id="2HLAWGSsZCF" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSsZCG" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSt3hj" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUModK" resolve="maxTotalNrOfChanges" />
              </node>
              <node concept="liA8E" id="2HLAWGSsZCI" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JTextField.setHorizontalAlignment(int)" resolve="setHorizontalAlignment" />
                <node concept="10M0yZ" id="2HLAWGSsZCJ" role="37wK5m">
                  <ref role="3cqZAo" to="dxuu:~SwingConstants.RIGHT" resolve="RIGHT" />
                  <ref role="1PxDUh" to="dxuu:~JTextField" resolve="JTextField" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSsTfl" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSsWYf" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSt3eS" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6HO" resolve="maxNrOfChanges" />
              </node>
              <node concept="liA8E" id="2HLAWGSsZ_8" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JTextField.setHorizontalAlignment(int)" resolve="setHorizontalAlignment" />
                <node concept="10M0yZ" id="2HLAWGSsZCe" role="37wK5m">
                  <ref role="3cqZAo" to="dxuu:~SwingConstants.RIGHT" resolve="RIGHT" />
                  <ref role="1PxDUh" to="dxuu:~JTextField" resolve="JTextField" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSsZTr" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSsZTs" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSt3l6" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUPopQ" resolve="maxNrOfObserved" />
              </node>
              <node concept="liA8E" id="2HLAWGSsZTu" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JTextField.setHorizontalAlignment(int)" resolve="setHorizontalAlignment" />
                <node concept="10M0yZ" id="2HLAWGSsZTv" role="37wK5m">
                  <ref role="3cqZAo" to="dxuu:~SwingConstants.RIGHT" resolve="RIGHT" />
                  <ref role="1PxDUh" to="dxuu:~JTextField" resolve="JTextField" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSt0ag" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSt0ah" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSt0ai" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUPo$q" resolve="maxNrOfObservers" />
              </node>
              <node concept="liA8E" id="2HLAWGSt0aj" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JTextField.setHorizontalAlignment(int)" resolve="setHorizontalAlignment" />
                <node concept="10M0yZ" id="2HLAWGSt0ak" role="37wK5m">
                  <ref role="3cqZAo" to="dxuu:~SwingConstants.RIGHT" resolve="RIGHT" />
                  <ref role="1PxDUh" to="dxuu:~JTextField" resolve="JTextField" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2HLAWGSie1X" role="3cqZAp" />
          <node concept="3cpWs8" id="4FbMPtUL6Ie" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUL6Id" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="label1" />
              <node concept="3uibUv" id="4FbMPtUL6If" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
              </node>
              <node concept="2ShNRf" id="4FbMPtULFHk" role="33vP2m">
                <node concept="1pGfFk" id="4FbMPtULFHl" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="4FbMPtUM2Cg" role="37wK5m">
                    <property role="Xl_RC" value="Maximum number of changes per transaction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUL6Ia" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUL6I9" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="label2" />
              <node concept="3uibUv" id="4FbMPtUL6Ib" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
              </node>
              <node concept="2ShNRf" id="4FbMPtULF1F" role="33vP2m">
                <node concept="1pGfFk" id="4FbMPtULFHg" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="4FbMPtUM2v_" role="37wK5m">
                    <property role="Xl_RC" value="Maximum number of changes per rule (instance) per transaction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUPkk4" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUPkk5" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="label3" />
              <node concept="3uibUv" id="4FbMPtUPkk6" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
              </node>
              <node concept="2ShNRf" id="4FbMPtUPkk7" role="33vP2m">
                <node concept="1pGfFk" id="4FbMPtUPkk8" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="4FbMPtUPmiS" role="37wK5m">
                    <property role="Xl_RC" value="Maximum number of observed features (instances) per rule (instance)" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUPkuk" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUPkul" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="label4" />
              <node concept="3uibUv" id="4FbMPtUPkum" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
              </node>
              <node concept="2ShNRf" id="4FbMPtUPkun" role="33vP2m">
                <node concept="1pGfFk" id="4FbMPtUPkuo" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="4FbMPtUPmti" role="37wK5m">
                    <property role="Xl_RC" value="Maximum number of observing rules (instances) per feature (instance)" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2HLAWGSj8hF" role="3cqZAp">
            <node concept="3cpWsn" id="2HLAWGSj8hG" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="label5" />
              <node concept="3uibUv" id="2HLAWGSj8hH" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
              </node>
              <node concept="2ShNRf" id="2HLAWGSj8hI" role="33vP2m">
                <node concept="1pGfFk" id="2HLAWGSj8hJ" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="2HLAWGSj8hK" role="37wK5m">
                    <property role="Xl_RC" value="Presets: " />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2HLAWGSileV" role="3cqZAp" />
          <node concept="3cpWs8" id="2HLAWGSiqFk" role="3cqZAp">
            <node concept="3cpWsn" id="2HLAWGSiqFi" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="xs" />
              <node concept="3uibUv" id="2HLAWGSiuz$" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
              </node>
              <node concept="2ShNRf" id="2HLAWGSiuHH" role="33vP2m">
                <node concept="1pGfFk" id="2HLAWGSiNhu" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JButton.&lt;init&gt;(java.lang.String)" resolve="JButton" />
                  <node concept="Xl_RD" id="2HLAWGSiY8I" role="37wK5m">
                    <property role="Xl_RC" value="XS" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2HLAWGSiXXA" role="3cqZAp">
            <node concept="3cpWsn" id="2HLAWGSiXXB" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="s" />
              <node concept="3uibUv" id="2HLAWGSiXXC" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
              </node>
              <node concept="2ShNRf" id="2HLAWGSiXXD" role="33vP2m">
                <node concept="1pGfFk" id="2HLAWGSiXXE" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JButton.&lt;init&gt;(java.lang.String)" resolve="JButton" />
                  <node concept="Xl_RD" id="2HLAWGSiYhO" role="37wK5m">
                    <property role="Xl_RC" value="S" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2HLAWGSiXu0" role="3cqZAp">
            <node concept="3cpWsn" id="2HLAWGSiXu1" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="m" />
              <node concept="3uibUv" id="2HLAWGSiXu2" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
              </node>
              <node concept="2ShNRf" id="2HLAWGSiXu3" role="33vP2m">
                <node concept="1pGfFk" id="2HLAWGSiXu4" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JButton.&lt;init&gt;(java.lang.String)" resolve="JButton" />
                  <node concept="Xl_RD" id="2HLAWGSiYiv" role="37wK5m">
                    <property role="Xl_RC" value="Default" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2HLAWGSiXCt" role="3cqZAp">
            <node concept="3cpWsn" id="2HLAWGSiXCu" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="l" />
              <node concept="3uibUv" id="2HLAWGSiXCv" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
              </node>
              <node concept="2ShNRf" id="2HLAWGSiXCw" role="33vP2m">
                <node concept="1pGfFk" id="2HLAWGSiXCx" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JButton.&lt;init&gt;(java.lang.String)" resolve="JButton" />
                  <node concept="Xl_RD" id="2HLAWGSiYr_" role="37wK5m">
                    <property role="Xl_RC" value="L" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2HLAWGSiXMZ" role="3cqZAp">
            <node concept="3cpWsn" id="2HLAWGSiXN0" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="xl" />
              <node concept="3uibUv" id="2HLAWGSiXN1" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
              </node>
              <node concept="2ShNRf" id="2HLAWGSiXN2" role="33vP2m">
                <node concept="1pGfFk" id="2HLAWGSiXN3" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JButton.&lt;init&gt;(java.lang.String)" resolve="JButton" />
                  <node concept="Xl_RD" id="2HLAWGSiY$F" role="37wK5m">
                    <property role="Xl_RC" value="XL" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4FbMPtULl$C" role="3cqZAp" />
          <node concept="3clFbF" id="4FbMPtULqgE" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtULsA$" role="3clFbG">
              <node concept="3yMSdA" id="4FbMPtUUtFh" role="2Oq$k0" />
              <node concept="liA8E" id="4FbMPtULu8X" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                <node concept="2ShNRf" id="4FbMPtULpeE" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtULpU9" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridLayoutManager.&lt;init&gt;(int,int,java.awt.Insets,int,int)" resolve="GridLayoutManager" />
                    <node concept="3cmrfG" id="4FbMPtUO$nH" role="37wK5m">
                      <property role="3cmrfH" value="6" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUL6Il" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2ShNRf" id="4FbMPtULomp" role="37wK5m">
                      <node concept="1pGfFk" id="4FbMPtULp20" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Insets.&lt;init&gt;(int,int,int,int)" resolve="Insets" />
                        <node concept="3cmrfG" id="4FbMPtULp2s" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtULpc6" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtULpcH" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtULpdC" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                    <node concept="1ZRNhn" id="4FbMPtUL6Ir" role="37wK5m">
                      <node concept="3cmrfG" id="4FbMPtUL6Is" role="2$L3a6">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                    <node concept="1ZRNhn" id="4FbMPtUL6It" role="37wK5m">
                      <node concept="3cmrfG" id="4FbMPtUL6Iu" role="2$L3a6">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4FbMPtUUW0S" role="3cqZAp" />
          <node concept="3clFbF" id="4FbMPtUUWrA" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUUWrB" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUV1lu" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUUv5q" resolve="titlePanel" />
              </node>
              <node concept="liA8E" id="4FbMPtUUWrD" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                <node concept="2ShNRf" id="4FbMPtUUWrE" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUUWrF" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridLayoutManager.&lt;init&gt;(int,int,java.awt.Insets,int,int)" resolve="GridLayoutManager" />
                    <node concept="3cmrfG" id="4FbMPtUUWrG" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUUWrH" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2ShNRf" id="4FbMPtUUWrI" role="37wK5m">
                      <node concept="1pGfFk" id="4FbMPtUUWrJ" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Insets.&lt;init&gt;(int,int,int,int)" resolve="Insets" />
                        <node concept="3cmrfG" id="4FbMPtUV1QL" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtUV1QM" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtUV1QN" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtUV1QO" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                    <node concept="1ZRNhn" id="4FbMPtUUWrO" role="37wK5m">
                      <node concept="3cmrfG" id="4FbMPtUUWrP" role="2$L3a6">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                    <node concept="1ZRNhn" id="4FbMPtUUWrQ" role="37wK5m">
                      <node concept="3cmrfG" id="4FbMPtUUWrR" role="2$L3a6">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUTYwd" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUU1el" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUU_sr" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUUv5q" resolve="titlePanel" />
              </node>
              <node concept="liA8E" id="4FbMPtUU2Tf" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                <node concept="2ShNRf" id="4FbMPtUUWe1" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUUWe2" role="2ShVmc">
                    <ref role="37wK5l" to="9z78:~TitledBorder.&lt;init&gt;(javax.swing.border.Border,java.lang.String,int,int)" resolve="TitledBorder" />
                    <node concept="2ShNRf" id="4FbMPtUUWe3" role="37wK5m">
                      <node concept="1pGfFk" id="4FbMPtUUWe4" role="2ShVmc">
                        <ref role="37wK5l" to="9z78:~MatteBorder.&lt;init&gt;(int,int,int,int,java.awt.Color)" resolve="MatteBorder" />
                        <node concept="3cmrfG" id="4FbMPtUUWe5" role="37wK5m">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtUUWe6" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtUUWe7" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtUUWe8" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10M0yZ" id="4FbMPtUVtLh" role="37wK5m">
                          <ref role="3cqZAo" to="z60i:~Color.lightGray" resolve="lightGray" />
                          <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4FbMPtUUWea" role="37wK5m">
                      <property role="Xl_RC" value="dclare related settings" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUWq74" role="37wK5m">
                      <ref role="3cqZAo" to="9z78:~TitledBorder.LEFT" resolve="LEFT" />
                      <ref role="1PxDUh" to="9z78:~TitledBorder" resolve="TitledBorder" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUWQ_R" role="37wK5m">
                      <ref role="3cqZAo" to="9z78:~TitledBorder.TOP" resolve="TOP" />
                      <ref role="1PxDUh" to="9z78:~TitledBorder" resolve="TitledBorder" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4FbMPtUMCil" role="3cqZAp" />
          <node concept="3clFbF" id="4FbMPtUMbCA" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUMbCB" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUMdIu" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6I1" resolve="developerPanel" />
              </node>
              <node concept="liA8E" id="4FbMPtUMbCD" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                <node concept="2ShNRf" id="4FbMPtUMbCE" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUMbCF" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridLayoutManager.&lt;init&gt;(int,int,java.awt.Insets,int,int)" resolve="GridLayoutManager" />
                    <node concept="3cmrfG" id="4FbMPtUMevG" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUMbCH" role="37wK5m">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="2ShNRf" id="4FbMPtUMbCI" role="37wK5m">
                      <node concept="1pGfFk" id="4FbMPtUMbCJ" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Insets.&lt;init&gt;(int,int,int,int)" resolve="Insets" />
                        <node concept="3cmrfG" id="4FbMPtUOfqg" role="37wK5m">
                          <property role="3cmrfH" value="5" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtUOfqN" role="37wK5m">
                          <property role="3cmrfH" value="5" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtUOfro" role="37wK5m">
                          <property role="3cmrfH" value="5" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtUOfrZ" role="37wK5m">
                          <property role="3cmrfH" value="5" />
                        </node>
                      </node>
                    </node>
                    <node concept="1ZRNhn" id="4FbMPtUMbCO" role="37wK5m">
                      <node concept="3cmrfG" id="4FbMPtUMbCP" role="2$L3a6">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                    <node concept="1ZRNhn" id="4FbMPtUMbCQ" role="37wK5m">
                      <node concept="3cmrfG" id="4FbMPtUMbCR" role="2$L3a6">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSrGJO" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSrGJP" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSrGJQ" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6I1" resolve="developerPanel" />
              </node>
              <node concept="liA8E" id="2HLAWGSrGJR" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                <node concept="2YIFZM" id="2HLAWGSrGJS" role="37wK5m">
                  <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                  <ref role="37wK5l" to="dxuu:~BorderFactory.createCompoundBorder(javax.swing.border.Border,javax.swing.border.Border)" resolve="createCompoundBorder" />
                  <node concept="2YIFZM" id="2HLAWGSrGJT" role="37wK5m">
                    <ref role="37wK5l" to="dxuu:~BorderFactory.createEmptyBorder(int,int,int,int)" resolve="createEmptyBorder" />
                    <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                    <node concept="3cmrfG" id="2HLAWGSrGJU" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSrGJV" role="37wK5m">
                      <property role="3cmrfH" value="30" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSrGJW" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSrGJX" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="2HLAWGSrGJZ" role="37wK5m">
                    <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                    <ref role="37wK5l" to="dxuu:~BorderFactory.createLineBorder(java.awt.Color)" resolve="createLineBorder" />
                    <node concept="10M0yZ" id="2HLAWGSsmm5" role="37wK5m">
                      <ref role="3cqZAo" to="z60i:~Color.lightGray" resolve="lightGray" />
                      <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2HLAWGSjdPP" role="3cqZAp" />
          <node concept="3clFbF" id="2HLAWGSjb8v" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSjb8w" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSjgoi" role="2Oq$k0">
                <ref role="3cqZAo" node="2HLAWGSjaX_" resolve="presetsPanel" />
              </node>
              <node concept="liA8E" id="2HLAWGSjb8y" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                <node concept="2ShNRf" id="2HLAWGSjb8z" role="37wK5m">
                  <node concept="1pGfFk" id="2HLAWGSjb8$" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridLayoutManager.&lt;init&gt;(int,int,java.awt.Insets,int,int)" resolve="GridLayoutManager" />
                    <node concept="3cmrfG" id="2HLAWGSjb8_" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSjb8A" role="37wK5m">
                      <property role="3cmrfH" value="7" />
                    </node>
                    <node concept="2ShNRf" id="2HLAWGSjb8B" role="37wK5m">
                      <node concept="1pGfFk" id="2HLAWGSjb8C" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Insets.&lt;init&gt;(int,int,int,int)" resolve="Insets" />
                        <node concept="3cmrfG" id="2HLAWGSjb8D" role="37wK5m">
                          <property role="3cmrfH" value="5" />
                        </node>
                        <node concept="3cmrfG" id="2HLAWGSjb8E" role="37wK5m">
                          <property role="3cmrfH" value="5" />
                        </node>
                        <node concept="3cmrfG" id="2HLAWGSjb8F" role="37wK5m">
                          <property role="3cmrfH" value="5" />
                        </node>
                        <node concept="3cmrfG" id="2HLAWGSjb8G" role="37wK5m">
                          <property role="3cmrfH" value="5" />
                        </node>
                      </node>
                    </node>
                    <node concept="1ZRNhn" id="2HLAWGSjb8H" role="37wK5m">
                      <node concept="3cmrfG" id="2HLAWGSjb8I" role="2$L3a6">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                    <node concept="1ZRNhn" id="2HLAWGSjb8J" role="37wK5m">
                      <node concept="3cmrfG" id="2HLAWGSjb8K" role="2$L3a6">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4FbMPtUUzrH" role="3cqZAp" />
          <node concept="3clFbF" id="4FbMPtUMEBm" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUMHhJ" role="3clFbG">
              <node concept="3yMSdA" id="4FbMPtUUtPO" role="2Oq$k0" />
              <node concept="liA8E" id="4FbMPtUMIYH" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="4FbMPtUUBYa" role="37wK5m">
                  <ref role="3cqZAo" node="4FbMPtUUv5q" resolve="titlePanel" />
                </node>
                <node concept="2ShNRf" id="4FbMPtUMJgj" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUMJWb" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="4FbMPtUMJWB" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUMKe2" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUMKev" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUMKf2" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUVf3o" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_CENTER" resolve="ANCHOR_CENTER" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUVf3L" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_BOTH" resolve="FILL_BOTH" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="pVOtf" id="4FbMPtUN1sf" role="37wK5m">
                      <node concept="10M0yZ" id="4FbMPtUMLv8" role="3uHU7B">
                        <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_SHRINK" resolve="SIZEPOLICY_CAN_SHRINK" />
                        <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      </node>
                      <node concept="10M0yZ" id="4FbMPtUMLRD" role="3uHU7w">
                        <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_GROW" resolve="SIZEPOLICY_CAN_GROW" />
                        <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUVf4s" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUMMoJ" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUMMoK" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUMMoL" role="37wK5m" />
                    <node concept="3cmrfG" id="4FbMPtUMMoM" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="4FbMPtUMMoN" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUMR0_" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUMR0A" role="3clFbG">
              <node concept="3yMSdA" id="4FbMPtUUu21" role="2Oq$k0" />
              <node concept="liA8E" id="4FbMPtUMR0C" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="4FbMPtUMTiw" role="37wK5m">
                  <ref role="3cqZAo" node="4FbMPtULIg_" resolve="onMode" />
                </node>
                <node concept="2ShNRf" id="4FbMPtUMR0E" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUMR0F" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="4FbMPtUMTOA" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUMR0H" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUMR0I" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUMR0J" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUMR0K" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUMR0L" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_NONE" resolve="FILL_NONE" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="pVOtf" id="4FbMPtUN1Er" role="37wK5m">
                      <node concept="10M0yZ" id="4FbMPtUMR0M" role="3uHU7B">
                        <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_SHRINK" resolve="SIZEPOLICY_CAN_SHRINK" />
                        <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      </node>
                      <node concept="10M0yZ" id="4FbMPtUMR0N" role="3uHU7w">
                        <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_GROW" resolve="SIZEPOLICY_CAN_GROW" />
                        <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      </node>
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUMR0O" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUMR0P" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUMR0Q" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUMR0R" role="37wK5m" />
                    <node concept="3cmrfG" id="4FbMPtUMR0S" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="4FbMPtUMR0T" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUO$C4" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUO$C5" role="3clFbG">
              <node concept="3yMSdA" id="4FbMPtUUuoS" role="2Oq$k0" />
              <node concept="liA8E" id="4FbMPtUO$C7" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="4FbMPtUOSyL" role="37wK5m">
                  <ref role="3cqZAo" node="4FbMPtUOrV$" resolve="devMode" />
                </node>
                <node concept="2ShNRf" id="4FbMPtUO$C9" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUO$Ca" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="4FbMPtUODNO" role="37wK5m">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUO$Cc" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUO$Cd" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUO$Ce" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUO$Cf" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUO$Cg" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_NONE" resolve="FILL_NONE" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="pVOtf" id="4FbMPtUO$Ch" role="37wK5m">
                      <node concept="10M0yZ" id="4FbMPtUO$Ci" role="3uHU7B">
                        <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_SHRINK" resolve="SIZEPOLICY_CAN_SHRINK" />
                        <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      </node>
                      <node concept="10M0yZ" id="4FbMPtUO$Cj" role="3uHU7w">
                        <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_GROW" resolve="SIZEPOLICY_CAN_GROW" />
                        <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      </node>
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUO$Ck" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUO$Cl" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUO$Cm" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUO$Cn" role="37wK5m" />
                    <node concept="3cmrfG" id="4FbMPtUO$Co" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="4FbMPtUO$Cp" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUMWJR" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUMWJS" role="3clFbG">
              <node concept="3yMSdA" id="4FbMPtUUuqT" role="2Oq$k0" />
              <node concept="liA8E" id="4FbMPtUMWJU" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="4FbMPtUMZoy" role="37wK5m">
                  <ref role="3cqZAo" node="4FbMPtUL6I1" resolve="developerPanel" />
                </node>
                <node concept="2ShNRf" id="4FbMPtUMWJW" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUMWJX" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="4FbMPtUOCmk" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUMWJZ" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUMWK0" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUMWK1" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUN0MR" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_CENTER" resolve="ANCHOR_CENTER" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUN0Nf" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_BOTH" resolve="FILL_BOTH" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="pVOtf" id="4FbMPtUN23p" role="37wK5m">
                      <node concept="10M0yZ" id="4FbMPtUMWK4" role="3uHU7B">
                        <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_SHRINK" resolve="SIZEPOLICY_CAN_SHRINK" />
                        <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      </node>
                      <node concept="10M0yZ" id="4FbMPtUMWK5" role="3uHU7w">
                        <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_GROW" resolve="SIZEPOLICY_CAN_GROW" />
                        <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      </node>
                    </node>
                    <node concept="pVOtf" id="4FbMPtUN248" role="37wK5m">
                      <node concept="10M0yZ" id="4FbMPtUN249" role="3uHU7B">
                        <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_SHRINK" resolve="SIZEPOLICY_CAN_SHRINK" />
                        <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      </node>
                      <node concept="10M0yZ" id="4FbMPtUN24a" role="3uHU7w">
                        <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_GROW" resolve="SIZEPOLICY_CAN_GROW" />
                        <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUMWK7" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUMWK8" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUMWK9" role="37wK5m" />
                    <node concept="3cmrfG" id="4FbMPtUMWKa" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="4FbMPtUMWKb" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUU_O8" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUU_O9" role="3clFbG">
              <node concept="3yMSdA" id="4FbMPtUU_Oa" role="2Oq$k0" />
              <node concept="liA8E" id="4FbMPtUU_Ob" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="4FbMPtUU_Oc" role="37wK5m">
                  <ref role="3cqZAo" node="4FbMPtUL6HL" resolve="colorful" />
                </node>
                <node concept="2ShNRf" id="4FbMPtUU_Od" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUU_Oe" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="4FbMPtUU_Of" role="37wK5m">
                      <property role="3cmrfH" value="4" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUU_Og" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUU_Oh" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUU_Oi" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUU_Oj" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUU_Ok" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_NONE" resolve="FILL_NONE" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="pVOtf" id="4FbMPtUU_Ol" role="37wK5m">
                      <node concept="10M0yZ" id="4FbMPtUU_Om" role="3uHU7B">
                        <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_SHRINK" resolve="SIZEPOLICY_CAN_SHRINK" />
                        <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      </node>
                      <node concept="10M0yZ" id="4FbMPtUU_On" role="3uHU7w">
                        <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_GROW" resolve="SIZEPOLICY_CAN_GROW" />
                        <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      </node>
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUU_Oo" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUU_Op" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUU_Oq" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUU_Or" role="37wK5m" />
                    <node concept="3cmrfG" id="4FbMPtUU_Os" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="4FbMPtUU_Ot" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtULwjM" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtULyC9" role="3clFbG">
              <node concept="3yMSdA" id="4FbMPtUUuKr" role="2Oq$k0" />
              <node concept="liA8E" id="4FbMPtULztf" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="4FbMPtULzu1" role="37wK5m">
                  <ref role="3cqZAo" node="4FbMPtUL6I5" resolve="mainSpring" />
                </node>
                <node concept="2ShNRf" id="4FbMPtULzEo" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUL_Od" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="4FbMPtUL_SD" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtULA0G" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtULA19" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtULA1G" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtULAhU" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_CENTER" resolve="ANCHOR_CENTER" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtULABE" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_VERTICAL" resolve="FILL_VERTICAL" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSkBW3" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_SHRINK" resolve="SIZEPOLICY_CAN_SHRINK" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtULAXx" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_WANT_GROW" resolve="SIZEPOLICY_WANT_GROW" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="4FbMPtULB2E" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtULB2F" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtULB2G" role="37wK5m" />
                    <node concept="3cmrfG" id="4FbMPtULB2H" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="4FbMPtULB2I" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4FbMPtUOxZa" role="3cqZAp" />
          <node concept="3clFbF" id="4FbMPtUNkT5" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUNkT6" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUNkT7" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6I1" resolve="developerPanel" />
              </node>
              <node concept="liA8E" id="4FbMPtUNkT8" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="BvxLt1Cjby" role="37wK5m">
                  <ref role="3cqZAo" node="4FbMPtUL6Id" resolve="label1" />
                </node>
                <node concept="2ShNRf" id="4FbMPtUNkTa" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUNkTb" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="4FbMPtUNkTc" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUNkTd" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUNkTe" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUNkTf" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUNkTg" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUNkTh" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_NONE" resolve="FILL_NONE" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUNkTi" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUNkTj" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUNkTk" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUNkTl" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUNkTm" role="37wK5m" />
                    <node concept="3cmrfG" id="4FbMPtUNkTn" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="4FbMPtUNkTo" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUNnUR" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUNnUS" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUNnUT" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6I1" resolve="developerPanel" />
              </node>
              <node concept="liA8E" id="4FbMPtUNnUU" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="4FbMPtUNqAL" role="37wK5m">
                  <ref role="3cqZAo" node="4FbMPtUModK" resolve="maxTotalNrOfChanges" />
                </node>
                <node concept="2ShNRf" id="4FbMPtUNnUW" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUNnUX" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="4FbMPtUNnUZ" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUNrG8" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUNnV0" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUNnV1" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUNnV2" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUNnV3" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_HORIZONTAL" resolve="FILL_HORIZONTAL" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUNnV4" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_WANT_GROW" resolve="SIZEPOLICY_WANT_GROW" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUNnV5" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUNnV6" role="37wK5m" />
                    <node concept="2ShNRf" id="4FbMPtUNnV7" role="37wK5m">
                      <node concept="1pGfFk" id="4FbMPtUNnV8" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                        <node concept="3cmrfG" id="4FbMPtUNnV9" role="37wK5m">
                          <property role="3cmrfH" value="150" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtUNnVa" role="37wK5m">
                          <property role="3cmrfH" value="-1" />
                        </node>
                      </node>
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUNnVb" role="37wK5m" />
                    <node concept="3cmrfG" id="4FbMPtUNnVc" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="4FbMPtUNnVd" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4FbMPtUMOQj" role="3cqZAp" />
          <node concept="3clFbF" id="4FbMPtUN4If" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUN4Ig" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUN77i" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6I1" resolve="developerPanel" />
              </node>
              <node concept="liA8E" id="4FbMPtUN4Ii" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="BvxLt1CjiS" role="37wK5m">
                  <ref role="3cqZAo" node="4FbMPtUL6I9" resolve="label2" />
                </node>
                <node concept="2ShNRf" id="4FbMPtUN4Ik" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUN4Il" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="4FbMPtUN4Im" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUN4In" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUN4Io" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUN4Ip" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUN8Ln" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUN8LM" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_NONE" resolve="FILL_NONE" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUN8Mw" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUN8Na" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUN4Iy" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUN4Iz" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUN4I$" role="37wK5m" />
                    <node concept="3cmrfG" id="4FbMPtUN4I_" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="4FbMPtUN4IA" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUNdIi" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUNdIj" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUNdIk" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6I1" resolve="developerPanel" />
              </node>
              <node concept="liA8E" id="4FbMPtUNdIl" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="4FbMPtUNgdM" role="37wK5m">
                  <ref role="3cqZAo" node="4FbMPtUL6HO" resolve="maxNrOfChanges" />
                </node>
                <node concept="2ShNRf" id="4FbMPtUNdIn" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUNdIo" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="4FbMPtUNdIp" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUNdIq" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUNdIr" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUNdIs" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUNdIt" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUNgBz" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_HORIZONTAL" resolve="FILL_HORIZONTAL" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUNgBU" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_WANT_GROW" resolve="SIZEPOLICY_WANT_GROW" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUNdIw" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUNdIx" role="37wK5m" />
                    <node concept="2ShNRf" id="4FbMPtUNgPa" role="37wK5m">
                      <node concept="1pGfFk" id="4FbMPtUNhK1" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                        <node concept="3cmrfG" id="4FbMPtUNhKt" role="37wK5m">
                          <property role="3cmrfH" value="150" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtUNijl" role="37wK5m">
                          <property role="3cmrfH" value="-1" />
                        </node>
                      </node>
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUNdIz" role="37wK5m" />
                    <node concept="3cmrfG" id="4FbMPtUNdI$" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="4FbMPtUNdI_" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4FbMPtUPoJ2" role="3cqZAp" />
          <node concept="3clFbF" id="4FbMPtUPqNg" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUPqNh" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUPqNi" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6I1" resolve="developerPanel" />
              </node>
              <node concept="liA8E" id="4FbMPtUPqNj" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="4FbMPtUPsVK" role="37wK5m">
                  <ref role="3cqZAo" node="4FbMPtUPkk5" resolve="label3" />
                </node>
                <node concept="2ShNRf" id="4FbMPtUPqNl" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUPqNm" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="4FbMPtUPqNn" role="37wK5m">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUPqNo" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUPqNp" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUPqNq" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqNr" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqNs" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_NONE" resolve="FILL_NONE" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqNt" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqNu" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUPqNv" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUPqNw" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUPqNx" role="37wK5m" />
                    <node concept="3cmrfG" id="4FbMPtUPqNy" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="4FbMPtUPqNz" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUPqMT" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUPqMU" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUPqMV" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6I1" resolve="developerPanel" />
              </node>
              <node concept="liA8E" id="4FbMPtUPqMW" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="4FbMPtUPtti" role="37wK5m">
                  <ref role="3cqZAo" node="4FbMPtUPopQ" resolve="maxNrOfObserved" />
                </node>
                <node concept="2ShNRf" id="4FbMPtUPqMY" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUPqMZ" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="4FbMPtUPqN0" role="37wK5m">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUPqN1" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUPqN2" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUPqN3" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqN4" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqN5" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_HORIZONTAL" resolve="FILL_HORIZONTAL" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqN6" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_WANT_GROW" resolve="SIZEPOLICY_WANT_GROW" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqN7" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUPqN8" role="37wK5m" />
                    <node concept="2ShNRf" id="4FbMPtUPqN9" role="37wK5m">
                      <node concept="1pGfFk" id="4FbMPtUPqNa" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                        <node concept="3cmrfG" id="4FbMPtUPqNb" role="37wK5m">
                          <property role="3cmrfH" value="150" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtUPqNc" role="37wK5m">
                          <property role="3cmrfH" value="-1" />
                        </node>
                      </node>
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUPqNd" role="37wK5m" />
                    <node concept="3cmrfG" id="4FbMPtUPqNe" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="4FbMPtUPqNf" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4FbMPtUPqMS" role="3cqZAp" />
          <node concept="3clFbF" id="4FbMPtUPqBj" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUPqBk" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUPqBl" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6I1" resolve="developerPanel" />
              </node>
              <node concept="liA8E" id="4FbMPtUPqBm" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="4FbMPtUPtcx" role="37wK5m">
                  <ref role="3cqZAo" node="4FbMPtUPkul" resolve="label4" />
                </node>
                <node concept="2ShNRf" id="4FbMPtUPqBo" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUPqBp" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="4FbMPtUPqBq" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUPqBr" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUPqBs" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUPqBt" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqBu" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqBv" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_NONE" resolve="FILL_NONE" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqBw" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqBx" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUPqBy" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUPqBz" role="37wK5m" />
                    <node concept="10Nm6u" id="4FbMPtUPqB$" role="37wK5m" />
                    <node concept="3cmrfG" id="4FbMPtUPqB_" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="4FbMPtUPqBA" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUPqAW" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUPqAX" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUPqAY" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6I1" resolve="developerPanel" />
              </node>
              <node concept="liA8E" id="4FbMPtUPqAZ" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="4FbMPtUPtKe" role="37wK5m">
                  <ref role="3cqZAo" node="4FbMPtUPo$q" resolve="maxNrOfObservers" />
                </node>
                <node concept="2ShNRf" id="4FbMPtUPqB1" role="37wK5m">
                  <node concept="1pGfFk" id="4FbMPtUPqB2" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="4FbMPtUPqB3" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUPqB4" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUPqB5" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4FbMPtUPqB6" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqB7" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqB8" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_HORIZONTAL" resolve="FILL_HORIZONTAL" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqB9" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_WANT_GROW" resolve="SIZEPOLICY_WANT_GROW" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="4FbMPtUPqBa" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUPqBb" role="37wK5m" />
                    <node concept="2ShNRf" id="4FbMPtUPqBc" role="37wK5m">
                      <node concept="1pGfFk" id="4FbMPtUPqBd" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                        <node concept="3cmrfG" id="4FbMPtUPqBe" role="37wK5m">
                          <property role="3cmrfH" value="150" />
                        </node>
                        <node concept="3cmrfG" id="4FbMPtUPqBf" role="37wK5m">
                          <property role="3cmrfH" value="-1" />
                        </node>
                      </node>
                    </node>
                    <node concept="10Nm6u" id="4FbMPtUPqBg" role="37wK5m" />
                    <node concept="3cmrfG" id="4FbMPtUPqBh" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="4FbMPtUPqBi" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2HLAWGSjgZa" role="3cqZAp" />
          <node concept="3clFbF" id="2HLAWGSjjwX" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSjjwY" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSjjwZ" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6I1" resolve="developerPanel" />
              </node>
              <node concept="liA8E" id="2HLAWGSjjx0" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="2HLAWGSjmvC" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSjaX_" resolve="presetsPanel" />
                </node>
                <node concept="2ShNRf" id="2HLAWGSjjx2" role="37wK5m">
                  <node concept="1pGfFk" id="2HLAWGSjjx3" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="2HLAWGSjnhm" role="37wK5m">
                      <property role="3cmrfH" value="4" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSjjx5" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSjjx6" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSjjx7" role="37wK5m">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSjjx8" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSjnrR" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_BOTH" resolve="FILL_BOTH" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSjqkM" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_WANT_GROW" resolve="SIZEPOLICY_WANT_GROW" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSjjxb" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="2HLAWGSjjxc" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSjjxd" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSjjxe" role="37wK5m" />
                    <node concept="3cmrfG" id="2HLAWGSjjxf" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="2HLAWGSjjxg" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2HLAWGSjte8" role="3cqZAp" />
          <node concept="3clFbF" id="2HLAWGSjqrV" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSjqrW" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSjvPg" role="2Oq$k0">
                <ref role="3cqZAo" node="2HLAWGSjaX_" resolve="presetsPanel" />
              </node>
              <node concept="liA8E" id="2HLAWGSjqrY" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="2HLAWGSjw2H" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSj8hG" resolve="label5" />
                </node>
                <node concept="2ShNRf" id="2HLAWGSjqs0" role="37wK5m">
                  <node concept="1pGfFk" id="2HLAWGSjqs1" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="2HLAWGSjwFu" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSjqs3" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSjqs4" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSjqs5" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSjqs6" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSjqs7" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_BOTH" resolve="FILL_BOTH" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSlbv$" role="37wK5m">
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSjqs9" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="2HLAWGSjqsa" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSjqsb" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSjqsc" role="37wK5m" />
                    <node concept="3cmrfG" id="2HLAWGSjqsd" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="2HLAWGSjqse" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSjx77" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSjx78" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSjx79" role="2Oq$k0">
                <ref role="3cqZAo" node="2HLAWGSjaX_" resolve="presetsPanel" />
              </node>
              <node concept="liA8E" id="2HLAWGSjx7a" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="2HLAWGSjC4O" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSiqFi" resolve="xs" />
                </node>
                <node concept="2ShNRf" id="2HLAWGSjx7c" role="37wK5m">
                  <node concept="1pGfFk" id="2HLAWGSjx7d" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="2HLAWGSjx7e" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSjx7f" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSjx7g" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSjx7h" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSjx7i" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSjx7j" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_BOTH" resolve="FILL_BOTH" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj$pf" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSjx7l" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="2HLAWGSjx7m" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSjx7n" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSjx7o" role="37wK5m" />
                    <node concept="3cmrfG" id="2HLAWGSjx7p" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="2HLAWGSjx7q" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSj$zK" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSj$zL" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSj$zM" role="2Oq$k0">
                <ref role="3cqZAo" node="2HLAWGSjaX_" resolve="presetsPanel" />
              </node>
              <node concept="liA8E" id="2HLAWGSj$zN" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="2HLAWGSj$zO" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSiXXB" resolve="s" />
                </node>
                <node concept="2ShNRf" id="2HLAWGSj$zP" role="37wK5m">
                  <node concept="1pGfFk" id="2HLAWGSj$zQ" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="2HLAWGSj$zR" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSj$zS" role="37wK5m">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSj$zT" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSj$zU" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj$zV" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj$zW" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_BOTH" resolve="FILL_BOTH" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj$zX" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj$zY" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="2HLAWGSj$zZ" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSj$$0" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSj$$1" role="37wK5m" />
                    <node concept="3cmrfG" id="2HLAWGSj$$2" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="2HLAWGSj$$3" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSj$Kx" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSj$Ky" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSj$Kz" role="2Oq$k0">
                <ref role="3cqZAo" node="2HLAWGSjaX_" resolve="presetsPanel" />
              </node>
              <node concept="liA8E" id="2HLAWGSj$K$" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="2HLAWGSneyo" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSiXu1" resolve="m" />
                </node>
                <node concept="2ShNRf" id="2HLAWGSj$KA" role="37wK5m">
                  <node concept="1pGfFk" id="2HLAWGSj$KB" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="2HLAWGSj$KC" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSj$KD" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSj$KE" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSj$KF" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj$KG" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj$KH" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_BOTH" resolve="FILL_BOTH" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj$KI" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj$KJ" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="2HLAWGSj$KK" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSj$KL" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSj$KM" role="37wK5m" />
                    <node concept="3cmrfG" id="2HLAWGSj$KN" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="2HLAWGSj$KO" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSj$XA" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSj$XB" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSj$XC" role="2Oq$k0">
                <ref role="3cqZAo" node="2HLAWGSjaX_" resolve="presetsPanel" />
              </node>
              <node concept="liA8E" id="2HLAWGSj$XD" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="2HLAWGSjCoH" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSiXCu" resolve="l" />
                </node>
                <node concept="2ShNRf" id="2HLAWGSj$XF" role="37wK5m">
                  <node concept="1pGfFk" id="2HLAWGSj$XG" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="2HLAWGSj$XH" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSj$XI" role="37wK5m">
                      <property role="3cmrfH" value="4" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSj$XJ" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSj$XK" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj$XL" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj$XM" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_BOTH" resolve="FILL_BOTH" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj$XN" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj$XO" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="2HLAWGSj$XP" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSj$XQ" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSj$XR" role="37wK5m" />
                    <node concept="3cmrfG" id="2HLAWGSj$XS" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="2HLAWGSj$XT" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSj_aZ" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSj_b0" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSj_b1" role="2Oq$k0">
                <ref role="3cqZAo" node="2HLAWGSjaX_" resolve="presetsPanel" />
              </node>
              <node concept="liA8E" id="2HLAWGSj_b2" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="2HLAWGSjDpm" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSiXN0" resolve="xl" />
                </node>
                <node concept="2ShNRf" id="2HLAWGSj_b4" role="37wK5m">
                  <node concept="1pGfFk" id="2HLAWGSj_b5" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="2HLAWGSj_b6" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSj_b7" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSj_b8" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSj_b9" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj_ba" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_WEST" resolve="ANCHOR_WEST" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj_bb" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_BOTH" resolve="FILL_BOTH" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj_bc" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSj_bd" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="2HLAWGSj_be" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSj_bf" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSj_bg" role="37wK5m" />
                    <node concept="3cmrfG" id="2HLAWGSj_bh" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="2HLAWGSj_bi" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSks4a" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSks4c" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSkuW9" role="2Oq$k0">
                <ref role="3cqZAo" node="2HLAWGSjaX_" resolve="presetsPanel" />
              </node>
              <node concept="liA8E" id="2HLAWGSks4e" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="2HLAWGSkwjI" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSkpeU" resolve="presetsSpring" />
                </node>
                <node concept="2ShNRf" id="2HLAWGSks4g" role="37wK5m">
                  <node concept="1pGfFk" id="2HLAWGSks4h" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension,int,boolean)" resolve="GridConstraints" />
                    <node concept="3cmrfG" id="2HLAWGSks4i" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSks4j" role="37wK5m">
                      <property role="3cmrfH" value="6" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSks4k" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="2HLAWGSks4l" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSks4m" role="37wK5m">
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_CENTER" resolve="ANCHOR_CENTER" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSkyOJ" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_HORIZONTAL" resolve="FILL_HORIZONTAL" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSk$69" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_WANT_GROW" resolve="SIZEPOLICY_WANT_GROW" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="2HLAWGSkBWi" role="37wK5m">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_SHRINK" resolve="SIZEPOLICY_CAN_SHRINK" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10Nm6u" id="2HLAWGSks4q" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSks4r" role="37wK5m" />
                    <node concept="10Nm6u" id="2HLAWGSks4s" role="37wK5m" />
                    <node concept="3cmrfG" id="2HLAWGSks4t" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3clFbT" id="2HLAWGSks4u" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4FbMPtUPqAV" role="3cqZAp" />
          <node concept="3clFbF" id="4FbMPtUPRgH" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUPU6R" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUPRgF" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUOrV$" resolve="devMode" />
              </node>
              <node concept="liA8E" id="4FbMPtUPWb0" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
                <node concept="2ShNRf" id="4FbMPtUPWc9" role="37wK5m">
                  <node concept="YeOm9" id="4FbMPtUPYhG" role="2ShVmc">
                    <node concept="1Y3b0j" id="4FbMPtUPYhJ" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="4FbMPtUPYhK" role="1B3o_S" />
                      <node concept="3clFb_" id="4FbMPtUPYhP" role="jymVt">
                        <property role="TrG5h" value="actionPerformed" />
                        <node concept="3Tm1VV" id="4FbMPtUPYhQ" role="1B3o_S" />
                        <node concept="3cqZAl" id="4FbMPtUPYhS" role="3clF45" />
                        <node concept="37vLTG" id="4FbMPtUPYhT" role="3clF46">
                          <property role="TrG5h" value="p1" />
                          <node concept="3uibUv" id="4FbMPtUPYhU" role="1tU5fm">
                            <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="4FbMPtUPYhV" role="3clF47">
                          <node concept="3clFbF" id="4FbMPtUSILa" role="3cqZAp">
                            <node concept="2OqwBi" id="4FbMPtUSJoS" role="3clFbG">
                              <node concept="37vLTw" id="4FbMPtUSIL8" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUL6I1" resolve="developerPanel" />
                              </node>
                              <node concept="liA8E" id="4FbMPtUSJYQ" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JComponent.setVisible(boolean)" resolve="setVisible" />
                                <node concept="2OqwBi" id="4FbMPtUT8Dh" role="37wK5m">
                                  <node concept="37vLTw" id="4FbMPtUT8Di" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4FbMPtUOrV$" resolve="devMode" />
                                  </node>
                                  <node concept="liA8E" id="4FbMPtUT8Dj" role="2OqNvi">
                                    <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="4FbMPtUPYhX" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2HLAWGSmy2W" role="3cqZAp" />
          <node concept="3clFbF" id="2HLAWGSlHQR" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSlLgl" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSlHQP" role="2Oq$k0">
                <ref role="3cqZAo" node="2HLAWGSiqFi" resolve="xs" />
              </node>
              <node concept="liA8E" id="2HLAWGSlNfX" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
                <node concept="2ShNRf" id="2HLAWGSlNgH" role="37wK5m">
                  <node concept="YeOm9" id="2HLAWGSlO2D" role="2ShVmc">
                    <node concept="1Y3b0j" id="2HLAWGSlO2G" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="2HLAWGSlO2H" role="1B3o_S" />
                      <node concept="3clFb_" id="2HLAWGSlO2M" role="jymVt">
                        <property role="TrG5h" value="actionPerformed" />
                        <node concept="3Tm1VV" id="2HLAWGSlO2N" role="1B3o_S" />
                        <node concept="3cqZAl" id="2HLAWGSlO2P" role="3clF45" />
                        <node concept="37vLTG" id="2HLAWGSlO2Q" role="3clF46">
                          <property role="TrG5h" value="p1" />
                          <node concept="3uibUv" id="2HLAWGSlO2R" role="1tU5fm">
                            <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2HLAWGSlO2S" role="3clF47">
                          <node concept="3clFbF" id="BvxLt1$J9p" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$J9q" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$J9r" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUModK" resolve="maxTotalNrOfChanges" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$J9s" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="FJ1c_" id="BvxLt1$J9t" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$J9u" role="3uHU7w">
                                    <property role="3cmrfH" value="100" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1DrI6" role="3uHU7B">
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_TOTAL_NR_OF_CHANGES" resolve="MAX_TOTAL_NR_OF_CHANGES" />
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="BvxLt1$J9f" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$J9g" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$J9h" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUL6HO" resolve="maxNrOfChanges" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$J9i" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="FJ1c_" id="BvxLt1$J9j" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$KMN" role="3uHU7w">
                                    <property role="3cmrfH" value="4" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1DsP6" role="3uHU7B">
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_CHANGES" resolve="MAX_NR_OF_CHANGES" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="BvxLt1$J9z" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$J9$" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$J9_" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUPopQ" resolve="maxNrOfObserved" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$J9A" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="FJ1c_" id="BvxLt1$J9B" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$LtC" role="3uHU7w">
                                    <property role="3cmrfH" value="4" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1DtEO" role="3uHU7B">
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_OBSERVED" resolve="MAX_NR_OF_OBSERVED" />
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="BvxLt1$J9H" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$J9I" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$J9J" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUPo$q" resolve="maxNrOfObservers" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$J9K" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="FJ1c_" id="BvxLt1$J9L" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$LPz" role="3uHU7w">
                                    <property role="3cmrfH" value="4" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1Dux2" role="3uHU7B">
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_OBSERVERS" resolve="MAX_NR_OF_OBSERVERS" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="2HLAWGSlO2U" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSmryV" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSmryW" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSm_1h" role="2Oq$k0">
                <ref role="3cqZAo" node="2HLAWGSiXXB" resolve="s" />
              </node>
              <node concept="liA8E" id="2HLAWGSmryY" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
                <node concept="2ShNRf" id="2HLAWGSmryZ" role="37wK5m">
                  <node concept="YeOm9" id="2HLAWGSmrz0" role="2ShVmc">
                    <node concept="1Y3b0j" id="2HLAWGSmrz1" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="2HLAWGSmrz2" role="1B3o_S" />
                      <node concept="3clFb_" id="2HLAWGSmrz3" role="jymVt">
                        <property role="TrG5h" value="actionPerformed" />
                        <node concept="3Tm1VV" id="2HLAWGSmrz4" role="1B3o_S" />
                        <node concept="3cqZAl" id="2HLAWGSmrz5" role="3clF45" />
                        <node concept="37vLTG" id="2HLAWGSmrz6" role="3clF46">
                          <property role="TrG5h" value="p1" />
                          <node concept="3uibUv" id="2HLAWGSmrz7" role="1tU5fm">
                            <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2HLAWGSmrz8" role="3clF47">
                          <node concept="3clFbF" id="BvxLt1$CZi" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$CZj" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$CZk" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUModK" resolve="maxTotalNrOfChanges" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$CZl" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="FJ1c_" id="BvxLt1$GmY" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$GxG" role="3uHU7w">
                                    <property role="3cmrfH" value="10" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1DrRW" role="3uHU7B">
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_TOTAL_NR_OF_CHANGES" resolve="MAX_TOTAL_NR_OF_CHANGES" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="BvxLt1$CZa" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$CZb" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$CZc" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUL6HO" resolve="maxNrOfChanges" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$CZd" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="FJ1c_" id="BvxLt1$FcW" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$FnE" role="3uHU7w">
                                    <property role="3cmrfH" value="2" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1DsYT" role="3uHU7B">
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_CHANGES" resolve="MAX_NR_OF_CHANGES" />
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="BvxLt1$CZq" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$CZr" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$CZs" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUPopQ" resolve="maxNrOfObserved" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$CZt" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="FJ1c_" id="BvxLt1$HAu" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$HLc" role="3uHU7w">
                                    <property role="3cmrfH" value="2" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1DtNd" role="3uHU7B">
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_OBSERVED" resolve="MAX_NR_OF_OBSERVED" />
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="BvxLt1$CZy" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$CZz" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$CZ$" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUPo$q" resolve="maxNrOfObservers" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$CZ_" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="FJ1c_" id="BvxLt1$IKw" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$IVe" role="3uHU7w">
                                    <property role="3cmrfH" value="2" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1DuAE" role="3uHU7B">
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_OBSERVERS" resolve="MAX_NR_OF_OBSERVERS" />
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="2HLAWGSmrzt" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSmutp" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSmutq" role="3clFbG">
              <node concept="liA8E" id="2HLAWGSmuts" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
                <node concept="2ShNRf" id="2HLAWGSmutt" role="37wK5m">
                  <node concept="YeOm9" id="2HLAWGSmutu" role="2ShVmc">
                    <node concept="1Y3b0j" id="2HLAWGSmutv" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="2HLAWGSmutw" role="1B3o_S" />
                      <node concept="3clFb_" id="2HLAWGSmutx" role="jymVt">
                        <property role="TrG5h" value="actionPerformed" />
                        <node concept="3Tm1VV" id="2HLAWGSmuty" role="1B3o_S" />
                        <node concept="3cqZAl" id="2HLAWGSmutz" role="3clF45" />
                        <node concept="37vLTG" id="2HLAWGSmut$" role="3clF46">
                          <property role="TrG5h" value="p1" />
                          <node concept="3uibUv" id="2HLAWGSmut_" role="1tU5fm">
                            <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2HLAWGSmutA" role="3clF47">
                          <node concept="3clFbF" id="2HLAWGSmutG" role="3cqZAp">
                            <node concept="2OqwBi" id="2HLAWGSmutH" role="3clFbG">
                              <node concept="37vLTw" id="2HLAWGSmutI" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUModK" resolve="maxTotalNrOfChanges" />
                              </node>
                              <node concept="liA8E" id="2HLAWGSmutJ" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="10M0yZ" id="BvxLt1Ds2R" role="37wK5m">
                                  <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                  <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_TOTAL_NR_OF_CHANGES" resolve="MAX_TOTAL_NR_OF_CHANGES" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2HLAWGSmutB" role="3cqZAp">
                            <node concept="2OqwBi" id="2HLAWGSmutC" role="3clFbG">
                              <node concept="37vLTw" id="2HLAWGSmutD" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUL6HO" resolve="maxNrOfChanges" />
                              </node>
                              <node concept="liA8E" id="2HLAWGSmutE" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="10M0yZ" id="BvxLt1Dt73" role="37wK5m">
                                  <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                  <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_CHANGES" resolve="MAX_NR_OF_CHANGES" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2HLAWGSmutL" role="3cqZAp">
                            <node concept="2OqwBi" id="2HLAWGSmutM" role="3clFbG">
                              <node concept="37vLTw" id="2HLAWGSmutN" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUPopQ" resolve="maxNrOfObserved" />
                              </node>
                              <node concept="liA8E" id="2HLAWGSmutO" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="10M0yZ" id="BvxLt1DtTX" role="37wK5m">
                                  <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_OBSERVED" resolve="MAX_NR_OF_OBSERVED" />
                                  <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2HLAWGSmutQ" role="3cqZAp">
                            <node concept="2OqwBi" id="2HLAWGSmutR" role="3clFbG">
                              <node concept="37vLTw" id="2HLAWGSmutS" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUPo$q" resolve="maxNrOfObservers" />
                              </node>
                              <node concept="liA8E" id="2HLAWGSmutT" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="10M0yZ" id="BvxLt1DuG0" role="37wK5m">
                                  <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                  <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_OBSERVERS" resolve="MAX_NR_OF_OBSERVERS" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="2HLAWGSmutV" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2HLAWGSm_7V" role="2Oq$k0">
                <ref role="3cqZAo" node="2HLAWGSiXu1" resolve="m" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSmuHm" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSmuHn" role="3clFbG">
              <node concept="liA8E" id="2HLAWGSmuHp" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
                <node concept="2ShNRf" id="2HLAWGSmuHq" role="37wK5m">
                  <node concept="YeOm9" id="2HLAWGSmuHr" role="2ShVmc">
                    <node concept="1Y3b0j" id="2HLAWGSmuHs" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="2HLAWGSmuHt" role="1B3o_S" />
                      <node concept="3clFb_" id="2HLAWGSmuHu" role="jymVt">
                        <property role="TrG5h" value="actionPerformed" />
                        <node concept="3Tm1VV" id="2HLAWGSmuHv" role="1B3o_S" />
                        <node concept="3cqZAl" id="2HLAWGSmuHw" role="3clF45" />
                        <node concept="37vLTG" id="2HLAWGSmuHx" role="3clF46">
                          <property role="TrG5h" value="p1" />
                          <node concept="3uibUv" id="2HLAWGSmuHy" role="1tU5fm">
                            <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2HLAWGSmuHz" role="3clF47">
                          <node concept="3clFbF" id="BvxLt1$LZ3" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$LZ4" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$LZ5" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUModK" resolve="maxTotalNrOfChanges" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$LZ6" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="17qRlL" id="BvxLt1$O_R" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$OK_" role="3uHU7w">
                                    <property role="3cmrfH" value="10" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1Dsf8" role="3uHU7B">
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_TOTAL_NR_OF_CHANGES" resolve="MAX_TOTAL_NR_OF_CHANGES" />
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="BvxLt1$LYV" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$LYW" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$LYX" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUL6HO" resolve="maxNrOfChanges" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$LYY" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="17qRlL" id="BvxLt1$O1j" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$Oc1" role="3uHU7w">
                                    <property role="3cmrfH" value="2" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1Dtgr" role="3uHU7B">
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_CHANGES" resolve="MAX_NR_OF_CHANGES" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="BvxLt1$LZb" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$LZc" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$LZd" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUPopQ" resolve="maxNrOfObserved" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$LZe" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="17qRlL" id="BvxLt1$Pi2" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$PsK" role="3uHU7w">
                                    <property role="3cmrfH" value="2" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1Du23" role="3uHU7B">
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_OBSERVED" resolve="MAX_NR_OF_OBSERVED" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="BvxLt1$LZj" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$LZk" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$LZl" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUPo$q" resolve="maxNrOfObservers" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$LZm" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="17qRlL" id="BvxLt1$PLq" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$PWd" role="3uHU7w">
                                    <property role="3cmrfH" value="2" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1DuMG" role="3uHU7B">
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_OBSERVERS" resolve="MAX_NR_OF_OBSERVERS" />
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="2HLAWGSmuHS" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2HLAWGSm_cC" role="2Oq$k0">
                <ref role="3cqZAo" node="2HLAWGSiXCu" resolve="l" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSmuXQ" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSmuXR" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSm_fX" role="2Oq$k0">
                <ref role="3cqZAo" node="2HLAWGSiXN0" resolve="xl" />
              </node>
              <node concept="liA8E" id="2HLAWGSmuXT" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
                <node concept="2ShNRf" id="2HLAWGSmuXU" role="37wK5m">
                  <node concept="YeOm9" id="2HLAWGSmuXV" role="2ShVmc">
                    <node concept="1Y3b0j" id="2HLAWGSmuXW" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="2HLAWGSmuXX" role="1B3o_S" />
                      <node concept="3clFb_" id="2HLAWGSmuXY" role="jymVt">
                        <property role="TrG5h" value="actionPerformed" />
                        <node concept="3Tm1VV" id="2HLAWGSmuXZ" role="1B3o_S" />
                        <node concept="3cqZAl" id="2HLAWGSmuY0" role="3clF45" />
                        <node concept="37vLTG" id="2HLAWGSmuY1" role="3clF46">
                          <property role="TrG5h" value="p1" />
                          <node concept="3uibUv" id="2HLAWGSmuY2" role="1tU5fm">
                            <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2HLAWGSmuY3" role="3clF47">
                          <node concept="3clFbF" id="BvxLt1$Q6x" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$Q6y" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$Q6z" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUModK" resolve="maxTotalNrOfChanges" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$Q6$" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="17qRlL" id="BvxLt1$Q6_" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$Q6A" role="3uHU7w">
                                    <property role="3cmrfH" value="100" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1Dspv" role="3uHU7B">
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_TOTAL_NR_OF_CHANGES" resolve="MAX_TOTAL_NR_OF_CHANGES" />
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="BvxLt1$Q6n" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$Q6o" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$Q6p" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUL6HO" resolve="maxNrOfChanges" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$Q6q" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="17qRlL" id="BvxLt1$Q6r" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$RC3" role="3uHU7w">
                                    <property role="3cmrfH" value="4" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1Dtpo" role="3uHU7B">
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_CHANGES" resolve="MAX_NR_OF_CHANGES" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="BvxLt1$Q6F" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$Q6G" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$Q6H" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUPopQ" resolve="maxNrOfObserved" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$Q6I" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="17qRlL" id="BvxLt1$Q6J" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$S2H" role="3uHU7w">
                                    <property role="3cmrfH" value="4" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1Du8f" role="3uHU7B">
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_OBSERVED" resolve="MAX_NR_OF_OBSERVED" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="BvxLt1$Q6P" role="3cqZAp">
                            <node concept="2OqwBi" id="BvxLt1$Q6Q" role="3clFbG">
                              <node concept="37vLTw" id="BvxLt1$Q6R" role="2Oq$k0">
                                <ref role="3cqZAo" node="4FbMPtUPo$q" resolve="maxNrOfObservers" />
                              </node>
                              <node concept="liA8E" id="BvxLt1$Q6S" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                                <node concept="17qRlL" id="BvxLt1$Q6T" role="37wK5m">
                                  <node concept="3cmrfG" id="BvxLt1$Sgg" role="3uHU7w">
                                    <property role="3cmrfH" value="4" />
                                  </node>
                                  <node concept="10M0yZ" id="BvxLt1DuRu" role="3uHU7B">
                                    <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_OBSERVERS" resolve="MAX_NR_OF_OBSERVERS" />
                                    <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="2HLAWGSmuYo" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2HLAWGStuNo" role="3cqZAp" />
          <node concept="3cpWs8" id="2HLAWGSxeBi" role="3cqZAp">
            <node concept="3cpWsn" id="2HLAWGSxeBj" role="3cpWs9">
              <property role="TrG5h" value="foc" />
              <node concept="3uibUv" id="2HLAWGSxeBh" role="1tU5fm">
                <ref role="3uigEE" to="hyam:~FocusListener" resolve="FocusListener" />
              </node>
              <node concept="2ShNRf" id="2HLAWGSxeBk" role="33vP2m">
                <node concept="YeOm9" id="2HLAWGSxeBl" role="2ShVmc">
                  <node concept="1Y3b0j" id="2HLAWGSxeBm" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="hyam:~FocusListener" resolve="FocusListener" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="2HLAWGSxeBn" role="1B3o_S" />
                    <node concept="3clFb_" id="2HLAWGSxeBo" role="jymVt">
                      <property role="TrG5h" value="focusGained" />
                      <node concept="3Tm1VV" id="2HLAWGSxeBp" role="1B3o_S" />
                      <node concept="3cqZAl" id="2HLAWGSxeBq" role="3clF45" />
                      <node concept="37vLTG" id="2HLAWGSxeBr" role="3clF46">
                        <property role="TrG5h" value="p1" />
                        <node concept="3uibUv" id="2HLAWGSxeBs" role="1tU5fm">
                          <ref role="3uigEE" to="hyam:~FocusEvent" resolve="FocusEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2HLAWGSxeBt" role="3clF47">
                        <node concept="3clFbF" id="2HLAWGSxeBu" role="3cqZAp">
                          <node concept="2YIFZM" id="2HLAWGSxeBv" role="3clFbG">
                            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                            <node concept="1bVj0M" id="2HLAWGSxeBw" role="37wK5m">
                              <node concept="3clFbS" id="2HLAWGSxeBx" role="1bW5cS">
                                <node concept="3clFbF" id="2HLAWGSxeBy" role="3cqZAp">
                                  <node concept="2OqwBi" id="2HLAWGSxeBz" role="3clFbG">
                                    <node concept="liA8E" id="2HLAWGSxeB$" role="2OqNvi">
                                      <ref role="37wK5l" to="r791:~JTextComponent.selectAll()" resolve="selectAll" />
                                    </node>
                                    <node concept="1eOMI4" id="2HLAWGSxeB_" role="2Oq$k0">
                                      <node concept="10QFUN" id="2HLAWGSxeBA" role="1eOMHV">
                                        <node concept="3uibUv" id="2HLAWGSxeBB" role="10QFUM">
                                          <ref role="3uigEE" to="r791:~JTextComponent" resolve="JTextComponent" />
                                        </node>
                                        <node concept="2OqwBi" id="2HLAWGSxeBC" role="10QFUP">
                                          <node concept="37vLTw" id="2HLAWGSxeBD" role="2Oq$k0">
                                            <ref role="3cqZAo" node="2HLAWGSxeBr" resolve="p1" />
                                          </node>
                                          <node concept="liA8E" id="2HLAWGSxeBE" role="2OqNvi">
                                            <ref role="37wK5l" to="hyam:~ComponentEvent.getComponent()" resolve="getComponent" />
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
                      <node concept="2AHcQZ" id="2HLAWGSxeBF" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="2HLAWGSxeBG" role="jymVt" />
                    <node concept="3clFb_" id="2HLAWGSxeBH" role="jymVt">
                      <property role="TrG5h" value="focusLost" />
                      <node concept="3Tm1VV" id="2HLAWGSxeBI" role="1B3o_S" />
                      <node concept="3cqZAl" id="2HLAWGSxeBJ" role="3clF45" />
                      <node concept="37vLTG" id="2HLAWGSxeBK" role="3clF46">
                        <property role="TrG5h" value="p1" />
                        <node concept="3uibUv" id="2HLAWGSxeBL" role="1tU5fm">
                          <ref role="3uigEE" to="hyam:~FocusEvent" resolve="FocusEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2HLAWGSxeBM" role="3clF47" />
                      <node concept="2AHcQZ" id="2HLAWGSxeBN" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSxhEp" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSxhEq" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSxllm" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUModK" resolve="maxTotalNrOfChanges" />
              </node>
              <node concept="liA8E" id="2HLAWGSxhEs" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.addFocusListener(java.awt.event.FocusListener)" resolve="addFocusListener" />
                <node concept="37vLTw" id="2HLAWGSxhEt" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSxeBj" resolve="foc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGStvpU" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGStzr7" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGStvpS" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6HO" resolve="maxNrOfChanges" />
              </node>
              <node concept="liA8E" id="2HLAWGStAQq" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.addFocusListener(java.awt.event.FocusListener)" resolve="addFocusListener" />
                <node concept="37vLTw" id="2HLAWGSxeBO" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSxeBj" resolve="foc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSxhW4" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSxhW5" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSxlpz" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUPopQ" resolve="maxNrOfObserved" />
              </node>
              <node concept="liA8E" id="2HLAWGSxhW7" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.addFocusListener(java.awt.event.FocusListener)" resolve="addFocusListener" />
                <node concept="37vLTw" id="2HLAWGSxhW8" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSxeBj" resolve="foc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2HLAWGSxidO" role="3cqZAp">
            <node concept="2OqwBi" id="2HLAWGSxidP" role="3clFbG">
              <node concept="37vLTw" id="2HLAWGSxUI$" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUPo$q" resolve="maxNrOfObservers" />
              </node>
              <node concept="liA8E" id="2HLAWGSxidR" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.addFocusListener(java.awt.event.FocusListener)" resolve="addFocusListener" />
                <node concept="37vLTw" id="2HLAWGSxidS" role="37wK5m">
                  <ref role="3cqZAo" node="2HLAWGSxeBj" resolve="foc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4FbMPtUT8Ip" role="3cqZAp" />
          <node concept="3clFbF" id="5LbVSrDBecT" role="3cqZAp">
            <node concept="2OqwBi" id="5LbVSrDBfeq" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUXSzs" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtULIg_" resolve="onMode" />
              </node>
              <node concept="liA8E" id="5LbVSrDBgOq" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
                <node concept="2OqwBi" id="5LbVSrDBgRj" role="37wK5m">
                  <node concept="2WthIp" id="5LbVSrDBgRm" role="2Oq$k0" />
                  <node concept="34pFcN" id="5LbVSrDBgRo" role="2OqNvi">
                    <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="onMode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUX_n3" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUX_n4" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUXBoI" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUOrV$" resolve="devMode" />
              </node>
              <node concept="liA8E" id="4FbMPtUX_n6" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
                <node concept="2OqwBi" id="4FbMPtUX_n7" role="37wK5m">
                  <node concept="2WthIp" id="4FbMPtUX_n8" role="2Oq$k0" />
                  <node concept="34pFcN" id="4FbMPtUXB$S" role="2OqNvi">
                    <ref role="2WH_rO" node="4FbMPtUX$p$" resolve="devMode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUGjt6" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUGjt7" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUXSy9" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6HL" resolve="colorful" />
              </node>
              <node concept="liA8E" id="4FbMPtUGjt9" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
                <node concept="2OqwBi" id="4FbMPtUGjta" role="37wK5m">
                  <node concept="2WthIp" id="4FbMPtUGjtb" role="2Oq$k0" />
                  <node concept="34pFcN" id="4FbMPtUGofF" role="2OqNvi">
                    <ref role="2WH_rO" node="4FbMPtUGgRu" resolve="colorfulEditors" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2HLAWGSlO3O" role="3cqZAp" />
          <node concept="3clFbF" id="GLgNzrmlFg" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrmokW" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUXCT_" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUModK" resolve="maxTotalNrOfChanges" />
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
          <node concept="3clFbF" id="GLgNzrm2DI" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrm49C" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUXBNQ" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6HO" resolve="maxNrOfChanges" />
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
          <node concept="3clFbF" id="1RIwjuN$RwI" role="3cqZAp">
            <node concept="2OqwBi" id="1RIwjuN$RwJ" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUXCZF" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUPopQ" resolve="maxNrOfObserved" />
              </node>
              <node concept="liA8E" id="1RIwjuN$RwL" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                <node concept="2OqwBi" id="1RIwjuN$RwM" role="37wK5m">
                  <node concept="2WthIp" id="1RIwjuN$RwN" role="2Oq$k0" />
                  <node concept="34pFcN" id="1RIwjuN_TlA" role="2OqNvi">
                    <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserved" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1RIwjuN_3al" role="3cqZAp">
            <node concept="2OqwBi" id="1RIwjuN_3am" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUY8ZA" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUPo$q" resolve="maxNrOfObservers" />
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
          <node concept="3clFbH" id="4FbMPtV0Bpu" role="3cqZAp" />
          <node concept="3clFbF" id="4FbMPtUT8UH" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUT8UI" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUT8UJ" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6I1" resolve="developerPanel" />
              </node>
              <node concept="liA8E" id="4FbMPtUT8UK" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.setVisible(boolean)" resolve="setVisible" />
                <node concept="2OqwBi" id="4FbMPtUT8UL" role="37wK5m">
                  <node concept="37vLTw" id="4FbMPtUT8UM" role="2Oq$k0">
                    <ref role="3cqZAo" node="4FbMPtUOrV$" resolve="devMode" />
                  </node>
                  <node concept="liA8E" id="4FbMPtUT8UN" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3y$hsl" id="4Y8BM43M802" role="3y$ekZ">
        <node concept="3clFbS" id="4Y8BM43M803" role="2VODD2">
          <node concept="3cpWs8" id="4FbMPtUXPKP" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUXPKQ" role="3cpWs9">
              <property role="TrG5h" value="onMode" />
              <node concept="3uibUv" id="4FbMPtUXPKR" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="10QFUN" id="4FbMPtUXPKS" role="33vP2m">
                <node concept="3uibUv" id="4FbMPtUXPKT" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
                </node>
                <node concept="2YIFZM" id="4FbMPtUXPKU" role="10QFUP">
                  <ref role="37wK5l" node="4FbMPtUXPIn" resolve="findComponentByName" />
                  <ref role="1Pybhc" node="4FbMPtUH_vD" resolve="PrefsUtils" />
                  <node concept="3yMSdA" id="4FbMPtUXPKV" role="37wK5m" />
                  <node concept="Xl_RD" id="4FbMPtUXPKW" role="37wK5m">
                    <property role="Xl_RC" value="onMode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUXPN$" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUXPN_" role="3cpWs9">
              <property role="TrG5h" value="devMode" />
              <node concept="3uibUv" id="4FbMPtUXPNA" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="10QFUN" id="4FbMPtUXPNB" role="33vP2m">
                <node concept="3uibUv" id="4FbMPtUXPNC" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
                </node>
                <node concept="2YIFZM" id="4FbMPtUXPND" role="10QFUP">
                  <ref role="37wK5l" node="4FbMPtUXPIn" resolve="findComponentByName" />
                  <ref role="1Pybhc" node="4FbMPtUH_vD" resolve="PrefsUtils" />
                  <node concept="3yMSdA" id="4FbMPtUXPNE" role="37wK5m" />
                  <node concept="Xl_RD" id="4FbMPtUXPNF" role="37wK5m">
                    <property role="Xl_RC" value="devMode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5LbVSrDBict" role="3cqZAp">
            <node concept="3cpWsn" id="5LbVSrDBicu" role="3cpWs9">
              <property role="TrG5h" value="colorful" />
              <node concept="3uibUv" id="5LbVSrDBicv" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
              </node>
              <node concept="10QFUN" id="5LbVSrDBlGC" role="33vP2m">
                <node concept="3uibUv" id="5LbVSrDBmvd" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
                </node>
                <node concept="2YIFZM" id="4FbMPtUXPJd" role="10QFUP">
                  <ref role="37wK5l" node="4FbMPtUXPIn" resolve="findComponentByName" />
                  <ref role="1Pybhc" node="4FbMPtUH_vD" resolve="PrefsUtils" />
                  <node concept="3yMSdA" id="4FbMPtUXPK8" role="37wK5m" />
                  <node concept="Xl_RD" id="4FbMPtUXPKL" role="37wK5m">
                    <property role="Xl_RC" value="colorful" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="BvxLt1yfUq" role="3cqZAp" />
          <node concept="3cpWs8" id="4FbMPtUXTLZ" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUXTM0" role="3cpWs9">
              <property role="TrG5h" value="maxTotalNrOfChanges" />
              <node concept="3uibUv" id="4FbMPtUXTM1" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="4FbMPtUXTM2" role="33vP2m">
                <node concept="3uibUv" id="4FbMPtUXTM3" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2YIFZM" id="4FbMPtUXTM4" role="10QFUP">
                  <ref role="1Pybhc" node="4FbMPtUH_vD" resolve="PrefsUtils" />
                  <ref role="37wK5l" node="4FbMPtUXPIn" resolve="findComponentByName" />
                  <node concept="3yMSdA" id="4FbMPtUXTM5" role="37wK5m" />
                  <node concept="Xl_RD" id="4FbMPtUXTM6" role="37wK5m">
                    <property role="Xl_RC" value="maxTotalNrOfChanges" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="GLgNzrnI83" role="3cqZAp">
            <node concept="3cpWsn" id="GLgNzrnI84" role="3cpWs9">
              <property role="TrG5h" value="maxNrOfChanges" />
              <node concept="3uibUv" id="GLgNzrnI85" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="GLgNzrnI86" role="33vP2m">
                <node concept="3uibUv" id="GLgNzrnI87" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2YIFZM" id="4FbMPtUXSAI" role="10QFUP">
                  <ref role="1Pybhc" node="4FbMPtUH_vD" resolve="PrefsUtils" />
                  <ref role="37wK5l" node="4FbMPtUXPIn" resolve="findComponentByName" />
                  <node concept="3yMSdA" id="4FbMPtUXSAJ" role="37wK5m" />
                  <node concept="Xl_RD" id="4FbMPtUXSAK" role="37wK5m">
                    <property role="Xl_RC" value="maxNrOfChanges" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUXTOp" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUXTOq" role="3cpWs9">
              <property role="TrG5h" value="maxNrOfObserved" />
              <node concept="3uibUv" id="4FbMPtUXTOr" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="4FbMPtUXTOs" role="33vP2m">
                <node concept="3uibUv" id="4FbMPtUXTOt" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2YIFZM" id="4FbMPtUXTOu" role="10QFUP">
                  <ref role="1Pybhc" node="4FbMPtUH_vD" resolve="PrefsUtils" />
                  <ref role="37wK5l" node="4FbMPtUXPIn" resolve="findComponentByName" />
                  <node concept="3yMSdA" id="4FbMPtUXTOv" role="37wK5m" />
                  <node concept="Xl_RD" id="4FbMPtUXTOw" role="37wK5m">
                    <property role="Xl_RC" value="maxNrOfObserved" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4FbMPtUXTQV" role="3cqZAp">
            <node concept="3cpWsn" id="4FbMPtUXTQW" role="3cpWs9">
              <property role="TrG5h" value="maxNrOfObservers" />
              <node concept="3uibUv" id="4FbMPtUXTQX" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
              </node>
              <node concept="10QFUN" id="4FbMPtUXTQY" role="33vP2m">
                <node concept="3uibUv" id="4FbMPtUXTQZ" role="10QFUM">
                  <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
                </node>
                <node concept="2YIFZM" id="4FbMPtUXTR0" role="10QFUP">
                  <ref role="1Pybhc" node="4FbMPtUH_vD" resolve="PrefsUtils" />
                  <ref role="37wK5l" node="4FbMPtUXPIn" resolve="findComponentByName" />
                  <node concept="3yMSdA" id="4FbMPtUXTR1" role="37wK5m" />
                  <node concept="Xl_RD" id="4FbMPtUXTR2" role="37wK5m">
                    <property role="Xl_RC" value="maxNrOfObservers" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1RIwjuN$t0m" role="3cqZAp" />
          <node concept="3clFbF" id="4Y8BM43MPKp" role="3cqZAp">
            <node concept="37vLTI" id="4Y8BM43MRq_" role="3clFbG">
              <node concept="2OqwBi" id="4Y8BM43MSs6" role="37vLTx">
                <node concept="37vLTw" id="4FbMPtUXYDo" role="2Oq$k0">
                  <ref role="3cqZAo" node="4FbMPtUXPKQ" resolve="onMode" />
                </node>
                <node concept="liA8E" id="4Y8BM43MTvs" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                </node>
              </node>
              <node concept="2OqwBi" id="4Y8BM43MPMk" role="37vLTJ">
                <node concept="2WthIp" id="4Y8BM43MPKo" role="2Oq$k0" />
                <node concept="34pFcN" id="5LbVSrDB_mi" role="2OqNvi">
                  <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="onMode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUY5Gq" role="3cqZAp">
            <node concept="37vLTI" id="4FbMPtUY5Gr" role="3clFbG">
              <node concept="2OqwBi" id="4FbMPtUY5Gs" role="37vLTx">
                <node concept="37vLTw" id="4FbMPtUY81g" role="2Oq$k0">
                  <ref role="3cqZAo" node="4FbMPtUXPN_" resolve="devMode" />
                </node>
                <node concept="liA8E" id="4FbMPtUY5Gu" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                </node>
              </node>
              <node concept="2OqwBi" id="4FbMPtUY5Gv" role="37vLTJ">
                <node concept="2WthIp" id="4FbMPtUY5Gw" role="2Oq$k0" />
                <node concept="34pFcN" id="4FbMPtUY7J4" role="2OqNvi">
                  <ref role="2WH_rO" node="4FbMPtUX$p$" resolve="devMode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUGqpv" role="3cqZAp">
            <node concept="37vLTI" id="4FbMPtUGqpw" role="3clFbG">
              <node concept="2OqwBi" id="4FbMPtUGqpx" role="37vLTx">
                <node concept="liA8E" id="4FbMPtUGqpz" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                </node>
                <node concept="37vLTw" id="4FbMPtUY5s3" role="2Oq$k0">
                  <ref role="3cqZAo" node="5LbVSrDBicu" resolve="colorful" />
                </node>
              </node>
              <node concept="2OqwBi" id="4FbMPtUGqp$" role="37vLTJ">
                <node concept="2WthIp" id="4FbMPtUGqp_" role="2Oq$k0" />
                <node concept="34pFcN" id="4FbMPtUGtGX" role="2OqNvi">
                  <ref role="2WH_rO" node="4FbMPtUGgRu" resolve="colorfulEditors" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="BvxLt1ylE3" role="3cqZAp" />
          <node concept="3clFbF" id="GLgNzrokQX" role="3cqZAp">
            <node concept="37vLTI" id="GLgNzro$GS" role="3clFbG">
              <node concept="0kSF2" id="GLgNzroI$T" role="37vLTx">
                <node concept="3uibUv" id="GLgNzroL3t" role="0kSFW">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
                <node concept="2OqwBi" id="GLgNzroCTz" role="0kSFX">
                  <node concept="37vLTw" id="4FbMPtUY8p2" role="2Oq$k0">
                    <ref role="3cqZAo" node="4FbMPtUXTM0" resolve="maxTotalNrOfChanges" />
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
          <node concept="3clFbF" id="GLgNzrnMVo" role="3cqZAp">
            <node concept="37vLTI" id="GLgNzro1OM" role="3clFbG">
              <node concept="0kSF2" id="GLgNzroepx" role="37vLTx">
                <node concept="3uibUv" id="GLgNzrogpE" role="0kSFW">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
                <node concept="2OqwBi" id="GLgNzro5WY" role="0kSFX">
                  <node concept="37vLTw" id="GLgNzro3E6" role="2Oq$k0">
                    <ref role="3cqZAo" node="GLgNzrnI84" resolve="maxNrOfChanges" />
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
          <node concept="3clFbF" id="1RIwjuNAbHA" role="3cqZAp">
            <node concept="37vLTI" id="1RIwjuNAbHB" role="3clFbG">
              <node concept="0kSF2" id="1RIwjuNAbHC" role="37vLTx">
                <node concept="3uibUv" id="1RIwjuNAbHD" role="0kSFW">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
                <node concept="2OqwBi" id="1RIwjuNAbHE" role="0kSFX">
                  <node concept="37vLTw" id="4FbMPtUY8Fj" role="2Oq$k0">
                    <ref role="3cqZAo" node="4FbMPtUXTOq" resolve="maxNrOfObserved" />
                  </node>
                  <node concept="liA8E" id="1RIwjuNAbHG" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1RIwjuNAbHH" role="37vLTJ">
                <node concept="2WthIp" id="1RIwjuNAbHI" role="2Oq$k0" />
                <node concept="34pFcN" id="1RIwjuNApfW" role="2OqNvi">
                  <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserved" />
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
                  <node concept="37vLTw" id="4FbMPtUYa9Z" role="2Oq$k0">
                    <ref role="3cqZAo" node="4FbMPtUXTQW" resolve="maxNrOfObservers" />
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
          <node concept="3clFbF" id="4FbMPtV5boK" role="3cqZAp">
            <node concept="2YIFZM" id="4FbMPtV5fUJ" role="3clFbG">
              <ref role="37wK5l" to="u4ym:4FbMPtV5fvT" resolve="change" />
              <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
              <node concept="2xqhHp" id="2HLAWGRU1b4" role="37wK5m" />
              <node concept="2OqwBi" id="4FbMPtV5fVE" role="37wK5m">
                <node concept="2WthIp" id="4FbMPtV5fVH" role="2Oq$k0" />
                <node concept="34pFcN" id="4FbMPtV5fVJ" role="2OqNvi">
                  <ref role="2WH_rO" node="4FbMPtUGgRu" resolve="colorfulEditors" />
                </node>
              </node>
              <node concept="2OqwBi" id="4FbMPtV5XbT" role="37wK5m">
                <node concept="2WthIp" id="4FbMPtV5WU0" role="2Oq$k0" />
                <node concept="34pFcN" id="4FbMPtV5XiR" role="2OqNvi">
                  <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="onMode" />
                </node>
              </node>
              <node concept="2OqwBi" id="4KK_HU4cLwB" role="37wK5m">
                <node concept="2WthIp" id="4KK_HU4cLnh" role="2Oq$k0" />
                <node concept="34pFcN" id="4KK_HU4cLKq" role="2OqNvi">
                  <ref role="2WH_rO" node="4FbMPtUX$p$" resolve="devMode" />
                </node>
              </node>
              <node concept="2OqwBi" id="4FbMPtV5hba" role="37wK5m">
                <node concept="2WthIp" id="4FbMPtV5hbb" role="2Oq$k0" />
                <node concept="34pFcN" id="4FbMPtV5hbc" role="2OqNvi">
                  <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                </node>
              </node>
              <node concept="2OqwBi" id="4FbMPtV5j0k" role="37wK5m">
                <node concept="2WthIp" id="4FbMPtV5j0l" role="2Oq$k0" />
                <node concept="34pFcN" id="4FbMPtV5j0m" role="2OqNvi">
                  <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                </node>
              </node>
              <node concept="2OqwBi" id="4FbMPtV5kPt" role="37wK5m">
                <node concept="2WthIp" id="4FbMPtV5kPu" role="2Oq$k0" />
                <node concept="34pFcN" id="4FbMPtV5kPv" role="2OqNvi">
                  <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserved" />
                </node>
              </node>
              <node concept="2OqwBi" id="4FbMPtV5mGD" role="37wK5m">
                <node concept="2WthIp" id="4FbMPtV5mGE" role="2Oq$k0" />
                <node concept="34pFcN" id="4FbMPtV5mGF" role="2OqNvi">
                  <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="5LbVSrDAmF1" role="3yzNdQ">
        <node concept="1pGfFk" id="5LbVSrDAnt7" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
        </node>
      </node>
      <node concept="1QGGSu" id="4FbMPtUFS1x" role="$jwmB">
        <property role="1iqoE4" value="${module}/icons/Dclare.png" />
      </node>
    </node>
    <node concept="3xXM6Z" id="4o9njCw6yMf" role="3xXSXp">
      <node concept="3clFbS" id="4o9njCw6yMg" role="2VODD2">
        <node concept="3clFbJ" id="BvxLt1_b_F" role="3cqZAp">
          <node concept="3clFbS" id="BvxLt1_b_G" role="3clFbx">
            <node concept="3clFbF" id="BvxLt1_b_H" role="3cqZAp">
              <node concept="37vLTI" id="BvxLt1_b_I" role="3clFbG">
                <node concept="2OqwBi" id="BvxLt1_b_J" role="37vLTJ">
                  <node concept="2WthIp" id="BvxLt1_b_K" role="2Oq$k0" />
                  <node concept="34pFcN" id="BvxLt1_b_L" role="2OqNvi">
                    <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                  </node>
                </node>
                <node concept="10M0yZ" id="BvxLt1D3Iw" role="37vLTx">
                  <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_TOTAL_NR_OF_CHANGES" resolve="MAX_TOTAL_NR_OF_CHANGES" />
                  <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2dkUwp" id="BvxLt1_b_N" role="3clFbw">
            <node concept="2OqwBi" id="BvxLt1_b_O" role="3uHU7B">
              <node concept="2WthIp" id="BvxLt1_b_P" role="2Oq$k0" />
              <node concept="34pFcN" id="BvxLt1_b_Q" role="2OqNvi">
                <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
              </node>
            </node>
            <node concept="3cmrfG" id="BvxLt1_b_R" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="BvxLt1_b_u" role="3cqZAp">
          <node concept="3clFbS" id="BvxLt1_b_v" role="3clFbx">
            <node concept="3clFbF" id="BvxLt1_b_w" role="3cqZAp">
              <node concept="37vLTI" id="BvxLt1_b_x" role="3clFbG">
                <node concept="2OqwBi" id="BvxLt1_b_y" role="37vLTJ">
                  <node concept="2WthIp" id="BvxLt1_b_z" role="2Oq$k0" />
                  <node concept="34pFcN" id="BvxLt1_b_$" role="2OqNvi">
                    <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                  </node>
                </node>
                <node concept="10M0yZ" id="BvxLt1DcPa" role="37vLTx">
                  <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_CHANGES" resolve="MAX_NR_OF_CHANGES" />
                  <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2dkUwp" id="BvxLt1_b_A" role="3clFbw">
            <node concept="2OqwBi" id="BvxLt1_b_B" role="3uHU7B">
              <node concept="2WthIp" id="BvxLt1_b_C" role="2Oq$k0" />
              <node concept="34pFcN" id="BvxLt1_b_D" role="2OqNvi">
                <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
              </node>
            </node>
            <node concept="3cmrfG" id="BvxLt1_b_E" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="BvxLt1_b_S" role="3cqZAp">
          <node concept="3clFbS" id="BvxLt1_b_T" role="3clFbx">
            <node concept="3clFbF" id="BvxLt1_b_U" role="3cqZAp">
              <node concept="37vLTI" id="BvxLt1_b_V" role="3clFbG">
                <node concept="2OqwBi" id="BvxLt1_b_W" role="37vLTJ">
                  <node concept="2WthIp" id="BvxLt1_b_X" role="2Oq$k0" />
                  <node concept="34pFcN" id="BvxLt1_b_Y" role="2OqNvi">
                    <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserved" />
                  </node>
                </node>
                <node concept="10M0yZ" id="BvxLt1Df4v" role="37vLTx">
                  <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_OBSERVED" resolve="MAX_NR_OF_OBSERVED" />
                  <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2dkUwp" id="BvxLt1_bA0" role="3clFbw">
            <node concept="2OqwBi" id="BvxLt1_bA1" role="3uHU7B">
              <node concept="2WthIp" id="BvxLt1_bA2" role="2Oq$k0" />
              <node concept="34pFcN" id="BvxLt1_bA3" role="2OqNvi">
                <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserved" />
              </node>
            </node>
            <node concept="3cmrfG" id="BvxLt1_bA4" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="BvxLt1_bA5" role="3cqZAp">
          <node concept="3clFbS" id="BvxLt1_bA6" role="3clFbx">
            <node concept="3clFbF" id="BvxLt1_bA7" role="3cqZAp">
              <node concept="37vLTI" id="BvxLt1_bA8" role="3clFbG">
                <node concept="2OqwBi" id="BvxLt1_bA9" role="37vLTJ">
                  <node concept="2WthIp" id="BvxLt1_bAa" role="2Oq$k0" />
                  <node concept="34pFcN" id="BvxLt1_bAb" role="2OqNvi">
                    <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
                  </node>
                </node>
                <node concept="10M0yZ" id="BvxLt1DhjO" role="37vLTx">
                  <ref role="3cqZAo" to="kag7:~UniverseTransaction.MAX_NR_OF_OBSERVERS" resolve="MAX_NR_OF_OBSERVERS" />
                  <ref role="1PxDUh" to="kag7:~UniverseTransaction" resolve="UniverseTransaction" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2dkUwp" id="BvxLt1_bAd" role="3clFbw">
            <node concept="2OqwBi" id="BvxLt1_bAe" role="3uHU7B">
              <node concept="2WthIp" id="BvxLt1_bAf" role="2Oq$k0" />
              <node concept="34pFcN" id="BvxLt1_bAg" role="2OqNvi">
                <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
              </node>
            </node>
            <node concept="3cmrfG" id="BvxLt1_bAh" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4FbMPtV66Yi" role="3cqZAp">
          <node concept="2YIFZM" id="4FbMPtV66Yj" role="3clFbG">
            <ref role="37wK5l" to="u4ym:4FbMPtV5fvT" resolve="change" />
            <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
            <node concept="2OqwBi" id="2HLAWGRWnIc" role="37wK5m">
              <node concept="1KvdUw" id="2HLAWGRU103" role="2Oq$k0" />
              <node concept="liA8E" id="2HLAWGRWo6L" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
            <node concept="2OqwBi" id="4FbMPtV66Yk" role="37wK5m">
              <node concept="2WthIp" id="4FbMPtV66Yl" role="2Oq$k0" />
              <node concept="34pFcN" id="4FbMPtV66Ym" role="2OqNvi">
                <ref role="2WH_rO" node="4FbMPtUGgRu" resolve="colorfulEditors" />
              </node>
            </node>
            <node concept="2OqwBi" id="4FbMPtV66Yn" role="37wK5m">
              <node concept="2WthIp" id="4FbMPtV66Yo" role="2Oq$k0" />
              <node concept="34pFcN" id="4FbMPtV66Yp" role="2OqNvi">
                <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="onMode" />
              </node>
            </node>
            <node concept="2OqwBi" id="4KK_HU4cIXX" role="37wK5m">
              <node concept="2WthIp" id="4KK_HU4cIOs" role="2Oq$k0" />
              <node concept="34pFcN" id="4KK_HU4cJdi" role="2OqNvi">
                <ref role="2WH_rO" node="4FbMPtUX$p$" resolve="devMode" />
              </node>
            </node>
            <node concept="2OqwBi" id="4FbMPtV66Yq" role="37wK5m">
              <node concept="2WthIp" id="4FbMPtV66Yr" role="2Oq$k0" />
              <node concept="34pFcN" id="4FbMPtV66Ys" role="2OqNvi">
                <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
              </node>
            </node>
            <node concept="2OqwBi" id="4FbMPtV66Yt" role="37wK5m">
              <node concept="2WthIp" id="4FbMPtV66Yu" role="2Oq$k0" />
              <node concept="34pFcN" id="4FbMPtV66Yv" role="2OqNvi">
                <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
              </node>
            </node>
            <node concept="2OqwBi" id="4FbMPtV66Yw" role="37wK5m">
              <node concept="2WthIp" id="4FbMPtV66Yx" role="2Oq$k0" />
              <node concept="34pFcN" id="4FbMPtV66Yy" role="2OqNvi">
                <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserved" />
              </node>
            </node>
            <node concept="2OqwBi" id="4FbMPtV66Yz" role="37wK5m">
              <node concept="2WthIp" id="4FbMPtV66Y$" role="2Oq$k0" />
              <node concept="34pFcN" id="4FbMPtV66Y_" role="2OqNvi">
                <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
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
          <node concept="1PaTwC" id="7$u7SPmR_uv" role="1aUNEU">
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
          <node concept="1PaTwC" id="7$u7SPmR_uI" role="1aUNEU">
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
          <node concept="1PaTwC" id="7$u7SPmR_v0" role="1aUNEU">
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
    <property role="TrG5h" value="MyEngineStatusHandler" />
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
            <node concept="2OqwBi" id="3zaVTDejLI_" role="37vLTx">
              <node concept="37vLTw" id="1sOlkZtGWwZ" role="2Oq$k0">
                <ref role="3cqZAo" node="1sOlkZtGUDp" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="3zaVTDejPPd" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
              </node>
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
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="3zaVTDejP63" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3zaVTDeeL6N" role="jymVt" />
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
        <node concept="3cpWs8" id="3zaVTDejBVw" role="3cqZAp">
          <node concept="3cpWsn" id="3zaVTDejBVx" role="3cpWs9">
            <property role="TrG5h" value="messages" />
            <node concept="1xUVSX" id="3zaVTDejBVy" role="1tU5fm">
              <ref role="1xYkEM" node="3OqCb4$v3q7" resolve="DClareMessages" />
            </node>
            <node concept="2OqwBi" id="3zaVTDejBVz" role="33vP2m">
              <node concept="37vLTw" id="3zaVTDejBV$" role="2Oq$k0">
                <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
              </node>
              <node concept="LR4U6" id="3zaVTDejBV_" role="2OqNvi">
                <ref role="LR4U5" node="3OqCb4$v3q7" resolve="DClareMessages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3zaVTDejBVA" role="3cqZAp">
          <node concept="3clFbS" id="3zaVTDejBVB" role="3clFbx">
            <node concept="3clFbF" id="3zaVTDejBVC" role="3cqZAp">
              <node concept="2OqwBi" id="3zaVTDejBVD" role="3clFbG">
                <node concept="37vLTw" id="3zaVTDejBVE" role="2Oq$k0">
                  <ref role="3cqZAo" node="3zaVTDejBVx" resolve="messages" />
                </node>
                <node concept="2XshWL" id="3zaVTDejChm" role="2OqNvi">
                  <ref role="2WH_rO" node="3zaVTDehbTt" resolve="stats" />
                  <node concept="37vLTw" id="3zaVTDejCuu" role="2XxRq1">
                    <ref role="3cqZAo" node="57dWhtn5FY2" resolve="statistics" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3zaVTDejBVG" role="3clFbw">
            <node concept="10Nm6u" id="3zaVTDejBVH" role="3uHU7w" />
            <node concept="37vLTw" id="3zaVTDejBVI" role="3uHU7B">
              <ref role="3cqZAo" node="3zaVTDejBVx" resolve="messages" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="57dWhtn5FY5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="QlQbLbRAaE" role="1B3o_S" />
    <node concept="3uibUv" id="3zaVTDeejqC" role="EKbjA">
      <ref role="3uigEE" to="t4tl:~EngineStatusHandler" resolve="EngineStatusHandler" />
    </node>
    <node concept="2tJIrI" id="2NcVYuTGdKR" role="jymVt" />
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
      <node concept="37vLTG" id="3zaVTDeeksL" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="3zaVTDeeksM" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
        </node>
      </node>
      <node concept="3clFbS" id="1DUQ$Ow_31i" role="3clF47">
        <node concept="3cpWs8" id="3zaVTDejeFf" role="3cqZAp">
          <node concept="3cpWsn" id="3zaVTDejeFg" role="3cpWs9">
            <property role="TrG5h" value="messages" />
            <node concept="1xUVSX" id="3zaVTDejeFh" role="1tU5fm">
              <ref role="1xYkEM" node="3OqCb4$v3q7" resolve="DClareMessages" />
            </node>
            <node concept="2OqwBi" id="3zaVTDejeFi" role="33vP2m">
              <node concept="37vLTw" id="3zaVTDejeFj" role="2Oq$k0">
                <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
              </node>
              <node concept="LR4U6" id="3zaVTDejeFk" role="2OqNvi">
                <ref role="LR4U5" node="3OqCb4$v3q7" resolve="DClareMessages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3zaVTDejeFl" role="3cqZAp">
          <node concept="3clFbS" id="3zaVTDejeFm" role="3clFbx">
            <node concept="3clFbF" id="3zaVTDejeFn" role="3cqZAp">
              <node concept="2OqwBi" id="3zaVTDejeFo" role="3clFbG">
                <node concept="37vLTw" id="3zaVTDejeFp" role="2Oq$k0">
                  <ref role="3cqZAo" node="3zaVTDejeFg" resolve="messages" />
                </node>
                <node concept="2XshWL" id="3zaVTDejfaX" role="2OqNvi">
                  <ref role="2WH_rO" node="3zaVTDehlVp" resolve="on" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3zaVTDejeFs" role="3clFbw">
            <node concept="10Nm6u" id="3zaVTDejeFt" role="3uHU7w" />
            <node concept="37vLTw" id="3zaVTDejeFu" role="3uHU7B">
              <ref role="3cqZAo" node="3zaVTDejeFg" resolve="messages" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1DUQ$Ow_31j" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3zaVTDeeC7D" role="jymVt" />
    <node concept="3clFb_" id="1DUQ$Ow_31k" role="jymVt">
      <property role="TrG5h" value="terminating" />
      <node concept="3Tm1VV" id="1DUQ$Ow_31l" role="1B3o_S" />
      <node concept="3cqZAl" id="1DUQ$Ow_31n" role="3clF45" />
      <node concept="37vLTG" id="1DUQ$Ow_31o" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1DUQ$Ow_31p" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="3odd6ID_Nmz" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="3odd6ID_NVu" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
        </node>
      </node>
      <node concept="37vLTG" id="3odd6ID_Hug" role="3clF46">
        <property role="TrG5h" value="getter" />
        <node concept="3uibUv" id="3odd6ID_Nb4" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~Getter" resolve="Getter" />
        </node>
      </node>
      <node concept="3clFbS" id="1DUQ$Ow_31q" role="3clF47">
        <node concept="3cpWs8" id="3zaVTDehR0u" role="3cqZAp">
          <node concept="3cpWsn" id="3zaVTDehR0v" role="3cpWs9">
            <property role="TrG5h" value="messages" />
            <node concept="1xUVSX" id="3zaVTDehR0w" role="1tU5fm">
              <ref role="1xYkEM" node="3OqCb4$v3q7" resolve="DClareMessages" />
            </node>
            <node concept="2OqwBi" id="3zaVTDehR0x" role="33vP2m">
              <node concept="37vLTw" id="3zaVTDehR0y" role="2Oq$k0">
                <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
              </node>
              <node concept="LR4U6" id="3zaVTDehR0z" role="2OqNvi">
                <ref role="LR4U5" node="3OqCb4$v3q7" resolve="DClareMessages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3zaVTDehR0$" role="3cqZAp">
          <node concept="3clFbS" id="3zaVTDehR0_" role="3clFbx">
            <node concept="3clFbF" id="3zaVTDehR0A" role="3cqZAp">
              <node concept="2OqwBi" id="3zaVTDehR0B" role="3clFbG">
                <node concept="37vLTw" id="3zaVTDehR0C" role="2Oq$k0">
                  <ref role="3cqZAo" node="3zaVTDehR0v" resolve="messages" />
                </node>
                <node concept="2XshWL" id="3zaVTDehRpQ" role="2OqNvi">
                  <ref role="2WH_rO" node="3zaVTDehllW" resolve="terminating" />
                  <node concept="37vLTw" id="3zaVTDesBcl" role="2XxRq1">
                    <ref role="3cqZAo" node="3odd6ID_Nmz" resolve="engine" />
                  </node>
                  <node concept="37vLTw" id="3zaVTDeiJzd" role="2XxRq1">
                    <ref role="3cqZAo" node="3odd6ID_Hug" resolve="getter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3zaVTDehR0E" role="3clFbw">
            <node concept="10Nm6u" id="3zaVTDehR0F" role="3uHU7w" />
            <node concept="37vLTw" id="3zaVTDehR0G" role="3uHU7B">
              <ref role="3cqZAo" node="3zaVTDehR0v" resolve="messages" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1DUQ$Ow_31r" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3zaVTDeeFbe" role="jymVt" />
    <node concept="3clFb_" id="3zaVTDeerT9" role="jymVt">
      <property role="TrG5h" value="off" />
      <node concept="3Tm1VV" id="3zaVTDeerTa" role="1B3o_S" />
      <node concept="3cqZAl" id="3zaVTDeerTc" role="3clF45" />
      <node concept="37vLTG" id="3zaVTDeerTd" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3zaVTDeerTe" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="3zaVTDeerTf" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="3uibUv" id="3zaVTDeerTg" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
        </node>
      </node>
      <node concept="3clFbS" id="3zaVTDeerTh" role="3clF47">
        <node concept="3cpWs8" id="3zaVTDehNxx" role="3cqZAp">
          <node concept="3cpWsn" id="3zaVTDehNxy" role="3cpWs9">
            <property role="TrG5h" value="messages" />
            <node concept="1xUVSX" id="3zaVTDehNxz" role="1tU5fm">
              <ref role="1xYkEM" node="3OqCb4$v3q7" resolve="DClareMessages" />
            </node>
            <node concept="2OqwBi" id="3zaVTDehNT0" role="33vP2m">
              <node concept="37vLTw" id="3zaVTDehNT1" role="2Oq$k0">
                <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
              </node>
              <node concept="LR4U6" id="3zaVTDehNT2" role="2OqNvi">
                <ref role="LR4U5" node="3OqCb4$v3q7" resolve="DClareMessages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3zaVTDehNx$" role="3cqZAp">
          <node concept="3clFbS" id="3zaVTDehNx_" role="3clFbx">
            <node concept="3clFbF" id="3zaVTDehNxA" role="3cqZAp">
              <node concept="2OqwBi" id="3zaVTDehNxB" role="3clFbG">
                <node concept="37vLTw" id="3zaVTDehNxC" role="2Oq$k0">
                  <ref role="3cqZAo" node="3zaVTDehNxy" resolve="messages" />
                </node>
                <node concept="2XshWL" id="3zaVTDehQSb" role="2OqNvi">
                  <ref role="2WH_rO" node="3zaVTDehl$D" resolve="off" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3zaVTDehNxE" role="3clFbw">
            <node concept="10Nm6u" id="3zaVTDehNxL" role="3uHU7w" />
            <node concept="37vLTw" id="3zaVTDehNxH" role="3uHU7B">
              <ref role="3cqZAo" node="3zaVTDehNxy" resolve="messages" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3zaVTDeerTi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3zaVTDeeIxS" role="jymVt" />
    <node concept="3clFb_" id="QlQbLbRAbQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="active" />
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
      <node concept="37vLTG" id="3zaVTDeem2l" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="3zaVTDeem2m" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
        </node>
      </node>
      <node concept="3clFbS" id="QlQbLbRAbW" role="3clF47">
        <node concept="3cpWs8" id="3zaVTDehOlR" role="3cqZAp">
          <node concept="3cpWsn" id="3zaVTDehOlS" role="3cpWs9">
            <property role="TrG5h" value="messages" />
            <node concept="1xUVSX" id="3zaVTDehOlT" role="1tU5fm">
              <ref role="1xYkEM" node="3OqCb4$v3q7" resolve="DClareMessages" />
            </node>
            <node concept="2OqwBi" id="3zaVTDehOlU" role="33vP2m">
              <node concept="37vLTw" id="3zaVTDehOlV" role="2Oq$k0">
                <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
              </node>
              <node concept="LR4U6" id="3zaVTDehOlW" role="2OqNvi">
                <ref role="LR4U5" node="3OqCb4$v3q7" resolve="DClareMessages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3zaVTDehohd" role="3cqZAp">
          <node concept="3clFbS" id="3zaVTDehohe" role="3clFbx">
            <node concept="3clFbF" id="3zaVTDehohf" role="3cqZAp">
              <node concept="2OqwBi" id="3zaVTDehohg" role="3clFbG">
                <node concept="37vLTw" id="3zaVTDehP2p" role="2Oq$k0">
                  <ref role="3cqZAo" node="3zaVTDehOlS" resolve="messages" />
                </node>
                <node concept="2XshWL" id="3zaVTDehoYe" role="2OqNvi">
                  <ref role="2WH_rO" node="3zaVTDehlGc" resolve="active" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3zaVTDehohj" role="3clFbw">
            <node concept="10Nm6u" id="3zaVTDehohq" role="3uHU7w" />
            <node concept="37vLTw" id="3zaVTDehOPL" role="3uHU7B">
              <ref role="3cqZAo" node="3zaVTDehOlS" resolve="messages" />
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
      <property role="TrG5h" value="idle" />
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
      <node concept="37vLTG" id="7VHZ_z7AwPe" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="4lIQaixKKi_" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
        </node>
      </node>
      <node concept="37vLTG" id="QlQbLbRUPs" role="3clF46">
        <property role="TrG5h" value="getter" />
        <node concept="3uibUv" id="30f$n$3amzp" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~Getter" resolve="Getter" />
        </node>
      </node>
      <node concept="3clFbS" id="QlQbLbRUPy" role="3clF47">
        <node concept="3cpWs8" id="3zaVTDehP4c" role="3cqZAp">
          <node concept="3cpWsn" id="3zaVTDehP4d" role="3cpWs9">
            <property role="TrG5h" value="messages" />
            <node concept="1xUVSX" id="3zaVTDehP4e" role="1tU5fm">
              <ref role="1xYkEM" node="3OqCb4$v3q7" resolve="DClareMessages" />
            </node>
            <node concept="2OqwBi" id="3zaVTDehP4f" role="33vP2m">
              <node concept="37vLTw" id="3zaVTDehP4g" role="2Oq$k0">
                <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
              </node>
              <node concept="LR4U6" id="3zaVTDehP4h" role="2OqNvi">
                <ref role="LR4U5" node="3OqCb4$v3q7" resolve="DClareMessages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3zaVTDehk3h" role="3cqZAp">
          <node concept="3clFbS" id="3zaVTDehk3j" role="3clFbx">
            <node concept="3clFbF" id="3zaVTDehkLv" role="3cqZAp">
              <node concept="2OqwBi" id="3zaVTDehl3w" role="3clFbG">
                <node concept="37vLTw" id="3zaVTDehQ1z" role="2Oq$k0">
                  <ref role="3cqZAo" node="3zaVTDehP4d" resolve="messages" />
                </node>
                <node concept="2XshWL" id="3zaVTDehmLn" role="2OqNvi">
                  <ref role="2WH_rO" node="3zaVTDehlGr" resolve="idle" />
                  <node concept="37vLTw" id="3zaVTDesBwa" role="2XxRq1">
                    <ref role="3cqZAo" node="7VHZ_z7AwPe" resolve="engine" />
                  </node>
                  <node concept="37vLTw" id="3zaVTDeoeRA" role="2XxRq1">
                    <ref role="3cqZAo" node="QlQbLbRUPs" resolve="getter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3zaVTDehkje" role="3clFbw">
            <node concept="10Nm6u" id="3zaVTDehkjl" role="3uHU7w" />
            <node concept="37vLTw" id="3zaVTDehPOV" role="3uHU7B">
              <ref role="3cqZAo" node="3zaVTDehP4d" resolve="messages" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="QlQbLbRUPz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="sEfby" id="3OqCb4$v3q7">
    <property role="TrG5h" value="DClareMessages" />
    <property role="2XNbzY" value="DClare Messages" />
    <node concept="2XrIbr" id="3zaVTDehbTt" role="2XNbBy">
      <property role="TrG5h" value="stats" />
      <node concept="37vLTG" id="3zaVTDejCJQ" role="3clF46">
        <property role="TrG5h" value="statistics" />
        <node concept="3uibUv" id="3zaVTDejCJR" role="1tU5fm">
          <ref role="3uigEE" to="kag7:~UniverseStatistics" resolve="UniverseStatistics" />
        </node>
      </node>
      <node concept="3cqZAl" id="3zaVTDehcbf" role="3clF45" />
      <node concept="3clFbS" id="3zaVTDehbTv" role="3clF47">
        <node concept="3clFbF" id="3zaVTDejD6C" role="3cqZAp">
          <node concept="2OqwBi" id="3zaVTDejDSw" role="3clFbG">
            <node concept="2OqwBi" id="3zaVTDejD8m" role="2Oq$k0">
              <node concept="2WthIp" id="3zaVTDejD6B" role="2Oq$k0" />
              <node concept="2BZ7hE" id="3zaVTDejDbI" role="2OqNvi">
                <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
              </node>
            </node>
            <node concept="liA8E" id="3zaVTDejEGy" role="2OqNvi">
              <ref role="37wK5l" node="57dWhtn9BGy" resolve="stats" />
              <node concept="37vLTw" id="3zaVTDejEQR" role="37wK5m">
                <ref role="3cqZAo" node="3zaVTDejCJQ" resolve="statistics" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="3zaVTDehlVp" role="2XNbBy">
      <property role="TrG5h" value="on" />
      <node concept="3cqZAl" id="3zaVTDehlVq" role="3clF45" />
      <node concept="3clFbS" id="3zaVTDehlVr" role="3clF47">
        <node concept="3clFbF" id="3zaVTDejfrw" role="3cqZAp">
          <node concept="2OqwBi" id="3zaVTDejgi5" role="3clFbG">
            <node concept="2OqwBi" id="3zaVTDejfyE" role="2Oq$k0">
              <node concept="2WthIp" id="3zaVTDejfrv" role="2Oq$k0" />
              <node concept="2BZ7hE" id="3zaVTDejf_e" role="2OqNvi">
                <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
              </node>
            </node>
            <node concept="liA8E" id="3zaVTDejh0$" role="2OqNvi">
              <ref role="37wK5l" node="1DUQ$OwxyYT" resolve="on" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="3zaVTDehllW" role="2XNbBy">
      <property role="TrG5h" value="terminating" />
      <node concept="37vLTG" id="3zaVTDesBJ6" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="3zaVTDesRKQ" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
        </node>
      </node>
      <node concept="37vLTG" id="3zaVTDeiJLj" role="3clF46">
        <property role="TrG5h" value="getter" />
        <node concept="3uibUv" id="3zaVTDeiJR4" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~Getter" resolve="Getter" />
        </node>
      </node>
      <node concept="3cqZAl" id="3zaVTDehllX" role="3clF45" />
      <node concept="3clFbS" id="3zaVTDehllY" role="3clF47">
        <node concept="3clFbF" id="3zaVTDehRAJ" role="3cqZAp">
          <node concept="2OqwBi" id="3zaVTDehRAK" role="3clFbG">
            <node concept="liA8E" id="3zaVTDehRAL" role="2OqNvi">
              <ref role="37wK5l" node="1sOlkZtHpX5" resolve="idle" />
              <node concept="37vLTw" id="3zaVTDeiJRv" role="37wK5m">
                <ref role="3cqZAo" node="3zaVTDeiJLj" resolve="getter" />
              </node>
              <node concept="37vLTw" id="3zaVTDesBTr" role="37wK5m">
                <ref role="3cqZAo" node="3zaVTDesBJ6" resolve="engine" />
              </node>
            </node>
            <node concept="2OqwBi" id="3zaVTDehRAP" role="2Oq$k0">
              <node concept="2WthIp" id="3zaVTDehRM6" role="2Oq$k0" />
              <node concept="2BZ7hE" id="3zaVTDehRAR" role="2OqNvi">
                <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3zaVTDehRAC" role="3cqZAp">
          <node concept="2OqwBi" id="3zaVTDehRAD" role="3clFbG">
            <node concept="liA8E" id="3zaVTDehRAE" role="2OqNvi">
              <ref role="37wK5l" node="1DUQ$OwuKJQ" resolve="terminating" />
            </node>
            <node concept="2OqwBi" id="3zaVTDehRJQ" role="2Oq$k0">
              <node concept="2WthIp" id="3zaVTDehRJT" role="2Oq$k0" />
              <node concept="2BZ7hE" id="3zaVTDehRJV" role="2OqNvi">
                <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3zaVTDehRAS" role="3cqZAp">
          <node concept="2OqwBi" id="3zaVTDehRAT" role="3clFbG">
            <node concept="2WthIp" id="3zaVTDehRMU" role="2Oq$k0" />
            <node concept="liA8E" id="3zaVTDehRAV" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openTool(boolean)" resolve="openTool" />
              <node concept="3clFbT" id="3zaVTDehRAW" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="3zaVTDehl$D" role="2XNbBy">
      <property role="TrG5h" value="off" />
      <node concept="3cqZAl" id="3zaVTDehl$E" role="3clF45" />
      <node concept="3clFbS" id="3zaVTDehl$F" role="3clF47">
        <node concept="3clFbF" id="3zaVTDeoipa" role="3cqZAp">
          <node concept="2OqwBi" id="3zaVTDeoipb" role="3clFbG">
            <node concept="liA8E" id="3zaVTDetxDA" role="2OqNvi">
              <ref role="37wK5l" node="3zaVTDeokEn" resolve="off" />
            </node>
            <node concept="2OqwBi" id="3zaVTDeoipd" role="2Oq$k0">
              <node concept="2WthIp" id="3zaVTDeoipe" role="2Oq$k0" />
              <node concept="2BZ7hE" id="3zaVTDeoipf" role="2OqNvi">
                <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="3zaVTDehlGc" role="2XNbBy">
      <property role="TrG5h" value="active" />
      <node concept="3cqZAl" id="3zaVTDehlGd" role="3clF45" />
      <node concept="3clFbS" id="3zaVTDehlGe" role="3clF47">
        <node concept="3clFbF" id="3zaVTDehpdx" role="3cqZAp">
          <node concept="2OqwBi" id="3zaVTDehpZm" role="3clFbG">
            <node concept="2OqwBi" id="3zaVTDehpgC" role="2Oq$k0">
              <node concept="2WthIp" id="3zaVTDehpdw" role="2Oq$k0" />
              <node concept="2BZ7hE" id="3zaVTDehpjV" role="2OqNvi">
                <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
              </node>
            </node>
            <node concept="liA8E" id="3zaVTDehqNq" role="2OqNvi">
              <ref role="37wK5l" node="1sOlkZtHpWV" resolve="active" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="3zaVTDehlGr" role="2XNbBy">
      <property role="TrG5h" value="idle" />
      <node concept="37vLTG" id="3zaVTDesBUs" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="3zaVTDesRFa" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
        </node>
      </node>
      <node concept="37vLTG" id="3zaVTDeof69" role="3clF46">
        <property role="TrG5h" value="getter" />
        <node concept="3uibUv" id="3zaVTDeof6a" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~Getter" resolve="Getter" />
        </node>
      </node>
      <node concept="3cqZAl" id="3zaVTDehlGs" role="3clF45" />
      <node concept="3clFbS" id="3zaVTDehlGt" role="3clF47">
        <node concept="3clFbF" id="3zaVTDeofAh" role="3cqZAp">
          <node concept="2OqwBi" id="3zaVTDeofAi" role="3clFbG">
            <node concept="liA8E" id="3zaVTDeofAj" role="2OqNvi">
              <ref role="37wK5l" node="1sOlkZtHpX5" resolve="idle" />
              <node concept="37vLTw" id="3zaVTDeofAk" role="37wK5m">
                <ref role="3cqZAo" node="3zaVTDeof69" resolve="getter" />
              </node>
              <node concept="37vLTw" id="3zaVTDesBZO" role="37wK5m">
                <ref role="3cqZAo" node="3zaVTDesBUs" resolve="engine" />
              </node>
            </node>
            <node concept="2OqwBi" id="3zaVTDeofAq" role="2Oq$k0">
              <node concept="2WthIp" id="3zaVTDeofAr" role="2Oq$k0" />
              <node concept="2BZ7hE" id="3zaVTDeofAs" role="2OqNvi">
                <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3zaVTDehn9s" role="3cqZAp">
          <node concept="2OqwBi" id="3zaVTDehngA" role="3clFbG">
            <node concept="2WthIp" id="3zaVTDehn9r" role="2Oq$k0" />
            <node concept="liA8E" id="3zaVTDehnjT" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openTool(boolean)" resolve="openTool" />
              <node concept="3clFbT" id="3zaVTDehnB_" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
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
            <node concept="3cpWs8" id="3jy5t$L2$em" role="3cqZAp">
              <node concept="3cpWsn" id="3jy5t$L2$ep" role="3cpWs9">
                <property role="TrG5h" value="engine" />
                <node concept="3uibUv" id="3jy5t$L2$eq" role="1tU5fm">
                  <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
                </node>
                <node concept="2OqwBi" id="3jy5t$L2$er" role="33vP2m">
                  <node concept="10M0yZ" id="3jy5t$L2$es" role="2Oq$k0">
                    <ref role="1PxDUh" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                    <ref role="3cqZAo" to="u4ym:4o9njCw5asw" resolve="ENGINES" />
                  </node>
                  <node concept="liA8E" id="3jy5t$L2$et" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="2xqhHp" id="3jy5t$L2$DP" role="37wK5m" />
                  </node>
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
                            <node concept="37vLTw" id="7v_pOG1b5Gg" role="37wK5m">
                              <ref role="3cqZAo" node="3jy5t$L2$ep" resolve="engine" />
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
    <node concept="Wx3nA" id="22j9zcgG3jh" role="jymVt">
      <property role="TrG5h" value="TMP_MODELS" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="22j9zcgG3jj" role="1tU5fm">
        <ref role="3uigEE" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
      </node>
      <node concept="2YIFZM" id="22j9zcgGo$s" role="33vP2m">
        <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
        <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
      </node>
      <node concept="3Tm6S6" id="22j9zcgG3jl" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="22j9zcgF1bx" role="jymVt" />
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
                <ref role="37wK5l" to="exr9:~NodeEditorComponent.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,jetbrains.mps.nodeEditor.configuration.EditorConfigurationBuilder)" resolve="NodeEditorComponent" />
                <node concept="37vLTw" id="3La3n2rOG3G" role="37wK5m">
                  <ref role="3cqZAo" node="3La3n2rHGBG" resolve="repository" />
                </node>
                <node concept="2OqwBi" id="6$WcHcpJReP" role="37wK5m">
                  <node concept="2OqwBi" id="6$WcHcpJjgc" role="2Oq$k0">
                    <node concept="2OqwBi" id="6$WcHcpIKOW" role="2Oq$k0">
                      <node concept="2OqwBi" id="1tCeV3eqyJv" role="2Oq$k0">
                        <node concept="2OqwBi" id="4CcGleaTOZj" role="2Oq$k0">
                          <node concept="2OqwBi" id="3rY1IQ9ZYQ8" role="2Oq$k0">
                            <node concept="2ShNRf" id="3rY1IQ9ZhNY" role="2Oq$k0">
                              <node concept="1pGfFk" id="3rY1IQ9ZYDv" role="2ShVmc">
                                <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.&lt;init&gt;()" resolve="EditorConfigurationBuilder" />
                              </node>
                            </node>
                            <node concept="liA8E" id="3rY1IQ9ZZ7F" role="2OqNvi">
                              <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.showLeftHighlighter(boolean)" resolve="showLeftHighlighter" />
                              <node concept="3clFbT" id="6$WcHcpHtOX" role="37wK5m">
                                <property role="3clFbU" value="true" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="4CcGleaTPpp" role="2OqNvi">
                            <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.readOnly(boolean)" resolve="readOnly" />
                            <node concept="3clFbT" id="4CcGleaTPQ_" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="1tCeV3eqFsa" role="2OqNvi">
                          <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.hasContextMenu(boolean)" resolve="hasContextMenu" />
                          <node concept="3clFbT" id="1tCeV3eqFJO" role="37wK5m" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6$WcHcpILj_" role="2OqNvi">
                        <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.showSelectionLine(boolean)" resolve="showSelectionLine" />
                        <node concept="3clFbT" id="6$WcHcpILPy" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6$WcHcpJjFF" role="2OqNvi">
                      <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.withUI(boolean)" resolve="withUI" />
                      <node concept="3clFbT" id="6$WcHcpJkeb" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6$WcHcpJRG7" role="2OqNvi">
                    <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.hasContextMenu(boolean)" resolve="hasContextMenu" />
                    <node concept="3clFbT" id="6$WcHcpJSmJ" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
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
              <node concept="2OqwBi" id="6$WcHcpNfVy" role="37wK5m">
                <node concept="2OqwBi" id="5FinwQP25RR" role="2Oq$k0">
                  <node concept="Xjq3P" id="5FinwQP24SN" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5FinwQP26Mx" role="2OqNvi">
                    <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
                  </node>
                </node>
                <node concept="liA8E" id="6$WcHcpNhpy" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.getExternalComponent()" resolve="getExternalComponent" />
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
      <node concept="37vLTG" id="3jy5t$KXWoe" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="3jy5t$KYgVG" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
        </node>
      </node>
      <node concept="3clFbS" id="3La3n2rHvwK" role="3clF47">
        <node concept="3cpWs8" id="5ED0xB6Q0xk" role="3cqZAp">
          <node concept="3cpWsn" id="5ED0xB6Q0xn" role="3cpWs9">
            <property role="TrG5h" value="m" />
            <node concept="H_c77" id="5ED0xB6Q0xi" role="1tU5fm" />
            <node concept="2OqwBi" id="3zaVTDenQ9y" role="33vP2m">
              <node concept="37vLTw" id="3zaVTDenQ9z" role="2Oq$k0">
                <ref role="3cqZAo" node="22j9zcgG3jh" resolve="TMP_MODELS" />
              </node>
              <node concept="liA8E" id="3zaVTDenQ9$" role="2OqNvi">
                <ref role="37wK5l" to="tqvn:~TemporaryModels.createLongTerm(java.lang.String,jetbrains.mps.smodel.tempmodel.TempModuleOptions)" resolve="createLongTerm" />
                <node concept="3cpWs3" id="3zaVTDenQ9_" role="37wK5m">
                  <node concept="37vLTw" id="3zaVTDenQ9A" role="3uHU7w">
                    <ref role="3cqZAo" node="7e_PmaZA_rB" resolve="repository" />
                  </node>
                  <node concept="Xl_RD" id="3zaVTDenQ9B" role="3uHU7B">
                    <property role="Xl_RC" value="Dclare" />
                  </node>
                </node>
                <node concept="2YIFZM" id="3zaVTDenQ9C" role="37wK5m">
                  <ref role="37wK5l" to="tqvn:~TempModuleOptions.nonReloadableModule()" resolve="nonReloadableModule" />
                  <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
                </node>
              </node>
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
        <node concept="3clFbF" id="3jy5t$KYhZC" role="3cqZAp">
          <node concept="2OqwBi" id="3jy5t$KYjxM" role="3clFbG">
            <node concept="2JrnkZ" id="3jy5t$KYj3b" role="2Oq$k0">
              <node concept="37vLTw" id="3jy5t$KYhZA" role="2JrQYb">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
            </node>
            <node concept="liA8E" id="3jy5t$KYk2Z" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object)" resolve="putUserObject" />
              <node concept="10M0yZ" id="3zaVTDeweFV" role="37wK5m">
                <ref role="3cqZAo" to="akim:3zaVTDewagF" resolve="ENGINE_IN_ROOT_KEY" />
                <ref role="1PxDUh" to="akim:3zaVTDewaf5" resolve="Const" />
              </node>
              <node concept="37vLTw" id="3jy5t$KYl9J" role="37wK5m">
                <ref role="3cqZAo" node="3jy5t$KXWoe" resolve="engine" />
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
    <node concept="3clFb_" id="57dWhtn9BGy" role="jymVt">
      <property role="TrG5h" value="stats" />
      <node concept="3clFbS" id="57dWhtn9BG_" role="3clF47">
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
    <node concept="2tJIrI" id="3zaVTDem8f0" role="jymVt" />
    <node concept="3clFb_" id="1DUQ$OwxyYT" role="jymVt">
      <property role="TrG5h" value="on" />
      <node concept="3cqZAl" id="1DUQ$OwxyYV" role="3clF45" />
      <node concept="3Tm1VV" id="1DUQ$OwxyYW" role="1B3o_S" />
      <node concept="3clFbS" id="1DUQ$OwxyYX" role="3clF47">
        <node concept="3clFbF" id="3zaVTDev3Se" role="3cqZAp">
          <node concept="37vLTI" id="3zaVTDeve28" role="3clFbG">
            <node concept="2OqwBi" id="3zaVTDevj4K" role="37vLTx">
              <node concept="1XH99k" id="3zaVTDeviCF" role="2Oq$k0">
                <ref role="1XH99l" to="wknp:3zaVTDeuva_" resolve="EngineOperationState" />
              </node>
              <node concept="2ViDtV" id="3zaVTDevjug" role="2OqNvi">
                <ref role="2ViDtZ" to="wknp:3zaVTDeuvaE" resolve="on" />
              </node>
            </node>
            <node concept="2OqwBi" id="3zaVTDevd4m" role="37vLTJ">
              <node concept="37vLTw" id="3zaVTDev3Sc" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="3zaVTDevdHa" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:1DUQ$OwrN1P" resolve="engineState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3zaVTDepCFG" role="3cqZAp">
          <node concept="37vLTI" id="3zaVTDepCFH" role="3clFbG">
            <node concept="3clFbT" id="3zaVTDepCFI" role="37vLTx" />
            <node concept="2OqwBi" id="3zaVTDepCFJ" role="37vLTJ">
              <node concept="37vLTw" id="3zaVTDepCFK" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="3zaVTDepCFL" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:3VwCmlf$VFh" resolve="transactionActive" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3zaVTDemQI_" role="3cqZAp" />
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
        <node concept="3clFbH" id="3zaVTDemHTe" role="3cqZAp" />
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
        <node concept="3clFbF" id="2seYxKliPrr" role="3cqZAp">
          <node concept="37vLTI" id="2seYxKliZW7" role="3clFbG">
            <node concept="3cmrfG" id="2seYxKlj0Wh" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="2seYxKliYBC" role="37vLTJ">
              <node concept="37vLTw" id="2seYxKliPrp" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="2seYxKliZfz" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:1FrOyhdWCsR" resolve="changes" />
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
      <property role="TrG5h" value="terminating" />
      <node concept="3cqZAl" id="1DUQ$OwuKJS" role="3clF45" />
      <node concept="3Tm1VV" id="1DUQ$OwuKJT" role="1B3o_S" />
      <node concept="3clFbS" id="1DUQ$OwuKJU" role="3clF47">
        <node concept="3clFbF" id="3zaVTDevsys" role="3cqZAp">
          <node concept="37vLTI" id="3zaVTDevsyt" role="3clFbG">
            <node concept="2OqwBi" id="3zaVTDevsyu" role="37vLTx">
              <node concept="1XH99k" id="3zaVTDevsyv" role="2Oq$k0">
                <ref role="1XH99l" to="wknp:3zaVTDeuva_" resolve="EngineOperationState" />
              </node>
              <node concept="2ViDtV" id="3zaVTDevtQ3" role="2OqNvi">
                <ref role="2ViDtZ" to="wknp:3zaVTDeuvaB" resolve="terminating" />
              </node>
            </node>
            <node concept="2OqwBi" id="3zaVTDevsyx" role="37vLTJ">
              <node concept="37vLTw" id="3zaVTDevsyy" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="3zaVTDevsyz" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:1DUQ$OwrN1P" resolve="engineState" />
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
    <node concept="3clFb_" id="3zaVTDeokEn" role="jymVt">
      <property role="TrG5h" value="off" />
      <node concept="3cqZAl" id="3zaVTDeokEo" role="3clF45" />
      <node concept="3Tm1VV" id="3zaVTDeokEp" role="1B3o_S" />
      <node concept="3clFbS" id="3zaVTDeokEq" role="3clF47">
        <node concept="3clFbF" id="3zaVTDevsY3" role="3cqZAp">
          <node concept="37vLTI" id="3zaVTDevsY4" role="3clFbG">
            <node concept="2OqwBi" id="3zaVTDevsY5" role="37vLTx">
              <node concept="1XH99k" id="3zaVTDevsY6" role="2Oq$k0">
                <ref role="1XH99l" to="wknp:3zaVTDeuva_" resolve="EngineOperationState" />
              </node>
              <node concept="2ViDtV" id="3zaVTDevtZU" role="2OqNvi">
                <ref role="2ViDtZ" to="wknp:3zaVTDeuvaA" resolve="off" />
              </node>
            </node>
            <node concept="2OqwBi" id="3zaVTDevsY8" role="37vLTJ">
              <node concept="37vLTw" id="3zaVTDevsY9" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="3zaVTDevsYa" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:1DUQ$OwrN1P" resolve="engineState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3zaVTDeokEx" role="3cqZAp" />
        <node concept="3clFbF" id="3zaVTDeokEy" role="3cqZAp">
          <node concept="2OqwBi" id="3zaVTDeokEz" role="3clFbG">
            <node concept="2OqwBi" id="3zaVTDeokE$" role="2Oq$k0">
              <node concept="Xjq3P" id="3zaVTDeokE_" role="2Oq$k0" />
              <node concept="2OwXpG" id="3zaVTDeokEA" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="3zaVTDeokEB" role="2OqNvi">
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
      <property role="TrG5h" value="active" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1sOlkZtHpWW" role="1B3o_S" />
      <node concept="3cqZAl" id="1sOlkZtHpWY" role="3clF45" />
      <node concept="3clFbS" id="1sOlkZtHpX3" role="3clF47">
        <node concept="3clFbF" id="3VwCmlfA2Nk" role="3cqZAp">
          <node concept="37vLTI" id="3VwCmlfA4ck" role="3clFbG">
            <node concept="3clFbT" id="3VwCmlfA4Q6" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="3VwCmlfA3y5" role="37vLTJ">
              <node concept="37vLTw" id="3VwCmlfA2Nj" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="3VwCmlfA3Op" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:3VwCmlf$VFh" resolve="transactionActive" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2seYxKli8T6" role="3cqZAp" />
        <node concept="3clFbF" id="3VwCmlfAyUq" role="3cqZAp">
          <node concept="2OqwBi" id="3VwCmlfAyUr" role="3clFbG">
            <node concept="2OqwBi" id="3VwCmlfAyUs" role="2Oq$k0">
              <node concept="Xjq3P" id="3VwCmlfAyUt" role="2Oq$k0" />
              <node concept="2OwXpG" id="3VwCmlfAyUu" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="3VwCmlfAyUv" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1DUQ$Owtw2X" role="jymVt" />
    <node concept="3clFb_" id="1sOlkZtHpX5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="idle" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1sOlkZtHpX6" role="1B3o_S" />
      <node concept="3cqZAl" id="1sOlkZtHpX8" role="3clF45" />
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
        <node concept="3clFbF" id="3VwCmlfAgWe" role="3cqZAp">
          <node concept="37vLTI" id="3VwCmlfAvFC" role="3clFbG">
            <node concept="3clFbT" id="3VwCmlfAyz2" role="37vLTx" />
            <node concept="2OqwBi" id="3VwCmlfAsFV" role="37vLTJ">
              <node concept="37vLTw" id="3VwCmlfAgWc" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="3VwCmlfAvn7" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:3VwCmlf$VFh" resolve="transactionActive" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3zaVTDemZxr" role="3cqZAp" />
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
        <node concept="3clFbH" id="3zaVTDemwVc" role="3cqZAp" />
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
  </node>
  <node concept="Zd50a" id="6JKx8ylNeEd">
    <property role="TrG5h" value="Default" />
    <node concept="Zd509" id="5GUQLVLhjlP" role="Zd508">
      <ref role="1bYAoF" node="18IIFqBWWhG" resolve="ExtractAttribute" />
      <node concept="pLAjd" id="5GUQLVLhjlQ" role="Zd501">
        <property role="pLAjf" value="VK_A" />
        <property role="pLAjc" value="ctrl+alt" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4FbMPtUH_vD">
    <property role="TrG5h" value="PrefsUtils" />
    <node concept="2YIFZL" id="4FbMPtUXPIn" role="jymVt">
      <property role="TrG5h" value="findComponentByName" />
      <node concept="3clFbS" id="4FbMPtUH_yA" role="3clF47">
        <node concept="1DcWWT" id="4FbMPtUH_yB" role="3cqZAp">
          <node concept="3cpWsn" id="4FbMPtUH_z1" role="1Duv9x">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="4FbMPtUH_z3" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
            </node>
          </node>
          <node concept="3clFbS" id="4FbMPtUH_yD" role="2LFqv$">
            <node concept="3clFbJ" id="4FbMPtUHAZO" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <node concept="3clFbS" id="4FbMPtUHAZQ" role="3clFbx">
                <node concept="3cpWs6" id="4FbMPtUHD4k" role="3cqZAp">
                  <node concept="37vLTw" id="4FbMPtUHD4l" role="3cqZAk">
                    <ref role="3cqZAo" node="4FbMPtUH_z1" resolve="component" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4FbMPtUHBEE" role="3clFbw">
                <node concept="37vLTw" id="4FbMPtUHBau" role="2Oq$k0">
                  <ref role="3cqZAo" node="4FbMPtUH_y$" resolve="componentName" />
                </node>
                <node concept="liA8E" id="4FbMPtUHCdg" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="4FbMPtUHCGF" role="37wK5m">
                    <node concept="37vLTw" id="4FbMPtUHCnP" role="2Oq$k0">
                      <ref role="3cqZAo" node="4FbMPtUH_z1" resolve="component" />
                    </node>
                    <node concept="liA8E" id="4FbMPtUHD2S" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4FbMPtUH_yL" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <node concept="2ZW3vV" id="4FbMPtUH_yO" role="3clFbw">
                <node concept="37vLTw" id="4FbMPtUH_yM" role="2ZW6bz">
                  <ref role="3cqZAo" node="4FbMPtUH_z1" resolve="component" />
                </node>
                <node concept="3uibUv" id="4FbMPtUH_yN" role="2ZW6by">
                  <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
                </node>
              </node>
              <node concept="3clFbS" id="4FbMPtUH_yQ" role="3clFbx">
                <node concept="3cpWs8" id="4FbMPtV0ax2" role="3cqZAp">
                  <node concept="3cpWsn" id="4FbMPtV0ax3" role="3cpWs9">
                    <property role="TrG5h" value="found" />
                    <node concept="3uibUv" id="4FbMPtV0awF" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                    </node>
                    <node concept="1rXfSq" id="4FbMPtV0ax4" role="33vP2m">
                      <ref role="37wK5l" node="4FbMPtUXPIn" resolve="findComponentByName" />
                      <node concept="10QFUN" id="4FbMPtV0ax5" role="37wK5m">
                        <node concept="37vLTw" id="4FbMPtV0ax6" role="10QFUP">
                          <ref role="3cqZAo" node="4FbMPtUH_z1" resolve="component" />
                        </node>
                        <node concept="3uibUv" id="4FbMPtV0ax7" role="10QFUM">
                          <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4FbMPtV0ax8" role="37wK5m">
                        <ref role="3cqZAo" node="4FbMPtUH_y$" resolve="componentName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4FbMPtV0aF5" role="3cqZAp">
                  <node concept="3clFbS" id="4FbMPtV0aF7" role="3clFbx">
                    <node concept="3cpWs6" id="4FbMPtUH_yX" role="3cqZAp">
                      <node concept="37vLTw" id="4FbMPtV0ax9" role="3cqZAk">
                        <ref role="3cqZAo" node="4FbMPtV0ax3" resolve="found" />
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="4FbMPtV0btY" role="3clFbw">
                    <node concept="10Nm6u" id="4FbMPtV0bzb" role="3uHU7w" />
                    <node concept="37vLTw" id="4FbMPtV0aUN" role="3uHU7B">
                      <ref role="3cqZAo" node="4FbMPtV0ax3" resolve="found" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4FbMPtUHAbZ" role="1DdaDG">
            <node concept="37vLTw" id="4FbMPtUH_K0" role="2Oq$k0">
              <ref role="3cqZAo" node="4FbMPtUH_yy" resolve="container" />
            </node>
            <node concept="liA8E" id="4FbMPtUHAC0" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.getComponents()" resolve="getComponents" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4FbMPtUH_z5" role="3cqZAp">
          <node concept="10Nm6u" id="4FbMPtUH_z6" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="4FbMPtUH_yy" role="3clF46">
        <property role="TrG5h" value="container" />
        <node concept="3uibUv" id="4FbMPtUH_yz" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
        </node>
      </node>
      <node concept="37vLTG" id="4FbMPtUH_y$" role="3clF46">
        <property role="TrG5h" value="componentName" />
        <node concept="3uibUv" id="4FbMPtUH_y_" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3uibUv" id="4FbMPtUH_z8" role="3clF45">
        <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
      </node>
      <node concept="3Tm1VV" id="4FbMPtUH_z7" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="4FbMPtUH_vE" role="1B3o_S" />
  </node>
</model>

