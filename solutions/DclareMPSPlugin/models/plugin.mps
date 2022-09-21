<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:484d68ee-91ab-4199-84e9-f43210a9918b(DclareMPSPlugin.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
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
    <import index="sbtp" ref="r:ab4a727d-863f-4cd6-83d6-c3322f012644(DclareTrace.structure)" />
    <import index="dvox" ref="r:9dfd3567-3b1f-4edb-85a0-3981ca2bfd8c(jetbrains.mps.lang.modelapi.structure)" />
    <import index="7e0v" ref="r:afc499bf-658e-47de-983c-b73f835c87e1(jetbrains.mps.ide.devkit.editor)" />
    <import index="phxh" ref="r:5754bb7d-f802-4a0f-bd3d-0764f0d71413(jetbrains.mps.ide.modelchecker.platform.actions)" />
    <import index="g4jo" ref="r:d98d04fb-4a60-4106-81cf-6cb40b67de4d(jetbrains.mps.ide.findusages.model)" />
    <import index="d6hs" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.item(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="7e8u" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.tree(MPS.Platform/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" implicit="true" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
    <import index="7bx7" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.workbench.action(MPS.Platform/)" implicit="true" />
    <import index="rgfa" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.tree(JDK/)" implicit="true" />
    <import index="us1s" ref="r:e7d7a1fa-fb58-4cf6-bc1d-e5ed722e0c61(DclareMPS.behavior)" implicit="true" />
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
        <child id="1227008813498" name="constructionParameter" index="2JrayB" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203071677434" name="jetbrains.mps.lang.plugin.structure.ToolDeclaration" flags="ng" index="sEfby">
        <child id="1214307129846" name="getComponentBlock" index="2Um5zG" />
      </concept>
      <concept id="1203082695294" name="jetbrains.mps.lang.plugin.structure.DoUpdateBlock" flags="in" index="tkhdA" />
      <concept id="1203082903663" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_AnActionEvent" flags="nn" index="tl45R" />
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <property id="1217005992861" name="isInvisibleWhenDisabled" index="1rdrE6" />
        <property id="1213283637680" name="isPopup" index="1XlLyE" />
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
        <child id="1227011543811" name="actualParameter" index="2J__8u" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
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
      <concept id="1227008846812" name="jetbrains.mps.lang.plugin.structure.ActionConstructionParameterDeclaration" flags="ig" index="2JriF1" />
      <concept id="1227013049127" name="jetbrains.mps.lang.plugin.structure.AddStatement" flags="nn" index="2JFkCU">
        <child id="1227013166210" name="item" index="2JFLmv" />
      </concept>
      <concept id="1239975356883" name="jetbrains.mps.lang.plugin.structure.UpdateGroupBlock" flags="ng" index="2OiAzN">
        <child id="1239975488603" name="updateFunction" index="2Oj6PV" />
      </concept>
      <concept id="1239975436002" name="jetbrains.mps.lang.plugin.structure.UpdateGroupFunction" flags="in" index="2OiTZ2" />
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
      <concept id="1210184105060" name="jetbrains.mps.lang.plugin.structure.PreferencesComponentType" flags="in" index="34_ZPX">
        <reference id="1210184138184" name="componentDeclaration" index="34A7Nh" />
      </concept>
      <concept id="1203852029150" name="jetbrains.mps.lang.plugin.structure.GetNodesBlock" flags="in" index="1bb2R6" />
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
      <concept id="7459370737647671570" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_SConceptClass" flags="nn" index="1YUXGS" />
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
      <concept id="681855071694758168" name="jetbrains.mps.lang.plugin.standalone.structure.GetPreferencesComponentInProjectOperation" flags="nn" index="LR4Ub">
        <reference id="681855071694758169" name="componentDeclaration" index="LR4Ua" />
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1224500790866" name="jetbrains.mps.baseLanguage.structure.BitwiseOrExpression" flags="nn" index="pVOtf" />
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
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
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
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
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
        <child id="2298239814950983793" name="parameters" index="1Xdeiu" />
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
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <child id="6750920497477046361" name="conceptArgument" index="3MHsoP" />
      </concept>
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1176109685393" name="jetbrains.mps.lang.smodel.structure.Model_RootsIncludingImportedOperation" flags="nn" index="3lApI0">
        <child id="6750920497477143611" name="conceptArgument" index="3MHPDn" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1206482823744" name="jetbrains.mps.lang.smodel.structure.Model_AddRootOperation" flags="nn" index="3BYIHo">
        <child id="1206482823746" name="nodeArgument" index="3BYIHq" />
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
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
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
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
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
        <node concept="3cpWs8" id="149Hew32Wvv" role="3cqZAp">
          <node concept="3cpWsn" id="149Hew32Wvw" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="149Hew32Wvx" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="1KvdUw" id="149Hew32Wvy" role="33vP2m" />
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
                <node concept="37vLTw" id="149Hew337vV" role="2Oq$k0">
                  <ref role="3cqZAo" node="149Hew32Wvw" resolve="mpsProject" />
                </node>
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
    <node concept="34jfKJ" id="WZuJ8h2yNJ" role="34lFYf">
      <property role="TrG5h" value="prefsVersion" />
      <node concept="10Oyi0" id="WZuJ8h2BLV" role="1tU5fm" />
    </node>
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
      <property role="TrG5h" value="Dclare" />
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
              <property role="TrG5h" value="colorfulEditors" />
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
                  <node concept="2OqwBi" id="1iXkhsJB1hd" role="3uHU7w">
                    <node concept="2WthIp" id="1iXkhsJB1he" role="2Oq$k0" />
                    <node concept="34pFcN" id="1iXkhsJB1hf" role="2OqNvi">
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
                  <node concept="2OqwBi" id="BvxLt1yv3Y" role="3uHU7B">
                    <node concept="37vLTw" id="BvxLt1yv3Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="4FbMPtUYaaz" resolve="devMode" />
                    </node>
                    <node concept="liA8E" id="BvxLt1yv40" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1iXkhsJB7IH" role="3uHU7w">
                    <node concept="2WthIp" id="1iXkhsJB7II" role="2Oq$k0" />
                    <node concept="34pFcN" id="1iXkhsJB7IJ" role="2OqNvi">
                      <ref role="2WH_rO" node="4FbMPtUX$p$" resolve="devMode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="BvxLt1BuZZ" role="37vLTJ">
                <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="BvxLt1BhY0" role="3cqZAp">
            <node concept="37vLTI" id="BvxLt1Bj9K" role="3clFbG">
              <node concept="22lmx$" id="BvxLt1BmZL" role="37vLTx">
                <node concept="37vLTw" id="BvxLt1Bl9Q" role="3uHU7B">
                  <ref role="3cqZAo" node="BvxLt1Bbn$" resolve="diff" />
                </node>
                <node concept="3y3z36" id="BvxLt1yv3N" role="3uHU7w">
                  <node concept="2OqwBi" id="BvxLt1yv3O" role="3uHU7B">
                    <node concept="37vLTw" id="BvxLt1yv3P" role="2Oq$k0">
                      <ref role="3cqZAo" node="4FbMPtUYaaj" resolve="colorfulEditors" />
                    </node>
                    <node concept="liA8E" id="BvxLt1yv3Q" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1iXkhsJBeiA" role="3uHU7w">
                    <node concept="2WthIp" id="1iXkhsJBeiB" role="2Oq$k0" />
                    <node concept="34pFcN" id="1iXkhsJBeiC" role="2OqNvi">
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
                  <node concept="2OqwBi" id="1iXkhsJBkPP" role="3uHU7w">
                    <node concept="2WthIp" id="1iXkhsJBkPQ" role="2Oq$k0" />
                    <node concept="34pFcN" id="1iXkhsJBkPR" role="2OqNvi">
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
                  <node concept="2OqwBi" id="1iXkhsJBr11" role="3uHU7w">
                    <node concept="2WthIp" id="1iXkhsJBr12" role="2Oq$k0" />
                    <node concept="34pFcN" id="1iXkhsJBr13" role="2OqNvi">
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
                  <node concept="2OqwBi" id="1iXkhsJBxiS" role="3uHU7w">
                    <node concept="2WthIp" id="1iXkhsJBxiT" role="2Oq$k0" />
                    <node concept="34pFcN" id="1iXkhsJBxiU" role="2OqNvi">
                      <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserved" />
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
                  <node concept="2OqwBi" id="1iXkhsJBBt$" role="3uHU7w">
                    <node concept="2WthIp" id="1iXkhsJBBt_" role="2Oq$k0" />
                    <node concept="34pFcN" id="1iXkhsJBBtA" role="2OqNvi">
                      <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
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
          <node concept="3clFbJ" id="WZuJ8h4QuF" role="3cqZAp">
            <node concept="3clFbC" id="WZuJ8h4QuG" role="3clFbw">
              <node concept="2OqwBi" id="WZuJ8h4QuH" role="3uHU7B">
                <node concept="2WthIp" id="WZuJ8h4QuI" role="2Oq$k0" />
                <node concept="34pFcN" id="WZuJ8h4QuJ" role="2OqNvi">
                  <ref role="2WH_rO" node="WZuJ8h2yNJ" resolve="prefsVersion" />
                </node>
              </node>
              <node concept="3cmrfG" id="WZuJ8h4QuK" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbS" id="WZuJ8h4QuL" role="3clFbx">
              <node concept="3SKdUt" id="WZuJ8h1Blv" role="3cqZAp">
                <node concept="1PaTwC" id="WZuJ8h1Blw" role="1aUNEU">
                  <node concept="3oM_SD" id="WZuJ8h1Blx" role="1PaTwD">
                    <property role="3oM_SC" value="pick" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h1Bly" role="1PaTwD">
                    <property role="3oM_SC" value="up" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h1Blz" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h1Bl$" role="1PaTwD">
                    <property role="3oM_SC" value="config" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h1Bl_" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h1BlA" role="1PaTwD">
                    <property role="3oM_SC" value="defaults:" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="WZuJ8h1BlB" role="3cqZAp">
                <node concept="3cpWsn" id="WZuJ8h1BlC" role="3cpWs9">
                  <property role="TrG5h" value="config" />
                  <node concept="3uibUv" id="WZuJ8h1BlD" role="1tU5fm">
                    <ref role="3uigEE" to="t4tl:~DclareForMpsConfig" resolve="DclareForMpsConfig" />
                  </node>
                  <node concept="2OqwBi" id="WZuJ8h1BlE" role="33vP2m">
                    <node concept="2YIFZM" id="3z4syYQgVHQ" role="2Oq$k0">
                      <ref role="37wK5l" to="u4ym:3z4syYPRmGX" resolve="getEngine" />
                      <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                      <node concept="2xqhHp" id="3z4syYQgVHR" role="37wK5m" />
                    </node>
                    <node concept="liA8E" id="WZuJ8h1BlJ" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.getConfig()" resolve="getConfig" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="WZuJ8h4QuM" role="3cqZAp">
                <node concept="1PaTwC" id="WZuJ8h4QuN" role="1aUNEU">
                  <node concept="3oM_SD" id="WZuJ8h4QuO" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h4QuP" role="1PaTwD">
                    <property role="3oM_SC" value="read" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h4QuQ" role="1PaTwD">
                    <property role="3oM_SC" value="preferences" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h4QuR" role="1PaTwD">
                    <property role="3oM_SC" value="are" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h4QuS" role="1PaTwD">
                    <property role="3oM_SC" value="not" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h4QuT" role="1PaTwD">
                    <property role="3oM_SC" value="yet" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h4QuU" role="1PaTwD">
                    <property role="3oM_SC" value="valid," />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h4QuV" role="1PaTwD">
                    <property role="3oM_SC" value="copy" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h4QuW" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h4QuX" role="1PaTwD">
                    <property role="3oM_SC" value="defaults" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h4QuY" role="1PaTwD">
                    <property role="3oM_SC" value="into" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h4QuZ" role="1PaTwD">
                    <property role="3oM_SC" value="our" />
                  </node>
                  <node concept="3oM_SD" id="WZuJ8h4Qv0" role="1PaTwD">
                    <property role="3oM_SC" value="fields:" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="WZuJ8h4Qv1" role="3cqZAp">
                <node concept="37vLTI" id="WZuJ8h4Qv2" role="3clFbG">
                  <node concept="3cmrfG" id="WZuJ8h4Qv3" role="37vLTx">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="WZuJ8h4Qv4" role="37vLTJ">
                    <node concept="2WthIp" id="WZuJ8h4Qv5" role="2Oq$k0" />
                    <node concept="34pFcN" id="WZuJ8h4Qv6" role="2OqNvi">
                      <ref role="2WH_rO" node="WZuJ8h2yNJ" resolve="prefsVersion" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="WZuJ8h4Qv7" role="3cqZAp">
                <node concept="37vLTI" id="WZuJ8h4Qv8" role="3clFbG">
                  <node concept="2OqwBi" id="WZuJ8h4Qv9" role="37vLTx">
                    <node concept="37vLTw" id="WZuJ8h4Qva" role="2Oq$k0">
                      <ref role="3cqZAo" node="WZuJ8h1BlC" resolve="config" />
                    </node>
                    <node concept="liA8E" id="WZuJ8h4Qvb" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.isColorfulEditors()" resolve="isColorfulEditors" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="WZuJ8h4Qvc" role="37vLTJ">
                    <node concept="2WthIp" id="WZuJ8h4Qvd" role="2Oq$k0" />
                    <node concept="34pFcN" id="WZuJ8h4Qve" role="2OqNvi">
                      <ref role="2WH_rO" node="4FbMPtUGgRu" resolve="colorfulEditors" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="WZuJ8h4Qvf" role="3cqZAp">
                <node concept="37vLTI" id="WZuJ8h4Qvg" role="3clFbG">
                  <node concept="2OqwBi" id="WZuJ8h4Qvh" role="37vLTx">
                    <node concept="37vLTw" id="WZuJ8h4Qvi" role="2Oq$k0">
                      <ref role="3cqZAo" node="WZuJ8h1BlC" resolve="config" />
                    </node>
                    <node concept="liA8E" id="WZuJ8h4Qvj" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.isOnMode()" resolve="isOnMode" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="WZuJ8h4Qvk" role="37vLTJ">
                    <node concept="2WthIp" id="WZuJ8h4Qvl" role="2Oq$k0" />
                    <node concept="34pFcN" id="WZuJ8h4Qvm" role="2OqNvi">
                      <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="onMode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="WZuJ8h4Qvn" role="3cqZAp">
                <node concept="37vLTI" id="WZuJ8h4Qvo" role="3clFbG">
                  <node concept="2OqwBi" id="WZuJ8h4Qvp" role="37vLTx">
                    <node concept="37vLTw" id="WZuJ8h4Qvq" role="2Oq$k0">
                      <ref role="3cqZAo" node="WZuJ8h1BlC" resolve="config" />
                    </node>
                    <node concept="liA8E" id="WZuJ8h4Qvr" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.isDevMode()" resolve="isDevMode" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="WZuJ8h4Qvs" role="37vLTJ">
                    <node concept="2WthIp" id="WZuJ8h4Qvt" role="2Oq$k0" />
                    <node concept="34pFcN" id="WZuJ8h4Qvu" role="2OqNvi">
                      <ref role="2WH_rO" node="4FbMPtUX$p$" resolve="devMode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="WZuJ8h4Qvv" role="3cqZAp">
                <node concept="37vLTI" id="WZuJ8h4Qvw" role="3clFbG">
                  <node concept="2OqwBi" id="WZuJ8h4Qvx" role="37vLTx">
                    <node concept="37vLTw" id="WZuJ8h4Qvy" role="2Oq$k0">
                      <ref role="3cqZAo" node="WZuJ8h1BlC" resolve="config" />
                    </node>
                    <node concept="liA8E" id="WZuJ8h4Qvz" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.getMaxNrOfChanges()" resolve="getMaxNrOfChanges" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="WZuJ8h4Qv$" role="37vLTJ">
                    <node concept="2WthIp" id="WZuJ8h4Qv_" role="2Oq$k0" />
                    <node concept="34pFcN" id="WZuJ8h4QvA" role="2OqNvi">
                      <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="WZuJ8h4QvB" role="3cqZAp">
                <node concept="37vLTI" id="WZuJ8h4QvC" role="3clFbG">
                  <node concept="2OqwBi" id="WZuJ8h4QvD" role="37vLTx">
                    <node concept="37vLTw" id="WZuJ8h4QvE" role="2Oq$k0">
                      <ref role="3cqZAo" node="WZuJ8h1BlC" resolve="config" />
                    </node>
                    <node concept="liA8E" id="WZuJ8h4QvF" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.getMaxTotalNrOfChanges()" resolve="getMaxTotalNrOfChanges" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="WZuJ8h4QvG" role="37vLTJ">
                    <node concept="2WthIp" id="WZuJ8h4QvH" role="2Oq$k0" />
                    <node concept="34pFcN" id="WZuJ8h4QvI" role="2OqNvi">
                      <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="WZuJ8h4QvJ" role="3cqZAp">
                <node concept="37vLTI" id="WZuJ8h4QvK" role="3clFbG">
                  <node concept="2OqwBi" id="WZuJ8h4QvL" role="37vLTx">
                    <node concept="37vLTw" id="WZuJ8h4QvM" role="2Oq$k0">
                      <ref role="3cqZAo" node="WZuJ8h1BlC" resolve="config" />
                    </node>
                    <node concept="liA8E" id="WZuJ8h4QvN" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.getMaxNrOfObserved()" resolve="getMaxNrOfObserved" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="WZuJ8h4QvO" role="37vLTJ">
                    <node concept="2WthIp" id="WZuJ8h4QvP" role="2Oq$k0" />
                    <node concept="34pFcN" id="WZuJ8h4QvQ" role="2OqNvi">
                      <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserved" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="WZuJ8h4QvR" role="3cqZAp">
                <node concept="37vLTI" id="WZuJ8h4QvS" role="3clFbG">
                  <node concept="2OqwBi" id="WZuJ8h4QvT" role="37vLTx">
                    <node concept="37vLTw" id="WZuJ8h4QvU" role="2Oq$k0">
                      <ref role="3cqZAo" node="WZuJ8h1BlC" resolve="config" />
                    </node>
                    <node concept="liA8E" id="WZuJ8h4QvV" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.getMaxNrOfObservers()" resolve="getMaxNrOfObservers" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="WZuJ8h4QvW" role="37vLTJ">
                    <node concept="2WthIp" id="WZuJ8h4QvX" role="2Oq$k0" />
                    <node concept="34pFcN" id="WZuJ8h4QvY" role="2OqNvi">
                      <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="WZuJ8h5djY" role="3cqZAp" />
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
              <property role="TrG5h" value="colorfulEditors" />
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
                <ref role="3cqZAo" node="4FbMPtUL6HL" resolve="colorfulEditors" />
              </node>
              <node concept="liA8E" id="4FbMPtUXiAi" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.setName(java.lang.String)" resolve="setName" />
                <node concept="Xl_RD" id="4FbMPtUXiBo" role="37wK5m">
                  <property role="Xl_RC" value="colorful" />
                </node>
              </node>
            </node>
          </node>
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
                  <ref role="3cqZAo" node="4FbMPtUL6HL" resolve="colorfulEditors" />
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
          <node concept="3cpWs8" id="6g03R83qkW_" role="3cqZAp">
            <node concept="3cpWsn" id="6g03R83qkWA" role="3cpWs9">
              <property role="TrG5h" value="def" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="6g03R83qkWB" role="1tU5fm">
                <ref role="3uigEE" to="kag7:~DclareConfig" resolve="DclareConfig" />
              </node>
              <node concept="2ShNRf" id="6g03R83qohS" role="33vP2m">
                <node concept="1pGfFk" id="6g03R83qMmh" role="2ShVmc">
                  <ref role="37wK5l" to="kag7:~DclareConfig.&lt;init&gt;()" resolve="DclareConfig" />
                </node>
              </node>
            </node>
          </node>
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
                                  <node concept="2OqwBi" id="6g03R83qMZT" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qMzC" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qNnG" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxTotalNrOfChanges()" resolve="getMaxTotalNrOfChanges" />
                                    </node>
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
                                  <node concept="2OqwBi" id="6g03R83qOPx" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qOkT" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qPll" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxNrOfChanges()" resolve="getMaxNrOfChanges" />
                                    </node>
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
                                  <node concept="2OqwBi" id="6g03R83qQbu" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qPGx" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qQzD" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxNrOfObserved()" resolve="getMaxNrOfObserved" />
                                    </node>
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
                                  <node concept="2OqwBi" id="6g03R83qRqs" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qQVa" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qRNe" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxNrOfObservers()" resolve="getMaxNrOfObservers" />
                                    </node>
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
                                  <node concept="2OqwBi" id="6g03R83qS0K" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qS0L" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qS0M" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxTotalNrOfChanges()" resolve="getMaxTotalNrOfChanges" />
                                    </node>
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
                                  <node concept="2OqwBi" id="6g03R83qSNJ" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qSNK" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qSNL" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxNrOfChanges()" resolve="getMaxNrOfChanges" />
                                    </node>
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
                                  <node concept="2OqwBi" id="6g03R83qT_g" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qT_h" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qT_i" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxNrOfObserved()" resolve="getMaxNrOfObserved" />
                                    </node>
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
                                  <node concept="2OqwBi" id="6g03R83qUq2" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qUq3" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qUq4" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxNrOfObservers()" resolve="getMaxNrOfObservers" />
                                    </node>
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
                                <node concept="2OqwBi" id="6g03R83qSeh" role="37wK5m">
                                  <node concept="37vLTw" id="6g03R83qSei" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                  </node>
                                  <node concept="liA8E" id="6g03R83qSej" role="2OqNvi">
                                    <ref role="37wK5l" to="kag7:~DclareConfig.getMaxTotalNrOfChanges()" resolve="getMaxTotalNrOfChanges" />
                                  </node>
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
                                <node concept="2OqwBi" id="6g03R83qSZp" role="37wK5m">
                                  <node concept="37vLTw" id="6g03R83qSZq" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                  </node>
                                  <node concept="liA8E" id="6g03R83qSZr" role="2OqNvi">
                                    <ref role="37wK5l" to="kag7:~DclareConfig.getMaxNrOfChanges()" resolve="getMaxNrOfChanges" />
                                  </node>
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
                                <node concept="2OqwBi" id="6g03R83qTLp" role="37wK5m">
                                  <node concept="37vLTw" id="6g03R83qTLq" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                  </node>
                                  <node concept="liA8E" id="6g03R83qTLr" role="2OqNvi">
                                    <ref role="37wK5l" to="kag7:~DclareConfig.getMaxNrOfObserved()" resolve="getMaxNrOfObserved" />
                                  </node>
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
                                <node concept="2OqwBi" id="6g03R83qUAE" role="37wK5m">
                                  <node concept="37vLTw" id="6g03R83qUAF" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                  </node>
                                  <node concept="liA8E" id="6g03R83qUAG" role="2OqNvi">
                                    <ref role="37wK5l" to="kag7:~DclareConfig.getMaxNrOfObservers()" resolve="getMaxNrOfObservers" />
                                  </node>
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
                                  <node concept="2OqwBi" id="6g03R83qSqt" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qSqu" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qSqv" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxTotalNrOfChanges()" resolve="getMaxTotalNrOfChanges" />
                                    </node>
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
                                  <node concept="2OqwBi" id="6g03R83qTci" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qTcj" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qTck" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxNrOfChanges()" resolve="getMaxNrOfChanges" />
                                    </node>
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
                                  <node concept="2OqwBi" id="6g03R83qTYJ" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qTYK" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qTYL" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxNrOfObserved()" resolve="getMaxNrOfObserved" />
                                    </node>
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
                                  <node concept="2OqwBi" id="6g03R83qUOt" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qUOu" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qUOv" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxNrOfObservers()" resolve="getMaxNrOfObservers" />
                                    </node>
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
                                  <node concept="2OqwBi" id="6g03R83qS_E" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qS_F" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qS_G" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxTotalNrOfChanges()" resolve="getMaxTotalNrOfChanges" />
                                    </node>
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
                                  <node concept="2OqwBi" id="6g03R83qTo3" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qTo4" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qTo5" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxNrOfChanges()" resolve="getMaxNrOfChanges" />
                                    </node>
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
                                  <node concept="2OqwBi" id="6g03R83qUaZ" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qUb0" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qUb1" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxNrOfObserved()" resolve="getMaxNrOfObserved" />
                                    </node>
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
                                  <node concept="2OqwBi" id="6g03R83qV1f" role="3uHU7B">
                                    <node concept="37vLTw" id="6g03R83qV1g" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g03R83qkWA" resolve="def" />
                                    </node>
                                    <node concept="liA8E" id="6g03R83qV1h" role="2OqNvi">
                                      <ref role="37wK5l" to="kag7:~DclareConfig.getMaxNrOfObservers()" resolve="getMaxNrOfObservers" />
                                    </node>
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
                <node concept="2OqwBi" id="6g03R83qY_n" role="37wK5m">
                  <node concept="2WthIp" id="6g03R83qY_q" role="2Oq$k0" />
                  <node concept="34pFcN" id="1iXkhsJA06o" role="2OqNvi">
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
                  <node concept="34pFcN" id="1iXkhsJAdG9" role="2OqNvi">
                    <ref role="2WH_rO" node="4FbMPtUX$p$" resolve="devMode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtUGjt6" role="3cqZAp">
            <node concept="2OqwBi" id="4FbMPtUGjt7" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUXSy9" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUL6HL" resolve="colorfulEditors" />
              </node>
              <node concept="liA8E" id="4FbMPtUGjt9" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
                <node concept="2OqwBi" id="1iXkhsJAhuq" role="37wK5m">
                  <node concept="2WthIp" id="1iXkhsJAhur" role="2Oq$k0" />
                  <node concept="34pFcN" id="1iXkhsJAhus" role="2OqNvi">
                    <ref role="2WH_rO" node="4FbMPtUGgRu" resolve="colorfulEditors" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="GLgNzrmlFg" role="3cqZAp">
            <node concept="2OqwBi" id="GLgNzrmokW" role="3clFbG">
              <node concept="37vLTw" id="4FbMPtUXCT_" role="2Oq$k0">
                <ref role="3cqZAo" node="4FbMPtUModK" resolve="maxTotalNrOfChanges" />
              </node>
              <node concept="liA8E" id="GLgNzrmqj_" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JFormattedTextField.setValue(java.lang.Object)" resolve="setValue" />
                <node concept="2OqwBi" id="1iXkhsJAnCK" role="37wK5m">
                  <node concept="2WthIp" id="1iXkhsJAnCL" role="2Oq$k0" />
                  <node concept="34pFcN" id="1iXkhsJAnCM" role="2OqNvi">
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
                <node concept="2OqwBi" id="1iXkhsJABx9" role="37wK5m">
                  <node concept="2WthIp" id="1iXkhsJABxa" role="2Oq$k0" />
                  <node concept="34pFcN" id="1iXkhsJABxb" role="2OqNvi">
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
                <node concept="2OqwBi" id="1iXkhsJAH_B" role="37wK5m">
                  <node concept="2WthIp" id="1iXkhsJAH_C" role="2Oq$k0" />
                  <node concept="34pFcN" id="1iXkhsJAH_D" role="2OqNvi">
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
                <node concept="2OqwBi" id="1iXkhsJANHQ" role="37wK5m">
                  <node concept="2WthIp" id="1iXkhsJANHR" role="2Oq$k0" />
                  <node concept="34pFcN" id="1iXkhsJANHS" role="2OqNvi">
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
              <property role="TrG5h" value="colorfulEditors" />
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
          <node concept="3clFbF" id="4__tE4VSj94" role="3cqZAp">
            <node concept="37vLTI" id="4__tE4VSnEE" role="3clFbG">
              <node concept="2OqwBi" id="4__tE4VSwQS" role="37vLTJ">
                <node concept="2WthIp" id="4__tE4VSwQV" role="2Oq$k0" />
                <node concept="34pFcN" id="4__tE4VSwQX" role="2OqNvi">
                  <ref role="2WH_rO" node="4FbMPtUGgRu" resolve="colorfulEditors" />
                </node>
              </node>
              <node concept="2OqwBi" id="1iXkhsJ$NQM" role="37vLTx">
                <node concept="liA8E" id="1iXkhsJ$NQN" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                </node>
                <node concept="37vLTw" id="1iXkhsJ$NQO" role="2Oq$k0">
                  <ref role="3cqZAo" node="5LbVSrDBicu" resolve="colorfulEditors" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4__tE4VSxkU" role="3cqZAp">
            <node concept="37vLTI" id="4__tE4VSxkV" role="3clFbG">
              <node concept="2OqwBi" id="4__tE4VSxl1" role="37vLTJ">
                <node concept="2WthIp" id="4__tE4VSxl2" role="2Oq$k0" />
                <node concept="34pFcN" id="4__tE4VSAB$" role="2OqNvi">
                  <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="onMode" />
                </node>
              </node>
              <node concept="2OqwBi" id="1iXkhsJ$RU7" role="37vLTx">
                <node concept="37vLTw" id="1iXkhsJ$RU8" role="2Oq$k0">
                  <ref role="3cqZAo" node="4FbMPtUXPKQ" resolve="onMode" />
                </node>
                <node concept="liA8E" id="1iXkhsJ$RU9" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4__tE4VSz0Q" role="3cqZAp">
            <node concept="37vLTI" id="4__tE4VSz0R" role="3clFbG">
              <node concept="2OqwBi" id="4__tE4VSz0X" role="37vLTJ">
                <node concept="2WthIp" id="4__tE4VSz0Y" role="2Oq$k0" />
                <node concept="34pFcN" id="4__tE4VSEEW" role="2OqNvi">
                  <ref role="2WH_rO" node="4FbMPtUX$p$" resolve="devMode" />
                </node>
              </node>
              <node concept="2OqwBi" id="1iXkhsJ$VHo" role="37vLTx">
                <node concept="37vLTw" id="1iXkhsJ$VHp" role="2Oq$k0">
                  <ref role="3cqZAo" node="4FbMPtUXPN_" resolve="devMode" />
                </node>
                <node concept="liA8E" id="1iXkhsJ$VHq" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4__tE4VT21T" role="3cqZAp">
            <node concept="37vLTI" id="4__tE4VT21U" role="3clFbG">
              <node concept="2OqwBi" id="4__tE4VT220" role="37vLTJ">
                <node concept="2WthIp" id="4__tE4VT221" role="2Oq$k0" />
                <node concept="34pFcN" id="4__tE4VT6$A" role="2OqNvi">
                  <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                </node>
              </node>
              <node concept="0kSF2" id="1iXkhsJ_4m7" role="37vLTx">
                <node concept="3uibUv" id="1iXkhsJ_4m8" role="0kSFW">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
                <node concept="2OqwBi" id="1iXkhsJ_4m9" role="0kSFX">
                  <node concept="37vLTw" id="1iXkhsJ_8JI" role="2Oq$k0">
                    <ref role="3cqZAo" node="4FbMPtUXTM0" resolve="maxTotalNrOfChanges" />
                  </node>
                  <node concept="liA8E" id="1iXkhsJ_4mb" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4__tE4VSQ0Q" role="3cqZAp">
            <node concept="37vLTI" id="4__tE4VSQ0R" role="3clFbG">
              <node concept="2OqwBi" id="4__tE4VSQ0X" role="37vLTJ">
                <node concept="2WthIp" id="4__tE4VSQ0Y" role="2Oq$k0" />
                <node concept="34pFcN" id="4__tE4VSTC$" role="2OqNvi">
                  <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                </node>
              </node>
              <node concept="0kSF2" id="1iXkhsJ$Zv2" role="37vLTx">
                <node concept="3uibUv" id="1iXkhsJ$Zv3" role="0kSFW">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
                <node concept="2OqwBi" id="1iXkhsJ$Zv4" role="0kSFX">
                  <node concept="37vLTw" id="1iXkhsJ_93A" role="2Oq$k0">
                    <ref role="3cqZAo" node="GLgNzrnI84" resolve="maxNrOfChanges" />
                  </node>
                  <node concept="liA8E" id="1iXkhsJ$Zv6" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4__tE4VT25D" role="3cqZAp">
            <node concept="37vLTI" id="4__tE4VT25E" role="3clFbG">
              <node concept="2OqwBi" id="4__tE4VT25K" role="37vLTJ">
                <node concept="2WthIp" id="4__tE4VT25L" role="2Oq$k0" />
                <node concept="34pFcN" id="4__tE4VTfBu" role="2OqNvi">
                  <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserved" />
                </node>
              </node>
              <node concept="0kSF2" id="1iXkhsJ_9xx" role="37vLTx">
                <node concept="3uibUv" id="1iXkhsJ_9xy" role="0kSFW">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
                <node concept="2OqwBi" id="1iXkhsJ_9xz" role="0kSFX">
                  <node concept="37vLTw" id="1iXkhsJ_9x$" role="2Oq$k0">
                    <ref role="3cqZAo" node="4FbMPtUXTOq" resolve="maxNrOfObserved" />
                  </node>
                  <node concept="liA8E" id="1iXkhsJ_9x_" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4__tE4VT29z" role="3cqZAp">
            <node concept="37vLTI" id="4__tE4VT29$" role="3clFbG">
              <node concept="2OqwBi" id="4__tE4VT29E" role="37vLTJ">
                <node concept="2WthIp" id="4__tE4VT29F" role="2Oq$k0" />
                <node concept="34pFcN" id="4__tE4VTp16" role="2OqNvi">
                  <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
                </node>
              </node>
              <node concept="0kSF2" id="1iXkhsJ_dXn" role="37vLTx">
                <node concept="3uibUv" id="1iXkhsJ_dXo" role="0kSFW">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
                <node concept="2OqwBi" id="1iXkhsJ_dXp" role="0kSFX">
                  <node concept="liA8E" id="1iXkhsJ_dXq" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JFormattedTextField.getValue()" resolve="getValue" />
                  </node>
                  <node concept="37vLTw" id="1iXkhsJ_dXr" role="2Oq$k0">
                    <ref role="3cqZAo" node="4FbMPtUXTQW" resolve="maxNrOfObservers" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1iXkhsJChvg" role="3cqZAp" />
          <node concept="3SKdUt" id="1iXkhsJCsUI" role="3cqZAp">
            <node concept="1PaTwC" id="1iXkhsJCsUJ" role="1aUNEU">
              <node concept="3oM_SD" id="1iXkhsJCuYc" role="1PaTwD">
                <property role="3oM_SC" value="pick" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCvJn" role="1PaTwD">
                <property role="3oM_SC" value="up" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCvJt" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCwZx" role="1PaTwD">
                <property role="3oM_SC" value="config" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCwZC" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCwZL" role="1PaTwD">
                <property role="3oM_SC" value="use" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCwZW" role="1PaTwD">
                <property role="3oM_SC" value="as" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCx07" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCx0i" role="1PaTwD">
                <property role="3oM_SC" value="basis" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCx0y" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCx0L" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCx0Z" role="1PaTwD">
                <property role="3oM_SC" value="modified" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCx1n" role="1PaTwD">
                <property role="3oM_SC" value="config" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCx1I" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCx21" role="1PaTwD">
                <property role="3oM_SC" value="give" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCx2m" role="1PaTwD">
                <property role="3oM_SC" value="it" />
              </node>
              <node concept="3oM_SD" id="1iXkhsJCx2E" role="1PaTwD">
                <property role="3oM_SC" value="back:" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1iXkhsJy5mT" role="3cqZAp">
            <node concept="3cpWsn" id="1iXkhsJy5mU" role="3cpWs9">
              <property role="TrG5h" value="config" />
              <node concept="3uibUv" id="1iXkhsJy5mV" role="1tU5fm">
                <ref role="3uigEE" to="t4tl:~DclareForMpsConfig" resolve="DclareForMpsConfig" />
              </node>
              <node concept="2OqwBi" id="6g03R83tQVX" role="33vP2m">
                <node concept="2YIFZM" id="3z4syYQgUUJ" role="2Oq$k0">
                  <ref role="37wK5l" to="u4ym:3z4syYPRmGX" resolve="getEngine" />
                  <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                  <node concept="2xqhHp" id="3z4syYQgUUK" role="37wK5m" />
                </node>
                <node concept="liA8E" id="6g03R83tREs" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.getConfig()" resolve="getConfig" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1iXkhsJ_Mdm" role="3cqZAp">
            <node concept="37vLTI" id="1iXkhsJ_Mdn" role="3clFbG">
              <node concept="2OqwBi" id="1iXkhsJ_Mdo" role="37vLTx">
                <node concept="liA8E" id="1iXkhsJ_Mdp" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withOnMode(boolean)" resolve="withOnMode" />
                  <node concept="2OqwBi" id="1iXkhsJ_Mdq" role="37wK5m">
                    <node concept="2WthIp" id="1iXkhsJ_Mdr" role="2Oq$k0" />
                    <node concept="34pFcN" id="1iXkhsJ_Mds" role="2OqNvi">
                      <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="onMode" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1iXkhsJ_Mdt" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
                </node>
              </node>
              <node concept="37vLTw" id="1iXkhsJ_Mdu" role="37vLTJ">
                <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1iXkhsJ_Mdv" role="3cqZAp">
            <node concept="37vLTI" id="1iXkhsJ_Mdw" role="3clFbG">
              <node concept="2OqwBi" id="1iXkhsJ_Mdx" role="37vLTx">
                <node concept="liA8E" id="1iXkhsJ_Mdy" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withDevMode(boolean)" resolve="withDevMode" />
                  <node concept="2OqwBi" id="1iXkhsJ_Mdz" role="37wK5m">
                    <node concept="2WthIp" id="1iXkhsJ_Md$" role="2Oq$k0" />
                    <node concept="34pFcN" id="1iXkhsJ_Md_" role="2OqNvi">
                      <ref role="2WH_rO" node="4FbMPtUX$p$" resolve="devMode" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1iXkhsJ_MdA" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
                </node>
              </node>
              <node concept="37vLTw" id="1iXkhsJ_MdB" role="37vLTJ">
                <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1iXkhsJ_MdC" role="3cqZAp">
            <node concept="37vLTI" id="1iXkhsJ_MdD" role="3clFbG">
              <node concept="2OqwBi" id="1iXkhsJ_MdE" role="37vLTx">
                <node concept="liA8E" id="1iXkhsJ_MdF" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withColorfulEditors(boolean)" resolve="withColorfulEditors" />
                  <node concept="2OqwBi" id="1iXkhsJ_MdG" role="37wK5m">
                    <node concept="2WthIp" id="1iXkhsJ_MdH" role="2Oq$k0" />
                    <node concept="34pFcN" id="1iXkhsJ_MdI" role="2OqNvi">
                      <ref role="2WH_rO" node="4FbMPtUGgRu" resolve="colorfulEditors" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1iXkhsJ_MdJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
                </node>
              </node>
              <node concept="37vLTw" id="1iXkhsJ_MdK" role="37vLTJ">
                <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1iXkhsJ_MdL" role="3cqZAp">
            <node concept="37vLTI" id="1iXkhsJ_MdM" role="3clFbG">
              <node concept="2OqwBi" id="1iXkhsJ_MdN" role="37vLTx">
                <node concept="liA8E" id="1iXkhsJ_MdO" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withMaxTotalNrOfChanges(int)" resolve="withMaxTotalNrOfChanges" />
                  <node concept="2OqwBi" id="1iXkhsJ_MdP" role="37wK5m">
                    <node concept="2WthIp" id="1iXkhsJ_MdQ" role="2Oq$k0" />
                    <node concept="34pFcN" id="1iXkhsJ_MdR" role="2OqNvi">
                      <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1iXkhsJ_MdS" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
                </node>
              </node>
              <node concept="37vLTw" id="1iXkhsJ_MdT" role="37vLTJ">
                <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1iXkhsJ_MdU" role="3cqZAp">
            <node concept="37vLTI" id="1iXkhsJ_MdV" role="3clFbG">
              <node concept="2OqwBi" id="1iXkhsJ_MdW" role="37vLTx">
                <node concept="liA8E" id="1iXkhsJ_MdX" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withMaxNrOfChanges(int)" resolve="withMaxNrOfChanges" />
                  <node concept="2OqwBi" id="1iXkhsJ_MdY" role="37wK5m">
                    <node concept="2WthIp" id="1iXkhsJ_MdZ" role="2Oq$k0" />
                    <node concept="34pFcN" id="1iXkhsJ_Me0" role="2OqNvi">
                      <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1iXkhsJ_Me1" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
                </node>
              </node>
              <node concept="37vLTw" id="1iXkhsJ_Me2" role="37vLTJ">
                <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1iXkhsJ_Me3" role="3cqZAp">
            <node concept="37vLTI" id="1iXkhsJ_Me4" role="3clFbG">
              <node concept="2OqwBi" id="1iXkhsJ_Me5" role="37vLTx">
                <node concept="liA8E" id="1iXkhsJ_Me6" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withMaxNrOfObserved(int)" resolve="withMaxNrOfObserved" />
                  <node concept="2OqwBi" id="1iXkhsJ_Me7" role="37wK5m">
                    <node concept="2WthIp" id="1iXkhsJ_Me8" role="2Oq$k0" />
                    <node concept="34pFcN" id="1iXkhsJ_Me9" role="2OqNvi">
                      <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserved" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1iXkhsJ_Mea" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
                </node>
              </node>
              <node concept="37vLTw" id="1iXkhsJ_Meb" role="37vLTJ">
                <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1iXkhsJ_Mec" role="3cqZAp">
            <node concept="37vLTI" id="1iXkhsJ_Med" role="3clFbG">
              <node concept="2OqwBi" id="1iXkhsJ_Mee" role="37vLTx">
                <node concept="liA8E" id="1iXkhsJ_Mef" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withMaxNrOfObservers(int)" resolve="withMaxNrOfObservers" />
                  <node concept="2OqwBi" id="1iXkhsJ_Meg" role="37wK5m">
                    <node concept="2WthIp" id="1iXkhsJ_Meh" role="2Oq$k0" />
                    <node concept="34pFcN" id="1iXkhsJ_Mei" role="2OqNvi">
                      <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1iXkhsJ_Mej" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
                </node>
              </node>
              <node concept="37vLTw" id="1iXkhsJ_Mek" role="37vLTJ">
                <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3_wkb9env9V" role="3cqZAp">
            <node concept="37vLTI" id="3_wkb9env9W" role="3clFbG">
              <node concept="2OqwBi" id="3_wkb9env9X" role="37vLTx">
                <node concept="liA8E" id="3_wkb9env9Y" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withInactiveAspects(java.lang.String[])" resolve="withInactiveAspects" />
                  <node concept="2OqwBi" id="3_wkb9env9Z" role="37wK5m">
                    <node concept="2OqwBi" id="3_wkb9enva0" role="2Oq$k0">
                      <node concept="2WthIp" id="3_wkb9enva1" role="2Oq$k0" />
                      <node concept="34pFcN" id="3_wkb9enva2" role="2OqNvi">
                        <ref role="2WH_rO" node="3gm2YTwDU1x" resolve="aspectPrefs" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3_wkb9enva3" role="2OqNvi">
                      <ref role="37wK5l" node="69vWBEqgER_" resolve="getInactiveAspectIds" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3_wkb9enva4" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
                </node>
              </node>
              <node concept="37vLTw" id="3_wkb9enva5" role="37vLTJ">
                <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FbMPtV5boK" role="3cqZAp">
            <node concept="2YIFZM" id="4FbMPtV5fUJ" role="3clFbG">
              <ref role="37wK5l" to="u4ym:4FbMPtV5fvT" resolve="setConfig" />
              <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
              <node concept="2xqhHp" id="2HLAWGRU1b4" role="37wK5m" />
              <node concept="37vLTw" id="1iXkhsJyRUR" role="37wK5m">
                <ref role="3cqZAo" node="1iXkhsJy5mU" resolve="config" />
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
        <node concept="3SKdUt" id="50egtBYQqOE" role="3cqZAp">
          <node concept="1PaTwC" id="50egtBYQqOF" role="1aUNEU">
            <node concept="3oM_SD" id="50egtBYQqOG" role="1PaTwD">
              <property role="3oM_SC" value="pick" />
            </node>
            <node concept="3oM_SD" id="50egtBYQqOH" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="50egtBYQqOI" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="50egtBYQqOJ" role="1PaTwD">
              <property role="3oM_SC" value="config" />
            </node>
            <node concept="3oM_SD" id="50egtBYQry7" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="50egtBYQrys" role="1PaTwD">
              <property role="3oM_SC" value="defaults:" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1iXkhsJzrw4" role="3cqZAp">
          <node concept="3cpWsn" id="1iXkhsJzrw5" role="3cpWs9">
            <property role="TrG5h" value="config" />
            <node concept="3uibUv" id="1iXkhsJzrw6" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DclareForMpsConfig" resolve="DclareForMpsConfig" />
            </node>
            <node concept="2OqwBi" id="1iXkhsJzrw7" role="33vP2m">
              <node concept="2YIFZM" id="3z4syYQ97QM" role="2Oq$k0">
                <ref role="37wK5l" to="u4ym:3z4syYPRmGX" resolve="getEngine" />
                <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                <node concept="2OqwBi" id="3z4syYQ97QN" role="37wK5m">
                  <node concept="1KvdUw" id="3z4syYQ97QO" role="2Oq$k0" />
                  <node concept="liA8E" id="3z4syYQ97QP" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1iXkhsJzrwa" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.getConfig()" resolve="getConfig" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1iXkhsJ$EE0" role="3cqZAp">
          <node concept="3clFbS" id="50egtBYQlHa" role="3clFbx">
            <node concept="3SKdUt" id="50egtBYQscf" role="3cqZAp">
              <node concept="1PaTwC" id="50egtBYQscg" role="1aUNEU">
                <node concept="3oM_SD" id="50egtBYQscx" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="50egtBYQscA" role="1PaTwD">
                  <property role="3oM_SC" value="read" />
                </node>
                <node concept="3oM_SD" id="50egtBYQscI" role="1PaTwD">
                  <property role="3oM_SC" value="preferences" />
                </node>
                <node concept="3oM_SD" id="50egtBYQscY" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="50egtBYQsd7" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="50egtBYQsdh" role="1PaTwD">
                  <property role="3oM_SC" value="yet" />
                </node>
                <node concept="3oM_SD" id="50egtBYQsds" role="1PaTwD">
                  <property role="3oM_SC" value="valid," />
                </node>
                <node concept="3oM_SD" id="50egtBYQsCJ" role="1PaTwD">
                  <property role="3oM_SC" value="copy" />
                </node>
                <node concept="3oM_SD" id="50egtBYQsD0" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="50egtBYQsDe" role="1PaTwD">
                  <property role="3oM_SC" value="defaults" />
                </node>
                <node concept="3oM_SD" id="50egtBYQsDy" role="1PaTwD">
                  <property role="3oM_SC" value="into" />
                </node>
                <node concept="3oM_SD" id="50egtBYQsDN" role="1PaTwD">
                  <property role="3oM_SC" value="our" />
                </node>
                <node concept="3oM_SD" id="50egtBYQsE4" role="1PaTwD">
                  <property role="3oM_SC" value="fields:" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="50egtBYQsJI" role="3cqZAp">
              <node concept="37vLTI" id="50egtBYQt8k" role="3clFbG">
                <node concept="3cmrfG" id="WZuJ8h3H_t" role="37vLTx">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="50egtBYQsJC" role="37vLTJ">
                  <node concept="2WthIp" id="50egtBYQsJF" role="2Oq$k0" />
                  <node concept="34pFcN" id="WZuJ8h3CMJ" role="2OqNvi">
                    <ref role="2WH_rO" node="WZuJ8h2yNJ" resolve="prefsVersion" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="50egtBYQuT6" role="3cqZAp">
              <node concept="37vLTI" id="50egtBYQwg7" role="3clFbG">
                <node concept="2OqwBi" id="50egtBYQBuS" role="37vLTx">
                  <node concept="37vLTw" id="50egtBYQ$4H" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
                  </node>
                  <node concept="liA8E" id="50egtBYQEJY" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.isColorfulEditors()" resolve="isColorfulEditors" />
                  </node>
                </node>
                <node concept="2OqwBi" id="50egtBYQvnJ" role="37vLTJ">
                  <node concept="2WthIp" id="50egtBYQuT4" role="2Oq$k0" />
                  <node concept="34pFcN" id="50egtBYQvya" role="2OqNvi">
                    <ref role="2WH_rO" node="4FbMPtUGgRu" resolve="colorfulEditors" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="50egtBYQHPZ" role="3cqZAp">
              <node concept="37vLTI" id="50egtBYQHQ0" role="3clFbG">
                <node concept="2OqwBi" id="50egtBYQHQ1" role="37vLTx">
                  <node concept="37vLTw" id="50egtBYQHQ2" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
                  </node>
                  <node concept="liA8E" id="50egtBYRgSl" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.isOnMode()" resolve="isOnMode" />
                  </node>
                </node>
                <node concept="2OqwBi" id="50egtBYQHQ4" role="37vLTJ">
                  <node concept="2WthIp" id="50egtBYQHQ5" role="2Oq$k0" />
                  <node concept="34pFcN" id="50egtBYQWjl" role="2OqNvi">
                    <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="onMode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="50egtBYQL1F" role="3cqZAp">
              <node concept="37vLTI" id="50egtBYQL1G" role="3clFbG">
                <node concept="2OqwBi" id="50egtBYQL1H" role="37vLTx">
                  <node concept="37vLTw" id="50egtBYQL1I" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
                  </node>
                  <node concept="liA8E" id="50egtBYRkbw" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.isDevMode()" resolve="isDevMode" />
                  </node>
                </node>
                <node concept="2OqwBi" id="50egtBYQL1K" role="37vLTJ">
                  <node concept="2WthIp" id="50egtBYQL1L" role="2Oq$k0" />
                  <node concept="34pFcN" id="50egtBYQZKZ" role="2OqNvi">
                    <ref role="2WH_rO" node="4FbMPtUX$p$" resolve="devMode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="50egtBYQMU2" role="3cqZAp">
              <node concept="37vLTI" id="50egtBYQMU3" role="3clFbG">
                <node concept="2OqwBi" id="50egtBYQMU4" role="37vLTx">
                  <node concept="37vLTw" id="50egtBYQMU5" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
                  </node>
                  <node concept="liA8E" id="50egtBYRnye" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.getMaxNrOfChanges()" resolve="getMaxNrOfChanges" />
                  </node>
                </node>
                <node concept="2OqwBi" id="50egtBYQMU7" role="37vLTJ">
                  <node concept="2WthIp" id="50egtBYQMU8" role="2Oq$k0" />
                  <node concept="34pFcN" id="50egtBYR3dY" role="2OqNvi">
                    <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="50egtBYQQ8s" role="3cqZAp">
              <node concept="37vLTI" id="50egtBYQQ8t" role="3clFbG">
                <node concept="2OqwBi" id="50egtBYQQ8u" role="37vLTx">
                  <node concept="37vLTw" id="50egtBYQQ8v" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
                  </node>
                  <node concept="liA8E" id="50egtBYRqPt" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.getMaxTotalNrOfChanges()" resolve="getMaxTotalNrOfChanges" />
                  </node>
                </node>
                <node concept="2OqwBi" id="50egtBYQQ8x" role="37vLTJ">
                  <node concept="2WthIp" id="50egtBYQQ8y" role="2Oq$k0" />
                  <node concept="34pFcN" id="50egtBYR6EU" role="2OqNvi">
                    <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="50egtBYQRR_" role="3cqZAp">
              <node concept="37vLTI" id="50egtBYQRRA" role="3clFbG">
                <node concept="2OqwBi" id="50egtBYQRRB" role="37vLTx">
                  <node concept="37vLTw" id="50egtBYQRRC" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
                  </node>
                  <node concept="liA8E" id="50egtBYRu8C" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.getMaxNrOfObserved()" resolve="getMaxNrOfObserved" />
                  </node>
                </node>
                <node concept="2OqwBi" id="50egtBYQRRE" role="37vLTJ">
                  <node concept="2WthIp" id="50egtBYQRRF" role="2Oq$k0" />
                  <node concept="34pFcN" id="50egtBYRa4j" role="2OqNvi">
                    <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserved" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="50egtBYQSNG" role="3cqZAp">
              <node concept="37vLTI" id="50egtBYQSNH" role="3clFbG">
                <node concept="2OqwBi" id="50egtBYQSNI" role="37vLTx">
                  <node concept="37vLTw" id="50egtBYQSNJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
                  </node>
                  <node concept="liA8E" id="50egtBYRxvm" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.getMaxNrOfObservers()" resolve="getMaxNrOfObservers" />
                  </node>
                </node>
                <node concept="2OqwBi" id="50egtBYQSNL" role="37vLTJ">
                  <node concept="2WthIp" id="50egtBYQSNM" role="2Oq$k0" />
                  <node concept="34pFcN" id="50egtBYRd$M" role="2OqNvi">
                    <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="WZuJ8h3zCu" role="3clFbw">
            <node concept="2OqwBi" id="1iXkhsJ$Jj5" role="3uHU7B">
              <node concept="2WthIp" id="1iXkhsJ$Jj8" role="2Oq$k0" />
              <node concept="34pFcN" id="WZuJ8h3eUs" role="2OqNvi">
                <ref role="2WH_rO" node="WZuJ8h2yNJ" resolve="prefsVersion" />
              </node>
            </node>
            <node concept="3cmrfG" id="WZuJ8h3py4" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1iXkhsJCxgq" role="3cqZAp">
          <node concept="1PaTwC" id="1iXkhsJCxgr" role="1aUNEU">
            <node concept="3oM_SD" id="50egtBYQrGE" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="50egtBYQrJn" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="50egtBYQrLi" role="1PaTwD">
              <property role="3oM_SC" value="preferences" />
            </node>
            <node concept="3oM_SD" id="50egtBYQrLQ" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="50egtBYQrLZ" role="1PaTwD">
              <property role="3oM_SC" value="now" />
            </node>
            <node concept="3oM_SD" id="WZuJ8h4lPa" role="1PaTwD">
              <property role="3oM_SC" value="valid," />
            </node>
            <node concept="3oM_SD" id="50egtBYQrNU" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="50egtBYQrO4" role="1PaTwD">
              <property role="3oM_SC" value="copy" />
            </node>
            <node concept="3oM_SD" id="50egtBYQrO_" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
            <node concept="3oM_SD" id="50egtBYQrTe" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="50egtBYQrV9" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="50egtBYQrVy" role="1PaTwD">
              <property role="3oM_SC" value="config" />
            </node>
            <node concept="3oM_SD" id="50egtBYQrXv" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="50egtBYQrXK" role="1PaTwD">
              <property role="3oM_SC" value="set" />
            </node>
            <node concept="3oM_SD" id="50egtBYQrZ$" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="50egtBYQs1z" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="50egtBYQs3r" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="50egtBYQs3U" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iXkhsJzrwb" role="3cqZAp">
          <node concept="37vLTI" id="1iXkhsJzrwc" role="3clFbG">
            <node concept="2OqwBi" id="1iXkhsJzrwd" role="37vLTx">
              <node concept="liA8E" id="1iXkhsJzrwe" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withOnMode(boolean)" resolve="withOnMode" />
                <node concept="2OqwBi" id="1iXkhsJz$gv" role="37wK5m">
                  <node concept="2WthIp" id="1iXkhsJz$gw" role="2Oq$k0" />
                  <node concept="34pFcN" id="1iXkhsJz$gx" role="2OqNvi">
                    <ref role="2WH_rO" node="5LbVSrDAu_C" resolve="onMode" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1iXkhsJzrwi" role="2Oq$k0">
                <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
              </node>
            </node>
            <node concept="37vLTw" id="1iXkhsJzrwj" role="37vLTJ">
              <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iXkhsJzrwk" role="3cqZAp">
          <node concept="37vLTI" id="1iXkhsJzrwl" role="3clFbG">
            <node concept="2OqwBi" id="1iXkhsJzrwm" role="37vLTx">
              <node concept="liA8E" id="1iXkhsJzrwn" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withDevMode(boolean)" resolve="withDevMode" />
                <node concept="2OqwBi" id="1iXkhsJzMZq" role="37wK5m">
                  <node concept="2WthIp" id="1iXkhsJzMZr" role="2Oq$k0" />
                  <node concept="34pFcN" id="1iXkhsJzMZs" role="2OqNvi">
                    <ref role="2WH_rO" node="4FbMPtUX$p$" resolve="devMode" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1iXkhsJzrwr" role="2Oq$k0">
                <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
              </node>
            </node>
            <node concept="37vLTw" id="1iXkhsJzrws" role="37vLTJ">
              <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iXkhsJzrwt" role="3cqZAp">
          <node concept="37vLTI" id="1iXkhsJzrwu" role="3clFbG">
            <node concept="2OqwBi" id="1iXkhsJzrwv" role="37vLTx">
              <node concept="liA8E" id="1iXkhsJzrww" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withColorfulEditors(boolean)" resolve="withColorfulEditors" />
                <node concept="2OqwBi" id="1iXkhsJzRk4" role="37wK5m">
                  <node concept="2WthIp" id="1iXkhsJzRk5" role="2Oq$k0" />
                  <node concept="34pFcN" id="1iXkhsJzRk6" role="2OqNvi">
                    <ref role="2WH_rO" node="4FbMPtUGgRu" resolve="colorfulEditors" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1iXkhsJzrw$" role="2Oq$k0">
                <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
              </node>
            </node>
            <node concept="37vLTw" id="1iXkhsJzrw_" role="37vLTJ">
              <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iXkhsJzrwA" role="3cqZAp">
          <node concept="37vLTI" id="1iXkhsJzrwB" role="3clFbG">
            <node concept="2OqwBi" id="1iXkhsJzrwC" role="37vLTx">
              <node concept="liA8E" id="1iXkhsJzrwD" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withMaxTotalNrOfChanges(int)" resolve="withMaxTotalNrOfChanges" />
                <node concept="2OqwBi" id="1iXkhsJ$0q6" role="37wK5m">
                  <node concept="2WthIp" id="1iXkhsJ$0q7" role="2Oq$k0" />
                  <node concept="34pFcN" id="1iXkhsJ$7tN" role="2OqNvi">
                    <ref role="2WH_rO" node="GLgNzrkGxI" resolve="maxTotalNrOfChanges" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1iXkhsJzrwJ" role="2Oq$k0">
                <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
              </node>
            </node>
            <node concept="37vLTw" id="1iXkhsJzrwK" role="37vLTJ">
              <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iXkhsJzrwL" role="3cqZAp">
          <node concept="37vLTI" id="1iXkhsJzrwM" role="3clFbG">
            <node concept="2OqwBi" id="1iXkhsJzrwN" role="37vLTx">
              <node concept="liA8E" id="1iXkhsJzrwO" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withMaxNrOfChanges(int)" resolve="withMaxNrOfChanges" />
                <node concept="2OqwBi" id="1iXkhsJ$bJs" role="37wK5m">
                  <node concept="2WthIp" id="1iXkhsJ$bJt" role="2Oq$k0" />
                  <node concept="34pFcN" id="1iXkhsJ$bJu" role="2OqNvi">
                    <ref role="2WH_rO" node="GLgNzrkAU0" resolve="maxNrOfChanges" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1iXkhsJzrwU" role="2Oq$k0">
                <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
              </node>
            </node>
            <node concept="37vLTw" id="1iXkhsJzrwV" role="37vLTJ">
              <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iXkhsJzrwW" role="3cqZAp">
          <node concept="37vLTI" id="1iXkhsJzrwX" role="3clFbG">
            <node concept="2OqwBi" id="1iXkhsJzrwY" role="37vLTx">
              <node concept="liA8E" id="1iXkhsJzrwZ" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withMaxNrOfObserved(int)" resolve="withMaxNrOfObserved" />
                <node concept="2OqwBi" id="1iXkhsJ$k$W" role="37wK5m">
                  <node concept="2WthIp" id="1iXkhsJ$k$X" role="2Oq$k0" />
                  <node concept="34pFcN" id="1iXkhsJ$k$Y" role="2OqNvi">
                    <ref role="2WH_rO" node="1RIwjuNzktC" resolve="maxNrOfObserved" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1iXkhsJzrx5" role="2Oq$k0">
                <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
              </node>
            </node>
            <node concept="37vLTw" id="1iXkhsJzrx6" role="37vLTJ">
              <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iXkhsJzrx7" role="3cqZAp">
          <node concept="37vLTI" id="1iXkhsJzrx8" role="3clFbG">
            <node concept="2OqwBi" id="1iXkhsJzrx9" role="37vLTx">
              <node concept="liA8E" id="1iXkhsJzrxa" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withMaxNrOfObservers(int)" resolve="withMaxNrOfObservers" />
                <node concept="2OqwBi" id="1iXkhsJ$pi0" role="37wK5m">
                  <node concept="2WthIp" id="1iXkhsJ$pi1" role="2Oq$k0" />
                  <node concept="34pFcN" id="1iXkhsJ$pi2" role="2OqNvi">
                    <ref role="2WH_rO" node="1RIwjuNzsTl" resolve="maxNrOfObservers" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1iXkhsJzrxg" role="2Oq$k0">
                <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
              </node>
            </node>
            <node concept="37vLTw" id="1iXkhsJzrxh" role="37vLTJ">
              <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3_wkb9emwfT" role="3cqZAp">
          <node concept="37vLTI" id="3_wkb9emwfU" role="3clFbG">
            <node concept="2OqwBi" id="3_wkb9emwfV" role="37vLTx">
              <node concept="liA8E" id="3_wkb9emwfW" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withInactiveAspects(java.lang.String[])" resolve="withInactiveAspects" />
                <node concept="2OqwBi" id="3_wkb9enlUO" role="37wK5m">
                  <node concept="2OqwBi" id="3_wkb9emwfX" role="2Oq$k0">
                    <node concept="2WthIp" id="3_wkb9emwfY" role="2Oq$k0" />
                    <node concept="34pFcN" id="3_wkb9emwfZ" role="2OqNvi">
                      <ref role="2WH_rO" node="3gm2YTwDU1x" resolve="aspectPrefs" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3_wkb9enrHJ" role="2OqNvi">
                    <ref role="37wK5l" node="69vWBEqgER_" resolve="getInactiveAspectIds" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3_wkb9emwg0" role="2Oq$k0">
                <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
              </node>
            </node>
            <node concept="37vLTw" id="3_wkb9emwg1" role="37vLTJ">
              <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3z4syYQDhus" role="3cqZAp">
          <node concept="2OqwBi" id="3z4syYQDuBM" role="3clFbG">
            <node concept="10M0yZ" id="3z4syYQDtrf" role="2Oq$k0">
              <ref role="3cqZAo" to="u4ym:3z4syYPPA$1" resolve="IASPECT_PREFS" />
              <ref role="1PxDUh" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
            </node>
            <node concept="liA8E" id="3z4syYQDvZq" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="2OqwBi" id="3z4syYQDwko" role="37wK5m">
                <node concept="1KvdUw" id="3z4syYQDwkp" role="2Oq$k0" />
                <node concept="liA8E" id="3z4syYQDwkq" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
              <node concept="2YIFZM" id="3z4syYQDwXC" role="37wK5m">
                <ref role="37wK5l" node="3gm2YTwEKsS" resolve="getOrCreatePrefs" />
                <ref role="1Pybhc" node="3gm2YTwE11B" resolve="AspectPrefs" />
                <node concept="2OqwBi" id="3z4syYQDxhR" role="37wK5m">
                  <node concept="1KvdUw" id="3z4syYQDxhS" role="2Oq$k0" />
                  <node concept="liA8E" id="3z4syYQDxhT" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3z4syYQD$P2" role="3cqZAp">
          <node concept="2OqwBi" id="3z4syYQD$P3" role="3clFbG">
            <node concept="10M0yZ" id="3z4syYQDDkX" role="2Oq$k0">
              <ref role="3cqZAo" to="u4ym:3z4syYPPQ76" resolve="ISHARING_PREFS" />
              <ref role="1PxDUh" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
            </node>
            <node concept="liA8E" id="3z4syYQD$P5" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="2OqwBi" id="3z4syYQD$P6" role="37wK5m">
                <node concept="1KvdUw" id="3z4syYQD$P7" role="2Oq$k0" />
                <node concept="liA8E" id="3z4syYQD$P8" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
              <node concept="2YIFZM" id="3z4syYQD$P9" role="37wK5m">
                <ref role="1Pybhc" node="4f_r0qDun_n" resolve="SharingPrefs" />
                <ref role="37wK5l" node="4f_r0qDuKfG" resolve="getOrCreatePrefs" />
                <node concept="2OqwBi" id="3z4syYQD$Pa" role="37wK5m">
                  <node concept="1KvdUw" id="3z4syYQD$Pb" role="2Oq$k0" />
                  <node concept="liA8E" id="3z4syYQD$Pc" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iXkhsJzrxi" role="3cqZAp">
          <node concept="2YIFZM" id="1iXkhsJzrxj" role="3clFbG">
            <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
            <ref role="37wK5l" to="u4ym:4FbMPtV5fvT" resolve="setConfig" />
            <node concept="2OqwBi" id="1iXkhsJ$tWP" role="37wK5m">
              <node concept="1KvdUw" id="1iXkhsJ$tWQ" role="2Oq$k0" />
              <node concept="liA8E" id="1iXkhsJ$tWR" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
            <node concept="37vLTw" id="1iXkhsJzrxl" role="37wK5m">
              <ref role="3cqZAo" node="1iXkhsJzrw5" resolve="config" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="34jfKJ" id="3gm2YTwDU1x" role="34lFYf">
      <property role="TrG5h" value="aspectPrefs" />
      <node concept="3uibUv" id="3gm2YTwE169" role="1tU5fm">
        <ref role="3uigEE" node="3gm2YTwE11B" resolve="AspectPrefs" />
      </node>
    </node>
    <node concept="34jfKJ" id="4f_r0qDu_m2" role="34lFYf">
      <property role="TrG5h" value="sharingPrefs" />
      <node concept="3uibUv" id="4f_r0qDuEwA" role="1tU5fm">
        <ref role="3uigEE" node="4f_r0qDun_n" resolve="SharingPrefs" />
      </node>
    </node>
  </node>
  <node concept="2E2WTH" id="3E71z7ucbEa">
    <property role="TrG5h" value="Rules" />
    <property role="2E2WTP" value="R" />
    <ref role="2E2WTM" to="tpck:h0TrEE$" resolve="INamedConcept" />
    <node concept="2E2X7d" id="2erTeUVFa2z" role="2E2Kf0">
      <node concept="3clFbS" id="2erTeUVFa2$" role="2VODD2">
        <node concept="3clFbF" id="2erTeUVFa2_" role="3cqZAp">
          <node concept="22lmx$" id="4kJ$pn782fd" role="3clFbG">
            <node concept="2OqwBi" id="4kJ$pn78gYw" role="3uHU7w">
              <node concept="1beSmn" id="4kJ$pn78gH1" role="2Oq$k0" />
              <node concept="1mIQ4w" id="4kJ$pn78hjd" role="2OqNvi">
                <node concept="chp4Y" id="4kJ$pn78ho_" role="cj9EA">
                  <ref role="cht4Q" to="7ggn:55f2HNAoLSh" resolve="Aspect" />
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="4$bpWrQ$pIH" role="3uHU7B">
              <node concept="2OqwBi" id="2erTeUVFa2A" role="3uHU7B">
                <node concept="1beSmn" id="2erTeUVFa2B" role="2Oq$k0" />
                <node concept="1mIQ4w" id="2erTeUVFa2C" role="2OqNvi">
                  <node concept="chp4Y" id="2erTeUVFa2D" role="cj9EA">
                    <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4$bpWrQ$q6y" role="3uHU7w">
                <node concept="1beSmn" id="4$bpWrQ$pRp" role="2Oq$k0" />
                <node concept="1mIQ4w" id="4$bpWrQ$qsc" role="2OqNvi">
                  <node concept="chp4Y" id="4$bpWrQ$qxr" role="cj9EA">
                    <ref role="cht4Q" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
                  </node>
                </node>
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
    <node concept="1D6cnc" id="3E71z7ureMt" role="1D6cnr">
      <property role="1D6cn5" value="true" />
      <node concept="1YUSNl" id="3E71z7urf50" role="1YUSN9">
        <node concept="3clFbS" id="3E71z7urf51" role="2VODD2">
          <node concept="3clFbF" id="3E71z7urfdD" role="3cqZAp">
            <node concept="3K4zz7" id="4$bpWrQNFGL" role="3clFbG">
              <node concept="2OqwBi" id="4$bpWrQNF9f" role="3K4Cdx">
                <node concept="1beSmn" id="4$bpWrQNEVY" role="2Oq$k0" />
                <node concept="1mIQ4w" id="4$bpWrQNFjM" role="2OqNvi">
                  <node concept="chp4Y" id="4$bpWrQNFw6" role="cj9EA">
                    <ref role="cht4Q" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="2erTeUVFa37" role="3K4E3e">
                <node concept="Tc6Ow" id="2erTeUVFa38" role="2ShVmc">
                  <node concept="35c_gC" id="4$bpWrQKjIH" role="HW$Y0">
                    <ref role="35c_gD" to="7ggn:3Qetf3cPkTM" resolve="StructRuleSet" />
                  </node>
                  <node concept="3uibUv" id="2Mnhr$7fCnM" role="HW$YZ">
                    <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                  </node>
                </node>
              </node>
              <node concept="3K4zz7" id="4kJ$pn78ps1" role="3K4GZi">
                <node concept="2OqwBi" id="4kJ$pn78lZm" role="3K4Cdx">
                  <node concept="1beSmn" id="4kJ$pn78kWj" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="4kJ$pn78mhP" role="2OqNvi">
                    <node concept="chp4Y" id="4kJ$pn78nF2" role="cj9EA">
                      <ref role="cht4Q" to="7ggn:55f2HNAoLSh" resolve="Aspect" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="4$bpWrQNFJm" role="3K4GZi">
                  <node concept="Tc6Ow" id="4$bpWrQNFJn" role="2ShVmc">
                    <node concept="35c_gC" id="4$bpWrQNFJo" role="HW$Y0">
                      <ref role="35c_gD" to="7ggn:6HWpSUEuark" resolve="NodeRuleSet" />
                    </node>
                    <node concept="3uibUv" id="4$bpWrQNFJq" role="HW$YZ">
                      <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="4kJ$pn78pvN" role="3K4E3e">
                  <node concept="Tc6Ow" id="4kJ$pn78pvO" role="2ShVmc">
                    <node concept="35c_gC" id="4kJ$pn78pvP" role="HW$Y0">
                      <ref role="35c_gD" to="7ggn:4kJ$pn77AZT" resolve="AspectRuleSet" />
                    </node>
                    <node concept="35c_gC" id="7I8sN8qkeRo" role="HW$Y0">
                      <ref role="35c_gD" to="7ggn:6HWpSUEu3U3" resolve="RepositoryRuleSet" />
                    </node>
                    <node concept="35c_gC" id="7I8sN8qkfga" role="HW$Y0">
                      <ref role="35c_gD" to="7ggn:6HWpSUEu3U0" resolve="ModuleRuleSet" />
                    </node>
                    <node concept="35c_gC" id="7I8sN8qkf_5" role="HW$Y0">
                      <ref role="35c_gD" to="7ggn:6HWpSUEu3T2" resolve="ModelRuleSet" />
                    </node>
                    <node concept="3uibUv" id="4kJ$pn78pvQ" role="HW$YZ">
                      <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                    </node>
                  </node>
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
              <node concept="1qvjxa" id="7NjRQfy11CT" role="33vP2m">
                <ref role="1quiSB" to="jzwl:59OKK4YckpT" resolve="rules" />
                <node concept="37vLTw" id="7NjRQfy11CU" role="1qvjxb">
                  <ref role="3cqZAo" node="7NjRQfy12vq" resolve="module" />
                </node>
              </node>
              <node concept="H_c77" id="4$bpWrQO3jQ" role="1tU5fm" />
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
                  <node concept="0kSF2" id="5JfAyZ3ICp4" role="33vP2m">
                    <node concept="3uibUv" id="5JfAyZ3ICp7" role="0kSFW">
                      <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                    </node>
                    <node concept="2OqwBi" id="4$bpWrQGJBS" role="0kSFX">
                      <node concept="2OqwBi" id="5JfAyZ3IBa9" role="2Oq$k0">
                        <node concept="2JrnkZ" id="5JfAyZ3IAD8" role="2Oq$k0">
                          <node concept="1beSmn" id="4$bpWrQA3Kv" role="2JrQYb" />
                        </node>
                        <node concept="liA8E" id="5JfAyZ3IBla" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5JfAyZ3IB$K" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                      </node>
                    </node>
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
          <node concept="3clFbJ" id="4$bpWrQKkrF" role="3cqZAp">
            <node concept="3clFbS" id="4$bpWrQKkrH" role="3clFbx">
              <node concept="3cpWs8" id="4$bpWrQO0xN" role="3cqZAp">
                <node concept="3cpWsn" id="4$bpWrQO0xO" role="3cpWs9">
                  <property role="TrG5h" value="ruleset" />
                  <node concept="3Tqbb2" id="4$bpWrQO0jz" role="1tU5fm">
                    <ref role="ehGHo" to="7ggn:3Qetf3cPkTM" resolve="StructRuleSet" />
                  </node>
                  <node concept="2pJPEk" id="4$bpWrQO0xP" role="33vP2m">
                    <node concept="2pJPED" id="4$bpWrQO0xQ" role="2pJPEn">
                      <ref role="2pJxaS" to="7ggn:3Qetf3cPkTM" resolve="StructRuleSet" />
                      <node concept="2pIpSj" id="4$bpWrQO0xR" role="2pJxcM">
                        <ref role="2pIpSl" to="7ggn:4$bpWrNHODe" resolve="structClass" />
                        <node concept="36biLy" id="4$bpWrQO0xS" role="28nt2d">
                          <node concept="1PxgMI" id="4$bpWrQO0xT" role="36biLW">
                            <node concept="chp4Y" id="4$bpWrQO0xU" role="3oSUPX">
                              <ref role="cht4Q" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
                            </node>
                            <node concept="1beSmn" id="4$bpWrQO0xV" role="1m5AlR" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4$bpWrQO1$a" role="3cqZAp">
                <node concept="2OqwBi" id="4$bpWrQO23U" role="3clFbG">
                  <node concept="37vLTw" id="4$bpWrQO1$8" role="2Oq$k0">
                    <ref role="3cqZAo" node="7NjRQfy0ZHn" resolve="aspectModel" />
                  </node>
                  <node concept="3BYIHo" id="4$bpWrQO3PW" role="2OqNvi">
                    <node concept="37vLTw" id="4$bpWrQO4ig" role="3BYIHq">
                      <ref role="3cqZAo" node="4$bpWrQO0xO" resolve="ruleset" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4$bpWrQNYPE" role="3cqZAp">
                <node concept="37vLTw" id="4$bpWrQO0xW" role="3cqZAk">
                  <ref role="3cqZAo" node="4$bpWrQO0xO" resolve="ruleset" />
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="4kJ$pn78iai" role="3eNLev">
              <node concept="3clFbS" id="4kJ$pn78iaj" role="3eOfB_">
                <node concept="3cpWs8" id="4kJ$pn78pHi" role="3cqZAp">
                  <node concept="3cpWsn" id="4kJ$pn78pHj" role="3cpWs9">
                    <property role="TrG5h" value="ruleset" />
                    <node concept="3Tqbb2" id="4kJ$pn78pHk" role="1tU5fm">
                      <ref role="ehGHo" to="7ggn:4kJ$pn77AZT" resolve="AspectRuleSet" />
                    </node>
                    <node concept="2pJPEk" id="4kJ$pn78pHl" role="33vP2m">
                      <node concept="2pJPED" id="4kJ$pn78pHm" role="2pJPEn">
                        <ref role="2pJxaS" to="7ggn:4kJ$pn77AZT" resolve="AspectRuleSet" />
                        <node concept="2pIpSj" id="4kJ$pn78rq0" role="2pJxcM">
                          <ref role="2pIpSl" to="7ggn:55f2HNAp5cR" resolve="aspect" />
                          <node concept="36biLy" id="4kJ$pn78rxR" role="28nt2d">
                            <node concept="1PxgMI" id="4kJ$pn78sAw" role="36biLW">
                              <node concept="chp4Y" id="4kJ$pn78t4z" role="3oSUPX">
                                <ref role="cht4Q" to="7ggn:55f2HNAoLSh" resolve="Aspect" />
                              </node>
                              <node concept="1beSmn" id="4kJ$pn78rZK" role="1m5AlR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4kJ$pn78tIB" role="3cqZAp">
                  <node concept="2OqwBi" id="4kJ$pn78tIC" role="3clFbG">
                    <node concept="37vLTw" id="4kJ$pn78tID" role="2Oq$k0">
                      <ref role="3cqZAo" node="7NjRQfy0ZHn" resolve="aspectModel" />
                    </node>
                    <node concept="3BYIHo" id="4kJ$pn78tIE" role="2OqNvi">
                      <node concept="37vLTw" id="4kJ$pn78tIF" role="3BYIHq">
                        <ref role="3cqZAo" node="4kJ$pn78pHj" resolve="ruleset" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4kJ$pn78tUF" role="3cqZAp">
                  <node concept="37vLTw" id="4kJ$pn78tUG" role="3cqZAk">
                    <ref role="3cqZAo" node="4kJ$pn78pHj" resolve="ruleset" />
                  </node>
                </node>
              </node>
              <node concept="17R0WA" id="7I8sN8qkkRE" role="3eO9$A">
                <node concept="35c_gC" id="7I8sN8qklCh" role="3uHU7w">
                  <ref role="35c_gD" to="7ggn:4kJ$pn77AZT" resolve="AspectRuleSet" />
                </node>
                <node concept="1YUXGS" id="7I8sN8qkjOM" role="3uHU7B" />
              </node>
            </node>
            <node concept="3eNFk2" id="7I8sN8qkmEN" role="3eNLev">
              <node concept="3clFbS" id="7I8sN8qkmEO" role="3eOfB_">
                <node concept="3cpWs8" id="7I8sN8qkmEP" role="3cqZAp">
                  <node concept="3cpWsn" id="7I8sN8qkmEQ" role="3cpWs9">
                    <property role="TrG5h" value="ruleset" />
                    <node concept="3Tqbb2" id="7I8sN8qkmER" role="1tU5fm">
                      <ref role="ehGHo" to="7ggn:6HWpSUEu3U3" resolve="RepositoryRuleSet" />
                    </node>
                    <node concept="2pJPEk" id="7I8sN8qkmES" role="33vP2m">
                      <node concept="2pJPED" id="7I8sN8qkmET" role="2pJPEn">
                        <ref role="2pJxaS" to="7ggn:6HWpSUEu3U3" resolve="RepositoryRuleSet" />
                        <node concept="2pIpSj" id="7I8sN8qkmEU" role="2pJxcM">
                          <ref role="2pIpSl" to="7ggn:55f2HNAp5cR" resolve="aspect" />
                          <node concept="36biLy" id="7I8sN8qkmEV" role="28nt2d">
                            <node concept="1PxgMI" id="7I8sN8qkmEW" role="36biLW">
                              <node concept="chp4Y" id="7I8sN8qkmEX" role="3oSUPX">
                                <ref role="cht4Q" to="7ggn:55f2HNAoLSh" resolve="Aspect" />
                              </node>
                              <node concept="1beSmn" id="7I8sN8qkmEY" role="1m5AlR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7I8sN8qkmEZ" role="3cqZAp">
                  <node concept="2OqwBi" id="7I8sN8qkmF0" role="3clFbG">
                    <node concept="37vLTw" id="7I8sN8qkmF1" role="2Oq$k0">
                      <ref role="3cqZAo" node="7NjRQfy0ZHn" resolve="aspectModel" />
                    </node>
                    <node concept="3BYIHo" id="7I8sN8qkmF2" role="2OqNvi">
                      <node concept="37vLTw" id="7I8sN8qkmF3" role="3BYIHq">
                        <ref role="3cqZAo" node="7I8sN8qkmEQ" resolve="ruleset" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7I8sN8qkmF4" role="3cqZAp">
                  <node concept="37vLTw" id="7I8sN8qkmF5" role="3cqZAk">
                    <ref role="3cqZAo" node="7I8sN8qkmEQ" resolve="ruleset" />
                  </node>
                </node>
              </node>
              <node concept="17R0WA" id="7I8sN8qkmF6" role="3eO9$A">
                <node concept="35c_gC" id="7I8sN8qkmF7" role="3uHU7w">
                  <ref role="35c_gD" to="7ggn:6HWpSUEu3U3" resolve="RepositoryRuleSet" />
                </node>
                <node concept="1YUXGS" id="7I8sN8qkmF8" role="3uHU7B" />
              </node>
            </node>
            <node concept="3eNFk2" id="7I8sN8qknGK" role="3eNLev">
              <node concept="3clFbS" id="7I8sN8qknGL" role="3eOfB_">
                <node concept="3cpWs8" id="7I8sN8qknGM" role="3cqZAp">
                  <node concept="3cpWsn" id="7I8sN8qknGN" role="3cpWs9">
                    <property role="TrG5h" value="ruleset" />
                    <node concept="3Tqbb2" id="7I8sN8qknGO" role="1tU5fm">
                      <ref role="ehGHo" to="7ggn:6HWpSUEu3U0" resolve="ModuleRuleSet" />
                    </node>
                    <node concept="2pJPEk" id="7I8sN8qknGP" role="33vP2m">
                      <node concept="2pJPED" id="7I8sN8qknGQ" role="2pJPEn">
                        <ref role="2pJxaS" to="7ggn:6HWpSUEu3U0" resolve="ModuleRuleSet" />
                        <node concept="2pIpSj" id="7I8sN8qknGR" role="2pJxcM">
                          <ref role="2pIpSl" to="7ggn:55f2HNAp5cR" resolve="aspect" />
                          <node concept="36biLy" id="7I8sN8qknGS" role="28nt2d">
                            <node concept="1PxgMI" id="7I8sN8qknGT" role="36biLW">
                              <node concept="chp4Y" id="7I8sN8qknGU" role="3oSUPX">
                                <ref role="cht4Q" to="7ggn:55f2HNAoLSh" resolve="Aspect" />
                              </node>
                              <node concept="1beSmn" id="7I8sN8qknGV" role="1m5AlR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7I8sN8qknGW" role="3cqZAp">
                  <node concept="2OqwBi" id="7I8sN8qknGX" role="3clFbG">
                    <node concept="37vLTw" id="7I8sN8qknGY" role="2Oq$k0">
                      <ref role="3cqZAo" node="7NjRQfy0ZHn" resolve="aspectModel" />
                    </node>
                    <node concept="3BYIHo" id="7I8sN8qknGZ" role="2OqNvi">
                      <node concept="37vLTw" id="7I8sN8qknH0" role="3BYIHq">
                        <ref role="3cqZAo" node="7I8sN8qknGN" resolve="ruleset" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7I8sN8qknH1" role="3cqZAp">
                  <node concept="37vLTw" id="7I8sN8qknH2" role="3cqZAk">
                    <ref role="3cqZAo" node="7I8sN8qknGN" resolve="ruleset" />
                  </node>
                </node>
              </node>
              <node concept="17R0WA" id="7I8sN8qknH3" role="3eO9$A">
                <node concept="35c_gC" id="7I8sN8qknH4" role="3uHU7w">
                  <ref role="35c_gD" to="7ggn:6HWpSUEu3U0" resolve="ModuleRuleSet" />
                </node>
                <node concept="1YUXGS" id="7I8sN8qknH5" role="3uHU7B" />
              </node>
            </node>
            <node concept="3eNFk2" id="7I8sN8qkoyI" role="3eNLev">
              <node concept="3clFbS" id="7I8sN8qkoyJ" role="3eOfB_">
                <node concept="3cpWs8" id="7I8sN8qkoyK" role="3cqZAp">
                  <node concept="3cpWsn" id="7I8sN8qkoyL" role="3cpWs9">
                    <property role="TrG5h" value="ruleset" />
                    <node concept="3Tqbb2" id="7I8sN8qkoyM" role="1tU5fm">
                      <ref role="ehGHo" to="7ggn:6HWpSUEu3T2" resolve="ModelRuleSet" />
                    </node>
                    <node concept="2pJPEk" id="7I8sN8qkoyN" role="33vP2m">
                      <node concept="2pJPED" id="7I8sN8qkoyO" role="2pJPEn">
                        <ref role="2pJxaS" to="7ggn:6HWpSUEu3T2" resolve="ModelRuleSet" />
                        <node concept="2pIpSj" id="7I8sN8qkoyP" role="2pJxcM">
                          <ref role="2pIpSl" to="7ggn:55f2HNAp5cR" resolve="aspect" />
                          <node concept="36biLy" id="7I8sN8qkoyQ" role="28nt2d">
                            <node concept="1PxgMI" id="7I8sN8qkoyR" role="36biLW">
                              <node concept="chp4Y" id="7I8sN8qkoyS" role="3oSUPX">
                                <ref role="cht4Q" to="7ggn:55f2HNAoLSh" resolve="Aspect" />
                              </node>
                              <node concept="1beSmn" id="7I8sN8qkoyT" role="1m5AlR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7I8sN8qkoyU" role="3cqZAp">
                  <node concept="2OqwBi" id="7I8sN8qkoyV" role="3clFbG">
                    <node concept="37vLTw" id="7I8sN8qkoyW" role="2Oq$k0">
                      <ref role="3cqZAo" node="7NjRQfy0ZHn" resolve="aspectModel" />
                    </node>
                    <node concept="3BYIHo" id="7I8sN8qkoyX" role="2OqNvi">
                      <node concept="37vLTw" id="7I8sN8qkoyY" role="3BYIHq">
                        <ref role="3cqZAo" node="7I8sN8qkoyL" resolve="ruleset" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7I8sN8qkoyZ" role="3cqZAp">
                  <node concept="37vLTw" id="7I8sN8qkoz0" role="3cqZAk">
                    <ref role="3cqZAo" node="7I8sN8qkoyL" resolve="ruleset" />
                  </node>
                </node>
              </node>
              <node concept="17R0WA" id="7I8sN8qkoz1" role="3eO9$A">
                <node concept="35c_gC" id="7I8sN8qkoz2" role="3uHU7w">
                  <ref role="35c_gD" to="7ggn:6HWpSUEu3T2" resolve="ModelRuleSet" />
                </node>
                <node concept="1YUXGS" id="7I8sN8qkoz3" role="3uHU7B" />
              </node>
            </node>
            <node concept="9aQIb" id="4kJ$pn78k_s" role="9aQIa">
              <node concept="3clFbS" id="4kJ$pn78k_t" role="9aQI4">
                <node concept="3cpWs8" id="4kJ$pn78I4L" role="3cqZAp">
                  <node concept="3cpWsn" id="4kJ$pn78I4M" role="3cpWs9">
                    <property role="TrG5h" value="ruleset" />
                    <node concept="3Tqbb2" id="4kJ$pn78I4N" role="1tU5fm">
                      <ref role="ehGHo" to="7ggn:6HWpSUEuark" resolve="NodeRuleSet" />
                    </node>
                    <node concept="2pJPEk" id="4kJ$pn78I4O" role="33vP2m">
                      <node concept="2pJPED" id="4kJ$pn78I4P" role="2pJPEn">
                        <ref role="2pJxaS" to="7ggn:6HWpSUEuark" resolve="NodeRuleSet" />
                        <node concept="2pIpSj" id="4kJ$pn78I4Q" role="2pJxcM">
                          <ref role="2pIpSl" to="7ggn:6HWpSUEuarY" resolve="concept" />
                          <node concept="36biLy" id="4kJ$pn78I4R" role="28nt2d">
                            <node concept="1PxgMI" id="4kJ$pn78I4S" role="36biLW">
                              <node concept="chp4Y" id="4kJ$pn78I4T" role="3oSUPX">
                                <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                              </node>
                              <node concept="1beSmn" id="4kJ$pn78I4U" role="1m5AlR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4kJ$pn78Lqb" role="3cqZAp">
                  <node concept="2OqwBi" id="4kJ$pn78Lqc" role="3clFbG">
                    <node concept="37vLTw" id="4kJ$pn78Lqd" role="2Oq$k0">
                      <ref role="3cqZAo" node="7NjRQfy0ZHn" resolve="aspectModel" />
                    </node>
                    <node concept="3BYIHo" id="4kJ$pn78Lqe" role="2OqNvi">
                      <node concept="37vLTw" id="4kJ$pn78Lqf" role="3BYIHq">
                        <ref role="3cqZAo" node="4kJ$pn78I4M" resolve="ruleset" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4kJ$pn78LAY" role="3cqZAp">
                  <node concept="37vLTw" id="4kJ$pn78LAZ" role="3cqZAk">
                    <ref role="3cqZAo" node="4kJ$pn78I4M" resolve="ruleset" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="7I8sN8qkh$K" role="3clFbw">
              <node concept="1YUXGS" id="7I8sN8qkg$u" role="3uHU7B" />
              <node concept="35c_gC" id="7I8sN8qkiiL" role="3uHU7w">
                <ref role="35c_gD" to="7ggn:3Qetf3cPkTM" resolve="StructRuleSet" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2vPdvu" id="7POWRVZLtOx" role="2E2X74">
      <node concept="2vPdvi" id="4kOIfQjJz4B" role="2vPdvg">
        <ref role="2vPdvl" to="7e0v:7POWRVZMxkx" resolve="Structure" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOz" role="2vPdvg">
        <ref role="2vPdvl" to="7e0v:2erTeUVF9WV" resolve="Editor" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtO$" role="2vPdvg">
        <ref role="2vPdvl" to="7e0v:2erTeUVFa2t" resolve="Constraints" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtO_" role="2vPdvg">
        <ref role="2vPdvl" to="7e0v:2erTeUVEQFB" resolve="Behavior" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOA" role="2vPdvg">
        <ref role="2vPdvl" to="7e0v:7POWRVZLtP_" resolve="Typesystem" />
      </node>
      <node concept="2vPdvi" id="7mKDvraibVy" role="2vPdvg">
        <ref role="2vPdvl" node="7mKDvraibOE" resolve="Structs" />
      </node>
      <node concept="2vPdvi" id="4kJ$pn79yGS" role="2vPdvg">
        <ref role="2vPdvl" node="4kJ$pn77NcB" resolve="Aspects" />
      </node>
      <node concept="2vPdvi" id="3Qetf3cPeDq" role="2vPdvg">
        <ref role="2vPdvl" node="3E71z7ucbEa" resolve="Rules" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOB" role="2vPdvg">
        <ref role="2vPdvl" to="7e0v:2$SWsiCu1P0" resolve="Actions" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOC" role="2vPdvg">
        <ref role="2vPdvl" to="7e0v:7POWRVZLtD_" resolve="Refactorings" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOD" role="2vPdvg">
        <ref role="2vPdvl" to="7e0v:2erTeUVFcrJ" resolve="Intentions" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOE" role="2vPdvg">
        <ref role="2vPdvl" to="7e0v:2erTeUVFaZh" resolve="Find Usages" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOF" role="2vPdvg">
        <ref role="2vPdvl" to="7e0v:2erTeUVFaEE" resolve="Data Flow" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOG" role="2vPdvg">
        <ref role="2vPdvl" to="7e0v:2erTeUVF2dY" resolve="Generator" />
      </node>
      <node concept="2vPdvi" id="7POWRVZLtOH" role="2vPdvg">
        <ref role="2vPdvl" to="7e0v:7POWRVZLtO0" resolve="Textgen" />
      </node>
    </node>
    <node concept="1bb2R6" id="6aMI9gIMtPZ" role="2E2Xay">
      <node concept="3clFbS" id="6aMI9gIMtQ0" role="2VODD2">
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
              <node concept="2ShNRf" id="1oq9tin2gcT" role="3cqZAk">
                <node concept="2T8Vx0" id="1oq9tin2gcU" role="2ShVmc">
                  <node concept="2I9FWS" id="1oq9tin2gcV" role="2T96Bj" />
                </node>
              </node>
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
        <node concept="3cpWs8" id="74j1j8ZLRbT" role="3cqZAp">
          <node concept="3cpWsn" id="74j1j8ZLRbU" role="3cpWs9">
            <property role="TrG5h" value="aspectModel" />
            <node concept="1qvjxa" id="qmfyRQRe5T" role="33vP2m">
              <ref role="1quiSB" to="jzwl:59OKK4YckpT" resolve="rules" />
              <node concept="37vLTw" id="qmfyRQRfLX" role="1qvjxb">
                <ref role="3cqZAo" node="74j1j8ZLRb_" resolve="module" />
              </node>
            </node>
            <node concept="H_c77" id="4$bpWrQ_Syl" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbJ" id="74j1j8ZLRc3" role="3cqZAp">
          <node concept="3clFbS" id="74j1j8ZLRc4" role="3clFbx">
            <node concept="3cpWs6" id="74j1j8ZLRc5" role="3cqZAp">
              <node concept="2ShNRf" id="7I8sN8qjw7L" role="3cqZAk">
                <node concept="2T8Vx0" id="7I8sN8qjw7M" role="2ShVmc">
                  <node concept="2I9FWS" id="7I8sN8qjw7N" role="2T96Bj" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="74j1j8ZLRc9" role="3clFbw">
            <node concept="10Nm6u" id="74j1j8ZLRca" role="3uHU7w" />
            <node concept="37vLTw" id="6aMI9gIMyt0" role="3uHU7B">
              <ref role="3cqZAo" node="74j1j8ZLRbU" resolve="aspectModel" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7I8sN8qjypA" role="3cqZAp">
          <node concept="2YIFZM" id="7I8sN8qj$5S" role="3cqZAk">
            <ref role="37wK5l" node="7I8sN8qhAIB" resolve="getApsectNodes" />
            <ref role="1Pybhc" node="7POWRVZMxfC" resolve="DclareConceptEditorOpenHelper" />
            <node concept="37vLTw" id="7I8sN8qjB0g" role="37wK5m">
              <ref role="3cqZAo" node="74j1j8ZLRbU" resolve="aspectModel" />
            </node>
            <node concept="1beSmn" id="7I8sN8qj_ca" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7POWRVZMxfC">
    <property role="TrG5h" value="DclareConceptEditorOpenHelper" />
    <node concept="2tJIrI" id="4$bpWrQzCCa" role="jymVt" />
    <node concept="2YIFZL" id="7POWRVZMxfE" role="jymVt">
      <property role="TrG5h" value="getBaseNode" />
      <node concept="37vLTG" id="7POWRVZMxhx" role="3clF46">
        <property role="TrG5h" value="aspectNode" />
        <node concept="3Tqbb2" id="7POWRVZMxhy" role="1tU5fm">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="7POWRVZMxfH" role="3clF47">
        <node concept="3cpWs8" id="7POWRVZMxfI" role="3cqZAp">
          <node concept="3cpWsn" id="7POWRVZMxfJ" role="3cpWs9">
            <property role="TrG5h" value="baseNode" />
            <node concept="10Nm6u" id="7POWRVZMxfK" role="33vP2m" />
            <node concept="3Tqbb2" id="7POWRVZMxfL" role="1tU5fm">
              <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxfM" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="7POWRVZMxfN" role="3clFbx">
            <node concept="3cpWs6" id="7POWRVZMxfO" role="3cqZAp">
              <node concept="10Nm6u" id="7POWRVZMxfP" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="4kJ$pn78Ojs" role="3clFbw">
            <node concept="2OqwBi" id="4kJ$pn78Pmn" role="3uHU7w">
              <node concept="37vLTw" id="4kJ$pn78OKH" role="2Oq$k0">
                <ref role="3cqZAo" node="7POWRVZMxhx" resolve="aspectNode" />
              </node>
              <node concept="1mIQ4w" id="4kJ$pn78PIb" role="2OqNvi">
                <node concept="chp4Y" id="4kJ$pn78Q65" role="cj9EA">
                  <ref role="cht4Q" to="7ggn:55f2HNAoLSh" resolve="Aspect" />
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="4$bpWrQzD6d" role="3uHU7B">
              <node concept="2OqwBi" id="7POWRVZMxfQ" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxglmXK" role="2Oq$k0">
                  <ref role="3cqZAo" node="7POWRVZMxhx" resolve="aspectNode" />
                </node>
                <node concept="1mIQ4w" id="7POWRVZMxfS" role="2OqNvi">
                  <node concept="chp4Y" id="7POWRVZMxfT" role="cj9EA">
                    <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4$bpWrQzDZL" role="3uHU7w">
                <node concept="37vLTw" id="4$bpWrQzDv0" role="2Oq$k0">
                  <ref role="3cqZAo" node="7POWRVZMxhx" resolve="aspectNode" />
                </node>
                <node concept="1mIQ4w" id="4$bpWrQzEkh" role="2OqNvi">
                  <node concept="chp4Y" id="4$bpWrQzEBR" role="cj9EA">
                    <ref role="cht4Q" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxfU" role="3cqZAp">
          <node concept="2OqwBi" id="7POWRVZMxg3" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm9b5" role="2Oq$k0">
              <ref role="3cqZAo" node="7POWRVZMxhx" resolve="aspectNode" />
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
                      <ref role="3cqZAo" node="7POWRVZMxhx" resolve="aspectNode" />
                    </node>
                    <node concept="chp4Y" id="714IaVdH1$C" role="3oSUPX">
                      <ref role="cht4Q" to="tpce:2hxg_BDjKM4" resolve="IConceptAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7I8sN8q5vKT" role="3eNLev">
            <node concept="3clFbS" id="7I8sN8q5vKV" role="3eOfB_">
              <node concept="3clFbF" id="4$bpWrQzHZM" role="3cqZAp">
                <node concept="37vLTI" id="4$bpWrQzIue" role="3clFbG">
                  <node concept="2OqwBi" id="4$bpWrQzJSI" role="37vLTx">
                    <node concept="1PxgMI" id="4$bpWrQzJm_" role="2Oq$k0">
                      <node concept="chp4Y" id="4$bpWrQzJBW" role="3oSUPX">
                        <ref role="cht4Q" to="7ggn:3Qetf3cPkTM" resolve="StructRuleSet" />
                      </node>
                      <node concept="37vLTw" id="4$bpWrQzIQh" role="1m5AlR">
                        <ref role="3cqZAo" node="7POWRVZMxhx" resolve="aspectNode" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4$bpWrQzKtN" role="2OqNvi">
                      <ref role="3Tt5mk" to="7ggn:4$bpWrNHODe" resolve="structClass" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4$bpWrQzHZK" role="37vLTJ">
                    <ref role="3cqZAo" node="7POWRVZMxfJ" resolve="baseNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4$bpWrQzGT0" role="3eO9$A">
              <node concept="37vLTw" id="4$bpWrQzGDK" role="2Oq$k0">
                <ref role="3cqZAo" node="7POWRVZMxhx" resolve="aspectNode" />
              </node>
              <node concept="1mIQ4w" id="4$bpWrQzHiK" role="2OqNvi">
                <node concept="chp4Y" id="4$bpWrQzH$2" role="cj9EA">
                  <ref role="cht4Q" to="7ggn:3Qetf3cPkTM" resolve="StructRuleSet" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7I8sN8q5xPE" role="3eNLev">
            <node concept="3clFbS" id="7I8sN8q5xPG" role="3eOfB_">
              <node concept="3clFbF" id="4kJ$pn78Q_j" role="3cqZAp">
                <node concept="37vLTI" id="4kJ$pn78Q_k" role="3clFbG">
                  <node concept="2OqwBi" id="4kJ$pn78Q_l" role="37vLTx">
                    <node concept="1PxgMI" id="4kJ$pn78Q_m" role="2Oq$k0">
                      <node concept="chp4Y" id="4kJ$pn78Q_n" role="3oSUPX">
                        <ref role="cht4Q" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
                      </node>
                      <node concept="37vLTw" id="4kJ$pn78Q_o" role="1m5AlR">
                        <ref role="3cqZAo" node="7POWRVZMxhx" resolve="aspectNode" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4kJ$pn78Q_p" role="2OqNvi">
                      <ref role="3Tt5mk" to="7ggn:55f2HNAp5cR" resolve="aspect" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4kJ$pn78Q_q" role="37vLTJ">
                    <ref role="3cqZAo" node="7POWRVZMxfJ" resolve="baseNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4kJ$pn78Q_r" role="3eO9$A">
              <node concept="37vLTw" id="4kJ$pn78Q_s" role="2Oq$k0">
                <ref role="3cqZAo" node="7POWRVZMxhx" resolve="aspectNode" />
              </node>
              <node concept="1mIQ4w" id="4kJ$pn78Q_t" role="2OqNvi">
                <node concept="chp4Y" id="4kJ$pn78Q_u" role="cj9EA">
                  <ref role="cht4Q" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxgh" role="3cqZAp">
          <property role="TyiWK" value="true" />
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
        <node concept="3clFbJ" id="7POWRVZMxho" role="3cqZAp">
          <property role="TyiWK" value="true" />
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
                  <ref role="3cqZAo" node="7POWRVZMxhx" resolve="aspectNode" />
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
          <property role="TyiWK" value="true" />
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
          <property role="TyiWK" value="true" />
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
        <node concept="3cpWs6" id="7POWRVZMxhv" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTu77" role="3cqZAk">
            <ref role="3cqZAo" node="7POWRVZMxfJ" resolve="baseNode" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7POWRVZMxfG" role="1B3o_S" />
      <node concept="3Tqbb2" id="7POWRVZMxfF" role="3clF45">
        <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
    </node>
    <node concept="2tJIrI" id="3_ZjqMfbcfn" role="jymVt" />
    <node concept="2YIFZL" id="7POWRVZMxik" role="jymVt">
      <property role="TrG5h" value="canOpen" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="7POWRVZMxio" role="3clF47">
        <node concept="3clFbJ" id="7POWRVZMxip" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="7POWRVZMxiq" role="3clFbx">
            <node concept="3cpWs6" id="7POWRVZMxir" role="3cqZAp">
              <node concept="3clFbT" id="7POWRVZMxis" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4kJ$pn78SC3" role="3clFbw">
            <node concept="1Wc70l" id="1r71HA7PbLh" role="3uHU7B">
              <node concept="3fqX7Q" id="7POWRVZMxit" role="3uHU7B">
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
              <node concept="3fqX7Q" id="1r71HA7Pcay" role="3uHU7w">
                <node concept="2OqwBi" id="1r71HA7Pcaz" role="3fr31v">
                  <node concept="37vLTw" id="1r71HA7Pca$" role="2Oq$k0">
                    <ref role="3cqZAo" node="7POWRVZMxim" resolve="node" />
                  </node>
                  <node concept="1mIQ4w" id="1r71HA7Pca_" role="2OqNvi">
                    <node concept="chp4Y" id="1r71HA7PcaA" role="cj9EA">
                      <ref role="cht4Q" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="4kJ$pn78T4q" role="3uHU7w">
              <node concept="2OqwBi" id="4kJ$pn78T4r" role="3fr31v">
                <node concept="37vLTw" id="4kJ$pn78T4s" role="2Oq$k0">
                  <ref role="3cqZAo" node="7POWRVZMxim" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="4kJ$pn78T4t" role="2OqNvi">
                  <node concept="chp4Y" id="4kJ$pn78T4u" role="cj9EA">
                    <ref role="cht4Q" to="7ggn:55f2HNAoLSh" resolve="Aspect" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7POWRVZMxiy" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbC" id="7POWRVZMxiA" role="3clFbw">
            <node concept="10Nm6u" id="7POWRVZMxiE" role="3uHU7w" />
            <node concept="0kSF2" id="1r71HA7Pg_l" role="3uHU7B">
              <node concept="3uibUv" id="1r71HA7Pg_m" role="0kSFW">
                <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
              </node>
              <node concept="2OqwBi" id="1r71HA7Pp7M" role="0kSFX">
                <node concept="2OqwBi" id="1r71HA7Pg_n" role="2Oq$k0">
                  <node concept="2JrnkZ" id="1r71HA7Pg_o" role="2Oq$k0">
                    <node concept="37vLTw" id="5JfAyZ3I$kM" role="2JrQYb">
                      <ref role="3cqZAo" node="7POWRVZMxim" resolve="node" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1r71HA7Pg_p" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                </node>
                <node concept="liA8E" id="1r71HA7Pg_q" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
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
        <node concept="3Tqbb2" id="7POWRVZMxin" role="1tU5fm">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
      <node concept="10P_77" id="7POWRVZMxil" role="3clF45" />
      <node concept="3Tm6S6" id="7POWRVZMxiU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7I8sN8q5B11" role="jymVt" />
    <node concept="3Tm1VV" id="7POWRVZMxfD" role="1B3o_S" />
    <node concept="2YIFZL" id="7I8sN8qhAIB" role="jymVt">
      <property role="TrG5h" value="getApsectNodes" />
      <node concept="37vLTG" id="7I8sN8qhUeI" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="7I8sN8qhWaM" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7I8sN8qhBuk" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7I8sN8qhB$9" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7I8sN8qhAIF" role="3clF47">
        <node concept="Jncv_" id="7I8sN8qhLr0" role="3cqZAp">
          <ref role="JncvD" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
          <node concept="37vLTw" id="7I8sN8qhNhv" role="JncvB">
            <ref role="3cqZAo" node="7I8sN8qhBuk" resolve="node" />
          </node>
          <node concept="3clFbS" id="7I8sN8qhLr4" role="Jncv$">
            <node concept="3cpWs6" id="7I8sN8qi5$1" role="3cqZAp">
              <node concept="2OqwBi" id="7I8sN8qi8NX" role="3cqZAk">
                <node concept="2OqwBi" id="4G9PD8$NzU7" role="2Oq$k0">
                  <node concept="2OqwBi" id="4G9PD8$NvQa" role="2Oq$k0">
                    <node concept="2RRcyG" id="4G9PD8$NvQc" role="2OqNvi">
                      <node concept="chp4Y" id="5QK5AMJp7wV" role="3MHsoP">
                        <ref role="cht4Q" to="7ggn:3Qetf3cPkTM" resolve="StructRuleSet" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7I8sN8qhYqg" role="2Oq$k0">
                      <ref role="3cqZAo" node="7I8sN8qhUeI" resolve="model" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="4G9PD8$N_9F" role="2OqNvi">
                    <node concept="1bVj0M" id="4G9PD8$N_9H" role="23t8la">
                      <node concept="3clFbS" id="4G9PD8$N_9I" role="1bW5cS">
                        <node concept="3clFbF" id="4G9PD8$N_f3" role="3cqZAp">
                          <node concept="17R0WA" id="4$bpWrQ_Pxj" role="3clFbG">
                            <node concept="2OqwBi" id="4$bpWrQ_Msj" role="3uHU7B">
                              <node concept="37vLTw" id="4$bpWrQ_Kvf" role="2Oq$k0">
                                <ref role="3cqZAo" node="4G9PD8$N_9J" resolve="it" />
                              </node>
                              <node concept="3TrEf2" id="4$bpWrQ_O15" role="2OqNvi">
                                <ref role="3Tt5mk" to="7ggn:4$bpWrNHODe" resolve="structClass" />
                              </node>
                            </node>
                            <node concept="Jnkvi" id="7I8sN8qjrQt" role="3uHU7w">
                              <ref role="1M0zk5" node="7I8sN8qhLr6" resolve="sc" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="4G9PD8$N_9J" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="4G9PD8$N_9K" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="7I8sN8qiaMB" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="7I8sN8qhLr6" role="JncvA">
            <property role="TrG5h" value="sc" />
            <node concept="2jxLKc" id="7I8sN8qhLr7" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="7I8sN8qifK8" role="3cqZAp">
          <ref role="JncvD" to="7ggn:55f2HNAoLSh" resolve="Aspect" />
          <node concept="37vLTw" id="7I8sN8qihEd" role="JncvB">
            <ref role="3cqZAo" node="7I8sN8qhBuk" resolve="node" />
          </node>
          <node concept="3clFbS" id="7I8sN8qifKc" role="Jncv$">
            <node concept="3cpWs6" id="7I8sN8qiohq" role="3cqZAp">
              <node concept="2OqwBi" id="7I8sN8qiqhY" role="3cqZAk">
                <node concept="2OqwBi" id="4kJ$pn78AsE" role="2Oq$k0">
                  <node concept="2OqwBi" id="7I8sN8qivhx" role="2Oq$k0">
                    <node concept="2OqwBi" id="4kJ$pn78AsF" role="2Oq$k0">
                      <node concept="2RRcyG" id="4kJ$pn78AsH" role="2OqNvi">
                        <node concept="chp4Y" id="4kJ$pn78AsI" role="3MHsoP">
                          <ref role="cht4Q" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7I8sN8qhZt1" role="2Oq$k0">
                        <ref role="3cqZAo" node="7I8sN8qhUeI" resolve="model" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="7I8sN8qiyho" role="2OqNvi">
                      <node concept="1bVj0M" id="7I8sN8qiyhq" role="23t8la">
                        <node concept="3clFbS" id="7I8sN8qiyhr" role="1bW5cS">
                          <node concept="3clFbF" id="7I8sN8qiCrf" role="3cqZAp">
                            <node concept="1Wc70l" id="7I8sN8qiGCN" role="3clFbG">
                              <node concept="3fqX7Q" id="7I8sN8qiHI9" role="3uHU7w">
                                <node concept="2OqwBi" id="7I8sN8qiKJR" role="3fr31v">
                                  <node concept="37vLTw" id="7I8sN8qiIBJ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7I8sN8qiyhs" resolve="rs" />
                                  </node>
                                  <node concept="1mIQ4w" id="7I8sN8qiMPG" role="2OqNvi">
                                    <node concept="chp4Y" id="7I8sN8qiOGF" role="cj9EA">
                                      <ref role="cht4Q" to="7ggn:6HWpSUEuark" resolve="NodeRuleSet" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3fqX7Q" id="7I8sN8qiHa5" role="3uHU7B">
                                <node concept="2OqwBi" id="7I8sN8qiHa7" role="3fr31v">
                                  <node concept="37vLTw" id="7I8sN8qiHa8" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7I8sN8qiyhs" resolve="rs" />
                                  </node>
                                  <node concept="1mIQ4w" id="7I8sN8qiHa9" role="2OqNvi">
                                    <node concept="chp4Y" id="7I8sN8qiHaa" role="cj9EA">
                                      <ref role="cht4Q" to="7ggn:3Qetf3cPkTM" resolve="StructRuleSet" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="7I8sN8qiyhs" role="1bW2Oz">
                          <property role="TrG5h" value="rs" />
                          <node concept="2jxLKc" id="7I8sN8qiyht" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="4kJ$pn78AsJ" role="2OqNvi">
                    <node concept="1bVj0M" id="4kJ$pn78AsK" role="23t8la">
                      <node concept="3clFbS" id="4kJ$pn78AsL" role="1bW5cS">
                        <node concept="3clFbF" id="4kJ$pn78AsM" role="3cqZAp">
                          <node concept="17R0WA" id="4kJ$pn78AsN" role="3clFbG">
                            <node concept="Jnkvi" id="7I8sN8qjsDz" role="3uHU7w">
                              <ref role="1M0zk5" node="7I8sN8qifKe" resolve="a" />
                            </node>
                            <node concept="2OqwBi" id="4kJ$pn78AsR" role="3uHU7B">
                              <node concept="37vLTw" id="4kJ$pn78AsS" role="2Oq$k0">
                                <ref role="3cqZAo" node="4kJ$pn78AsU" resolve="rs" />
                              </node>
                              <node concept="3TrEf2" id="4kJ$pn78AsT" role="2OqNvi">
                                <ref role="3Tt5mk" to="7ggn:55f2HNAp5cR" resolve="aspect" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="4kJ$pn78AsU" role="1bW2Oz">
                        <property role="TrG5h" value="rs" />
                        <node concept="2jxLKc" id="4kJ$pn78AsV" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="7I8sN8qirgC" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="7I8sN8qifKe" role="JncvA">
            <property role="TrG5h" value="a" />
            <node concept="2jxLKc" id="7I8sN8qifKf" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="7I8sN8qiYoG" role="3cqZAp">
          <ref role="JncvD" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
          <node concept="37vLTw" id="7I8sN8qiZ8H" role="JncvB">
            <ref role="3cqZAo" node="7I8sN8qhBuk" resolve="node" />
          </node>
          <node concept="3clFbS" id="7I8sN8qiYoK" role="Jncv$">
            <node concept="3cpWs6" id="7I8sN8qiTUo" role="3cqZAp">
              <node concept="2OqwBi" id="7I8sN8qiVzE" role="3cqZAk">
                <node concept="2OqwBi" id="4$bpWrQ$A79" role="2Oq$k0">
                  <node concept="2qgKlT" id="4$bpWrQ$A7d" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:4G9PD8$NvPM" resolve="findConceptAspects" />
                    <node concept="37vLTw" id="7I8sN8qi0Q3" role="37wK5m">
                      <ref role="3cqZAo" node="7I8sN8qhUeI" resolve="model" />
                    </node>
                  </node>
                  <node concept="Jnkvi" id="7I8sN8qjqOW" role="2Oq$k0">
                    <ref role="1M0zk5" node="7I8sN8qiYoM" resolve="cd" />
                  </node>
                </node>
                <node concept="ANE8D" id="7I8sN8qiWcA" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="7I8sN8qiYoM" role="JncvA">
            <property role="TrG5h" value="cd" />
            <node concept="2jxLKc" id="7I8sN8qiYoN" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs6" id="7I8sN8qj2b2" role="3cqZAp">
          <node concept="2ShNRf" id="7I8sN8qj35B" role="3cqZAk">
            <node concept="2T8Vx0" id="7I8sN8qjpew" role="2ShVmc">
              <node concept="2I9FWS" id="7I8sN8qjpey" role="2T96Bj" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="7I8sN8qhBq3" role="3clF45" />
      <node concept="3Tm1VV" id="7I8sN8qhAIE" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7I8sN8qhyhs" role="jymVt" />
  </node>
  <node concept="sE7Ow" id="18IIFqBWWhG">
    <property role="TrG5h" value="ExtractAttribute" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Extract Attribute" />
    <node concept="2S4$dB" id="cvGLnZnRov" role="1NuT2Z">
      <property role="TrG5h" value="expression" />
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
                                  <ref role="2WH_rO" node="cvGLnZnRov" resolve="expression" />
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
                              <ref role="2WH_rO" node="cvGLnZnRov" resolve="expression" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="cvGLnZnRol" role="1Xdeit">
                            <node concept="2WthIp" id="cvGLnZnRom" role="2Oq$k0" />
                            <node concept="1DTwFV" id="cvGLnZnRon" role="2OqNvi">
                              <ref role="2WH_rO" node="cvGLnZnRoz" resolve="project" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6aMI9gHGOIX" role="1Xdeiu">
                            <node concept="2WthIp" id="6aMI9gHGOJ0" role="2Oq$k0">
                              <ref role="32nkFo" node="18IIFqBWWhG" resolve="ExtractAttribute" />
                            </node>
                            <node concept="2BZ7hE" id="6aMI9gHGOJ2" role="2OqNvi">
                              <ref role="2WH_rO" node="6aMI9gHGO2Y" resolve="ruleSet" />
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
                <ref role="2WH_rO" node="cvGLnZnRov" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2JriF1" id="6aMI9gHGO2Y" role="2JrayB">
      <property role="TrG5h" value="ruleSet" />
      <node concept="15s5l7" id="6aMI9gHGOWR" role="lGtFl">
        <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: toString should be specified for parameters of non-primitive type&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590364(jetbrains.mps.lang.plugin.typesystem)/1227020617850]&quot;;" />
        <property role="huDt6" value="Error: toString should be specified for parameters of non-primitive type" />
      </node>
      <node concept="3Tm6S6" id="6aMI9gHGO2Z" role="1B3o_S" />
      <node concept="3Tqbb2" id="6aMI9gHGOxz" role="1tU5fm">
        <ref role="ehGHo" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="18IIFqBXqeu">
    <property role="TrG5h" value="RefactoringAdditions" />
    <node concept="tT9cl" id="cvGLnZnRr8" role="2f5YQi">
      <ref role="tU$_T" to="9oh:5OJQJ_HXTB6" resolve="NodeRefactoring" />
    </node>
    <node concept="2OiAzN" id="5cgilv1DKz4" role="ftER_">
      <node concept="2OiTZ2" id="2WSWNq1PUpZ" role="2Oj6PV">
        <node concept="3clFbS" id="2WSWNq1PUq2" role="2VODD2">
          <node concept="3cpWs8" id="4vCqlNf_Czb" role="3cqZAp">
            <node concept="3cpWsn" id="4vCqlNf_Czc" role="3cpWs9">
              <property role="TrG5h" value="node" />
              <node concept="3Tqbb2" id="6aMI9gHDFlK" role="1tU5fm" />
              <node concept="2OqwBi" id="4vCqlNf_Cze" role="33vP2m">
                <node concept="liA8E" id="4vCqlNf_Czf" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                  <node concept="10M0yZ" id="6aMI9gHDEM1" role="37wK5m">
                    <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
                    <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                  </node>
                </node>
                <node concept="tl45R" id="4vCqlNf_Czh" role="2Oq$k0" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6aMI9gHDZE_" role="3cqZAp">
            <node concept="3cpWsn" id="6aMI9gHDZEA" role="3cpWs9">
              <property role="TrG5h" value="ruleSet" />
              <node concept="3Tqbb2" id="6aMI9gHDZ$r" role="1tU5fm">
                <ref role="ehGHo" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
              </node>
              <node concept="3K4zz7" id="6aMI9gHE0KV" role="33vP2m">
                <node concept="10Nm6u" id="6aMI9gHE0MZ" role="3K4GZi" />
                <node concept="3y3z36" id="6aMI9gHE0AY" role="3K4Cdx">
                  <node concept="10Nm6u" id="6aMI9gHE0K6" role="3uHU7w" />
                  <node concept="37vLTw" id="6aMI9gHE0ue" role="3uHU7B">
                    <ref role="3cqZAo" node="4vCqlNf_Czc" resolve="node" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6aMI9gHDZEB" role="3K4E3e">
                  <node concept="37vLTw" id="6aMI9gHDZEC" role="2Oq$k0">
                    <ref role="3cqZAo" node="4vCqlNf_Czc" resolve="node" />
                  </node>
                  <node concept="2Xjw5R" id="6aMI9gHE0sf" role="2OqNvi">
                    <node concept="1xMEDy" id="6aMI9gHE0sh" role="1xVPHs">
                      <node concept="chp4Y" id="6aMI9gHE0si" role="ri$Ld">
                        <ref role="cht4Q" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6aMI9gHDZVh" role="3cqZAp">
            <node concept="3clFbS" id="6aMI9gHDZVj" role="3clFbx">
              <node concept="2JFkCU" id="5cgilv1DMhS" role="3cqZAp">
                <node concept="tCFHf" id="5cgilv1DMPT" role="2JFLmv">
                  <ref role="tCJdB" node="18IIFqBWWhG" resolve="ExtractAttribute" />
                  <node concept="37vLTw" id="6aMI9gHGPkt" role="2J__8u">
                    <ref role="3cqZAo" node="6aMI9gHDZEA" resolve="ruleSet" />
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="2WSWNq1QBqM" role="3cqZAp">
                <node concept="2GrKxI" id="2WSWNq1QBqR" role="2Gsz3X">
                  <property role="TrG5h" value="aspect" />
                </node>
                <node concept="2OqwBi" id="5cgilv1DOLU" role="2GsD0m">
                  <node concept="2OqwBi" id="6aMI9gHDGFB" role="2Oq$k0">
                    <node concept="37vLTw" id="2WSWNq1QD_r" role="2Oq$k0">
                      <ref role="3cqZAo" node="4vCqlNf_Czc" resolve="node" />
                    </node>
                    <node concept="I4A8Y" id="6aMI9gHDHcN" role="2OqNvi" />
                  </node>
                  <node concept="3lApI0" id="5cgilv1DPJC" role="2OqNvi">
                    <node concept="chp4Y" id="5cgilv1DPM3" role="3MHPDn">
                      <ref role="cht4Q" to="7ggn:55f2HNAoLSh" resolve="Aspect" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="2WSWNq1QBr1" role="2LFqv$">
                  <node concept="3clFbJ" id="6aMI9gHE0RH" role="3cqZAp">
                    <node concept="3clFbS" id="6aMI9gHE0RJ" role="3clFbx">
                      <node concept="2JFkCU" id="2WSWNq1QEOR" role="3cqZAp">
                        <node concept="tCFHf" id="2WSWNq1QEP5" role="2JFLmv">
                          <ref role="tCJdB" node="55f2HNAzGqH" resolve="MoveToAspect" />
                          <node concept="2GrUjf" id="2WSWNq1QEPi" role="2J__8u">
                            <ref role="2Gs0qQ" node="2WSWNq1QBqR" resolve="aspect" />
                          </node>
                          <node concept="37vLTw" id="6aMI9gHGPoK" role="2J__8u">
                            <ref role="3cqZAo" node="6aMI9gHDZEA" resolve="ruleSet" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="17QLQc" id="6aMI9gHGeEJ" role="3clFbw">
                      <node concept="2GrUjf" id="6aMI9gHGeFp" role="3uHU7w">
                        <ref role="2Gs0qQ" node="2WSWNq1QBqR" resolve="aspect" />
                      </node>
                      <node concept="2OqwBi" id="6aMI9gHGefM" role="3uHU7B">
                        <node concept="37vLTw" id="6aMI9gHGe4X" role="2Oq$k0">
                          <ref role="3cqZAo" node="6aMI9gHDZEA" resolve="ruleSet" />
                        </node>
                        <node concept="3TrEf2" id="6aMI9gHGetU" role="2OqNvi">
                          <ref role="3Tt5mk" to="7ggn:55f2HNAp5cR" resolve="aspect" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4kJ$pn8w2BP" role="3cqZAp">
                <node concept="3clFbS" id="4kJ$pn8w2BR" role="3clFbx">
                  <node concept="2JFkCU" id="4kJ$pn8w2yE" role="3cqZAp">
                    <node concept="tCFHf" id="4kJ$pn8w2zj" role="2JFLmv">
                      <ref role="tCJdB" node="4kJ$pn8loKF" resolve="MoveToAspectRuleSet" />
                      <node concept="37vLTw" id="4kJ$pn8w2zz" role="2J__8u">
                        <ref role="3cqZAo" node="6aMI9gHDZEA" resolve="ruleSet" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="4kJ$pn8w2WF" role="3clFbw">
                  <node concept="2OqwBi" id="4kJ$pn8w2WH" role="3fr31v">
                    <node concept="37vLTw" id="4kJ$pn8w2WI" role="2Oq$k0">
                      <ref role="3cqZAo" node="6aMI9gHDZEA" resolve="ruleSet" />
                    </node>
                    <node concept="1mIQ4w" id="4kJ$pn8w2WJ" role="2OqNvi">
                      <node concept="chp4Y" id="4kJ$pn8w2WK" role="cj9EA">
                        <ref role="cht4Q" to="7ggn:4kJ$pn77AZT" resolve="AspectRuleSet" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="4kJ$pn8xtg8" role="9aQIa">
                  <node concept="3clFbS" id="4kJ$pn8xtg9" role="9aQI4">
                    <node concept="2JFkCU" id="4kJ$pn8xtu_" role="3cqZAp">
                      <node concept="tCFHf" id="4kJ$pn8xtuQ" role="2JFLmv">
                        <ref role="tCJdB" node="4kJ$pn8x9SW" resolve="MoveToRuleSet" />
                        <node concept="37vLTw" id="4kJ$pn8xtv6" role="2J__8u">
                          <ref role="3cqZAo" node="6aMI9gHDZEA" resolve="ruleSet" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Jncv_" id="3gm2YTu$w1W" role="3cqZAp">
                <ref role="JncvD" to="7ggn:6HWpSUEuark" resolve="NodeRuleSet" />
                <node concept="37vLTw" id="3gm2YTu$w3d" role="JncvB">
                  <ref role="3cqZAo" node="6aMI9gHDZEA" resolve="ruleSet" />
                </node>
                <node concept="3clFbS" id="3gm2YTu$w20" role="Jncv$">
                  <node concept="2Gpval" id="3gm2YTu_a6P" role="3cqZAp">
                    <node concept="2GrKxI" id="3gm2YTu_a6R" role="2Gsz3X">
                      <property role="TrG5h" value="sup" />
                    </node>
                    <node concept="3clFbS" id="3gm2YTu_a6V" role="2LFqv$">
                      <node concept="2JFkCU" id="3gm2YTu_aqX" role="3cqZAp">
                        <node concept="tCFHf" id="3gm2YTu_arg" role="2JFLmv">
                          <ref role="tCJdB" node="3gm2YTuzFzJ" resolve="MoveToSuperOrSub" />
                          <node concept="37vLTw" id="3gm2YTu_ary" role="2J__8u">
                            <ref role="3cqZAo" node="6aMI9gHDZEA" resolve="ruleSet" />
                          </node>
                          <node concept="2GrUjf" id="3gm2YTu_as7" role="2J__8u">
                            <ref role="2Gs0qQ" node="3gm2YTu_a6R" resolve="sup" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3gm2YTu$xs5" role="2GsD0m">
                      <node concept="2OqwBi" id="3gm2YTu$ww2" role="2Oq$k0">
                        <node concept="Jnkvi" id="3gm2YTu$wiC" role="2Oq$k0">
                          <ref role="1M0zk5" node="3gm2YTu$w22" resolve="nodeRuleSet" />
                        </node>
                        <node concept="3TrEf2" id="3gm2YTu$wOA" role="2OqNvi">
                          <ref role="3Tt5mk" to="7ggn:6HWpSUEuarY" resolve="concept" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="3gm2YTu_7bx" role="2OqNvi">
                        <ref role="37wK5l" to="tpcn:hMuxyK2" resolve="getImmediateSuperconcepts" />
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="3gm2YTuWanz" role="3cqZAp">
                    <node concept="2GrKxI" id="3gm2YTuWan$" role="2Gsz3X">
                      <property role="TrG5h" value="sub" />
                    </node>
                    <node concept="3clFbS" id="3gm2YTuWan_" role="2LFqv$">
                      <node concept="2JFkCU" id="3gm2YTuWanA" role="3cqZAp">
                        <node concept="tCFHf" id="3gm2YTuWanB" role="2JFLmv">
                          <ref role="tCJdB" node="3gm2YTuzFzJ" resolve="MoveToSuperOrSub" />
                          <node concept="37vLTw" id="3gm2YTuWanC" role="2J__8u">
                            <ref role="3cqZAo" node="6aMI9gHDZEA" resolve="ruleSet" />
                          </node>
                          <node concept="2GrUjf" id="3gm2YTuWanD" role="2J__8u">
                            <ref role="2Gs0qQ" node="3gm2YTuWan$" resolve="sub" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3gm2YTuWejP" role="2GsD0m">
                      <node concept="2OqwBi" id="3gm2YTuWb40" role="2Oq$k0">
                        <node concept="2OqwBi" id="3gm2YTuWanE" role="2Oq$k0">
                          <node concept="2OqwBi" id="3gm2YTuWanF" role="2Oq$k0">
                            <node concept="Jnkvi" id="3gm2YTuWanG" role="2Oq$k0">
                              <ref role="1M0zk5" node="3gm2YTu$w22" resolve="nodeRuleSet" />
                            </node>
                            <node concept="3TrEf2" id="3gm2YTuWanH" role="2OqNvi">
                              <ref role="3Tt5mk" to="7ggn:6HWpSUEuarY" resolve="concept" />
                            </node>
                          </node>
                          <node concept="I4A8Y" id="3gm2YTuWaUI" role="2OqNvi" />
                        </node>
                        <node concept="2RRcyG" id="3gm2YTuWbhA" role="2OqNvi">
                          <node concept="chp4Y" id="3gm2YTuWbit" role="3MHsoP">
                            <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                          </node>
                        </node>
                      </node>
                      <node concept="3zZkjj" id="3gm2YTuWifV" role="2OqNvi">
                        <node concept="1bVj0M" id="3gm2YTuWifX" role="23t8la">
                          <node concept="3clFbS" id="3gm2YTuWifY" role="1bW5cS">
                            <node concept="3clFbF" id="3gm2YTuWiuZ" role="3cqZAp">
                              <node concept="2OqwBi" id="3gm2YTuWmO6" role="3clFbG">
                                <node concept="2OqwBi" id="3gm2YTuWiIr" role="2Oq$k0">
                                  <node concept="37vLTw" id="3gm2YTuWiuY" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3gm2YTuWifZ" resolve="c" />
                                  </node>
                                  <node concept="2qgKlT" id="3gm2YTuWj8W" role="2OqNvi">
                                    <ref role="37wK5l" to="tpcn:hMuxyK2" resolve="getImmediateSuperconcepts" />
                                  </node>
                                </node>
                                <node concept="3JPx81" id="3gm2YTuWqUL" role="2OqNvi">
                                  <node concept="2OqwBi" id="3gm2YTuWsII" role="25WWJ7">
                                    <node concept="Jnkvi" id="3gm2YTuWsq$" role="2Oq$k0">
                                      <ref role="1M0zk5" node="3gm2YTu$w22" resolve="nodeRuleSet" />
                                    </node>
                                    <node concept="3TrEf2" id="3gm2YTuWtfg" role="2OqNvi">
                                      <ref role="3Tt5mk" to="7ggn:6HWpSUEuarY" resolve="concept" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="3gm2YTuWifZ" role="1bW2Oz">
                            <property role="TrG5h" value="c" />
                            <node concept="2jxLKc" id="3gm2YTuWig0" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="JncvC" id="3gm2YTu$w22" role="JncvA">
                  <property role="TrG5h" value="nodeRuleSet" />
                  <node concept="2jxLKc" id="3gm2YTu$w23" role="1tU5fm" />
                </node>
              </node>
              <node concept="2JFkCU" id="3m__5a1Z84q" role="3cqZAp">
                <node concept="tCFHf" id="3m__5a1ZDl$" role="2JFLmv">
                  <ref role="tCJdB" node="3m__5a1Zn1S" resolve="FormatRuleset" />
                  <node concept="37vLTw" id="3m__5a2uNsf" role="2J__8u">
                    <ref role="3cqZAo" node="6aMI9gHDZEA" resolve="ruleSet" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6aMI9gHE0b6" role="3clFbw">
              <node concept="10Nm6u" id="6aMI9gHE0hu" role="3uHU7w" />
              <node concept="37vLTw" id="6aMI9gHE00j" role="3uHU7B">
                <ref role="3cqZAo" node="6aMI9gHDZEA" resolve="ruleSet" />
              </node>
            </node>
          </node>
        </node>
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
    <node concept="2tJIrI" id="3gm2YTwHqM6" role="jymVt" />
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
      <node concept="37vLTG" id="2wML7sQ2iR0" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="2wML7sQ2r64" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
        </node>
      </node>
      <node concept="3clFbS" id="57dWhtn5FY4" role="3clF47">
        <node concept="3clFbJ" id="1dKdiONNdQ0" role="3cqZAp">
          <node concept="3clFbS" id="1dKdiONNdQ2" role="3clFbx">
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
          <node concept="3fqX7Q" id="1dKdiONNjEO" role="3clFbw">
            <node concept="2OqwBi" id="1dKdiONNjEQ" role="3fr31v">
              <node concept="2OqwBi" id="1dKdiONNjER" role="2Oq$k0">
                <node concept="Xjq3P" id="1dKdiONNjES" role="2Oq$k0" />
                <node concept="2OwXpG" id="1dKdiONNjET" role="2OqNvi">
                  <ref role="2Oxat5" node="1sOlkZtGU54" resolve="ideaProject" />
                </node>
              </node>
              <node concept="liA8E" id="1dKdiONNjEU" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.isDisposed()" resolve="isDisposed" />
              </node>
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
        <node concept="3clFbJ" id="1dKdiONNjUb" role="3cqZAp">
          <node concept="3clFbS" id="1dKdiONNjUc" role="3clFbx">
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
            <node concept="3cpWs8" id="5csmg0v4Pjs" role="3cqZAp">
              <node concept="3cpWsn" id="5csmg0v4Pjt" role="3cpWs9">
                <property role="TrG5h" value="trace" />
                <node concept="1xUVSX" id="5csmg0v4Pju" role="1tU5fm">
                  <ref role="1xYkEM" node="76$5hx$c86E" resolve="DClareTrace" />
                </node>
                <node concept="2OqwBi" id="5csmg0v4Pjv" role="33vP2m">
                  <node concept="37vLTw" id="5csmg0v4Pjw" role="2Oq$k0">
                    <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
                  </node>
                  <node concept="LR4U6" id="5csmg0v4Pjx" role="2OqNvi">
                    <ref role="LR4U5" node="76$5hx$c86E" resolve="DClareTrace" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5csmg0v4Pjy" role="3cqZAp">
              <node concept="3clFbS" id="5csmg0v4Pjz" role="3clFbx">
                <node concept="3clFbF" id="5csmg0v4Pj$" role="3cqZAp">
                  <node concept="2OqwBi" id="5csmg0v4Pj_" role="3clFbG">
                    <node concept="37vLTw" id="5csmg0v4PjA" role="2Oq$k0">
                      <ref role="3cqZAo" node="5csmg0v4Pjt" resolve="trace" />
                    </node>
                    <node concept="2XshWL" id="5csmg0v4PjB" role="2OqNvi">
                      <ref role="2WH_rO" node="76$5hx$cdTb" resolve="on" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5csmg0v4PjC" role="3clFbw">
                <node concept="10Nm6u" id="5csmg0v4PjD" role="3uHU7w" />
                <node concept="37vLTw" id="5csmg0v4PjE" role="3uHU7B">
                  <ref role="3cqZAo" node="5csmg0v4Pjt" resolve="trace" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5csmg0v4P3S" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="1dKdiONNjUe" role="3clFbw">
            <node concept="2OqwBi" id="1dKdiONNjUf" role="3fr31v">
              <node concept="2OqwBi" id="1dKdiONNjUg" role="2Oq$k0">
                <node concept="Xjq3P" id="1dKdiONNjUh" role="2Oq$k0" />
                <node concept="2OwXpG" id="1dKdiONNjUi" role="2OqNvi">
                  <ref role="2Oxat5" node="1sOlkZtGU54" resolve="ideaProject" />
                </node>
              </node>
              <node concept="liA8E" id="1dKdiONNjUj" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.isDisposed()" resolve="isDisposed" />
              </node>
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
      <property role="TrG5h" value="commiting" />
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
      <node concept="3clFbS" id="1DUQ$Ow_31q" role="3clF47">
        <node concept="3clFbJ" id="1dKdiONNkaH" role="3cqZAp">
          <node concept="3clFbS" id="1dKdiONNkaI" role="3clFbx">
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
                      <ref role="2WH_rO" node="3zaVTDehllW" resolve="commiting" />
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
            <node concept="3cpWs8" id="7po6rTe6DI6" role="3cqZAp">
              <node concept="3cpWsn" id="7po6rTe6DI9" role="3cpWs9">
                <property role="TrG5h" value="trace" />
                <node concept="1xUVSX" id="7po6rTe6DI4" role="1tU5fm">
                  <ref role="1xYkEM" node="76$5hx$c86E" resolve="DClareTrace" />
                </node>
                <node concept="2OqwBi" id="7po6rTe6GtK" role="33vP2m">
                  <node concept="37vLTw" id="7po6rTe6FF1" role="2Oq$k0">
                    <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
                  </node>
                  <node concept="LR4U6" id="7po6rTe6Hxs" role="2OqNvi">
                    <ref role="LR4U5" node="76$5hx$c86E" resolve="DClareTrace" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7po6rTe6JUk" role="3cqZAp">
              <node concept="3clFbS" id="7po6rTe6JUm" role="3clFbx">
                <node concept="3clFbF" id="7po6rTe6NQC" role="3cqZAp">
                  <node concept="2OqwBi" id="7po6rTe6Okc" role="3clFbG">
                    <node concept="37vLTw" id="7po6rTe6NQA" role="2Oq$k0">
                      <ref role="3cqZAo" node="7po6rTe6DI9" resolve="trace" />
                    </node>
                    <node concept="2XshWL" id="7po6rTe7xLd" role="2OqNvi">
                      <ref role="2WH_rO" node="7po6rTe6Qeq" resolve="commiting" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="7po6rTe6Lzl" role="3clFbw">
                <node concept="10Nm6u" id="7po6rTe6MvZ" role="3uHU7w" />
                <node concept="37vLTw" id="7po6rTe6KXb" role="3uHU7B">
                  <ref role="3cqZAo" node="7po6rTe6DI9" resolve="trace" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1dKdiONNkaK" role="3clFbw">
            <node concept="2OqwBi" id="1dKdiONNkaL" role="3fr31v">
              <node concept="2OqwBi" id="1dKdiONNkaM" role="2Oq$k0">
                <node concept="Xjq3P" id="1dKdiONNkaN" role="2Oq$k0" />
                <node concept="2OwXpG" id="1dKdiONNkaO" role="2OqNvi">
                  <ref role="2Oxat5" node="1sOlkZtGU54" resolve="ideaProject" />
                </node>
              </node>
              <node concept="liA8E" id="1dKdiONNkaP" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.isDisposed()" resolve="isDisposed" />
              </node>
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
        <node concept="3clFbJ" id="1dKdiONNkon" role="3cqZAp">
          <node concept="3clFbS" id="1dKdiONNkoo" role="3clFbx">
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
            <node concept="3cpWs8" id="5csmg0v4p4N" role="3cqZAp">
              <node concept="3cpWsn" id="5csmg0v4p4Q" role="3cpWs9">
                <property role="TrG5h" value="trace" />
                <node concept="1xUVSX" id="5csmg0v4p4L" role="1tU5fm">
                  <ref role="1xYkEM" node="76$5hx$c86E" resolve="DClareTrace" />
                </node>
                <node concept="2OqwBi" id="5csmg0v4shh" role="33vP2m">
                  <node concept="37vLTw" id="5csmg0v4rB0" role="2Oq$k0">
                    <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
                  </node>
                  <node concept="LR4U6" id="5csmg0v4sY2" role="2OqNvi">
                    <ref role="LR4U5" node="76$5hx$c86E" resolve="DClareTrace" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5csmg0v4vVJ" role="3cqZAp">
              <node concept="3clFbS" id="5csmg0v4vVL" role="3clFbx">
                <node concept="3clFbF" id="5csmg0v4zHO" role="3cqZAp">
                  <node concept="2OqwBi" id="5csmg0v4$hD" role="3clFbG">
                    <node concept="37vLTw" id="5csmg0v4zHM" role="2Oq$k0">
                      <ref role="3cqZAo" node="5csmg0v4p4Q" resolve="trace" />
                    </node>
                    <node concept="2XshWL" id="5csmg0v4OJU" role="2OqNvi">
                      <ref role="2WH_rO" node="5csmg0v4AjY" resolve="off" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5csmg0v4xAu" role="3clFbw">
                <node concept="10Nm6u" id="5csmg0v4yy4" role="3uHU7w" />
                <node concept="37vLTw" id="5csmg0v4x1q" role="3uHU7B">
                  <ref role="3cqZAo" node="5csmg0v4p4Q" resolve="trace" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1dKdiONNkoq" role="3clFbw">
            <node concept="2OqwBi" id="1dKdiONNkor" role="3fr31v">
              <node concept="2OqwBi" id="1dKdiONNkos" role="2Oq$k0">
                <node concept="Xjq3P" id="1dKdiONNkot" role="2Oq$k0" />
                <node concept="2OwXpG" id="1dKdiONNkou" role="2OqNvi">
                  <ref role="2Oxat5" node="1sOlkZtGU54" resolve="ideaProject" />
                </node>
              </node>
              <node concept="liA8E" id="1dKdiONNkov" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.isDisposed()" resolve="isDisposed" />
              </node>
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
        <node concept="3clFbJ" id="1dKdiONNkAE" role="3cqZAp">
          <node concept="3clFbS" id="1dKdiONNkAF" role="3clFbx">
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
            <node concept="3cpWs8" id="7po6rTe81Bn" role="3cqZAp">
              <node concept="3cpWsn" id="7po6rTe81Bq" role="3cpWs9">
                <property role="TrG5h" value="checks" />
                <node concept="1xUVSX" id="7po6rTe81Bl" role="1tU5fm">
                  <ref role="1xYkEM" node="cEL$G_Lser" resolve="DClareModelChecks" />
                </node>
                <node concept="2OqwBi" id="7po6rTe84lj" role="33vP2m">
                  <node concept="37vLTw" id="7po6rTe83xZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
                  </node>
                  <node concept="LR4U6" id="7po6rTe85_a" role="2OqNvi">
                    <ref role="LR4U5" node="cEL$G_Lser" resolve="DClareModelChecks" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7po6rTe87nN" role="3cqZAp">
              <node concept="3clFbS" id="7po6rTe87nP" role="3clFbx">
                <node concept="3clFbF" id="7po6rTe8diS" role="3cqZAp">
                  <node concept="2OqwBi" id="7po6rTe8dSo" role="3clFbG">
                    <node concept="37vLTw" id="7po6rTe8diQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="7po6rTe81Bq" resolve="checks" />
                    </node>
                    <node concept="2XshWL" id="7po6rTe8esb" role="2OqNvi">
                      <ref role="2WH_rO" node="7po6rTe7Vpa" resolve="active" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="7po6rTe8aYr" role="3clFbw">
                <node concept="10Nm6u" id="7po6rTe8bZb" role="3uHU7w" />
                <node concept="37vLTw" id="7po6rTe8anG" role="3uHU7B">
                  <ref role="3cqZAo" node="7po6rTe81Bq" resolve="checks" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1dKdiONNkAH" role="3clFbw">
            <node concept="2OqwBi" id="1dKdiONNkAI" role="3fr31v">
              <node concept="2OqwBi" id="1dKdiONNkAJ" role="2Oq$k0">
                <node concept="Xjq3P" id="1dKdiONNkAK" role="2Oq$k0" />
                <node concept="2OwXpG" id="1dKdiONNkAL" role="2OqNvi">
                  <ref role="2Oxat5" node="1sOlkZtGU54" resolve="ideaProject" />
                </node>
              </node>
              <node concept="liA8E" id="1dKdiONNkAM" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.isDisposed()" resolve="isDisposed" />
              </node>
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
        <node concept="3clFbJ" id="1dKdiONNkPA" role="3cqZAp">
          <node concept="3clFbS" id="1dKdiONNkPB" role="3clFbx">
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
            <node concept="3cpWs8" id="25cMPXGp8d5" role="3cqZAp">
              <node concept="3cpWsn" id="25cMPXGp8d6" role="3cpWs9">
                <property role="TrG5h" value="trace" />
                <node concept="1xUVSX" id="25cMPXGp8d7" role="1tU5fm">
                  <ref role="1xYkEM" node="76$5hx$c86E" resolve="DClareTrace" />
                </node>
                <node concept="2OqwBi" id="25cMPXGp8d8" role="33vP2m">
                  <node concept="37vLTw" id="25cMPXGp8d9" role="2Oq$k0">
                    <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
                  </node>
                  <node concept="LR4U6" id="25cMPXGp8da" role="2OqNvi">
                    <ref role="LR4U5" node="76$5hx$c86E" resolve="DClareTrace" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="25cMPXGp8db" role="3cqZAp">
              <node concept="3clFbS" id="25cMPXGp8dc" role="3clFbx">
                <node concept="3clFbF" id="25cMPXGp8dd" role="3cqZAp">
                  <node concept="2OqwBi" id="25cMPXGp8de" role="3clFbG">
                    <node concept="37vLTw" id="25cMPXGp8df" role="2Oq$k0">
                      <ref role="3cqZAo" node="25cMPXGp8d6" resolve="trace" />
                    </node>
                    <node concept="2XshWL" id="25cMPXGp8dg" role="2OqNvi">
                      <ref role="2WH_rO" node="25cMPXGpWqk" resolve="idle" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="25cMPXGp8dh" role="3clFbw">
                <node concept="10Nm6u" id="25cMPXGp8di" role="3uHU7w" />
                <node concept="37vLTw" id="25cMPXGp8dj" role="3uHU7B">
                  <ref role="3cqZAo" node="25cMPXGp8d6" resolve="trace" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="25cMPXGp7Sz" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="1dKdiONNkPD" role="3clFbw">
            <node concept="2OqwBi" id="1dKdiONNkPE" role="3fr31v">
              <node concept="2OqwBi" id="1dKdiONNkPF" role="2Oq$k0">
                <node concept="Xjq3P" id="1dKdiONNkPG" role="2Oq$k0" />
                <node concept="2OwXpG" id="1dKdiONNkPH" role="2OqNvi">
                  <ref role="2Oxat5" node="1sOlkZtGU54" resolve="ideaProject" />
                </node>
              </node>
              <node concept="liA8E" id="1dKdiONNkPI" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.isDisposed()" resolve="isDisposed" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="QlQbLbRUPz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="26byUJz3tyD" role="jymVt" />
    <node concept="3clFb_" id="26byUJz3sN9" role="jymVt">
      <property role="TrG5h" value="aspects" />
      <node concept="3Tm1VV" id="26byUJz3sNa" role="1B3o_S" />
      <node concept="3cqZAl" id="26byUJz3sNc" role="3clF45" />
      <node concept="37vLTG" id="26byUJz3sNd" role="3clF46">
        <property role="TrG5h" value="aspects" />
        <node concept="3uibUv" id="26byUJz3sNe" role="1tU5fm">
          <ref role="3uigEE" to="zrbp:~List" resolve="List" />
          <node concept="3uibUv" id="26byUJz3sNf" role="11_B2D">
            <ref role="3uigEE" to="t4tl:~IAspect" resolve="IAspect" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="26byUJz3sNg" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="26byUJz3sNh" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
        </node>
      </node>
      <node concept="3clFbS" id="26byUJz3sNi" role="3clF47">
        <node concept="3clFbJ" id="26byUJz3vBc" role="3cqZAp">
          <node concept="3clFbS" id="26byUJz3vBd" role="3clFbx">
            <node concept="3cpWs8" id="26byUJz3vBe" role="3cqZAp">
              <node concept="3cpWsn" id="26byUJz3vBf" role="3cpWs9">
                <property role="TrG5h" value="messages" />
                <node concept="1xUVSX" id="26byUJz3vBg" role="1tU5fm">
                  <ref role="1xYkEM" node="3OqCb4$v3q7" resolve="DClareMessages" />
                </node>
                <node concept="2OqwBi" id="26byUJz3vBh" role="33vP2m">
                  <node concept="37vLTw" id="26byUJz3vBi" role="2Oq$k0">
                    <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
                  </node>
                  <node concept="LR4U6" id="26byUJz3vBj" role="2OqNvi">
                    <ref role="LR4U5" node="3OqCb4$v3q7" resolve="DClareMessages" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="26byUJz3vBk" role="3cqZAp">
              <node concept="3clFbS" id="26byUJz3vBl" role="3clFbx">
                <node concept="3clFbF" id="26byUJz3vBm" role="3cqZAp">
                  <node concept="2OqwBi" id="26byUJz3vBn" role="3clFbG">
                    <node concept="37vLTw" id="26byUJz3vBo" role="2Oq$k0">
                      <ref role="3cqZAo" node="26byUJz3vBf" resolve="messages" />
                    </node>
                    <node concept="2XshWL" id="26byUJz3vBp" role="2OqNvi">
                      <ref role="2WH_rO" node="26byUJz3_Ah" resolve="aspects" />
                      <node concept="37vLTw" id="26byUJz5xG4" role="2XxRq1">
                        <ref role="3cqZAo" node="26byUJz3sNd" resolve="aspects" />
                      </node>
                      <node concept="2YIFZM" id="26byUJzED7u" role="2XxRq1">
                        <ref role="37wK5l" node="3gm2YTwEKsS" resolve="getOrCreatePrefs" />
                        <ref role="1Pybhc" node="3gm2YTwE11B" resolve="AspectPrefs" />
                        <node concept="37vLTw" id="26byUJzEs7h" role="37wK5m">
                          <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="26byUJz3vBs" role="3clFbw">
                <node concept="10Nm6u" id="26byUJz3vBt" role="3uHU7w" />
                <node concept="37vLTw" id="26byUJz3vBu" role="3uHU7B">
                  <ref role="3cqZAo" node="26byUJz3vBf" resolve="messages" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="26byUJz3vBv" role="3clFbw">
            <node concept="2OqwBi" id="26byUJz3vBw" role="3fr31v">
              <node concept="2OqwBi" id="26byUJz3vBx" role="2Oq$k0">
                <node concept="Xjq3P" id="26byUJz3vBy" role="2Oq$k0" />
                <node concept="2OwXpG" id="26byUJz3vBz" role="2OqNvi">
                  <ref role="2Oxat5" node="1sOlkZtGU54" resolve="ideaProject" />
                </node>
              </node>
              <node concept="liA8E" id="26byUJz3vB$" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.isDisposed()" resolve="isDisposed" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="26byUJz3sNj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="41anwop6GhU" role="jymVt" />
    <node concept="3clFb_" id="41anwop6Crm" role="jymVt">
      <property role="TrG5h" value="checking" />
      <node concept="3Tm1VV" id="41anwop6Crn" role="1B3o_S" />
      <node concept="3cqZAl" id="41anwop6Crp" role="3clF45" />
      <node concept="37vLTG" id="41anwop6Crq" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="41anwop6Crr" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="41anwop6Crs" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="3uibUv" id="41anwop6Crt" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
        </node>
      </node>
      <node concept="3clFbS" id="41anwop6Cru" role="3clF47">
        <node concept="3clFbJ" id="2fdaBvd3EkS" role="3cqZAp">
          <node concept="3clFbS" id="2fdaBvd3EkT" role="3clFbx">
            <node concept="3cpWs8" id="2fdaBvd3EkU" role="3cqZAp">
              <node concept="3cpWsn" id="2fdaBvd3EkV" role="3cpWs9">
                <property role="TrG5h" value="messages" />
                <node concept="1xUVSX" id="2fdaBvd3EkW" role="1tU5fm">
                  <ref role="1xYkEM" node="3OqCb4$v3q7" resolve="DClareMessages" />
                </node>
                <node concept="2OqwBi" id="2fdaBvd3EkX" role="33vP2m">
                  <node concept="37vLTw" id="2fdaBvd3EkY" role="2Oq$k0">
                    <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
                  </node>
                  <node concept="LR4U6" id="2fdaBvd3EkZ" role="2OqNvi">
                    <ref role="LR4U5" node="3OqCb4$v3q7" resolve="DClareMessages" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2fdaBvd3El0" role="3cqZAp">
              <node concept="3clFbS" id="2fdaBvd3El1" role="3clFbx">
                <node concept="3clFbF" id="2fdaBvd3El2" role="3cqZAp">
                  <node concept="2OqwBi" id="2fdaBvd3El3" role="3clFbG">
                    <node concept="37vLTw" id="2fdaBvd3El4" role="2Oq$k0">
                      <ref role="3cqZAo" node="2fdaBvd3EkV" resolve="messages" />
                    </node>
                    <node concept="2XshWL" id="2fdaBvd3El5" role="2OqNvi">
                      <ref role="2WH_rO" node="2fdaBvd3CpH" resolve="checking" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2fdaBvd3El6" role="3clFbw">
                <node concept="10Nm6u" id="2fdaBvd3El7" role="3uHU7w" />
                <node concept="37vLTw" id="2fdaBvd3El8" role="3uHU7B">
                  <ref role="3cqZAo" node="2fdaBvd3EkV" resolve="messages" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2fdaBvd3El9" role="3cqZAp">
              <node concept="3cpWsn" id="2fdaBvd3Ela" role="3cpWs9">
                <property role="TrG5h" value="trace" />
                <node concept="1xUVSX" id="2fdaBvd3Elb" role="1tU5fm">
                  <ref role="1xYkEM" node="76$5hx$c86E" resolve="DClareTrace" />
                </node>
                <node concept="2OqwBi" id="2fdaBvd3Elc" role="33vP2m">
                  <node concept="37vLTw" id="2fdaBvd3Eld" role="2Oq$k0">
                    <ref role="3cqZAo" node="1sOlkZtGU54" resolve="ideaProject" />
                  </node>
                  <node concept="LR4U6" id="2fdaBvd3Ele" role="2OqNvi">
                    <ref role="LR4U5" node="76$5hx$c86E" resolve="DClareTrace" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2fdaBvd3Elf" role="3cqZAp">
              <node concept="3clFbS" id="2fdaBvd3Elg" role="3clFbx">
                <node concept="3clFbF" id="2fdaBvd3Elh" role="3cqZAp">
                  <node concept="2OqwBi" id="2fdaBvd3Eli" role="3clFbG">
                    <node concept="37vLTw" id="2fdaBvd3Elj" role="2Oq$k0">
                      <ref role="3cqZAo" node="2fdaBvd3Ela" resolve="trace" />
                    </node>
                    <node concept="2XshWL" id="2fdaBvd3Elk" role="2OqNvi">
                      <ref role="2WH_rO" node="7po6rTe6Qeq" resolve="checking" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2fdaBvd3Ell" role="3clFbw">
                <node concept="10Nm6u" id="2fdaBvd3Elm" role="3uHU7w" />
                <node concept="37vLTw" id="2fdaBvd3Eln" role="3uHU7B">
                  <ref role="3cqZAo" node="2fdaBvd3Ela" resolve="trace" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2fdaBvd3Elo" role="3clFbw">
            <node concept="2OqwBi" id="2fdaBvd3Elp" role="3fr31v">
              <node concept="2OqwBi" id="2fdaBvd3Elq" role="2Oq$k0">
                <node concept="Xjq3P" id="2fdaBvd3Elr" role="2Oq$k0" />
                <node concept="2OwXpG" id="2fdaBvd3Els" role="2OqNvi">
                  <ref role="2Oxat5" node="1sOlkZtGU54" resolve="ideaProject" />
                </node>
              </node>
              <node concept="liA8E" id="2fdaBvd3Elt" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.isDisposed()" resolve="isDisposed" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="41anwop6Crv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" />
      </node>
    </node>
  </node>
  <node concept="sEfby" id="3OqCb4$v3q7">
    <property role="TrG5h" value="DClareMessages" />
    <property role="2XNbzY" value="Status" />
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
      <property role="TrG5h" value="commiting" />
      <node concept="3cqZAl" id="3zaVTDehllX" role="3clF45" />
      <node concept="3clFbS" id="3zaVTDehllY" role="3clF47">
        <node concept="3clFbF" id="6omEkmwjFDK" role="3cqZAp">
          <node concept="2OqwBi" id="6omEkmwjGs9" role="3clFbG">
            <node concept="2OqwBi" id="6omEkmwjFKW" role="2Oq$k0">
              <node concept="2WthIp" id="6omEkmwjFDJ" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6omEkmwjFSR" role="2OqNvi">
                <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
              </node>
            </node>
            <node concept="liA8E" id="6omEkmwjHaN" role="2OqNvi">
              <ref role="37wK5l" node="1DUQ$OwuKJQ" resolve="commiting" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="2fdaBvd3CpH" role="2XNbBy">
      <property role="TrG5h" value="checking" />
      <node concept="3cqZAl" id="2fdaBvd3CpI" role="3clF45" />
      <node concept="3clFbS" id="2fdaBvd3CpJ" role="3clF47">
        <node concept="3clFbF" id="2fdaBvd3CpK" role="3cqZAp">
          <node concept="2OqwBi" id="2fdaBvd3CpL" role="3clFbG">
            <node concept="2OqwBi" id="2fdaBvd3CpM" role="2Oq$k0">
              <node concept="2WthIp" id="2fdaBvd3CpN" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2fdaBvd3CpO" role="2OqNvi">
                <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
              </node>
            </node>
            <node concept="liA8E" id="2fdaBvd3CpP" role="2OqNvi">
              <ref role="37wK5l" node="2fdaBvd2rqQ" resolve="checking" />
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
    <node concept="2XrIbr" id="26byUJz3_Ah" role="2XNbBy">
      <property role="TrG5h" value="aspects" />
      <node concept="37vLTG" id="26byUJz5$uW" role="3clF46">
        <property role="TrG5h" value="aspects" />
        <node concept="3uibUv" id="26byUJz5$yQ" role="1tU5fm">
          <ref role="3uigEE" to="zrbp:~List" resolve="List" />
          <node concept="3uibUv" id="26byUJz5$E8" role="11_B2D">
            <ref role="3uigEE" to="t4tl:~IAspect" resolve="IAspect" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="26byUJzlKnB" role="3clF46">
        <property role="TrG5h" value="prefs" />
        <node concept="3uibUv" id="26byUJzlKso" role="1tU5fm">
          <ref role="3uigEE" node="3gm2YTwE11B" resolve="AspectPrefs" />
        </node>
      </node>
      <node concept="3cqZAl" id="26byUJz3AgU" role="3clF45" />
      <node concept="3clFbS" id="26byUJz3_Aj" role="3clF47">
        <node concept="3clFbF" id="26byUJz3AuU" role="3cqZAp">
          <node concept="2OqwBi" id="26byUJz3BqV" role="3clFbG">
            <node concept="2OqwBi" id="26byUJz3AAo" role="2Oq$k0">
              <node concept="2WthIp" id="26byUJz3AuT" role="2Oq$k0" />
              <node concept="2BZ7hE" id="26byUJz3AIp" role="2OqNvi">
                <ref role="2WH_rO" node="3OqCb4$vqbk" resolve="panel" />
              </node>
            </node>
            <node concept="liA8E" id="26byUJz5$Tx" role="2OqNvi">
              <ref role="37wK5l" node="26byUJz4ucu" resolve="aspects" />
              <node concept="37vLTw" id="26byUJz5$WK" role="37wK5m">
                <ref role="3cqZAo" node="26byUJz5$uW" resolve="aspects" />
              </node>
              <node concept="37vLTw" id="26byUJzEqZk" role="37wK5m">
                <ref role="3cqZAo" node="26byUJzlKnB" resolve="prefs" />
              </node>
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
        <node concept="3clFbJ" id="7zjHQApUBnq" role="3cqZAp">
          <node concept="3clFbS" id="7zjHQApUBns" role="3clFbx">
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
          <node concept="2OqwBi" id="7zjHQApUBWZ" role="3clFbw">
            <node concept="37vLTw" id="7zjHQApUBpH" role="2Oq$k0">
              <ref role="3cqZAo" node="3zaVTDesBUs" resolve="engine" />
            </node>
            <node concept="liA8E" id="7zjHQApUC_1" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DClareMPS.hasMessages()" resolve="hasMessages" />
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
                            <node concept="37vLTw" id="22ExA6fHms8" role="37wK5m">
                              <ref role="3cqZAo" node="1sOlkZtG42m" resolve="mpsProject" />
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
                      <node concept="2OqwBi" id="6q369Il2S7G" role="2Oq$k0">
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
                        <node concept="liA8E" id="6q369Il2TIS" role="2OqNvi">
                          <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.showLightBulb(boolean)" resolve="showLightBulb" />
                          <node concept="3clFbT" id="6q369Il35Nc" role="37wK5m" />
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
                    <node concept="3clFbT" id="6$WcHcpJSmJ" role="37wK5m" />
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
      <node concept="37vLTG" id="22ExA6fHmyG" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="22ExA6fHmyH" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
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
        <node concept="3clFbH" id="6ZxiTOe9061" role="3cqZAp" />
        <node concept="3clFbF" id="6ZxiTOe8MHy" role="3cqZAp">
          <node concept="2OqwBi" id="6ZxiTOe8MHz" role="3clFbG">
            <node concept="2OqwBi" id="6ZxiTOe8MH$" role="2Oq$k0">
              <node concept="Xjq3P" id="6ZxiTOe8MH_" role="2Oq$k0" />
              <node concept="2OwXpG" id="6ZxiTOe8MHA" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="6ZxiTOe8MHB" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~NodeEditorComponent.rebuildEditorContent()" resolve="rebuildEditorContent" />
            </node>
          </node>
        </node>
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
            <node concept="3clFbT" id="7zjHQApBefv" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="3zaVTDevd4m" role="37vLTJ">
              <node concept="37vLTw" id="3zaVTDev3Sc" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="3zaVTDevdHa" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:1DUQ$OwrN1P" resolve="on" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZxiTOe4P1F" role="3cqZAp">
          <node concept="2OqwBi" id="6ZxiTOe5vyu" role="3clFbG">
            <node concept="2OqwBi" id="6ZxiTOe5307" role="2Oq$k0">
              <node concept="Xjq3P" id="6ZxiTOe4P1D" role="2Oq$k0" />
              <node concept="2OwXpG" id="6ZxiTOe5hqW" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="6ZxiTOe5HeR" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~NodeEditorComponent.rebuildEditorContent()" resolve="rebuildEditorContent" />
            </node>
          </node>
        </node>
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
      <property role="TrG5h" value="commiting" />
      <node concept="3cqZAl" id="1DUQ$OwuKJS" role="3clF45" />
      <node concept="3Tm1VV" id="1DUQ$OwuKJT" role="1B3o_S" />
      <node concept="3clFbS" id="1DUQ$OwuKJU" role="3clF47">
        <node concept="3clFbF" id="7zjHQApJ7XX" role="3cqZAp">
          <node concept="37vLTI" id="7zjHQApJ7XY" role="3clFbG">
            <node concept="2OqwBi" id="7zjHQApJ7XZ" role="37vLTx">
              <node concept="1XH99k" id="7zjHQApJ7Y0" role="2Oq$k0">
                <ref role="1XH99l" to="wknp:6omEkmwvEXF" resolve="EngineMood" />
              </node>
              <node concept="2ViDtV" id="7zjHQApJ7Y1" role="2OqNvi">
                <ref role="2ViDtZ" to="wknp:6omEkmwvEXK" resolve="commiting" />
              </node>
            </node>
            <node concept="2OqwBi" id="7zjHQApJ7Y2" role="37vLTJ">
              <node concept="37vLTw" id="7zjHQApJ7Y3" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="7zjHQApJ7Y4" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:3VwCmlf$VFh" resolve="mood" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZxiTOe7XP6" role="3cqZAp" />
        <node concept="3clFbF" id="6ZxiTOe5U2J" role="3cqZAp">
          <node concept="2OqwBi" id="6ZxiTOe5U2K" role="3clFbG">
            <node concept="2OqwBi" id="6ZxiTOe5U2L" role="2Oq$k0">
              <node concept="Xjq3P" id="6ZxiTOe5U2M" role="2Oq$k0" />
              <node concept="2OwXpG" id="6ZxiTOe5U2N" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="6ZxiTOe5U2O" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~NodeEditorComponent.rebuildEditorContent()" resolve="rebuildEditorContent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6omEkmwrYTm" role="3cqZAp">
          <node concept="2OqwBi" id="6omEkmwrYTn" role="3clFbG">
            <node concept="2OqwBi" id="6omEkmwrYTo" role="2Oq$k0">
              <node concept="Xjq3P" id="6omEkmwrYTp" role="2Oq$k0" />
              <node concept="2OwXpG" id="6omEkmwrYTq" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="6omEkmwrYTr" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2fdaBvd2JJq" role="jymVt" />
    <node concept="3clFb_" id="2fdaBvd2rqQ" role="jymVt">
      <property role="TrG5h" value="checking" />
      <node concept="3cqZAl" id="2fdaBvd2rqR" role="3clF45" />
      <node concept="3Tm1VV" id="2fdaBvd2rqS" role="1B3o_S" />
      <node concept="3clFbS" id="2fdaBvd2rqT" role="3clF47">
        <node concept="3clFbF" id="2fdaBvd2rqU" role="3cqZAp">
          <node concept="37vLTI" id="2fdaBvd2rqV" role="3clFbG">
            <node concept="2OqwBi" id="2fdaBvd2rqW" role="37vLTx">
              <node concept="1XH99k" id="2fdaBvd2rqX" role="2Oq$k0">
                <ref role="1XH99l" to="wknp:6omEkmwvEXF" resolve="EngineMood" />
              </node>
              <node concept="2ViDtV" id="2fdaBvd2rqY" role="2OqNvi">
                <ref role="2ViDtZ" to="wknp:2fdaBvd1slT" resolve="checking" />
              </node>
            </node>
            <node concept="2OqwBi" id="2fdaBvd2rqZ" role="37vLTJ">
              <node concept="37vLTw" id="2fdaBvd2rr0" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="2fdaBvd2rr1" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:3VwCmlf$VFh" resolve="mood" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2fdaBvd2rr2" role="3cqZAp" />
        <node concept="3clFbF" id="2fdaBvd2rr3" role="3cqZAp">
          <node concept="2OqwBi" id="2fdaBvd2rr4" role="3clFbG">
            <node concept="2OqwBi" id="2fdaBvd2rr5" role="2Oq$k0">
              <node concept="Xjq3P" id="2fdaBvd2rr6" role="2Oq$k0" />
              <node concept="2OwXpG" id="2fdaBvd2rr7" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="2fdaBvd2rr8" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~NodeEditorComponent.rebuildEditorContent()" resolve="rebuildEditorContent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2fdaBvd2rr9" role="3cqZAp">
          <node concept="2OqwBi" id="2fdaBvd2rra" role="3clFbG">
            <node concept="2OqwBi" id="2fdaBvd2rrb" role="2Oq$k0">
              <node concept="Xjq3P" id="2fdaBvd2rrc" role="2Oq$k0" />
              <node concept="2OwXpG" id="2fdaBvd2rrd" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="2fdaBvd2rre" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6omEkmwrmpm" role="jymVt" />
    <node concept="3clFb_" id="3zaVTDeokEn" role="jymVt">
      <property role="TrG5h" value="off" />
      <node concept="3cqZAl" id="3zaVTDeokEo" role="3clF45" />
      <node concept="3Tm1VV" id="3zaVTDeokEp" role="1B3o_S" />
      <node concept="3clFbS" id="3zaVTDeokEq" role="3clF47">
        <node concept="3clFbF" id="3zaVTDevsY3" role="3cqZAp">
          <node concept="37vLTI" id="3zaVTDevsY4" role="3clFbG">
            <node concept="3clFbT" id="7zjHQApH7Z0" role="37vLTx" />
            <node concept="2OqwBi" id="3zaVTDevsY8" role="37vLTJ">
              <node concept="37vLTw" id="3zaVTDevsY9" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="3zaVTDevsYa" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:1DUQ$OwrN1P" resolve="on" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZxiTOe8oho" role="3cqZAp" />
        <node concept="3clFbF" id="6ZxiTOe6725" role="3cqZAp">
          <node concept="2OqwBi" id="6ZxiTOe6726" role="3clFbG">
            <node concept="2OqwBi" id="6ZxiTOe6727" role="2Oq$k0">
              <node concept="Xjq3P" id="6ZxiTOe6728" role="2Oq$k0" />
              <node concept="2OwXpG" id="6ZxiTOe6729" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="6ZxiTOe672a" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~NodeEditorComponent.rebuildEditorContent()" resolve="rebuildEditorContent" />
            </node>
          </node>
        </node>
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
            <node concept="2OqwBi" id="7zjHQApI8bQ" role="37vLTx">
              <node concept="1XH99k" id="7zjHQApHIL0" role="2Oq$k0">
                <ref role="1XH99l" to="wknp:6omEkmwvEXF" resolve="EngineMood" />
              </node>
              <node concept="2ViDtV" id="7zjHQApIkTo" role="2OqNvi">
                <ref role="2ViDtZ" to="wknp:6omEkmwvEXH" resolve="active" />
              </node>
            </node>
            <node concept="2OqwBi" id="3VwCmlfA3y5" role="37vLTJ">
              <node concept="37vLTw" id="3VwCmlfA2Nj" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="3VwCmlfA3Op" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:3VwCmlf$VFh" resolve="mood" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZxiTOe8_vW" role="3cqZAp" />
        <node concept="3clFbF" id="6ZxiTOe6xjD" role="3cqZAp">
          <node concept="2OqwBi" id="6ZxiTOe6xjE" role="3clFbG">
            <node concept="2OqwBi" id="6ZxiTOe6xjF" role="2Oq$k0">
              <node concept="Xjq3P" id="6ZxiTOe6xjG" role="2Oq$k0" />
              <node concept="2OwXpG" id="6ZxiTOe6xjH" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="6ZxiTOe6xjI" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~NodeEditorComponent.rebuildEditorContent()" resolve="rebuildEditorContent" />
            </node>
          </node>
        </node>
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
        <node concept="3clFbF" id="7zjHQApIy2_" role="3cqZAp">
          <node concept="37vLTI" id="7zjHQApIy2A" role="3clFbG">
            <node concept="2OqwBi" id="7zjHQApIy2B" role="37vLTx">
              <node concept="1XH99k" id="7zjHQApIy2C" role="2Oq$k0">
                <ref role="1XH99l" to="wknp:6omEkmwvEXF" resolve="EngineMood" />
              </node>
              <node concept="2ViDtV" id="7zjHQApIy2D" role="2OqNvi">
                <ref role="2ViDtZ" to="wknp:6omEkmwvEXG" resolve="idle" />
              </node>
            </node>
            <node concept="2OqwBi" id="7zjHQApIy2E" role="37vLTJ">
              <node concept="37vLTw" id="7zjHQApIy2F" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3TrcHB" id="7zjHQApIy2G" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:3VwCmlf$VFh" resolve="mood" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6omEkmwsXS8" role="3cqZAp">
          <node concept="1rXfSq" id="6omEkmwsXS7" role="3clFbG">
            <ref role="37wK5l" node="6omEkmwsXS2" resolve="refreshMessages" />
            <node concept="37vLTw" id="6omEkmwsXS5" role="37wK5m">
              <ref role="3cqZAo" node="30f$n$3bCt3" resolve="getter" />
            </node>
            <node concept="37vLTw" id="6omEkmwsXS6" role="37wK5m">
              <ref role="3cqZAo" node="30f$n$3bHjn" resolve="engine" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZxiTOe7zoo" role="3cqZAp" />
        <node concept="3clFbF" id="6ZxiTOe6VCM" role="3cqZAp">
          <node concept="2OqwBi" id="6ZxiTOe6VCN" role="3clFbG">
            <node concept="2OqwBi" id="6ZxiTOe6VCO" role="2Oq$k0">
              <node concept="Xjq3P" id="6ZxiTOe6VCP" role="2Oq$k0" />
              <node concept="2OwXpG" id="6ZxiTOe6VCQ" role="2OqNvi">
                <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="6ZxiTOe6VCR" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~NodeEditorComponent.rebuildEditorContent()" resolve="rebuildEditorContent" />
            </node>
          </node>
        </node>
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
    <node concept="2tJIrI" id="6omEkmwtj3I" role="jymVt" />
    <node concept="3clFb_" id="26byUJz4ucu" role="jymVt">
      <property role="TrG5h" value="aspects" />
      <node concept="37vLTG" id="26byUJz4HkP" role="3clF46">
        <property role="TrG5h" value="aspects" />
        <node concept="3uibUv" id="26byUJz4UWi" role="1tU5fm">
          <ref role="3uigEE" to="zrbp:~List" resolve="List" />
          <node concept="3uibUv" id="26byUJz4Ziz" role="11_B2D">
            <ref role="3uigEE" to="t4tl:~IAspect" resolve="IAspect" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="26byUJzlZrr" role="3clF46">
        <property role="TrG5h" value="prefs" />
        <node concept="3uibUv" id="26byUJzlZrs" role="1tU5fm">
          <ref role="3uigEE" node="3gm2YTwE11B" resolve="AspectPrefs" />
        </node>
      </node>
      <node concept="3clFbS" id="26byUJz4ucx" role="3clF47">
        <node concept="3cpWs8" id="3_wkb9f2Hy$" role="3cqZAp">
          <node concept="3cpWsn" id="3_wkb9f2HyB" role="3cpWs9">
            <property role="TrG5h" value="nrOffAspects" />
            <node concept="10Oyi0" id="3_wkb9f2Hyy" role="1tU5fm" />
            <node concept="2OqwBi" id="3_wkb9f4tEu" role="33vP2m">
              <node concept="2OqwBi" id="3_wkb9f3Z8v" role="2Oq$k0">
                <node concept="37vLTw" id="3_wkb9f3KnD" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
                </node>
                <node concept="3Tsc0h" id="3_wkb9f4dtx" role="2OqNvi">
                  <ref role="3TtcxE" to="wknp:3gm2YTwH79v" resolve="aspects" />
                </node>
              </node>
              <node concept="34oBXx" id="3_wkb9f4I7R" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="26byUJz8r3H" role="3cqZAp">
          <node concept="2GrKxI" id="26byUJz8r3J" role="2Gsz3X">
            <property role="TrG5h" value="aspect" />
          </node>
          <node concept="37vLTw" id="26byUJz9Yq1" role="2GsD0m">
            <ref role="3cqZAo" node="26byUJz4HkP" resolve="aspects" />
          </node>
          <node concept="3clFbS" id="26byUJz8r3N" role="2LFqv$">
            <node concept="3clFbF" id="3_wkb9f1s_d" role="3cqZAp">
              <node concept="1rXfSq" id="3_wkb9f1s_c" role="3clFbG">
                <ref role="37wK5l" node="3_wkb9eNxl$" resolve="aspectSettings" />
                <node concept="2GrUjf" id="3_wkb9f1Qu9" role="37wK5m">
                  <ref role="2Gs0qQ" node="26byUJz8r3J" resolve="aspect" />
                </node>
                <node concept="37vLTw" id="3_wkb9f2guq" role="37wK5m">
                  <ref role="3cqZAo" node="26byUJzlZrr" resolve="prefs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4vGS3tqqIn" role="3cqZAp">
          <node concept="2GrKxI" id="4vGS3tqqIp" role="2Gsz3X">
            <property role="TrG5h" value="apsect" />
          </node>
          <node concept="2OqwBi" id="4vGS3ts36Q" role="2GsD0m">
            <node concept="37vLTw" id="4vGS3trQ4D" role="2Oq$k0">
              <ref role="3cqZAo" node="26byUJzlZrr" resolve="prefs" />
            </node>
            <node concept="liA8E" id="4vGS3uJ4h4" role="2OqNvi">
              <ref role="37wK5l" node="22ExA6giLRE" resolve="getAspectPrefs" />
            </node>
          </node>
          <node concept="3clFbS" id="4vGS3tqqIt" role="2LFqv$">
            <node concept="3clFbF" id="4vGS3ua852" role="3cqZAp">
              <node concept="1rXfSq" id="4vGS3ua851" role="3clFbG">
                <ref role="37wK5l" node="4vGS3u8OxY" resolve="aspectSettings" />
                <node concept="2GrUjf" id="4vGS3ual1T" role="37wK5m">
                  <ref role="2Gs0qQ" node="4vGS3tqqIp" resolve="apsect" />
                </node>
                <node concept="37vLTw" id="4vGS3ugqQ7" role="37wK5m">
                  <ref role="3cqZAo" node="26byUJzlZrr" resolve="prefs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3_wkb9f5bfB" role="3cqZAp">
          <node concept="3clFbS" id="3_wkb9f5bfD" role="3clFbx">
            <node concept="3clFbF" id="26byUJz5Gb6" role="3cqZAp">
              <node concept="2OqwBi" id="26byUJz5Gb7" role="3clFbG">
                <node concept="2OqwBi" id="26byUJz5Gb8" role="2Oq$k0">
                  <node concept="Xjq3P" id="26byUJz5Gb9" role="2Oq$k0" />
                  <node concept="2OwXpG" id="26byUJz5Gba" role="2OqNvi">
                    <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
                  </node>
                </node>
                <node concept="liA8E" id="26byUJz5Gbb" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~NodeEditorComponent.rebuildEditorContent()" resolve="rebuildEditorContent" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="26byUJz66Df" role="3cqZAp">
              <node concept="2OqwBi" id="26byUJz66Dg" role="3clFbG">
                <node concept="2OqwBi" id="26byUJz66Dh" role="2Oq$k0">
                  <node concept="Xjq3P" id="26byUJz66Di" role="2Oq$k0" />
                  <node concept="2OwXpG" id="26byUJz66Dj" role="2OqNvi">
                    <ref role="2Oxat5" node="3La3n2rObK2" resolve="editor" />
                  </node>
                </node>
                <node concept="liA8E" id="26byUJz66Dk" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3_wkb9f5C7J" role="3clFbw">
            <node concept="2OqwBi" id="3_wkb9f6B3T" role="3uHU7w">
              <node concept="2OqwBi" id="3_wkb9f66$y" role="2Oq$k0">
                <node concept="37vLTw" id="3_wkb9f5R9Y" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
                </node>
                <node concept="3Tsc0h" id="3_wkb9f6lms" role="2OqNvi">
                  <ref role="3TtcxE" to="wknp:3gm2YTwH79v" resolve="aspects" />
                </node>
              </node>
              <node concept="34oBXx" id="3_wkb9f6PrS" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="3_wkb9f5q8y" role="3uHU7B">
              <ref role="3cqZAo" node="3_wkb9f2HyB" resolve="nrOffAspects" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="26byUJz4bXk" role="1B3o_S" />
      <node concept="3cqZAl" id="26byUJz4u5e" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3_wkb9eM3E_" role="jymVt" />
    <node concept="3clFb_" id="3_wkb9eNxl$" role="jymVt">
      <property role="TrG5h" value="aspectSettings" />
      <node concept="37vLTG" id="3_wkb9eOUOa" role="3clF46">
        <property role="TrG5h" value="aspect" />
        <node concept="3uibUv" id="3_wkb9eP9ac" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~IAspect" resolve="IAspect" />
        </node>
      </node>
      <node concept="37vLTG" id="3_wkb9eWxKY" role="3clF46">
        <property role="TrG5h" value="prefs" />
        <node concept="3uibUv" id="3_wkb9eWxKZ" role="1tU5fm">
          <ref role="3uigEE" node="3gm2YTwE11B" resolve="AspectPrefs" />
        </node>
      </node>
      <node concept="3Tqbb2" id="3_wkb9eNOq_" role="3clF45">
        <ref role="ehGHo" to="wknp:3gm2YTwH79_" resolve="AspectSettings" />
      </node>
      <node concept="3Tm6S6" id="4vGS3txJ6x" role="1B3o_S" />
      <node concept="3clFbS" id="3_wkb9eNxlC" role="3clF47">
        <node concept="3cpWs8" id="4vGS3usCGE" role="3cqZAp">
          <node concept="3cpWsn" id="4vGS3usCGF" role="3cpWs9">
            <property role="TrG5h" value="dependencies" />
            <node concept="3uibUv" id="4vGS3usCdF" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="4vGS3usCdI" role="11_B2D">
                <ref role="3uigEE" to="t4tl:~IAspect" resolve="IAspect" />
              </node>
            </node>
            <node concept="2OqwBi" id="4vGS3usCGG" role="33vP2m">
              <node concept="37vLTw" id="4vGS3usCGH" role="2Oq$k0">
                <ref role="3cqZAo" node="3_wkb9eOUOa" resolve="aspect" />
              </node>
              <node concept="liA8E" id="4vGS3usCGI" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~IAspect.getDependencies()" resolve="getDependencies" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4vGS3tJ7fP" role="3cqZAp">
          <node concept="2GrKxI" id="4vGS3tJ7fR" role="2Gsz3X">
            <property role="TrG5h" value="sup" />
          </node>
          <node concept="37vLTw" id="4vGS3usCGK" role="2GsD0m">
            <ref role="3cqZAo" node="4vGS3usCGF" resolve="dependencies" />
          </node>
          <node concept="3clFbS" id="4vGS3tJ7fV" role="2LFqv$">
            <node concept="3clFbF" id="4vGS3tKJ6C" role="3cqZAp">
              <node concept="1rXfSq" id="4vGS3tKJ6B" role="3clFbG">
                <ref role="37wK5l" node="3_wkb9eNxl$" resolve="aspectSettings" />
                <node concept="2GrUjf" id="4vGS3tL1eb" role="37wK5m">
                  <ref role="2Gs0qQ" node="4vGS3tJ7fR" resolve="sup" />
                </node>
                <node concept="37vLTw" id="4vGS3tLvlg" role="37wK5m">
                  <ref role="3cqZAo" node="3_wkb9eWxKY" resolve="prefs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="22ExA6gkupd" role="3cqZAp">
          <node concept="3cpWsn" id="22ExA6gkupg" role="3cpWs9">
            <property role="TrG5h" value="settings" />
            <node concept="3Tqbb2" id="22ExA6gkupb" role="1tU5fm">
              <ref role="ehGHo" to="wknp:3gm2YTwH79_" resolve="AspectSettings" />
            </node>
            <node concept="1rXfSq" id="4vGS3u78hT" role="33vP2m">
              <ref role="37wK5l" node="4vGS3tZUA4" resolve="aspectSettings" />
              <node concept="2OqwBi" id="4vGS3u7IY8" role="37wK5m">
                <node concept="37vLTw" id="4vGS3u7xKI" role="2Oq$k0">
                  <ref role="3cqZAo" node="3_wkb9eOUOa" resolve="aspect" />
                </node>
                <node concept="liA8E" id="4vGS3u7Wsx" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~IAspect.getId()" resolve="getId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3_wkb9f85gd" role="3cqZAp">
          <node concept="3cpWsn" id="3_wkb9f85ge" role="3cpWs9">
            <property role="TrG5h" value="aspectPref" />
            <node concept="3uibUv" id="3_wkb9f82id" role="1tU5fm">
              <ref role="3uigEE" node="3gm2YTwElRb" resolve="AspectPref" />
            </node>
            <node concept="2OqwBi" id="3_wkb9f85gf" role="33vP2m">
              <node concept="37vLTw" id="3_wkb9f85gg" role="2Oq$k0">
                <ref role="3cqZAo" node="3_wkb9eWxKY" resolve="prefs" />
              </node>
              <node concept="liA8E" id="3_wkb9f85gh" role="2OqNvi">
                <ref role="37wK5l" node="3gm2YTwESrX" resolve="getOrCreateAscpectPref" />
                <node concept="2OqwBi" id="3_wkb9f85gi" role="37wK5m">
                  <node concept="37vLTw" id="3_wkb9f85gj" role="2Oq$k0">
                    <ref role="3cqZAo" node="3_wkb9eOUOa" resolve="aspect" />
                  </node>
                  <node concept="liA8E" id="3_wkb9f85gk" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~IAspect.getId()" resolve="getId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7cLIPOv0Gtz" role="3cqZAp">
          <node concept="37vLTI" id="7cLIPOv1rDn" role="3clFbG">
            <node concept="2OqwBi" id="7cLIPOv1XOs" role="37vLTx">
              <node concept="37vLTw" id="7cLIPOv1GGt" role="2Oq$k0">
                <ref role="3cqZAo" node="3_wkb9eOUOa" resolve="aspect" />
              </node>
              <node concept="liA8E" id="7cLIPOv2ceq" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~IAspect.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="2OqwBi" id="7cLIPOv0U2J" role="37vLTJ">
              <node concept="37vLTw" id="7cLIPOv0Gtx" role="2Oq$k0">
                <ref role="3cqZAo" node="3_wkb9f85ge" resolve="aspectPref" />
              </node>
              <node concept="2OwXpG" id="7cLIPOv1aPM" role="2OqNvi">
                <ref role="2Oxat5" node="3gm2YTwEngZ" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4vGS3tOR_J" role="3cqZAp">
          <node concept="37vLTI" id="4vGS3tP_52" role="3clFbG">
            <node concept="2OqwBi" id="4vGS3tQ3JO" role="37vLTx">
              <node concept="37vLTw" id="4vGS3tPOoe" role="2Oq$k0">
                <ref role="3cqZAo" node="3_wkb9eOUOa" resolve="aspect" />
              </node>
              <node concept="liA8E" id="4vGS3tQiGU" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~IAspect.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="2OqwBi" id="4vGS3tP6WI" role="37vLTJ">
              <node concept="37vLTw" id="4vGS3tOR_H" role="2Oq$k0">
                <ref role="3cqZAo" node="22ExA6gkupg" resolve="settings" />
              </node>
              <node concept="3TrcHB" id="4vGS3tPlQ2" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4vGS3tRuxr" role="3cqZAp">
          <node concept="37vLTI" id="4vGS3tSKA9" role="3clFbG">
            <node concept="2OqwBi" id="4vGS3tTcO6" role="37vLTx">
              <node concept="37vLTw" id="4vGS3tSZWP" role="2Oq$k0">
                <ref role="3cqZAo" node="3_wkb9f85ge" resolve="aspectPref" />
              </node>
              <node concept="2OwXpG" id="4vGS3tTpEs" role="2OqNvi">
                <ref role="2Oxat5" node="3gm2YTwEp50" resolve="active" />
              </node>
            </node>
            <node concept="2OqwBi" id="4vGS3tRFQn" role="37vLTJ">
              <node concept="37vLTw" id="4vGS3tRuxp" role="2Oq$k0">
                <ref role="3cqZAo" node="22ExA6gkupg" resolve="settings" />
              </node>
              <node concept="3TrcHB" id="4vGS3tSzTS" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:3gm2YTwH79H" resolve="active" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4vGS3upyli" role="3cqZAp">
          <node concept="3cpWsn" id="4vGS3upyll" role="3cpWs9">
            <property role="TrG5h" value="depIds" />
            <node concept="10Q1$e" id="4vGS3upJL$" role="1tU5fm">
              <node concept="17QB3L" id="4vGS3upylg" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="4vGS3uqRLE" role="33vP2m">
              <node concept="3$_iS1" id="4vGS3urxL6" role="2ShVmc">
                <node concept="3$GHV9" id="4vGS3urxL8" role="3$GQph">
                  <node concept="2OqwBi" id="4vGS3usbLO" role="3$I4v7">
                    <node concept="37vLTw" id="4vGS3usCGJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="4vGS3usCGF" resolve="dependencies" />
                    </node>
                    <node concept="liA8E" id="4vGS3uss0B" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                </node>
                <node concept="17QB3L" id="4vGS3ur4UC" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4vGS3utldm" role="3cqZAp">
          <node concept="3cpWsn" id="4vGS3utldp" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="4vGS3utldk" role="1tU5fm" />
            <node concept="3cmrfG" id="4vGS3utMyu" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4vGS3tXz5y" role="3cqZAp">
          <node concept="2GrKxI" id="4vGS3tXz5z" role="2Gsz3X">
            <property role="TrG5h" value="sup" />
          </node>
          <node concept="37vLTw" id="4vGS3usCGL" role="2GsD0m">
            <ref role="3cqZAo" node="4vGS3usCGF" resolve="dependencies" />
          </node>
          <node concept="3clFbS" id="4vGS3tXz5B" role="2LFqv$">
            <node concept="3clFbF" id="4vGS3tXz5C" role="3cqZAp">
              <node concept="1rXfSq" id="4vGS3tXz5D" role="3clFbG">
                <ref role="37wK5l" node="4vGS3tyjU_" resolve="aspectSettingsDepedency" />
                <node concept="37vLTw" id="4vGS3tXZo7" role="37wK5m">
                  <ref role="3cqZAo" node="22ExA6gkupg" resolve="settings" />
                </node>
                <node concept="1rXfSq" id="4vGS3tYcJL" role="37wK5m">
                  <ref role="37wK5l" node="3_wkb9eNxl$" resolve="aspectSettings" />
                  <node concept="2GrUjf" id="4vGS3tYCna" role="37wK5m">
                    <ref role="2Gs0qQ" node="4vGS3tXz5z" resolve="sup" />
                  </node>
                  <node concept="37vLTw" id="4vGS3tZ1vU" role="37wK5m">
                    <ref role="3cqZAo" node="3_wkb9eWxKY" resolve="prefs" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4vGS3uuh2d" role="3cqZAp">
              <node concept="37vLTI" id="4vGS3uvPkh" role="3clFbG">
                <node concept="2OqwBi" id="4vGS3uwgz1" role="37vLTx">
                  <node concept="2GrUjf" id="4vGS3uw3rm" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="4vGS3tXz5z" resolve="sup" />
                  </node>
                  <node concept="liA8E" id="4vGS3uwuqC" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~IAspect.getId()" resolve="getId" />
                  </node>
                </node>
                <node concept="AH0OO" id="4vGS3uv7X6" role="37vLTJ">
                  <node concept="3uNrnE" id="4vGS3uv_um" role="AHEQo">
                    <node concept="37vLTw" id="4vGS3uv_uo" role="2$L3a6">
                      <ref role="3cqZAo" node="4vGS3utldp" resolve="i" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4vGS3uuUSY" role="AHHXb">
                    <ref role="3cqZAo" node="4vGS3upyll" resolve="depIds" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4vGS3uwSXB" role="3cqZAp">
          <node concept="37vLTI" id="4vGS3uxyGg" role="3clFbG">
            <node concept="37vLTw" id="4vGS3uxJPI" role="37vLTx">
              <ref role="3cqZAo" node="4vGS3upyll" resolve="depIds" />
            </node>
            <node concept="2OqwBi" id="4vGS3ux6dL" role="37vLTJ">
              <node concept="37vLTw" id="4vGS3uwSX_" role="2Oq$k0">
                <ref role="3cqZAo" node="3_wkb9f85ge" resolve="aspectPref" />
              </node>
              <node concept="2OwXpG" id="4vGS3uxlZA" role="2OqNvi">
                <ref role="2Oxat5" node="4vGS3ubHNU" resolve="dependencies" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4vGS3tW6YL" role="3cqZAp">
          <node concept="37vLTI" id="4vGS3tWHhf" role="3clFbG">
            <node concept="2OqwBi" id="4vGS3tX6QP" role="37vLTx">
              <node concept="37vLTw" id="4vGS3tWU3Q" role="2Oq$k0">
                <ref role="3cqZAo" node="3_wkb9eOUOa" resolve="aspect" />
              </node>
              <node concept="liA8E" id="4vGS3tXkbY" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~IAspect.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="2OqwBi" id="4vGS3tWjld" role="37vLTJ">
              <node concept="37vLTw" id="4vGS3tW6YJ" role="2Oq$k0">
                <ref role="3cqZAo" node="3_wkb9f85ge" resolve="aspectPref" />
              </node>
              <node concept="2OwXpG" id="4vGS3tWvPO" role="2OqNvi">
                <ref role="2Oxat5" node="3gm2YTwEngZ" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4vGS3tQL1f" role="3cqZAp">
          <node concept="37vLTw" id="4vGS3tQL1d" role="3clFbG">
            <ref role="3cqZAo" node="22ExA6gkupg" resolve="settings" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4vGS3tZsKr" role="jymVt" />
    <node concept="3clFb_" id="4vGS3u8OxY" role="jymVt">
      <property role="TrG5h" value="aspectSettings" />
      <node concept="37vLTG" id="4vGS3u8Oy1" role="3clF46">
        <property role="TrG5h" value="aspect" />
        <node concept="3uibUv" id="4vGS3u8Oy2" role="1tU5fm">
          <ref role="3uigEE" node="3gm2YTwElRb" resolve="AspectPref" />
        </node>
      </node>
      <node concept="37vLTG" id="4vGS3ufytZ" role="3clF46">
        <property role="TrG5h" value="prefs" />
        <node concept="3uibUv" id="4vGS3ufyu0" role="1tU5fm">
          <ref role="3uigEE" node="3gm2YTwE11B" resolve="AspectPrefs" />
        </node>
      </node>
      <node concept="3Tqbb2" id="4vGS3u8Oy3" role="3clF45">
        <ref role="ehGHo" to="wknp:3gm2YTwH79_" resolve="AspectSettings" />
      </node>
      <node concept="3Tm6S6" id="4vGS3u8Oy4" role="1B3o_S" />
      <node concept="3clFbS" id="4vGS3u8Oy5" role="3clF47">
        <node concept="2Gpval" id="4vGS3u8Oy6" role="3cqZAp">
          <node concept="2GrKxI" id="4vGS3u8Oy7" role="2Gsz3X">
            <property role="TrG5h" value="sup" />
          </node>
          <node concept="2OqwBi" id="4vGS3u8Oy8" role="2GsD0m">
            <node concept="37vLTw" id="4vGS3u8Oy9" role="2Oq$k0">
              <ref role="3cqZAo" node="4vGS3u8Oy1" resolve="aspect" />
            </node>
            <node concept="liA8E" id="4vGS3uVHLs" role="2OqNvi">
              <ref role="37wK5l" node="4vGS3uVdA2" resolve="getDependencies" />
            </node>
          </node>
          <node concept="3clFbS" id="4vGS3u8Oyb" role="2LFqv$">
            <node concept="3clFbF" id="4vGS3u8Oyc" role="3cqZAp">
              <node concept="1rXfSq" id="4vGS3u8Oyd" role="3clFbG">
                <ref role="37wK5l" node="4vGS3u8OxY" resolve="aspectSettings" />
                <node concept="2OqwBi" id="4vGS3ueqm2" role="37wK5m">
                  <node concept="37vLTw" id="4vGS3ueqm3" role="2Oq$k0">
                    <ref role="3cqZAo" node="4vGS3ufytZ" resolve="prefs" />
                  </node>
                  <node concept="liA8E" id="4vGS3ueqm4" role="2OqNvi">
                    <ref role="37wK5l" node="3gm2YTwESrX" resolve="getOrCreateAscpectPref" />
                    <node concept="2GrUjf" id="4vGS3ueRlp" role="37wK5m">
                      <ref role="2Gs0qQ" node="4vGS3u8Oy7" resolve="sup" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4vGS3ulaBr" role="37wK5m">
                  <ref role="3cqZAo" node="4vGS3ufytZ" resolve="prefs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4vGS3u8Oyg" role="3cqZAp">
          <node concept="3cpWsn" id="4vGS3u8Oyh" role="3cpWs9">
            <property role="TrG5h" value="settings" />
            <node concept="3Tqbb2" id="4vGS3u8Oyi" role="1tU5fm">
              <ref role="ehGHo" to="wknp:3gm2YTwH79_" resolve="AspectSettings" />
            </node>
            <node concept="1rXfSq" id="4vGS3u8Oyj" role="33vP2m">
              <ref role="37wK5l" node="4vGS3tZUA4" resolve="aspectSettings" />
              <node concept="2OqwBi" id="4vGS3u8Oyk" role="37wK5m">
                <node concept="37vLTw" id="4vGS3u8Oyl" role="2Oq$k0">
                  <ref role="3cqZAo" node="4vGS3u8Oy1" resolve="aspect" />
                </node>
                <node concept="2OwXpG" id="4vGS3ugBvE" role="2OqNvi">
                  <ref role="2Oxat5" node="yC2uzckjU9" resolve="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4vGS3u8Oyw" role="3cqZAp">
          <node concept="37vLTI" id="4vGS3u8Oyx" role="3clFbG">
            <node concept="2OqwBi" id="4vGS3u8Oyy" role="37vLTx">
              <node concept="37vLTw" id="4vGS3u8Oyz" role="2Oq$k0">
                <ref role="3cqZAo" node="4vGS3u8Oy1" resolve="aspect" />
              </node>
              <node concept="2OwXpG" id="4vGS3uh1fR" role="2OqNvi">
                <ref role="2Oxat5" node="3gm2YTwEngZ" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="4vGS3u8Oy_" role="37vLTJ">
              <node concept="37vLTw" id="4vGS3u8OyA" role="2Oq$k0">
                <ref role="3cqZAo" node="4vGS3u8Oyh" resolve="settings" />
              </node>
              <node concept="3TrcHB" id="4vGS3u8OyB" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4vGS3u8OyC" role="3cqZAp">
          <node concept="37vLTI" id="4vGS3u8OyD" role="3clFbG">
            <node concept="2OqwBi" id="4vGS3u8OyE" role="37vLTx">
              <node concept="37vLTw" id="4vGS3u8OyF" role="2Oq$k0">
                <ref role="3cqZAo" node="4vGS3u8Oy1" resolve="aspect" />
              </node>
              <node concept="2OwXpG" id="4vGS3u8OyG" role="2OqNvi">
                <ref role="2Oxat5" node="3gm2YTwEp50" resolve="active" />
              </node>
            </node>
            <node concept="2OqwBi" id="4vGS3u8OyH" role="37vLTJ">
              <node concept="37vLTw" id="4vGS3u8OyI" role="2Oq$k0">
                <ref role="3cqZAo" node="4vGS3u8Oyh" resolve="settings" />
              </node>
              <node concept="3TrcHB" id="4vGS3u8OyJ" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:3gm2YTwH79H" resolve="active" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4vGS3u8OyS" role="3cqZAp">
          <node concept="2GrKxI" id="4vGS3u8OyT" role="2Gsz3X">
            <property role="TrG5h" value="sup" />
          </node>
          <node concept="3clFbS" id="4vGS3u8OyX" role="2LFqv$">
            <node concept="3clFbF" id="4vGS3u8OyY" role="3cqZAp">
              <node concept="1rXfSq" id="4vGS3u8OyZ" role="3clFbG">
                <ref role="37wK5l" node="4vGS3tyjU_" resolve="aspectSettingsDepedency" />
                <node concept="37vLTw" id="4vGS3u8Oz0" role="37wK5m">
                  <ref role="3cqZAo" node="4vGS3u8Oyh" resolve="settings" />
                </node>
                <node concept="1rXfSq" id="4vGS3ujEBb" role="37wK5m">
                  <ref role="37wK5l" node="4vGS3u8OxY" resolve="aspectSettings" />
                  <node concept="2OqwBi" id="4vGS3ukHkW" role="37wK5m">
                    <node concept="37vLTw" id="4vGS3ukHkX" role="2Oq$k0">
                      <ref role="3cqZAo" node="4vGS3ufytZ" resolve="prefs" />
                    </node>
                    <node concept="liA8E" id="4vGS3ukHkY" role="2OqNvi">
                      <ref role="37wK5l" node="3gm2YTwESrX" resolve="getOrCreateAscpectPref" />
                      <node concept="2GrUjf" id="4vGS3ukHkZ" role="37wK5m">
                        <ref role="2Gs0qQ" node="4vGS3u8OyT" resolve="sup" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4vGS3uktBp" role="37wK5m">
                    <ref role="3cqZAo" node="4vGS3ufytZ" resolve="prefs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4vGS3v11lj" role="2GsD0m">
            <node concept="37vLTw" id="4vGS3v11lk" role="2Oq$k0">
              <ref role="3cqZAo" node="4vGS3u8Oy1" resolve="aspect" />
            </node>
            <node concept="liA8E" id="4vGS3v11ll" role="2OqNvi">
              <ref role="37wK5l" node="4vGS3uVdA2" resolve="getDependencies" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4vGS3u8Oz4" role="3cqZAp">
          <node concept="37vLTw" id="4vGS3u8Oz5" role="3clFbG">
            <ref role="3cqZAo" node="4vGS3u8Oyh" resolve="settings" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4vGS3u8Aex" role="jymVt" />
    <node concept="3clFb_" id="4vGS3tZUA4" role="jymVt">
      <property role="TrG5h" value="aspectSettings" />
      <node concept="3Tqbb2" id="4vGS3tZUA9" role="3clF45">
        <ref role="ehGHo" to="wknp:3gm2YTwH79_" resolve="AspectSettings" />
      </node>
      <node concept="3Tm6S6" id="4vGS3tZUAa" role="1B3o_S" />
      <node concept="3clFbS" id="4vGS3tZUAb" role="3clF47">
        <node concept="3cpWs8" id="4vGS3tZUAc" role="3cqZAp">
          <node concept="3cpWsn" id="4vGS3tZUAd" role="3cpWs9">
            <property role="TrG5h" value="settings" />
            <node concept="3Tqbb2" id="4vGS3tZUAe" role="1tU5fm">
              <ref role="ehGHo" to="wknp:3gm2YTwH79_" resolve="AspectSettings" />
            </node>
            <node concept="2OqwBi" id="4vGS3tZUAf" role="33vP2m">
              <node concept="2OqwBi" id="4vGS3tZUAg" role="2Oq$k0">
                <node concept="37vLTw" id="4vGS3tZUAh" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
                </node>
                <node concept="3Tsc0h" id="4vGS3tZUAi" role="2OqNvi">
                  <ref role="3TtcxE" to="wknp:3gm2YTwH79v" resolve="aspects" />
                </node>
              </node>
              <node concept="1z4cxt" id="4vGS3tZUAj" role="2OqNvi">
                <node concept="1bVj0M" id="4vGS3tZUAk" role="23t8la">
                  <node concept="3clFbS" id="4vGS3tZUAl" role="1bW5cS">
                    <node concept="3clFbF" id="4vGS3tZUAm" role="3cqZAp">
                      <node concept="17R0WA" id="4vGS3tZUAn" role="3clFbG">
                        <node concept="2OqwBi" id="4vGS3tZUAr" role="3uHU7B">
                          <node concept="37vLTw" id="4vGS3tZUAs" role="2Oq$k0">
                            <ref role="3cqZAo" node="4vGS3tZUAu" resolve="s" />
                          </node>
                          <node concept="3TrcHB" id="4vGS3tZUAt" role="2OqNvi">
                            <ref role="3TsBF5" to="wknp:yC2uzcPUIs" resolve="id" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4vGS3u2LiI" role="3uHU7w">
                          <ref role="3cqZAo" node="4vGS3u1I4k" resolve="id" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4vGS3tZUAu" role="1bW2Oz">
                    <property role="TrG5h" value="s" />
                    <node concept="2jxLKc" id="4vGS3tZUAv" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4vGS3tZUAN" role="3cqZAp">
          <node concept="3clFbS" id="4vGS3tZUAO" role="3clFbx">
            <node concept="3clFbF" id="4vGS3tZUAP" role="3cqZAp">
              <node concept="37vLTI" id="4vGS3tZUAQ" role="3clFbG">
                <node concept="37vLTw" id="4vGS3tZUAR" role="37vLTJ">
                  <ref role="3cqZAo" node="4vGS3tZUAd" resolve="settings" />
                </node>
                <node concept="2pJPEk" id="4vGS3tZUAS" role="37vLTx">
                  <node concept="2pJPED" id="4vGS3tZUAT" role="2pJPEn">
                    <ref role="2pJxaS" to="wknp:3gm2YTwH79_" resolve="AspectSettings" />
                    <node concept="2pJxcG" id="4vGS3tZUAU" role="2pJxcM">
                      <ref role="2pJxcJ" to="wknp:yC2uzcPUIs" resolve="id" />
                      <node concept="WxPPo" id="4vGS3u4g2b" role="28ntcv">
                        <node concept="37vLTw" id="4vGS3u4g29" role="WxPPp">
                          <ref role="3cqZAo" node="4vGS3u1I4k" resolve="id" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4vGS3tZUAZ" role="3cqZAp">
              <node concept="2OqwBi" id="4vGS3tZUB0" role="3clFbG">
                <node concept="2OqwBi" id="4vGS3tZUB1" role="2Oq$k0">
                  <node concept="37vLTw" id="4vGS3tZUB2" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
                  </node>
                  <node concept="3Tsc0h" id="4vGS3tZUB3" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:3gm2YTwH79v" resolve="aspects" />
                  </node>
                </node>
                <node concept="TSZUe" id="4vGS3tZUB4" role="2OqNvi">
                  <node concept="37vLTw" id="4vGS3tZUB5" role="25WWJ7">
                    <ref role="3cqZAo" node="4vGS3tZUAd" resolve="settings" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4vGS3tZUB6" role="3clFbw">
            <node concept="37vLTw" id="4vGS3tZUB7" role="3uHU7B">
              <ref role="3cqZAo" node="4vGS3tZUAd" resolve="settings" />
            </node>
            <node concept="10Nm6u" id="4vGS3tZUB8" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbF" id="4vGS3tZUBH" role="3cqZAp">
          <node concept="37vLTw" id="4vGS3tZUBI" role="3clFbG">
            <ref role="3cqZAo" node="4vGS3tZUAd" resolve="settings" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4vGS3u1I4k" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="4vGS3u1I4j" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4vGS3txtjE" role="jymVt" />
    <node concept="3clFb_" id="4vGS3tyjU_" role="jymVt">
      <property role="TrG5h" value="aspectSettingsDepedency" />
      <node concept="37vLTG" id="4vGS3tyxvO" role="3clF46">
        <property role="TrG5h" value="sub" />
        <node concept="3Tqbb2" id="4vGS3tyNeP" role="1tU5fm">
          <ref role="ehGHo" to="wknp:3gm2YTwH79_" resolve="AspectSettings" />
        </node>
      </node>
      <node concept="37vLTG" id="4vGS3tEQ6P" role="3clF46">
        <property role="TrG5h" value="sup" />
        <node concept="3Tqbb2" id="4vGS3tF6$y" role="1tU5fm">
          <ref role="ehGHo" to="wknp:3gm2YTwH79_" resolve="AspectSettings" />
        </node>
      </node>
      <node concept="3clFbS" id="4vGS3tyjUC" role="3clF47">
        <node concept="3cpWs8" id="4vGS3tARDF" role="3cqZAp">
          <node concept="3cpWsn" id="4vGS3tARDG" role="3cpWs9">
            <property role="TrG5h" value="dependency" />
            <node concept="3Tqbb2" id="4vGS3tAOJX" role="1tU5fm">
              <ref role="ehGHo" to="wknp:3_wkb9eGwqx" resolve="AspectSettingDependency" />
            </node>
            <node concept="2OqwBi" id="4vGS3tARDH" role="33vP2m">
              <node concept="2OqwBi" id="4vGS3tARDI" role="2Oq$k0">
                <node concept="37vLTw" id="4vGS3tARDJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4vGS3tyxvO" resolve="sub" />
                </node>
                <node concept="3Tsc0h" id="4vGS3tARDK" role="2OqNvi">
                  <ref role="3TtcxE" to="wknp:3_wkb9eGAzO" resolve="dependencies" />
                </node>
              </node>
              <node concept="1z4cxt" id="4vGS3tARDL" role="2OqNvi">
                <node concept="1bVj0M" id="4vGS3tARDM" role="23t8la">
                  <node concept="3clFbS" id="4vGS3tARDN" role="1bW5cS">
                    <node concept="3clFbF" id="4vGS3tARDO" role="3cqZAp">
                      <node concept="17R0WA" id="4vGS3tARDP" role="3clFbG">
                        <node concept="37vLTw" id="4vGS3tARDQ" role="3uHU7w">
                          <ref role="3cqZAo" node="4vGS3tEQ6P" resolve="sup" />
                        </node>
                        <node concept="2OqwBi" id="4vGS3tARDS" role="3uHU7B">
                          <node concept="37vLTw" id="4vGS3tARDT" role="2Oq$k0">
                            <ref role="3cqZAo" node="4vGS3tARDW" resolve="d" />
                          </node>
                          <node concept="3TrEf2" id="4vGS3tARDU" role="2OqNvi">
                            <ref role="3Tt5mk" to="wknp:3_wkb9eGwqy" resolve="aspect" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4vGS3tARDW" role="1bW2Oz">
                    <property role="TrG5h" value="d" />
                    <node concept="2jxLKc" id="4vGS3tARDX" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4vGS3tBNjy" role="3cqZAp">
          <node concept="3clFbS" id="4vGS3tBNj$" role="3clFbx">
            <node concept="3clFbF" id="4vGS3tCL1Q" role="3cqZAp">
              <node concept="37vLTI" id="4vGS3tD0Wh" role="3clFbG">
                <node concept="37vLTw" id="4vGS3tCL1O" role="37vLTJ">
                  <ref role="3cqZAo" node="4vGS3tARDG" resolve="dependency" />
                </node>
                <node concept="2pJPEk" id="4vGS3tDHLA" role="37vLTx">
                  <node concept="2pJPED" id="4vGS3tDHLC" role="2pJPEn">
                    <ref role="2pJxaS" to="wknp:3_wkb9eGwqx" resolve="AspectSettingDependency" />
                    <node concept="2pIpSj" id="4vGS3tEo1Z" role="2pJxcM">
                      <ref role="2pIpSl" to="wknp:3_wkb9eGwqy" resolve="aspect" />
                      <node concept="36biLy" id="4vGS3tGbv_" role="28nt2d">
                        <node concept="37vLTw" id="4vGS3tGrh9" role="36biLW">
                          <ref role="3cqZAo" node="4vGS3tEQ6P" resolve="sup" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4vGS3tGUta" role="3cqZAp">
              <node concept="2OqwBi" id="4vGS3tH_4d" role="3clFbG">
                <node concept="2OqwBi" id="4vGS3tH7lU" role="2Oq$k0">
                  <node concept="37vLTw" id="4vGS3tGUt8" role="2Oq$k0">
                    <ref role="3cqZAo" node="4vGS3tyxvO" resolve="sub" />
                  </node>
                  <node concept="3Tsc0h" id="4vGS3tHkfQ" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:3_wkb9eGAzO" resolve="dependencies" />
                  </node>
                </node>
                <node concept="TSZUe" id="4vGS3tHQni" role="2OqNvi">
                  <node concept="37vLTw" id="4vGS3tI6m6" role="25WWJ7">
                    <ref role="3cqZAo" node="4vGS3tARDG" resolve="dependency" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4vGS3tCj0J" role="3clFbw">
            <node concept="10Nm6u" id="4vGS3tCxbw" role="3uHU7w" />
            <node concept="37vLTw" id="4vGS3tC36D" role="3uHU7B">
              <ref role="3cqZAo" node="4vGS3tARDG" resolve="dependency" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4vGS3tzPXt" role="3cqZAp">
          <node concept="37vLTw" id="4vGS3tARDY" role="3clFbG">
            <ref role="3cqZAo" node="4vGS3tARDG" resolve="dependency" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4vGS3txZJV" role="1B3o_S" />
      <node concept="3Tqbb2" id="4vGS3tyjFv" role="3clF45">
        <ref role="ehGHo" to="wknp:3_wkb9eGwqx" resolve="AspectSettingDependency" />
      </node>
    </node>
    <node concept="2tJIrI" id="26byUJz3Vw$" role="jymVt" />
    <node concept="3clFb_" id="6omEkmwsXS2" role="jymVt">
      <property role="TrG5h" value="refreshMessages" />
      <node concept="3Tm6S6" id="6omEkmwsXS3" role="1B3o_S" />
      <node concept="3cqZAl" id="6omEkmwsXS4" role="3clF45" />
      <node concept="37vLTG" id="6omEkmwsXRK" role="3clF46">
        <property role="TrG5h" value="getter" />
        <node concept="3uibUv" id="6omEkmwsXRL" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~Getter" resolve="Getter" />
        </node>
      </node>
      <node concept="37vLTG" id="6omEkmwsXRM" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="6omEkmwsXRN" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
        </node>
      </node>
      <node concept="3clFbS" id="6omEkmwsXPm" role="3clF47">
        <node concept="3clFbF" id="6omEkmwsXPn" role="3cqZAp">
          <node concept="2OqwBi" id="6omEkmwsXPo" role="3clFbG">
            <node concept="2OqwBi" id="6omEkmwsXPp" role="2Oq$k0">
              <node concept="37vLTw" id="6omEkmwsXPq" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3Tsc0h" id="6omEkmwsXPr" role="2OqNvi">
                <ref role="3TtcxE" to="wknp:7e_PmaZxgoQ" resolve="errors" />
              </node>
            </node>
            <node concept="2Kehj3" id="6omEkmwsXPs" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="6omEkmwsXPt" role="3cqZAp">
          <node concept="2OqwBi" id="6omEkmwsXPu" role="3clFbG">
            <node concept="2OqwBi" id="6omEkmwsXPv" role="2Oq$k0">
              <node concept="37vLTw" id="6omEkmwsXPw" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3Tsc0h" id="6omEkmwsXPx" role="2OqNvi">
                <ref role="3TtcxE" to="wknp:30f$n$3bYxD" resolve="warnings" />
              </node>
            </node>
            <node concept="2Kehj3" id="6omEkmwsXPy" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="6omEkmwsXPz" role="3cqZAp">
          <node concept="2OqwBi" id="6omEkmwsXP$" role="3clFbG">
            <node concept="2OqwBi" id="6omEkmwsXP_" role="2Oq$k0">
              <node concept="37vLTw" id="6omEkmwsXPA" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3Tsc0h" id="6omEkmwsXPB" role="2OqNvi">
                <ref role="3TtcxE" to="wknp:30f$n$3bYxH" resolve="infos" />
              </node>
            </node>
            <node concept="2Kehj3" id="6omEkmwsXPC" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="6omEkmwsXPD" role="3cqZAp">
          <node concept="2OqwBi" id="6omEkmwsXPE" role="3clFbG">
            <node concept="2OqwBi" id="6omEkmwsXPF" role="2Oq$k0">
              <node concept="37vLTw" id="6omEkmwsXPG" role="2Oq$k0">
                <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
              </node>
              <node concept="3Tsc0h" id="6omEkmwsXPH" role="2OqNvi">
                <ref role="3TtcxE" to="wknp:30f$n$3bYxM" resolve="debugs" />
              </node>
            </node>
            <node concept="2Kehj3" id="6omEkmwsXPI" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="6omEkmwsXPJ" role="3cqZAp" />
        <node concept="2Gpval" id="6omEkmwsXPK" role="3cqZAp">
          <node concept="2GrKxI" id="6omEkmwsXPL" role="2Gsz3X">
            <property role="TrG5h" value="e" />
          </node>
          <node concept="3clFbS" id="6omEkmwsXPM" role="2LFqv$">
            <node concept="3clFbF" id="6omEkmwsXPN" role="3cqZAp">
              <node concept="2OqwBi" id="6omEkmwsXPO" role="3clFbG">
                <node concept="2OqwBi" id="6omEkmwsXPP" role="2Oq$k0">
                  <node concept="37vLTw" id="6omEkmwsXPQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
                  </node>
                  <node concept="3Tsc0h" id="6omEkmwsXPR" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:7e_PmaZxgoQ" resolve="errors" />
                  </node>
                </node>
                <node concept="TSZUe" id="6omEkmwsXPS" role="2OqNvi">
                  <node concept="2OqwBi" id="6omEkmwsXPT" role="25WWJ7">
                    <node concept="35c_gC" id="6omEkmwsXPU" role="2Oq$k0">
                      <ref role="35c_gD" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                    </node>
                    <node concept="2qgKlT" id="6omEkmwsXPV" role="2OqNvi">
                      <ref role="37wK5l" to="akim:1KqhpdFNfb5" resolve="create" />
                      <node concept="2GrUjf" id="6omEkmwsXPW" role="37wK5m">
                        <ref role="2Gs0qQ" node="6omEkmwsXPL" resolve="e" />
                      </node>
                      <node concept="37vLTw" id="6omEkmwsXRQ" role="37wK5m">
                        <ref role="3cqZAo" node="6omEkmwsXRK" resolve="getter" />
                      </node>
                      <node concept="Rm8GO" id="6omEkmwsXPY" role="37wK5m">
                        <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
                        <ref role="Rm8GQ" to="t4tl:~DMessageType.error" resolve="error" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="10QFUN" id="6omEkmwsXPZ" role="2GsD0m">
            <node concept="2OqwBi" id="6omEkmwsXQ0" role="10QFUP">
              <node concept="37vLTw" id="6omEkmwsXRP" role="2Oq$k0">
                <ref role="3cqZAo" node="6omEkmwsXRK" resolve="getter" />
              </node>
              <node concept="liA8E" id="6omEkmwsXQ2" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~Getter.get(java.util.function.Supplier)" resolve="get" />
                <node concept="1bVj0M" id="6omEkmwsXQ3" role="37wK5m">
                  <node concept="3clFbS" id="6omEkmwsXQ4" role="1bW5cS">
                    <node concept="3clFbF" id="6omEkmwsXQ5" role="3cqZAp">
                      <node concept="2OqwBi" id="6omEkmwsXQ6" role="3clFbG">
                        <node concept="37vLTw" id="6omEkmwsXRR" role="2Oq$k0">
                          <ref role="3cqZAo" node="6omEkmwsXRM" resolve="engine" />
                        </node>
                        <node concept="liA8E" id="6omEkmwsXQ8" role="2OqNvi">
                          <ref role="37wK5l" to="t4tl:~DClareMPS.getMessages(org.modelingvalue.dclare.mps.DMessageType)" resolve="getMessages" />
                          <node concept="Rm8GO" id="6omEkmwsXQ9" role="37wK5m">
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
            <node concept="3uibUv" id="6omEkmwsXQa" role="10QFUM">
              <ref role="3uigEE" to="zrbp:~QualifiedSet" resolve="QualifiedSet" />
              <node concept="3uibUv" id="6omEkmwsXQb" role="11_B2D">
                <ref role="3uigEE" to="42m3:~Triple" resolve="Triple" />
                <node concept="3uibUv" id="6omEkmwsXQc" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                </node>
                <node concept="3uibUv" id="6omEkmwsXQd" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DFeature" resolve="DFeature" />
                </node>
                <node concept="3uibUv" id="6omEkmwsXQe" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="3uibUv" id="6omEkmwsXQf" role="11_B2D">
                <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6omEkmwsXQg" role="3cqZAp">
          <node concept="2GrKxI" id="6omEkmwsXQh" role="2Gsz3X">
            <property role="TrG5h" value="e" />
          </node>
          <node concept="3clFbS" id="6omEkmwsXQi" role="2LFqv$">
            <node concept="3clFbF" id="6omEkmwsXQj" role="3cqZAp">
              <node concept="2OqwBi" id="6omEkmwsXQk" role="3clFbG">
                <node concept="2OqwBi" id="6omEkmwsXQl" role="2Oq$k0">
                  <node concept="37vLTw" id="6omEkmwsXQm" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
                  </node>
                  <node concept="3Tsc0h" id="6omEkmwsXQn" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:30f$n$3bYxD" resolve="warnings" />
                  </node>
                </node>
                <node concept="TSZUe" id="6omEkmwsXQo" role="2OqNvi">
                  <node concept="2OqwBi" id="6omEkmwsXQp" role="25WWJ7">
                    <node concept="35c_gC" id="6omEkmwsXQq" role="2Oq$k0">
                      <ref role="35c_gD" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                    </node>
                    <node concept="2qgKlT" id="6omEkmwsXQr" role="2OqNvi">
                      <ref role="37wK5l" to="akim:1KqhpdFNfb5" resolve="create" />
                      <node concept="2GrUjf" id="6omEkmwsXQs" role="37wK5m">
                        <ref role="2Gs0qQ" node="6omEkmwsXQh" resolve="e" />
                      </node>
                      <node concept="37vLTw" id="6omEkmwsXRO" role="37wK5m">
                        <ref role="3cqZAo" node="6omEkmwsXRK" resolve="getter" />
                      </node>
                      <node concept="Rm8GO" id="6omEkmwsXQu" role="37wK5m">
                        <ref role="Rm8GQ" to="t4tl:~DMessageType.warning" resolve="warning" />
                        <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="10QFUN" id="6omEkmwsXQv" role="2GsD0m">
            <node concept="2OqwBi" id="6omEkmwsXQw" role="10QFUP">
              <node concept="37vLTw" id="6omEkmwsXRW" role="2Oq$k0">
                <ref role="3cqZAo" node="6omEkmwsXRK" resolve="getter" />
              </node>
              <node concept="liA8E" id="6omEkmwsXQy" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~Getter.get(java.util.function.Supplier)" resolve="get" />
                <node concept="1bVj0M" id="6omEkmwsXQz" role="37wK5m">
                  <node concept="3clFbS" id="6omEkmwsXQ$" role="1bW5cS">
                    <node concept="3clFbF" id="6omEkmwsXQ_" role="3cqZAp">
                      <node concept="2OqwBi" id="6omEkmwsXQA" role="3clFbG">
                        <node concept="37vLTw" id="6omEkmwsXRS" role="2Oq$k0">
                          <ref role="3cqZAo" node="6omEkmwsXRM" resolve="engine" />
                        </node>
                        <node concept="liA8E" id="6omEkmwsXQC" role="2OqNvi">
                          <ref role="37wK5l" to="t4tl:~DClareMPS.getMessages(org.modelingvalue.dclare.mps.DMessageType)" resolve="getMessages" />
                          <node concept="Rm8GO" id="6omEkmwsXQD" role="37wK5m">
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
            <node concept="3uibUv" id="6omEkmwsXQE" role="10QFUM">
              <ref role="3uigEE" to="zrbp:~QualifiedSet" resolve="QualifiedSet" />
              <node concept="3uibUv" id="6omEkmwsXQF" role="11_B2D">
                <ref role="3uigEE" to="42m3:~Triple" resolve="Triple" />
                <node concept="3uibUv" id="6omEkmwsXQG" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                </node>
                <node concept="3uibUv" id="6omEkmwsXQH" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DFeature" resolve="DFeature" />
                </node>
                <node concept="3uibUv" id="6omEkmwsXQI" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="3uibUv" id="6omEkmwsXQJ" role="11_B2D">
                <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6omEkmwsXQK" role="3cqZAp">
          <node concept="2GrKxI" id="6omEkmwsXQL" role="2Gsz3X">
            <property role="TrG5h" value="e" />
          </node>
          <node concept="3clFbS" id="6omEkmwsXQM" role="2LFqv$">
            <node concept="3clFbF" id="6omEkmwsXQN" role="3cqZAp">
              <node concept="2OqwBi" id="6omEkmwsXQO" role="3clFbG">
                <node concept="2OqwBi" id="6omEkmwsXQP" role="2Oq$k0">
                  <node concept="37vLTw" id="6omEkmwsXQQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
                  </node>
                  <node concept="3Tsc0h" id="6omEkmwsXQR" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:30f$n$3bYxH" resolve="infos" />
                  </node>
                </node>
                <node concept="TSZUe" id="6omEkmwsXQS" role="2OqNvi">
                  <node concept="2OqwBi" id="6omEkmwsXQT" role="25WWJ7">
                    <node concept="35c_gC" id="6omEkmwsXQU" role="2Oq$k0">
                      <ref role="35c_gD" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                    </node>
                    <node concept="2qgKlT" id="6omEkmwsXQV" role="2OqNvi">
                      <ref role="37wK5l" to="akim:1KqhpdFNfb5" resolve="create" />
                      <node concept="2GrUjf" id="6omEkmwsXQW" role="37wK5m">
                        <ref role="2Gs0qQ" node="6omEkmwsXQL" resolve="e" />
                      </node>
                      <node concept="37vLTw" id="6omEkmwsXRV" role="37wK5m">
                        <ref role="3cqZAo" node="6omEkmwsXRK" resolve="getter" />
                      </node>
                      <node concept="Rm8GO" id="6omEkmwsXQY" role="37wK5m">
                        <ref role="Rm8GQ" to="t4tl:~DMessageType.info" resolve="info" />
                        <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="10QFUN" id="6omEkmwsXQZ" role="2GsD0m">
            <node concept="2OqwBi" id="6omEkmwsXR0" role="10QFUP">
              <node concept="37vLTw" id="6omEkmwsXRX" role="2Oq$k0">
                <ref role="3cqZAo" node="6omEkmwsXRK" resolve="getter" />
              </node>
              <node concept="liA8E" id="6omEkmwsXR2" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~Getter.get(java.util.function.Supplier)" resolve="get" />
                <node concept="1bVj0M" id="6omEkmwsXR3" role="37wK5m">
                  <node concept="3clFbS" id="6omEkmwsXR4" role="1bW5cS">
                    <node concept="3clFbF" id="6omEkmwsXR5" role="3cqZAp">
                      <node concept="2OqwBi" id="6omEkmwsXR6" role="3clFbG">
                        <node concept="37vLTw" id="6omEkmwsXRY" role="2Oq$k0">
                          <ref role="3cqZAo" node="6omEkmwsXRM" resolve="engine" />
                        </node>
                        <node concept="liA8E" id="6omEkmwsXR8" role="2OqNvi">
                          <ref role="37wK5l" to="t4tl:~DClareMPS.getMessages(org.modelingvalue.dclare.mps.DMessageType)" resolve="getMessages" />
                          <node concept="Rm8GO" id="6omEkmwsXR9" role="37wK5m">
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
            <node concept="3uibUv" id="6omEkmwsXRa" role="10QFUM">
              <ref role="3uigEE" to="zrbp:~QualifiedSet" resolve="QualifiedSet" />
              <node concept="3uibUv" id="6omEkmwsXRb" role="11_B2D">
                <ref role="3uigEE" to="42m3:~Triple" resolve="Triple" />
                <node concept="3uibUv" id="6omEkmwsXRc" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                </node>
                <node concept="3uibUv" id="6omEkmwsXRd" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DFeature" resolve="DFeature" />
                </node>
                <node concept="3uibUv" id="6omEkmwsXRe" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="3uibUv" id="6omEkmwsXRf" role="11_B2D">
                <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6omEkmwsXRg" role="3cqZAp">
          <node concept="2GrKxI" id="6omEkmwsXRh" role="2Gsz3X">
            <property role="TrG5h" value="e" />
          </node>
          <node concept="3clFbS" id="6omEkmwsXRi" role="2LFqv$">
            <node concept="3clFbF" id="6omEkmwsXRj" role="3cqZAp">
              <node concept="2OqwBi" id="6omEkmwsXRk" role="3clFbG">
                <node concept="2OqwBi" id="6omEkmwsXRl" role="2Oq$k0">
                  <node concept="37vLTw" id="6omEkmwsXRm" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ajo$O32MNd" resolve="root" />
                  </node>
                  <node concept="3Tsc0h" id="6omEkmwsXRn" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:30f$n$3bYxM" resolve="debugs" />
                  </node>
                </node>
                <node concept="TSZUe" id="6omEkmwsXRo" role="2OqNvi">
                  <node concept="2OqwBi" id="6omEkmwsXRp" role="25WWJ7">
                    <node concept="35c_gC" id="6omEkmwsXRq" role="2Oq$k0">
                      <ref role="35c_gD" to="wknp:7e_PmaZxfwQ" resolve="Message" />
                    </node>
                    <node concept="2qgKlT" id="6omEkmwsXRr" role="2OqNvi">
                      <ref role="37wK5l" to="akim:1KqhpdFNfb5" resolve="create" />
                      <node concept="2GrUjf" id="6omEkmwsXRs" role="37wK5m">
                        <ref role="2Gs0qQ" node="6omEkmwsXRh" resolve="e" />
                      </node>
                      <node concept="37vLTw" id="6omEkmwsXRZ" role="37wK5m">
                        <ref role="3cqZAo" node="6omEkmwsXRK" resolve="getter" />
                      </node>
                      <node concept="Rm8GO" id="6omEkmwsXRu" role="37wK5m">
                        <ref role="Rm8GQ" to="t4tl:~DMessageType.debug" resolve="debug" />
                        <ref role="1Px2BO" to="t4tl:~DMessageType" resolve="DMessageType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="10QFUN" id="6omEkmwsXRv" role="2GsD0m">
            <node concept="2OqwBi" id="6omEkmwsXRw" role="10QFUP">
              <node concept="37vLTw" id="6omEkmwsXRT" role="2Oq$k0">
                <ref role="3cqZAo" node="6omEkmwsXRK" resolve="getter" />
              </node>
              <node concept="liA8E" id="6omEkmwsXRy" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~Getter.get(java.util.function.Supplier)" resolve="get" />
                <node concept="1bVj0M" id="6omEkmwsXRz" role="37wK5m">
                  <node concept="3clFbS" id="6omEkmwsXR$" role="1bW5cS">
                    <node concept="3clFbF" id="6omEkmwsXR_" role="3cqZAp">
                      <node concept="2OqwBi" id="6omEkmwsXRA" role="3clFbG">
                        <node concept="37vLTw" id="6omEkmwsXRU" role="2Oq$k0">
                          <ref role="3cqZAo" node="6omEkmwsXRM" resolve="engine" />
                        </node>
                        <node concept="liA8E" id="6omEkmwsXRC" role="2OqNvi">
                          <ref role="37wK5l" to="t4tl:~DClareMPS.getMessages(org.modelingvalue.dclare.mps.DMessageType)" resolve="getMessages" />
                          <node concept="Rm8GO" id="6omEkmwsXRD" role="37wK5m">
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
            <node concept="3uibUv" id="6omEkmwsXRE" role="10QFUM">
              <ref role="3uigEE" to="zrbp:~QualifiedSet" resolve="QualifiedSet" />
              <node concept="3uibUv" id="6omEkmwsXRF" role="11_B2D">
                <ref role="3uigEE" to="42m3:~Triple" resolve="Triple" />
                <node concept="3uibUv" id="6omEkmwsXRG" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                </node>
                <node concept="3uibUv" id="6omEkmwsXRH" role="11_B2D">
                  <ref role="3uigEE" to="t4tl:~DFeature" resolve="DFeature" />
                </node>
                <node concept="3uibUv" id="6omEkmwsXRI" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="3uibUv" id="6omEkmwsXRJ" role="11_B2D">
                <ref role="3uigEE" to="t4tl:~DMessage" resolve="DMessage" />
              </node>
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
  <node concept="312cEu" id="26TvwnxWzJB">
    <property role="TrG5h" value="DClareTracePanel" />
    <node concept="Wx3nA" id="2QAAbOpi8Wn" role="jymVt">
      <property role="TrG5h" value="TMP_MODELS" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2QAAbOpi8Wo" role="1tU5fm">
        <ref role="3uigEE" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
      </node>
      <node concept="2YIFZM" id="2QAAbOpi8Wp" role="33vP2m">
        <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
        <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
      </node>
      <node concept="3Tm6S6" id="2QAAbOpi8Wq" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="26TvwnxWzQi" role="jymVt" />
    <node concept="312cEg" id="26TvwnxWObV" role="jymVt">
      <property role="TrG5h" value="editor" />
      <node concept="3Tm6S6" id="26TvwnxWObW" role="1B3o_S" />
      <node concept="3uibUv" id="26TvwnxWObX" role="1tU5fm">
        <ref role="3uigEE" to="exr9:~NodeEditorComponent" resolve="NodeEditorComponent" />
      </node>
    </node>
    <node concept="312cEg" id="3yGwp2RD3rt" role="jymVt">
      <property role="TrG5h" value="tree" />
      <node concept="3Tm6S6" id="3yGwp2RCSUW" role="1B3o_S" />
      <node concept="3uibUv" id="3yGwp2RD3k5" role="1tU5fm">
        <ref role="3uigEE" node="3yGwp2Rp5A_" resolve="DclareRulesTree" />
      </node>
    </node>
    <node concept="312cEg" id="26Tvwnygc3R" role="jymVt">
      <property role="TrG5h" value="root" />
      <node concept="3Tm6S6" id="26Tvwnyg9Xk" role="1B3o_S" />
      <node concept="3Tqbb2" id="26TvwnygbT8" role="1tU5fm">
        <ref role="ehGHo" to="sbtp:5csmg0uERaS" resolve="TraceState" />
      </node>
    </node>
    <node concept="312cEg" id="5csmg0uJVXs" role="jymVt">
      <property role="TrG5h" value="modelAccess" />
      <node concept="3Tm6S6" id="5csmg0uJShs" role="1B3o_S" />
      <node concept="3uibUv" id="5csmg0uJVPU" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
      </node>
    </node>
    <node concept="312cEg" id="5csmg0v6HDX" role="jymVt">
      <property role="TrG5h" value="isOn" />
      <node concept="3Tm6S6" id="5csmg0v6BaI" role="1B3o_S" />
      <node concept="10P_77" id="5csmg0v6Hyi" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3yGwp2RATF2" role="jymVt">
      <property role="TrG5h" value="traceData" />
      <node concept="3Tm6S6" id="3yGwp2RALnB" role="1B3o_S" />
      <node concept="3uibUv" id="3yGwp2RATwL" role="1tU5fm">
        <ref role="3uigEE" to="t4tl:~DclareTraceComponent" resolve="DclareTraceComponent" />
      </node>
    </node>
    <node concept="2tJIrI" id="26TvwnxWNGZ" role="jymVt" />
    <node concept="3clFbW" id="26TvwnxWAoZ" role="jymVt">
      <node concept="3cqZAl" id="26TvwnxWAp1" role="3clF45" />
      <node concept="3Tm1VV" id="26TvwnxWAp2" role="1B3o_S" />
      <node concept="3clFbS" id="26TvwnxWAp3" role="3clF47">
        <node concept="3clFbF" id="26TvwnxWIq7" role="3cqZAp">
          <node concept="37vLTI" id="26TvwnxWIq8" role="3clFbG">
            <node concept="2ShNRf" id="26TvwnxWIq9" role="37vLTx">
              <node concept="1pGfFk" id="26TvwnxWIqa" role="2ShVmc">
                <ref role="37wK5l" to="exr9:~NodeEditorComponent.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,jetbrains.mps.nodeEditor.configuration.EditorConfigurationBuilder)" resolve="NodeEditorComponent" />
                <node concept="37vLTw" id="26TvwnxWIqb" role="37wK5m">
                  <ref role="3cqZAo" node="26TvwnxWDSa" resolve="repos" />
                </node>
                <node concept="2OqwBi" id="26TvwnxWIqc" role="37wK5m">
                  <node concept="2OqwBi" id="26TvwnxWIqd" role="2Oq$k0">
                    <node concept="2OqwBi" id="26TvwnxWIqe" role="2Oq$k0">
                      <node concept="2OqwBi" id="26TvwnxWIqf" role="2Oq$k0">
                        <node concept="2OqwBi" id="26TvwnxWIqg" role="2Oq$k0">
                          <node concept="2OqwBi" id="26TvwnxWIqh" role="2Oq$k0">
                            <node concept="2ShNRf" id="26TvwnxWIqi" role="2Oq$k0">
                              <node concept="1pGfFk" id="26TvwnxWIqj" role="2ShVmc">
                                <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.&lt;init&gt;()" resolve="EditorConfigurationBuilder" />
                              </node>
                            </node>
                            <node concept="liA8E" id="26TvwnxWIqk" role="2OqNvi">
                              <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.showLeftHighlighter(boolean)" resolve="showLeftHighlighter" />
                              <node concept="3clFbT" id="26TvwnxWIql" role="37wK5m">
                                <property role="3clFbU" value="true" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="26TvwnxWIqm" role="2OqNvi">
                            <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.readOnly(boolean)" resolve="readOnly" />
                            <node concept="3clFbT" id="26TvwnxWIqn" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="26TvwnxWIqo" role="2OqNvi">
                          <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.hasContextMenu(boolean)" resolve="hasContextMenu" />
                          <node concept="3clFbT" id="26TvwnxWIqp" role="37wK5m" />
                        </node>
                      </node>
                      <node concept="liA8E" id="26TvwnxWIqq" role="2OqNvi">
                        <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.showSelectionLine(boolean)" resolve="showSelectionLine" />
                        <node concept="3clFbT" id="26TvwnxWIqr" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="26TvwnxWIqs" role="2OqNvi">
                      <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.withUI(boolean)" resolve="withUI" />
                      <node concept="3clFbT" id="26TvwnxWIqt" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="26TvwnxWIqu" role="2OqNvi">
                    <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.hasContextMenu(boolean)" resolve="hasContextMenu" />
                    <node concept="3clFbT" id="26TvwnxWIqv" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="26TvwnxWIqw" role="37vLTJ">
              <node concept="Xjq3P" id="26TvwnxWIqx" role="2Oq$k0" />
              <node concept="2OwXpG" id="26TvwnxWIqy" role="2OqNvi">
                <ref role="2Oxat5" node="26TvwnxWObV" resolve="editor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3yGwp2RDdL7" role="3cqZAp">
          <node concept="37vLTI" id="3yGwp2RDj9j" role="3clFbG">
            <node concept="2OqwBi" id="3yGwp2RDeIs" role="37vLTJ">
              <node concept="Xjq3P" id="3yGwp2RDdL5" role="2Oq$k0" />
              <node concept="2OwXpG" id="3yGwp2RDhdK" role="2OqNvi">
                <ref role="2Oxat5" node="3yGwp2RD3rt" resolve="tree" />
              </node>
            </node>
            <node concept="2ShNRf" id="3yGwp2RchHE" role="37vLTx">
              <node concept="1pGfFk" id="3yGwp2R$ntX" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="3yGwp2Rz$V2" resolve="DclareRulesTree" />
                <node concept="37vLTw" id="3yGwp2R$ntW" role="37wK5m">
                  <ref role="3cqZAo" node="3yGwp2RzmmP" resolve="engine" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="26TvwnxWIrS" role="3cqZAp">
          <node concept="2OqwBi" id="26TvwnxWIrT" role="3clFbG">
            <node concept="Xjq3P" id="26TvwnxWIrU" role="2Oq$k0" />
            <node concept="liA8E" id="26TvwnxWIrV" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollPane.setViewportView(java.awt.Component)" resolve="setViewportView" />
              <node concept="37vLTw" id="3yGwp2R$rIJ" role="37wK5m">
                <ref role="3cqZAo" node="3yGwp2RD3rt" resolve="tree" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="26TvwnxWItF" role="3cqZAp">
          <node concept="2OqwBi" id="26TvwnxWItG" role="3clFbG">
            <node concept="2OqwBi" id="26TvwnxWItH" role="2Oq$k0">
              <node concept="Xjq3P" id="26TvwnxWItI" role="2Oq$k0" />
              <node concept="liA8E" id="26TvwnxWItJ" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JScrollPane.getViewport()" resolve="getViewport" />
              </node>
            </node>
            <node concept="liA8E" id="26TvwnxWItK" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBackground(java.awt.Color)" resolve="setBackground" />
              <node concept="10M0yZ" id="26TvwnxWItL" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5csmg0uKf$M" role="3cqZAp">
          <node concept="37vLTI" id="5csmg0uKkkP" role="3clFbG">
            <node concept="37vLTw" id="5csmg0uKnAT" role="37vLTx">
              <ref role="3cqZAo" node="5csmg0uK8_f" resolve="modelAccess" />
            </node>
            <node concept="2OqwBi" id="5csmg0uKgmP" role="37vLTJ">
              <node concept="Xjq3P" id="5csmg0uKf$K" role="2Oq$k0" />
              <node concept="2OwXpG" id="5csmg0uKjx5" role="2OqNvi">
                <ref role="2Oxat5" node="5csmg0uJVXs" resolve="modelAccess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="26Tvwnyggwq" role="3cqZAp">
          <node concept="37vLTI" id="26TvwnygkOX" role="3clFbG">
            <node concept="2ShNRf" id="26Tvwnygn9W" role="37vLTx">
              <node concept="3zrR0B" id="26TvwnygrXW" role="2ShVmc">
                <node concept="3Tqbb2" id="26TvwnygrXY" role="3zrR0E">
                  <ref role="ehGHo" to="sbtp:5csmg0uERaS" resolve="TraceState" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="26Tvwnyghh4" role="37vLTJ">
              <node concept="Xjq3P" id="26Tvwnyggwo" role="2Oq$k0" />
              <node concept="2OwXpG" id="26TvwnygjQ7" role="2OqNvi">
                <ref role="2Oxat5" node="26Tvwnygc3R" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="26TvwnxWDSa" role="3clF46">
        <property role="TrG5h" value="repos" />
        <node concept="3uibUv" id="26TvwnxWDS9" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="3yGwp2RzmmP" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="3yGwp2RznxZ" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
        </node>
      </node>
      <node concept="37vLTG" id="5csmg0uK8_f" role="3clF46">
        <property role="TrG5h" value="modelAccess" />
        <node concept="3uibUv" id="5csmg0uKoov" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="26TvwnxXJ$t" role="jymVt" />
    <node concept="3clFb_" id="26TvwnxXPuk" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="37vLTG" id="26TvwnxXTll" role="3clF46">
        <property role="TrG5h" value="repository" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="26TvwnxXTlm" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="26TvwnxXTln" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="26TvwnxXTlo" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
        </node>
      </node>
      <node concept="3clFbS" id="26TvwnxXPun" role="3clF47">
        <node concept="3cpWs8" id="2QAAbOpibnJ" role="3cqZAp">
          <node concept="3cpWsn" id="2QAAbOpibnK" role="3cpWs9">
            <property role="TrG5h" value="m" />
            <node concept="H_c77" id="2QAAbOpibnL" role="1tU5fm" />
            <node concept="2OqwBi" id="2QAAbOpibnM" role="33vP2m">
              <node concept="10M0yZ" id="2QAAbOpig9w" role="2Oq$k0">
                <ref role="3cqZAo" node="2QAAbOpi8Wn" resolve="TMP_MODELS" />
                <ref role="1PxDUh" node="26TvwnxWzJB" resolve="DClareTracePanel" />
              </node>
              <node concept="liA8E" id="2QAAbOpibnN" role="2OqNvi">
                <ref role="37wK5l" to="tqvn:~TemporaryModels.createLongTerm(java.lang.String,jetbrains.mps.smodel.tempmodel.TempModuleOptions)" resolve="createLongTerm" />
                <node concept="3cpWs3" id="2QAAbOpibnO" role="37wK5m">
                  <node concept="37vLTw" id="2QAAbOpibnP" role="3uHU7w">
                    <ref role="3cqZAo" node="26TvwnxXTll" resolve="repository" />
                  </node>
                  <node concept="Xl_RD" id="2QAAbOpibnQ" role="3uHU7B">
                    <property role="Xl_RC" value="DclareTrace" />
                  </node>
                </node>
                <node concept="2YIFZM" id="2QAAbOpibnR" role="37wK5m">
                  <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
                  <ref role="37wK5l" to="tqvn:~TempModuleOptions.nonReloadableModule()" resolve="nonReloadableModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QAAbOpibnT" role="3cqZAp">
          <node concept="2OqwBi" id="2QAAbOpibnU" role="3clFbG">
            <node concept="37vLTw" id="2QAAbOpibnV" role="2Oq$k0">
              <ref role="3cqZAo" node="2QAAbOpibnK" resolve="m" />
            </node>
            <node concept="3BYIHo" id="2QAAbOpibnW" role="2OqNvi">
              <node concept="37vLTw" id="2QAAbOpibnX" role="3BYIHq">
                <ref role="3cqZAo" node="26Tvwnygc3R" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3yGwp2R_WYA" role="3cqZAp">
          <node concept="2OqwBi" id="3yGwp2RA3co" role="3clFbG">
            <node concept="37vLTw" id="3yGwp2R_WY$" role="2Oq$k0">
              <ref role="3cqZAo" node="26TvwnxXTln" resolve="engine" />
            </node>
            <node concept="liA8E" id="3yGwp2RAd5a" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.registerTracer(org.modelingvalue.dclare.mps.DclareTracer)" resolve="registerTracer" />
              <node concept="2ShNRf" id="3yGwp2RAkY7" role="37wK5m">
                <node concept="YeOm9" id="3yGwp2RAy1S" role="2ShVmc">
                  <node concept="1Y3b0j" id="3yGwp2RAy1V" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="373rjd" value="true" />
                    <ref role="1Y3XeK" to="t4tl:~DclareTracer" resolve="DclareTracer" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="3yGwp2RAy1W" role="1B3o_S" />
                    <node concept="3clFb_" id="3yGwp2RAy2a" role="jymVt">
                      <property role="TrG5h" value="onModelActive" />
                      <node concept="3Tm1VV" id="3yGwp2RAy2b" role="1B3o_S" />
                      <node concept="3cqZAl" id="3yGwp2RAy2d" role="3clF45" />
                      <node concept="37vLTG" id="3yGwp2RAy2e" role="3clF46">
                        <property role="TrG5h" value="p1" />
                        <node concept="3uibUv" id="3yGwp2RAy2f" role="1tU5fm">
                          <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="3yGwp2RAy2g" role="3clF47" />
                      <node concept="2AHcQZ" id="3yGwp2RAy2i" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="3yGwp2RAy2j" role="jymVt" />
                    <node concept="3clFb_" id="3yGwp2RAy2k" role="jymVt">
                      <property role="TrG5h" value="onRuleSetActive" />
                      <node concept="3Tm1VV" id="3yGwp2RAy2l" role="1B3o_S" />
                      <node concept="3cqZAl" id="3yGwp2RAy2n" role="3clF45" />
                      <node concept="37vLTG" id="3yGwp2RAy2o" role="3clF46">
                        <property role="TrG5h" value="p1" />
                        <node concept="3uibUv" id="3yGwp2RAy2p" role="1tU5fm">
                          <ref role="3uigEE" to="t4tl:~IRuleSet" resolve="IRuleSet" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="3yGwp2RAy2q" role="3clF47" />
                      <node concept="2AHcQZ" id="3yGwp2RAy2s" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="3yGwp2RAy2t" role="jymVt" />
                    <node concept="3clFb_" id="3yGwp2RAy2u" role="jymVt">
                      <property role="TrG5h" value="notifyTraceComponent" />
                      <node concept="3Tm1VV" id="3yGwp2RAy2v" role="1B3o_S" />
                      <node concept="3cqZAl" id="3yGwp2RAy2x" role="3clF45" />
                      <node concept="37vLTG" id="3yGwp2RAy2y" role="3clF46">
                        <property role="TrG5h" value="p1" />
                        <node concept="3uibUv" id="3yGwp2RAy2z" role="1tU5fm">
                          <ref role="3uigEE" to="t4tl:~DclareTraceComponent" resolve="DclareTraceComponent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="3yGwp2RAy2$" role="3clF47">
                        <node concept="3clFbF" id="3yGwp2RB44n" role="3cqZAp">
                          <node concept="37vLTI" id="3yGwp2RBA5y" role="3clFbG">
                            <node concept="37vLTw" id="3yGwp2RBHUi" role="37vLTx">
                              <ref role="3cqZAo" node="3yGwp2RAy2y" resolve="p1" />
                            </node>
                            <node concept="37vLTw" id="3yGwp2RBuMG" role="37vLTJ">
                              <ref role="3cqZAo" node="3yGwp2RATF2" resolve="traceData" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3yGwp2RAy2A" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3yGwp2RDx9A" role="3cqZAp">
          <node concept="2OqwBi" id="3yGwp2RDRIj" role="3clFbG">
            <node concept="2OqwBi" id="3yGwp2RDBRT" role="2Oq$k0">
              <node concept="Xjq3P" id="3yGwp2RDx9$" role="2Oq$k0" />
              <node concept="2OwXpG" id="3yGwp2RDJj7" role="2OqNvi">
                <ref role="2Oxat5" node="3yGwp2RD3rt" resolve="tree" />
              </node>
            </node>
            <node concept="liA8E" id="3yGwp2RH356" role="2OqNvi">
              <ref role="37wK5l" node="3yGwp2RE7zq" resolve="setModules" />
              <node concept="2OqwBi" id="3yGwp2RHhBa" role="37wK5m">
                <node concept="37vLTw" id="3yGwp2RHbje" role="2Oq$k0">
                  <ref role="3cqZAo" node="3yGwp2RATF2" resolve="traceData" />
                </node>
                <node concept="liA8E" id="3yGwp2RHoBo" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DclareTraceComponent.getModules()" resolve="getModules" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="26TvwnxXYr7" role="3cqZAp">
          <node concept="2OqwBi" id="26TvwnxY06e" role="3clFbG">
            <node concept="37vLTw" id="26TvwnxXYr6" role="2Oq$k0">
              <ref role="3cqZAo" node="26TvwnxWObV" resolve="editor" />
            </node>
            <node concept="liA8E" id="26TvwnygIu1" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.editNode(org.jetbrains.mps.openapi.model.SNode)" resolve="editNode" />
              <node concept="37vLTw" id="26TvwnygL8F" role="37wK5m">
                <ref role="3cqZAo" node="26Tvwnygc3R" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="26TvwnxXLsO" role="1B3o_S" />
      <node concept="3cqZAl" id="26TvwnxXPm1" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7po6rTe6VWE" role="jymVt" />
    <node concept="3clFb_" id="7po6rTe7f2V" role="jymVt">
      <property role="TrG5h" value="commiting" />
      <node concept="3clFbS" id="7po6rTe7f2Y" role="3clF47">
        <node concept="3clFbF" id="4SMm55p6MBM" role="3cqZAp">
          <node concept="1rXfSq" id="4SMm55p6MBL" role="3clFbG">
            <ref role="37wK5l" node="4SMm55p6DIP" resolve="syncModulesInTree" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7po6rTe75Mc" role="1B3o_S" />
      <node concept="3cqZAl" id="7po6rTe76Ku" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2fdaBvd46Pr" role="jymVt" />
    <node concept="3clFb_" id="2fdaBvd4cPc" role="jymVt">
      <property role="TrG5h" value="checking" />
      <node concept="3clFbS" id="2fdaBvd4cPd" role="3clF47">
        <node concept="3clFbF" id="2fdaBvd4cPe" role="3cqZAp">
          <node concept="1rXfSq" id="2fdaBvd4cPf" role="3clFbG">
            <ref role="37wK5l" node="4SMm55p6DIP" resolve="syncModulesInTree" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2fdaBvd4cPg" role="1B3o_S" />
      <node concept="3cqZAl" id="2fdaBvd4cPh" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3A_IU4j5bCx" role="jymVt" />
    <node concept="3clFb_" id="25cMPXGpzIc" role="jymVt">
      <property role="TrG5h" value="idle" />
      <node concept="3clFbS" id="25cMPXGpzId" role="3clF47">
        <node concept="3clFbF" id="4SMm55p6DIT" role="3cqZAp">
          <node concept="1rXfSq" id="4SMm55p6DIS" role="3clFbG">
            <ref role="37wK5l" node="4SMm55p6DIP" resolve="syncModulesInTree" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="25cMPXGpzIn" role="1B3o_S" />
      <node concept="3cqZAl" id="25cMPXGpzIo" role="3clF45" />
    </node>
    <node concept="3clFb_" id="4SMm55p6DIP" role="jymVt">
      <property role="TrG5h" value="syncModulesInTree" />
      <node concept="3Tm6S6" id="4SMm55p6DIQ" role="1B3o_S" />
      <node concept="3cqZAl" id="4SMm55p6DIR" role="3clF45" />
      <node concept="3clFbS" id="4SMm55p6DIz" role="3clF47">
        <node concept="3clFbJ" id="4SMm55p6DI$" role="3cqZAp">
          <node concept="3clFbS" id="4SMm55p6DI_" role="3clFbx">
            <node concept="3clFbF" id="4SMm55p6DIA" role="3cqZAp">
              <node concept="2OqwBi" id="4SMm55p6DIB" role="3clFbG">
                <node concept="2OqwBi" id="4SMm55p6DIC" role="2Oq$k0">
                  <node concept="Xjq3P" id="4SMm55p6DID" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4SMm55p6DIE" role="2OqNvi">
                    <ref role="2Oxat5" node="3yGwp2RD3rt" resolve="tree" />
                  </node>
                </node>
                <node concept="liA8E" id="4SMm55p6DIF" role="2OqNvi">
                  <ref role="37wK5l" node="3yGwp2RE7zq" resolve="setModules" />
                  <node concept="2OqwBi" id="4SMm55p6DIG" role="37wK5m">
                    <node concept="37vLTw" id="4SMm55p6DIH" role="2Oq$k0">
                      <ref role="3cqZAo" node="3yGwp2RATF2" resolve="traceData" />
                    </node>
                    <node concept="liA8E" id="4SMm55p6DII" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DclareTraceComponent.getModules()" resolve="getModules" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4SMm55p6DIJ" role="3clFbw">
            <node concept="10Nm6u" id="4SMm55p6DIK" role="3uHU7w" />
            <node concept="37vLTw" id="4SMm55p6DIL" role="3uHU7B">
              <ref role="3cqZAo" node="3yGwp2RATF2" resolve="traceData" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="25cMPXGprr0" role="jymVt" />
    <node concept="312cEg" id="3A_IU4jbd6A" role="jymVt">
      <property role="TrG5h" value="isInited" />
      <node concept="3Tm6S6" id="3A_IU4jb2Ib" role="1B3o_S" />
      <node concept="10P_77" id="3A_IU4jbb_d" role="1tU5fm" />
      <node concept="3clFbT" id="3A_IU4jblzM" role="33vP2m" />
    </node>
    <node concept="312cEg" id="3A_IU4j6dX3" role="jymVt">
      <property role="TrG5h" value="allRuleSets" />
      <node concept="3Tm6S6" id="3A_IU4j5V5T" role="1B3o_S" />
      <node concept="3uibUv" id="3A_IU4j698u" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="17QB3L" id="3A_IU4j6aPI" role="11_B2D" />
        <node concept="3Tqbb2" id="3A_IU4j6dWu" role="11_B2D">
          <ref role="ehGHo" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
        </node>
      </node>
      <node concept="2ShNRf" id="3A_IU4jbpCk" role="33vP2m">
        <node concept="1pGfFk" id="3A_IU4jbT8H" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3A_IU4j5GS4" role="jymVt" />
    <node concept="3clFb_" id="3A_IU4j5oWk" role="jymVt">
      <property role="TrG5h" value="buildAvailableRuleSets" />
      <node concept="3clFbS" id="3A_IU4j5oWn" role="3clF47">
        <node concept="3clFbJ" id="3A_IU4jcgqG" role="3cqZAp">
          <node concept="3clFbS" id="3A_IU4jcgqI" role="3clFbx">
            <node concept="3clFbF" id="3A_IU4j5wjG" role="3cqZAp">
              <node concept="2OqwBi" id="3A_IU4j5wjH" role="3clFbG">
                <node concept="2OqwBi" id="3A_IU4j5wjI" role="2Oq$k0">
                  <node concept="37vLTw" id="3A_IU4j5wjJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3A_IU4j6v1O" resolve="r" />
                  </node>
                  <node concept="liA8E" id="3A_IU4j5wjK" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SRepository.getModules()" resolve="getModules" />
                  </node>
                </node>
                <node concept="liA8E" id="3A_IU4j5wjL" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Iterable.forEach(java.util.function.Consumer)" resolve="forEach" />
                  <node concept="1bVj0M" id="3A_IU4j5wjM" role="37wK5m">
                    <node concept="3clFbS" id="3A_IU4j5wjN" role="1bW5cS">
                      <node concept="3clFbF" id="3A_IU4j5wjO" role="3cqZAp">
                        <node concept="2OqwBi" id="3A_IU4j5wjP" role="3clFbG">
                          <node concept="2OqwBi" id="3A_IU4j5wjQ" role="2Oq$k0">
                            <node concept="37vLTw" id="3A_IU4j5wjR" role="2Oq$k0">
                              <ref role="3cqZAo" node="3A_IU4j5wkM" resolve="m" />
                            </node>
                            <node concept="liA8E" id="3A_IU4j5wjS" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                            </node>
                          </node>
                          <node concept="liA8E" id="3A_IU4j5wjT" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.forEach(java.util.function.Consumer)" resolve="forEach" />
                            <node concept="1bVj0M" id="3A_IU4j5wjU" role="37wK5m">
                              <node concept="3clFbS" id="3A_IU4j5wjV" role="1bW5cS">
                                <node concept="3clFbF" id="3A_IU4j5wjW" role="3cqZAp">
                                  <node concept="2OqwBi" id="3A_IU4j5wjX" role="3clFbG">
                                    <node concept="2OqwBi" id="3A_IU4j5wjY" role="2Oq$k0">
                                      <node concept="37vLTw" id="3A_IU4j5wjZ" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3A_IU4j5wkK" resolve="e" />
                                      </node>
                                      <node concept="liA8E" id="3A_IU4j5wk0" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="3A_IU4j5wk1" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Iterable.forEach(java.util.function.Consumer)" resolve="forEach" />
                                      <node concept="1bVj0M" id="3A_IU4j5wk2" role="37wK5m">
                                        <node concept="3clFbS" id="3A_IU4j5wk3" role="1bW5cS">
                                          <node concept="3clFbJ" id="3A_IU4j5wkh" role="3cqZAp">
                                            <node concept="3clFbS" id="3A_IU4j5wki" role="3clFbx">
                                              <node concept="3clFbF" id="3A_IU4jnsLT" role="3cqZAp">
                                                <node concept="2OqwBi" id="3A_IU4jnsLQ" role="3clFbG">
                                                  <node concept="10M0yZ" id="3A_IU4jnsLR" role="2Oq$k0">
                                                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                                    <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                                                  </node>
                                                  <node concept="liA8E" id="3A_IU4jnsLS" role="2OqNvi">
                                                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                                                    <node concept="3cpWs3" id="3A_IU4jo0HI" role="37wK5m">
                                                      <node concept="2OqwBi" id="3A_IU4joeme" role="3uHU7w">
                                                        <node concept="37vLTw" id="3A_IU4jo861" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="3A_IU4j5wkI" resolve="n" />
                                                        </node>
                                                        <node concept="liA8E" id="3A_IU4jomae" role="2OqNvi">
                                                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                                        </node>
                                                      </node>
                                                      <node concept="Xl_RD" id="3A_IU4jn$OM" role="3uHU7B">
                                                        <property role="Xl_RC" value="   " />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3clFbF" id="3A_IU4j8Vj8" role="3cqZAp">
                                                <node concept="2OqwBi" id="3A_IU4j92cI" role="3clFbG">
                                                  <node concept="37vLTw" id="3A_IU4j8Vj6" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="3A_IU4j6dX3" resolve="allRuleSets" />
                                                  </node>
                                                  <node concept="liA8E" id="3A_IU4j9ahZ" role="2OqNvi">
                                                    <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                                                    <node concept="2OqwBi" id="3A_IU4j9pbJ" role="37wK5m">
                                                      <node concept="37vLTw" id="3A_IU4j9iIL" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="3A_IU4j5wkI" resolve="n" />
                                                      </node>
                                                      <node concept="liA8E" id="3A_IU4j9xai" role="2OqNvi">
                                                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                                      </node>
                                                    </node>
                                                    <node concept="1PxgMI" id="3A_IU4ja1$2" role="37wK5m">
                                                      <node concept="chp4Y" id="3A_IU4ja9lU" role="3oSUPX">
                                                        <ref role="cht4Q" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
                                                      </node>
                                                      <node concept="37vLTw" id="3A_IU4j9M7h" role="1m5AlR">
                                                        <ref role="3cqZAo" node="3A_IU4j5wkI" resolve="n" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="2OqwBi" id="3A_IU4j5wkE" role="3clFbw">
                                              <node concept="37vLTw" id="3A_IU4j5wkF" role="2Oq$k0">
                                                <ref role="3cqZAo" node="3A_IU4j5wkI" resolve="n" />
                                              </node>
                                              <node concept="liA8E" id="3A_IU4j5wkG" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SNode.isInstanceOfConcept(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isInstanceOfConcept" />
                                                <node concept="35c_gC" id="3A_IU4j5wkH" role="37wK5m">
                                                  <ref role="35c_gD" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="3A_IU4j5wkI" role="1bW2Oz">
                                          <property role="TrG5h" value="n" />
                                          <node concept="2jxLKc" id="3A_IU4j5wkJ" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="3A_IU4j5wkK" role="1bW2Oz">
                                <property role="TrG5h" value="e" />
                                <node concept="2jxLKc" id="3A_IU4j5wkL" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="3A_IU4j5wkM" role="1bW2Oz">
                      <property role="TrG5h" value="m" />
                      <node concept="3uibUv" id="3A_IU4j5wkN" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3A_IU4jePsa" role="3cqZAp">
              <node concept="37vLTI" id="3A_IU4jeWYS" role="3clFbG">
                <node concept="37vLTw" id="3A_IU4jePs8" role="37vLTJ">
                  <ref role="3cqZAo" node="3A_IU4jbd6A" resolve="isInited" />
                </node>
                <node concept="3clFbT" id="3A_IU4jfjZv" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="3A_IU4jcoLS" role="3clFbw">
            <node concept="37vLTw" id="3A_IU4jcwex" role="3fr31v">
              <ref role="3cqZAo" node="3A_IU4jbd6A" resolve="isInited" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3A_IU4j5lUa" role="1B3o_S" />
      <node concept="3cqZAl" id="3A_IU4j5oWi" role="3clF45" />
      <node concept="37vLTG" id="3A_IU4j6v1O" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3uibUv" id="3A_IU4j6v1N" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="26TvwnxWTqO" role="jymVt" />
    <node concept="3clFb_" id="26TvwnyiyVD" role="jymVt">
      <property role="TrG5h" value="on" />
      <node concept="3clFbS" id="26TvwnyiyVG" role="3clF47">
        <node concept="3clFbJ" id="5csmg0v86ts" role="3cqZAp">
          <node concept="3clFbS" id="5csmg0v86tu" role="3clFbx">
            <node concept="3clFbF" id="5csmg0v3Rys" role="3cqZAp">
              <node concept="2OqwBi" id="5csmg0v3Y9g" role="3clFbG">
                <node concept="2OqwBi" id="5csmg0v3Tv2" role="2Oq$k0">
                  <node concept="37vLTw" id="5csmg0v3Ryq" role="2Oq$k0">
                    <ref role="3cqZAo" node="26Tvwnygc3R" resolve="root" />
                  </node>
                  <node concept="3Tsc0h" id="5csmg0v3UWy" role="2OqNvi">
                    <ref role="3TtcxE" to="sbtp:5csmg0uERaX" resolve="loadedModels" />
                  </node>
                </node>
                <node concept="2Kehj3" id="5csmg0v41yU" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="4rPXX8gXl6G" role="3cqZAp">
              <node concept="2OqwBi" id="4rPXX8gX_RM" role="3clFbG">
                <node concept="2OqwBi" id="4rPXX8gXqSB" role="2Oq$k0">
                  <node concept="37vLTw" id="4rPXX8gXl6E" role="2Oq$k0">
                    <ref role="3cqZAo" node="26Tvwnygc3R" resolve="root" />
                  </node>
                  <node concept="3Tsc0h" id="4rPXX8gXvST" role="2OqNvi">
                    <ref role="3TtcxE" to="sbtp:4rPXX8gwr3t" resolve="loadedRuleSets" />
                  </node>
                </node>
                <node concept="2Kehj3" id="4rPXX8gXGsO" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5csmg0v8bss" role="3clFbw">
            <node concept="37vLTw" id="5csmg0v8gcT" role="3fr31v">
              <ref role="3cqZAo" node="5csmg0v6HDX" resolve="isOn" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5csmg0v6OKo" role="3cqZAp">
          <node concept="37vLTI" id="5csmg0v73EY" role="3clFbG">
            <node concept="3clFbT" id="5csmg0v7d0N" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="5csmg0v6SVW" role="37vLTJ">
              <node concept="Xjq3P" id="5csmg0v6OKm" role="2Oq$k0" />
              <node concept="2OwXpG" id="5csmg0v6YNb" role="2OqNvi">
                <ref role="2Oxat5" node="5csmg0v6HDX" resolve="isOn" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4SMm55p6UuD" role="3cqZAp">
          <node concept="1rXfSq" id="4SMm55p6UuB" role="3clFbG">
            <ref role="37wK5l" node="4SMm55p6DIP" resolve="syncModulesInTree" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="26TvwnyiwXg" role="1B3o_S" />
      <node concept="3cqZAl" id="26TvwnyiyNm" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5csmg0v3Aj4" role="jymVt" />
    <node concept="3clFb_" id="5csmg0v3Ic9" role="jymVt">
      <property role="TrG5h" value="off" />
      <node concept="3clFbS" id="5csmg0v3Icc" role="3clF47">
        <node concept="3clFbF" id="5csmg0v7mkD" role="3cqZAp">
          <node concept="37vLTI" id="5csmg0v7_yZ" role="3clFbG">
            <node concept="3clFbT" id="5csmg0v7EUE" role="37vLTx" />
            <node concept="2OqwBi" id="5csmg0v7qxb" role="37vLTJ">
              <node concept="Xjq3P" id="5csmg0v7mkB" role="2Oq$k0" />
              <node concept="2OwXpG" id="5csmg0v7wy$" role="2OqNvi">
                <ref role="2Oxat5" node="5csmg0v6HDX" resolve="isOn" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5csmg0v3MH3" role="3cqZAp">
          <node concept="1rXfSq" id="5csmg0v3MH2" role="3clFbG">
            <ref role="37wK5l" node="5csmg0ui$hJ" resolve="refreshEditor" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5csmg0v3EXv" role="1B3o_S" />
      <node concept="3cqZAl" id="5csmg0v3I4A" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5csmg0uQNFr" role="jymVt" />
    <node concept="3clFb_" id="5csmg0ui$hJ" role="jymVt">
      <property role="TrG5h" value="refreshEditor" />
      <node concept="3Tm6S6" id="5csmg0ui$hK" role="1B3o_S" />
      <node concept="3cqZAl" id="5csmg0ui$hL" role="3clF45" />
      <node concept="3clFbS" id="5csmg0ui$hw" role="3clF47">
        <node concept="3clFbF" id="5csmg0ui$hx" role="3cqZAp">
          <node concept="2OqwBi" id="5csmg0ui$hy" role="3clFbG">
            <node concept="2OqwBi" id="5csmg0ui$hz" role="2Oq$k0">
              <node concept="Xjq3P" id="5csmg0ui$h$" role="2Oq$k0" />
              <node concept="2OwXpG" id="5csmg0ui$h_" role="2OqNvi">
                <ref role="2Oxat5" node="26TvwnxWObV" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="5csmg0ui$hA" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~NodeEditorComponent.rebuildEditorContent()" resolve="rebuildEditorContent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5csmg0ui$hB" role="3cqZAp">
          <node concept="2OqwBi" id="5csmg0ui$hC" role="3clFbG">
            <node concept="2OqwBi" id="5csmg0ui$hD" role="2Oq$k0">
              <node concept="Xjq3P" id="5csmg0ui$hE" role="2Oq$k0" />
              <node concept="2OwXpG" id="5csmg0ui$hF" role="2OqNvi">
                <ref role="2Oxat5" node="26TvwnxWObV" resolve="editor" />
              </node>
            </node>
            <node concept="liA8E" id="5csmg0ui$hG" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="26Tvwnyj33L" role="jymVt" />
    <node concept="2tJIrI" id="26Tvwnyj5V1" role="jymVt" />
    <node concept="3Tm1VV" id="26TvwnxWzJC" role="1B3o_S" />
    <node concept="3uibUv" id="26TvwnxWE4D" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JScrollPane" resolve="JScrollPane" />
    </node>
  </node>
  <node concept="sEfby" id="76$5hx$c86E">
    <property role="TrG5h" value="DClareTrace" />
    <property role="2XNbzY" value="Sharing" />
    <node concept="2XrIbr" id="76$5hx$cdTb" role="2XNbBy">
      <property role="TrG5h" value="on" />
      <node concept="3cqZAl" id="76$5hx$cdTc" role="3clF45" />
      <node concept="3clFbS" id="76$5hx$cdTd" role="3clF47">
        <node concept="3clFbJ" id="7po6rTe8gZz" role="3cqZAp">
          <node concept="3clFbS" id="7po6rTe8gZ_" role="3clFbx">
            <node concept="3clFbF" id="76$5hx$cdTe" role="3cqZAp">
              <node concept="2OqwBi" id="76$5hx$cdTf" role="3clFbG">
                <node concept="2OqwBi" id="76$5hx$cdTg" role="2Oq$k0">
                  <node concept="2WthIp" id="76$5hx$cdTh" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="76$5hx$cdTi" role="2OqNvi">
                    <ref role="2WH_rO" node="76$5hx$c8il" resolve="trace" />
                  </node>
                </node>
                <node concept="liA8E" id="76$5hx$cdTj" role="2OqNvi">
                  <ref role="37wK5l" node="26TvwnyiyVD" resolve="on" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7po6rTe8i7n" role="3clFbw">
            <node concept="10Nm6u" id="7po6rTe8ipk" role="3uHU7w" />
            <node concept="2OqwBi" id="7po6rTe8h9T" role="3uHU7B">
              <node concept="2WthIp" id="7po6rTe8h0E" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7po6rTe8hqW" role="2OqNvi">
                <ref role="2WH_rO" node="76$5hx$c8il" resolve="trace" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="5csmg0v4AjY" role="2XNbBy">
      <property role="TrG5h" value="off" />
      <node concept="3cqZAl" id="5csmg0v4ANv" role="3clF45" />
      <node concept="3clFbS" id="5csmg0v4Ak0" role="3clF47">
        <node concept="3clFbJ" id="7po6rTe8iG_" role="3cqZAp">
          <node concept="3clFbS" id="7po6rTe8iGB" role="3clFbx">
            <node concept="3clFbF" id="5csmg0v4B4O" role="3cqZAp">
              <node concept="2OqwBi" id="5csmg0v4BX_" role="3clFbG">
                <node concept="2OqwBi" id="5csmg0v4Bcc" role="2Oq$k0">
                  <node concept="2WthIp" id="5csmg0v4B4N" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="5csmg0v4Bpx" role="2OqNvi">
                    <ref role="2WH_rO" node="76$5hx$c8il" resolve="trace" />
                  </node>
                </node>
                <node concept="liA8E" id="5csmg0v4CSd" role="2OqNvi">
                  <ref role="37wK5l" node="5csmg0v3Ic9" resolve="off" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7po6rTe8jUt" role="3clFbw">
            <node concept="10Nm6u" id="7po6rTe8kkR" role="3uHU7w" />
            <node concept="2OqwBi" id="7po6rTe8j1G" role="3uHU7B">
              <node concept="2WthIp" id="7po6rTe8iS_" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7po6rTe8jdn" role="2OqNvi">
                <ref role="2WH_rO" node="76$5hx$c8il" resolve="trace" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="76$5hx$c8il" role="2XNbBz">
      <property role="TrG5h" value="trace" />
      <node concept="3Tm6S6" id="76$5hx$c8im" role="1B3o_S" />
      <node concept="3uibUv" id="76$5hx$c8in" role="1tU5fm">
        <ref role="3uigEE" node="26TvwnxWzJB" resolve="DClareTracePanel" />
      </node>
    </node>
    <node concept="2UmK3q" id="76$5hx$c86F" role="2Um5zG">
      <node concept="3clFbS" id="76$5hx$c86G" role="2VODD2">
        <node concept="3clFbF" id="76$5hx$ceuO" role="3cqZAp">
          <node concept="2OqwBi" id="76$5hx$ceHH" role="3clFbG">
            <node concept="2WthIp" id="76$5hx$ceuN" role="2Oq$k0" />
            <node concept="2BZ7hE" id="76$5hx$ceZ2" role="2OqNvi">
              <ref role="2WH_rO" node="76$5hx$c8il" resolve="trace" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2xpIHi" id="76$5hx$c8o7" role="uR5cp">
      <node concept="3clFbS" id="76$5hx$c8o8" role="2VODD2">
        <node concept="3clFbJ" id="69sQFvzxf8I" role="3cqZAp">
          <node concept="3clFbS" id="69sQFvzxf8K" role="3clFbx">
            <node concept="3cpWs8" id="76$5hx$c8ol" role="3cqZAp">
              <node concept="3cpWsn" id="76$5hx$c8om" role="3cpWs9">
                <property role="TrG5h" value="mpsProject" />
                <node concept="3uibUv" id="76$5hx$c8on" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
                </node>
                <node concept="2YIFZM" id="76$5hx$c8oo" role="33vP2m">
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                  <node concept="2xqhHp" id="76$5hx$c8op" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="76$5hx$c8oq" role="3cqZAp">
              <node concept="3clFbS" id="76$5hx$c8or" role="3clFbx">
                <node concept="3cpWs8" id="76$5hx$c8os" role="3cqZAp">
                  <node concept="3cpWsn" id="76$5hx$c8ot" role="3cpWs9">
                    <property role="TrG5h" value="repos" />
                    <node concept="3uibUv" id="76$5hx$c8ou" role="1tU5fm">
                      <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                    </node>
                    <node concept="2YIFZM" id="76$5hx$c8ov" role="33vP2m">
                      <ref role="37wK5l" to="alof:~ProjectHelper.getProjectRepository(com.intellij.openapi.project.Project)" resolve="getProjectRepository" />
                      <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                      <node concept="2xqhHp" id="76$5hx$c8ow" role="37wK5m" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="76$5hx$c8ox" role="3cqZAp">
                  <node concept="3cpWsn" id="76$5hx$c8oy" role="3cpWs9">
                    <property role="TrG5h" value="engine" />
                    <node concept="3uibUv" id="76$5hx$c8oz" role="1tU5fm">
                      <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
                    </node>
                    <node concept="2YIFZM" id="3z4syYQoPsu" role="33vP2m">
                      <ref role="37wK5l" to="u4ym:3z4syYPRmGX" resolve="getEngine" />
                      <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                      <node concept="2xqhHp" id="3z4syYQoPsv" role="37wK5m" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="76$5hx$c8oC" role="3cqZAp">
                  <node concept="37vLTI" id="76$5hx$c8oD" role="3clFbG">
                    <node concept="2ShNRf" id="76$5hx$c8oE" role="37vLTx">
                      <node concept="1pGfFk" id="76$5hx$c8oF" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" node="26TvwnxWAoZ" resolve="DClareTracePanel" />
                        <node concept="37vLTw" id="76$5hx$c8oG" role="37wK5m">
                          <ref role="3cqZAo" node="76$5hx$c8ot" resolve="repos" />
                        </node>
                        <node concept="37vLTw" id="3yGwp2RzhhY" role="37wK5m">
                          <ref role="3cqZAo" node="76$5hx$c8oy" resolve="engine" />
                        </node>
                        <node concept="2OqwBi" id="5csmg0uK778" role="37wK5m">
                          <node concept="37vLTw" id="5csmg0uK6B9" role="2Oq$k0">
                            <ref role="3cqZAo" node="76$5hx$c8om" resolve="mpsProject" />
                          </node>
                          <node concept="liA8E" id="5csmg0uK7IF" role="2OqNvi">
                            <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="76$5hx$c8oH" role="37vLTJ">
                      <node concept="2WthIp" id="76$5hx$c8oI" role="2Oq$k0" />
                      <node concept="2BZ7hE" id="76$5hx$c8oJ" role="2OqNvi">
                        <ref role="2WH_rO" node="76$5hx$c8il" resolve="trace" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="76$5hx$c8oK" role="3cqZAp">
                  <node concept="2OqwBi" id="76$5hx$c8oL" role="3clFbG">
                    <node concept="2OqwBi" id="76$5hx$c8oM" role="2Oq$k0">
                      <node concept="37vLTw" id="76$5hx$c8oN" role="2Oq$k0">
                        <ref role="3cqZAo" node="76$5hx$c8om" resolve="mpsProject" />
                      </node>
                      <node concept="liA8E" id="76$5hx$c8oO" role="2OqNvi">
                        <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                      </node>
                    </node>
                    <node concept="liA8E" id="76$5hx$c8oP" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~ModelAccess.executeCommandInEDT(java.lang.Runnable)" resolve="executeCommandInEDT" />
                      <node concept="1bVj0M" id="76$5hx$c8oQ" role="37wK5m">
                        <node concept="3clFbS" id="76$5hx$c8oR" role="1bW5cS">
                          <node concept="3clFbF" id="76$5hx$c8oS" role="3cqZAp">
                            <node concept="2OqwBi" id="76$5hx$c8oT" role="3clFbG">
                              <node concept="2OqwBi" id="76$5hx$c8oU" role="2Oq$k0">
                                <node concept="2WthIp" id="76$5hx$c8oV" role="2Oq$k0" />
                                <node concept="2BZ7hE" id="76$5hx$c8oW" role="2OqNvi">
                                  <ref role="2WH_rO" node="76$5hx$c8il" resolve="trace" />
                                </node>
                              </node>
                              <node concept="liA8E" id="76$5hx$c8oX" role="2OqNvi">
                                <ref role="37wK5l" node="26TvwnxXPuk" resolve="init" />
                                <node concept="37vLTw" id="76$5hx$c8oY" role="37wK5m">
                                  <ref role="3cqZAo" node="76$5hx$c8ot" resolve="repos" />
                                </node>
                                <node concept="37vLTw" id="76$5hx$c8oZ" role="37wK5m">
                                  <ref role="3cqZAo" node="76$5hx$c8oy" resolve="engine" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="76$5hx$c8p0" role="3cqZAp">
                            <node concept="2OqwBi" id="76$5hx$c8p1" role="3clFbG">
                              <node concept="2WthIp" id="76$5hx$c8p2" role="2Oq$k0" />
                              <node concept="liA8E" id="76$5hx$c8p3" role="2OqNvi">
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
              <node concept="3y3z36" id="76$5hx$c8p5" role="3clFbw">
                <node concept="10Nm6u" id="76$5hx$c8p6" role="3uHU7w" />
                <node concept="37vLTw" id="76$5hx$c8p7" role="3uHU7B">
                  <ref role="3cqZAo" node="76$5hx$c8om" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="69sQFvzxfqZ" role="3clFbw">
            <ref role="37wK5l" to="t4tl:~DClareMPS.isCollaberationEnabled()" resolve="isCollaberationEnabled" />
            <ref role="1Pybhc" to="t4tl:~DClareMPS" resolve="DClareMPS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2xpOpl" id="2QAAbOphSIH" role="uR5co">
      <node concept="3clFbS" id="2QAAbOphSII" role="2VODD2" />
    </node>
    <node concept="2XrIbr" id="7po6rTe6Qeq" role="2XNbBy">
      <property role="TrG5h" value="checking" />
      <node concept="3cqZAl" id="7po6rTe6Qzz" role="3clF45" />
      <node concept="3clFbS" id="7po6rTe6Qes" role="3clF47">
        <node concept="3clFbJ" id="7po6rTe8k_k" role="3cqZAp">
          <node concept="3clFbS" id="7po6rTe8k_m" role="3clFbx">
            <node concept="3clFbF" id="7po6rTe6QLn" role="3cqZAp">
              <node concept="2OqwBi" id="7po6rTe6RC1" role="3clFbG">
                <node concept="2OqwBi" id="7po6rTe6QSH" role="2Oq$k0">
                  <node concept="2WthIp" id="7po6rTe6QLm" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="7po6rTe6R46" role="2OqNvi">
                    <ref role="2WH_rO" node="76$5hx$c8il" resolve="trace" />
                  </node>
                </node>
                <node concept="liA8E" id="7po6rTe7ypF" role="2OqNvi">
                  <ref role="37wK5l" node="2fdaBvd4cPc" resolve="checking" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7po6rTe8lj6" role="3clFbw">
            <node concept="10Nm6u" id="7po6rTe8l_1" role="3uHU7w" />
            <node concept="2OqwBi" id="7po6rTe8kJ$" role="3uHU7B">
              <node concept="2WthIp" id="7po6rTe8kAn" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7po6rTe8l0_" role="2OqNvi">
                <ref role="2WH_rO" node="76$5hx$c8il" resolve="trace" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="2fdaBvd3NL8" role="2XNbBy">
      <property role="TrG5h" value="commiting" />
      <node concept="3cqZAl" id="2fdaBvd3NL9" role="3clF45" />
      <node concept="3clFbS" id="2fdaBvd3NLa" role="3clF47">
        <node concept="3clFbJ" id="2fdaBvd3NLb" role="3cqZAp">
          <node concept="3clFbS" id="2fdaBvd3NLc" role="3clFbx">
            <node concept="3clFbF" id="2fdaBvd3NLd" role="3cqZAp">
              <node concept="2OqwBi" id="2fdaBvd3NLe" role="3clFbG">
                <node concept="2OqwBi" id="2fdaBvd3NLf" role="2Oq$k0">
                  <node concept="2WthIp" id="2fdaBvd3NLg" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="2fdaBvd3NLh" role="2OqNvi">
                    <ref role="2WH_rO" node="76$5hx$c8il" resolve="trace" />
                  </node>
                </node>
                <node concept="liA8E" id="2fdaBvd3NLi" role="2OqNvi">
                  <ref role="37wK5l" node="7po6rTe7f2V" resolve="commiting" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2fdaBvd3NLj" role="3clFbw">
            <node concept="10Nm6u" id="2fdaBvd3NLk" role="3uHU7w" />
            <node concept="2OqwBi" id="2fdaBvd3NLl" role="3uHU7B">
              <node concept="2WthIp" id="2fdaBvd3NLm" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2fdaBvd3NLn" role="2OqNvi">
                <ref role="2WH_rO" node="76$5hx$c8il" resolve="trace" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="25cMPXGpWqk" role="2XNbBy">
      <property role="TrG5h" value="idle" />
      <node concept="3cqZAl" id="25cMPXGpWql" role="3clF45" />
      <node concept="3clFbS" id="25cMPXGpWqm" role="3clF47">
        <node concept="3clFbJ" id="25cMPXGpWqn" role="3cqZAp">
          <node concept="3clFbS" id="25cMPXGpWqo" role="3clFbx">
            <node concept="3clFbF" id="25cMPXGpWqp" role="3cqZAp">
              <node concept="2OqwBi" id="25cMPXGpWqq" role="3clFbG">
                <node concept="2OqwBi" id="25cMPXGpWqr" role="2Oq$k0">
                  <node concept="2WthIp" id="25cMPXGpWqs" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="25cMPXGpWqt" role="2OqNvi">
                    <ref role="2WH_rO" node="76$5hx$c8il" resolve="trace" />
                  </node>
                </node>
                <node concept="liA8E" id="25cMPXGpWqu" role="2OqNvi">
                  <ref role="37wK5l" node="25cMPXGpzIc" resolve="idle" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="25cMPXGpWqv" role="3clFbw">
            <node concept="10Nm6u" id="25cMPXGpWqw" role="3uHU7w" />
            <node concept="2OqwBi" id="25cMPXGpWqx" role="3uHU7B">
              <node concept="2WthIp" id="25cMPXGpWqy" role="2Oq$k0" />
              <node concept="2BZ7hE" id="25cMPXGpWqz" role="2OqNvi">
                <ref role="2WH_rO" node="76$5hx$c8il" resolve="trace" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1QGGSu" id="7q8MvY73wDg" role="1nVCmq">
      <property role="1iqoE4" value="${module}/icons/Dclare.png" />
    </node>
  </node>
  <node concept="sEfby" id="cEL$G_Lser">
    <property role="TrG5h" value="DClareModelChecks" />
    <property role="2XNbzY" value="Checker" />
    <node concept="2BZ0e9" id="cEL$G_Lwnu" role="2XNbBz">
      <property role="TrG5h" value="viewer" />
      <node concept="3Tm6S6" id="cEL$G_Lwnv" role="1B3o_S" />
      <node concept="3uibUv" id="cEL$G_LypN" role="1tU5fm">
        <ref role="3uigEE" to="phxh:3etVqSRRNr5" resolve="ModelCheckerViewer" />
      </node>
    </node>
    <node concept="2UmK3q" id="cEL$G_Lses" role="2Um5zG">
      <node concept="3clFbS" id="cEL$G_Lset" role="2VODD2">
        <node concept="3clFbF" id="cEL$G_M1Du" role="3cqZAp">
          <node concept="2OqwBi" id="cEL$G_M1S8" role="3clFbG">
            <node concept="2WthIp" id="cEL$G_M1Dt" role="2Oq$k0" />
            <node concept="2BZ7hE" id="cEL$G_M29t" role="2OqNvi">
              <ref role="2WH_rO" node="cEL$G_Lwnu" resolve="viewer" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2xpIHi" id="cEL$G_Lwng" role="uR5cp">
      <node concept="3clFbS" id="cEL$G_Lwnh" role="2VODD2">
        <node concept="3clFbF" id="cEL$G_LyOh" role="3cqZAp">
          <node concept="37vLTI" id="cEL$G_LzFW" role="3clFbG">
            <node concept="2ShNRf" id="cEL$G_L$Mx" role="37vLTx">
              <node concept="1pGfFk" id="cEL$G_LRPb" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="phxh:2AAgPT$dvbg" resolve="ModelCheckerViewer" />
                <node concept="2xqhHp" id="cEL$G_M0Vq" role="37wK5m" />
                <node concept="3clFbT" id="4fajGPAIYRh" role="37wK5m" />
              </node>
            </node>
            <node concept="2OqwBi" id="cEL$G_LyOb" role="37vLTJ">
              <node concept="2WthIp" id="cEL$G_LyOe" role="2Oq$k0" />
              <node concept="2BZ7hE" id="cEL$G_LyOg" role="2OqNvi">
                <ref role="2WH_rO" node="cEL$G_Lwnu" resolve="viewer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="cEL$G_PW8$" role="3cqZAp">
          <node concept="3cpWsn" id="cEL$G_PW8_" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="cEL$G_PW8A" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2YIFZM" id="cEL$G_PW8B" role="33vP2m">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="2xqhHp" id="cEL$G_PW8C" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="cEL$G_M1kG" role="3cqZAp" />
        <node concept="3cpWs8" id="cEL$G_MIPs" role="3cqZAp">
          <node concept="3cpWsn" id="cEL$G_MIPt" role="3cpWs9">
            <property role="TrG5h" value="engine" />
            <node concept="3uibUv" id="cEL$G_MILG" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
            </node>
            <node concept="2YIFZM" id="3z4syYQoRil" role="33vP2m">
              <ref role="37wK5l" to="u4ym:3z4syYPRmGX" resolve="getEngine" />
              <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
              <node concept="2xqhHp" id="3z4syYQoRim" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="cEL$G_OFJ9" role="3cqZAp">
          <node concept="3cpWsn" id="cEL$G_OFJa" role="3cpWs9">
            <property role="TrG5h" value="listener" />
            <node concept="3uibUv" id="cEL$G_OFJb" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DclareForMPSEngine$IssuesChangeListener" resolve="DclareForMPSEngine.IssuesChangeListener" />
            </node>
            <node concept="2ShNRf" id="cEL$G_OFUu" role="33vP2m">
              <node concept="YeOm9" id="cEL$G_OKOY" role="2ShVmc">
                <node concept="1Y3b0j" id="cEL$G_OKP1" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" to="t4tl:~DclareForMPSEngine$IssuesChangeListener" resolve="DclareForMPSEngine.IssuesChangeListener" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="cEL$G_OKP2" role="1B3o_S" />
                  <node concept="3clFb_" id="cEL$G_OKPh" role="jymVt">
                    <property role="TrG5h" value="issuesChanges" />
                    <node concept="3Tm1VV" id="cEL$G_OKPi" role="1B3o_S" />
                    <node concept="3cqZAl" id="cEL$G_OKPk" role="3clF45" />
                    <node concept="37vLTG" id="cEL$G_OKPl" role="3clF46">
                      <property role="TrG5h" value="items" />
                      <node concept="3uibUv" id="cEL$G_OKPm" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                        <node concept="3uibUv" id="cEL$G_OKPn" role="11_B2D">
                          <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="cEL$G_OKPo" role="3clF47">
                      <node concept="3clFbF" id="4fajGPABzT2" role="3cqZAp">
                        <node concept="2OqwBi" id="4fajGPAB_1Q" role="3clFbG">
                          <node concept="2OqwBi" id="4fajGPABzT4" role="2Oq$k0">
                            <node concept="37vLTw" id="4fajGPABzT5" role="2Oq$k0">
                              <ref role="3cqZAo" node="cEL$G_PW8_" resolve="mpsProject" />
                            </node>
                            <node concept="liA8E" id="4fajGPABzT6" role="2OqNvi">
                              <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4fajGPAB_MT" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~ModelAccess.runReadInEDT(java.lang.Runnable)" resolve="runReadInEDT" />
                            <node concept="1bVj0M" id="4fajGPABALZ" role="37wK5m">
                              <node concept="3clFbS" id="4fajGPABAM0" role="1bW5cS">
                                <node concept="3cpWs8" id="cEL$G_P0VS" role="3cqZAp">
                                  <node concept="3cpWsn" id="cEL$G_P0VY" role="3cpWs9">
                                    <property role="TrG5h" value="problems" />
                                    <node concept="3uibUv" id="cEL$G_P0W0" role="1tU5fm">
                                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                                      <node concept="3uibUv" id="cEL$G_P1mN" role="11_B2D">
                                        <ref role="3uigEE" to="g4jo:J2bOg02GHT" resolve="SearchResult" />
                                        <node concept="3uibUv" id="cEL$G_P2$1" role="11_B2D">
                                          <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2ShNRf" id="cEL$G_PbK4" role="33vP2m">
                                      <node concept="1pGfFk" id="cEL$G_PkZn" role="2ShVmc">
                                        <property role="373rjd" value="true" />
                                        <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="cEL$G_PmPV" role="3cqZAp">
                                  <node concept="2OqwBi" id="cEL$G_PnV1" role="3clFbG">
                                    <node concept="37vLTw" id="cEL$G_PmPT" role="2Oq$k0">
                                      <ref role="3cqZAo" node="cEL$G_OKPl" resolve="items" />
                                    </node>
                                    <node concept="liA8E" id="cEL$G_Pp3S" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Iterable.forEach(java.util.function.Consumer)" resolve="forEach" />
                                      <node concept="1bVj0M" id="cEL$G_Ppww" role="37wK5m">
                                        <node concept="3clFbS" id="cEL$G_Ppwx" role="1bW5cS">
                                          <node concept="3clFbF" id="cEL$G_PrSO" role="3cqZAp">
                                            <node concept="2OqwBi" id="cEL$G_PyOb" role="3clFbG">
                                              <node concept="37vLTw" id="cEL$G_PxAs" role="2Oq$k0">
                                                <ref role="3cqZAo" node="cEL$G_P0VY" resolve="problems" />
                                              </node>
                                              <node concept="liA8E" id="cEL$G_P_$s" role="2OqNvi">
                                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                                <node concept="2ShNRf" id="cEL$G_PAyo" role="37wK5m">
                                                  <node concept="1pGfFk" id="cEL$G_PKSV" role="2ShVmc">
                                                    <property role="373rjd" value="true" />
                                                    <ref role="37wK5l" to="g4jo:J2bOg02GJx" resolve="SearchResult" />
                                                    <node concept="3uibUv" id="cEL$G_PLzg" role="1pMfVU">
                                                      <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                                                    </node>
                                                    <node concept="37vLTw" id="cEL$G_PMtp" role="37wK5m">
                                                      <ref role="3cqZAo" node="cEL$G_Pqjz" resolve="i" />
                                                    </node>
                                                    <node concept="2OqwBi" id="cEL$G_PST$" role="37wK5m">
                                                      <node concept="2OqwBi" id="cEL$G_PPZP" role="2Oq$k0">
                                                        <node concept="10M0yZ" id="cEL$G_POHw" role="2Oq$k0">
                                                          <ref role="3cqZAo" to="d6hs:~IssueKindReportItem.PATH_OBJECT" resolve="PATH_OBJECT" />
                                                          <ref role="1PxDUh" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                                                        </node>
                                                        <node concept="liA8E" id="cEL$G_PR44" role="2OqNvi">
                                                          <ref role="37wK5l" to="d6hs:~ReportItemBase$SimpleReportItemFlavour.get(jetbrains.mps.errors.item.FlavouredItem)" resolve="get" />
                                                          <node concept="37vLTw" id="cEL$G_PScB" role="37wK5m">
                                                            <ref role="3cqZAo" node="cEL$G_Pqjz" resolve="i" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="liA8E" id="cEL$G_PUKm" role="2OqNvi">
                                                        <ref role="37wK5l" to="d6hs:~IssueKindReportItem$PathObject.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                                        <node concept="2OqwBi" id="cEL$G_Q0hh" role="37wK5m">
                                                          <node concept="37vLTw" id="cEL$G_PYT1" role="2Oq$k0">
                                                            <ref role="3cqZAo" node="cEL$G_PW8_" resolve="mpsProject" />
                                                          </node>
                                                          <node concept="liA8E" id="cEL$G_Q1KC" role="2OqNvi">
                                                            <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="2ShNRf" id="4fajGPAJaDy" role="37wK5m">
                                                      <node concept="1pGfFk" id="4fajGPAJqE$" role="2ShVmc">
                                                        <property role="373rjd" value="true" />
                                                        <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
                                                        <node concept="3uibUv" id="4fajGPAJrEU" role="1pMfVU">
                                                          <ref role="3uigEE" to="g4jo:J2bOg02Gm1" resolve="CategoryKind" />
                                                        </node>
                                                        <node concept="3uibUv" id="4fajGPAJtRM" role="1pMfVU">
                                                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                                        </node>
                                                        <node concept="10M0yZ" id="4fajGPAJyle" role="37wK5m">
                                                          <ref role="3cqZAo" to="phxh:3etVqSRKzT_" resolve="CATEGORY_KIND_SEVERITY" />
                                                          <ref role="1PxDUh" to="phxh:3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
                                                        </node>
                                                        <node concept="2YIFZM" id="4fajGPAJAeB" role="37wK5m">
                                                          <ref role="37wK5l" to="phxh:3etVqSRRx8e" resolve="getResultCategory" />
                                                          <ref role="1Pybhc" to="phxh:3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
                                                          <node concept="2OqwBi" id="4fajGPAJBL7" role="37wK5m">
                                                            <node concept="37vLTw" id="4fajGPAJB9H" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="cEL$G_Pqjz" resolve="i" />
                                                            </node>
                                                            <node concept="liA8E" id="4fajGPAJDOk" role="2OqNvi">
                                                              <ref role="37wK5l" to="d6hs:~ReportItem.getSeverity()" resolve="getSeverity" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="2ShNRf" id="4fajGPAJFAW" role="37wK5m">
                                                      <node concept="1pGfFk" id="4fajGPAJJ$E" role="2ShVmc">
                                                        <property role="373rjd" value="true" />
                                                        <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
                                                        <node concept="3uibUv" id="4fajGPAJKFM" role="1pMfVU">
                                                          <ref role="3uigEE" to="g4jo:J2bOg02Gm1" resolve="CategoryKind" />
                                                        </node>
                                                        <node concept="3uibUv" id="4fajGPAJMNw" role="1pMfVU">
                                                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                                        </node>
                                                        <node concept="10M0yZ" id="4fajGPAJPul" role="37wK5m">
                                                          <ref role="3cqZAo" to="phxh:3etVqSRKzTH" resolve="CATEGORY_KIND_ISSUE_TYPE" />
                                                          <ref role="1PxDUh" to="phxh:3etVqSRKzw1" resolve="ModelCheckerIssueFinder" />
                                                        </node>
                                                        <node concept="2OqwBi" id="4fajGPAJW_E" role="37wK5m">
                                                          <node concept="2OqwBi" id="4fajGPAJT24" role="2Oq$k0">
                                                            <node concept="10M0yZ" id="4fajGPAJS7L" role="2Oq$k0">
                                                              <ref role="3cqZAo" to="d6hs:~IssueKindReportItem.FLAVOUR_ISSUE_KIND" resolve="FLAVOUR_ISSUE_KIND" />
                                                              <ref role="1PxDUh" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                                                            </node>
                                                            <node concept="liA8E" id="4fajGPAJUpw" role="2OqNvi">
                                                              <ref role="37wK5l" to="d6hs:~ReportItemBase$SimpleReportItemFlavour.get(jetbrains.mps.errors.item.FlavouredItem)" resolve="get" />
                                                              <node concept="37vLTw" id="4fajGPAJVVr" role="37wK5m">
                                                                <ref role="3cqZAo" node="cEL$G_Pqjz" resolve="i" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node concept="liA8E" id="4fajGPAJYmp" role="2OqNvi">
                                                            <ref role="37wK5l" to="d6hs:~IssueKindReportItem$ItemKind.getSpecialization()" resolve="getSpecialization" />
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
                                        <node concept="Rh6nW" id="cEL$G_Pqjz" role="1bW2Oz">
                                          <property role="TrG5h" value="i" />
                                          <node concept="2jxLKc" id="cEL$G_Pqj$" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="cEL$G_Osw$" role="3cqZAp">
                                  <node concept="2OqwBi" id="cEL$G_Otyw" role="3clFbG">
                                    <node concept="2OqwBi" id="cEL$G_OsCM" role="2Oq$k0">
                                      <node concept="2WthIp" id="cEL$G_Oswz" role="2Oq$k0" />
                                      <node concept="2BZ7hE" id="cEL$G_OsXq" role="2OqNvi">
                                        <ref role="2WH_rO" node="cEL$G_Lwnu" resolve="viewer" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="cEL$G_OuLF" role="2OqNvi">
                                      <ref role="37wK5l" to="phxh:3bKt22a04PA" resolve="setSearchResults" />
                                      <node concept="2ShNRf" id="cEL$G_OB2l" role="37wK5m">
                                        <node concept="1pGfFk" id="cEL$G_ODxH" role="2ShVmc">
                                          <property role="373rjd" value="true" />
                                          <ref role="37wK5l" to="g4jo:6hZLf2Yo3pm" resolve="SearchResults" />
                                          <node concept="2YIFZM" id="cEL$G_ODHB" role="37wK5m">
                                            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                                            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                                          </node>
                                          <node concept="37vLTw" id="cEL$G_OEcn" role="37wK5m">
                                            <ref role="3cqZAo" node="cEL$G_P0VY" resolve="problems" />
                                          </node>
                                          <node concept="3uibUv" id="cEL$G_OETS" role="1pMfVU">
                                            <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
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
                    <node concept="2AHcQZ" id="cEL$G_OKPq" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cEL$G_Oa_m" role="3cqZAp">
          <node concept="2OqwBi" id="cEL$G_OaK8" role="3clFbG">
            <node concept="37vLTw" id="cEL$G_Oa_j" role="2Oq$k0">
              <ref role="3cqZAo" node="cEL$G_MIPt" resolve="engine" />
            </node>
            <node concept="liA8E" id="cEL$G_OrP5" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setIssuesChangeListener(org.modelingvalue.dclare.mps.DclareForMPSEngine$IssuesChangeListener)" resolve="setIssuesChangeListener" />
              <node concept="37vLTw" id="cEL$G_OTN1" role="37wK5m">
                <ref role="3cqZAo" node="cEL$G_OFJa" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4fajGPApyE$" role="3cqZAp">
          <node concept="2OqwBi" id="4fajGPApyE_" role="3clFbG">
            <node concept="2OqwBi" id="4fajGPApyEA" role="2Oq$k0">
              <node concept="37vLTw" id="4fajGPApyEB" role="2Oq$k0">
                <ref role="3cqZAo" node="cEL$G_PW8_" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="4fajGPApyEC" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="4fajGPApyED" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.executeCommandInEDT(java.lang.Runnable)" resolve="executeCommandInEDT" />
              <node concept="1bVj0M" id="4fajGPApyEE" role="37wK5m">
                <node concept="3clFbS" id="4fajGPApyEF" role="1bW5cS">
                  <node concept="3clFbF" id="4fajGPApyEO" role="3cqZAp">
                    <node concept="2OqwBi" id="4fajGPApyEP" role="3clFbG">
                      <node concept="2WthIp" id="4fajGPApyEQ" role="2Oq$k0" />
                      <node concept="liA8E" id="4fajGPApyER" role="2OqNvi">
                        <ref role="37wK5l" to="71xd:~BaseTool.makeAvailableLater()" resolve="makeAvailableLater" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4fajGPApxG5" role="3cqZAp" />
      </node>
    </node>
    <node concept="2XrIbr" id="7po6rTe7$mt" role="2XNbBy">
      <property role="TrG5h" value="off" />
      <node concept="3cqZAl" id="7po6rTe7Acn" role="3clF45" />
      <node concept="3clFbS" id="7po6rTe7$mv" role="3clF47">
        <node concept="3clFbF" id="7po6rTe7Aqb" role="3cqZAp">
          <node concept="2OqwBi" id="7po6rTe7Bkx" role="3clFbG">
            <node concept="2OqwBi" id="7po6rTe7AxD" role="2Oq$k0">
              <node concept="2WthIp" id="7po6rTe7Aqa" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7po6rTe7AHV" role="2OqNvi">
                <ref role="2WH_rO" node="cEL$G_Lwnu" resolve="viewer" />
              </node>
            </node>
            <node concept="liA8E" id="7po6rTe7EcR" role="2OqNvi">
              <ref role="37wK5l" to="phxh:3bKt22a04PA" resolve="setSearchResults" />
              <node concept="2ShNRf" id="7po6rTe7ElC" role="37wK5m">
                <node concept="1pGfFk" id="7po6rTe7Vdo" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="g4jo:J2bOg02HbW" resolve="SearchResults" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="7po6rTe7Vpa" role="2XNbBy">
      <property role="TrG5h" value="active" />
      <node concept="3cqZAl" id="7po6rTe7Xcc" role="3clF45" />
      <node concept="3clFbS" id="7po6rTe7Vpc" role="3clF47">
        <node concept="1X3_iC" id="69sQFvzly1I" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="7po6rTe7XgT" role="8Wnug">
            <node concept="2OqwBi" id="7po6rTe7XgU" role="3clFbG">
              <node concept="2OqwBi" id="7po6rTe7XgV" role="2Oq$k0">
                <node concept="2WthIp" id="7po6rTe7XgW" role="2Oq$k0" />
                <node concept="2BZ7hE" id="7po6rTe7XgX" role="2OqNvi">
                  <ref role="2WH_rO" node="cEL$G_Lwnu" resolve="viewer" />
                </node>
              </node>
              <node concept="liA8E" id="7po6rTe7XgY" role="2OqNvi">
                <ref role="37wK5l" to="phxh:3bKt22a04PA" resolve="setSearchResults" />
                <node concept="2ShNRf" id="7po6rTe7XgZ" role="37wK5m">
                  <node concept="1pGfFk" id="7po6rTe7Xh0" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="g4jo:J2bOg02HbW" resolve="SearchResults" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1QGGSu" id="fP5dPp40oH" role="1nVCmq">
      <property role="1iqoE4" value="${module}/icons/Dclare.png" />
    </node>
  </node>
  <node concept="tC5Ba" id="6oTnLsutudh">
    <property role="TrG5h" value="Dclare" />
    <property role="1XlLyE" value="true" />
    <property role="1rdrE6" value="true" />
    <node concept="ftmFs" id="6oTnLsutudj" role="ftER_">
      <node concept="tCFHf" id="6oTnLsutudm" role="ftvYc">
        <ref role="tCJdB" node="7mQEauLqCEk" resolve="ShareModel" />
      </node>
    </node>
    <node concept="tT9cl" id="1EfUo3u8uFu" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Hgq" resolve="ModelActions" />
      <ref role="2f8Tey" to="tprs:hLQr8p5" resolve="ideavcs" />
    </node>
  </node>
  <node concept="sE7Ow" id="7mQEauLqCEk">
    <property role="TrG5h" value="ShareModel" />
    <property role="2uzpH1" value="Share Model" />
    <node concept="1DS2jV" id="hHNVefF" role="1NuT2Z">
      <property role="TrG5h" value="model" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODEL" resolve="MODEL" />
      <node concept="1oajcY" id="6I7igKOq5IL" role="1oa70y" />
    </node>
    <node concept="tnohg" id="7mQEauLqCEl" role="tncku">
      <node concept="3clFbS" id="7mQEauLqCEm" role="2VODD2">
        <node concept="3cpWs8" id="4f_r0qDC31b" role="3cqZAp">
          <node concept="3cpWsn" id="4f_r0qDC31c" role="3cpWs9">
            <property role="TrG5h" value="prefs" />
            <node concept="3uibUv" id="4f_r0qDC2Wi" role="1tU5fm">
              <ref role="3uigEE" node="4f_r0qDun_n" resolve="SharingPrefs" />
            </node>
            <node concept="2YIFZM" id="4f_r0qDC31d" role="33vP2m">
              <ref role="1Pybhc" node="4f_r0qDun_n" resolve="SharingPrefs" />
              <ref role="37wK5l" node="4f_r0qDuKfG" resolve="getOrCreatePrefs" />
              <node concept="2OqwBi" id="4f_r0qDC31e" role="37wK5m">
                <node concept="tl45R" id="4f_r0qDC31f" role="2Oq$k0" />
                <node concept="liA8E" id="4f_r0qDC31g" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~AnActionEvent.getProject()" resolve="getProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4f_r0qDC2Aj" role="3cqZAp">
          <node concept="2OqwBi" id="4f_r0qDC2Al" role="3clFbG">
            <node concept="37vLTw" id="4f_r0qDC31h" role="2Oq$k0">
              <ref role="3cqZAo" node="4f_r0qDC31c" resolve="prefs" />
            </node>
            <node concept="liA8E" id="4f_r0qDC2Aq" role="2OqNvi">
              <ref role="37wK5l" node="4f_r0qDw1kP" resolve="setShared" />
              <node concept="2OqwBi" id="4f_r0qDC2Ar" role="37wK5m">
                <node concept="2WthIp" id="4f_r0qDC2As" role="2Oq$k0" />
                <node concept="1DTwFV" id="4f_r0qDC2At" role="2OqNvi">
                  <ref role="2WH_rO" node="hHNVefF" resolve="model" />
                </node>
              </node>
              <node concept="3fqX7Q" id="4f_r0qDC3Pm" role="37wK5m">
                <node concept="2OqwBi" id="4f_r0qDC3RK" role="3fr31v">
                  <node concept="37vLTw" id="4f_r0qDC3RL" role="2Oq$k0">
                    <ref role="3cqZAo" node="4f_r0qDC31c" resolve="prefs" />
                  </node>
                  <node concept="liA8E" id="4f_r0qDC3RM" role="2OqNvi">
                    <ref role="37wK5l" node="4f_r0qDvaXA" resolve="isShared" />
                    <node concept="2OqwBi" id="4f_r0qDC3RN" role="37wK5m">
                      <node concept="2WthIp" id="4f_r0qDC3RO" role="2Oq$k0" />
                      <node concept="1DTwFV" id="4f_r0qDC3RP" role="2OqNvi">
                        <ref role="2WH_rO" node="hHNVefF" resolve="model" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="58x4jvplHgG" role="37wK5m">
                <node concept="tl45R" id="58x4jvplHgH" role="2Oq$k0" />
                <node concept="liA8E" id="58x4jvplHgI" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~AnActionEvent.getProject()" resolve="getProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="4f_r0qDpgmk" role="tmbBb">
      <node concept="3clFbS" id="4f_r0qDpgml" role="2VODD2">
        <node concept="3cpWs8" id="69sQFvzr98P" role="3cqZAp">
          <node concept="3cpWsn" id="69sQFvzr98S" role="3cpWs9">
            <property role="TrG5h" value="isApplicable" />
            <node concept="10P_77" id="69sQFvzr98N" role="1tU5fm" />
            <node concept="2YIFZM" id="69sQFvzvhnn" role="33vP2m">
              <ref role="37wK5l" to="t4tl:~DClareMPS.isCollaberationEnabled()" resolve="isCollaberationEnabled" />
              <ref role="1Pybhc" to="t4tl:~DClareMPS" resolve="DClareMPS" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4f_r0qDud2M" role="3cqZAp">
          <node concept="1rXfSq" id="4f_r0qDud2N" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setEnabledState(com.intellij.openapi.actionSystem.Presentation,boolean)" resolve="setEnabledState" />
            <node concept="2OqwBi" id="4f_r0qDud2O" role="37wK5m">
              <node concept="tl45R" id="4f_r0qDud2P" role="2Oq$k0" />
              <node concept="liA8E" id="4f_r0qDud2Q" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="37vLTw" id="4f_r0qDud2R" role="37wK5m">
              <ref role="3cqZAo" node="69sQFvzr98S" resolve="isApplicable" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4f_r0qDugLH" role="3cqZAp">
          <node concept="3clFbS" id="4f_r0qDugLI" role="3clFbx">
            <node concept="3cpWs8" id="4f_r0qDC3ez" role="3cqZAp">
              <node concept="3cpWsn" id="4f_r0qDC3e$" role="3cpWs9">
                <property role="TrG5h" value="prefs" />
                <node concept="3uibUv" id="4f_r0qDC2F_" role="1tU5fm">
                  <ref role="3uigEE" node="4f_r0qDun_n" resolve="SharingPrefs" />
                </node>
                <node concept="2YIFZM" id="4f_r0qDC3e_" role="33vP2m">
                  <ref role="37wK5l" node="4f_r0qDuKfG" resolve="getOrCreatePrefs" />
                  <ref role="1Pybhc" node="4f_r0qDun_n" resolve="SharingPrefs" />
                  <node concept="2OqwBi" id="4f_r0qDC3eA" role="37wK5m">
                    <node concept="tl45R" id="4f_r0qDC3eB" role="2Oq$k0" />
                    <node concept="liA8E" id="4f_r0qDC3eC" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~AnActionEvent.getProject()" resolve="getProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4f_r0qDugLJ" role="3cqZAp">
              <node concept="2OqwBi" id="4f_r0qDugLK" role="3clFbG">
                <node concept="2OqwBi" id="4f_r0qDugLL" role="2Oq$k0">
                  <node concept="tl45R" id="4f_r0qDugLM" role="2Oq$k0" />
                  <node concept="liA8E" id="4f_r0qDugLN" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="4f_r0qDugLO" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="3K4zz7" id="4f_r0qDvWDw" role="37wK5m">
                    <node concept="Xl_RD" id="4f_r0qDvWJ3" role="3K4E3e">
                      <property role="Xl_RC" value="Unshare Model" />
                    </node>
                    <node concept="Xl_RD" id="4f_r0qDvWMh" role="3K4GZi">
                      <property role="Xl_RC" value="Share Model" />
                    </node>
                    <node concept="2OqwBi" id="4f_r0qDC20O" role="3K4Cdx">
                      <node concept="37vLTw" id="4f_r0qDC3eD" role="2Oq$k0">
                        <ref role="3cqZAo" node="4f_r0qDC3e$" resolve="prefs" />
                      </node>
                      <node concept="liA8E" id="4f_r0qDC2ka" role="2OqNvi">
                        <ref role="37wK5l" node="4f_r0qDvaXA" resolve="isShared" />
                        <node concept="2OqwBi" id="4f_r0qDC2ra" role="37wK5m">
                          <node concept="2WthIp" id="4f_r0qDC2rd" role="2Oq$k0" />
                          <node concept="1DTwFV" id="4f_r0qDC2rf" role="2OqNvi">
                            <ref role="2WH_rO" node="hHNVefF" resolve="model" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4f_r0qDugLW" role="3clFbw">
            <ref role="3cqZAo" node="69sQFvzr98S" resolve="isApplicable" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3yGwp2Rp5A_">
    <property role="TrG5h" value="DclareRulesTree" />
    <node concept="2tJIrI" id="3yGwp2RzpKf" role="jymVt" />
    <node concept="312cEg" id="3yGwp2REkAK" role="jymVt">
      <property role="TrG5h" value="modules" />
      <node concept="3Tm6S6" id="3yGwp2REgN5" role="1B3o_S" />
      <node concept="3uibUv" id="3yGwp2REj9e" role="1tU5fm">
        <ref role="3uigEE" to="zrbp:~Set" resolve="Set" />
        <node concept="3uibUv" id="3yGwp2REkuH" role="11_B2D">
          <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3yGwp2RzAiB" role="jymVt">
      <property role="TrG5h" value="engine" />
      <node concept="3uibUv" id="3yGwp2RzA9m" role="1tU5fm">
        <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
      </node>
      <node concept="3Tm6S6" id="58x4jvpcN9c" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="3yGwp2Rz$V2" role="jymVt">
      <node concept="3cqZAl" id="3yGwp2Rz$V3" role="3clF45" />
      <node concept="3clFbS" id="3yGwp2Rz$V5" role="3clF47">
        <node concept="3clFbF" id="3yGwp2RzDL3" role="3cqZAp">
          <node concept="37vLTI" id="3yGwp2RzLOu" role="3clFbG">
            <node concept="37vLTw" id="3yGwp2RzQh0" role="37vLTx">
              <ref role="3cqZAo" node="3yGwp2Rz_u4" resolve="engine" />
            </node>
            <node concept="2OqwBi" id="3yGwp2RzEOH" role="37vLTJ">
              <node concept="Xjq3P" id="3yGwp2RzDL2" role="2Oq$k0" />
              <node concept="2OwXpG" id="3yGwp2RzKCA" role="2OqNvi">
                <ref role="2Oxat5" node="3yGwp2RzAiB" resolve="engine" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3yGwp2Rz$hv" role="1B3o_S" />
      <node concept="37vLTG" id="3yGwp2Rz_u4" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="3yGwp2Rz_u3" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3yGwp2Rp5AA" role="1B3o_S" />
    <node concept="3uibUv" id="3yGwp2Rp5PF" role="1zkMxy">
      <ref role="3uigEE" to="7e8u:~MPSTree" resolve="MPSTree" />
    </node>
    <node concept="3clFb_" id="3yGwp2Rp6mt" role="jymVt">
      <property role="TrG5h" value="rebuild" />
      <node concept="3Tmbuc" id="3yGwp2Rp6mu" role="1B3o_S" />
      <node concept="3uibUv" id="3yGwp2Rp6mw" role="3clF45">
        <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
      </node>
      <node concept="3clFbS" id="3yGwp2Rp6mx" role="3clF47">
        <node concept="3cpWs8" id="3yGwp2Rpnfu" role="3cqZAp">
          <node concept="3cpWsn" id="3yGwp2Rpnfv" role="3cpWs9">
            <property role="TrG5h" value="rootNode" />
            <node concept="3uibUv" id="3yGwp2Rpnfw" role="1tU5fm">
              <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
            </node>
            <node concept="2ShNRf" id="3yGwp2Rpsbs" role="33vP2m">
              <node concept="1pGfFk" id="3yGwp2RpBM3" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="7e8u:~TextTreeNode.&lt;init&gt;(java.lang.String)" resolve="TextTreeNode" />
                <node concept="Xl_RD" id="3yGwp2RpCZJ" role="37wK5m">
                  <property role="Xl_RC" value="Active Models" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3yGwp2REJY0" role="3cqZAp">
          <node concept="3clFbS" id="3yGwp2REJY2" role="3clFbx">
            <node concept="2Gpval" id="3yGwp2RFsY_" role="3cqZAp">
              <node concept="2GrKxI" id="3yGwp2RFsYB" role="2Gsz3X">
                <property role="TrG5h" value="m" />
              </node>
              <node concept="37vLTw" id="3yGwp2RFyTr" role="2GsD0m">
                <ref role="3cqZAo" node="3yGwp2REkAK" resolve="modules" />
              </node>
              <node concept="3clFbS" id="3yGwp2RFsYF" role="2LFqv$">
                <node concept="3cpWs8" id="3yGwp2RFOU5" role="3cqZAp">
                  <node concept="3cpWsn" id="3yGwp2RFOU6" role="3cpWs9">
                    <property role="TrG5h" value="n" />
                    <node concept="3uibUv" id="3yGwp2RFOU7" role="1tU5fm">
                      <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
                    </node>
                    <node concept="2ShNRf" id="3yGwp2RFTyL" role="33vP2m">
                      <node concept="1pGfFk" id="3yGwp2RGa0L" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="7e8u:~TextTreeNode.&lt;init&gt;(java.lang.String)" resolve="TextTreeNode" />
                        <node concept="2OqwBi" id="3yGwp2RGdq9" role="37wK5m">
                          <node concept="2GrUjf" id="3yGwp2RGcEi" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="3yGwp2RFsYB" resolve="m" />
                          </node>
                          <node concept="liA8E" id="3yGwp2RGfov" role="2OqNvi">
                            <ref role="37wK5l" to="t4tl:~DModule.getModuleName()" resolve="getModuleName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3yGwp2RGqW7" role="3cqZAp">
                  <node concept="2OqwBi" id="3yGwp2RGsNG" role="3clFbG">
                    <node concept="37vLTw" id="3yGwp2RGqW5" role="2Oq$k0">
                      <ref role="3cqZAo" node="3yGwp2Rpnfv" resolve="rootNode" />
                    </node>
                    <node concept="liA8E" id="3yGwp2RGugt" role="2OqNvi">
                      <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                      <node concept="37vLTw" id="3yGwp2RGx2x" role="37wK5m">
                        <ref role="3cqZAo" node="3yGwp2RFOU6" resolve="n" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4SMm55pccMI" role="3cqZAp">
                  <node concept="3cpWsn" id="4SMm55pccMJ" role="3cpWs9">
                    <property role="TrG5h" value="dClareForObject" />
                    <node concept="3uibUv" id="4SMm55pc9K6" role="1tU5fm">
                      <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
                    </node>
                    <node concept="2OqwBi" id="58x4jvpcHgL" role="33vP2m">
                      <node concept="37vLTw" id="58x4jvpcEuA" role="2Oq$k0">
                        <ref role="3cqZAo" node="3yGwp2RzAiB" resolve="engine" />
                      </node>
                      <node concept="liA8E" id="58x4jvpcJ2x" role="2OqNvi">
                        <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.getDClareMPS()" resolve="getDClareMPS" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4f_r0qDv_PH" role="3cqZAp">
                  <node concept="2OqwBi" id="1zZpoCazEhr" role="3clFbG">
                    <node concept="liA8E" id="1zZpoCazHQS" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DClareMPS.get(java.util.function.Supplier)" resolve="get" />
                      <node concept="1bVj0M" id="1zZpoCazMsn" role="37wK5m">
                        <node concept="3clFbS" id="1zZpoCazMso" role="1bW5cS">
                          <node concept="2Gpval" id="1zZpoCatgT4" role="3cqZAp">
                            <node concept="2GrKxI" id="1zZpoCatgT6" role="2Gsz3X">
                              <property role="TrG5h" value="model" />
                            </node>
                            <node concept="3clFbS" id="1zZpoCatgTa" role="2LFqv$">
                              <node concept="3cpWs8" id="1zZpoCaEmXL" role="3cqZAp">
                                <node concept="3cpWsn" id="1zZpoCaEmXM" role="3cpWs9">
                                  <property role="TrG5h" value="dModel" />
                                  <node concept="3uibUv" id="1zZpoCaEmXN" role="1tU5fm">
                                    <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                                  </node>
                                  <node concept="10QFUN" id="1zZpoCaEZEi" role="33vP2m">
                                    <node concept="3uibUv" id="1zZpoCaF1qg" role="10QFUM">
                                      <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                                    </node>
                                    <node concept="2GrUjf" id="1zZpoCaEXhO" role="10QFUP">
                                      <ref role="2Gs0qQ" node="1zZpoCatgT6" resolve="model" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="5O6f$ttXytf" role="3cqZAp">
                                <node concept="3cpWsn" id="5O6f$ttXytg" role="3cpWs9">
                                  <property role="TrG5h" value="shared" />
                                  <node concept="17QB3L" id="5O6f$ttXvJv" role="1tU5fm" />
                                  <node concept="3K4zz7" id="5O6f$ttXyth" role="33vP2m">
                                    <node concept="Xl_RD" id="5O6f$ttXyti" role="3K4E3e">
                                      <property role="Xl_RC" value="shared" />
                                    </node>
                                    <node concept="Xl_RD" id="5O6f$ttXytj" role="3K4GZi">
                                      <property role="Xl_RC" value="not shared" />
                                    </node>
                                    <node concept="2OqwBi" id="5O6f$ttXytk" role="3K4Cdx">
                                      <node concept="37vLTw" id="5O6f$ttXytl" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1zZpoCaEmXM" resolve="dModel" />
                                      </node>
                                      <node concept="liA8E" id="5O6f$ttXytm" role="2OqNvi">
                                        <ref role="37wK5l" to="t4tl:~DModel.isShared()" resolve="isShared" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="1zZpoCatAEI" role="3cqZAp">
                                <node concept="3cpWsn" id="1zZpoCatAEJ" role="3cpWs9">
                                  <property role="TrG5h" value="c" />
                                  <node concept="3uibUv" id="1zZpoCatAEK" role="1tU5fm">
                                    <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
                                  </node>
                                  <node concept="2ShNRf" id="1zZpoCatJYO" role="33vP2m">
                                    <node concept="1pGfFk" id="1zZpoCau2l1" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="7e8u:~TextTreeNode.&lt;init&gt;(java.lang.String)" resolve="TextTreeNode" />
                                      <node concept="3cpWs3" id="1zZpoCaDCWz" role="37wK5m">
                                        <node concept="Xl_RD" id="1zZpoCaDFvs" role="3uHU7w">
                                          <property role="Xl_RC" value=")" />
                                        </node>
                                        <node concept="3cpWs3" id="1zZpoCaDIZE" role="3uHU7B">
                                          <node concept="3cpWs3" id="1zZpoCaDyQU" role="3uHU7B">
                                            <node concept="2OqwBi" id="1zZpoCauJbn" role="3uHU7B">
                                              <node concept="2OqwBi" id="1zZpoCauFR7" role="2Oq$k0">
                                                <node concept="2GrUjf" id="1zZpoCauDG4" role="2Oq$k0">
                                                  <ref role="2Gs0qQ" node="1zZpoCatgT6" resolve="model" />
                                                </node>
                                                <node concept="liA8E" id="1zZpoCauI0Q" role="2OqNvi">
                                                  <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="1zZpoCauL_A" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SModelName.getValue()" resolve="getValue" />
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="1zZpoCaD_DU" role="3uHU7w">
                                              <property role="Xl_RC" value=" (" />
                                            </node>
                                          </node>
                                          <node concept="37vLTw" id="5O6f$ttXytn" role="3uHU7w">
                                            <ref role="3cqZAo" node="5O6f$ttXytg" resolve="shared" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1zZpoCaumVP" role="3cqZAp">
                                <node concept="2OqwBi" id="1zZpoCaunQR" role="3clFbG">
                                  <node concept="37vLTw" id="1zZpoCaumVN" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3yGwp2RFOU6" resolve="n" />
                                  </node>
                                  <node concept="liA8E" id="1zZpoCaupGF" role="2OqNvi">
                                    <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                                    <node concept="37vLTw" id="1zZpoCausX3" role="37wK5m">
                                      <ref role="3cqZAo" node="1zZpoCatAEJ" resolve="c" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="1zZpoCazlis" role="2GsD0m">
                              <node concept="2GrUjf" id="1zZpoCazkmm" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="3yGwp2RFsYB" resolve="m" />
                              </node>
                              <node concept="liA8E" id="1zZpoCazoaJ" role="2OqNvi">
                                <ref role="37wK5l" to="t4tl:~DModule.getModels()" resolve="getModels" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="1zZpoCa$3ZR" role="3cqZAp">
                            <node concept="10Nm6u" id="1zZpoCa$acB" role="3cqZAk" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4SMm55pccMN" role="2Oq$k0">
                      <ref role="3cqZAo" node="4SMm55pccMJ" resolve="dClareForObject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1a$AUN_8dhq" role="3cqZAp">
              <node concept="2OqwBi" id="1a$AUN_8ifY" role="3clFbG">
                <node concept="Xjq3P" id="1a$AUN_8dho" role="2Oq$k0" />
                <node concept="liA8E" id="1a$AUN_8lJk" role="2OqNvi">
                  <ref role="37wK5l" to="7e8u:~MPSTree.expandAll()" resolve="expandAll" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3yGwp2REUbo" role="3clFbw">
            <node concept="10Nm6u" id="3yGwp2RFdK7" role="3uHU7w" />
            <node concept="37vLTw" id="3yGwp2RERFG" role="3uHU7B">
              <ref role="3cqZAo" node="3yGwp2REkAK" resolve="modules" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3yGwp2REES0" role="3cqZAp" />
        <node concept="3clFbF" id="3yGwp2Rp6m$" role="3cqZAp">
          <node concept="37vLTw" id="3yGwp2Rz6F4" role="3clFbG">
            <ref role="3cqZAo" node="3yGwp2Rpnfv" resolve="rootNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3yGwp2Rp6my" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3yGwp2RE2UD" role="jymVt" />
    <node concept="3clFb_" id="3yGwp2RE7zq" role="jymVt">
      <property role="TrG5h" value="setModules" />
      <node concept="3clFbS" id="3yGwp2RE7zt" role="3clF47">
        <node concept="3clFbF" id="3yGwp2REpjb" role="3cqZAp">
          <node concept="37vLTI" id="3yGwp2REu3w" role="3clFbG">
            <node concept="37vLTw" id="3yGwp2REEp3" role="37vLTx">
              <ref role="3cqZAo" node="3yGwp2RE9NO" resolve="modules" />
            </node>
            <node concept="2OqwBi" id="3yGwp2RErrK" role="37vLTJ">
              <node concept="Xjq3P" id="3yGwp2REpja" role="2Oq$k0" />
              <node concept="2OwXpG" id="3yGwp2REsec" role="2OqNvi">
                <ref role="2Oxat5" node="3yGwp2REkAK" resolve="modules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7po6rTe2ZLN" role="3cqZAp">
          <node concept="2OqwBi" id="7po6rTe32DL" role="3clFbG">
            <node concept="Xjq3P" id="7po6rTe2ZLL" role="2Oq$k0" />
            <node concept="liA8E" id="7po6rTe35gm" role="2OqNvi">
              <ref role="37wK5l" to="7e8u:~MPSTree.rebuildNow()" resolve="rebuildNow" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3yGwp2RE5$N" role="1B3o_S" />
      <node concept="3cqZAl" id="3yGwp2RE7r5" role="3clF45" />
      <node concept="37vLTG" id="3yGwp2RE9NO" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="3uibUv" id="3yGwp2RE9NN" role="1tU5fm">
          <ref role="3uigEE" to="zrbp:~Set" resolve="Set" />
          <node concept="3uibUv" id="3yGwp2REbtv" role="11_B2D">
            <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2E2WTH" id="4kJ$pn77NcB">
    <property role="TrG5h" value="Aspects" />
    <ref role="2E2WTM" to="7ggn:55f2HNAoLSh" resolve="Aspect" />
    <node concept="2E2Kfa" id="4kJ$pn781Me" role="2E2WTK">
      <node concept="3clFbS" id="4kJ$pn781Mf" role="2VODD2">
        <node concept="3clFbF" id="4kJ$pn781Mg" role="3cqZAp">
          <node concept="10Nm6u" id="4kJ$pn781Mh" role="3clFbG" />
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="4kJ$pn8x9SW">
    <property role="TrG5h" value="MoveToRuleSet" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Move To RuleSet" />
    <node concept="2S4$dB" id="4kJ$pn8xb1h" role="1NuT2Z">
      <property role="TrG5h" value="moved" />
      <node concept="3Tm6S6" id="4kJ$pn8xb1i" role="1B3o_S" />
      <node concept="1oajcY" id="4kJ$pn8xb1j" role="1oa70y" />
      <node concept="3Tqbb2" id="4kJ$pn8xb1k" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="4kJ$pn8xbbc" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="4kJ$pn8xbbd" role="1oa70y" />
    </node>
    <node concept="2JriF1" id="4kJ$pn8xaR$" role="2JrayB">
      <property role="TrG5h" value="ruleSet" />
      <node concept="15s5l7" id="4kJ$pn8xaR_" role="lGtFl">
        <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: toString should be specified for parameters of non-primitive type&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590364(jetbrains.mps.lang.plugin.typesystem)/1227020617850]&quot;;" />
        <property role="huDt6" value="Error: toString should be specified for parameters of non-primitive type" />
      </node>
      <node concept="3Tm6S6" id="4kJ$pn8xaRA" role="1B3o_S" />
      <node concept="3Tqbb2" id="4kJ$pn8xaRB" role="1tU5fm">
        <ref role="ehGHo" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
      </node>
    </node>
    <node concept="tnohg" id="4kJ$pn8x9SX" role="tncku">
      <node concept="3clFbS" id="4kJ$pn8x9SY" role="2VODD2">
        <node concept="3clFbF" id="4kJ$pn8xkGS" role="3cqZAp">
          <node concept="2OqwBi" id="4kJ$pn8xkGT" role="3clFbG">
            <node concept="liA8E" id="4kJ$pn8xkGU" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadInEDT(java.lang.Runnable)" resolve="runReadInEDT" />
              <node concept="2ShNRf" id="4kJ$pn8xkGV" role="37wK5m">
                <node concept="YeOm9" id="4kJ$pn8xkGW" role="2ShVmc">
                  <node concept="1Y3b0j" id="4kJ$pn8xkGX" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <node concept="3Tm1VV" id="4kJ$pn8xkGY" role="1B3o_S" />
                    <node concept="3clFb_" id="4kJ$pn8xkGZ" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="4kJ$pn8xkH0" role="1B3o_S" />
                      <node concept="3cqZAl" id="4kJ$pn8xkH1" role="3clF45" />
                      <node concept="3clFbS" id="4kJ$pn8xkH2" role="3clF47">
                        <node concept="3clFbJ" id="4kJ$pn8xkH3" role="3cqZAp">
                          <node concept="3fqX7Q" id="4kJ$pn8xkH4" role="3clFbw">
                            <node concept="2YIFZM" id="4kJ$pn8xkH5" role="3fr31v">
                              <ref role="1Pybhc" to="mhbf:~SNodeUtil" resolve="SNodeUtil" />
                              <ref role="37wK5l" to="mhbf:~SNodeUtil.isAccessible(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository)" resolve="isAccessible" />
                              <node concept="2OqwBi" id="4kJ$pn8xkH6" role="37wK5m">
                                <node concept="2WthIp" id="4kJ$pn8xkH7" role="2Oq$k0">
                                  <ref role="32nkFo" node="4kJ$pn8x9SW" resolve="MoveToRuleSet" />
                                </node>
                                <node concept="3gHZIF" id="4kJ$pn8xkH8" role="2OqNvi">
                                  <ref role="2WH_rO" node="4kJ$pn8xb1h" resolve="moved" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4kJ$pn8xkH9" role="37wK5m">
                                <node concept="2OqwBi" id="4kJ$pn8xkHa" role="2Oq$k0">
                                  <node concept="2WthIp" id="4kJ$pn8xkHb" role="2Oq$k0">
                                    <ref role="32nkFo" node="4kJ$pn8x9SW" resolve="MoveToRuleSet" />
                                  </node>
                                  <node concept="1DTwFV" id="4kJ$pn8xkHc" role="2OqNvi">
                                    <ref role="2WH_rO" node="4kJ$pn8xbbc" resolve="project" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4kJ$pn8xkHd" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="4kJ$pn8xkHe" role="3clFbx">
                            <node concept="3cpWs6" id="4kJ$pn8xkHf" role="3cqZAp" />
                          </node>
                        </node>
                        <node concept="1Xdei3" id="4kJ$pn8xkHg" role="3cqZAp">
                          <ref role="1Xdeis" to="8a6h:4kJ$pn8wBUs" resolve="MoveToRuleSet" />
                          <node concept="2OqwBi" id="4kJ$pn8xkHh" role="1Xdeiv">
                            <node concept="2WthIp" id="4kJ$pn8xkHi" role="2Oq$k0" />
                            <node concept="3gHZIF" id="4kJ$pn8xkHj" role="2OqNvi">
                              <ref role="2WH_rO" node="4kJ$pn8xb1h" resolve="moved" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="4kJ$pn8xkHk" role="1Xdeit">
                            <node concept="2WthIp" id="4kJ$pn8xkHl" role="2Oq$k0" />
                            <node concept="1DTwFV" id="4kJ$pn8xkHm" role="2OqNvi">
                              <ref role="2WH_rO" node="4kJ$pn8xbbc" resolve="project" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="4kJ$pn8xkHn" role="1Xdeiu">
                            <node concept="2WthIp" id="4kJ$pn8xkHo" role="2Oq$k0">
                              <ref role="32nkFo" node="4kJ$pn8x9SW" resolve="MoveToRuleSet" />
                            </node>
                            <node concept="2BZ7hE" id="4kJ$pn8xkHp" role="2OqNvi">
                              <ref role="2WH_rO" node="4kJ$pn8xaR$" resolve="ruleSet" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4kJ$pn8xkHq" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4kJ$pn8xkHr" role="2Oq$k0">
              <node concept="2OqwBi" id="4kJ$pn8xkHs" role="2Oq$k0">
                <node concept="2WthIp" id="4kJ$pn8xkHt" role="2Oq$k0" />
                <node concept="1DTwFV" id="4kJ$pn8xkHu" role="2OqNvi">
                  <ref role="2WH_rO" node="4kJ$pn8xbbc" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="4kJ$pn8xkHv" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="4kJ$pn8xbT9" role="tmbBb">
      <node concept="3clFbS" id="4kJ$pn8xbTa" role="2VODD2">
        <node concept="3cpWs8" id="4kJ$pn8xbTb" role="3cqZAp">
          <node concept="3cpWsn" id="4kJ$pn8xbTc" role="3cpWs9">
            <property role="TrG5h" value="applicable" />
            <node concept="10P_77" id="4kJ$pn8xbTd" role="1tU5fm" />
            <node concept="3trCAK" id="4kJ$pn8xbTe" role="33vP2m">
              <ref role="3trCAN" to="8a6h:4kJ$pn8wBUs" resolve="MoveToRuleSet" />
              <node concept="2OqwBi" id="4kJ$pn8xbTf" role="3trCLF">
                <node concept="2WthIp" id="4kJ$pn8xbTg" role="2Oq$k0" />
                <node concept="3gHZIF" id="4kJ$pn8xbTh" role="2OqNvi">
                  <ref role="2WH_rO" node="4kJ$pn8xb1h" resolve="moved" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4kJ$pn8xbTi" role="3cqZAp">
          <node concept="1rXfSq" id="4kJ$pn8xbTj" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setEnabledState(com.intellij.openapi.actionSystem.Presentation,boolean)" resolve="setEnabledState" />
            <node concept="2OqwBi" id="4kJ$pn8xbTk" role="37wK5m">
              <node concept="tl45R" id="4kJ$pn8xbTl" role="2Oq$k0" />
              <node concept="liA8E" id="4kJ$pn8xbTm" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="37vLTw" id="4kJ$pn8xbTn" role="37wK5m">
              <ref role="3cqZAo" node="4kJ$pn8xbTc" resolve="applicable" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4kJ$pn8xgmr" role="3cqZAp">
          <node concept="3clFbS" id="4kJ$pn8xgmt" role="3clFbx">
            <node concept="3clFbF" id="4kJ$pn8xbTo" role="3cqZAp">
              <node concept="2OqwBi" id="4kJ$pn8xbTp" role="3clFbG">
                <node concept="2OqwBi" id="4kJ$pn8xbTq" role="2Oq$k0">
                  <node concept="tl45R" id="4kJ$pn8xbTr" role="2Oq$k0" />
                  <node concept="liA8E" id="4kJ$pn8xbTs" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="4kJ$pn8xbTt" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="3cpWs3" id="4kJ$pn8xbTu" role="37wK5m">
                    <node concept="Xl_RD" id="4kJ$pn8xbT$" role="3uHU7B">
                      <property role="Xl_RC" value="Move To " />
                    </node>
                    <node concept="2OqwBi" id="4kJ$pn8xjvx" role="3uHU7w">
                      <node concept="2OqwBi" id="4kJ$pn8xi$G" role="2Oq$k0">
                        <node concept="2OqwBi" id="4kJ$pn8$MnF" role="2Oq$k0">
                          <node concept="2OqwBi" id="4kJ$pn8xhNW" role="2Oq$k0">
                            <node concept="1PxgMI" id="4kJ$pn8xhwi" role="2Oq$k0">
                              <node concept="chp4Y" id="4kJ$pn8xhyv" role="3oSUPX">
                                <ref role="cht4Q" to="7ggn:4WFClUM1rSw" resolve="Feature" />
                              </node>
                              <node concept="2OqwBi" id="4kJ$pn8xfi4" role="1m5AlR">
                                <node concept="2WthIp" id="4kJ$pn8xfi7" role="2Oq$k0" />
                                <node concept="3gHZIF" id="4kJ$pn8xfi9" role="2OqNvi">
                                  <ref role="2WH_rO" node="4kJ$pn8xb1h" resolve="moved" />
                                </node>
                              </node>
                            </node>
                            <node concept="3TrEf2" id="4kJ$pn8$LUO" role="2OqNvi">
                              <ref role="3Tt5mk" to="7ggn:4kJ$pn7gUEE" resolve="contextType" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="4kJ$pn8$MDd" role="2OqNvi">
                            <ref role="37wK5l" to="us1s:4kJ$pn89CEa" resolve="createRuleSet" />
                          </node>
                        </node>
                        <node concept="2yIwOk" id="4kJ$pn8xiTO" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="4kJ$pn8xjZe" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4kJ$pn8xg_O" role="3clFbw">
            <ref role="3cqZAo" node="4kJ$pn8xbTc" resolve="applicable" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2E2WTH" id="7mKDvraibOE">
    <property role="TrG5h" value="Structs" />
    <ref role="2E2WTM" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
    <node concept="2E2Kfa" id="4KDfkUwMkU8" role="2E2WTK">
      <node concept="3clFbS" id="4KDfkUwMkU9" role="2VODD2">
        <node concept="3clFbF" id="2dYCTqFXl3B" role="3cqZAp">
          <node concept="10Nm6u" id="2dYCTqFXl3A" role="3clFbG" />
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="4kJ$pn8loKF">
    <property role="TrG5h" value="MoveToAspectRuleSet" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Move To Aspect RuleSet" />
    <node concept="2S4$dB" id="4kJ$pn8lpGd" role="1NuT2Z">
      <property role="TrG5h" value="moved" />
      <node concept="3Tm6S6" id="4kJ$pn8lpGe" role="1B3o_S" />
      <node concept="1oajcY" id="4kJ$pn8lpGf" role="1oa70y" />
      <node concept="3Tqbb2" id="4kJ$pn8lpGg" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="4kJ$pn8lqai" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="4kJ$pn8lqaj" role="1oa70y" />
    </node>
    <node concept="2JriF1" id="4kJ$pn8lpzE" role="2JrayB">
      <property role="TrG5h" value="ruleSet" />
      <node concept="15s5l7" id="4kJ$pn8lpzF" role="lGtFl">
        <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: toString should be specified for parameters of non-primitive type&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590364(jetbrains.mps.lang.plugin.typesystem)/1227020617850]&quot;;" />
        <property role="huDt6" value="Error: toString should be specified for parameters of non-primitive type" />
      </node>
      <node concept="3Tm6S6" id="4kJ$pn8lpzG" role="1B3o_S" />
      <node concept="3Tqbb2" id="4kJ$pn8lpzH" role="1tU5fm">
        <ref role="ehGHo" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
      </node>
    </node>
    <node concept="tnohg" id="4kJ$pn8loKG" role="tncku">
      <node concept="3clFbS" id="4kJ$pn8loKH" role="2VODD2">
        <node concept="3clFbF" id="4kJ$pn8m4N6" role="3cqZAp">
          <node concept="2OqwBi" id="4kJ$pn8m4N7" role="3clFbG">
            <node concept="liA8E" id="4kJ$pn8m4N8" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadInEDT(java.lang.Runnable)" resolve="runReadInEDT" />
              <node concept="2ShNRf" id="4kJ$pn8m4N9" role="37wK5m">
                <node concept="YeOm9" id="4kJ$pn8m4Na" role="2ShVmc">
                  <node concept="1Y3b0j" id="4kJ$pn8m4Nb" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <node concept="3Tm1VV" id="4kJ$pn8m4Nc" role="1B3o_S" />
                    <node concept="3clFb_" id="4kJ$pn8m4Nd" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="4kJ$pn8m4Ne" role="1B3o_S" />
                      <node concept="3cqZAl" id="4kJ$pn8m4Nf" role="3clF45" />
                      <node concept="3clFbS" id="4kJ$pn8m4Ng" role="3clF47">
                        <node concept="3clFbJ" id="4kJ$pn8m4Nh" role="3cqZAp">
                          <node concept="3fqX7Q" id="4kJ$pn8m4Ni" role="3clFbw">
                            <node concept="2YIFZM" id="4kJ$pn8m4Nj" role="3fr31v">
                              <ref role="1Pybhc" to="mhbf:~SNodeUtil" resolve="SNodeUtil" />
                              <ref role="37wK5l" to="mhbf:~SNodeUtil.isAccessible(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository)" resolve="isAccessible" />
                              <node concept="2OqwBi" id="4kJ$pn8m4Nk" role="37wK5m">
                                <node concept="2WthIp" id="4kJ$pn8m4Nl" role="2Oq$k0">
                                  <ref role="32nkFo" node="4kJ$pn8loKF" resolve="MoveToAspectRuleSet" />
                                </node>
                                <node concept="3gHZIF" id="4kJ$pn8m4Nm" role="2OqNvi">
                                  <ref role="2WH_rO" node="4kJ$pn8lpGd" resolve="moved" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4kJ$pn8m4Nn" role="37wK5m">
                                <node concept="2OqwBi" id="4kJ$pn8m4No" role="2Oq$k0">
                                  <node concept="2WthIp" id="4kJ$pn8m4Np" role="2Oq$k0">
                                    <ref role="32nkFo" node="4kJ$pn8loKF" resolve="MoveToAspectRuleSet" />
                                  </node>
                                  <node concept="1DTwFV" id="4kJ$pn8m4Nq" role="2OqNvi">
                                    <ref role="2WH_rO" node="4kJ$pn8lqai" resolve="project" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4kJ$pn8m4Nr" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="4kJ$pn8m4Ns" role="3clFbx">
                            <node concept="3cpWs6" id="4kJ$pn8m4Nt" role="3cqZAp" />
                          </node>
                        </node>
                        <node concept="1Xdei3" id="4kJ$pn8m4Nu" role="3cqZAp">
                          <ref role="1Xdeis" to="8a6h:4kJ$pn8jKVy" resolve="MoveToAspectRuleSet" />
                          <node concept="2OqwBi" id="4kJ$pn8m4Nv" role="1Xdeiv">
                            <node concept="2WthIp" id="4kJ$pn8m4Nw" role="2Oq$k0" />
                            <node concept="3gHZIF" id="4kJ$pn8m4Nx" role="2OqNvi">
                              <ref role="2WH_rO" node="4kJ$pn8lpGd" resolve="moved" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="4kJ$pn8m4Ny" role="1Xdeit">
                            <node concept="2WthIp" id="4kJ$pn8m4Nz" role="2Oq$k0" />
                            <node concept="1DTwFV" id="4kJ$pn8m4N$" role="2OqNvi">
                              <ref role="2WH_rO" node="4kJ$pn8lqai" resolve="project" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="4kJ$pn8m4NC" role="1Xdeiu">
                            <node concept="2WthIp" id="4kJ$pn8m4ND" role="2Oq$k0">
                              <ref role="32nkFo" node="4kJ$pn8loKF" resolve="MoveToAspectRuleSet" />
                            </node>
                            <node concept="2BZ7hE" id="4kJ$pn8m4NE" role="2OqNvi">
                              <ref role="2WH_rO" node="4kJ$pn8lpzE" resolve="ruleSet" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4kJ$pn8m4NF" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4kJ$pn8m4NG" role="2Oq$k0">
              <node concept="2OqwBi" id="4kJ$pn8m4NH" role="2Oq$k0">
                <node concept="2WthIp" id="4kJ$pn8m4NI" role="2Oq$k0" />
                <node concept="1DTwFV" id="4kJ$pn8m4NJ" role="2OqNvi">
                  <ref role="2WH_rO" node="4kJ$pn8lqai" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="4kJ$pn8m4NK" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="4kJ$pn8lCg4" role="tmbBb">
      <node concept="3clFbS" id="4kJ$pn8lCg5" role="2VODD2">
        <node concept="3clFbF" id="4kJ$pn8lCg6" role="3cqZAp">
          <node concept="3trCAK" id="4kJ$pn8lCg7" role="3clFbG">
            <ref role="3trCAN" to="8a6h:4kJ$pn8jKVy" resolve="MoveToAspectRuleSet" />
            <node concept="2OqwBi" id="4kJ$pn8lDuo" role="3trCLF">
              <node concept="2WthIp" id="4kJ$pn8lCg9" role="2Oq$k0" />
              <node concept="3gHZIF" id="4kJ$pn8lSQ1" role="2OqNvi">
                <ref role="2WH_rO" node="4kJ$pn8lpGd" resolve="moved" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="55f2HNAzGqH">
    <property role="TrG5h" value="MoveToAspect" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Move To Aspect" />
    <node concept="2JriF1" id="5cgilv1DQxD" role="2JrayB">
      <property role="TrG5h" value="aspect" />
      <node concept="15s5l7" id="5cgilv1DR3k" role="lGtFl">
        <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: toString should be specified for parameters of non-primitive type&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590364(jetbrains.mps.lang.plugin.typesystem)/1227020617850]&quot;;" />
        <property role="huDt6" value="Error: toString should be specified for parameters of non-primitive type" />
      </node>
      <node concept="3Tm6S6" id="5cgilv1DQxE" role="1B3o_S" />
      <node concept="3Tqbb2" id="5cgilv1DR0Q" role="1tU5fm">
        <ref role="ehGHo" to="7ggn:55f2HNAoLSh" resolve="Aspect" />
      </node>
    </node>
    <node concept="2JriF1" id="6aMI9gHGMUu" role="2JrayB">
      <property role="TrG5h" value="ruleSet" />
      <node concept="15s5l7" id="6aMI9gHGPjf" role="lGtFl">
        <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: toString should be specified for parameters of non-primitive type&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590364(jetbrains.mps.lang.plugin.typesystem)/1227020617850]&quot;;" />
        <property role="huDt6" value="Error: toString should be specified for parameters of non-primitive type" />
      </node>
      <node concept="3Tm6S6" id="6aMI9gHGMUv" role="1B3o_S" />
      <node concept="3Tqbb2" id="6aMI9gHGPf4" role="1tU5fm">
        <ref role="ehGHo" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
      </node>
    </node>
    <node concept="tnohg" id="55f2HNAzGqI" role="tncku">
      <node concept="3clFbS" id="55f2HNAzGqJ" role="2VODD2">
        <node concept="3clFbF" id="55f2HNAzX0K" role="3cqZAp">
          <node concept="2OqwBi" id="55f2HNAzX0L" role="3clFbG">
            <node concept="liA8E" id="55f2HNAzX0M" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadInEDT(java.lang.Runnable)" resolve="runReadInEDT" />
              <node concept="2ShNRf" id="55f2HNAzX0N" role="37wK5m">
                <node concept="YeOm9" id="55f2HNAzX0O" role="2ShVmc">
                  <node concept="1Y3b0j" id="55f2HNAzX0P" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <node concept="3Tm1VV" id="55f2HNAzX0Q" role="1B3o_S" />
                    <node concept="3clFb_" id="55f2HNAzX0R" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="55f2HNAzX0S" role="1B3o_S" />
                      <node concept="3cqZAl" id="55f2HNAzX0T" role="3clF45" />
                      <node concept="3clFbS" id="55f2HNAzX0U" role="3clF47">
                        <node concept="3clFbJ" id="55f2HNAzX0V" role="3cqZAp">
                          <node concept="3fqX7Q" id="55f2HNAzX0W" role="3clFbw">
                            <node concept="2YIFZM" id="55f2HNAzX0X" role="3fr31v">
                              <ref role="1Pybhc" to="mhbf:~SNodeUtil" resolve="SNodeUtil" />
                              <ref role="37wK5l" to="mhbf:~SNodeUtil.isAccessible(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository)" resolve="isAccessible" />
                              <node concept="2OqwBi" id="55f2HNAzX0Y" role="37wK5m">
                                <node concept="2WthIp" id="55f2HNAzX0Z" role="2Oq$k0">
                                  <ref role="32nkFo" node="55f2HNAzGqH" resolve="MoveToAspect" />
                                </node>
                                <node concept="3gHZIF" id="55f2HNAzX10" role="2OqNvi">
                                  <ref role="2WH_rO" node="55f2HNAzW3l" resolve="moved" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="55f2HNAzX11" role="37wK5m">
                                <node concept="2OqwBi" id="55f2HNAzX12" role="2Oq$k0">
                                  <node concept="2WthIp" id="55f2HNAzX13" role="2Oq$k0">
                                    <ref role="32nkFo" node="55f2HNAzGqH" resolve="MoveToAspect" />
                                  </node>
                                  <node concept="1DTwFV" id="55f2HNAzX14" role="2OqNvi">
                                    <ref role="2WH_rO" node="55f2HNAzW5l" resolve="project" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="55f2HNAzX15" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="55f2HNAzX16" role="3clFbx">
                            <node concept="3cpWs6" id="55f2HNAzX17" role="3cqZAp" />
                          </node>
                        </node>
                        <node concept="1Xdei3" id="55f2HNAzX18" role="3cqZAp">
                          <ref role="1Xdeis" to="8a6h:55f2HNAxggR" resolve="MoveToAspect" />
                          <node concept="2OqwBi" id="55f2HNAzX19" role="1Xdeiv">
                            <node concept="2WthIp" id="55f2HNAzX1a" role="2Oq$k0" />
                            <node concept="3gHZIF" id="55f2HNAzX1b" role="2OqNvi">
                              <ref role="2WH_rO" node="55f2HNAzW3l" resolve="moved" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="55f2HNAzX1c" role="1Xdeit">
                            <node concept="2WthIp" id="55f2HNAzX1d" role="2Oq$k0" />
                            <node concept="1DTwFV" id="55f2HNAzX1e" role="2OqNvi">
                              <ref role="2WH_rO" node="55f2HNAzW5l" resolve="project" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5cgilv1DRmR" role="1Xdeiu">
                            <node concept="2WthIp" id="5cgilv1DRmU" role="2Oq$k0">
                              <ref role="32nkFo" node="55f2HNAzGqH" resolve="MoveToAspect" />
                            </node>
                            <node concept="2BZ7hE" id="5cgilv1DRmW" role="2OqNvi">
                              <ref role="2WH_rO" node="5cgilv1DQxD" resolve="aspect" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6aMI9gHNMAP" role="1Xdeiu">
                            <node concept="2WthIp" id="6aMI9gHNMAS" role="2Oq$k0">
                              <ref role="32nkFo" node="55f2HNAzGqH" resolve="MoveToAspect" />
                            </node>
                            <node concept="2BZ7hE" id="6aMI9gHNMAU" role="2OqNvi">
                              <ref role="2WH_rO" node="6aMI9gHGMUu" resolve="ruleSet" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="55f2HNAzX1f" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="55f2HNAzX1g" role="2Oq$k0">
              <node concept="2OqwBi" id="55f2HNAzX1h" role="2Oq$k0">
                <node concept="2WthIp" id="55f2HNAzX1i" role="2Oq$k0" />
                <node concept="1DTwFV" id="55f2HNAzX1j" role="2OqNvi">
                  <ref role="2WH_rO" node="55f2HNAzW5l" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="55f2HNAzX1k" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="55f2HNAzW3l" role="1NuT2Z">
      <property role="TrG5h" value="moved" />
      <node concept="3Tm6S6" id="55f2HNAzW3m" role="1B3o_S" />
      <node concept="1oajcY" id="55f2HNAzW3n" role="1oa70y" />
      <node concept="3Tqbb2" id="55f2HNAzHee" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="55f2HNAzW5l" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="55f2HNAzW5m" role="1oa70y" />
    </node>
    <node concept="tkhdA" id="5cgilv1Ec3z" role="tmbBb">
      <node concept="3clFbS" id="5cgilv1Ec3$" role="2VODD2">
        <node concept="3cpWs8" id="5cgilv1EcRA" role="3cqZAp">
          <node concept="3cpWsn" id="5cgilv1EcRD" role="3cpWs9">
            <property role="TrG5h" value="applicable" />
            <node concept="10P_77" id="5cgilv1EcR_" role="1tU5fm" />
            <node concept="3trCAK" id="55f2HNAzWsy" role="33vP2m">
              <ref role="3trCAN" to="8a6h:55f2HNAxggR" resolve="MoveToAspect" />
              <node concept="2OqwBi" id="55f2HNAzWsz" role="3trCLF">
                <node concept="2WthIp" id="55f2HNAzWs$" role="2Oq$k0" />
                <node concept="3gHZIF" id="55f2HNAzWs_" role="2OqNvi">
                  <ref role="2WH_rO" node="55f2HNAzW3l" resolve="moved" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5GUyf6onlI2" role="3cqZAp">
          <node concept="1rXfSq" id="5GUyf6onlI0" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setEnabledState(com.intellij.openapi.actionSystem.Presentation,boolean)" resolve="setEnabledState" />
            <node concept="2OqwBi" id="5GUyf6onlQV" role="37wK5m">
              <node concept="tl45R" id="5GUyf6onlOM" role="2Oq$k0" />
              <node concept="liA8E" id="5GUyf6onm1q" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="37vLTw" id="5cgilv1Eegp" role="37wK5m">
              <ref role="3cqZAo" node="5cgilv1EcRD" resolve="applicable" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4kJ$pn8xrL5" role="3cqZAp">
          <node concept="3clFbS" id="4kJ$pn8xrL7" role="3clFbx">
            <node concept="3clFbF" id="5GUyf6onmh9" role="3cqZAp">
              <node concept="2OqwBi" id="5GUyf6onmA4" role="3clFbG">
                <node concept="2OqwBi" id="5GUyf6onmna" role="2Oq$k0">
                  <node concept="tl45R" id="5GUyf6onmh7" role="2Oq$k0" />
                  <node concept="liA8E" id="5GUyf6onm$S" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="5GUyf6onmFb" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="3cpWs3" id="5GUyf6onmVl" role="37wK5m">
                    <node concept="2OqwBi" id="5GUyf6onne2" role="3uHU7w">
                      <node concept="2OqwBi" id="5cgilv1EgoL" role="2Oq$k0">
                        <node concept="2WthIp" id="5cgilv1EgoO" role="2Oq$k0" />
                        <node concept="2BZ7hE" id="5cgilv1EgoQ" role="2OqNvi">
                          <ref role="2WH_rO" node="5cgilv1DQxD" resolve="aspect" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="5GUyf6onnt5" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="5GUyf6onmFY" role="3uHU7B">
                      <property role="Xl_RC" value="Move To " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4kJ$pn8xsj4" role="3clFbw">
            <ref role="3cqZAo" node="5cgilv1EcRD" resolve="applicable" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3m__5a1Zn1S">
    <property role="TrG5h" value="FormatRuleset" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Format RuleSet" />
    <node concept="2JriF1" id="3m__5a2nwl$" role="2JrayB">
      <property role="TrG5h" value="ruleSet" />
      <node concept="15s5l7" id="3m__5a2nwl_" role="lGtFl">
        <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: toString should be specified for parameters of non-primitive type&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590364(jetbrains.mps.lang.plugin.typesystem)/1227020617850]&quot;;" />
        <property role="huDt6" value="Error: toString should be specified for parameters of non-primitive type" />
      </node>
      <node concept="3Tm6S6" id="3m__5a2nwlA" role="1B3o_S" />
      <node concept="3Tqbb2" id="3m__5a2nwlB" role="1tU5fm">
        <ref role="ehGHo" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
      </node>
    </node>
    <node concept="2S4$dB" id="3m__5a2cy5u" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="3m__5a2cy5v" role="1B3o_S" />
      <node concept="1oajcY" id="3m__5a2cy5w" role="1oa70y" />
      <node concept="3Tqbb2" id="3m__5a2cxNY" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="3m__5a1Zoqv" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3m__5a1Zoqw" role="1oa70y" />
    </node>
    <node concept="tnohg" id="3m__5a1Zn1T" role="tncku">
      <node concept="3clFbS" id="3m__5a1Zn1U" role="2VODD2">
        <node concept="3clFbF" id="3m__5a1ZEOq" role="3cqZAp">
          <node concept="2OqwBi" id="3m__5a1ZEOs" role="3clFbG">
            <node concept="liA8E" id="3m__5a1ZEOt" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadInEDT(java.lang.Runnable)" resolve="runReadInEDT" />
              <node concept="2ShNRf" id="3m__5a1ZEOu" role="37wK5m">
                <node concept="YeOm9" id="3m__5a1ZEOv" role="2ShVmc">
                  <node concept="1Y3b0j" id="3m__5a1ZEOw" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <node concept="3Tm1VV" id="3m__5a1ZEOx" role="1B3o_S" />
                    <node concept="3clFb_" id="3m__5a1ZEOy" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="3m__5a1ZEOz" role="1B3o_S" />
                      <node concept="3cqZAl" id="3m__5a1ZEO$" role="3clF45" />
                      <node concept="3clFbS" id="3m__5a1ZEO_" role="3clF47">
                        <node concept="1Xdei3" id="3m__5a1ZEON" role="3cqZAp">
                          <ref role="1Xdeis" to="8a6h:3m__5a1XZWU" resolve="FormatRuleSet" />
                          <node concept="2OqwBi" id="3m__5a1ZEOR" role="1Xdeit">
                            <node concept="2WthIp" id="3m__5a1ZEOS" role="2Oq$k0" />
                            <node concept="1DTwFV" id="3m__5a1ZEOT" role="2OqNvi">
                              <ref role="2WH_rO" node="3m__5a1Zoqv" resolve="project" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3m__5a2ny4V" role="1Xdeiv">
                            <node concept="2WthIp" id="3m__5a2ny4Y" role="2Oq$k0">
                              <ref role="32nkFo" node="3m__5a1Zn1S" resolve="FormatRuleset" />
                            </node>
                            <node concept="2BZ7hE" id="3m__5a2ny50" role="2OqNvi">
                              <ref role="2WH_rO" node="3m__5a2nwl$" resolve="ruleSet" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3m__5a1ZEOX" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3m__5a1ZEOY" role="2Oq$k0">
              <node concept="2OqwBi" id="3m__5a1ZEOZ" role="2Oq$k0">
                <node concept="2WthIp" id="3m__5a1ZEP0" role="2Oq$k0" />
                <node concept="1DTwFV" id="3m__5a1ZEP1" role="2OqNvi">
                  <ref role="2WH_rO" node="3m__5a1Zoqv" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="3m__5a1ZEP2" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="3m__5a1ZDEQ" role="tmbBb">
      <node concept="3clFbS" id="3m__5a1ZDER" role="2VODD2">
        <node concept="3clFbF" id="3m__5a1ZDES" role="3cqZAp">
          <node concept="3trCAK" id="3m__5a1ZDET" role="3clFbG">
            <ref role="3trCAN" to="8a6h:3m__5a1XZWU" resolve="FormatRuleSet" />
            <node concept="2OqwBi" id="3m__5a2cys5" role="3trCLF">
              <node concept="2WthIp" id="3m__5a2cys8" role="2Oq$k0" />
              <node concept="2BZ7hE" id="3m__5a2nx16" role="2OqNvi">
                <ref role="2WH_rO" node="3m__5a2nwl$" resolve="ruleSet" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3gm2YTwE11B">
    <property role="TrG5h" value="AspectPrefs" />
    <node concept="2tJIrI" id="3gm2YTwEl_2" role="jymVt" />
    <node concept="312cEg" id="3gm2YTwEpWH" role="jymVt">
      <property role="TrG5h" value="aspects" />
      <node concept="3Tm1VV" id="3gm2YTwEpM9" role="1B3o_S" />
      <node concept="10Q1$e" id="3gm2YTwEpWe" role="1tU5fm">
        <node concept="3uibUv" id="3gm2YTwEpWc" role="10Q1$1">
          <ref role="3uigEE" node="3gm2YTwElRb" resolve="AspectPref" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gm2YTwE6MX" role="jymVt" />
    <node concept="3clFb_" id="22ExA6giLRE" role="jymVt">
      <property role="TrG5h" value="getAspectPrefs" />
      <node concept="3clFbS" id="22ExA6giLRH" role="3clF47">
        <node concept="3clFbF" id="2L64EL1OU0u" role="3cqZAp">
          <node concept="3K4zz7" id="2L64EL1P07U" role="3clFbG">
            <node concept="2YIFZM" id="2L64EL1P52k" role="3K4E3e">
              <ref role="37wK5l" to="zrbp:~List.of(java.lang.Object...)" resolve="of" />
              <ref role="1Pybhc" to="zrbp:~List" resolve="List" />
              <node concept="3uibUv" id="2L64EL1PeiU" role="3PaCim">
                <ref role="3uigEE" node="3gm2YTwElRb" resolve="AspectPref" />
              </node>
            </node>
            <node concept="3clFbC" id="2L64EL1OXcG" role="3K4Cdx">
              <node concept="10Nm6u" id="2L64EL1OZeM" role="3uHU7w" />
              <node concept="37vLTw" id="2L64EL1OU0t" role="3uHU7B">
                <ref role="3cqZAo" node="3gm2YTwEpWH" resolve="aspects" />
              </node>
            </node>
            <node concept="2OqwBi" id="22ExA6giWSs" role="3K4GZi">
              <node concept="2YIFZM" id="22ExA6giVP1" role="2Oq$k0">
                <ref role="1Pybhc" to="zrbp:~Collection" resolve="Collection" />
                <ref role="37wK5l" to="zrbp:~Collection.of(java.lang.Object...)" resolve="of" />
                <node concept="37vLTw" id="22ExA6giVP2" role="37wK5m">
                  <ref role="3cqZAo" node="3gm2YTwEpWH" resolve="aspects" />
                </node>
              </node>
              <node concept="liA8E" id="22ExA6giZxh" role="2OqNvi">
                <ref role="37wK5l" to="zrbp:~Collection.toList()" resolve="toList" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="22ExA6giIih" role="1B3o_S" />
      <node concept="3uibUv" id="22ExA6giMTy" role="3clF45">
        <ref role="3uigEE" to="zrbp:~List" resolve="List" />
        <node concept="3uibUv" id="22ExA6giOjC" role="11_B2D">
          <ref role="3uigEE" node="3gm2YTwElRb" resolve="AspectPref" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="22ExA6giH6R" role="jymVt" />
    <node concept="3clFb_" id="22ExA6fN6LO" role="jymVt">
      <property role="TrG5h" value="getActive" />
      <node concept="3clFbS" id="22ExA6fN6LU" role="3clF47">
        <node concept="3cpWs6" id="22ExA6fN6Mc" role="3cqZAp">
          <node concept="2OqwBi" id="22ExA6fNyzt" role="3cqZAk">
            <node concept="1rXfSq" id="22ExA6fNn9_" role="2Oq$k0">
              <ref role="37wK5l" node="3gm2YTwESrX" resolve="getOrCreateAscpectPref" />
              <node concept="37vLTw" id="yC2uzcFIwI" role="37wK5m">
                <ref role="3cqZAo" node="yC2uzckBvF" resolve="aspectId" />
              </node>
            </node>
            <node concept="2OwXpG" id="22ExA6fNyZS" role="2OqNvi">
              <ref role="2Oxat5" node="3gm2YTwEp50" resolve="active" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="22ExA6fN6Mf" role="3clF45" />
      <node concept="37vLTG" id="yC2uzckBvF" role="3clF46">
        <property role="TrG5h" value="aspectId" />
        <node concept="17QB3L" id="yC2uzckEDs" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="22ExA6fN6Me" role="1B3o_S" />
      <node concept="2AHcQZ" id="22ExA6fNaH$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gm2YTwEimD" role="jymVt" />
    <node concept="3clFb_" id="22ExA6fN7N7" role="jymVt">
      <property role="TrG5h" value="setActive" />
      <node concept="3clFbS" id="22ExA6fN7Nf" role="3clF47">
        <node concept="3clFbF" id="22ExA6fN7Nn" role="3cqZAp">
          <node concept="37vLTI" id="22ExA6fN7No" role="3clFbG">
            <node concept="37vLTw" id="22ExA6fN7Np" role="37vLTx">
              <ref role="3cqZAo" node="22ExA6fN7Nd" resolve="active" />
            </node>
            <node concept="2OqwBi" id="22ExA6fN$WF" role="37vLTJ">
              <node concept="1rXfSq" id="22ExA6fN$WG" role="2Oq$k0">
                <ref role="37wK5l" node="3gm2YTwESrX" resolve="getOrCreateAscpectPref" />
                <node concept="37vLTw" id="yC2uzcFN3L" role="37wK5m">
                  <ref role="3cqZAo" node="yC2uzck$MK" resolve="aspectId" />
                </node>
              </node>
              <node concept="2OwXpG" id="22ExA6fN$WI" role="2OqNvi">
                <ref role="2Oxat5" node="3gm2YTwEp50" resolve="active" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="22ExA6fN7N$" role="3clF45" />
      <node concept="37vLTG" id="yC2uzck$MK" role="3clF46">
        <property role="TrG5h" value="aspectId" />
        <node concept="17QB3L" id="yC2uzckBcY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="22ExA6fN7Nd" role="3clF46">
        <property role="TrG5h" value="active" />
        <node concept="10P_77" id="22ExA6fN7Ne" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="22ExA6fN7Nz" role="1B3o_S" />
      <node concept="2AHcQZ" id="22ExA6fNZyE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gm2YTwE7yH" role="jymVt" />
    <node concept="2YIFZL" id="3gm2YTwEKsS" role="jymVt">
      <property role="TrG5h" value="getOrCreatePrefs" />
      <node concept="37vLTG" id="26byUJzyrnr" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="26byUJzyrns" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3Tm1VV" id="26byUJzyoco" role="1B3o_S" />
      <node concept="3uibUv" id="3gm2YTwEKsU" role="3clF45">
        <ref role="3uigEE" node="3gm2YTwE11B" resolve="AspectPrefs" />
      </node>
      <node concept="3clFbS" id="3gm2YTwEKso" role="3clF47">
        <node concept="3cpWs8" id="sq$vNk_b5J" role="3cqZAp">
          <node concept="3cpWsn" id="sq$vNk_b5K" role="3cpWs9">
            <property role="TrG5h" value="p" />
            <node concept="34_ZPX" id="sq$vNk_b5L" role="1tU5fm">
              <ref role="34A7Nh" node="4Y8BM43M7ZV" resolve="DclarePreferences" />
            </node>
            <node concept="2OqwBi" id="sq$vNk_b5M" role="33vP2m">
              <node concept="37vLTw" id="sq$vNk_b5O" role="2Oq$k0">
                <ref role="3cqZAo" node="26byUJzyrnr" resolve="project" />
              </node>
              <node concept="LR4Ub" id="sq$vNk_b5Q" role="2OqNvi">
                <ref role="LR4Ua" node="4Y8BM43M7ZV" resolve="DclarePreferences" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="26byUJzysdB" role="3cqZAp">
          <node concept="3clFbS" id="26byUJzysdD" role="3clFbx">
            <node concept="3cpWs8" id="3gm2YTwEylr" role="3cqZAp">
              <node concept="3cpWsn" id="3gm2YTwEyls" role="3cpWs9">
                <property role="TrG5h" value="prefs" />
                <node concept="3uibUv" id="3gm2YTwEycp" role="1tU5fm">
                  <ref role="3uigEE" node="3gm2YTwE11B" resolve="AspectPrefs" />
                </node>
                <node concept="2OqwBi" id="3gm2YTwEylt" role="33vP2m">
                  <node concept="37vLTw" id="3gm2YTwEylu" role="2Oq$k0">
                    <ref role="3cqZAo" node="sq$vNk_b5K" resolve="p" />
                  </node>
                  <node concept="34pFcN" id="3gm2YTwEylv" role="2OqNvi">
                    <ref role="2WH_rO" node="3gm2YTwDU1x" resolve="aspectPrefs" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3gm2YTwEKsr" role="3cqZAp">
              <node concept="3clFbS" id="3gm2YTwEKss" role="3clFbx">
                <node concept="3clFbF" id="3gm2YTwEKst" role="3cqZAp">
                  <node concept="37vLTI" id="3gm2YTwEKsu" role="3clFbG">
                    <node concept="37vLTw" id="3gm2YTwEKsL" role="37vLTJ">
                      <ref role="3cqZAo" node="3gm2YTwEyls" resolve="prefs" />
                    </node>
                    <node concept="2ShNRf" id="3gm2YTwEKsw" role="37vLTx">
                      <node concept="HV5vD" id="3gm2YTwEKsx" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="HV5vE" node="3gm2YTwE11B" resolve="AspectPrefs" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3gm2YTwEKsy" role="3cqZAp">
                  <node concept="37vLTI" id="3gm2YTwEKsz" role="3clFbG">
                    <node concept="2OqwBi" id="3gm2YTwEKs$" role="37vLTJ">
                      <node concept="37vLTw" id="3gm2YTwEKsM" role="2Oq$k0">
                        <ref role="3cqZAo" node="sq$vNk_b5K" resolve="p" />
                      </node>
                      <node concept="34pFcN" id="3gm2YTwEKsA" role="2OqNvi">
                        <ref role="2WH_rO" node="3gm2YTwDU1x" resolve="aspectPrefs" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3gm2YTwEKsN" role="37vLTx">
                      <ref role="3cqZAo" node="3gm2YTwEyls" resolve="prefs" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="3gm2YTwEKsC" role="3clFbw">
                <node concept="10Nm6u" id="3gm2YTwEKsD" role="3uHU7w" />
                <node concept="37vLTw" id="3gm2YTwEKsP" role="3uHU7B">
                  <ref role="3cqZAo" node="3gm2YTwEyls" resolve="prefs" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3gm2YTwEKsF" role="3cqZAp">
              <node concept="37vLTw" id="3gm2YTwEKsO" role="3cqZAk">
                <ref role="3cqZAo" node="3gm2YTwEyls" resolve="prefs" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="26byUJzytrK" role="3clFbw">
            <node concept="10Nm6u" id="26byUJzyus6" role="3uHU7w" />
            <node concept="37vLTw" id="26byUJzysJd" role="3uHU7B">
              <ref role="3cqZAo" node="sq$vNk_b5K" resolve="p" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="26byUJzy$ag" role="3cqZAp">
          <node concept="10Nm6u" id="26byUJzy_aK" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gm2YTwESi6" role="jymVt" />
    <node concept="3clFb_" id="3gm2YTwESrX" role="jymVt">
      <property role="TrG5h" value="getOrCreateAscpectPref" />
      <node concept="37vLTG" id="yC2uzcF_l9" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="yC2uzcFCwW" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3gm2YTwESs1" role="3clF47">
        <node concept="3cpWs8" id="3gm2YTwF1mI" role="3cqZAp">
          <node concept="3cpWsn" id="3gm2YTwF1mJ" role="3cpWs9">
            <property role="TrG5h" value="aspects" />
            <node concept="10Q1$e" id="3gm2YTwF17u" role="1tU5fm">
              <node concept="3uibUv" id="3gm2YTwF17x" role="10Q1$1">
                <ref role="3uigEE" node="3gm2YTwElRb" resolve="AspectPref" />
              </node>
            </node>
            <node concept="2OqwBi" id="3gm2YTwF1mK" role="33vP2m">
              <node concept="Xjq3P" id="3gm2YTwF1mL" role="2Oq$k0" />
              <node concept="2OwXpG" id="3gm2YTwF1mM" role="2OqNvi">
                <ref role="2Oxat5" node="3gm2YTwEpWH" resolve="aspects" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3gm2YTwF1Zi" role="3cqZAp">
          <node concept="3clFbS" id="3gm2YTwF1Zk" role="3clFbx">
            <node concept="3clFbF" id="3gm2YTwF7cK" role="3cqZAp">
              <node concept="37vLTI" id="3gm2YTwF85Q" role="3clFbG">
                <node concept="2ShNRf" id="3gm2YTwF8rw" role="37vLTx">
                  <node concept="3$_iS1" id="3gm2YTwFhLX" role="2ShVmc">
                    <node concept="3$GHV9" id="3gm2YTwFhLZ" role="3$GQph">
                      <node concept="3cmrfG" id="3gm2YTwFimI" role="3$I4v7">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="3gm2YTwFhtz" role="3$_nBY">
                      <ref role="3uigEE" node="3gm2YTwElRb" resolve="AspectPref" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3gm2YTwF7vl" role="37vLTJ">
                  <node concept="Xjq3P" id="3gm2YTwF7cJ" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3gm2YTwF7R5" role="2OqNvi">
                    <ref role="2Oxat5" node="3gm2YTwEpWH" resolve="aspects" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3gm2YTwF2Fh" role="3clFbw">
            <node concept="10Nm6u" id="3gm2YTwF3_K" role="3uHU7w" />
            <node concept="37vLTw" id="3gm2YTwF2kl" role="3uHU7B">
              <ref role="3cqZAo" node="3gm2YTwF1mJ" resolve="aspects" />
            </node>
          </node>
          <node concept="9aQIb" id="22ExA6gAadv" role="9aQIa">
            <node concept="3clFbS" id="22ExA6gAadw" role="9aQI4">
              <node concept="1Dw8fO" id="22ExA6gAb0E" role="3cqZAp">
                <node concept="3cpWsn" id="22ExA6gAb0F" role="1Duv9x">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="22ExA6gAcOJ" role="1tU5fm" />
                  <node concept="3cmrfG" id="22ExA6gAfer" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3clFbS" id="22ExA6gAb0G" role="2LFqv$">
                  <node concept="3clFbJ" id="22ExA6gAq$G" role="3cqZAp">
                    <node concept="3clFbS" id="22ExA6gAq$I" role="3clFbx">
                      <node concept="3clFbF" id="22ExA6gACtM" role="3cqZAp">
                        <node concept="37vLTI" id="22ExA6gAGzS" role="3clFbG">
                          <node concept="2OqwBi" id="22ExA6gAEko" role="37vLTJ">
                            <node concept="Xjq3P" id="22ExA6gACtL" role="2Oq$k0" />
                            <node concept="2OwXpG" id="22ExA6gAFXW" role="2OqNvi">
                              <ref role="2Oxat5" node="3gm2YTwEpWH" resolve="aspects" />
                            </node>
                          </node>
                          <node concept="2ShNRf" id="22ExA6gAI5_" role="37vLTx">
                            <node concept="3$_iS1" id="22ExA6gAI5A" role="2ShVmc">
                              <node concept="3$GHV9" id="22ExA6gAI5B" role="3$GQph">
                                <node concept="3cmrfG" id="22ExA6gAI5C" role="3$I4v7">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                              <node concept="3uibUv" id="22ExA6gAI5D" role="3$_nBY">
                                <ref role="3uigEE" node="3gm2YTwElRb" resolve="AspectPref" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="22lmx$" id="yC2uzcknFF" role="3clFbw">
                      <node concept="2OqwBi" id="22ExA6gA_Mg" role="3uHU7B">
                        <node concept="2OqwBi" id="22ExA6gA$92" role="2Oq$k0">
                          <node concept="AH0OO" id="22ExA6gAxxf" role="2Oq$k0">
                            <node concept="37vLTw" id="22ExA6gAyyT" role="AHEQo">
                              <ref role="3cqZAo" node="22ExA6gAb0F" resolve="i" />
                            </node>
                            <node concept="37vLTw" id="22ExA6gAvLQ" role="AHHXb">
                              <ref role="3cqZAo" node="3gm2YTwF1mJ" resolve="aspects" />
                            </node>
                          </node>
                          <node concept="2OwXpG" id="22ExA6gA$QZ" role="2OqNvi">
                            <ref role="2Oxat5" node="3gm2YTwEngZ" resolve="name" />
                          </node>
                        </node>
                        <node concept="17RlXB" id="22ExA6gABCV" role="2OqNvi" />
                      </node>
                      <node concept="2OqwBi" id="yC2uzckpTK" role="3uHU7w">
                        <node concept="2OqwBi" id="yC2uzckpTL" role="2Oq$k0">
                          <node concept="AH0OO" id="yC2uzckpTM" role="2Oq$k0">
                            <node concept="37vLTw" id="yC2uzckpTN" role="AHEQo">
                              <ref role="3cqZAo" node="22ExA6gAb0F" resolve="i" />
                            </node>
                            <node concept="37vLTw" id="yC2uzckpTO" role="AHHXb">
                              <ref role="3cqZAo" node="3gm2YTwF1mJ" resolve="aspects" />
                            </node>
                          </node>
                          <node concept="2OwXpG" id="yC2uzckpTP" role="2OqNvi">
                            <ref role="2Oxat5" node="yC2uzckjU9" resolve="id" />
                          </node>
                        </node>
                        <node concept="17RlXB" id="yC2uzckpTQ" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eOVzh" id="22ExA6gAikm" role="1Dwp0S">
                  <node concept="2OqwBi" id="22ExA6gAlkf" role="3uHU7w">
                    <node concept="37vLTw" id="22ExA6gAjAo" role="2Oq$k0">
                      <ref role="3cqZAo" node="3gm2YTwF1mJ" resolve="aspects" />
                    </node>
                    <node concept="1Rwk04" id="22ExA6gAmLN" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="22ExA6gAgdh" role="3uHU7B">
                    <ref role="3cqZAo" node="22ExA6gAb0F" resolve="i" />
                  </node>
                </node>
                <node concept="3uNrnE" id="22ExA6gAp3d" role="1Dwrff">
                  <node concept="37vLTw" id="22ExA6gAp3f" role="2$L3a6">
                    <ref role="3cqZAo" node="22ExA6gAb0F" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3gm2YTwEZfY" role="3cqZAp">
          <node concept="2GrKxI" id="3gm2YTwEZfZ" role="2Gsz3X">
            <property role="TrG5h" value="aspect" />
          </node>
          <node concept="3clFbS" id="3gm2YTwEZg1" role="2LFqv$">
            <node concept="3clFbJ" id="3gm2YTwFjyO" role="3cqZAp">
              <node concept="17R0WA" id="3gm2YTwFlhC" role="3clFbw">
                <node concept="37vLTw" id="3gm2YTwFnut" role="3uHU7w">
                  <ref role="3cqZAo" node="yC2uzcF_l9" resolve="id" />
                </node>
                <node concept="2OqwBi" id="3gm2YTwFknT" role="3uHU7B">
                  <node concept="2GrUjf" id="3gm2YTwFjQY" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="3gm2YTwEZfZ" resolve="aspect" />
                  </node>
                  <node concept="2OwXpG" id="3gm2YTwFkH$" role="2OqNvi">
                    <ref role="2Oxat5" node="yC2uzckjU9" resolve="id" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3gm2YTwFjyQ" role="3clFbx">
                <node concept="3cpWs6" id="3gm2YTwFoXX" role="3cqZAp">
                  <node concept="2GrUjf" id="3gm2YTwFplW" role="3cqZAk">
                    <ref role="2Gs0qQ" node="3gm2YTwEZfZ" resolve="aspect" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3gm2YTwFivX" role="2GsD0m">
            <node concept="Xjq3P" id="3gm2YTwFivY" role="2Oq$k0" />
            <node concept="2OwXpG" id="3gm2YTwFivZ" role="2OqNvi">
              <ref role="2Oxat5" node="3gm2YTwEpWH" resolve="aspects" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3gm2YTwFqZ0" role="3cqZAp">
          <node concept="37vLTI" id="3gm2YTwFsjP" role="3clFbG">
            <node concept="2OqwBi" id="3gm2YTwFrxg" role="37vLTJ">
              <node concept="Xjq3P" id="3gm2YTwFqYY" role="2Oq$k0" />
              <node concept="2OwXpG" id="3gm2YTwFrQR" role="2OqNvi">
                <ref role="2Oxat5" node="3gm2YTwEpWH" resolve="aspects" />
              </node>
            </node>
            <node concept="2YIFZM" id="3gm2YTwFttN" role="37vLTx">
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <ref role="37wK5l" to="33ny:~Arrays.copyOf(java.lang.Object[],int)" resolve="copyOf" />
              <node concept="2OqwBi" id="3gm2YTwFxpC" role="37wK5m">
                <node concept="Xjq3P" id="3gm2YTwFwxQ" role="2Oq$k0" />
                <node concept="2OwXpG" id="3gm2YTwFxRS" role="2OqNvi">
                  <ref role="2Oxat5" node="3gm2YTwEpWH" resolve="aspects" />
                </node>
              </node>
              <node concept="3cpWs3" id="3gm2YTwF_qK" role="37wK5m">
                <node concept="3cmrfG" id="3gm2YTwF__7" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="3gm2YTwF$bV" role="3uHU7B">
                  <node concept="2OqwBi" id="3gm2YTwFzyf" role="2Oq$k0">
                    <node concept="Xjq3P" id="3gm2YTwFzci" role="2Oq$k0" />
                    <node concept="2OwXpG" id="3gm2YTwFzNQ" role="2OqNvi">
                      <ref role="2Oxat5" node="3gm2YTwEpWH" resolve="aspects" />
                    </node>
                  </node>
                  <node concept="1Rwk04" id="3gm2YTwF$$9" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3gm2YTwFQCm" role="3cqZAp">
          <node concept="3cpWsn" id="3gm2YTwFQCn" role="3cpWs9">
            <property role="TrG5h" value="aspect" />
            <node concept="3uibUv" id="3gm2YTwFQla" role="1tU5fm">
              <ref role="3uigEE" node="3gm2YTwElRb" resolve="AspectPref" />
            </node>
            <node concept="2ShNRf" id="3gm2YTwFQCo" role="33vP2m">
              <node concept="HV5vD" id="3gm2YTwFQCp" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="HV5vE" node="3gm2YTwElRb" resolve="AspectPref" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yC2uzcGORB" role="3cqZAp">
          <node concept="37vLTI" id="yC2uzcGV2b" role="3clFbG">
            <node concept="37vLTw" id="yC2uzcGXAm" role="37vLTx">
              <ref role="3cqZAo" node="yC2uzcF_l9" resolve="id" />
            </node>
            <node concept="2OqwBi" id="yC2uzcGRCD" role="37vLTJ">
              <node concept="37vLTw" id="yC2uzcGOR_" role="2Oq$k0">
                <ref role="3cqZAo" node="3gm2YTwFQCn" resolve="aspect" />
              </node>
              <node concept="2OwXpG" id="yC2uzcGTrx" role="2OqNvi">
                <ref role="2Oxat5" node="yC2uzckjU9" resolve="id" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3gm2YTwG0WS" role="3cqZAp">
          <node concept="2OqwBi" id="3gm2YTwG1$M" role="3clFbG">
            <node concept="37vLTw" id="3gm2YTwG0WQ" role="2Oq$k0">
              <ref role="3cqZAo" node="3gm2YTwFQCn" resolve="aspect" />
            </node>
            <node concept="liA8E" id="3gm2YTwG2pv" role="2OqNvi">
              <ref role="37wK5l" node="3gm2YTwFYmJ" resolve="setDefault" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3gm2YTwFH_X" role="3cqZAp">
          <node concept="37vLTI" id="3gm2YTwFO5v" role="3clFbG">
            <node concept="37vLTw" id="3gm2YTwFQCq" role="37vLTx">
              <ref role="3cqZAo" node="3gm2YTwFQCn" resolve="aspect" />
            </node>
            <node concept="AH0OO" id="3gm2YTwFJAQ" role="37vLTJ">
              <node concept="3cpWsd" id="3gm2YTwFNsA" role="AHEQo">
                <node concept="3cmrfG" id="3gm2YTwFNAX" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="3gm2YTwFM2h" role="3uHU7B">
                  <node concept="2OqwBi" id="3gm2YTwFLfx" role="2Oq$k0">
                    <node concept="Xjq3P" id="3gm2YTwFKH6" role="2Oq$k0" />
                    <node concept="2OwXpG" id="3gm2YTwFLxC" role="2OqNvi">
                      <ref role="2Oxat5" node="3gm2YTwEpWH" resolve="aspects" />
                    </node>
                  </node>
                  <node concept="1Rwk04" id="3gm2YTwFN5k" role="2OqNvi" />
                </node>
              </node>
              <node concept="2OqwBi" id="3gm2YTwFIzU" role="AHHXb">
                <node concept="Xjq3P" id="3gm2YTwFH_V" role="2Oq$k0" />
                <node concept="2OwXpG" id="3gm2YTwFJgs" role="2OqNvi">
                  <ref role="2Oxat5" node="3gm2YTwEpWH" resolve="aspects" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3gm2YTwG3wz" role="3cqZAp">
          <node concept="37vLTw" id="3gm2YTwG4Uc" role="3cqZAk">
            <ref role="3cqZAo" node="3gm2YTwFQCn" resolve="aspect" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3gm2YTwESrZ" role="3clF45">
        <ref role="3uigEE" node="3gm2YTwElRb" resolve="AspectPref" />
      </node>
      <node concept="3Tm1VV" id="3gm2YTwESs0" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3gm2YTwE6N2" role="jymVt" />
    <node concept="3Tm1VV" id="3gm2YTwE11C" role="1B3o_S" />
    <node concept="3uibUv" id="3gm2YTwE3Ys" role="EKbjA">
      <ref role="3uigEE" to="wyt6:~Cloneable" resolve="Cloneable" />
    </node>
    <node concept="3uibUv" id="3z4syYQ0V0h" role="EKbjA">
      <ref role="3uigEE" to="u4ym:22ExA6fKnVF" resolve="IAspectPrefs" />
    </node>
    <node concept="3clFb_" id="69vWBEqgER_" role="jymVt">
      <property role="TrG5h" value="getInactiveAspectIds" />
      <node concept="3Tm1VV" id="69vWBEqgERB" role="1B3o_S" />
      <node concept="10Q1$e" id="69vWBEqgERC" role="3clF45">
        <node concept="17QB3L" id="69vWBEqgERD" role="10Q1$1" />
      </node>
      <node concept="3clFbS" id="69vWBEqgERE" role="3clF47">
        <node concept="3clFbF" id="69vWBEqh3Iy" role="3cqZAp">
          <node concept="2OqwBi" id="69vWBEqiv9Z" role="3clFbG">
            <node concept="2OqwBi" id="2ieGJi3g9i5" role="2Oq$k0">
              <node concept="2OqwBi" id="69vWBEqh8Gh" role="2Oq$k0">
                <node concept="2OqwBi" id="69vWBEqh5JG" role="2Oq$k0">
                  <node concept="Xjq3P" id="69vWBEqh3Ix" role="2Oq$k0" />
                  <node concept="liA8E" id="69vWBEqh6DN" role="2OqNvi">
                    <ref role="37wK5l" node="22ExA6giLRE" resolve="getAspectPrefs" />
                  </node>
                </node>
                <node concept="liA8E" id="69vWBEqhc6t" role="2OqNvi">
                  <ref role="37wK5l" to="zrbp:~Collection.filter(java.util.function.Predicate)" resolve="filter" />
                  <node concept="2ShNRf" id="69vWBEqhgjA" role="37wK5m">
                    <node concept="YeOm9" id="69vWBEqhTvy" role="2ShVmc">
                      <node concept="1Y3b0j" id="69vWBEqhTv_" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <property role="373rjd" value="true" />
                        <ref role="1Y3XeK" to="82uw:~Predicate" resolve="Predicate" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <node concept="3Tm1VV" id="69vWBEqhTvA" role="1B3o_S" />
                        <node concept="3clFb_" id="69vWBEqhTvO" role="jymVt">
                          <property role="TrG5h" value="test" />
                          <node concept="3Tm1VV" id="69vWBEqhTvP" role="1B3o_S" />
                          <node concept="10P_77" id="69vWBEqhTvR" role="3clF45" />
                          <node concept="37vLTG" id="69vWBEqhTvS" role="3clF46">
                            <property role="TrG5h" value="ap" />
                            <node concept="3uibUv" id="69vWBEqhTDo" role="1tU5fm">
                              <ref role="3uigEE" node="3gm2YTwElRb" resolve="AspectPref" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="69vWBEqhTvU" role="3clF47">
                            <node concept="3clFbF" id="69vWBEqikJf" role="3cqZAp">
                              <node concept="3fqX7Q" id="69vWBEqisBB" role="3clFbG">
                                <node concept="2OqwBi" id="69vWBEqisBD" role="3fr31v">
                                  <node concept="37vLTw" id="69vWBEqisBE" role="2Oq$k0">
                                    <ref role="3cqZAo" node="69vWBEqhTvS" resolve="ap" />
                                  </node>
                                  <node concept="2OwXpG" id="69vWBEqisBF" role="2OqNvi">
                                    <ref role="2Oxat5" node="3gm2YTwEp50" resolve="active" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="69vWBEqhTvW" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="69vWBEqhTDn" role="2Ghqu4">
                          <ref role="3uigEE" node="3gm2YTwElRb" resolve="AspectPref" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2ieGJi3gd8a" role="2OqNvi">
                <ref role="37wK5l" to="zrbp:~Collection.map(java.util.function.Function)" resolve="map" />
                <node concept="2ShNRf" id="2ieGJi3grQr" role="37wK5m">
                  <node concept="YeOm9" id="2ieGJi3gYrF" role="2ShVmc">
                    <node concept="1Y3b0j" id="2ieGJi3gYrI" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <property role="373rjd" value="true" />
                      <ref role="1Y3XeK" to="82uw:~Function" resolve="Function" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="2ieGJi3gYrJ" role="1B3o_S" />
                      <node concept="3clFb_" id="2ieGJi3gYs1" role="jymVt">
                        <property role="TrG5h" value="apply" />
                        <node concept="3Tm1VV" id="2ieGJi3gYs2" role="1B3o_S" />
                        <node concept="17QB3L" id="2ieGJi3h7zD" role="3clF45" />
                        <node concept="37vLTG" id="2ieGJi3gYs5" role="3clF46">
                          <property role="TrG5h" value="ap" />
                          <node concept="3uibUv" id="2ieGJi3gYsl" role="1tU5fm">
                            <ref role="3uigEE" node="3gm2YTwElRb" resolve="AspectPref" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2ieGJi3gYs7" role="3clF47">
                          <node concept="3clFbF" id="2ieGJi3hbEf" role="3cqZAp">
                            <node concept="2OqwBi" id="2ieGJi3hczL" role="3clFbG">
                              <node concept="37vLTw" id="2ieGJi3hbEe" role="2Oq$k0">
                                <ref role="3cqZAo" node="2ieGJi3gYs5" resolve="ap" />
                              </node>
                              <node concept="2OwXpG" id="2ieGJi3heT5" role="2OqNvi">
                                <ref role="2Oxat5" node="yC2uzckjU9" resolve="id" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="2ieGJi3gYs9" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="2ieGJi3gYsk" role="2Ghqu4">
                        <ref role="3uigEE" node="3gm2YTwElRb" resolve="AspectPref" />
                      </node>
                      <node concept="17QB3L" id="2ieGJi3h3Wp" role="2Ghqu4" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="69vWBEqixtT" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream.toArray(java.util.function.IntFunction)" resolve="toArray" />
              <node concept="2ShNRf" id="69vWBEqiB3M" role="37wK5m">
                <node concept="YeOm9" id="69vWBEqiDXX" role="2ShVmc">
                  <node concept="1Y3b0j" id="69vWBEqiDY0" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="373rjd" value="true" />
                    <ref role="1Y3XeK" to="82uw:~IntFunction" resolve="IntFunction" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="69vWBEqiDY1" role="1B3o_S" />
                    <node concept="3clFb_" id="69vWBEqiDYe" role="jymVt">
                      <property role="TrG5h" value="apply" />
                      <node concept="3Tm1VV" id="69vWBEqiDYf" role="1B3o_S" />
                      <node concept="10Q1$e" id="69vWBEqiE1A" role="3clF45">
                        <node concept="17QB3L" id="69vWBEqiJiO" role="10Q1$1" />
                      </node>
                      <node concept="37vLTG" id="69vWBEqiDYi" role="3clF46">
                        <property role="TrG5h" value="length" />
                        <node concept="10Oyi0" id="69vWBEqiDYj" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="69vWBEqiDYk" role="3clF47">
                        <node concept="3clFbF" id="69vWBEqiLXS" role="3cqZAp">
                          <node concept="2ShNRf" id="69vWBEqiLXQ" role="3clFbG">
                            <node concept="3$_iS1" id="69vWBEqiQ$c" role="2ShVmc">
                              <node concept="3$GHV9" id="69vWBEqiQ$e" role="3$GQph">
                                <node concept="37vLTw" id="69vWBEqiVgO" role="3$I4v7">
                                  <ref role="3cqZAo" node="69vWBEqiDYi" resolve="length" />
                                </node>
                              </node>
                              <node concept="17QB3L" id="69vWBEqiQ5E" role="3$_nBY" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="69vWBEqiDYm" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="10Q1$e" id="69vWBEqiE1$" role="2Ghqu4">
                      <node concept="17QB3L" id="69vWBEqiGvh" role="10Q1$1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="69vWBEqgERF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3gm2YTuzFzJ">
    <property role="TrG5h" value="MoveToSuperOrSub" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Move To Generalisation" />
    <node concept="2S4$dB" id="3gm2YTu$f_n" role="1NuT2Z">
      <property role="TrG5h" value="moved" />
      <node concept="3Tm6S6" id="3gm2YTu$f_o" role="1B3o_S" />
      <node concept="1oajcY" id="3gm2YTu$f_p" role="1oa70y" />
      <node concept="3Tqbb2" id="3gm2YTu$f_q" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="3gm2YTu$fJa" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3gm2YTu$fJb" role="1oa70y" />
    </node>
    <node concept="2JriF1" id="3gm2YTu$9nj" role="2JrayB">
      <property role="TrG5h" value="source" />
      <node concept="15s5l7" id="3gm2YTu$9nk" role="lGtFl">
        <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: toString should be specified for parameters of non-primitive type&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590364(jetbrains.mps.lang.plugin.typesystem)/1227020617850]&quot;;" />
        <property role="huDt6" value="Error: toString should be specified for parameters of non-primitive type" />
      </node>
      <node concept="3Tm6S6" id="3gm2YTu$9nl" role="1B3o_S" />
      <node concept="3Tqbb2" id="3gm2YTu$9nm" role="1tU5fm">
        <ref role="ehGHo" to="7ggn:6HWpSUEuark" resolve="NodeRuleSet" />
      </node>
    </node>
    <node concept="2JriF1" id="3gm2YTu$9nu" role="2JrayB">
      <property role="TrG5h" value="target" />
      <node concept="15s5l7" id="3gm2YTu$fiX" role="lGtFl">
        <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: toString should be specified for parameters of non-primitive type&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590364(jetbrains.mps.lang.plugin.typesystem)/1227020617850]&quot;;" />
        <property role="huDt6" value="Error: toString should be specified for parameters of non-primitive type" />
      </node>
      <node concept="3Tm6S6" id="3gm2YTu$9nv" role="1B3o_S" />
      <node concept="3Tqbb2" id="3gm2YTu$fim" role="1tU5fm">
        <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
    </node>
    <node concept="tnohg" id="3gm2YTuzFzK" role="tncku">
      <node concept="3clFbS" id="3gm2YTuzFzL" role="2VODD2">
        <node concept="3clFbF" id="3gm2YTu_eI_" role="3cqZAp">
          <node concept="2OqwBi" id="3gm2YTu_eIA" role="3clFbG">
            <node concept="liA8E" id="3gm2YTu_eIB" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadInEDT(java.lang.Runnable)" resolve="runReadInEDT" />
              <node concept="2ShNRf" id="3gm2YTu_eIC" role="37wK5m">
                <node concept="YeOm9" id="3gm2YTu_eID" role="2ShVmc">
                  <node concept="1Y3b0j" id="3gm2YTu_eIE" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="3gm2YTu_eIF" role="1B3o_S" />
                    <node concept="3clFb_" id="3gm2YTu_eIG" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="3gm2YTu_eIH" role="1B3o_S" />
                      <node concept="3cqZAl" id="3gm2YTu_eII" role="3clF45" />
                      <node concept="3clFbS" id="3gm2YTu_eIJ" role="3clF47">
                        <node concept="3clFbJ" id="3gm2YTu_eIK" role="3cqZAp">
                          <node concept="3fqX7Q" id="3gm2YTu_eIL" role="3clFbw">
                            <node concept="2YIFZM" id="3gm2YTu_eIM" role="3fr31v">
                              <ref role="37wK5l" to="mhbf:~SNodeUtil.isAccessible(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository)" resolve="isAccessible" />
                              <ref role="1Pybhc" to="mhbf:~SNodeUtil" resolve="SNodeUtil" />
                              <node concept="2OqwBi" id="3gm2YTu_eIN" role="37wK5m">
                                <node concept="2WthIp" id="3gm2YTu_eIO" role="2Oq$k0">
                                  <ref role="32nkFo" node="3gm2YTuzFzJ" resolve="MoveToSuperOrSub" />
                                </node>
                                <node concept="3gHZIF" id="3gm2YTu_eIP" role="2OqNvi">
                                  <ref role="2WH_rO" node="3gm2YTu$f_n" resolve="moved" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="3gm2YTu_eIQ" role="37wK5m">
                                <node concept="2OqwBi" id="3gm2YTu_eIR" role="2Oq$k0">
                                  <node concept="2WthIp" id="3gm2YTu_eIS" role="2Oq$k0">
                                    <ref role="32nkFo" node="3gm2YTuzFzJ" resolve="MoveToSuperOrSub" />
                                  </node>
                                  <node concept="1DTwFV" id="3gm2YTu_eIT" role="2OqNvi">
                                    <ref role="2WH_rO" node="3gm2YTu$fJa" resolve="project" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="3gm2YTu_eIU" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="3gm2YTu_eIV" role="3clFbx">
                            <node concept="3cpWs6" id="3gm2YTu_eIW" role="3cqZAp" />
                          </node>
                        </node>
                        <node concept="1Xdei3" id="3gm2YTu_eIX" role="3cqZAp">
                          <ref role="1Xdeis" to="8a6h:3gm2YTu_a_Q" resolve="MoveToSuperOrSub" />
                          <node concept="2OqwBi" id="3gm2YTu_eIY" role="1Xdeiv">
                            <node concept="2WthIp" id="3gm2YTu_eIZ" role="2Oq$k0" />
                            <node concept="3gHZIF" id="3gm2YTu_eJ0" role="2OqNvi">
                              <ref role="2WH_rO" node="3gm2YTu$f_n" resolve="moved" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3gm2YTu_eJ1" role="1Xdeit">
                            <node concept="2WthIp" id="3gm2YTu_eJ2" role="2Oq$k0" />
                            <node concept="1DTwFV" id="3gm2YTu_eJ3" role="2OqNvi">
                              <ref role="2WH_rO" node="3gm2YTu$fJa" resolve="project" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3gm2YTu_qx_" role="1Xdeiu">
                            <node concept="2WthIp" id="3gm2YTu_qxA" role="2Oq$k0">
                              <ref role="32nkFo" node="3gm2YTuzFzJ" resolve="MoveToSuperOrSub" />
                            </node>
                            <node concept="2BZ7hE" id="3gm2YTu_qxB" role="2OqNvi">
                              <ref role="2WH_rO" node="3gm2YTu$9nu" resolve="target" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3gm2YTu_eJ4" role="1Xdeiu">
                            <node concept="2WthIp" id="3gm2YTu_eJ5" role="2Oq$k0">
                              <ref role="32nkFo" node="3gm2YTuzFzJ" resolve="MoveToSuperOrSub" />
                            </node>
                            <node concept="2BZ7hE" id="3gm2YTu_eJ6" role="2OqNvi">
                              <ref role="2WH_rO" node="3gm2YTu$9nj" resolve="source" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3gm2YTu_eJ7" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3gm2YTu_eJ8" role="2Oq$k0">
              <node concept="2OqwBi" id="3gm2YTu_eJ9" role="2Oq$k0">
                <node concept="2WthIp" id="3gm2YTu_eJa" role="2Oq$k0" />
                <node concept="1DTwFV" id="3gm2YTu_eJb" role="2OqNvi">
                  <ref role="2WH_rO" node="3gm2YTu$fJa" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="3gm2YTu_eJc" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="3gm2YTu_b9v" role="tmbBb">
      <node concept="3clFbS" id="3gm2YTu_b9w" role="2VODD2">
        <node concept="3cpWs8" id="3gm2YTu_b9x" role="3cqZAp">
          <node concept="3cpWsn" id="3gm2YTu_b9y" role="3cpWs9">
            <property role="TrG5h" value="applicable" />
            <node concept="10P_77" id="3gm2YTu_b9z" role="1tU5fm" />
            <node concept="3trCAK" id="3gm2YTu_b9$" role="33vP2m">
              <ref role="3trCAN" to="8a6h:3gm2YTu_a_Q" resolve="MoveToSuperOrSub" />
              <node concept="2OqwBi" id="3gm2YTu_b9_" role="3trCLF">
                <node concept="2WthIp" id="3gm2YTu_b9A" role="2Oq$k0" />
                <node concept="3gHZIF" id="3gm2YTu_b9B" role="2OqNvi">
                  <ref role="2WH_rO" node="3gm2YTu$f_n" resolve="moved" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3gm2YTu_b9C" role="3cqZAp">
          <node concept="1rXfSq" id="3gm2YTu_b9D" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setEnabledState(com.intellij.openapi.actionSystem.Presentation,boolean)" resolve="setEnabledState" />
            <node concept="2OqwBi" id="3gm2YTu_b9E" role="37wK5m">
              <node concept="tl45R" id="3gm2YTu_b9F" role="2Oq$k0" />
              <node concept="liA8E" id="3gm2YTu_b9G" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="37vLTw" id="3gm2YTu_b9H" role="37wK5m">
              <ref role="3cqZAo" node="3gm2YTu_b9y" resolve="applicable" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3gm2YTu_b9I" role="3cqZAp">
          <node concept="3clFbS" id="3gm2YTu_b9J" role="3clFbx">
            <node concept="3clFbF" id="3gm2YTu_b9K" role="3cqZAp">
              <node concept="2OqwBi" id="3gm2YTu_b9L" role="3clFbG">
                <node concept="2OqwBi" id="3gm2YTu_b9M" role="2Oq$k0">
                  <node concept="tl45R" id="3gm2YTu_b9N" role="2Oq$k0" />
                  <node concept="liA8E" id="3gm2YTu_b9O" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="3gm2YTu_b9P" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="3cpWs3" id="3gm2YTu_b9Q" role="37wK5m">
                    <node concept="2OqwBi" id="3gm2YTu_b9R" role="3uHU7w">
                      <node concept="2OqwBi" id="3gm2YTu_b9S" role="2Oq$k0">
                        <node concept="2WthIp" id="3gm2YTu_b9T" role="2Oq$k0" />
                        <node concept="2BZ7hE" id="3gm2YTu_b9U" role="2OqNvi">
                          <ref role="2WH_rO" node="3gm2YTu$9nu" resolve="target" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="3gm2YTu_b9V" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3gm2YTu_b9W" role="3uHU7B">
                      <property role="Xl_RC" value="Move To " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3gm2YTu_b9X" role="3clFbw">
            <ref role="3cqZAo" node="3gm2YTu_b9y" resolve="applicable" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3gm2YTwElRb">
    <property role="TrG5h" value="AspectPref" />
    <node concept="2tJIrI" id="3gm2YTwElSs" role="jymVt" />
    <node concept="312cEg" id="3gm2YTwEngZ" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm1VV" id="3gm2YTwEnNr" role="1B3o_S" />
      <node concept="17QB3L" id="3gm2YTwEngJ" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3gm2YTwEp50" role="jymVt">
      <property role="TrG5h" value="active" />
      <node concept="3Tm1VV" id="3gm2YTwEolk" role="1B3o_S" />
      <node concept="10P_77" id="3gm2YTwEp4K" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="yC2uzckjU9" role="jymVt">
      <property role="TrG5h" value="id" />
      <node concept="3Tm1VV" id="yC2uzckfHT" role="1B3o_S" />
      <node concept="17QB3L" id="yC2uzckjTT" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4vGS3ubHNU" role="jymVt">
      <property role="TrG5h" value="dependencies" />
      <node concept="3Tm1VV" id="4vGS3ubGVJ" role="1B3o_S" />
      <node concept="10Q1$e" id="4vGS3ubHNB" role="1tU5fm">
        <node concept="17QB3L" id="4vGS3ubHGC" role="10Q1$1" />
      </node>
    </node>
    <node concept="2tJIrI" id="3_wkb9eHmc2" role="jymVt" />
    <node concept="3clFb_" id="3gm2YTwFYmJ" role="jymVt">
      <property role="TrG5h" value="setDefault" />
      <node concept="3clFbS" id="3gm2YTwFYmM" role="3clF47">
        <node concept="3clFbF" id="3gm2YTwFY$W" role="3cqZAp">
          <node concept="37vLTI" id="3gm2YTwFZ2C" role="3clFbG">
            <node concept="3clFbT" id="3gm2YTwFZkG" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="3gm2YTwFY$V" role="37vLTJ">
              <ref role="3cqZAo" node="3gm2YTwEp50" resolve="active" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3gm2YTwFXB0" role="1B3o_S" />
      <node concept="3cqZAl" id="3gm2YTwFYmv" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4vGS3uVbgF" role="jymVt" />
    <node concept="3clFb_" id="4vGS3uVdA2" role="jymVt">
      <property role="TrG5h" value="getDependencies" />
      <node concept="3clFbS" id="4vGS3uVdA5" role="3clF47">
        <node concept="3clFbF" id="4vGS3uVe5y" role="3cqZAp">
          <node concept="3K4zz7" id="4vGS3uVf_e" role="3clFbG">
            <node concept="2YIFZM" id="4vGS3uVgly" role="3K4E3e">
              <ref role="37wK5l" to="zrbp:~List.of(java.lang.Object...)" resolve="of" />
              <ref role="1Pybhc" to="zrbp:~List" resolve="List" />
              <node concept="17QB3L" id="4vGS3uVqe9" role="3PaCim" />
            </node>
            <node concept="2YIFZM" id="4vGS3uVhyf" role="3K4GZi">
              <ref role="37wK5l" to="zrbp:~List.of(java.lang.Object...)" resolve="of" />
              <ref role="1Pybhc" to="zrbp:~List" resolve="List" />
              <node concept="37vLTw" id="4vGS3uViFd" role="37wK5m">
                <ref role="3cqZAo" node="4vGS3ubHNU" resolve="dependencies" />
              </node>
            </node>
            <node concept="3clFbC" id="4vGS3uVeo9" role="3K4Cdx">
              <node concept="10Nm6u" id="4vGS3uVfkj" role="3uHU7w" />
              <node concept="37vLTw" id="4vGS3uVe5x" role="3uHU7B">
                <ref role="3cqZAo" node="4vGS3ubHNU" resolve="dependencies" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4vGS3uVc4S" role="1B3o_S" />
      <node concept="3uibUv" id="4vGS3uVcyo" role="3clF45">
        <ref role="3uigEE" to="zrbp:~List" resolve="List" />
        <node concept="17QB3L" id="4vGS3uVd_Y" role="11_B2D" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3gm2YTwElRc" role="1B3o_S" />
    <node concept="3uibUv" id="3gm2YTwElSb" role="EKbjA">
      <ref role="3uigEE" to="wyt6:~Cloneable" resolve="Cloneable" />
    </node>
  </node>
  <node concept="312cEu" id="4f_r0qDun_n">
    <property role="TrG5h" value="SharingPrefs" />
    <node concept="2tJIrI" id="4f_r0qDv611" role="jymVt" />
    <node concept="312cEg" id="4f_r0qDv6cO" role="jymVt">
      <property role="TrG5h" value="sharedModels" />
      <node concept="3Tm1VV" id="4f_r0qDv6cP" role="1B3o_S" />
      <node concept="10Q1$e" id="4f_r0qDv6cQ" role="1tU5fm">
        <node concept="17QB3L" id="4f_r0qDv7ps" role="10Q1$1" />
      </node>
    </node>
    <node concept="2tJIrI" id="4f_r0qDzxea" role="jymVt" />
    <node concept="2YIFZL" id="4f_r0qDuKfG" role="jymVt">
      <property role="TrG5h" value="getOrCreatePrefs" />
      <node concept="37vLTG" id="4f_r0qDuKfH" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4f_r0qDuKfI" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4f_r0qDuKfJ" role="1B3o_S" />
      <node concept="3uibUv" id="4f_r0qDuKfK" role="3clF45">
        <ref role="3uigEE" node="4f_r0qDun_n" resolve="SharingPrefs" />
      </node>
      <node concept="3clFbS" id="4f_r0qDuKfL" role="3clF47">
        <node concept="3cpWs8" id="4f_r0qDuKfM" role="3cqZAp">
          <node concept="3cpWsn" id="4f_r0qDuKfN" role="3cpWs9">
            <property role="TrG5h" value="p" />
            <node concept="34_ZPX" id="4f_r0qDuKfO" role="1tU5fm">
              <ref role="34A7Nh" node="4Y8BM43M7ZV" resolve="DclarePreferences" />
            </node>
            <node concept="2OqwBi" id="4f_r0qDuKfP" role="33vP2m">
              <node concept="37vLTw" id="4f_r0qDuKfQ" role="2Oq$k0">
                <ref role="3cqZAo" node="4f_r0qDuKfH" resolve="project" />
              </node>
              <node concept="LR4Ub" id="4f_r0qDuKfR" role="2OqNvi">
                <ref role="LR4Ua" node="4Y8BM43M7ZV" resolve="DclarePreferences" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4f_r0qDuKfS" role="3cqZAp">
          <node concept="3clFbS" id="4f_r0qDuKfT" role="3clFbx">
            <node concept="3cpWs8" id="4f_r0qDuKfU" role="3cqZAp">
              <node concept="3cpWsn" id="4f_r0qDuKfV" role="3cpWs9">
                <property role="TrG5h" value="prefs" />
                <node concept="3uibUv" id="4f_r0qDuKfW" role="1tU5fm">
                  <ref role="3uigEE" node="4f_r0qDun_n" resolve="SharingPrefs" />
                </node>
                <node concept="2OqwBi" id="4f_r0qDuKfX" role="33vP2m">
                  <node concept="37vLTw" id="4f_r0qDuKfY" role="2Oq$k0">
                    <ref role="3cqZAo" node="4f_r0qDuKfN" resolve="p" />
                  </node>
                  <node concept="34pFcN" id="4f_r0qDuKfZ" role="2OqNvi">
                    <ref role="2WH_rO" node="4f_r0qDu_m2" resolve="sharingPrefs" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4f_r0qDuKg0" role="3cqZAp">
              <node concept="3clFbS" id="4f_r0qDuKg1" role="3clFbx">
                <node concept="3clFbF" id="4f_r0qDuKg2" role="3cqZAp">
                  <node concept="37vLTI" id="4f_r0qDuKg3" role="3clFbG">
                    <node concept="37vLTw" id="4f_r0qDuKg4" role="37vLTJ">
                      <ref role="3cqZAo" node="4f_r0qDuKfV" resolve="prefs" />
                    </node>
                    <node concept="2ShNRf" id="4f_r0qDuKg5" role="37vLTx">
                      <node concept="HV5vD" id="4f_r0qDuKg6" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="HV5vE" node="4f_r0qDun_n" resolve="SharingPrefs" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4f_r0qDuKg7" role="3cqZAp">
                  <node concept="37vLTI" id="4f_r0qDuKg8" role="3clFbG">
                    <node concept="2OqwBi" id="4f_r0qDuKg9" role="37vLTJ">
                      <node concept="37vLTw" id="4f_r0qDuKga" role="2Oq$k0">
                        <ref role="3cqZAo" node="4f_r0qDuKfN" resolve="p" />
                      </node>
                      <node concept="34pFcN" id="4f_r0qDuKgb" role="2OqNvi">
                        <ref role="2WH_rO" node="4f_r0qDu_m2" resolve="sharingPrefs" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4f_r0qDuKgc" role="37vLTx">
                      <ref role="3cqZAo" node="4f_r0qDuKfV" resolve="prefs" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="4f_r0qDuKgd" role="3clFbw">
                <node concept="10Nm6u" id="4f_r0qDuKge" role="3uHU7w" />
                <node concept="37vLTw" id="4f_r0qDuKgf" role="3uHU7B">
                  <ref role="3cqZAo" node="4f_r0qDuKfV" resolve="prefs" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4f_r0qDuKgg" role="3cqZAp">
              <node concept="37vLTw" id="4f_r0qDuKgh" role="3cqZAk">
                <ref role="3cqZAo" node="4f_r0qDuKfV" resolve="prefs" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4f_r0qDuKgi" role="3clFbw">
            <node concept="10Nm6u" id="4f_r0qDuKgj" role="3uHU7w" />
            <node concept="37vLTw" id="4f_r0qDuKgk" role="3uHU7B">
              <ref role="3cqZAo" node="4f_r0qDuKfN" resolve="p" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4f_r0qDuKgl" role="3cqZAp">
          <node concept="10Nm6u" id="4f_r0qDuKgm" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4f_r0qDv7ri" role="jymVt" />
    <node concept="3clFb_" id="4f_r0qDvdZB" role="jymVt">
      <property role="TrG5h" value="getIdFromModel" />
      <node concept="37vLTG" id="4f_r0qDveau" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="4f_r0qDveQE" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4f_r0qDvdZE" role="3clF47">
        <node concept="3clFbF" id="4f_r0qDvf5R" role="3cqZAp">
          <node concept="2OqwBi" id="4f_r0qDvfm9" role="3clFbG">
            <node concept="2YIFZM" id="4f_r0qDvfbe" role="2Oq$k0">
              <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
            </node>
            <node concept="liA8E" id="4f_r0qDvfCt" role="2OqNvi">
              <ref role="37wK5l" to="dush:~PersistenceFacade.asString(org.jetbrains.mps.openapi.model.SModelReference)" resolve="asString" />
              <node concept="2OqwBi" id="4f_r0qDvhVK" role="37wK5m">
                <node concept="2JrnkZ" id="4f_r0qDvhKJ" role="2Oq$k0">
                  <node concept="37vLTw" id="4f_r0qDvgbH" role="2JrQYb">
                    <ref role="3cqZAo" node="4f_r0qDveau" resolve="model" />
                  </node>
                </node>
                <node concept="liA8E" id="4f_r0qDvihR" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4f_r0qDvdfz" role="1B3o_S" />
      <node concept="17QB3L" id="4f_r0qDvdZ9" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4f_r0qDviy5" role="jymVt" />
    <node concept="3clFb_" id="4f_r0qDviRE" role="jymVt">
      <property role="TrG5h" value="getModelFromId" />
      <node concept="37vLTG" id="4f_r0qDviRF" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="4f_r0qDvkcT" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4f_r0qDviRH" role="3clF47">
        <node concept="3clFbF" id="4f_r0qDvmor" role="3cqZAp">
          <node concept="2OqwBi" id="4f_r0qDvm$g" role="3clFbG">
            <node concept="2OqwBi" id="4f_r0qDviRJ" role="2Oq$k0">
              <node concept="2YIFZM" id="4f_r0qDviRK" role="2Oq$k0">
                <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="4f_r0qDviRL" role="2OqNvi">
                <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(java.lang.String)" resolve="createModelReference" />
                <node concept="37vLTw" id="4f_r0qDviRO" role="37wK5m">
                  <ref role="3cqZAo" node="4f_r0qDviRF" resolve="id" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4f_r0qDvmSD" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
              <node concept="10Nm6u" id="58x4jvpyONC" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4f_r0qDviRQ" role="1B3o_S" />
      <node concept="H_c77" id="4f_r0qDvmdt" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4f_r0qDwdnN" role="jymVt" />
    <node concept="3clFb_" id="4f_r0qDvaXA" role="jymVt">
      <property role="TrG5h" value="isShared" />
      <node concept="37vLTG" id="4f_r0qDvbR2" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="4f_r0qDvc2y" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4f_r0qDvaXD" role="3clF47">
        <node concept="3clFbF" id="4f_r0qDx6YV" role="3cqZAp">
          <node concept="2d3UOw" id="4f_r0qDx9rG" role="3clFbG">
            <node concept="3cmrfG" id="4f_r0qDxatf" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="1rXfSq" id="4f_r0qDx6YU" role="3uHU7B">
              <ref role="37wK5l" node="4f_r0qDwYSa" resolve="index" />
              <node concept="1rXfSq" id="4f_r0qDxE0L" role="37wK5m">
                <ref role="37wK5l" node="4f_r0qDvdZB" resolve="getIdFromModel" />
                <node concept="37vLTw" id="4f_r0qDxE0M" role="37wK5m">
                  <ref role="3cqZAo" node="4f_r0qDvbR2" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4f_r0qDvafK" role="1B3o_S" />
      <node concept="10P_77" id="4f_r0qDvbNG" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4f_r0qDwY$Y" role="jymVt" />
    <node concept="3clFb_" id="4f_r0qDw1kP" role="jymVt">
      <property role="TrG5h" value="setShared" />
      <node concept="37vLTG" id="4f_r0qDw1kQ" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="4f_r0qDw1kR" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4f_r0qDw2lc" role="3clF46">
        <property role="TrG5h" value="shared" />
        <node concept="10P_77" id="4f_r0qDw2y$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="58x4jvpcPf$" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="58x4jvpcPf_" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="4f_r0qDw1kS" role="3clF47">
        <node concept="3cpWs8" id="4f_r0qDwYSn" role="3cqZAp">
          <node concept="3cpWsn" id="4f_r0qDwYSo" role="3cpWs9">
            <property role="TrG5h" value="id" />
            <node concept="17QB3L" id="4f_r0qDwYSp" role="1tU5fm" />
            <node concept="1rXfSq" id="4f_r0qDwYSq" role="33vP2m">
              <ref role="37wK5l" node="4f_r0qDvdZB" resolve="getIdFromModel" />
              <node concept="37vLTw" id="4f_r0qDwYSr" role="37wK5m">
                <ref role="3cqZAo" node="4f_r0qDw1kQ" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4f_r0qDwRPh" role="3cqZAp">
          <node concept="3cpWsn" id="4f_r0qDwRPk" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="4f_r0qDxbfZ" role="1tU5fm" />
            <node concept="1rXfSq" id="4f_r0qDwP6z" role="33vP2m">
              <ref role="37wK5l" node="4f_r0qDwYSa" resolve="index" />
              <node concept="37vLTw" id="4f_r0qDwUaH" role="37wK5m">
                <ref role="3cqZAo" node="4f_r0qDwYSo" resolve="id" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4f_r0qDwK3G" role="3cqZAp">
          <node concept="3y3z36" id="4f_r0qDwUZ7" role="3clFbw">
            <node concept="2d3UOw" id="4f_r0qDxh8_" role="3uHU7w">
              <node concept="3cmrfG" id="4f_r0qDxhOt" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="4f_r0qDwVve" role="3uHU7B">
                <ref role="3cqZAo" node="4f_r0qDwRPk" resolve="index" />
              </node>
            </node>
            <node concept="37vLTw" id="4f_r0qDwL0D" role="3uHU7B">
              <ref role="3cqZAo" node="4f_r0qDw2lc" resolve="shared" />
            </node>
          </node>
          <node concept="3clFbS" id="4f_r0qDwK3I" role="3clFbx">
            <node concept="3clFbJ" id="4f_r0qDwWMj" role="3cqZAp">
              <node concept="37vLTw" id="4f_r0qDwXvv" role="3clFbw">
                <ref role="3cqZAo" node="4f_r0qDw2lc" resolve="shared" />
              </node>
              <node concept="3clFbS" id="4f_r0qDwWMl" role="3clFbx">
                <node concept="3cpWs8" id="4f_r0qDxjrx" role="3cqZAp">
                  <node concept="3cpWsn" id="4f_r0qDxjr$" role="3cpWs9">
                    <property role="TrG5h" value="copy" />
                    <node concept="10Q1$e" id="4f_r0qDxk6w" role="1tU5fm">
                      <node concept="17QB3L" id="4f_r0qDxjrw" role="10Q1$1" />
                    </node>
                    <node concept="3K4zz7" id="4f_r0qDPqfC" role="33vP2m">
                      <node concept="2ShNRf" id="4f_r0qDPsU6" role="3K4GZi">
                        <node concept="3$_iS1" id="4f_r0qDPvO6" role="2ShVmc">
                          <node concept="3$GHV9" id="4f_r0qDPvO8" role="3$GQph">
                            <node concept="3cmrfG" id="4f_r0qDPxS9" role="3$I4v7">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                          <node concept="17QB3L" id="4f_r0qDPvBY" role="3$_nBY" />
                        </node>
                      </node>
                      <node concept="3y3z36" id="4f_r0qDPmJl" role="3K4Cdx">
                        <node concept="10Nm6u" id="4f_r0qDPoRs" role="3uHU7w" />
                        <node concept="37vLTw" id="4f_r0qDPliD" role="3uHU7B">
                          <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="4f_r0qDxXUG" role="3K4E3e">
                        <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                        <ref role="37wK5l" to="33ny:~Arrays.copyOf(java.lang.Object[],int)" resolve="copyOf" />
                        <node concept="37vLTw" id="4f_r0qDxXUH" role="37wK5m">
                          <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
                        </node>
                        <node concept="3cpWs3" id="4f_r0qDxXUI" role="37wK5m">
                          <node concept="3cmrfG" id="4f_r0qDxXUJ" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="4f_r0qDxXUK" role="3uHU7B">
                            <node concept="37vLTw" id="4f_r0qDxXUL" role="2Oq$k0">
                              <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
                            </node>
                            <node concept="1Rwk04" id="4f_r0qDxXUM" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4f_r0qDxxy$" role="3cqZAp">
                  <node concept="37vLTI" id="4f_r0qDx_jS" role="3clFbG">
                    <node concept="37vLTw" id="4f_r0qDy1rK" role="37vLTx">
                      <ref role="3cqZAo" node="4f_r0qDwYSo" resolve="id" />
                    </node>
                    <node concept="AH0OO" id="4f_r0qDxzo0" role="37vLTJ">
                      <node concept="37vLTw" id="4f_r0qDxxyy" role="AHHXb">
                        <ref role="3cqZAo" node="4f_r0qDxjr$" resolve="copy" />
                      </node>
                      <node concept="3K4zz7" id="4f_r0qDPFPS" role="AHEQo">
                        <node concept="3cmrfG" id="4f_r0qDPI8r" role="3K4GZi">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3y3z36" id="4f_r0qDPB1t" role="3K4Cdx">
                          <node concept="10Nm6u" id="4f_r0qDPDPM" role="3uHU7w" />
                          <node concept="37vLTw" id="4f_r0qDP$Ox" role="3uHU7B">
                            <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4f_r0qDx$qA" role="3K4E3e">
                          <node concept="37vLTw" id="4f_r0qDx$qB" role="2Oq$k0">
                            <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
                          </node>
                          <node concept="1Rwk04" id="4f_r0qDx$qC" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4f_r0qDxTw8" role="3cqZAp">
                  <node concept="37vLTI" id="4f_r0qDxVa7" role="3clFbG">
                    <node concept="37vLTw" id="4f_r0qDxWoF" role="37vLTx">
                      <ref role="3cqZAo" node="4f_r0qDxjr$" resolve="copy" />
                    </node>
                    <node concept="37vLTw" id="4f_r0qDxTw6" role="37vLTJ">
                      <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="4f_r0qDwY2f" role="9aQIa">
                <node concept="3clFbS" id="4f_r0qDwY2g" role="9aQI4">
                  <node concept="3cpWs8" id="4f_r0qDy302" role="3cqZAp">
                    <node concept="3cpWsn" id="4f_r0qDy303" role="3cpWs9">
                      <property role="TrG5h" value="copy" />
                      <node concept="10Q1$e" id="4f_r0qDy304" role="1tU5fm">
                        <node concept="17QB3L" id="4f_r0qDy305" role="10Q1$1" />
                      </node>
                      <node concept="2ShNRf" id="4f_r0qDyVw$" role="33vP2m">
                        <node concept="3$_iS1" id="4f_r0qDz3wf" role="2ShVmc">
                          <node concept="3$GHV9" id="4f_r0qDz3wh" role="3$GQph">
                            <node concept="3cpWsd" id="4f_r0qDz8SN" role="3$I4v7">
                              <node concept="3cmrfG" id="4f_r0qDz93j" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2OqwBi" id="4f_r0qDz6A0" role="3uHU7B">
                                <node concept="37vLTw" id="4f_r0qDz6A1" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
                                </node>
                                <node concept="1Rwk04" id="4f_r0qDz6A2" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="17QB3L" id="4f_r0qDz3l9" role="3$_nBY" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4f_r0qDzbyG" role="3cqZAp">
                    <node concept="3clFbS" id="4f_r0qDzbyI" role="3clFbx">
                      <node concept="3clFbF" id="4f_r0qDzhEE" role="3cqZAp">
                        <node concept="2YIFZM" id="4f_r0qDzhEF" role="3clFbG">
                          <ref role="37wK5l" to="wyt6:~System.arraycopy(java.lang.Object,int,java.lang.Object,int,int)" resolve="arraycopy" />
                          <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                          <node concept="37vLTw" id="4f_r0qDzhEG" role="37wK5m">
                            <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
                          </node>
                          <node concept="3cmrfG" id="4f_r0qDzl8U" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="37vLTw" id="4f_r0qDzhEK" role="37wK5m">
                            <ref role="3cqZAo" node="4f_r0qDy303" resolve="copy" />
                          </node>
                          <node concept="3cmrfG" id="4f_r0qDzsmN" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="37vLTw" id="4f_r0qDzooW" role="37wK5m">
                            <ref role="3cqZAo" node="4f_r0qDwRPk" resolve="index" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eOSWO" id="4f_r0qDzfZS" role="3clFbw">
                      <node concept="3cmrfG" id="4f_r0qDzgao" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="4f_r0qDzdxt" role="3uHU7B">
                        <ref role="3cqZAo" node="4f_r0qDwRPk" resolve="index" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4f_r0qDypCj" role="3cqZAp">
                    <node concept="3clFbS" id="4f_r0qDypCl" role="3clFbx">
                      <node concept="3clFbF" id="4f_r0qDydda" role="3cqZAp">
                        <node concept="2YIFZM" id="4f_r0qDyeHT" role="3clFbG">
                          <ref role="37wK5l" to="wyt6:~System.arraycopy(java.lang.Object,int,java.lang.Object,int,int)" resolve="arraycopy" />
                          <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                          <node concept="37vLTw" id="4f_r0qDyiDr" role="37wK5m">
                            <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
                          </node>
                          <node concept="3cpWs3" id="4f_r0qDymF_" role="37wK5m">
                            <node concept="37vLTw" id="4f_r0qDykk5" role="3uHU7B">
                              <ref role="3cqZAo" node="4f_r0qDwRPk" resolve="index" />
                            </node>
                            <node concept="3cmrfG" id="4f_r0qDynws" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="4f_r0qDyEXf" role="37wK5m">
                            <ref role="3cqZAo" node="4f_r0qDy303" resolve="copy" />
                          </node>
                          <node concept="37vLTw" id="4f_r0qDyH4g" role="37wK5m">
                            <ref role="3cqZAo" node="4f_r0qDwRPk" resolve="index" />
                          </node>
                          <node concept="3cpWsd" id="4f_r0qDyNUE" role="37wK5m">
                            <node concept="37vLTw" id="4f_r0qDyOxN" role="3uHU7w">
                              <ref role="3cqZAo" node="4f_r0qDwRPk" resolve="index" />
                            </node>
                            <node concept="2OqwBi" id="4f_r0qDyKFW" role="3uHU7B">
                              <node concept="37vLTw" id="4f_r0qDyIMF" role="2Oq$k0">
                                <ref role="3cqZAo" node="4f_r0qDy303" resolve="copy" />
                              </node>
                              <node concept="1Rwk04" id="4f_r0qDyLzk" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eOVzh" id="4f_r0qDytP7" role="3clFbw">
                      <node concept="2OqwBi" id="4f_r0qDyx8J" role="3uHU7w">
                        <node concept="37vLTw" id="4f_r0qDywiJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="4f_r0qDy303" resolve="copy" />
                        </node>
                        <node concept="1Rwk04" id="4f_r0qDyyLi" role="2OqNvi" />
                      </node>
                      <node concept="37vLTw" id="4f_r0qDyrkH" role="3uHU7B">
                        <ref role="3cqZAo" node="4f_r0qDwRPk" resolve="index" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4f_r0qDy5kb" role="3cqZAp">
                    <node concept="37vLTI" id="4f_r0qDy5kc" role="3clFbG">
                      <node concept="37vLTw" id="4f_r0qDy5kd" role="37vLTx">
                        <ref role="3cqZAo" node="4f_r0qDy303" resolve="copy" />
                      </node>
                      <node concept="37vLTw" id="4f_r0qDy5ke" role="37vLTJ">
                        <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4_uTAhqh_9q" role="3cqZAp">
              <node concept="3cpWsn" id="4_uTAhqh_9r" role="3cpWs9">
                <property role="TrG5h" value="dclareMps" />
                <node concept="3uibUv" id="4_uTAhqh$LW" role="1tU5fm">
                  <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
                </node>
                <node concept="2OqwBi" id="58x4jvpd0oS" role="33vP2m">
                  <node concept="2YIFZM" id="58x4jvpcXnl" role="2Oq$k0">
                    <ref role="37wK5l" to="u4ym:3z4syYPRmGX" resolve="getEngine" />
                    <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
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
                                  <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                                  <ref role="37wK5l" to="u4ym:7cS5T_tZh5f" resolve="toDObject" />
                                  <node concept="37vLTw" id="4f_r0qDBnAj" role="37wK5m">
                                    <ref role="3cqZAo" node="4f_r0qDw1kQ" resolve="model" />
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
                                  <ref role="3cqZAo" node="4f_r0qDw2lc" resolve="shared" />
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
        </node>
      </node>
      <node concept="3Tm1VV" id="4f_r0qDw1kT" role="1B3o_S" />
      <node concept="3cqZAl" id="4f_r0qDw2eD" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4f_r0qDw1aK" role="jymVt" />
    <node concept="3clFb_" id="4f_r0qDwYSa" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="37vLTG" id="4f_r0qDwYSb" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="4f_r0qDxEVq" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4f_r0qDwYSd" role="3clF47">
        <node concept="3clFbJ" id="4f_r0qDwYSe" role="3cqZAp">
          <node concept="3clFbS" id="4f_r0qDwYSf" role="3clFbx">
            <node concept="3cpWs6" id="4f_r0qDwYSg" role="3cqZAp">
              <node concept="3cmrfG" id="4f_r0qDx22s" role="3cqZAk">
                <property role="3cmrfH" value="-1" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4f_r0qDwYSi" role="3clFbw">
            <node concept="10Nm6u" id="4f_r0qDwYSm" role="3uHU7w" />
            <node concept="37vLTw" id="4f_r0qDxoD6" role="3uHU7B">
              <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="4f_r0qDwYSs" role="3cqZAp">
          <node concept="3cpWsn" id="4f_r0qDwYSt" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="4f_r0qDwYSu" role="1tU5fm" />
            <node concept="3cmrfG" id="4f_r0qDwYSv" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="4f_r0qDwYSw" role="2LFqv$">
            <node concept="3clFbJ" id="4f_r0qDwYSx" role="3cqZAp">
              <node concept="17R0WA" id="4f_r0qDwYSy" role="3clFbw">
                <node concept="37vLTw" id="4f_r0qDwYSz" role="3uHU7w">
                  <ref role="3cqZAo" node="4f_r0qDwYSb" resolve="id" />
                </node>
                <node concept="AH0OO" id="4f_r0qDwYS$" role="3uHU7B">
                  <node concept="37vLTw" id="4f_r0qDwYS_" role="AHEQo">
                    <ref role="3cqZAo" node="4f_r0qDwYSt" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="4f_r0qDxpSf" role="AHHXb">
                    <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4f_r0qDwYSD" role="3clFbx">
                <node concept="3cpWs6" id="4f_r0qDwYSE" role="3cqZAp">
                  <node concept="37vLTw" id="4f_r0qDx3aw" role="3cqZAk">
                    <ref role="3cqZAo" node="4f_r0qDwYSt" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="4f_r0qDwYSG" role="1Dwp0S">
            <node concept="37vLTw" id="4f_r0qDwYSH" role="3uHU7B">
              <ref role="3cqZAo" node="4f_r0qDwYSt" resolve="i" />
            </node>
            <node concept="2OqwBi" id="4f_r0qDwYSI" role="3uHU7w">
              <node concept="1Rwk04" id="4f_r0qDwYSM" role="2OqNvi" />
              <node concept="37vLTw" id="4f_r0qDxq8f" role="2Oq$k0">
                <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="4f_r0qDwYSN" role="1Dwrff">
            <node concept="37vLTw" id="4f_r0qDwYSO" role="2$L3a6">
              <ref role="3cqZAo" node="4f_r0qDwYSt" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4f_r0qDwYSP" role="3cqZAp">
          <node concept="3cmrfG" id="4f_r0qDx4i$" role="3cqZAk">
            <property role="3cmrfH" value="-1" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4f_r0qDxPjL" role="1B3o_S" />
      <node concept="10Oyi0" id="4f_r0qDx0cj" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4f_r0qDvchk" role="jymVt" />
    <node concept="3clFb_" id="4f_r0qDzC07" role="jymVt">
      <property role="TrG5h" value="initSharedInDClare" />
      <node concept="37vLTG" id="4f_r0qDCI6t" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4f_r0qDCI6u" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="4f_r0qDzC0a" role="3clF47">
        <node concept="3clFbJ" id="58x4jvpyu6d" role="3cqZAp">
          <node concept="3clFbS" id="58x4jvpyu6e" role="3clFbx">
            <node concept="3cpWs6" id="58x4jvpyu6f" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="58x4jvpyu6h" role="3clFbw">
            <node concept="10Nm6u" id="58x4jvpyu6i" role="3uHU7w" />
            <node concept="37vLTw" id="58x4jvpyu6j" role="3uHU7B">
              <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="58x4jvpda7z" role="3cqZAp">
          <node concept="3cpWsn" id="58x4jvpda7A" role="3cpWs9">
            <property role="TrG5h" value="dclareMps" />
            <node concept="3uibUv" id="58x4jvpda7B" role="1tU5fm">
              <ref role="3uigEE" to="t4tl:~DClareMPS" resolve="DClareMPS" />
            </node>
            <node concept="2OqwBi" id="58x4jvpda7C" role="33vP2m">
              <node concept="2YIFZM" id="58x4jvpda7D" role="2Oq$k0">
                <ref role="37wK5l" to="u4ym:3z4syYPRmGX" resolve="getEngine" />
                <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                <node concept="37vLTw" id="58x4jvpda7E" role="37wK5m">
                  <ref role="3cqZAo" node="4f_r0qDCI6t" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="58x4jvpda7F" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.getDClareMPS()" resolve="getDClareMPS" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5xDj40qqDiT" role="3cqZAp">
          <node concept="2OqwBi" id="5xDj40qqFS2" role="3clFbG">
            <node concept="37vLTw" id="5xDj40qqDiR" role="2Oq$k0">
              <ref role="3cqZAo" node="58x4jvpda7A" resolve="dclareMps" />
            </node>
            <node concept="liA8E" id="5xDj40qqIhn" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DClareMPS.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
              <node concept="1bVj0M" id="5xDj40qqLno" role="37wK5m">
                <node concept="3clFbS" id="5xDj40qqLnp" role="1bW5cS">
                  <node concept="3clFbF" id="4f_r0qD$mhg" role="3cqZAp">
                    <node concept="2OqwBi" id="4f_r0qD$mhi" role="3clFbG">
                      <node concept="37vLTw" id="4f_r0qD$mhj" role="2Oq$k0">
                        <ref role="3cqZAo" node="58x4jvpda7A" resolve="dclareMps" />
                      </node>
                      <node concept="liA8E" id="4f_r0qD$mhk" role="2OqNvi">
                        <ref role="37wK5l" to="t4tl:~DClareMPS.handleMPSChange(java.lang.Runnable)" resolve="handleMPSChange" />
                        <node concept="1bVj0M" id="4f_r0qD$mhl" role="37wK5m">
                          <node concept="3clFbS" id="4f_r0qD$mhm" role="1bW5cS">
                            <node concept="1Dw8fO" id="4f_r0qD_mlZ" role="3cqZAp">
                              <node concept="3cpWsn" id="4f_r0qD_mm0" role="1Duv9x">
                                <property role="TrG5h" value="i" />
                                <node concept="10Oyi0" id="4f_r0qD_mm1" role="1tU5fm" />
                                <node concept="3cmrfG" id="4f_r0qD_mm2" role="33vP2m">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="4f_r0qD_mm3" role="2LFqv$">
                                <node concept="3cpWs8" id="4f_r0qD_mm4" role="3cqZAp">
                                  <node concept="3cpWsn" id="4f_r0qD_mm5" role="3cpWs9">
                                    <property role="TrG5h" value="m" />
                                    <node concept="H_c77" id="4f_r0qD_mm6" role="1tU5fm" />
                                    <node concept="1rXfSq" id="4f_r0qD_mm7" role="33vP2m">
                                      <ref role="37wK5l" node="4f_r0qDviRE" resolve="getModelFromId" />
                                      <node concept="AH0OO" id="4f_r0qD_mm8" role="37wK5m">
                                        <node concept="37vLTw" id="4f_r0qD_mm9" role="AHEQo">
                                          <ref role="3cqZAo" node="4f_r0qD_mm0" resolve="i" />
                                        </node>
                                        <node concept="37vLTw" id="4f_r0qD_mma" role="AHHXb">
                                          <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="4f_r0qD_rAG" role="3cqZAp">
                                  <node concept="3clFbS" id="4f_r0qD_rAI" role="3clFbx">
                                    <node concept="3cpWs8" id="4f_r0qD$mhn" role="3cqZAp">
                                      <node concept="3cpWsn" id="4f_r0qD$mho" role="3cpWs9">
                                        <property role="TrG5h" value="dModel" />
                                        <node concept="3uibUv" id="4f_r0qD$mhp" role="1tU5fm">
                                          <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                                        </node>
                                        <node concept="10QFUN" id="4f_r0qD$mhq" role="33vP2m">
                                          <node concept="3uibUv" id="4f_r0qD$mhr" role="10QFUM">
                                            <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                                          </node>
                                          <node concept="2YIFZM" id="4f_r0qD$mhs" role="10QFUP">
                                            <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                                            <ref role="37wK5l" to="u4ym:7cS5T_tZh5f" resolve="toDObject" />
                                            <node concept="37vLTw" id="4f_r0qD_NBo" role="37wK5m">
                                              <ref role="3cqZAo" node="4f_r0qD_mm5" resolve="m" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="4f_r0qD$mhw" role="3cqZAp">
                                      <node concept="2OqwBi" id="4f_r0qD$mhx" role="3clFbG">
                                        <node concept="37vLTw" id="4f_r0qD$mhy" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4f_r0qD$mho" resolve="dModel" />
                                        </node>
                                        <node concept="liA8E" id="4f_r0qD$mhz" role="2OqNvi">
                                          <ref role="37wK5l" to="t4tl:~DModel.shareModel(boolean)" resolve="shareModel" />
                                          <node concept="3clFbT" id="4f_r0qD_Rz5" role="37wK5m">
                                            <property role="3clFbU" value="true" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3y3z36" id="4f_r0qD_wgV" role="3clFbw">
                                    <node concept="10Nm6u" id="4f_r0qD_z8r" role="3uHU7w" />
                                    <node concept="37vLTw" id="4f_r0qD_tVh" role="3uHU7B">
                                      <ref role="3cqZAo" node="4f_r0qD_mm5" resolve="m" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3eOVzh" id="4f_r0qD_mmv" role="1Dwp0S">
                                <node concept="37vLTw" id="4f_r0qD_mmw" role="3uHU7B">
                                  <ref role="3cqZAo" node="4f_r0qD_mm0" resolve="i" />
                                </node>
                                <node concept="2OqwBi" id="4f_r0qD_mmx" role="3uHU7w">
                                  <node concept="1Rwk04" id="4f_r0qD_mmy" role="2OqNvi" />
                                  <node concept="37vLTw" id="4f_r0qD_mmz" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4f_r0qDv6cO" resolve="sharedModels" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3uNrnE" id="4f_r0qD_mm$" role="1Dwrff">
                                <node concept="37vLTw" id="4f_r0qD_mm_" role="2$L3a6">
                                  <ref role="3cqZAo" node="4f_r0qD_mm0" resolve="i" />
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
      <node concept="3Tm1VV" id="4f_r0qDzAdU" role="1B3o_S" />
      <node concept="3cqZAl" id="4f_r0qDzBX_" role="3clF45" />
      <node concept="2AHcQZ" id="58x4jvplZmd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4f_r0qDz_4t" role="jymVt" />
    <node concept="3Tm1VV" id="4f_r0qDun_o" role="1B3o_S" />
    <node concept="3uibUv" id="4f_r0qDunAP" role="EKbjA">
      <ref role="3uigEE" to="wyt6:~Cloneable" resolve="Cloneable" />
    </node>
    <node concept="3uibUv" id="3z4syYPQqcL" role="EKbjA">
      <ref role="3uigEE" to="u4ym:3z4syYPQlIm" resolve="ISharingPrefs" />
    </node>
  </node>
</model>

