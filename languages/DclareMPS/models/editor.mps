<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8068d09c-9151-4525-aa21-5fdda1e26e1b(DclareMPS.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="d4615e3b-d671-4ba9-af01-2b78369b0ba7" name="jetbrains.mps.lang.pattern" version="2" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tpd3" ref="r:00000000-0000-4000-0000-011c895902bb(jetbrains.mps.lang.sharedConcepts.editor)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" />
    <import index="tp2q" ref="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" />
    <import index="tp3p" ref="r:00000000-0000-4000-0000-011c89590349(jetbrains.mps.lang.quotation.editor)" />
    <import index="tp3r" ref="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" />
    <import index="us1s" ref="r:e7d7a1fa-fb58-4cf6-bc1d-e5ed722e0c61(DclareMPS.behavior)" />
    <import index="3ehz" ref="r:b3bd6869-3f20-419a-be47-753c4d00d5e8(DclareMPS.typesystem)" />
    <import index="u4ym" ref="r:1a96ceaa-2946-43e0-af3f-cd05d77ee6d1(DclareMPSRuntime.util)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="l36t" ref="r:87dca7c3-9c03-4bb2-90a6-6d5e60f0974a(jetbrains.mps.baseLanguage.checkedDots.editor)" />
    <import index="pxpg" ref="r:5a550369-d6d9-4c89-a89b-1bb748dc20b3(jetbrains.mps.baseLanguage.checkedDots.structure)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tp3y" ref="r:00000000-0000-4000-0000-011c89590342(jetbrains.mps.lang.pattern.editor)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
    <import index="tp2u" ref="r:00000000-0000-4000-0000-011c8959032a(jetbrains.mps.baseLanguage.collections.editor)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" implicit="true" />
    <import index="ii9q" ref="r:1dca5eee-6e62-48f8-9e94-dbbe31be2456(jetbrains.mps.lang.quotation.behavior)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1161622753914" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_operationContext" flags="nn" index="1Q79dO" />
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326896143883" name="jetbrains.mps.lang.editor.structure.CellKeyMap_FunctionParm_selectedNode" flags="nn" index="0GJ7k" />
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="5991739802479784074" name="jetbrains.mps.lang.editor.structure.MenuTypeNamed" flags="ng" index="22hDWg" />
      <concept id="5991739802479784073" name="jetbrains.mps.lang.editor.structure.MenuTypeDefault" flags="ng" index="22hDWj" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ng" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="2000375450116423800" name="jetbrains.mps.lang.editor.structure.SubstituteMenu" flags="ng" index="22mcaB" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="6516520003787916624" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Condition" flags="ig" index="27VH4U" />
      <concept id="7429591467341004871" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Group" flags="ng" index="aenpk">
        <child id="7429591467341004872" name="parts" index="aenpr" />
        <child id="7429591467341004877" name="condition" index="aenpu" />
      </concept>
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <property id="1160590307797" name="usesFolding" index="S$F3r" />
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
        <child id="6046489571270834038" name="foldedCellModel" index="3EmGlc" />
      </concept>
      <concept id="1196434649611" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_SimpleString" flags="ng" index="2h3Zct">
        <property id="1196434851095" name="text" index="2h4Kg1" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="6089045305654894366" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Default" flags="ng" index="2kknPJ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="784421273959492578" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_IncludeMenu" flags="ng" index="mvV$s">
        <child id="1873541086576603957" name="location" index="3vPi4" />
        <child id="784421273959492606" name="nodeFunction" index="mvV$0" />
        <child id="6718020819487784677" name="menuReference" index="A14EM" />
      </concept>
      <concept id="784421273959493166" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_TargetNode" flags="ig" index="mvVNg" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1177327570013" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Substitute" flags="in" index="ucgPf" />
      <concept id="8478191136883534237" name="jetbrains.mps.lang.editor.structure.IExtensibleSubstituteMenuPart" flags="ng" index="upBLQ">
        <child id="8478191136883534238" name="features" index="upBLP" />
      </concept>
      <concept id="1177335944525" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_SubstituteString" flags="in" index="uGdhv" />
      <concept id="4242538589859161874" name="jetbrains.mps.lang.editor.structure.ExplicitHintsSpecification" flags="ng" index="2w$q5c">
        <child id="4242538589859162459" name="hints" index="2w$qW5" />
      </concept>
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="7667276221847570194" name="jetbrains.mps.lang.editor.structure.ParametersInformationStyleClassItem" flags="ln" index="2$oqgb">
        <reference id="8863456892852949148" name="parametersInformation" index="Bvoe9" />
      </concept>
      <concept id="8371900013785948369" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Parameter" flags="ig" index="2$S_p_" />
      <concept id="6718020819487620876" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Default" flags="ng" index="A1WHr" />
      <concept id="6718020819487620873" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Named" flags="ng" index="A1WHu">
        <reference id="6718020819487620874" name="menu" index="A1WHt" />
      </concept>
      <concept id="5944657839000868711" name="jetbrains.mps.lang.editor.structure.ConceptEditorContextHints" flags="ig" index="2ABfQD">
        <child id="5944657839000877563" name="hints" index="2ABdcP" />
      </concept>
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
      <concept id="5944657839003601246" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclaration" flags="ig" index="2BsEeg">
        <property id="168363875802087287" name="showInUI" index="2gpH_U" />
        <property id="5944657839012629576" name="presentation" index="2BUmq6" />
      </concept>
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="308059530142752797" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Parameterized" flags="ng" index="2F$Pav">
        <child id="8371900013785948359" name="part" index="2$S_pN" />
        <child id="8371900013785948365" name="parameterQuery" index="2$S_pT" />
      </concept>
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="6202297022026447496" name="canExecuteFunction" index="2jiSrf" />
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1136916919141" name="jetbrains.mps.lang.editor.structure.CellKeyMapItem" flags="lg" index="2PxR9H">
        <child id="1136916998332" name="keystroke" index="2PyaAO" />
        <child id="1136920925604" name="executeFunction" index="2PL9iG" />
      </concept>
      <concept id="1136916976737" name="jetbrains.mps.lang.editor.structure.CellKeyMapKeystroke" flags="ng" index="2Py5lD">
        <property id="1136923970223" name="modifiers" index="2PWKIB" />
        <property id="1136923970224" name="keycode" index="2PWKIS" />
      </concept>
      <concept id="1136917288805" name="jetbrains.mps.lang.editor.structure.CellKeyMap_ExecuteFunction" flags="in" index="2PzhpH" />
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW">
        <child id="7033942394258392116" name="overridenEditorComponent" index="1PM95z" />
        <child id="7348800710862477686" name="contextHints" index="3XTboT" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="1149850725784" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell" flags="ng" index="2SsqMj" />
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
        <child id="1220975211821" name="query" index="17MNgL" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186404574412" name="jetbrains.mps.lang.editor.structure.BackgroundColorStyleClassItem" flags="ln" index="Veino" />
      <concept id="1186413799158" name="jetbrains.mps.lang.editor.structure.BracketColorStyleClassItem" flags="ln" index="VLuvy" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
        <child id="1223387335081" name="query" index="3n$kyP" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414949600" name="jetbrains.mps.lang.editor.structure.AutoDeletableStyleClassItem" flags="ln" index="VPRnO" />
      <concept id="1186414976055" name="jetbrains.mps.lang.editor.structure.DrawBorderStyleClassItem" flags="ln" index="VPXOz" />
      <concept id="1630016958697718209" name="jetbrains.mps.lang.editor.structure.IMenuReference_Default" flags="ng" index="2Z_bC8">
        <reference id="1630016958698373342" name="concept" index="2ZyFGn" />
      </concept>
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ng" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
        <child id="5991739802479788259" name="type" index="22hAXT" />
      </concept>
      <concept id="1630016958697286851" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_parameterObject" flags="ng" index="2ZBlsa" />
      <concept id="1630016958697057551" name="jetbrains.mps.lang.editor.structure.IMenuPartParameterized" flags="ng" index="2ZBHr6">
        <child id="1630016958697057552" name="parameterType" index="2ZBHrp" />
      </concept>
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1216560327200" name="jetbrains.mps.lang.editor.structure.PositionChildrenStyleClassItem" flags="ln" index="10DmGV">
        <property id="1216560518566" name="position" index="10E5iX" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1081293058843" name="jetbrains.mps.lang.editor.structure.CellKeyMapDeclaration" flags="ig" index="325Ffw">
        <reference id="1139445935125" name="applicableConcept" index="1chiOs" />
        <child id="1136930944870" name="item" index="2QnnpI" />
      </concept>
      <concept id="1240253180846" name="jetbrains.mps.lang.editor.structure.IndentLayoutNoWrapClassItem" flags="ln" index="34QqEe" />
      <concept id="1233823429331" name="jetbrains.mps.lang.editor.structure.HorizontalGapStyleClassItem" flags="ln" index="15ARfc" />
      <concept id="8998492695583125082" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_MatchingText" flags="ng" index="16NfWO">
        <child id="8998492695583129244" name="query" index="16NeZM" />
      </concept>
      <concept id="8998492695583129971" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_DescriptionText" flags="ng" index="16NL0t">
        <child id="8998492695583129972" name="query" index="16NL0q" />
      </concept>
      <concept id="1220974635399" name="jetbrains.mps.lang.editor.structure.QueryFunction_FontStyle" flags="in" index="17KAyr" />
      <concept id="1838685759388685703" name="jetbrains.mps.lang.editor.structure.TransformationFeature_DescriptionText" flags="ng" index="3cqGtN">
        <child id="1838685759388685704" name="query" index="3cqGtW" />
      </concept>
      <concept id="1838685759388690401" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_DescriptionText" flags="ig" index="3cqJkl" />
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="7342352913006985500" name="jetbrains.mps.lang.editor.structure.TransformationLocation_Completion" flags="ng" index="3eGOoe" />
      <concept id="7342352913006985483" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Action" flags="ng" index="3eGOop">
        <child id="8612453216082699922" name="substituteHandler" index="3aKz83" />
      </concept>
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1225456267680" name="jetbrains.mps.lang.editor.structure.RGBColor" flags="ng" index="1iSF2X">
        <property id="1225456424731" name="value" index="1iTho6" />
      </concept>
      <concept id="7291101478617127464" name="jetbrains.mps.lang.editor.structure.IExtensibleTransformationMenuPart" flags="ng" index="1joUw2">
        <child id="8954657570916349207" name="features" index="2jZA2a" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1223386653097" name="jetbrains.mps.lang.editor.structure.StrikeOutStyleSheet" flags="ln" index="3nxI2P" />
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="3308396621974588243" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Contribution" flags="ng" index="3p309x">
        <child id="7173407872095451092" name="menuReference" index="1IG6uw" />
      </concept>
      <concept id="7580468736840446506" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_model" flags="nn" index="1rpKSd" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1219226236603" name="jetbrains.mps.lang.editor.structure.DrawBracketsStyleClassItem" flags="ln" index="3vyZuw" />
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
      <concept id="1180615838666" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyPostfixHints" flags="ng" index="3yc0Fo">
        <child id="1180615838667" name="postfixesFunction" index="3yc0Fp" />
      </concept>
      <concept id="1180616057533" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyPostfixHints_GetPostfixes" flags="in" index="3ycQeJ" />
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="ln" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="7667708318090725848" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentAnchorStyleClassItem" flags="ln" index="1Bsynf" />
      <concept id="7991336459489871999" name="jetbrains.mps.lang.editor.structure.IOutputConceptSubstituteMenuPart" flags="ng" index="3EoQpk">
        <reference id="7991336459489872009" name="outputConcept" index="3EoQqy" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <reference id="1081339532145" name="keyMap" index="34QXea" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1198512004906" name="focusPolicyApplicable" index="cStSX" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1139416841293" name="usesBraces" index="1ayjP4" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="4242538589862653897" name="addHints" index="2whIAn" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY">
        <property id="16410578721444372" name="customizeEmptyCell" index="2ru_X1" />
        <child id="16410578721629643" name="emptyCellModel" index="2ruayu" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="843003353410421268" name="jetbrains.mps.lang.editor.structure.IOutputConceptTransformationMenuPart" flags="ng" index="1FNN41">
        <child id="843003353410424960" name="outputConceptReference" index="1FNMel" />
      </concept>
      <concept id="843003353410421233" name="jetbrains.mps.lang.editor.structure.OptionalConceptReference" flags="ng" index="1FNNb$">
        <reference id="843003353410421234" name="concept" index="1FNNbB" />
      </concept>
      <concept id="4233361609415247331" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Parameter" flags="ig" index="1GhMSn" />
      <concept id="4233361609415240997" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Parameterized" flags="ng" index="1GhOrh">
        <child id="4233361609415240998" name="part" index="1GhOri" />
        <child id="4233361609415241000" name="parameterQuery" index="1GhOrs" />
      </concept>
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="5624877018226900666" name="jetbrains.mps.lang.editor.structure.TransformationMenu" flags="ng" index="3ICUPy" />
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ng" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="5624877018228264944" name="jetbrains.mps.lang.editor.structure.TransformationMenuContribution" flags="ng" index="3INDKC">
        <child id="6718020819489956031" name="menuReference" index="AmTjC" />
      </concept>
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
        <child id="3604384757217586546" name="selectionStart" index="3dN3m$" />
      </concept>
      <concept id="7033942394256351208" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclarationReference" flags="ng" index="1PE4EZ">
        <reference id="7033942394256351817" name="editorComponent" index="1PE7su" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="2722384699544370949" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Placeholder" flags="ng" index="3VyMlK" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
      <concept id="1166059625718" name="jetbrains.mps.lang.editor.structure.CellMenuPart_CellMenuComponent" flags="ng" index="1Y$tRT">
        <reference id="1166059677893" name="cellMenuComponent" index="1Y$EBa" />
      </concept>
      <concept id="1176809959526" name="jetbrains.mps.lang.editor.structure.QueryFunction_Color" flags="in" index="3ZlJ5R" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1179360813171" name="jetbrains.mps.baseLanguage.structure.HexIntegerLiteral" flags="nn" index="2nou5x">
        <property id="1179360856892" name="value" index="2noCCI" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872828" name="jetbrains.mps.lang.actions.structure.NF_Node_ReplaceWithNewOperation" flags="nn" index="2DeJnW" />
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
      <concept id="5480835971642155304" name="jetbrains.mps.lang.actions.structure.NF_Model_CreateNewNodeOperation" flags="nn" index="15TzpJ" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1966870290088668520" name="jetbrains.mps.lang.smodel.structure.Enum_MembersOperation" flags="ng" index="2ViDtN" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1240170042401" name="jetbrains.mps.lang.smodel.structure.SEnumerationMemberType" flags="in" index="2ZThk1">
        <reference id="1240170836027" name="enum" index="2ZWj4r" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1176109685393" name="jetbrains.mps.lang.smodel.structure.Model_RootsIncludingImportedOperation" flags="nn" index="3lApI0">
        <child id="6750920497477143611" name="conceptArgument" index="3MHPDn" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1139867745658" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithNewOperation" flags="nn" index="1_qnLN">
        <reference id="1139867957129" name="concept" index="1_rbq0" />
      </concept>
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
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
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="jVwYUSPLKV">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="7ggn:jVwYUSPLKM" resolve="ThisExpression" />
    <node concept="3EZMnI" id="idJwCzqmMD" role="2wV5jI">
      <node concept="l2Vlx" id="idJwCzqmMF" role="2iSdaV" />
      <node concept="3F0ifn" id="44eH7NDnXJa" role="3EZMnx">
        <property role="3F0ifm" value="this" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="29R9$zYWiG0">
    <property role="3GE5qa" value="models" />
    <ref role="1XX52x" to="7ggn:29R9$zYWiFR" resolve="OppositeLinkAccess" />
    <node concept="1iCGBv" id="g$eExpw" role="2wV5jI">
      <property role="1$x2rV" value="&lt;no link&gt;" />
      <ref role="1NtTu8" to="tp25:gzTtc_y" resolve="link" />
      <node concept="1sVBvm" id="g$eExpx" role="1sWHZn">
        <node concept="1HlG4h" id="29R9$zZOndp" role="2wV5jI">
          <node concept="1HfYo3" id="29R9$zZOndr" role="1HlULh">
            <node concept="3TQlhw" id="29R9$zZOndt" role="1Hhtcw">
              <node concept="3clFbS" id="29R9$zZOndv" role="2VODD2">
                <node concept="3clFbF" id="29R9$zZOnmf" role="3cqZAp">
                  <node concept="3cpWs3" id="29R9$zZRhvW" role="3clFbG">
                    <node concept="2OqwBi" id="29R9$zZOoX3" role="3uHU7w">
                      <node concept="pncrf" id="29R9$zZOoDq" role="2Oq$k0" />
                      <node concept="3TrcHB" id="29R9$zZOpxp" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="29R9$zZRjji" role="3uHU7B">
                      <node concept="Xl_RD" id="29R9$zZRjYj" role="3uHU7w">
                        <property role="Xl_RC" value="::" />
                      </node>
                      <node concept="3cpWs3" id="29R9$zZOose" role="3uHU7B">
                        <node concept="Xl_RD" id="29R9$zZOnme" role="3uHU7B">
                          <property role="Xl_RC" value="~" />
                        </node>
                        <node concept="2OqwBi" id="29R9$zZPWaP" role="3uHU7w">
                          <node concept="2OqwBi" id="29R9$zZPU$U" role="2Oq$k0">
                            <node concept="pncrf" id="29R9$zZPU9X" role="2Oq$k0" />
                            <node concept="2qgKlT" id="29R9$zZPVnm" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="29R9$zZPX33" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
  <node concept="PKFIW" id="hcE9nLY">
    <property role="TrG5h" value="Attribute_NameCellComponent" />
    <property role="3GE5qa" value="attributes" />
    <ref role="1XX52x" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="3F0A7n" id="hcE9Iym" role="2wV5jI">
      <property role="1$x2rV" value="&lt;no name&gt;" />
      <property role="1cu_pB" value="gtguBGO/firstEditableCell" />
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      <ref role="1k5W1q" to="tpen:hFD0yD_" resolve="VariableName" />
      <ref role="34QXea" to="tpen:gI$IpbbIKe" resolve="IgnoreRightSquareBracketInVariableName" />
      <node concept="OXEIz" id="hcE9Iyn" role="P5bDN">
        <node concept="3yc0Fo" id="hcE9Iyo" role="OY2wv">
          <node concept="3ycQeJ" id="hcE9Iyp" role="3yc0Fp">
            <node concept="3clFbS" id="hcE9Iyq" role="2VODD2">
              <node concept="3cpWs8" id="hcE9Iyr" role="3cqZAp">
                <node concept="3cpWsn" id="hcE9Iys" role="3cpWs9">
                  <property role="TrG5h" value="result" />
                  <node concept="_YKpA" id="hdd$PyM" role="1tU5fm">
                    <node concept="17QB3L" id="hP32Kgv" role="_ZDj9" />
                  </node>
                  <node concept="2ShNRf" id="2Bet8mWh58e" role="33vP2m">
                    <node concept="Tc6Ow" id="2Bet8mWh58f" role="2ShVmc">
                      <node concept="17QB3L" id="2Bet8mWh58g" role="HW$YZ" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="hcE9Iyx" role="3cqZAp">
                <node concept="3cpWsn" id="hcE9Iyy" role="3cpWs9">
                  <property role="TrG5h" value="nodeType" />
                  <node concept="3Tqbb2" id="hcE9Iyz" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                  </node>
                  <node concept="2OqwBi" id="hxiFsuh" role="33vP2m">
                    <node concept="3GMtW1" id="hcE9IyA" role="2Oq$k0" />
                    <node concept="3TrEf2" id="hcE9Iy_" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="hcE9IyB" role="3cqZAp">
                <node concept="3clFbS" id="hcE9IyC" role="3clFbx">
                  <node concept="3cpWs8" id="2Bet8mWh28i" role="3cqZAp">
                    <node concept="3cpWsn" id="2Bet8mWh28j" role="3cpWs9">
                      <property role="TrG5h" value="names" />
                      <node concept="_YKpA" id="2Bet8mWh28k" role="1tU5fm">
                        <node concept="17QB3L" id="2Bet8mWh28m" role="_ZDj9" />
                      </node>
                      <node concept="2OqwBi" id="2Bet8mWh28o" role="33vP2m">
                        <node concept="37vLTw" id="3GM_nagTs2R" role="2Oq$k0">
                          <ref role="3cqZAo" node="hcE9Iyy" resolve="nodeType" />
                        </node>
                        <node concept="2qgKlT" id="2Bet8mWh28q" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:hEwIzNo" resolve="getVariableSuffixes" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2Bet8mWh58w" role="3cqZAp">
                    <node concept="3cpWsn" id="2Bet8mWh58x" role="3cpWs9">
                      <property role="TrG5h" value="project" />
                      <node concept="3uibUv" id="4My7loyoQyg" role="1tU5fm">
                        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                      </node>
                      <node concept="2OqwBi" id="2Bet8mWh58_" role="33vP2m">
                        <node concept="1Q79dO" id="2Bet8mWh58$" role="2Oq$k0" />
                        <node concept="liA8E" id="2Bet8mWh58D" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~IOperationContext.getProject()" resolve="getProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1DcWWT" id="2Bet8mWh28s" role="3cqZAp">
                    <node concept="3clFbS" id="2Bet8mWh28t" role="2LFqv$">
                      <node concept="3cpWs8" id="2Bet8mWh58j" role="3cqZAp">
                        <node concept="3cpWsn" id="2Bet8mWh58k" role="3cpWs9">
                          <property role="TrG5h" value="prefix" />
                          <node concept="17QB3L" id="2Bet8mWh58l" role="1tU5fm" />
                          <node concept="2OqwBi" id="2Bet8mWh58o" role="33vP2m">
                            <node concept="3GMtW1" id="2Bet8mWh58n" role="2Oq$k0" />
                            <node concept="2qgKlT" id="2Bet8mWh58s" role="2OqNvi">
                              <ref role="37wK5l" to="tpek:2Bet8mWh2lw" resolve="getPrefix" />
                              <node concept="37vLTw" id="3GM_nagTyTm" role="37wK5m">
                                <ref role="3cqZAo" node="2Bet8mWh58x" resolve="project" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="2Bet8mWh58G" role="3cqZAp">
                        <node concept="3cpWsn" id="2Bet8mWh58H" role="3cpWs9">
                          <property role="TrG5h" value="suffix" />
                          <node concept="17QB3L" id="2Bet8mWh58I" role="1tU5fm" />
                          <node concept="2OqwBi" id="2Bet8mWh58L" role="33vP2m">
                            <node concept="3GMtW1" id="2Bet8mWh58K" role="2Oq$k0" />
                            <node concept="2qgKlT" id="2Bet8mWh58P" role="2OqNvi">
                              <ref role="37wK5l" to="tpek:2Bet8mWh3pg" resolve="getSuffix" />
                              <node concept="37vLTw" id="3GM_nagTuUB" role="37wK5m">
                                <ref role="3cqZAo" node="2Bet8mWh58x" resolve="project" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="2Bet8mWh5_I" role="3cqZAp">
                        <node concept="3cpWsn" id="2Bet8mWh5_J" role="3cpWs9">
                          <property role="TrG5h" value="mainName" />
                          <node concept="17QB3L" id="2Bet8mWh5_K" role="1tU5fm" />
                          <node concept="3K4zz7" id="2Bet8mWh5_M" role="33vP2m">
                            <node concept="2OqwBi" id="2Bet8mWh5_R" role="3K4Cdx">
                              <node concept="37vLTw" id="3GM_nagTvzL" role="2Oq$k0">
                                <ref role="3cqZAo" node="2Bet8mWh58k" resolve="prefix" />
                              </node>
                              <node concept="17RlXB" id="2Bet8mWh5_V" role="2OqNvi" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTsN$" role="3K4E3e">
                              <ref role="3cqZAo" node="2Bet8mWh28w" resolve="name" />
                            </node>
                            <node concept="2YIFZM" id="2Bet8mWh5_Z" role="3K4GZi">
                              <ref role="37wK5l" to="18ew:~NameUtil.capitalize(java.lang.String)" resolve="capitalize" />
                              <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                              <node concept="37vLTw" id="3GM_nagTtv7" role="37wK5m">
                                <ref role="3cqZAo" node="2Bet8mWh28w" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2Bet8mWh28F" role="3cqZAp">
                        <node concept="2OqwBi" id="2Bet8mWh28H" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagT_IN" role="2Oq$k0">
                            <ref role="3cqZAo" node="hcE9Iys" resolve="result" />
                          </node>
                          <node concept="TSZUe" id="2Bet8mWh28L" role="2OqNvi">
                            <node concept="3cpWs3" id="2Bet8mWh5A4" role="25WWJ7">
                              <node concept="37vLTw" id="3GM_nagTvie" role="3uHU7w">
                                <ref role="3cqZAo" node="2Bet8mWh58H" resolve="suffix" />
                              </node>
                              <node concept="3cpWs3" id="2Bet8mWh5_C" role="3uHU7B">
                                <node concept="37vLTw" id="3GM_nagTAmy" role="3uHU7B">
                                  <ref role="3cqZAo" node="2Bet8mWh58k" resolve="prefix" />
                                </node>
                                <node concept="37vLTw" id="3GM_nagTvMe" role="3uHU7w">
                                  <ref role="3cqZAo" node="2Bet8mWh5_J" resolve="mainName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagTr52" role="1DdaDG">
                      <ref role="3cqZAo" node="2Bet8mWh28j" resolve="names" />
                    </node>
                    <node concept="3cpWsn" id="2Bet8mWh28w" role="1Duv9x">
                      <property role="TrG5h" value="name" />
                      <node concept="17QB3L" id="2Bet8mWh28$" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="hcE9Izw" role="3clFbw">
                  <node concept="10Nm6u" id="hcE9Izx" role="3uHU7w" />
                  <node concept="37vLTw" id="3GM_nagTyOM" role="3uHU7B">
                    <ref role="3cqZAo" node="hcE9Iyy" resolve="nodeType" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="hcE9Izz" role="3cqZAp">
                <node concept="37vLTw" id="3GM_nagTBSq" role="3cqZAk">
                  <ref role="3cqZAo" node="hcE9Iys" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="pkWqt" id="32KZwowVqSO" role="cStSX">
        <node concept="3clFbS" id="32KZwowVqSP" role="2VODD2">
          <node concept="3cpWs8" id="_ZFuQseVHm" role="3cqZAp">
            <node concept="3cpWsn" id="_ZFuQseVHn" role="3cpWs9">
              <property role="TrG5h" value="condition" />
              <node concept="10P_77" id="_ZFuQseVHo" role="1tU5fm" />
              <node concept="17QLQc" id="2Gp2wadAJjP" role="33vP2m">
                <node concept="2OqwBi" id="_ZFuQseVHr" role="3uHU7B">
                  <node concept="2OqwBi" id="_ZFuQseVHs" role="2Oq$k0">
                    <node concept="pncrf" id="_ZFuQseVHt" role="2Oq$k0" />
                    <node concept="3TrEf2" id="_ZFuQseVHu" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                    </node>
                  </node>
                  <node concept="2yIwOk" id="39KWzn7YE8E" role="2OqNvi" />
                </node>
                <node concept="35c_gC" id="39KWzn7YEJ0" role="3uHU7w">
                  <ref role="35c_gD" to="tpee:fz3vP1H" resolve="Type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="_ZFuQseX5n" role="3cqZAp">
            <node concept="3clFbS" id="_ZFuQseX5o" role="3clFbx">
              <node concept="3cpWs6" id="_ZFuQsf4Ib" role="3cqZAp">
                <node concept="1Wc70l" id="_ZFuQsf4Ic" role="3cqZAk">
                  <node concept="3fqX7Q" id="_ZFuQsf4Id" role="3uHU7w">
                    <node concept="2OqwBi" id="_ZFuQsf4Ie" role="3fr31v">
                      <node concept="2OqwBi" id="_ZFuQsf4If" role="2Oq$k0">
                        <node concept="pncrf" id="_ZFuQsf4Ig" role="2Oq$k0" />
                        <node concept="3TrEf2" id="_ZFuQsf4Ih" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="_ZFuQsf4Ii" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:32KZwowVoMu" resolve="hasMissingParameters" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTBl3" role="3uHU7B">
                    <ref role="3cqZAo" node="_ZFuQseVHn" resolve="condition" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="_ZFuQseX5y" role="3clFbw">
              <node concept="2OqwBi" id="_ZFuQseX5s" role="2Oq$k0">
                <node concept="pncrf" id="_ZFuQseX5r" role="2Oq$k0" />
                <node concept="3TrEf2" id="_ZFuQseX5x" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                </node>
              </node>
              <node concept="1mIQ4w" id="_ZFuQseXqR" role="2OqNvi">
                <node concept="chp4Y" id="_ZFuQseXqT" role="cj9EA">
                  <ref role="cht4Q" to="tpee:fz3vP1H" resolve="Type" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="_ZFuQseXqU" role="9aQIa">
              <node concept="3clFbS" id="_ZFuQseXqV" role="9aQI4">
                <node concept="3cpWs6" id="_ZFuQsf4Ik" role="3cqZAp">
                  <node concept="37vLTw" id="3GM_nagTzFx" role="3cqZAk">
                    <ref role="3cqZAo" node="_ZFuQseVHn" resolve="condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A1WHu" id="1wEcoXjJMFd" role="3vIgyS">
        <ref role="A1WHt" node="1wEcoXjJMF1" resolve="Attribute_ApplySideTransforms" />
      </node>
      <node concept="Veino" id="2HLAWGSgyk3" role="3F10Kt">
        <node concept="3ZlJ5R" id="2HLAWGSgyk4" role="VblUZ">
          <node concept="3clFbS" id="2HLAWGSgyk5" role="2VODD2">
            <node concept="3clFbF" id="2HLAWGSgyk6" role="3cqZAp">
              <node concept="2YIFZM" id="2HLAWGT1oCG" role="3clFbG">
                <ref role="37wK5l" to="u4ym:2HLAWGSyups" resolve="ifColor" />
                <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                <node concept="1Q80Hx" id="2HLAWGT1oCH" role="37wK5m" />
                <node concept="2nou5x" id="2HLAWGT1oCI" role="37wK5m">
                  <property role="2noCCI" value="addda0" />
                </node>
                <node concept="10M0yZ" id="2HLAWGT686k" role="37wK5m">
                  <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
                  <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Vb9p2" id="2HLAWGTkr1y" role="3F10Kt">
        <property role="Vbekb" value="hL7GYu6/QUERY" />
        <node concept="17KAyr" id="2HLAWGTl0yI" role="17MNgL">
          <node concept="3clFbS" id="2HLAWGTl0yJ" role="2VODD2">
            <node concept="3clFbF" id="2HLAWGTl2sS" role="3cqZAp">
              <node concept="2YIFZM" id="2HLAWGTl2Df" role="3clFbG">
                <ref role="37wK5l" to="u4ym:2HLAWGTiCfM" resolve="ifStyle" />
                <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                <node concept="1Q80Hx" id="2HLAWGTl2Di" role="37wK5m" />
                <node concept="10M0yZ" id="2HLAWGTl3Dl" role="37wK5m">
                  <ref role="3cqZAo" to="exr9:~MPSFonts.BOLD" resolve="BOLD" />
                  <ref role="1PxDUh" to="exr9:~MPSFonts" resolve="MPSFonts" />
                </node>
                <node concept="10M0yZ" id="2HLAWGTl3D5" role="37wK5m">
                  <ref role="3cqZAo" to="exr9:~MPSFonts.PLAIN" resolve="PLAIN" />
                  <ref role="1PxDUh" to="exr9:~MPSFonts" resolve="MPSFonts" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="VechU" id="21fkvY6UU3j" role="3F10Kt">
        <property role="Vb096" value="g1_qVrt/darkMagenta" />
        <node concept="1iSF2X" id="21fkvY728_e" role="VblUZ">
          <property role="1iTho6" value="aa1111" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="30GBB6Y$wtU">
    <property role="3GE5qa" value="attributes.builder" />
    <ref role="1XX52x" to="7ggn:30GBB6Y$vTM" resolve="NodeBuilderInitAttribute" />
    <node concept="3EZMnI" id="30GBB6Y$wtW" role="2wV5jI">
      <node concept="1iCGBv" id="30GBB6Y$wtX" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hFD0yD_" resolve="VariableName" />
        <ref role="1NtTu8" to="7ggn:30GBB6Y$wtJ" resolve="attribute" />
        <node concept="1sVBvm" id="30GBB6Y$wtY" role="1sWHZn">
          <node concept="3F0A7n" id="30GBB6Y$wtZ" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" to="tp3y:2r4rhgaDxBT" resolve="Variable" />
            <node concept="VechU" id="21fkvY6XgNl" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/darkGreen" />
              <node concept="1iSF2X" id="21fkvY73NZv" role="VblUZ">
                <property role="1iTho6" value="aa1111" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="30GBB6Y$wu0" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
      </node>
      <node concept="3F1sOY" id="30GBB6Y$wu2" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:7$u7SPnnZ5x" resolve="initValue" />
      </node>
      <node concept="l2Vlx" id="30GBB6Y$wu3" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6HWpSUEvRz5">
    <ref role="1XX52x" to="7ggn:29R9$zZUovC" resolve="Rule" />
    <node concept="3EZMnI" id="5UYpxeVafB8" role="2wV5jI">
      <node concept="PMmxH" id="4kJ$pn7gXDb" role="3EZMnx">
        <ref role="PMmxG" node="4kJ$pn7gUF7" resolve="ContextType_Editor" />
      </node>
      <node concept="3F0ifn" id="60123R2BqRq" role="3EZMnx">
        <property role="3F0ifm" value="atomic" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="Veino" id="60123R2BqRr" role="3F10Kt">
          <node concept="3ZlJ5R" id="60123R2BqRs" role="VblUZ">
            <node concept="3clFbS" id="60123R2BqRt" role="2VODD2">
              <node concept="3clFbF" id="60123R2BqRu" role="3cqZAp">
                <node concept="2YIFZM" id="60123R2BqRv" role="3clFbG">
                  <ref role="37wK5l" to="u4ym:2HLAWGSyups" resolve="ifColor" />
                  <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                  <node concept="1Q80Hx" id="60123R2BqRw" role="37wK5m" />
                  <node concept="2nou5x" id="60123R2BqRx" role="37wK5m">
                    <property role="2noCCI" value="71F496" />
                  </node>
                  <node concept="10M0yZ" id="60123R2BqRy" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pkWqt" id="60123R2BqRz" role="pqm2j">
          <node concept="3clFbS" id="60123R2BqR$" role="2VODD2">
            <node concept="3clFbF" id="60123R2BqR_" role="3cqZAp">
              <node concept="2OqwBi" id="60123R2BqRA" role="3clFbG">
                <node concept="pncrf" id="60123R2BqRB" role="2Oq$k0" />
                <node concept="3TrcHB" id="60123R2BqRC" role="2OqNvi">
                  <ref role="3TsBF5" to="7ggn:2uXxmTffMZh" resolve="atomic" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4WFClUM1now" role="3EZMnx">
        <property role="3F0ifm" value="synthetic" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="Veino" id="2HLAWGSgtJO" role="3F10Kt">
          <node concept="3ZlJ5R" id="2HLAWGSgtKr" role="VblUZ">
            <node concept="3clFbS" id="2HLAWGSgtKs" role="2VODD2">
              <node concept="3clFbF" id="2HLAWGSgtOg" role="3cqZAp">
                <node concept="2YIFZM" id="2HLAWGT1pgY" role="3clFbG">
                  <ref role="37wK5l" to="u4ym:2HLAWGSyups" resolve="ifColor" />
                  <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                  <node concept="1Q80Hx" id="2HLAWGT1pgZ" role="37wK5m" />
                  <node concept="2nou5x" id="2HLAWGT1ph0" role="37wK5m">
                    <property role="2noCCI" value="71F496" />
                  </node>
                  <node concept="10M0yZ" id="2HLAWGT68ME" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pkWqt" id="4WFClUM1nox" role="pqm2j">
          <node concept="3clFbS" id="4WFClUM1noy" role="2VODD2">
            <node concept="3clFbF" id="4WFClUM1noz" role="3cqZAp">
              <node concept="2OqwBi" id="4WFClUM1no$" role="3clFbG">
                <node concept="pncrf" id="4WFClUM1no_" role="2Oq$k0" />
                <node concept="3TrcHB" id="4WFClUMmq6b" role="2OqNvi">
                  <ref role="3TsBF5" to="7ggn:4WFClUM1rSz" resolve="synthetic" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="u5SXqxnddj" role="3EZMnx">
        <property role="3F0ifm" value="deferred" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="pkWqt" id="u5SXqxnde3" role="pqm2j">
          <node concept="3clFbS" id="u5SXqxnde4" role="2VODD2">
            <node concept="3clFbF" id="u5SXqxndi4" role="3cqZAp">
              <node concept="2OqwBi" id="u5SXqxndmS" role="3clFbG">
                <node concept="pncrf" id="u5SXqxndi3" role="2Oq$k0" />
                <node concept="3TrcHB" id="u5SXqxndxQ" role="2OqNvi">
                  <ref role="3TsBF5" to="7ggn:u5SXqxk1i$" resolve="initialLowPriority" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Veino" id="4FbMPtU$D1$" role="3F10Kt">
          <node concept="3ZlJ5R" id="2HLAWGSgu8K" role="VblUZ">
            <node concept="3clFbS" id="2HLAWGSgu8L" role="2VODD2">
              <node concept="3clFbF" id="2HLAWGSguc_" role="3cqZAp">
                <node concept="2YIFZM" id="2HLAWGT1pqS" role="3clFbG">
                  <ref role="37wK5l" to="u4ym:2HLAWGSyups" resolve="ifColor" />
                  <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                  <node concept="1Q80Hx" id="2HLAWGT1pqT" role="37wK5m" />
                  <node concept="2nou5x" id="2HLAWGT1pqU" role="37wK5m">
                    <property role="2noCCI" value="71F496" />
                  </node>
                  <node concept="10M0yZ" id="2HLAWGT1pqV" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~Color.pink" resolve="pink" />
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6_R8J$2CjPg" role="3EZMnx">
        <property role="3F0ifm" value="rule" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="Veino" id="4FbMPtV43Of" role="3F10Kt">
          <node concept="3ZlJ5R" id="4FbMPtV43OA" role="VblUZ">
            <node concept="3clFbS" id="4FbMPtV43OB" role="2VODD2">
              <node concept="3clFbF" id="2HLAWGSdRWr" role="3cqZAp">
                <node concept="2YIFZM" id="2HLAWGT1oQ8" role="3clFbG">
                  <ref role="37wK5l" to="u4ym:2HLAWGSyups" resolve="ifColor" />
                  <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                  <node concept="1Q80Hx" id="2HLAWGT1oQ9" role="37wK5m" />
                  <node concept="2nou5x" id="2HLAWGT1oQa" role="37wK5m">
                    <property role="2noCCI" value="9BF8F4" />
                  </node>
                  <node concept="10M0yZ" id="2HLAWGT68l8" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VechU" id="6_R8J$2YdD$" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
      </node>
      <node concept="3F1sOY" id="5UYpxeVafBg" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:6HWpSUFcW9N" resolve="statement" />
        <node concept="ljvvj" id="6HWpSUFcXHF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="5UYpxeVafBa" role="2iSdaV" />
    </node>
    <node concept="1iCGBv" id="4Bl8LN1zo7Z" role="6VMZX">
      <ref role="1NtTu8" to="7ggn:4WFClUMuhCz" resolve="source" />
      <node concept="1sVBvm" id="4Bl8LN1zo81" role="1sWHZn">
        <node concept="3SHvHV" id="4Bl8LN1zq_B" role="2wV5jI" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="6HWpSUEvTAW">
    <property role="TrG5h" value="RuleSetMembersComponent" />
    <ref role="1XX52x" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
    <node concept="3F2HdR" id="3Z61ZaMckgw" role="2wV5jI">
      <ref role="1NtTu8" to="7ggn:6_R8J$2ChSl" resolve="members" />
      <node concept="3F0ifn" id="53WsQmnjCxk" role="2czzBI">
        <property role="3F0ifm" value="" />
        <node concept="VPxyj" id="53WsQmnjCy9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="10DmGV" id="3Z61ZaMckgx" role="3F10Kt">
        <property role="10E5iX" value="hGLCffT/indented" />
      </node>
      <node concept="lj46D" id="3Z61ZaMckgy" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="ljvvj" id="3Z61ZaMckgz" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="pj6Ft" id="3Z61ZaMckg$" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="l2Vlx" id="3Z61ZaMckg_" role="2czzBx" />
      <node concept="4$FPG" id="3Z61ZaMckgA" role="4_6I_">
        <node concept="3clFbS" id="3Z61ZaMckgB" role="2VODD2">
          <node concept="3clFbF" id="3Z61ZaMckgC" role="3cqZAp">
            <node concept="2ShNRf" id="3Z61ZaMckgD" role="3clFbG">
              <node concept="3zrR0B" id="3Z61ZaMckgE" role="2ShVmc">
                <node concept="3Tqbb2" id="3Z61ZaMckgF" role="3zrR0E">
                  <ref role="ehGHo" to="7ggn:6_R8J$2CjEx" resolve="PlaceholderRuleSetMember" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6HWpSUEvTB6">
    <property role="3GE5qa" value="models" />
    <ref role="1XX52x" to="7ggn:6HWpSUEuark" resolve="NodeRuleSet" />
    <node concept="3EZMnI" id="6HWpSUEw$TT" role="2wV5jI">
      <node concept="l2Vlx" id="6_R8J$2Fzhm" role="2iSdaV" />
      <node concept="3F0ifn" id="6HWpSUEvTBe" role="3EZMnx">
        <property role="3F0ifm" value="ruleset" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="VechU" id="6_R8J$2Ye1n" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
      </node>
      <node concept="1iCGBv" id="6HWpSUEvTEd" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:6HWpSUEuarY" resolve="concept" />
        <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
        <node concept="1sVBvm" id="6HWpSUEvTEf" role="1sWHZn">
          <node concept="3F0A7n" id="6HWpSUEvTEs" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
          </node>
        </node>
        <node concept="VPXOz" id="3N4RhEWSdse" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="55f2HNAp6SE" role="3EZMnx">
        <ref role="PMmxG" node="55f2HNAp6uS" resolve="AspectEditor" />
      </node>
      <node concept="3F0ifn" id="6HWpSUEw$Tq" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="i0I0pL0" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="53WsQmn1yBN" role="3n$kyP">
            <node concept="3clFbS" id="53WsQmn1yR$" role="2VODD2">
              <node concept="3clFbF" id="3XMkXuNI1t_" role="3cqZAp">
                <node concept="2OqwBi" id="3XMkXuNI9A8" role="3clFbG">
                  <node concept="2OqwBi" id="3XMkXuNI29k" role="2Oq$k0">
                    <node concept="pncrf" id="3XMkXuNI1tz" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6_R8J$2Fatl" role="2OqNvi">
                      <ref role="3TtcxE" to="7ggn:6_R8J$2ChSl" resolve="members" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="3XMkXuNIblZ" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11LMrY" id="53WsQmnsX7W" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="53WsQmnsZjC" role="3n$kyP">
            <node concept="3clFbS" id="53WsQmnsZjD" role="2VODD2">
              <node concept="3clFbF" id="3XMkXuNIefJ" role="3cqZAp">
                <node concept="2OqwBi" id="3XMkXuNIefK" role="3clFbG">
                  <node concept="2OqwBi" id="3XMkXuNIefL" role="2Oq$k0">
                    <node concept="pncrf" id="3XMkXuNIefM" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6_R8J$2FaUn" role="2OqNvi">
                      <ref role="3TtcxE" to="7ggn:6_R8J$2ChSl" resolve="members" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="3XMkXuNIefQ" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="6HWpSUEw$W2" role="3EZMnx">
        <ref role="PMmxG" node="6HWpSUEvTAW" resolve="RuleSetMembersComponent" />
      </node>
      <node concept="3F0ifn" id="6HWpSUEw$Uv" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="2w$q5c" id="4apidoKBFuv" role="2whIAn">
        <node concept="2aJ2om" id="4apidoKBFuw" role="2w$qW5">
          <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6HWpSUEvTBv">
    <property role="3GE5qa" value="models" />
    <ref role="1XX52x" to="7ggn:6HWpSUEu3U0" resolve="ModuleRuleSet" />
    <node concept="3EZMnI" id="6_R8J$2HZdM" role="2wV5jI">
      <node concept="l2Vlx" id="6_R8J$2HZdN" role="2iSdaV" />
      <node concept="3F0ifn" id="6_R8J$2HZdP" role="3EZMnx">
        <property role="3F0ifm" value="ruleset" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="VechU" id="6_R8J$2YdWQ" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
      </node>
      <node concept="3F0ifn" id="6_R8J$2HZdO" role="3EZMnx">
        <property role="3F0ifm" value="module" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="VPXOz" id="3N4RhEWSd51" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="55f2HNAp6LI" role="3EZMnx">
        <ref role="PMmxG" node="55f2HNAp6uS" resolve="AspectEditor" />
      </node>
      <node concept="3F0ifn" id="6_R8J$2HZdQ" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="6_R8J$2HZdR" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="6_R8J$2HZdS" role="3n$kyP">
            <node concept="3clFbS" id="6_R8J$2HZdT" role="2VODD2">
              <node concept="3clFbF" id="6_R8J$2HZdU" role="3cqZAp">
                <node concept="2OqwBi" id="6_R8J$2HZdV" role="3clFbG">
                  <node concept="2OqwBi" id="6_R8J$2HZdW" role="2Oq$k0">
                    <node concept="pncrf" id="6_R8J$2HZdX" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6_R8J$2HZdY" role="2OqNvi">
                      <ref role="3TtcxE" to="7ggn:6_R8J$2ChSl" resolve="members" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="6_R8J$2HZdZ" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11LMrY" id="6_R8J$2HZe0" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="6_R8J$2HZe1" role="3n$kyP">
            <node concept="3clFbS" id="6_R8J$2HZe2" role="2VODD2">
              <node concept="3clFbF" id="6_R8J$2HZe3" role="3cqZAp">
                <node concept="2OqwBi" id="6_R8J$2HZe4" role="3clFbG">
                  <node concept="2OqwBi" id="6_R8J$2HZe5" role="2Oq$k0">
                    <node concept="pncrf" id="6_R8J$2HZe6" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6_R8J$2HZe7" role="2OqNvi">
                      <ref role="3TtcxE" to="7ggn:6_R8J$2ChSl" resolve="members" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="6_R8J$2HZe8" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="6_R8J$2HZe9" role="3EZMnx">
        <ref role="PMmxG" node="6HWpSUEvTAW" resolve="RuleSetMembersComponent" />
      </node>
      <node concept="3F0ifn" id="6_R8J$2HZea" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="2w$q5c" id="4apidoKBFiv" role="2whIAn">
        <node concept="2aJ2om" id="4apidoKBFiw" role="2w$qW5">
          <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6HWpSUEvTBL">
    <property role="3GE5qa" value="models" />
    <ref role="1XX52x" to="7ggn:6HWpSUEu3T2" resolve="ModelRuleSet" />
    <node concept="3EZMnI" id="6HWpSUEw$Wd" role="2wV5jI">
      <node concept="l2Vlx" id="6_R8J$2HRXE" role="2iSdaV" />
      <node concept="3F0ifn" id="6HWpSUEw$Wi" role="3EZMnx">
        <property role="3F0ifm" value="ruleset" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="VechU" id="6_R8J$2YdOT" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
      </node>
      <node concept="3F0ifn" id="6HWpSUEw$Wh" role="3EZMnx">
        <property role="3F0ifm" value="model" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="VPXOz" id="7lZHjrqZ90m" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="55f2HNAp6Bj" role="3EZMnx">
        <ref role="PMmxG" node="55f2HNAp6uS" resolve="AspectEditor" />
      </node>
      <node concept="3F0ifn" id="6HWpSUEw$Wm" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="6_R8J$2HS67" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="6_R8J$2HS68" role="3n$kyP">
            <node concept="3clFbS" id="6_R8J$2HS69" role="2VODD2">
              <node concept="3clFbF" id="6_R8J$2HS6a" role="3cqZAp">
                <node concept="2OqwBi" id="6_R8J$2HS6b" role="3clFbG">
                  <node concept="2OqwBi" id="6_R8J$2HS6c" role="2Oq$k0">
                    <node concept="pncrf" id="6_R8J$2HS6d" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6_R8J$2HS6e" role="2OqNvi">
                      <ref role="3TtcxE" to="7ggn:6_R8J$2ChSl" resolve="members" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="6_R8J$2HS6f" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11LMrY" id="6_R8J$2HSki" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="6_R8J$2HSkj" role="3n$kyP">
            <node concept="3clFbS" id="6_R8J$2HSkk" role="2VODD2">
              <node concept="3clFbF" id="6_R8J$2HSkl" role="3cqZAp">
                <node concept="2OqwBi" id="6_R8J$2HSkm" role="3clFbG">
                  <node concept="2OqwBi" id="6_R8J$2HSkn" role="2Oq$k0">
                    <node concept="pncrf" id="6_R8J$2HSko" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6_R8J$2HSkp" role="2OqNvi">
                      <ref role="3TtcxE" to="7ggn:6_R8J$2ChSl" resolve="members" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="6_R8J$2HSkq" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="6HWpSUEw$Wn" role="3EZMnx">
        <ref role="PMmxG" node="6HWpSUEvTAW" resolve="RuleSetMembersComponent" />
      </node>
      <node concept="3F0ifn" id="6HWpSUEw$Wo" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="2w$q5c" id="4apidoKBFci" role="2whIAn">
        <node concept="2aJ2om" id="4apidoKBFcj" role="2w$qW5">
          <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6HWpSUEvTDx">
    <property role="3GE5qa" value="models" />
    <ref role="1XX52x" to="7ggn:6HWpSUEu3U3" resolve="RepositoryRuleSet" />
    <node concept="3EZMnI" id="6_R8J$2HZrv" role="2wV5jI">
      <node concept="l2Vlx" id="6_R8J$2HZrw" role="2iSdaV" />
      <node concept="3F0ifn" id="6_R8J$2HZry" role="3EZMnx">
        <property role="3F0ifm" value="ruleset" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="VechU" id="6_R8J$2Ye9k" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
      </node>
      <node concept="3F0ifn" id="6_R8J$2HZrx" role="3EZMnx">
        <property role="3F0ifm" value="repository" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="VPXOz" id="3N4RhEWSdJZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="55f2HNAp75u" role="3EZMnx">
        <ref role="PMmxG" node="55f2HNAp6uS" resolve="AspectEditor" />
      </node>
      <node concept="3F0ifn" id="6_R8J$2HZrz" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="6_R8J$2HZr$" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="6_R8J$2HZr_" role="3n$kyP">
            <node concept="3clFbS" id="6_R8J$2HZrA" role="2VODD2">
              <node concept="3clFbF" id="6_R8J$2HZrB" role="3cqZAp">
                <node concept="2OqwBi" id="6_R8J$2HZrC" role="3clFbG">
                  <node concept="2OqwBi" id="6_R8J$2HZrD" role="2Oq$k0">
                    <node concept="pncrf" id="6_R8J$2HZrE" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6_R8J$2HZrF" role="2OqNvi">
                      <ref role="3TtcxE" to="7ggn:6_R8J$2ChSl" resolve="members" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="6_R8J$2HZrG" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11LMrY" id="6_R8J$2HZrH" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="6_R8J$2HZrI" role="3n$kyP">
            <node concept="3clFbS" id="6_R8J$2HZrJ" role="2VODD2">
              <node concept="3clFbF" id="6_R8J$2HZrK" role="3cqZAp">
                <node concept="2OqwBi" id="6_R8J$2HZrL" role="3clFbG">
                  <node concept="2OqwBi" id="6_R8J$2HZrM" role="2Oq$k0">
                    <node concept="pncrf" id="6_R8J$2HZrN" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6_R8J$2HZrO" role="2OqNvi">
                      <ref role="3TtcxE" to="7ggn:6_R8J$2ChSl" resolve="members" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="6_R8J$2HZrP" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="6_R8J$2HZrQ" role="3EZMnx">
        <ref role="PMmxG" node="6HWpSUEvTAW" resolve="RuleSetMembersComponent" />
      </node>
      <node concept="3F0ifn" id="6_R8J$2HZrR" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="2w$q5c" id="4apidoKBF$G" role="2whIAn">
        <node concept="2aJ2om" id="4apidoKBF$H" role="2w$qW5">
          <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6HWpSUFcDUr">
    <property role="3GE5qa" value="attributes" />
    <ref role="1XX52x" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="3EZMnI" id="hiAXQQr" role="2wV5jI">
      <node concept="PMmxH" id="4kJ$pn7gWVS" role="3EZMnx">
        <ref role="PMmxG" node="4kJ$pn7gUF7" resolve="ContextType_Editor" />
      </node>
      <node concept="3F0ifn" id="6aMI9gKW1NG" role="3EZMnx">
        <property role="3F0ifm" value="synthetic" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="pkWqt" id="6aMI9gKW1NH" role="pqm2j">
          <node concept="3clFbS" id="6aMI9gKW1NI" role="2VODD2">
            <node concept="3clFbF" id="6aMI9gKW1NJ" role="3cqZAp">
              <node concept="2OqwBi" id="6aMI9gKW1NK" role="3clFbG">
                <node concept="pncrf" id="6aMI9gKW1NL" role="2Oq$k0" />
                <node concept="3TrcHB" id="6aMI9gKW1NM" role="2OqNvi">
                  <ref role="3TsBF5" to="7ggn:4WFClUM1rSz" resolve="synthetic" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Veino" id="6aMI9gKW1NN" role="3F10Kt">
          <node concept="3ZlJ5R" id="6aMI9gKW1NO" role="VblUZ">
            <node concept="3clFbS" id="6aMI9gKW1NP" role="2VODD2">
              <node concept="3clFbF" id="6aMI9gKW1NQ" role="3cqZAp">
                <node concept="2YIFZM" id="6aMI9gKW1NR" role="3clFbG">
                  <ref role="37wK5l" to="u4ym:2HLAWGSyups" resolve="ifColor" />
                  <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                  <node concept="1Q80Hx" id="6aMI9gKW1NS" role="37wK5m" />
                  <node concept="2nou5x" id="6aMI9gKW1NT" role="37wK5m">
                    <property role="2noCCI" value="71F496" />
                  </node>
                  <node concept="10M0yZ" id="6aMI9gKW1NU" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7S$pNDLyqRj" role="3EZMnx">
        <property role="3F0ifm" value="public" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="pkWqt" id="7S$pNDLyr4Q" role="pqm2j">
          <node concept="3clFbS" id="7S$pNDLyr4R" role="2VODD2">
            <node concept="3clFbF" id="7S$pNDLyrce" role="3cqZAp">
              <node concept="2OqwBi" id="7S$pNDLyr$j" role="3clFbG">
                <node concept="pncrf" id="7S$pNDLyrcd" role="2Oq$k0" />
                <node concept="3TrcHB" id="4WFClUMmphn" role="2OqNvi">
                  <ref role="3TsBF5" to="7ggn:6aMI9gKVBbh" resolve="public" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Veino" id="2HLAWGSguzs" role="3F10Kt">
          <node concept="3ZlJ5R" id="2HLAWGSguzt" role="VblUZ">
            <node concept="3clFbS" id="2HLAWGSguzu" role="2VODD2">
              <node concept="3clFbF" id="2HLAWGSguzv" role="3cqZAp">
                <node concept="2YIFZM" id="2HLAWGT1mY$" role="3clFbG">
                  <ref role="37wK5l" to="u4ym:2HLAWGSyups" resolve="ifColor" />
                  <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                  <node concept="1Q80Hx" id="2HLAWGT1mY_" role="37wK5m" />
                  <node concept="2nou5x" id="2HLAWGT1mYA" role="37wK5m">
                    <property role="2noCCI" value="71F496" />
                  </node>
                  <node concept="10M0yZ" id="2HLAWGT1mYB" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                    <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3Qetf3dy0_E" role="3EZMnx">
        <property role="3F0ifm" value="identifying" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="Veino" id="2HLAWGSguKc" role="3F10Kt">
          <node concept="3ZlJ5R" id="2HLAWGSguKd" role="VblUZ">
            <node concept="3clFbS" id="2HLAWGSguKe" role="2VODD2">
              <node concept="3clFbF" id="2HLAWGSguKf" role="3cqZAp">
                <node concept="2YIFZM" id="2HLAWGT1nh4" role="3clFbG">
                  <ref role="37wK5l" to="u4ym:2HLAWGSyups" resolve="ifColor" />
                  <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                  <node concept="1Q80Hx" id="2HLAWGT1nh5" role="37wK5m" />
                  <node concept="2nou5x" id="2HLAWGT1nh6" role="37wK5m">
                    <property role="2noCCI" value="71F496" />
                  </node>
                  <node concept="10M0yZ" id="2HLAWGT1nh7" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pkWqt" id="3Qetf3dy0I_" role="pqm2j">
          <node concept="3clFbS" id="3Qetf3dy0IA" role="2VODD2">
            <node concept="3clFbF" id="3Qetf3dy0PX" role="3cqZAp">
              <node concept="2OqwBi" id="3Qetf3dy1e2" role="3clFbG">
                <node concept="pncrf" id="3Qetf3dy0PW" role="2Oq$k0" />
                <node concept="3TrcHB" id="2UEyDf6P5Le" role="2OqNvi">
                  <ref role="3TsBF5" to="7ggn:2UEyDf6lmL1" resolve="identifying" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7byyZgEvIH8" role="3EZMnx">
        <property role="3F0ifm" value="constant" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="Veino" id="2HLAWGSguXs" role="3F10Kt">
          <node concept="3ZlJ5R" id="2HLAWGSguXt" role="VblUZ">
            <node concept="3clFbS" id="2HLAWGSguXu" role="2VODD2">
              <node concept="3clFbF" id="2HLAWGSguXv" role="3cqZAp">
                <node concept="2YIFZM" id="2HLAWGT1n7O" role="3clFbG">
                  <ref role="37wK5l" to="u4ym:2HLAWGSyups" resolve="ifColor" />
                  <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                  <node concept="1Q80Hx" id="2HLAWGT1n7P" role="37wK5m" />
                  <node concept="2nou5x" id="2HLAWGT1n7Q" role="37wK5m">
                    <property role="2noCCI" value="71F496" />
                  </node>
                  <node concept="10M0yZ" id="2HLAWGT1n7R" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pkWqt" id="7byyZgEvITv" role="pqm2j">
          <node concept="3clFbS" id="7byyZgEvITw" role="2VODD2">
            <node concept="3clFbF" id="7byyZgEvJ0R" role="3cqZAp">
              <node concept="2OqwBi" id="7byyZgEvJoW" role="3clFbG">
                <node concept="pncrf" id="7byyZgEvJ0Q" role="2Oq$k0" />
                <node concept="3TrcHB" id="7byyZgEvJZg" role="2OqNvi">
                  <ref role="3TsBF5" to="7ggn:7byyZgEvBg3" resolve="constant" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="79VROD26Yf0" role="3EZMnx">
        <property role="3F0ifm" value="optional" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="Veino" id="2HLAWGSgv0x" role="3F10Kt">
          <node concept="3ZlJ5R" id="2HLAWGSgv0y" role="VblUZ">
            <node concept="3clFbS" id="2HLAWGSgv0z" role="2VODD2">
              <node concept="3clFbF" id="2HLAWGSgv0$" role="3cqZAp">
                <node concept="2YIFZM" id="2HLAWGT1nqk" role="3clFbG">
                  <ref role="37wK5l" to="u4ym:2HLAWGSyups" resolve="ifColor" />
                  <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                  <node concept="1Q80Hx" id="2HLAWGT1nql" role="37wK5m" />
                  <node concept="2nou5x" id="2HLAWGT1nqm" role="37wK5m">
                    <property role="2noCCI" value="71F496" />
                  </node>
                  <node concept="10M0yZ" id="2HLAWGT1nqn" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pkWqt" id="79VROD26YrQ" role="pqm2j">
          <node concept="3clFbS" id="79VROD26YrR" role="2VODD2">
            <node concept="3clFbF" id="79VROD2731e" role="3cqZAp">
              <node concept="2OqwBi" id="79VROD273pj" role="3clFbG">
                <node concept="pncrf" id="79VROD2731d" role="2Oq$k0" />
                <node concept="3TrcHB" id="79VROD2743v" role="2OqNvi">
                  <ref role="3TsBF5" to="7ggn:79VROD26KQN" resolve="optional" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2UEyDf6P2KR" role="3EZMnx">
        <property role="3F0ifm" value="composite" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="Veino" id="2HLAWGSgv46" role="3F10Kt">
          <node concept="3ZlJ5R" id="2HLAWGSgv47" role="VblUZ">
            <node concept="3clFbS" id="2HLAWGSgv48" role="2VODD2">
              <node concept="3clFbF" id="2HLAWGSgv49" role="3cqZAp">
                <node concept="2YIFZM" id="2HLAWGSRTeF" role="3clFbG">
                  <ref role="37wK5l" to="u4ym:2HLAWGSyups" resolve="ifColor" />
                  <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                  <node concept="1Q80Hx" id="2HLAWGSRTeG" role="37wK5m" />
                  <node concept="2nou5x" id="2HLAWGSRTeH" role="37wK5m">
                    <property role="2noCCI" value="71F496" />
                  </node>
                  <node concept="10M0yZ" id="2HLAWGSRTeI" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                    <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pkWqt" id="2UEyDf6P2KS" role="pqm2j">
          <node concept="3clFbS" id="2UEyDf6P2KT" role="2VODD2">
            <node concept="3clFbF" id="2UEyDf6P2KU" role="3cqZAp">
              <node concept="2OqwBi" id="2UEyDf6P2KV" role="3clFbG">
                <node concept="pncrf" id="2UEyDf6P2KW" role="2Oq$k0" />
                <node concept="3TrcHB" id="2UEyDf6P2KX" role="2OqNvi">
                  <ref role="3TsBF5" to="7ggn:3Qetf3dy0jT" resolve="composite" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="8xxOga2bM$" role="3EZMnx">
        <property role="3F0ifm" value="model" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="Veino" id="2HLAWGSgviQ" role="3F10Kt">
          <node concept="3ZlJ5R" id="2HLAWGSgviR" role="VblUZ">
            <node concept="3clFbS" id="2HLAWGSgviS" role="2VODD2">
              <node concept="3clFbF" id="2HLAWGSgviT" role="3cqZAp">
                <node concept="2YIFZM" id="2HLAWGT1mPk" role="3clFbG">
                  <ref role="37wK5l" to="u4ym:2HLAWGSyups" resolve="ifColor" />
                  <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                  <node concept="1Q80Hx" id="2HLAWGT1mPl" role="37wK5m" />
                  <node concept="2nou5x" id="2HLAWGT1mPm" role="37wK5m">
                    <property role="2noCCI" value="71F496" />
                  </node>
                  <node concept="10M0yZ" id="2HLAWGT1mPn" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pkWqt" id="8xxOga2bQN" role="pqm2j">
          <node concept="3clFbS" id="8xxOga2bQO" role="2VODD2">
            <node concept="3clFbF" id="8xxOga2dI0" role="3cqZAp">
              <node concept="2OqwBi" id="8xxOga2e3L" role="3clFbG">
                <node concept="pncrf" id="8xxOga2dHZ" role="2Oq$k0" />
                <node concept="3TrcHB" id="8xxOga2eyK" role="2OqNvi">
                  <ref role="3TsBF5" to="7ggn:8xxOga2bl6" resolve="modelDeriver" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6_R8J$2CqQs" role="3EZMnx">
        <property role="3F0ifm" value="attr" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="Veino" id="2HLAWGSgvnv" role="3F10Kt">
          <node concept="3ZlJ5R" id="2HLAWGSgvnw" role="VblUZ">
            <node concept="3clFbS" id="2HLAWGSgvnx" role="2VODD2">
              <node concept="3clFbF" id="2HLAWGSgvny" role="3cqZAp">
                <node concept="2YIFZM" id="2HLAWGT1myc" role="3clFbG">
                  <ref role="37wK5l" to="u4ym:2HLAWGSyups" resolve="ifColor" />
                  <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                  <node concept="1Q80Hx" id="2HLAWGT1myd" role="37wK5m" />
                  <node concept="2nou5x" id="2HLAWGT1mye" role="37wK5m">
                    <property role="2noCCI" value="addda0" />
                  </node>
                  <node concept="10M0yZ" id="2HLAWGT1myf" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VechU" id="6_R8J$2XRBI" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
          <node concept="3ZlJ5R" id="2HLAWGSBzw3" role="VblUZ">
            <node concept="3clFbS" id="2HLAWGSBzw4" role="2VODD2">
              <node concept="3clFbF" id="2HLAWGSBzw8" role="3cqZAp">
                <node concept="2YIFZM" id="2HLAWGT1mFq" role="3clFbG">
                  <ref role="37wK5l" to="u4ym:2HLAWGSyBtM" resolve="ifColor" />
                  <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
                  <node concept="1Q80Hx" id="2HLAWGT1mFr" role="37wK5m" />
                  <node concept="10M0yZ" id="2HLAWGT66Vc" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~Color.black" resolve="black" />
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                  </node>
                  <node concept="10M0yZ" id="2HLAWGT1mFt" role="37wK5m">
                    <ref role="3cqZAo" to="exr9:~MPSColors.darkGreen" resolve="darkGreen" />
                    <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="hiAXQQ$" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no type&gt;" />
        <ref role="1NtTu8" to="tpee:4VkOLwjf83e" resolve="type" />
      </node>
      <node concept="PMmxH" id="hiAXQQ_" role="3EZMnx">
        <ref role="1ERwB7" to="tpen:3fsGbyaBOw3" resolve="LocalVariableDeclaration_Name_Actions" />
        <ref role="PMmxG" node="hcE9nLY" resolve="Attribute_NameCellComponent" />
      </node>
      <node concept="3EZMnI" id="5Cu8Hhs1dGP" role="3EZMnx">
        <node concept="VPM3Z" id="5Cu8Hhs1dGR" role="3F10Kt" />
        <node concept="3F0ifn" id="5Cu8Hhs1fxW" role="3EZMnx">
          <property role="3F0ifm" value="&lt;-&gt;" />
          <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
        </node>
        <node concept="1iCGBv" id="5Cu8Hhs1fx1" role="3EZMnx">
          <ref role="1NtTu8" to="7ggn:5Cu8Hhs0NPL" resolve="opposite" />
          <node concept="1sVBvm" id="5Cu8Hhs1fx3" role="1sWHZn">
            <node concept="3F0A7n" id="5Cu8Hhs4TUp" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="VechU" id="21fkvY6XgNd" role="3F10Kt">
                <property role="Vb096" value="g1_qVrt/darkMagenta" />
                <node concept="1iSF2X" id="21fkvY727cv" role="VblUZ">
                  <property role="1iTho6" value="aa1111" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="5Cu8Hhs1dGU" role="2iSdaV" />
        <node concept="pkWqt" id="5Cu8Hhs1dSF" role="pqm2j">
          <node concept="3clFbS" id="5Cu8Hhs1dSG" role="2VODD2">
            <node concept="3clFbF" id="5Cu8Hhs1dTj" role="3cqZAp">
              <node concept="3y3z36" id="5Cu8Hhs1fi4" role="3clFbG">
                <node concept="10Nm6u" id="5Cu8Hhs1frG" role="3uHU7w" />
                <node concept="2OqwBi" id="5Cu8Hhs1ecu" role="3uHU7B">
                  <node concept="pncrf" id="5Cu8Hhs1dTi" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5Cu8Hhs1eIm" role="2OqNvi">
                    <ref role="3Tt5mk" to="7ggn:5Cu8Hhs0NPL" resolve="opposite" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="hiAXQQA" role="3EZMnx">
        <property role="1ayjP4" value="false" />
        <node concept="3F0ifn" id="hiAXQQB" role="3EZMnx">
          <property role="3F0ifm" value=":=" />
          <ref role="1ERwB7" to="tpen:gDLA31d" resolve="LocalVariableDeclaration_Initializer_Actions" />
          <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
        </node>
        <node concept="3F1sOY" id="hiAXQQC" role="3EZMnx">
          <property role="1$x2rV" value="value" />
          <ref role="1ERwB7" to="tpen:gDLA31d" resolve="LocalVariableDeclaration_Initializer_Actions" />
          <ref role="1NtTu8" to="tpee:fz3vP1I" resolve="initializer" />
          <node concept="VPRnO" id="hJDUG_4" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="pkWqt" id="hiAXQQD" role="pqm2j">
          <node concept="3clFbS" id="hiAXQQE" role="2VODD2">
            <node concept="3cpWs6" id="hiAXQQF" role="3cqZAp">
              <node concept="2OqwBi" id="2_1mL0eog4z" role="3cqZAk">
                <node concept="2OqwBi" id="hxiFtEO" role="2Oq$k0">
                  <node concept="pncrf" id="hiAXQQI" role="2Oq$k0" />
                  <node concept="Bykcj" id="2_1mL0eog4w" role="2OqNvi">
                    <node concept="1aIX9F" id="2_1mL0eog4x" role="1xVPHs">
                      <node concept="26LbJo" id="2_1mL0eog4y" role="1aIX9E">
                        <ref role="26LbJp" to="tpee:fz3vP1I" resolve="initializer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="2_1mL0eog4$" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$P1w" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="i0uk49V" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6HWpSUFcY0z" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
        <node concept="ljvvj" id="6HWpSUFcYaf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="i0ujUbt" role="2iSdaV" />
    </node>
    <node concept="1iCGBv" id="4Bl8LN1COJv" role="6VMZX">
      <ref role="1NtTu8" to="7ggn:4WFClUMuhCz" resolve="source" />
      <node concept="1sVBvm" id="4Bl8LN1COJw" role="1sWHZn">
        <node concept="3SHvHV" id="4Bl8LN1COJx" role="2wV5jI" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7VpGsFQROY4">
    <property role="3GE5qa" value="attributes" />
    <ref role="1XX52x" to="7ggn:35Jy4LMD1lX" resolve="AttributeImplicitSelect" />
    <node concept="1iCGBv" id="7VpGsFQROY6" role="2wV5jI">
      <ref role="1NtTu8" to="7ggn:35Jy4LMD1u3" resolve="attribute" />
      <node concept="1sVBvm" id="7VpGsFQROY8" role="1sWHZn">
        <node concept="3F0A7n" id="7VpGsFQROYi" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="21fkvY733Xf" role="3F10Kt">
            <property role="Vb096" value="g1_qVrt/darkMagenta" />
            <node concept="1iSF2X" id="21fkvY733Xg" role="VblUZ">
              <property role="1iTho6" value="aa1111" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4wbMdoKd7eY">
    <property role="3GE5qa" value="attributes" />
    <ref role="1XX52x" to="7ggn:4wbMdoKd7ev" resolve="AttributeReference" />
    <node concept="1iCGBv" id="4wbMdoKd7f0" role="2wV5jI">
      <ref role="1NtTu8" to="7ggn:4wbMdoKd7ex" resolve="attribute" />
      <node concept="1sVBvm" id="4wbMdoKd7f1" role="1sWHZn">
        <node concept="3F0A7n" id="4wbMdoKd7f2" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="21fkvY733Xn" role="3F10Kt">
            <property role="Vb096" value="g1_qVrt/darkMagenta" />
            <node concept="1iSF2X" id="21fkvY733Xo" role="VblUZ">
              <property role="1iTho6" value="aa1111" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4wbMdoKMegI">
    <property role="3GE5qa" value="attributes" />
    <ref role="1XX52x" to="7ggn:4Y8BM43ogq1" resolve="Attributes" />
    <node concept="PMmxH" id="2wdLO7KhY6P" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <node concept="Vb9p2" id="2wdLO7KhY6S" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
      <node concept="VechU" id="21fkvY733Xr" role="3F10Kt">
        <property role="Vb096" value="g1_qVrt/darkMagenta" />
        <node concept="1iSF2X" id="21fkvY733Xs" role="VblUZ">
          <property role="1iTho6" value="aa1111" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3Qetf3cPp0B">
    <property role="3GE5qa" value="structs" />
    <ref role="1XX52x" to="7ggn:3Qetf3cPkTM" resolve="StructRuleSet" />
    <node concept="3EZMnI" id="3Qetf3cPp0D" role="2wV5jI">
      <node concept="l2Vlx" id="6_R8J$2HZVf" role="2iSdaV" />
      <node concept="3F0ifn" id="3Qetf3cPp0I" role="3EZMnx">
        <property role="3F0ifm" value="ruleset" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="VechU" id="6_R8J$2YeeK" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
      </node>
      <node concept="1iCGBv" id="4$bpWrNHVay" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:4$bpWrNHODe" resolve="structClass" />
        <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
        <node concept="VPXOz" id="3N4RhEWSdXk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="1sVBvm" id="4$bpWrNHVa$" role="1sWHZn">
          <node concept="3F0A7n" id="4$bpWrNHVkU" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="55f2HNAp7h3" role="3EZMnx">
        <ref role="PMmxG" node="55f2HNAp6uS" resolve="AspectEditor" />
      </node>
      <node concept="3F0ifn" id="3Qetf3cPp0J" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="6_R8J$2I07j" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="6_R8J$2I07k" role="3n$kyP">
            <node concept="3clFbS" id="6_R8J$2I07l" role="2VODD2">
              <node concept="3clFbF" id="6_R8J$2I07m" role="3cqZAp">
                <node concept="2OqwBi" id="6_R8J$2I07n" role="3clFbG">
                  <node concept="2OqwBi" id="6_R8J$2I07o" role="2Oq$k0">
                    <node concept="pncrf" id="6_R8J$2I07p" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6_R8J$2I07q" role="2OqNvi">
                      <ref role="3TtcxE" to="7ggn:6_R8J$2ChSl" resolve="members" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="6_R8J$2I07r" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11LMrY" id="6_R8J$2I0ns" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="6_R8J$2I0nt" role="3n$kyP">
            <node concept="3clFbS" id="6_R8J$2I0nu" role="2VODD2">
              <node concept="3clFbF" id="6_R8J$2I0nv" role="3cqZAp">
                <node concept="2OqwBi" id="6_R8J$2I0nw" role="3clFbG">
                  <node concept="2OqwBi" id="6_R8J$2I0nx" role="2Oq$k0">
                    <node concept="pncrf" id="6_R8J$2I0ny" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6_R8J$2I0nz" role="2OqNvi">
                      <ref role="3TtcxE" to="7ggn:6_R8J$2ChSl" resolve="members" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="6_R8J$2I0n$" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3Qetf3cPp0K" role="3EZMnx">
        <ref role="PMmxG" node="6HWpSUEvTAW" resolve="RuleSetMembersComponent" />
      </node>
      <node concept="3F0ifn" id="3Qetf3cPp0L" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="2w$q5c" id="4apidoKBFLF" role="2whIAn">
        <node concept="2aJ2om" id="4apidoKBFLG" role="2w$qW5">
          <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3Qetf3cPPAX">
    <property role="3GE5qa" value="structs" />
    <ref role="1XX52x" to="7ggn:3Qetf3cPPAL" resolve="StructType" />
    <node concept="3EZMnI" id="67uyCwD4K5d" role="2wV5jI">
      <node concept="2iRfu4" id="67uyCwD4K5e" role="2iSdaV" />
      <node concept="3F0ifn" id="67uyCwD4K5C" role="3EZMnx">
        <property role="3F0ifm" value="struct" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="3$7jql" id="67uyCwD6N9O" role="3F10Kt">
          <property role="3$6WeP" value="0.0" />
        </node>
        <node concept="VPxyj" id="67uyCwD6N9X" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="67uyCwD6N9y" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="1iCGBv" id="3Qetf3cPPAZ" role="3EZMnx">
        <property role="1cu_pB" value="gtgu$YJ/attractsFocus" />
        <property role="39s7Ar" value="true" />
        <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
        <ref role="1NtTu8" to="7ggn:4$bpWrOFXcp" resolve="class" />
        <node concept="1sVBvm" id="3Qetf3cPPB1" role="1sWHZn">
          <node concept="3F0A7n" id="3Qetf3cPPBb" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="3$7jql" id="67uyCwD6Naw" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
          </node>
        </node>
        <node concept="3$7jql" id="67uyCwD6Nat" role="3F10Kt">
          <property role="3$6WeP" value="0.0" />
        </node>
      </node>
      <node concept="3F0ifn" id="67uyCwD4K5X" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3Qetf3d9sl_">
    <property role="3GE5qa" value="structs.builder" />
    <ref role="1XX52x" to="7ggn:3Qetf3d9slq" resolve="StructBuilder" />
    <node concept="3EZMnI" id="4fD99RQo312" role="2wV5jI">
      <node concept="2iRfu4" id="4fD99RQo313" role="2iSdaV" />
      <node concept="3EZMnI" id="2JtLodk2CsS" role="3EZMnx">
        <node concept="1Bsynf" id="PFUECvMjP$" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="PFUECvMjP_" role="3n$kyP">
            <node concept="3clFbS" id="PFUECvMjPA" role="2VODD2">
              <node concept="3clFbF" id="PFUECvMjPB" role="3cqZAp">
                <node concept="3eOSWO" id="PFUECvMjPG" role="3clFbG">
                  <node concept="2OqwBi" id="PFUECvMjPI" role="3uHU7B">
                    <node concept="2OqwBi" id="PFUECvMjPJ" role="2Oq$k0">
                      <node concept="pncrf" id="PFUECvMjPK" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="2JtLodk3vhZ" role="2OqNvi">
                        <ref role="3TtcxE" to="7ggn:4fD99RQo2bn" resolve="parts" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="PFUECvMjPO" role="2OqNvi" />
                  </node>
                  <node concept="3cmrfG" id="2JtLodke1Mp" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="2JtLodk2CsT" role="2iSdaV" />
        <node concept="1iCGBv" id="3Qetf3d9slB" role="3EZMnx">
          <ref role="1NtTu8" to="7ggn:4$bpWrNHOXa" resolve="class" />
          <node concept="Vb9p2" id="2JtLodk7T7E" role="3F10Kt">
            <property role="Vbekb" value="g1_k_vY/BOLD" />
          </node>
          <node concept="1sVBvm" id="3Qetf3d9slD" role="1sWHZn">
            <node concept="3F0A7n" id="3Qetf3d9slK" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="4fD99RQo31d" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
          <node concept="ljvvj" id="4fD99RQo31e" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="4fD99RQo31f" role="3n$kyP">
              <node concept="3clFbS" id="4fD99RQo31g" role="2VODD2">
                <node concept="3clFbF" id="4fD99RQo31h" role="3cqZAp">
                  <node concept="3eOSWO" id="4fD99RQo31i" role="3clFbG">
                    <node concept="2OqwBi" id="4fD99RQo31k" role="3uHU7B">
                      <node concept="2OqwBi" id="4fD99RQo31l" role="2Oq$k0">
                        <node concept="pncrf" id="4fD99RQo31m" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="2JtLodk3wp1" role="2OqNvi">
                          <ref role="3TtcxE" to="7ggn:4fD99RQo2bn" resolve="parts" />
                        </node>
                      </node>
                      <node concept="34oBXx" id="4fD99RQo31q" role="2OqNvi" />
                    </node>
                    <node concept="3cmrfG" id="2JtLodkddo0" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F2HdR" id="4fD99RQo31r" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="7ggn:4fD99RQo2bn" resolve="parts" />
          <node concept="lj46D" id="4fD99RQo31s" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="4fD99RQo31E" role="2czzBx" />
          <node concept="tppnM" id="4fD99RQo31F" role="sWeuL">
            <node concept="ljvvj" id="4fD99RQo31G" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="4fD99RQo31H" role="2czzBI" />
        </node>
        <node concept="3F0ifn" id="4fD99RQo31I" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
        </node>
      </node>
      <node concept="3vyZuw" id="4fD99RQo31J" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VLuvy" id="4fD99RQo31K" role="3F10Kt">
        <property role="Vb096" value="g1_qVrt/darkMagenta" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3Qetf3dC4Nf">
    <property role="3GE5qa" value="structs" />
    <ref role="1XX52x" to="7ggn:3Qetf3dC4N5" resolve="StructRuleSetReference_Old" />
    <node concept="1iCGBv" id="3Qetf3dC4Nh" role="2wV5jI">
      <ref role="1NtTu8" to="7ggn:3Qetf3dC4N6" resolve="class_old" />
      <node concept="1sVBvm" id="3Qetf3dC4Nj" role="1sWHZn">
        <node concept="3F0A7n" id="3Qetf3dC4Nq" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4$MeK2bvUKZ">
    <property role="3GE5qa" value="attributes" />
    <ref role="1XX52x" to="7ggn:4$MeK2bvRdy" resolve="AttributeOperation" />
    <node concept="1iCGBv" id="4$MeK2bvUL1" role="2wV5jI">
      <ref role="1NtTu8" to="7ggn:4$MeK2bvUeg" resolve="attribute" />
      <node concept="1sVBvm" id="4$MeK2bvUL3" role="1sWHZn">
        <node concept="3F0A7n" id="4$MeK2bvULa" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="21fkvY733Xj" role="3F10Kt">
            <property role="Vb096" value="g1_qVrt/darkMagenta" />
            <node concept="1iSF2X" id="21fkvY733Xk" role="VblUZ">
              <property role="1iTho6" value="aa1111" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="67uyCwCOEbs">
    <property role="3GE5qa" value="structs" />
    <ref role="1XX52x" to="7ggn:67uyCwCOEaZ" resolve="StructParent" />
    <node concept="PMmxH" id="67uyCwCOEbu" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
    </node>
  </node>
  <node concept="24kQdi" id="55IEyjJEeRt">
    <property role="3GE5qa" value="models" />
    <ref role="1XX52x" to="7ggn:55IEyjJEeQU" resolve="RootsImplicitSelect" />
    <node concept="3EZMnI" id="h2RRBCF" role="2wV5jI">
      <node concept="PMmxH" id="55IEyjJEjhc" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="Vb9p2" id="55IEyjJEk78" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="hzCdxXj" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="1iCGBv" id="h2RRBCH" role="3EZMnx">
        <property role="1$x2rV" value="&lt;all&gt;" />
        <property role="1cu_pB" value="gtgu$YJ/attractsFocus" />
        <ref role="1NtTu8" to="7ggn:55IEyjJEjgi" resolve="concept" />
        <node concept="1sVBvm" id="h2RRBCI" role="1sWHZn">
          <node concept="3F0A7n" id="h2RRBCJ" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="3$7jql" id="hJlFN_R" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
            <node concept="VechU" id="hEZR8uW" role="3F10Kt">
              <property role="Vb096" value="g1_qVrt/darkMagenta" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hzCd_08" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="i0NEeNx" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="55IEyjJExxh">
    <property role="3GE5qa" value="models" />
    <ref role="1XX52x" to="7ggn:55IEyjJExwL" resolve="Models" />
    <node concept="PMmxH" id="55IEyjJExxj" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <node concept="Vb9p2" id="55IEyjJExxm" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="18IIFqBx4nI">
    <property role="3GE5qa" value="models" />
    <ref role="1XX52x" to="7ggn:18IIFqBx3QL" resolve="OppositeLinkAccessImplicitSelect" />
    <node concept="1iCGBv" id="18IIFqBx4nN" role="2wV5jI">
      <property role="1$x2rV" value="&lt;no link&gt;" />
      <ref role="1NtTu8" to="7ggn:18IIFqBH7Z$" resolve="link" />
      <node concept="1sVBvm" id="18IIFqBx4nO" role="1sWHZn">
        <node concept="1HlG4h" id="18IIFqBx4nP" role="2wV5jI">
          <node concept="1HfYo3" id="18IIFqBx4nQ" role="1HlULh">
            <node concept="3TQlhw" id="18IIFqBx4nR" role="1Hhtcw">
              <node concept="3clFbS" id="18IIFqBx4nS" role="2VODD2">
                <node concept="3clFbF" id="18IIFqBx4nT" role="3cqZAp">
                  <node concept="3cpWs3" id="18IIFqBx4nU" role="3clFbG">
                    <node concept="2OqwBi" id="18IIFqBx4nV" role="3uHU7w">
                      <node concept="pncrf" id="18IIFqBx4nW" role="2Oq$k0" />
                      <node concept="3TrcHB" id="18IIFqBHdtr" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="18IIFqBx4nY" role="3uHU7B">
                      <node concept="Xl_RD" id="18IIFqBx4nZ" role="3uHU7w">
                        <property role="Xl_RC" value="::" />
                      </node>
                      <node concept="3cpWs3" id="18IIFqBx4o0" role="3uHU7B">
                        <node concept="Xl_RD" id="18IIFqBx4o1" role="3uHU7B">
                          <property role="Xl_RC" value="~" />
                        </node>
                        <node concept="2OqwBi" id="18IIFqBx4o2" role="3uHU7w">
                          <node concept="2OqwBi" id="18IIFqBx4o3" role="2Oq$k0">
                            <node concept="pncrf" id="18IIFqBHayy" role="2Oq$k0" />
                            <node concept="2qgKlT" id="18IIFqBHbvB" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="18IIFqBx4o6" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
  <node concept="24kQdi" id="4jp8R7C$kBa">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="7ggn:76efOMRCHWM" resolve="ListBuilder" />
    <node concept="3EZMnI" id="76efOMRCHWT" role="2wV5jI">
      <node concept="l2Vlx" id="76efOMRCHWU" role="2iSdaV" />
      <node concept="1HlG4h" id="7TwFHUoM1QD" role="3EZMnx">
        <node concept="1HfYo3" id="7TwFHUoM1QF" role="1HlULh">
          <node concept="3TQlhw" id="7TwFHUoM1QH" role="1Hhtcw">
            <node concept="3clFbS" id="7TwFHUoM1QJ" role="2VODD2">
              <node concept="3clFbF" id="7TwFHUoVWrD" role="3cqZAp">
                <node concept="3K4zz7" id="7TwFHUoVWrx" role="3clFbG">
                  <node concept="2OqwBi" id="7TwFHUoVWJ9" role="3K4Cdx">
                    <node concept="pncrf" id="7TwFHUoVWwI" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7TwFHUoVX1l" role="2OqNvi">
                      <ref role="3TsBF5" to="7ggn:6n54NLY4afR" resolve="multiLine" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7TwFHUoVX47" role="3K4E3e">
                    <property role="Xl_RC" value="[" />
                  </node>
                  <node concept="Xl_RD" id="7TwFHUoM3Xn" role="3K4GZi">
                    <property role="Xl_RC" value="[" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="76efOMRCHWZ" role="3EZMnx">
        <property role="2czwfO" value="," />
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="7ggn:4jp8R7C$k_N" resolve="elements" />
        <node concept="lj46D" id="1LsIPm8rqH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="76efOMRCHX1" role="2czzBI">
          <property role="3F0ifm" value="" />
          <node concept="VPxyj" id="76efOMRCHX2" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="6n54NLYjXnq" role="2czzBx" />
        <node concept="tppnM" id="1LsIPm4gN5" role="sWeuL">
          <node concept="ljvvj" id="1LsIPm4gN6" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="1LsIPm4gN9" role="3n$kyP">
              <node concept="3clFbS" id="1LsIPm4gNa" role="2VODD2">
                <node concept="3clFbF" id="1LsIPm4gRd" role="3cqZAp">
                  <node concept="2OqwBi" id="1LsIPm4h57" role="3clFbG">
                    <node concept="pncrf" id="1LsIPm4gRc" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1LsIPm4hnl" role="2OqNvi">
                      <ref role="3TsBF5" to="7ggn:6n54NLY4afR" resolve="multiLine" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1HlG4h" id="7TwFHUoYIVF" role="3EmGlc">
          <node concept="1HfYo3" id="7TwFHUoYIVH" role="1HlULh">
            <node concept="3TQlhw" id="7TwFHUoYIVJ" role="1Hhtcw">
              <node concept="3clFbS" id="7TwFHUoYIVL" role="2VODD2">
                <node concept="3clFbF" id="7TwFHUoYJ15" role="3cqZAp">
                  <node concept="3cpWs3" id="7TwFHUoYJps" role="3clFbG">
                    <node concept="2OqwBi" id="7TwFHUoYLrN" role="3uHU7w">
                      <node concept="2OqwBi" id="7TwFHUoYJEZ" role="2Oq$k0">
                        <node concept="pncrf" id="7TwFHUoYJq3" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="7TwFHUoYJX_" role="2OqNvi">
                          <ref role="3TtcxE" to="7ggn:4jp8R7C$k_N" resolve="elements" />
                        </node>
                      </node>
                      <node concept="34oBXx" id="7TwFHUoYP3j" role="2OqNvi" />
                    </node>
                    <node concept="Xl_RD" id="7TwFHUoYJ14" role="3uHU7B">
                      <property role="Xl_RC" value="list of " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1HlG4h" id="7TwFHUoM4Dy" role="3EZMnx">
        <node concept="1HfYo3" id="7TwFHUoM4Dz" role="1HlULh">
          <node concept="3TQlhw" id="7TwFHUoM4D$" role="1Hhtcw">
            <node concept="3clFbS" id="7TwFHUoM4D_" role="2VODD2">
              <node concept="3clFbF" id="7TwFHUoVXp0" role="3cqZAp">
                <node concept="3K4zz7" id="7TwFHUoVXp2" role="3clFbG">
                  <node concept="2OqwBi" id="7TwFHUoVXp3" role="3K4Cdx">
                    <node concept="pncrf" id="7TwFHUoVXp4" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7TwFHUoVXp5" role="2OqNvi">
                      <ref role="3TsBF5" to="7ggn:6n54NLY4afR" resolve="multiLine" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7TwFHUoVXp6" role="3K4E3e">
                    <property role="Xl_RC" value="]" />
                  </node>
                  <node concept="Xl_RD" id="7TwFHUoVXp7" role="3K4GZi">
                    <property role="Xl_RC" value="]" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Bsynf" id="1LsIPmaqNY" role="3F10Kt">
        <property role="VOm3f" value="true" />
        <node concept="3nzxsE" id="1LsIPmaqUG" role="3n$kyP">
          <node concept="3clFbS" id="1LsIPmaqUH" role="2VODD2">
            <node concept="3clFbF" id="1LsIPmaqV8" role="3cqZAp">
              <node concept="1Wc70l" id="1LsIPmarVB" role="3clFbG">
                <node concept="3eOSWO" id="1LsIPmaypH" role="3uHU7w">
                  <node concept="3cmrfG" id="1LsIPmaypL" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="1LsIPmauqI" role="3uHU7B">
                    <node concept="2OqwBi" id="1LsIPmaslV" role="2Oq$k0">
                      <node concept="pncrf" id="1LsIPmas5O" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="1LsIPmasI6" role="2OqNvi">
                        <ref role="3TtcxE" to="7ggn:4jp8R7C$k_N" resolve="elements" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="1LsIPmawZA" role="2OqNvi" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1LsIPmar92" role="3uHU7B">
                  <node concept="pncrf" id="1LsIPmaqV7" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1LsIPmarrd" role="2OqNvi">
                    <ref role="3TsBF5" to="7ggn:6n54NLY4afR" resolve="multiLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2bORRGLUZZq">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="7ggn:2bORRGLUZYX" resolve="ToSetOperation" />
    <node concept="3F0ifn" id="gKAS902" role="2wV5jI">
      <property role="3F0ifm" value="toSet" />
      <ref role="1k5W1q" to="tp2u:hGdPUoh" resolve="Operation" />
      <node concept="VPxyj" id="hEZKQzg" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7S$pNDLbd0D">
    <property role="3GE5qa" value="models" />
    <ref role="1XX52x" to="7ggn:7S$pNDLbd0e" resolve="RepositoryOperation" />
    <node concept="PMmxH" id="7S$pNDLbd0F" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <node concept="Vb9p2" id="7S$pNDLbd0G" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7S$pNDLbgaC">
    <property role="3GE5qa" value="models" />
    <ref role="1XX52x" to="7ggn:7S$pNDLbgad" resolve="Modules" />
    <node concept="PMmxH" id="7S$pNDLbgaE" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <node concept="Vb9p2" id="7S$pNDLbgaF" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3HLMRNkv1ar">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="7ggn:3HLMRNkuBN1" resolve="PreStateExpression" />
    <node concept="3EZMnI" id="3HLMRNkv1aw" role="2wV5jI">
      <node concept="l2Vlx" id="8$idn7WVpx" role="2iSdaV" />
      <node concept="3F0ifn" id="3HLMRNkv1at" role="3EZMnx">
        <property role="3F0ifm" value="pre" />
        <node concept="Vb9p2" id="3HLMRNkv3lg" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="3HLMRNkv1b3" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F1sOY" id="3HLMRNkv1aL" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:3HLMRNkuYWy" resolve="expression" />
      </node>
      <node concept="3F0ifn" id="3HLMRNkv1aD" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="rTfv3GZ3Vf">
    <property role="3GE5qa" value="models" />
    <ref role="1XX52x" to="7ggn:rTfv3GWr7J" resolve="CopyImplicitSelect" />
    <node concept="PMmxH" id="rTfv3GZ3Vh" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
    </node>
  </node>
  <node concept="24kQdi" id="45beoc8pRWH">
    <property role="3GE5qa" value="issues" />
    <ref role="1XX52x" to="7ggn:45beoc8pRWf" resolve="IssuesOperation" />
    <node concept="PMmxH" id="45beoc8pRWJ" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
    </node>
  </node>
  <node concept="24kQdi" id="2iL65LTYX2o">
    <property role="3GE5qa" value="issues" />
    <ref role="1XX52x" to="7ggn:2iL65LTVkBJ" resolve="NodeIssue" />
    <node concept="3EZMnI" id="2Xu5gU6T3DI" role="2wV5jI">
      <node concept="2iRfu4" id="2Xu5gU6T3DJ" role="2iSdaV" />
      <node concept="3EZMnI" id="2iL65LTYX2t" role="3EZMnx">
        <node concept="2iRfu4" id="7cjGvLzMkTH" role="2iSdaV" />
        <node concept="3EZMnI" id="2Xu5gU6UNyt" role="3EZMnx">
          <node concept="l2Vlx" id="2Xu5gU6UNyu" role="2iSdaV" />
          <node concept="3F1sOY" id="2Xu5gU6UNyv" role="3EZMnx">
            <ref role="1NtTu8" to="7ggn:7cCgEMkno8n" resolve="severity" />
          </node>
          <node concept="3F0ifn" id="2Xu5gU6UNyw" role="3EZMnx">
            <property role="3F0ifm" value="(" />
            <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
            <node concept="ljvvj" id="2Xu5gU6UNyx" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3EZMnI" id="2Xu5gU6UNyy" role="3EZMnx">
            <node concept="ljvvj" id="2Xu5gU6UNyz" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="lj46D" id="2Xu5gU6UNy$" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="2iRfu4" id="2Xu5gU6UNy_" role="2iSdaV" />
            <node concept="3F0ifn" id="2Xu5gU6UNyA" role="3EZMnx">
              <property role="3F0ifm" value="message" />
              <ref role="1k5W1q" to="tp3y:2r4rhgaDxBT" resolve="Variable" />
              <node concept="VechU" id="2Xu5gU73I3W" role="3F10Kt">
                <property role="Vb096" value="g1_qRwE/darkGreen" />
                <node concept="1iSF2X" id="2Xu5gU73I3X" role="VblUZ">
                  <property role="1iTho6" value="aa1111" />
                </node>
              </node>
              <node concept="Vb9p2" id="2Xu5gU74B$I" role="3F10Kt" />
              <node concept="VPM3Z" id="2Xu5gU7oCK9" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="2Xu5gU6UNyB" role="3EZMnx">
              <property role="3F0ifm" value=":=" />
              <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
              <node concept="VPM3Z" id="2Xu5gU7oCKj" role="3F10Kt" />
            </node>
            <node concept="3F1sOY" id="2Xu5gU6UNyC" role="3EZMnx">
              <ref role="1NtTu8" to="7ggn:2iL65LTUI5t" resolve="message" />
            </node>
            <node concept="3F0ifn" id="2Xu5gU6ZmMC" role="3EZMnx">
              <property role="3F0ifm" value="," />
              <node concept="11L4FC" id="2Xu5gU71773" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
          </node>
          <node concept="3EZMnI" id="2Xu5gU6UNyD" role="3EZMnx">
            <node concept="3F0ifn" id="2Xu5gU6UNyE" role="3EZMnx">
              <property role="3F0ifm" value="node" />
              <ref role="1k5W1q" to="tp3y:2r4rhgaDxBT" resolve="Variable" />
              <node concept="VechU" id="2Xu5gU73I40" role="3F10Kt">
                <property role="Vb096" value="g1_qRwE/darkGreen" />
                <node concept="1iSF2X" id="2Xu5gU73I41" role="VblUZ">
                  <property role="1iTho6" value="aa1111" />
                </node>
              </node>
              <node concept="Vb9p2" id="2Xu5gU74B$Q" role="3F10Kt" />
              <node concept="VPM3Z" id="2Xu5gU7oCKv" role="3F10Kt" />
            </node>
            <node concept="lj46D" id="2Xu5gU6UNyF" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="ljvvj" id="2Xu5gU6UNPm" role="3F10Kt">
              <property role="VOm3f" value="true" />
              <node concept="3nzxsE" id="2Xu5gU74DMx" role="3n$kyP">
                <node concept="3clFbS" id="2Xu5gU74DMy" role="2VODD2">
                  <node concept="3clFbF" id="2Xu5gU74DQT" role="3cqZAp">
                    <node concept="3y3z36" id="2Xu5gU74F7C" role="3clFbG">
                      <node concept="10Nm6u" id="2Xu5gU74Fnj" role="3uHU7w" />
                      <node concept="2OqwBi" id="2Xu5gU74E7I" role="3uHU7B">
                        <node concept="pncrf" id="2Xu5gU74DQS" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2Xu5gU74EL4" role="2OqNvi">
                          <ref role="3Tt5mk" to="7ggn:wH5jBlQug8" resolve="feature" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2iRfu4" id="2Xu5gU6UNyG" role="2iSdaV" />
            <node concept="3F0ifn" id="2Xu5gU6UNyH" role="3EZMnx">
              <property role="3F0ifm" value=":=" />
              <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
              <node concept="VPM3Z" id="2Xu5gU7oCKD" role="3F10Kt" />
            </node>
            <node concept="3F1sOY" id="2Xu5gU6UNyI" role="3EZMnx">
              <ref role="1NtTu8" to="7ggn:41CotWWs4Oc" resolve="object" />
            </node>
            <node concept="3F0ifn" id="2Xu5gU6ZmMN" role="3EZMnx">
              <property role="3F0ifm" value="," />
              <node concept="11L4FC" id="2Xu5gU71775" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="pkWqt" id="2Xu5gU74FG8" role="pqm2j">
                <node concept="3clFbS" id="2Xu5gU74FG9" role="2VODD2">
                  <node concept="3clFbF" id="2Xu5gU74FK9" role="3cqZAp">
                    <node concept="3y3z36" id="2Xu5gU74FKb" role="3clFbG">
                      <node concept="10Nm6u" id="2Xu5gU74FKc" role="3uHU7w" />
                      <node concept="2OqwBi" id="2Xu5gU74FKd" role="3uHU7B">
                        <node concept="pncrf" id="2Xu5gU74FKe" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2Xu5gU74FKf" role="2OqNvi">
                          <ref role="3Tt5mk" to="7ggn:wH5jBlQug8" resolve="feature" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3EZMnI" id="6NZFdbTND0g" role="3EZMnx">
            <node concept="2iRfu4" id="6NZFdbTND0h" role="2iSdaV" />
            <node concept="3F0ifn" id="6NZFdbTND0I" role="3EZMnx">
              <property role="3F0ifm" value="feature" />
              <ref role="1k5W1q" to="tp3y:2r4rhgaDxBT" resolve="Variable" />
              <node concept="VechU" id="2Xu5gU73I44" role="3F10Kt">
                <property role="Vb096" value="g1_qRwE/darkGreen" />
                <node concept="1iSF2X" id="2Xu5gU73I45" role="VblUZ">
                  <property role="1iTho6" value="aa1111" />
                </node>
              </node>
              <node concept="Vb9p2" id="2Xu5gU74B$X" role="3F10Kt" />
              <node concept="VPM3Z" id="2Xu5gU7oCKP" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="2Xu5gU6UO8C" role="3EZMnx">
              <property role="3F0ifm" value=":=" />
              <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
              <node concept="VPM3Z" id="2Xu5gU7oCKZ" role="3F10Kt" />
            </node>
            <node concept="3F1sOY" id="4A0PXFcDrR7" role="3EZMnx">
              <ref role="1NtTu8" to="7ggn:wH5jBlQug8" resolve="feature" />
            </node>
            <node concept="lj46D" id="2Xu5gU6UO17" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="pkWqt" id="2Xu5gU74C8x" role="pqm2j">
              <node concept="3clFbS" id="2Xu5gU74C8y" role="2VODD2">
                <node concept="3clFbF" id="2Xu5gU74CcB" role="3cqZAp">
                  <node concept="3y3z36" id="2Xu5gU74Dnu" role="3clFbG">
                    <node concept="10Nm6u" id="2Xu5gU74DBk" role="3uHU7w" />
                    <node concept="2OqwBi" id="2Xu5gU74Cts" role="3uHU7B">
                      <node concept="pncrf" id="2Xu5gU74CcA" role="2Oq$k0" />
                      <node concept="3TrEf2" id="2Xu5gU74D5_" role="2OqNvi">
                        <ref role="3Tt5mk" to="7ggn:wH5jBlQug8" resolve="feature" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="2Xu5gU6UNyJ" role="3EZMnx">
            <property role="3F0ifm" value=")" />
            <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
          </node>
        </node>
        <node concept="3vyZuw" id="2Xu5gU6GxUD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VLuvy" id="2Xu5gU6GxW6" role="3F10Kt">
          <property role="Vb096" value="fLwANPn/red" />
          <node concept="1iSF2X" id="2Xu5gU7alxg" role="VblUZ">
            <property role="1iTho6" value="ff5555" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1Kikqj8rn6q" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
      </node>
    </node>
    <node concept="3EZMnI" id="6NZFdbTNE$g" role="6VMZX">
      <node concept="2iRfu4" id="6NZFdbTNE$h" role="2iSdaV" />
      <node concept="3F0ifn" id="6NZFdbTNEF4" role="3EZMnx">
        <property role="3F0ifm" value="feature" />
      </node>
      <node concept="3F0ifn" id="6NZFdbTNEFg" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="4A0PXFcDrRY" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:wH5jBlQug8" resolve="feature" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2iL65LU1O6l">
    <property role="3GE5qa" value="issues" />
    <ref role="1XX52x" to="7ggn:2iL65LTVkL1" resolve="ModuleIssue" />
    <node concept="3EZMnI" id="2Xu5gU6T3Oc" role="2wV5jI">
      <node concept="2iRfu4" id="2Xu5gU6T3Od" role="2iSdaV" />
      <node concept="3EZMnI" id="2iL65LU1O7V" role="3EZMnx">
        <node concept="2iRfu4" id="2iL65LU1O7W" role="2iSdaV" />
        <node concept="3EZMnI" id="2Xu5gU6UNq8" role="3EZMnx">
          <node concept="l2Vlx" id="2Xu5gU6UNq9" role="2iSdaV" />
          <node concept="3F1sOY" id="2Xu5gU6UNqa" role="3EZMnx">
            <ref role="1NtTu8" to="7ggn:7cCgEMkno8n" resolve="severity" />
          </node>
          <node concept="3F0ifn" id="2Xu5gU6UNqb" role="3EZMnx">
            <property role="3F0ifm" value="(" />
            <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
            <node concept="ljvvj" id="2Xu5gU6UNqc" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3EZMnI" id="2Xu5gU6UNqd" role="3EZMnx">
            <node concept="ljvvj" id="2Xu5gU6UNqe" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="lj46D" id="2Xu5gU6UNqf" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="2iRfu4" id="2Xu5gU6UNqg" role="2iSdaV" />
            <node concept="3F0ifn" id="2Xu5gU6UNqh" role="3EZMnx">
              <property role="3F0ifm" value="message" />
              <ref role="1k5W1q" to="tp3y:2r4rhgaDxBT" resolve="Variable" />
              <node concept="VechU" id="2Xu5gU73I3O" role="3F10Kt">
                <property role="Vb096" value="g1_qRwE/darkGreen" />
                <node concept="1iSF2X" id="2Xu5gU73I3P" role="VblUZ">
                  <property role="1iTho6" value="aa1111" />
                </node>
              </node>
              <node concept="Vb9p2" id="2Xu5gU74B_4" role="3F10Kt" />
              <node concept="VPM3Z" id="2Xu5gU7oCL$" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="2Xu5gU6UNqi" role="3EZMnx">
              <property role="3F0ifm" value=":=" />
              <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
              <node concept="VPM3Z" id="2Xu5gU7oCLH" role="3F10Kt" />
            </node>
            <node concept="3F1sOY" id="2Xu5gU6UNqj" role="3EZMnx">
              <ref role="1NtTu8" to="7ggn:2iL65LTUI5t" resolve="message" />
            </node>
            <node concept="3F0ifn" id="2Xu5gU6ZmMY" role="3EZMnx">
              <property role="3F0ifm" value="," />
              <node concept="11L4FC" id="2Xu5gU71777" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
          </node>
          <node concept="3EZMnI" id="2Xu5gU6UNqk" role="3EZMnx">
            <node concept="3F0ifn" id="2Xu5gU6UNql" role="3EZMnx">
              <property role="3F0ifm" value="module" />
              <ref role="1k5W1q" to="tp3y:2r4rhgaDxBT" resolve="Variable" />
              <node concept="VechU" id="2Xu5gU73I3S" role="3F10Kt">
                <property role="Vb096" value="g1_qRwE/darkGreen" />
                <node concept="1iSF2X" id="2Xu5gU73I3T" role="VblUZ">
                  <property role="1iTho6" value="aa1111" />
                </node>
              </node>
              <node concept="Vb9p2" id="2Xu5gU74B_b" role="3F10Kt" />
              <node concept="VPM3Z" id="2Xu5gU7oCLK" role="3F10Kt" />
            </node>
            <node concept="lj46D" id="2Xu5gU6UNqm" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="2iRfu4" id="2Xu5gU6UNqn" role="2iSdaV" />
            <node concept="3F0ifn" id="2Xu5gU7kPo6" role="3EZMnx">
              <property role="3F0ifm" value=":=" />
              <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
              <node concept="VPM3Z" id="2Xu5gU7oCLT" role="3F10Kt" />
            </node>
            <node concept="3F1sOY" id="2Xu5gU6UNqp" role="3EZMnx">
              <ref role="1NtTu8" to="7ggn:41CotWWs4Oc" resolve="object" />
            </node>
          </node>
          <node concept="3F0ifn" id="2Xu5gU6UNqq" role="3EZMnx">
            <property role="3F0ifm" value=")" />
            <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
          </node>
        </node>
        <node concept="3vyZuw" id="2Xu5gU6GxFg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VLuvy" id="2Xu5gU6GxFv" role="3F10Kt">
          <property role="Vb096" value="fLwANPn/red" />
          <node concept="1iSF2X" id="2Xu5gU7alxd" role="VblUZ">
            <property role="1iTho6" value="ff5555" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1Kikqj8rn5V" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2iL65LU1O6M">
    <property role="3GE5qa" value="issues" />
    <ref role="1XX52x" to="7ggn:2iL65LTVkL0" resolve="ModelIssue" />
    <node concept="3EZMnI" id="2Xu5gU6T3OM" role="2wV5jI">
      <node concept="2iRfu4" id="2Xu5gU6T3ON" role="2iSdaV" />
      <node concept="3EZMnI" id="2iL65LU1O6O" role="3EZMnx">
        <node concept="3vyZuw" id="2Xu5gU6Gu3X" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VLuvy" id="2Xu5gU6GxEI" role="3F10Kt">
          <property role="Vb096" value="fLwANPn/red" />
          <node concept="1iSF2X" id="2Xu5gU7alxa" role="VblUZ">
            <property role="1iTho6" value="ff5555" />
          </node>
        </node>
        <node concept="2iRfu4" id="2iL65LU1O6P" role="2iSdaV" />
        <node concept="3EZMnI" id="2Xu5gU6UMMY" role="3EZMnx">
          <node concept="l2Vlx" id="2Xu5gU6UMMZ" role="2iSdaV" />
          <node concept="3F1sOY" id="7cCgEMknoae" role="3EZMnx">
            <ref role="1NtTu8" to="7ggn:7cCgEMkno8n" resolve="severity" />
          </node>
          <node concept="3F0ifn" id="2Xu5gU6UMNL" role="3EZMnx">
            <property role="3F0ifm" value="(" />
            <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
            <node concept="ljvvj" id="2Xu5gU6UMNM" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3EZMnI" id="2Xu5gU6UNhU" role="3EZMnx">
            <node concept="ljvvj" id="2Xu5gU6UNib" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="lj46D" id="2Xu5gU6UNig" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="2iRfu4" id="2Xu5gU6UNhV" role="2iSdaV" />
            <node concept="3F0ifn" id="2Xu5gU6UNiL" role="3EZMnx">
              <property role="3F0ifm" value="message" />
              <ref role="1k5W1q" to="tp3y:2r4rhgaDxBT" resolve="Variable" />
              <node concept="VechU" id="2Xu5gU73I3G" role="3F10Kt">
                <property role="Vb096" value="g1_qRwE/darkGreen" />
                <node concept="1iSF2X" id="2Xu5gU73I3H" role="VblUZ">
                  <property role="1iTho6" value="aa1111" />
                </node>
              </node>
              <node concept="Vb9p2" id="2Xu5gU74B_i" role="3F10Kt" />
              <node concept="VPM3Z" id="2Xu5gU7oCLb" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="2Xu5gU6UNiX" role="3EZMnx">
              <property role="3F0ifm" value=":=" />
              <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
              <node concept="VPM3Z" id="2Xu5gU7oCLl" role="3F10Kt" />
            </node>
            <node concept="3F1sOY" id="2iL65LU1O6W" role="3EZMnx">
              <ref role="1NtTu8" to="7ggn:2iL65LTUI5t" resolve="message" />
            </node>
            <node concept="3F0ifn" id="2Xu5gU6ZmN9" role="3EZMnx">
              <property role="3F0ifm" value="," />
              <node concept="11L4FC" id="2Xu5gU71779" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
          </node>
          <node concept="3EZMnI" id="2Xu5gU6UNik" role="3EZMnx">
            <node concept="3F0ifn" id="2Xu5gU6YvV7" role="3EZMnx">
              <property role="3F0ifm" value="model" />
              <ref role="1k5W1q" to="tp3y:2r4rhgaDxBT" resolve="Variable" />
              <node concept="VechU" id="2Xu5gU73I3K" role="3F10Kt">
                <property role="Vb096" value="g1_qRwE/darkGreen" />
                <node concept="1iSF2X" id="2Xu5gU73I3L" role="VblUZ">
                  <property role="1iTho6" value="aa1111" />
                </node>
              </node>
              <node concept="Vb9p2" id="2Xu5gU74B_p" role="3F10Kt" />
              <node concept="VPM3Z" id="2Xu5gU7oCLr" role="3F10Kt" />
            </node>
            <node concept="lj46D" id="2Xu5gU6UNiC" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="2iRfu4" id="2Xu5gU6UNil" role="2iSdaV" />
            <node concept="3F0ifn" id="2Xu5gU6UNj6" role="3EZMnx">
              <property role="3F0ifm" value=":=" />
              <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
              <node concept="VPM3Z" id="2Xu5gU7oCLo" role="3F10Kt" />
            </node>
            <node concept="3F1sOY" id="2iL65LU1O6Y" role="3EZMnx">
              <ref role="1NtTu8" to="7ggn:41CotWWs4Oc" resolve="object" />
            </node>
          </node>
          <node concept="3F0ifn" id="2Xu5gU6UNhE" role="3EZMnx">
            <property role="3F0ifm" value=")" />
            <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1Kikqj8rn5s" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6NLrHVVfXXZ">
    <property role="3GE5qa" value="issues" />
    <ref role="1XX52x" to="7ggn:6NLrHVVfXXx" resolve="MessageOperation" />
    <node concept="PMmxH" id="6NLrHVVfXY1" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <node concept="Vb9p2" id="6NLrHVVghAX" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6NLrHVVggJ9">
    <property role="3GE5qa" value="issues.severity" />
    <ref role="1XX52x" to="7ggn:6NLrHVVggIG" resolve="SeverityOperation" />
    <node concept="PMmxH" id="6NLrHVVggJb" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <node concept="Vb9p2" id="6NLrHVVghAV" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6NLrHVVgBIC">
    <property role="3GE5qa" value="issues.feature" />
    <ref role="1XX52x" to="7ggn:6NLrHVVgBIb" resolve="FeatureOperation" />
    <node concept="PMmxH" id="6NLrHVVgBIE" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <node concept="Vb9p2" id="6NLrHVVgBIG" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7cCgEMknoaT">
    <property role="3GE5qa" value="issues.severity" />
    <ref role="1XX52x" to="7ggn:7cCgEMkno8j" resolve="SeverityReference" />
    <node concept="3F0A7n" id="7cCgEMknoaV" role="2wV5jI">
      <ref role="1NtTu8" to="7ggn:7cCgEMkno8k" resolve="severity" />
      <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
    </node>
  </node>
  <node concept="24kQdi" id="wH5jBlQuee">
    <property role="3GE5qa" value="issues.severity" />
    <ref role="1XX52x" to="7ggn:7cCgEMkno8m" resolve="SeverityExpression" />
    <node concept="3EZMnI" id="4A0PXFcNnvd" role="2wV5jI">
      <node concept="2iRfu4" id="4A0PXFcNnve" role="2iSdaV" />
      <node concept="3F0ifn" id="4A0PXFcNnvm" role="3EZMnx">
        <property role="3F0ifm" value="#" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F1sOY" id="wH5jBlQueg" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:7cCgEMkno8r" resolve="expression" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="wH5jBlQufw">
    <property role="3GE5qa" value="issues.feature" />
    <ref role="1XX52x" to="7ggn:wH5jBlQuf2" resolve="FeatureExpression" />
    <node concept="3EZMnI" id="4A0PXFcNnv0" role="2wV5jI">
      <node concept="2iRfu4" id="4A0PXFcNnv1" role="2iSdaV" />
      <node concept="3F0ifn" id="4A0PXFcNnv9" role="3EZMnx">
        <property role="3F0ifm" value="#" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F1sOY" id="wH5jBlQufy" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:wH5jBlQuf3" resolve="expression" />
      </node>
      <node concept="A1WHr" id="4A0PXFcR8ME" role="3vIgyS">
        <ref role="2ZyFGn" to="7ggn:wH5jBlQuf1" resolve="FeatureDeclaration" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="wH5jBlQugE">
    <property role="3GE5qa" value="issues.feature" />
    <ref role="1XX52x" to="7ggn:wH5jBlQug7" resolve="FeatureReference" />
    <node concept="1iCGBv" id="wH5jBlQugG" role="2wV5jI">
      <ref role="1NtTu8" to="7ggn:6NZFdbTNCZw" resolve="feature" />
      <node concept="1sVBvm" id="wH5jBlQugI" role="1sWHZn">
        <node concept="3F0A7n" id="wH5jBlQugP" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="A1WHr" id="4A0PXFcR8MC" role="3vIgyS">
        <ref role="2ZyFGn" to="7ggn:wH5jBlQuf1" resolve="FeatureDeclaration" />
      </node>
    </node>
  </node>
  <node concept="3INDKC" id="4A0PXFcSB7R">
    <property role="3GE5qa" value="issues.feature" />
    <property role="TrG5h" value="FeatureContributionToExpression" />
    <node concept="1Qtc8_" id="4A0PXFcSBFg" role="IW6Ez">
      <node concept="3cWJ9i" id="4A0PXFcSBFk" role="1Qtc8$">
        <node concept="CtIbL" id="4A0PXFcSBFm" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="4A0PXFcSBFq" role="1Qtc8A">
        <node concept="1hCUdq" id="4A0PXFcSBFr" role="1hCUd6">
          <node concept="3clFbS" id="4A0PXFcSBFs" role="2VODD2">
            <node concept="3clFbF" id="4A0PXFcSBKj" role="3cqZAp">
              <node concept="Xl_RD" id="4A0PXFcSBKi" role="3clFbG">
                <property role="Xl_RC" value="," />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="4A0PXFcSBFt" role="IWgqQ">
          <node concept="3clFbS" id="4A0PXFcSBFu" role="2VODD2">
            <node concept="3cpWs8" id="4A0PXFcSELM" role="3cqZAp">
              <node concept="3cpWsn" id="4A0PXFcSELP" role="3cpWs9">
                <property role="TrG5h" value="nodeIssue" />
                <node concept="3Tqbb2" id="4A0PXFcSELQ" role="1tU5fm">
                  <ref role="ehGHo" to="7ggn:2iL65LTVkBJ" resolve="NodeIssue" />
                </node>
                <node concept="2OqwBi" id="4A0PXFcSELR" role="33vP2m">
                  <node concept="7Obwk" id="4A0PXFcSELS" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="4A0PXFcSELT" role="2OqNvi">
                    <node concept="1xMEDy" id="4A0PXFcSELU" role="1xVPHs">
                      <node concept="chp4Y" id="4A0PXFcSELV" role="ri$Ld">
                        <ref role="cht4Q" to="7ggn:2iL65LTVkBJ" resolve="NodeIssue" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="4A0PXFcSELW" role="1xVPHs" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4A0PXFcSENP" role="3cqZAp">
              <node concept="37vLTI" id="4A0PXFcSFrk" role="3clFbG">
                <node concept="2pJPEk" id="4A0PXFcSFw5" role="37vLTx">
                  <node concept="2pJPED" id="4A0PXFcSFA8" role="2pJPEn">
                    <ref role="2pJxaS" to="7ggn:wH5jBlQuf1" resolve="FeatureDeclaration" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4A0PXFcSEYO" role="37vLTJ">
                  <node concept="37vLTw" id="4A0PXFcSENN" role="2Oq$k0">
                    <ref role="3cqZAo" node="4A0PXFcSELP" resolve="nodeIssue" />
                  </node>
                  <node concept="3TrEf2" id="4A0PXFcSFfD" role="2OqNvi">
                    <ref role="3Tt5mk" to="7ggn:wH5jBlQug8" resolve="feature" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="4A0PXFcSBP6" role="2jiSrf">
          <node concept="3clFbS" id="4A0PXFcSBP7" role="2VODD2">
            <node concept="3cpWs8" id="4A0PXFcSDiz" role="3cqZAp">
              <node concept="3cpWsn" id="4A0PXFcSDi$" role="3cpWs9">
                <property role="TrG5h" value="nodeIssue" />
                <node concept="3Tqbb2" id="4A0PXFcSD8I" role="1tU5fm">
                  <ref role="ehGHo" to="7ggn:2iL65LTVkBJ" resolve="NodeIssue" />
                </node>
                <node concept="2OqwBi" id="4A0PXFcSDi_" role="33vP2m">
                  <node concept="7Obwk" id="4A0PXFcSDiA" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="4A0PXFcSDiB" role="2OqNvi">
                    <node concept="1xMEDy" id="4A0PXFcSDiC" role="1xVPHs">
                      <node concept="chp4Y" id="4A0PXFcSDiD" role="ri$Ld">
                        <ref role="cht4Q" to="7ggn:2iL65LTVkBJ" resolve="NodeIssue" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="4A0PXFcSDiE" role="1xVPHs" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4A0PXFcSBTd" role="3cqZAp">
              <node concept="1Wc70l" id="4A0PXFcSDtv" role="3clFbG">
                <node concept="3clFbC" id="4A0PXFcSEqC" role="3uHU7w">
                  <node concept="10Nm6u" id="4A0PXFcSEB0" role="3uHU7w" />
                  <node concept="2OqwBi" id="4A0PXFcSDK1" role="3uHU7B">
                    <node concept="37vLTw" id="4A0PXFcSDyi" role="2Oq$k0">
                      <ref role="3cqZAo" node="4A0PXFcSDi$" resolve="nodeIssue" />
                    </node>
                    <node concept="3TrEf2" id="4A0PXFcSE8O" role="2OqNvi">
                      <ref role="3Tt5mk" to="7ggn:wH5jBlQug8" resolve="feature" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="4A0PXFcSCRs" role="3uHU7B">
                  <node concept="37vLTw" id="4A0PXFcSDiF" role="3uHU7B">
                    <ref role="3cqZAo" node="4A0PXFcSDi$" resolve="nodeIssue" />
                  </node>
                  <node concept="10Nm6u" id="4A0PXFcSD7r" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cqGtN" id="4A0PXFcTh5c" role="2jZA2a">
          <node concept="3cqJkl" id="4A0PXFcTh5d" role="3cqGtW">
            <node concept="3clFbS" id="4A0PXFcTh5e" role="2VODD2">
              <node concept="3clFbF" id="4A0PXFcThhD" role="3cqZAp">
                <node concept="Xl_RD" id="4A0PXFcThhC" role="3clFbG">
                  <property role="Xl_RC" value="feature target of node issue" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="A1WHr" id="4A0PXFcSBFd" role="AmTjC">
      <ref role="2ZyFGn" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="24kQdi" id="7x27w4ybHjt">
    <property role="3GE5qa" value="models.builder" />
    <ref role="1XX52x" to="7ggn:7x27w4ybBDN" resolve="ModelBuilder" />
    <node concept="3EZMnI" id="3m__5a3k9Fn" role="2wV5jI">
      <node concept="3EZMnI" id="2JtLodk6GMu" role="3EZMnx">
        <node concept="1Bsynf" id="2JtLodk6HBH" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="2JtLodk6HBI" role="3n$kyP">
            <node concept="3clFbS" id="2JtLodk6HBJ" role="2VODD2">
              <node concept="3clFbF" id="2JtLodk6HBK" role="3cqZAp">
                <node concept="3eOSWO" id="2JtLodk6HBL" role="3clFbG">
                  <node concept="2OqwBi" id="2JtLodk6HBN" role="3uHU7B">
                    <node concept="2OqwBi" id="2JtLodk6HBO" role="2Oq$k0">
                      <node concept="pncrf" id="2JtLodk6HBP" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="2JtLodk6HBQ" role="2OqNvi">
                        <ref role="3TtcxE" to="7ggn:7x27w4ybBDU" resolve="parts" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="2JtLodk6HBR" role="2OqNvi" />
                  </node>
                  <node concept="3cmrfG" id="2JtLodke1yn" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="2JtLodk6GMv" role="2iSdaV" />
        <node concept="3F0ifn" id="3myfcgXiEUQ" role="3EZMnx">
          <property role="3F0ifm" value="transient" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          <node concept="pkWqt" id="3myfcgXiEY$" role="pqm2j">
            <node concept="3clFbS" id="3myfcgXiEY_" role="2VODD2">
              <node concept="3clFbF" id="3myfcgXiGdr" role="3cqZAp">
                <node concept="2OqwBi" id="3myfcgXiGqV" role="3clFbG">
                  <node concept="pncrf" id="3myfcgXiGdq" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3myfcgXiGD4" role="2OqNvi">
                    <ref role="3TsBF5" to="7ggn:7x27w4yh6fK" resolve="transient" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="7x27w4ybHjx" role="3EZMnx">
          <property role="3F0ifm" value="model" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          <node concept="Vb9p2" id="2JtLodk7T7C" role="3F10Kt">
            <property role="Vbekb" value="g1_k_vY/BOLD" />
          </node>
        </node>
        <node concept="3F0ifn" id="7x27w4ybHjy" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
          <node concept="ljvvj" id="3v7fNhWaLMV" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="3v7fNhWaLMW" role="3n$kyP">
              <node concept="3clFbS" id="3v7fNhWaLMX" role="2VODD2">
                <node concept="3clFbF" id="3v7fNhWaLMY" role="3cqZAp">
                  <node concept="3eOSWO" id="3v7fNhWaLMZ" role="3clFbG">
                    <node concept="2OqwBi" id="3v7fNhWaLN1" role="3uHU7B">
                      <node concept="2OqwBi" id="3v7fNhWaLN2" role="2Oq$k0">
                        <node concept="pncrf" id="3v7fNhWaLN3" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="2JtLodk6J4x" role="2OqNvi">
                          <ref role="3TtcxE" to="7ggn:7x27w4ybBDU" resolve="parts" />
                        </node>
                      </node>
                      <node concept="34oBXx" id="3v7fNhWaLN7" role="2OqNvi" />
                    </node>
                    <node concept="3cmrfG" id="2JtLodkdd3S" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F2HdR" id="lSgC6tAyYf" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="7ggn:7x27w4ybBDU" resolve="parts" />
          <node concept="lj46D" id="lSgC6tAIko" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="lSgC6tAyYi" role="2czzBx" />
          <node concept="tppnM" id="76efOMRCbx0" role="sWeuL">
            <node concept="ljvvj" id="76efOMRCbx1" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="lSgC6tCIi$" role="2czzBI" />
        </node>
        <node concept="3F0ifn" id="7x27w4ybHjS" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
        </node>
      </node>
      <node concept="2iRfu4" id="3m__5a3k9Fo" role="2iSdaV" />
      <node concept="3vyZuw" id="3m__5a3kbDx" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VLuvy" id="3m__5a3kbZY" role="3F10Kt">
        <property role="Vb096" value="g1_qRwE/darkGreen" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="lSgC6tASIK">
    <property role="3GE5qa" value="models.builder" />
    <ref role="1XX52x" to="7ggn:lSgC6t_tvE" resolve="ModelBuilderRoots" />
    <node concept="3EZMnI" id="lSgC6tASJH" role="2wV5jI">
      <node concept="3F0ifn" id="lSgC6tASJI" role="3EZMnx">
        <property role="3F0ifm" value="roots" />
        <ref role="1k5W1q" to="tpen:hFD0yD_" resolve="VariableName" />
      </node>
      <node concept="3F0ifn" id="lSgC6tAUOC" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="1iCGBv" id="lSgC6tAU$J" role="3EZMnx">
        <property role="1$x2rV" value="&lt;all&gt;" />
        <property role="1cu_pB" value="gtgu$YJ/attractsFocus" />
        <ref role="1NtTu8" to="7ggn:h2RRcAX" resolve="concept" />
        <node concept="1sVBvm" id="lSgC6tAU$K" role="1sWHZn">
          <node concept="3F0A7n" id="lSgC6tAU$L" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="3$7jql" id="lSgC6tAU$M" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
            <node concept="VechU" id="lSgC6tAU$N" role="3F10Kt">
              <property role="Vb096" value="g1_qVrt" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="lSgC6tAUP0" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="3F0ifn" id="lSgC6tASJJ" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
      </node>
      <node concept="3F1sOY" id="lSgC6tASJL" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:lSgC6t_ZNe" resolve="expression" />
      </node>
      <node concept="l2Vlx" id="lSgC6tASJM" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="lSgC6tASJd">
    <property role="3GE5qa" value="models.builder" />
    <ref role="1XX52x" to="7ggn:lSgC6t_tvC" resolve="ModelBuilderName" />
    <node concept="3EZMnI" id="lSgC6tASJf" role="2wV5jI">
      <node concept="3F0ifn" id="lSgC6tASJB" role="3EZMnx">
        <property role="3F0ifm" value="name" />
        <ref role="1k5W1q" to="tpen:hFD0yD_" resolve="VariableName" />
      </node>
      <node concept="3F0ifn" id="lSgC6tASJj" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
      </node>
      <node concept="3F1sOY" id="lSgC6tASJl" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:lSgC6t_ZNe" resolve="expression" />
      </node>
      <node concept="l2Vlx" id="lSgC6tASJm" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3jHaWB7tTo9">
    <property role="3GE5qa" value="models" />
    <ref role="1XX52x" to="7ggn:3jHaWB7tTnF" resolve="UsedLanguages" />
    <node concept="PMmxH" id="3jHaWB7tTob" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <node concept="Vb9p2" id="3jHaWB7tTod" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6_R8J$2CjFq">
    <property role="3GE5qa" value="members" />
    <ref role="1XX52x" to="7ggn:6_R8J$2CjEx" resolve="PlaceholderRuleSetMember" />
    <node concept="3F0ifn" id="6_R8J$2CjFs" role="2wV5jI">
      <node concept="VPxyj" id="6_R8J$2JIEt" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6_R8J$2KuhV">
    <property role="3GE5qa" value="members" />
    <ref role="1XX52x" to="7ggn:6_R8J$2K4_6" resolve="RuleSetComment" />
    <node concept="3EZMnI" id="6_R8J$2Kui1" role="2wV5jI">
      <node concept="2iRfu4" id="6_R8J$2Kui2" role="2iSdaV" />
      <node concept="3F0ifn" id="6_R8J$2Kuig" role="3EZMnx">
        <property role="3F0ifm" value="//" />
        <ref role="1k5W1q" to="tpen:hshO_Yc" resolve="Comment" />
      </node>
      <node concept="3F0A7n" id="6_R8J$2KuhX" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="7ggn:6_R8J$2K4_d" resolve="text" />
        <ref role="1k5W1q" to="tpen:hshO_Yc" resolve="Comment" />
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="1wEcoXjIDwS">
    <property role="3GE5qa" value="attributes" />
    <ref role="aqKnT" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="22hDWg" id="O8fc$S5ZQa" role="22hAXT">
      <property role="TrG5h" value="AttributeValue" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjIDwV" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjIDwT" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjIDwU" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="1wEcoXjIDwX" role="1Qtc8A">
        <node concept="27VH4U" id="1wEcoXjIDwY" role="aenpu">
          <node concept="3clFbS" id="1wEcoXjIDwZ" role="2VODD2">
            <node concept="3clFbF" id="1wEcoXjIDx0" role="3cqZAp">
              <node concept="1Wc70l" id="1wEcoXjIDx1" role="3clFbG">
                <node concept="3clFbC" id="1wEcoXjIDx2" role="3uHU7B">
                  <node concept="2OqwBi" id="1wEcoXjIDx3" role="3uHU7B">
                    <node concept="7Obwk" id="1wEcoXjIDxa" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1wEcoXjIDx5" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fz3vP1I" resolve="initializer" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="1wEcoXjIDx6" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="1wEcoXjIDx7" role="3uHU7w">
                  <node concept="7Obwk" id="1wEcoXjIDxb" role="2Oq$k0" />
                  <node concept="2qgKlT" id="1wEcoXjIDx9" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:hEwJfMK" resolve="isInitializable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="1wEcoXjIDxc" role="aenpr">
          <node concept="1hCUdq" id="1wEcoXjIDxd" role="1hCUd6">
            <node concept="3clFbS" id="1wEcoXjIDxe" role="2VODD2">
              <node concept="3clFbF" id="1wEcoXjIDxf" role="3cqZAp">
                <node concept="Xl_RD" id="1wEcoXjIDxg" role="3clFbG">
                  <property role="Xl_RC" value=":=" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqGtN" id="1wEcoXjIDxh" role="2jZA2a">
            <node concept="3cqJkl" id="1wEcoXjIDxi" role="3cqGtW">
              <node concept="3clFbS" id="1wEcoXjIDxj" role="2VODD2">
                <node concept="3clFbF" id="1wEcoXjIDxk" role="3cqZAp">
                  <node concept="Xl_RD" id="1wEcoXjIDxl" role="3clFbG">
                    <property role="Xl_RC" value="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="1wEcoXjIDxm" role="IWgqQ">
            <node concept="3clFbS" id="1wEcoXjIDxn" role="2VODD2">
              <node concept="3cpWs8" id="1wEcoXjIDxo" role="3cqZAp">
                <node concept="3cpWsn" id="1wEcoXjIDxp" role="3cpWs9">
                  <property role="TrG5h" value="result" />
                  <node concept="3Tqbb2" id="1wEcoXjIDxq" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
                  </node>
                  <node concept="2OqwBi" id="1wEcoXjIDxr" role="33vP2m">
                    <node concept="1rpKSd" id="1wEcoXjIDxD" role="2Oq$k0" />
                    <node concept="15TzpJ" id="1wEcoXjIDxt" role="2OqNvi">
                      <ref role="I8UWU" to="tpee:fz3vP1J" resolve="Expression" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1wEcoXjIDxu" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjIDxv" role="3clFbG">
                  <node concept="2OqwBi" id="1wEcoXjIDxw" role="2Oq$k0">
                    <node concept="7Obwk" id="1wEcoXjIDxB" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1wEcoXjIDxy" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fz3vP1I" resolve="initializer" />
                    </node>
                  </node>
                  <node concept="2oxUTD" id="1wEcoXjIDxz" role="2OqNvi">
                    <node concept="37vLTw" id="1wEcoXjIDx$" role="2oxUTC">
                      <ref role="3cqZAo" node="1wEcoXjIDxp" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1wEcoXjIDxJ" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjIDxE" role="3clFbG">
                  <node concept="7Obwk" id="1wEcoXjIDxC" role="2Oq$k0" />
                  <node concept="1OKiuA" id="1wEcoXjIDxF" role="2OqNvi">
                    <node concept="1Q80Hx" id="1wEcoXjIDxG" role="lBI5i" />
                    <node concept="2B6iha" id="1wEcoXjIDxH" role="lGT1i">
                      <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="1wEcoXjIDxI" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
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
  <node concept="3ICUPy" id="1wEcoXjJMF1">
    <property role="3GE5qa" value="attributes" />
    <ref role="aqKnT" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="22hDWg" id="O8fc$S5ZQb" role="22hAXT">
      <property role="TrG5h" value="Attribute_ApplySideTransforms" />
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJMF2" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJMF3" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJMF4" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="1wEcoXjJMF5" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="mvV$s" id="1wEcoXjJMF6" role="1Qtc8A">
        <node concept="A1WHr" id="1wEcoXjJMF0" role="A14EM">
          <ref role="2ZyFGn" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
        </node>
      </node>
    </node>
    <node concept="1Qtc8_" id="1wEcoXjJMF7" role="IW6Ez">
      <node concept="3eGOoe" id="1wEcoXjJMF8" role="1Qtc8$" />
      <node concept="mvV$s" id="1wEcoXjJMFb" role="1Qtc8A">
        <node concept="3cWJ9i" id="1wEcoXjJMF9" role="3vPi4">
          <node concept="CtIbL" id="1wEcoXjJMFa" role="CtIbM">
            <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
          </node>
        </node>
        <node concept="A1WHr" id="1wEcoXjJMFc" role="A14EM">
          <ref role="2ZyFGn" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="30GBB6YuCz2">
    <property role="3GE5qa" value="attributes" />
    <ref role="aqKnT" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="22hDWj" id="O8fc$S5ZQc" role="22hAXT" />
    <node concept="1Qtc8_" id="1wEcoXjIDwN" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjIDwO" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjIDwP" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="1wEcoXjIDwQ" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="mvV$s" id="5Cu8Hhs1cbS" role="1Qtc8A">
        <node concept="A1WHu" id="5Cu8Hhs1cbZ" role="A14EM">
          <ref role="A1WHt" node="5Cu8Hhs1bK1" resolve="AttributeOpposite" />
        </node>
      </node>
      <node concept="mvV$s" id="1wEcoXjIDxM" role="1Qtc8A">
        <node concept="A1WHu" id="1wEcoXjIDxN" role="A14EM">
          <ref role="A1WHt" node="1wEcoXjIDwS" resolve="AttributeValue" />
        </node>
      </node>
      <node concept="mvV$s" id="1wEcoXjIE01" role="1Qtc8A">
        <node concept="A1WHu" id="1wEcoXjIE02" role="A14EM">
          <ref role="A1WHt" to="tpen:1wEcoXjIDY6" resolve="ArrayAndGenericTypesFromTypesInVarDeclarations" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="5oSrT6JjrFk">
    <property role="3GE5qa" value="attributes" />
    <ref role="aqKnT" to="7ggn:4$MeK2bvRdy" resolve="AttributeOperation" />
    <node concept="22hDWj" id="O8fc$S5ZQd" role="22hAXT" />
    <node concept="1Qtc8_" id="5oSrT6JjrFl" role="IW6Ez">
      <node concept="3cWJ9i" id="5oSrT6JjrFr" role="1Qtc8$">
        <node concept="CtIbL" id="5oSrT6JjrFz" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
        <node concept="CtIbL" id="5oSrT6JjrFt" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
      <node concept="mvV$s" id="5oSrT6Jk1HR" role="1Qtc8A">
        <node concept="mvVNg" id="5oSrT6Jk1HU" role="mvV$0">
          <node concept="3clFbS" id="5oSrT6Jk1HV" role="2VODD2">
            <node concept="3clFbF" id="5oSrT6Jk1Lq" role="3cqZAp">
              <node concept="2OqwBi" id="5oSrT6Jk1Z0" role="3clFbG">
                <node concept="7Obwk" id="5oSrT6Jk1Lp" role="2Oq$k0" />
                <node concept="1mfA1w" id="5oSrT6Jk2lv" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="4vjy7c528U9">
    <property role="3GE5qa" value="structs" />
    <ref role="aqKnT" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
    <node concept="22hDWj" id="O8fc$S5ZQe" role="22hAXT" />
    <node concept="1Qtc8_" id="4vjy7c529M7" role="IW6Ez">
      <node concept="3cWJ9i" id="4vjy7c529M8" role="1Qtc8$">
        <node concept="CtIbL" id="4vjy7c529M9" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
      <node concept="aenpk" id="4vjy7c529Ma" role="1Qtc8A">
        <node concept="27VH4U" id="4vjy7c529Mb" role="aenpu">
          <node concept="3clFbS" id="4vjy7c529Mc" role="2VODD2">
            <node concept="3clFbF" id="4vjy7c529Md" role="3cqZAp">
              <node concept="2OqwBi" id="4vjy7c52f$K" role="3clFbG">
                <node concept="2OqwBi" id="4vjy7c52d2r" role="2Oq$k0">
                  <node concept="7Obwk" id="4vjy7c52cFm" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="4vjy7c52dw8" role="2OqNvi">
                    <ref role="3TtcxE" to="7ggn:4$bpWrNHODa" resolve="extends" />
                  </node>
                </node>
                <node concept="1v1jN8" id="4vjy7c52hn8" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="4vjy7c529Mn" role="aenpr">
          <node concept="1hCUdq" id="4vjy7c529Mo" role="1hCUd6">
            <node concept="3clFbS" id="4vjy7c529Mp" role="2VODD2">
              <node concept="3clFbF" id="4vjy7c529Mq" role="3cqZAp">
                <node concept="Xl_RD" id="4vjy7c52iKV" role="3clFbG">
                  <property role="Xl_RC" value="extends" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqGtN" id="4vjy7c529Ms" role="2jZA2a">
            <node concept="3cqJkl" id="4vjy7c529Mt" role="3cqGtW">
              <node concept="3clFbS" id="4vjy7c529Mu" role="2VODD2">
                <node concept="3clFbF" id="4vjy7c529Mv" role="3cqZAp">
                  <node concept="Xl_RD" id="4vjy7c529Mw" role="3clFbG">
                    <property role="Xl_RC" value="extends" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="4vjy7c529Mx" role="IWgqQ">
            <node concept="3clFbS" id="4vjy7c529My" role="2VODD2">
              <node concept="3cpWs8" id="4vjy7c529Mz" role="3cqZAp">
                <node concept="3cpWsn" id="4vjy7c529M$" role="3cpWs9">
                  <property role="TrG5h" value="result" />
                  <node concept="3Tqbb2" id="4vjy7c529M_" role="1tU5fm">
                    <ref role="ehGHo" to="7ggn:4$bpWrNHOD7" resolve="StructClassReference" />
                  </node>
                  <node concept="2OqwBi" id="4vjy7c529MA" role="33vP2m">
                    <node concept="1rpKSd" id="4vjy7c529MB" role="2Oq$k0" />
                    <node concept="15TzpJ" id="4vjy7c529MC" role="2OqNvi">
                      <ref role="I8UWU" to="7ggn:4$bpWrNHOD7" resolve="StructClassReference" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4vjy7c529MD" role="3cqZAp">
                <node concept="2OqwBi" id="4vjy7c52udZ" role="3clFbG">
                  <node concept="2OqwBi" id="4vjy7c529MF" role="2Oq$k0">
                    <node concept="7Obwk" id="4vjy7c529MG" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4vjy7c52szp" role="2OqNvi">
                      <ref role="3TtcxE" to="7ggn:4$bpWrNHODa" resolve="extends" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="4vjy7c52vNb" role="2OqNvi">
                    <node concept="37vLTw" id="4vjy7c52w2D" role="25WWJ7">
                      <ref role="3cqZAo" node="4vjy7c529M$" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4vjy7c529MK" role="3cqZAp">
                <node concept="2OqwBi" id="4vjy7c529ML" role="3clFbG">
                  <node concept="7Obwk" id="4vjy7c529MM" role="2Oq$k0" />
                  <node concept="1OKiuA" id="4vjy7c529MN" role="2OqNvi">
                    <node concept="1Q80Hx" id="4vjy7c529MO" role="lBI5i" />
                    <node concept="2B6iha" id="4vjy7c529MP" role="lGT1i">
                      <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="4vjy7c529MQ" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
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
  <node concept="3ICUPy" id="4A0PXFcP9C1">
    <property role="3GE5qa" value="issues" />
    <ref role="aqKnT" to="7ggn:7cCgEMkno8i" resolve="SeverityDeclaration" />
    <node concept="22hDWj" id="O8fc$S5ZQf" role="22hAXT" />
    <node concept="1Qtc8_" id="4A0PXFcPdft" role="IW6Ez">
      <node concept="3eGOoe" id="4A0PXFcPdfx" role="1Qtc8$" />
      <node concept="1GhOrh" id="4A0PXFcPdf$" role="1Qtc8A">
        <node concept="1GhMSn" id="4A0PXFcPdf_" role="1GhOrs">
          <node concept="3clFbS" id="4A0PXFcPdfA" role="2VODD2">
            <node concept="3clFbF" id="4A0PXFcPej7" role="3cqZAp">
              <node concept="2OqwBi" id="4A0PXFcPeNu" role="3clFbG">
                <node concept="1XH99k" id="4A0PXFcPej6" role="2Oq$k0">
                  <ref role="1XH99l" to="7ggn:41CotWWs4Oo" resolve="MessageSeverity" />
                </node>
                <node concept="2ViDtN" id="4A0PXFcPf6Z" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="4A0PXFcPf9E" role="1GhOri">
          <node concept="1hCUdq" id="4A0PXFcPf9G" role="1hCUd6">
            <node concept="3clFbS" id="4A0PXFcPf9I" role="2VODD2">
              <node concept="3clFbF" id="4A0PXFcPfif" role="3cqZAp">
                <node concept="2OqwBi" id="4A0PXFcPfro" role="3clFbG">
                  <node concept="2ZBlsa" id="4A0PXFcPfie" role="2Oq$k0" />
                  <node concept="liA8E" id="4A0PXFcPfBQ" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SEnumerationLiteral.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="4A0PXFcPf9K" role="IWgqQ">
            <node concept="3clFbS" id="4A0PXFcPf9M" role="2VODD2">
              <node concept="3clFbF" id="4A0PXFcPfH1" role="3cqZAp">
                <node concept="37vLTI" id="4A0PXFcPhA7" role="3clFbG">
                  <node concept="2pJPEk" id="4A0PXFcPhG1" role="37vLTx">
                    <node concept="2pJPED" id="4A0PXFcPhK2" role="2pJPEn">
                      <ref role="2pJxaS" to="7ggn:7cCgEMkno8j" resolve="SeverityReference" />
                      <node concept="2pJxcG" id="4A0PXFcPhRe" role="2pJxcM">
                        <ref role="2pJxcJ" to="7ggn:7cCgEMkno8k" resolve="severity" />
                        <node concept="WxPPo" id="42AmA0B3fVo" role="28ntcv">
                          <node concept="2ZBlsa" id="4A0PXFcPhTK" role="WxPPp" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4A0PXFcPh79" role="37vLTJ">
                    <node concept="3TrEf2" id="4A0PXFcPhoh" role="2OqNvi">
                      <ref role="3Tt5mk" to="7ggn:7cCgEMkno8n" resolve="severity" />
                    </node>
                    <node concept="2OqwBi" id="4A0PXFcUEKR" role="2Oq$k0">
                      <node concept="7Obwk" id="4A0PXFcUEKS" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="4A0PXFcUEKT" role="2OqNvi">
                        <node concept="1xMEDy" id="4A0PXFcUEKU" role="1xVPHs">
                          <node concept="chp4Y" id="4A0PXFcUEKV" role="ri$Ld">
                            <ref role="cht4Q" to="7ggn:41CotWWrJg$" resolve="Issue" />
                          </node>
                        </node>
                        <node concept="1xIGOp" id="4A0PXFcUEKW" role="1xVPHs" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="27VH4U" id="4A0PXFcUDlQ" role="2jiSrf">
            <node concept="3clFbS" id="4A0PXFcUDlR" role="2VODD2">
              <node concept="3clFbF" id="4A0PXFcUD$$" role="3cqZAp">
                <node concept="3y3z36" id="4A0PXFcUEsR" role="3clFbG">
                  <node concept="10Nm6u" id="4A0PXFcUE_j" role="3uHU7w" />
                  <node concept="2OqwBi" id="4A0PXFcUDNe" role="3uHU7B">
                    <node concept="7Obwk" id="4A0PXFcUD$z" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="4A0PXFcUDWc" role="2OqNvi">
                      <node concept="1xMEDy" id="4A0PXFcUDWe" role="1xVPHs">
                        <node concept="chp4Y" id="4A0PXFcUE0d" role="ri$Ld">
                          <ref role="cht4Q" to="7ggn:41CotWWrJg$" resolve="Issue" />
                        </node>
                      </node>
                      <node concept="1xIGOp" id="4A0PXFcUEal" role="1xVPHs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2ZThk1" id="4A0PXFcPedD" role="2ZBHrp">
          <ref role="2ZWj4r" to="7ggn:41CotWWs4Oo" resolve="MessageSeverity" />
        </node>
      </node>
      <node concept="IWgqT" id="4A0PXFcQ5z8" role="1Qtc8A">
        <node concept="1hCUdq" id="4A0PXFcQ5za" role="1hCUd6">
          <node concept="3clFbS" id="4A0PXFcQ5zc" role="2VODD2">
            <node concept="3clFbF" id="4A0PXFcQ5Hy" role="3cqZAp">
              <node concept="Xl_RD" id="4A0PXFcQ5Hx" role="3clFbG">
                <property role="Xl_RC" value="#" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="4A0PXFcQ5ze" role="IWgqQ">
          <node concept="3clFbS" id="4A0PXFcQ5zg" role="2VODD2">
            <node concept="3clFbF" id="4A0PXFcQ5IK" role="3cqZAp">
              <node concept="37vLTI" id="4A0PXFcQ7ft" role="3clFbG">
                <node concept="2pJPEk" id="4A0PXFcQ7x4" role="37vLTx">
                  <node concept="2pJPED" id="4A0PXFcQ7Cj" role="2pJPEn">
                    <ref role="2pJxaS" to="7ggn:7cCgEMkno8m" resolve="SeverityExpression" />
                    <node concept="2pIpSj" id="4A0PXFcQ7Jv" role="2pJxcM">
                      <ref role="2pIpSl" to="7ggn:7cCgEMkno8r" resolve="expression" />
                      <node concept="36biLy" id="4A0PXFcQ7M3" role="28nt2d">
                        <node concept="10Nm6u" id="4A0PXFcQ7M1" role="36biLW" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4A0PXFcQ6zQ" role="37vLTJ">
                  <node concept="3TrEf2" id="4A0PXFcQ6NZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="7ggn:7cCgEMkno8n" resolve="severity" />
                  </node>
                  <node concept="2OqwBi" id="4A0PXFcUF1Y" role="2Oq$k0">
                    <node concept="7Obwk" id="4A0PXFcUF1Z" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="4A0PXFcUF20" role="2OqNvi">
                      <node concept="1xMEDy" id="4A0PXFcUF21" role="1xVPHs">
                        <node concept="chp4Y" id="4A0PXFcUF22" role="ri$Ld">
                          <ref role="cht4Q" to="7ggn:41CotWWrJg$" resolve="Issue" />
                        </node>
                      </node>
                      <node concept="1xIGOp" id="4A0PXFcUF23" role="1xVPHs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cqGtN" id="4A0PXFcTMfU" role="2jZA2a">
          <node concept="3cqJkl" id="4A0PXFcTMfV" role="3cqGtW">
            <node concept="3clFbS" id="4A0PXFcTMfW" role="2VODD2">
              <node concept="3clFbF" id="4A0PXFcTMEJ" role="3cqZAp">
                <node concept="Xl_RD" id="4A0PXFcTMEI" role="3clFbG">
                  <property role="Xl_RC" value="severity expression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="4A0PXFcUERp" role="2jiSrf">
          <node concept="3clFbS" id="4A0PXFcUERq" role="2VODD2">
            <node concept="3clFbF" id="4A0PXFcUERr" role="3cqZAp">
              <node concept="3y3z36" id="4A0PXFcUERs" role="3clFbG">
                <node concept="10Nm6u" id="4A0PXFcUERt" role="3uHU7w" />
                <node concept="2OqwBi" id="4A0PXFcUERu" role="3uHU7B">
                  <node concept="7Obwk" id="4A0PXFcUERv" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="4A0PXFcUERw" role="2OqNvi">
                    <node concept="1xMEDy" id="4A0PXFcUERx" role="1xVPHs">
                      <node concept="chp4Y" id="4A0PXFcUERy" role="ri$Ld">
                        <ref role="cht4Q" to="7ggn:41CotWWrJg$" resolve="Issue" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="4A0PXFcUERz" role="1xVPHs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="6_R8J$2IpqO">
    <ref role="aqKnT" to="7ggn:6_R8J$2CjE3" resolve="RuleSetMember" />
    <node concept="22hDWj" id="O8fc$S5ZQg" role="22hAXT" />
    <node concept="3eGOop" id="6_R8J$2IpqS" role="3ft7WO">
      <ref role="3EoQqy" to="7ggn:29R9$zZUovC" resolve="Rule" />
      <node concept="ucgPf" id="6_R8J$2IpqU" role="3aKz83">
        <node concept="3clFbS" id="6_R8J$2IpqW" role="2VODD2">
          <node concept="3clFbF" id="6_R8J$2IpAm" role="3cqZAp">
            <node concept="2pJPEk" id="6_R8J$2IpAk" role="3clFbG">
              <node concept="2pJPED" id="6_R8J$2IpGh" role="2pJPEn">
                <ref role="2pJxaS" to="7ggn:29R9$zZUovC" resolve="Rule" />
                <node concept="2pIpSj" id="6_R8J$2IpLQ" role="2pJxcM">
                  <ref role="2pIpSl" to="7ggn:6HWpSUFcW9N" resolve="statement" />
                  <node concept="36biLy" id="6_R8J$2IpOM" role="28nt2d">
                    <node concept="10Nm6u" id="6_R8J$2IpOK" role="36biLW" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="6_R8J$2Iqeg" role="upBLP">
        <node concept="2h3Zct" id="6_R8J$2IPU_" role="16NeZM">
          <property role="2h4Kg1" value="rule" />
        </node>
      </node>
      <node concept="16NL0t" id="3cfqRNbvvRm" role="upBLP">
        <node concept="2h3Zct" id="3cfqRNbvvRZ" role="16NL0q">
          <property role="2h4Kg1" value="rule" />
        </node>
      </node>
    </node>
    <node concept="3eGOop" id="6_R8J$2IpvZ" role="3ft7WO">
      <ref role="3EoQqy" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
      <node concept="ucgPf" id="6_R8J$2Ipw1" role="3aKz83">
        <node concept="3clFbS" id="6_R8J$2Ipw3" role="2VODD2">
          <node concept="3clFbF" id="6_R8J$2IpRL" role="3cqZAp">
            <node concept="2pJPEk" id="6_R8J$2IpRJ" role="3clFbG">
              <node concept="2pJPED" id="6_R8J$2IpYI" role="2pJPEn">
                <ref role="2pJxaS" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
                <node concept="2pIpSj" id="6_R8J$2Iq38" role="2pJxcM">
                  <ref role="2pIpSl" to="tpee:4VkOLwjf83e" resolve="type" />
                  <node concept="36biLy" id="6_R8J$2Iqai" role="28nt2d">
                    <node concept="10Nm6u" id="6_R8J$2Iqag" role="36biLW" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="6_R8J$2IqlG" role="upBLP">
        <node concept="2h3Zct" id="6_R8J$2IPZA" role="16NeZM">
          <property role="2h4Kg1" value="attr" />
        </node>
      </node>
      <node concept="16NL0t" id="3cfqRNbvvNU" role="upBLP">
        <node concept="2h3Zct" id="3cfqRNbvvOz" role="16NL0q">
          <property role="2h4Kg1" value="attribute" />
        </node>
      </node>
    </node>
    <node concept="3eGOop" id="3uCFKuPr2df" role="3ft7WO">
      <ref role="3EoQqy" to="7ggn:3$OkZkHRDLt" resolve="Method" />
      <node concept="16NfWO" id="3uCFKuPr30M" role="upBLP">
        <node concept="2h3Zct" id="3uCFKuPr31n" role="16NeZM">
          <property role="2h4Kg1" value="meth" />
        </node>
      </node>
      <node concept="16NL0t" id="3uCFKuPr31Y" role="upBLP">
        <node concept="2h3Zct" id="3uCFKuPr38m" role="16NL0q">
          <property role="2h4Kg1" value="method" />
        </node>
      </node>
      <node concept="ucgPf" id="3uCFKuPr2dh" role="3aKz83">
        <node concept="3clFbS" id="3uCFKuPr2dj" role="2VODD2">
          <node concept="3clFbF" id="3uCFKuPr2pB" role="3cqZAp">
            <node concept="2pJPEk" id="3uCFKuPr2pD" role="3clFbG">
              <node concept="2pJPED" id="3uCFKuPr2pE" role="2pJPEn">
                <ref role="2pJxaS" to="7ggn:3$OkZkHRDLt" resolve="Method" />
                <node concept="2pIpSj" id="3uCFKuPr3xN" role="2pJxcM">
                  <ref role="2pIpSl" to="tpee:fzclF7X" resolve="returnType" />
                  <node concept="36biLy" id="3uCFKuPr3Cl" role="28nt2d">
                    <node concept="10Nm6u" id="3uCFKuPr3Cj" role="36biLW" />
                  </node>
                </node>
                <node concept="2pIpSj" id="3uCFKuP$gwh" role="2pJxcM">
                  <ref role="2pIpSl" to="tpee:h9B3oxE" resolve="visibility" />
                  <node concept="2pJPED" id="3uCFKuP$gAO" role="28nt2d">
                    <ref role="2pJxaS" to="tpee:gFTm1ZL" resolve="PublicVisibility" />
                  </node>
                </node>
                <node concept="2pIpSj" id="3uCFKuPDGX7" role="2pJxcM">
                  <ref role="2pIpSl" to="tpee:fzclF7Z" resolve="body" />
                  <node concept="2pJPED" id="3uCFKuPDH3G" role="28nt2d">
                    <ref role="2pJxaS" to="tpee:fzclF80" resolve="StatementList" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3eGOop" id="6_R8J$2K76M" role="3ft7WO">
      <ref role="3EoQqy" to="7ggn:6_R8J$2K4_6" resolve="RuleSetComment" />
      <node concept="ucgPf" id="6_R8J$2K76O" role="3aKz83">
        <node concept="3clFbS" id="6_R8J$2K76Q" role="2VODD2">
          <node concept="3clFbF" id="6_R8J$2K7bQ" role="3cqZAp">
            <node concept="2pJPEk" id="6_R8J$2K7bO" role="3clFbG">
              <node concept="2pJPED" id="6_R8J$2K7fB" role="2pJPEn">
                <ref role="2pJxaS" to="7ggn:6_R8J$2K4_6" resolve="RuleSetComment" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="6_R8J$2K7kY" role="upBLP">
        <node concept="2h3Zct" id="3uCFKuPr3OB" role="16NeZM">
          <property role="2h4Kg1" value="//" />
        </node>
      </node>
      <node concept="16NL0t" id="3cfqRNbvvJm" role="upBLP">
        <node concept="2h3Zct" id="3cfqRNbvvK5" role="16NL0q">
          <property role="2h4Kg1" value="comment" />
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="6_R8J$2Iqne" role="3ft7WO" />
  </node>
  <node concept="24kQdi" id="4IP40Bi38Sx">
    <property role="3GE5qa" value="quotations" />
    <ref role="1XX52x" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
    <node concept="3EZMnI" id="4IP40Bi38Sz" role="2wV5jI">
      <node concept="1iCGBv" id="4IP40Bi38S$" role="3EZMnx">
        <ref role="1NtTu8" to="tp3r:4IP40Bi38Ss" resolve="link" />
        <ref role="1k5W1q" to="tpen:hFD0yD_" resolve="VariableName" />
        <node concept="1sVBvm" id="4IP40Bi38S_" role="1sWHZn">
          <node concept="3F0A7n" id="4IP40Bi38SA" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpce:fA0kJcN" resolve="role" />
          </node>
        </node>
        <node concept="VechU" id="4IP40Bi38SF" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/DARK_MAGENTA" />
        </node>
      </node>
      <node concept="3F0ifn" id="4IP40Bi38SB" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
      </node>
      <node concept="3F1sOY" id="4IP40Bi38SC" role="3EZMnx">
        <ref role="1NtTu8" to="tp3r:4IP40Bi2KcQ" resolve="expression" />
        <node concept="pkWqt" id="1o$2SUuvNcr" role="pqm2j">
          <node concept="3clFbS" id="1o$2SUuvNcs" role="2VODD2">
            <node concept="3clFbF" id="1o$2SUuvNka" role="3cqZAp">
              <node concept="2OqwBi" id="1o$2SUuvNPy" role="3clFbG">
                <node concept="2OqwBi" id="1o$2SUuvNy4" role="2Oq$k0">
                  <node concept="pncrf" id="1o$2SUuvNk9" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1o$2SUuvNDh" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcQ" resolve="expression" />
                  </node>
                </node>
                <node concept="3x8VRR" id="1o$2SUuvO0f" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="1o$2SUuvNcg" role="3EZMnx">
        <ref role="1NtTu8" to="tp3r:1o$2SUuutG3" resolve="initValue" />
        <node concept="pkWqt" id="1o$2SUuvObC" role="pqm2j">
          <node concept="3clFbS" id="1o$2SUuvObD" role="2VODD2">
            <node concept="3clFbF" id="1o$2SUuvOc6" role="3cqZAp">
              <node concept="2OqwBi" id="1o$2SUuvOny" role="3clFbG">
                <node concept="2OqwBi" id="1o$2SUuvOjW" role="2Oq$k0">
                  <node concept="pncrf" id="1o$2SUuvOc5" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1o$2SUuvOl0" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcQ" resolve="expression" />
                  </node>
                </node>
                <node concept="3w_OXm" id="1o$2SUuvOoN" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="A1WHu" id="1o$2SUuvODS" role="3vIgyS">
          <ref role="A1WHt" to="tp3p:6Vf8jUpoSRI" resolve="NodeBuilderInitLink_ExpressionMenu" />
        </node>
      </node>
      <node concept="l2Vlx" id="4IP40Bi38SD" role="2iSdaV" />
    </node>
    <node concept="2aJ2om" id="4apidoKBZC9" role="CpUAK">
      <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
    </node>
  </node>
  <node concept="24kQdi" id="4IP40Bi2KcE">
    <property role="3GE5qa" value="quotations" />
    <ref role="1XX52x" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
    <node concept="3EZMnI" id="4IP40Bi2KcG" role="2wV5jI">
      <node concept="1iCGBv" id="4IP40Bi2KcJ" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hFD0yD_" resolve="VariableName" />
        <ref role="1NtTu8" to="tp3r:4IP40Bi2KcA" resolve="property" />
        <node concept="1sVBvm" id="4IP40Bi2KcK" role="1sWHZn">
          <node concept="3F0A7n" id="4IP40Bi2KcM" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4IP40Bi2KcO" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
      </node>
      <node concept="3F1sOY" id="4IP40Bi2KcR" role="3EZMnx">
        <ref role="1NtTu8" to="tp3r:4IP40Bi2KcQ" resolve="expression" />
        <node concept="pkWqt" id="1o$2SUuvOOK" role="pqm2j">
          <node concept="3clFbS" id="1o$2SUuvOOL" role="2VODD2">
            <node concept="3clFbF" id="1o$2SUuvOSL" role="3cqZAp">
              <node concept="2OqwBi" id="1o$2SUuvPiS" role="3clFbG">
                <node concept="2OqwBi" id="1o$2SUuvP5Y" role="2Oq$k0">
                  <node concept="pncrf" id="1o$2SUuvOSK" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1o$2SUuvP9m" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcQ" resolve="expression" />
                  </node>
                </node>
                <node concept="3x8VRR" id="1o$2SUuvPvx" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="1o$2SUuvOOB" role="3EZMnx">
        <ref role="1NtTu8" to="tp3r:1o$2SUuutyh" resolve="initValue" />
        <node concept="pkWqt" id="1o$2SUuvPBk" role="pqm2j">
          <node concept="3clFbS" id="1o$2SUuvPBl" role="2VODD2">
            <node concept="3clFbF" id="1o$2SUuvPBH" role="3cqZAp">
              <node concept="2OqwBi" id="1o$2SUuvPBI" role="3clFbG">
                <node concept="2OqwBi" id="1o$2SUuvPBJ" role="2Oq$k0">
                  <node concept="pncrf" id="1o$2SUuvPBK" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1o$2SUuvPBL" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcQ" resolve="expression" />
                  </node>
                </node>
                <node concept="3w_OXm" id="1o$2SUuvPGV" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="4IP40Bi2KcI" role="2iSdaV" />
    </node>
    <node concept="2aJ2om" id="4apidoKBZAT" role="CpUAK">
      <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
    </node>
  </node>
  <node concept="24kQdi" id="36ILQ9yf5hq">
    <property role="3GE5qa" value="models" />
    <ref role="1XX52x" to="7ggn:36ILQ9yf5gW" resolve="ModuleOperation" />
    <node concept="PMmxH" id="36ILQ9yf5hs" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <node concept="Vb9p2" id="36ILQ9yf6Sw" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2mO6frpBuLz">
    <property role="3GE5qa" value="models.builder" />
    <ref role="1XX52x" to="7ggn:2mO6frpBuKw" resolve="ModelBuilderImports" />
    <node concept="3EZMnI" id="2mO6frpBuL_" role="2wV5jI">
      <node concept="3F0ifn" id="2mO6frpBuLA" role="3EZMnx">
        <property role="3F0ifm" value="imports" />
        <ref role="1k5W1q" to="tpen:hFD0yD_" resolve="VariableName" />
      </node>
      <node concept="3F0ifn" id="2mO6frpBuLB" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
      </node>
      <node concept="3F1sOY" id="2mO6frpBuLD" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:lSgC6t_ZNe" resolve="expression" />
      </node>
      <node concept="l2Vlx" id="2mO6frpBuLE" role="2iSdaV" />
    </node>
  </node>
  <node concept="3ICUPy" id="5Cu8Hhs1bK1">
    <property role="3GE5qa" value="attributes" />
    <ref role="aqKnT" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="1Qtc8_" id="5Cu8Hhs1bPJ" role="IW6Ez">
      <node concept="1GhOrh" id="5Cu8Hhs1fTf" role="1Qtc8A">
        <node concept="1GhMSn" id="5Cu8Hhs1fTh" role="1GhOrs">
          <node concept="3clFbS" id="5Cu8Hhs1fTj" role="2VODD2">
            <node concept="3cpWs6" id="5Cu8Hhs5Kol" role="3cqZAp">
              <node concept="2OqwBi" id="5Cu8Hhs5KIN" role="3cqZAk">
                <node concept="7Obwk" id="5Cu8Hhs5Kr_" role="2Oq$k0" />
                <node concept="2qgKlT" id="5Cu8Hhs5LbS" role="2OqNvi">
                  <ref role="37wK5l" to="us1s:5Cu8Hhs5xC3" resolve="possibleOpposites" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="5Cu8Hhs1I7Z" role="1GhOri">
          <node concept="1hCUdq" id="5Cu8Hhs1I81" role="1hCUd6">
            <node concept="3clFbS" id="5Cu8Hhs1I83" role="2VODD2">
              <node concept="3cpWs6" id="5Cu8Hhs1I$6" role="3cqZAp">
                <node concept="3cpWs3" id="5Cu8Hhs1ISS" role="3cqZAk">
                  <node concept="2OqwBi" id="5Cu8Hhs1JhH" role="3uHU7w">
                    <node concept="2ZBlsa" id="5Cu8Hhs1IXC" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5Cu8Hhs1JSk" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5Cu8Hhs1I$Q" role="3uHU7B">
                    <property role="Xl_RC" value="&lt;-&gt; " />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="5Cu8Hhs1I85" role="IWgqQ">
            <node concept="3clFbS" id="5Cu8Hhs1I87" role="2VODD2">
              <node concept="3clFbF" id="5Cu8Hhs1K0H" role="3cqZAp">
                <node concept="37vLTI" id="5Cu8Hhs1Lkv" role="3clFbG">
                  <node concept="2ZBlsa" id="5Cu8Hhs1LmG" role="37vLTx" />
                  <node concept="2OqwBi" id="5Cu8Hhs1Kg7" role="37vLTJ">
                    <node concept="7Obwk" id="5Cu8Hhs1K0G" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5Cu8Hhs1KEB" role="2OqNvi">
                      <ref role="3Tt5mk" to="7ggn:5Cu8Hhs0NPL" resolve="opposite" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqGtN" id="5Cu8Hhs1LCV" role="2jZA2a">
            <node concept="3cqJkl" id="5Cu8Hhs1LCW" role="3cqGtW">
              <node concept="3clFbS" id="5Cu8Hhs1LCX" role="2VODD2">
                <node concept="3clFbF" id="5Cu8Hhs1LIO" role="3cqZAp">
                  <node concept="3cpWs3" id="5Cu8Hhs1M1Y" role="3clFbG">
                    <node concept="2OqwBi" id="5Cu8Hhs1Mrm" role="3uHU7w">
                      <node concept="2ZBlsa" id="5Cu8Hhs1M71" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5Cu8Hhs1MWT" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="5Cu8Hhs1LIN" role="3uHU7B">
                      <property role="Xl_RC" value="&lt;-&gt; " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tqbb2" id="5Cu8Hhs1g6s" role="2ZBHrp">
          <ref role="ehGHo" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
        </node>
      </node>
      <node concept="3cWJ9i" id="5Cu8Hhs1bPN" role="1Qtc8$">
        <node concept="CtIbL" id="5Cu8Hhs1bPP" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="5Cu8Hhs1bPH" role="22hAXT">
      <property role="TrG5h" value="AttributeOpposite" />
    </node>
  </node>
  <node concept="2ABfQD" id="4apidoKAdWf">
    <property role="TrG5h" value="RuleHints" />
    <node concept="2BsEeg" id="4apidoKAdWg" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="RuleSpec" />
      <property role="2BUmq6" value="Rule Specification" />
    </node>
  </node>
  <node concept="24kQdi" id="2mO6frpBuKV">
    <property role="3GE5qa" value="models.builder" />
    <ref role="1XX52x" to="7ggn:2mO6frpBuKv" resolve="ModelBuilderLanguages" />
    <node concept="3EZMnI" id="2mO6frpBuKX" role="2wV5jI">
      <node concept="3F0ifn" id="2mO6frpBuKY" role="3EZMnx">
        <property role="3F0ifm" value="languages" />
        <ref role="1k5W1q" to="tpen:hFD0yD_" resolve="VariableName" />
      </node>
      <node concept="3F0ifn" id="2mO6frpBuKZ" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
      </node>
      <node concept="3F1sOY" id="2mO6frpBuL1" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:lSgC6t_ZNe" resolve="expression" />
      </node>
      <node concept="l2Vlx" id="2mO6frpBuL2" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2mO6frp_i0z">
    <property role="3GE5qa" value="models" />
    <ref role="1XX52x" to="7ggn:2D4CO$foldT" resolve="UsedModels" />
    <node concept="PMmxH" id="2mO6frp_i0_" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
    </node>
  </node>
  <node concept="24kQdi" id="2$O6I000yu1">
    <property role="3GE5qa" value="tracing" />
    <ref role="1XX52x" to="7ggn:7EeKZioUq_6" resolve="TracingMarker" />
    <node concept="3EZMnI" id="2$O6I000yu6" role="2wV5jI">
      <node concept="2iRfu4" id="2$O6I000yu7" role="2iSdaV" />
      <node concept="3F0ifn" id="2$O6I000yuf" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="30gYXW" id="2$O6I003PWB" role="3F10Kt">
          <node concept="1iSF2X" id="2$O6I003PWD" role="VblUZ">
            <property role="1iTho6" value="009846" />
          </node>
        </node>
        <node concept="VechU" id="2$O6I003PWJ" role="3F10Kt">
          <node concept="1iSF2X" id="2$O6I003PWO" role="VblUZ">
            <property role="1iTho6" value="ffffff" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3tlm7a_APnY" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="30gYXW" id="3tlm7a_APnZ" role="3F10Kt">
          <node concept="1iSF2X" id="3tlm7a_APo0" role="VblUZ">
            <property role="1iTho6" value="ffed00" />
          </node>
        </node>
        <node concept="VechU" id="3tlm7a_APo1" role="3F10Kt">
          <node concept="1iSF2X" id="3tlm7a_APo2" role="VblUZ">
            <property role="1iTho6" value="ffffff" />
          </node>
        </node>
      </node>
      <node concept="2SsqMj" id="2$O6I0035IT" role="3EZMnx">
        <node concept="VPXOz" id="3tlm7a_FFVh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Veino" id="3tlm7a_Km49" role="3F10Kt">
          <property role="Vb096" value="fLwANPt/cyan" />
          <node concept="1iSF2X" id="3tlm7a_LkmS" role="VblUZ">
            <property role="1iTho6" value="ffed00" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3tlm7a_JpvC" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="30gYXW" id="3tlm7a_JpvD" role="3F10Kt">
          <node concept="1iSF2X" id="3tlm7a_JpvE" role="VblUZ">
            <property role="1iTho6" value="ffed00" />
          </node>
        </node>
        <node concept="VechU" id="3tlm7a_JpvF" role="3F10Kt">
          <node concept="1iSF2X" id="3tlm7a_JpvG" role="VblUZ">
            <property role="1iTho6" value="ffffff" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3tlm7a_Hzvx" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="30gYXW" id="3tlm7a_Hzvy" role="3F10Kt">
          <node concept="1iSF2X" id="3tlm7a_Hzvz" role="VblUZ">
            <property role="1iTho6" value="009846" />
          </node>
        </node>
        <node concept="VechU" id="3tlm7a_Hzv$" role="3F10Kt">
          <node concept="1iSF2X" id="3tlm7a_Hzv_" role="VblUZ">
            <property role="1iTho6" value="ffffff" />
          </node>
        </node>
      </node>
      <node concept="15ARfc" id="2$O6I009dtx" role="3F10Kt">
        <property role="3$6WeP" value="0" />
      </node>
    </node>
    <node concept="3EZMnI" id="2$O6I003PWo" role="6VMZX">
      <node concept="2iRfu4" id="2$O6I003PWp" role="2iSdaV" />
      <node concept="3F0ifn" id="2$O6I003PWx" role="3EZMnx">
        <property role="3F0ifm" value="message:" />
      </node>
      <node concept="3F0A7n" id="2$O6I003PWl" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:7EeKZioUq_b" resolve="message" />
      </node>
    </node>
  </node>
  <node concept="325Ffw" id="7EeKZioUq_d">
    <property role="TrG5h" value="ToggleTraced" />
    <property role="3GE5qa" value="tracing" />
    <ref role="1chiOs" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="2PxR9H" id="7EeKZioUq_e" role="2QnnpI">
      <node concept="2Py5lD" id="7EeKZioUq_f" role="2PyaAO">
        <property role="2PWKIS" value="VK_T" />
        <property role="2PWKIB" value="ctrl+alt+shift" />
      </node>
      <node concept="2PzhpH" id="7EeKZioUq_g" role="2PL9iG">
        <node concept="3clFbS" id="7EeKZioUq_h" role="2VODD2">
          <node concept="3clFbJ" id="7EeKZioUq_A" role="3cqZAp">
            <node concept="3clFbC" id="7EeKZioUr61" role="3clFbw">
              <node concept="10Nm6u" id="7EeKZioUref" role="3uHU7w" />
              <node concept="2OqwBi" id="7EeKZioUqIN" role="3uHU7B">
                <node concept="0GJ7k" id="7EeKZioUq_U" role="2Oq$k0" />
                <node concept="3CFZ6_" id="7EeKZioUqRz" role="2OqNvi">
                  <node concept="3CFYIy" id="7EeKZioUqVr" role="3CFYIz">
                    <ref role="3CFYIx" to="7ggn:7EeKZioUq_6" resolve="TracingMarker" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7EeKZioUq_C" role="3clFbx">
              <node concept="3clFbF" id="7EeKZioUreL" role="3cqZAp">
                <node concept="2OqwBi" id="7EeKZioUrFk" role="3clFbG">
                  <node concept="2OqwBi" id="7EeKZioUrlX" role="2Oq$k0">
                    <node concept="0GJ7k" id="7EeKZioUreK" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="7EeKZioUruH" role="2OqNvi">
                      <node concept="3CFYIy" id="7EeKZioUry$" role="3CFYIz">
                        <ref role="3CFYIx" to="7ggn:7EeKZioUq_6" resolve="TracingMarker" />
                      </node>
                    </node>
                  </node>
                  <node concept="2DeJnY" id="7EeKZioUrTb" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="7EeKZioUrYM" role="9aQIa">
              <node concept="3clFbS" id="7EeKZioUrYN" role="9aQI4">
                <node concept="3clFbF" id="7EeKZioUs2y" role="3cqZAp">
                  <node concept="37vLTI" id="7EeKZioUsAS" role="3clFbG">
                    <node concept="10Nm6u" id="7EeKZioUsFf" role="37vLTx" />
                    <node concept="2OqwBi" id="7EeKZioUs9I" role="37vLTJ">
                      <node concept="0GJ7k" id="7EeKZioUs2x" role="2Oq$k0" />
                      <node concept="3CFZ6_" id="7EeKZioUsiw" role="2OqNvi">
                        <node concept="3CFYIy" id="7EeKZioUsmn" role="3CFYIz">
                          <ref role="3CFYIx" to="7ggn:7EeKZioUq_6" resolve="TracingMarker" />
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
  <node concept="24kQdi" id="21fkvY552eX">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="7ggn:21fkvY54Nzw" resolve="CheckedDotExpressionWithElse" />
    <node concept="3EZMnI" id="3ysSjmiKK8Y" role="2wV5jI">
      <node concept="3F1sOY" id="3ysSjmiKK8Z" role="3EZMnx">
        <ref role="1NtTu8" to="tpee:hqOq$gm" resolve="operand" />
      </node>
      <node concept="3F0ifn" id="3ysSjmiKK90" role="3EZMnx">
        <property role="3F0ifm" value=".?" />
        <ref role="1ERwB7" to="l36t:4AZBXnbnf5d" resolve="CheckedDot_Actions_MakeUnchecked" />
        <ref role="1k5W1q" to="tpen:hFDnyG9" resolve="Dot" />
        <node concept="VPM3Z" id="4AZBXnbnf5c" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="3ysSjmiKK91" role="3EZMnx">
        <property role="1cu_pB" value="hQNNVxO/3" />
        <ref role="1NtTu8" to="tpee:hqOqNr4" resolve="operation" />
        <ref role="1ERwB7" to="l36t:2P0iSQl3y9L" resolve="CheckedDotExpression_Actions_DeleteOperation" />
      </node>
      <node concept="l2Vlx" id="3ysSjmiKK92" role="2iSdaV" />
      <node concept="3F0ifn" id="21fkvY55c2Z" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <ref role="1k5W1q" to="tpen:hFDnyG9" resolve="Dot" />
        <ref role="1ERwB7" node="21fkvY55lkd" resolve="CheckedDotExpressionWithElse_Delete" />
        <node concept="VPM3Z" id="21fkvY55c3o" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="21fkvY55c3r" role="3EZMnx">
        <property role="1cu_pB" value="hQNNVxO/attractsRecursively" />
        <ref role="1NtTu8" to="7ggn:21fkvY551VA" resolve="else" />
        <ref role="1ERwB7" node="21fkvY55lkd" resolve="CheckedDotExpressionWithElse_Delete" />
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="21fkvY55lkd">
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="CheckedDotExpressionWithElse_Delete" />
    <ref role="1h_SK9" to="7ggn:21fkvY54Nzw" resolve="CheckedDotExpressionWithElse" />
    <node concept="1hA7zw" id="21fkvY55lK1" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="21fkvY55lK2" role="1hA7z_">
        <node concept="3clFbS" id="21fkvY55lK3" role="2VODD2">
          <node concept="3cpWs8" id="4AZBXnbng_l" role="3cqZAp">
            <node concept="3cpWsn" id="4AZBXnbng_m" role="3cpWs9">
              <property role="TrG5h" value="dotExpression" />
              <node concept="3Tqbb2" id="4AZBXnbng_n" role="1tU5fm">
                <ref role="ehGHo" to="pxpg:3ysSjmiKK8V" resolve="CheckedDotExpression" />
              </node>
              <node concept="2OqwBi" id="5NKY7ET2UJq" role="33vP2m">
                <node concept="0IXxy" id="5NKY7ET2UJp" role="2Oq$k0" />
                <node concept="2DeJnW" id="5wUAOoBBjo9" role="2OqNvi">
                  <ref role="1_rbq0" to="pxpg:3ysSjmiKK8V" resolve="CheckedDotExpression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4AZBXnbng_r" role="3cqZAp">
            <node concept="2OqwBi" id="4AZBXnbng_s" role="3clFbG">
              <node concept="2OqwBi" id="4AZBXnbng_t" role="2Oq$k0">
                <node concept="37vLTw" id="3GM_nagTtjr" role="2Oq$k0">
                  <ref role="3cqZAo" node="4AZBXnbng_m" resolve="dotExpression" />
                </node>
                <node concept="3TrEf2" id="4AZBXnbng_v" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                </node>
              </node>
              <node concept="2oxUTD" id="4AZBXnbng_w" role="2OqNvi">
                <node concept="2OqwBi" id="4AZBXnbng_x" role="2oxUTC">
                  <node concept="0IXxy" id="4AZBXnbnilO" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4AZBXnbng_z" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4AZBXnbng_$" role="3cqZAp">
            <node concept="2OqwBi" id="4AZBXnbng__" role="3clFbG">
              <node concept="2OqwBi" id="4AZBXnbng_A" role="2Oq$k0">
                <node concept="37vLTw" id="3GM_nagTr9K" role="2Oq$k0">
                  <ref role="3cqZAo" node="4AZBXnbng_m" resolve="dotExpression" />
                </node>
                <node concept="3TrEf2" id="4AZBXnbng_C" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                </node>
              </node>
              <node concept="2oxUTD" id="4AZBXnbng_D" role="2OqNvi">
                <node concept="2OqwBi" id="4AZBXnbng_E" role="2oxUTC">
                  <node concept="0IXxy" id="4AZBXnbnilQ" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4AZBXnbng_G" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3INDKC" id="21fkvY55EAe">
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="IOperation_CheckedDotExpressionWithElse_Contribution" />
    <node concept="1Qtc8_" id="1wEcoXjJGeD" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjJGeB" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjJGeC" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="1wEcoXjJGeF" role="1Qtc8A">
        <node concept="1hCUdq" id="1wEcoXjJGeG" role="1hCUd6">
          <node concept="3clFbS" id="1wEcoXjJGeH" role="2VODD2">
            <node concept="3clFbF" id="1wEcoXjJGeI" role="3cqZAp">
              <node concept="Xl_RD" id="1wEcoXjJGeJ" role="3clFbG">
                <property role="Xl_RC" value=":" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="1wEcoXjJGeK" role="IWgqQ">
          <node concept="3clFbS" id="1wEcoXjJGeL" role="2VODD2">
            <node concept="3cpWs8" id="1wEcoXjJGeS" role="3cqZAp">
              <node concept="3cpWsn" id="1wEcoXjJGeT" role="3cpWs9">
                <property role="TrG5h" value="dotWithElse" />
                <node concept="3Tqbb2" id="1wEcoXjJGeU" role="1tU5fm">
                  <ref role="ehGHo" to="7ggn:21fkvY54Nzw" resolve="CheckedDotExpressionWithElse" />
                </node>
                <node concept="2OqwBi" id="1wEcoXjJGeV" role="33vP2m">
                  <node concept="7Obwk" id="21fkvY5SXfg" role="2Oq$k0" />
                  <node concept="2DeJnW" id="1wEcoXjJGeX" role="2OqNvi">
                    <ref role="1_rbq0" to="7ggn:21fkvY54Nzw" resolve="CheckedDotExpressionWithElse" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1wEcoXjJGeY" role="3cqZAp">
              <node concept="2OqwBi" id="1wEcoXjJGeZ" role="3clFbG">
                <node concept="2OqwBi" id="1wEcoXjJGf0" role="2Oq$k0">
                  <node concept="37vLTw" id="1wEcoXjJGf1" role="2Oq$k0">
                    <ref role="3cqZAo" node="1wEcoXjJGeT" resolve="dotWithElse" />
                  </node>
                  <node concept="3TrEf2" id="1wEcoXjJGf2" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                  </node>
                </node>
                <node concept="2oxUTD" id="1wEcoXjJGf3" role="2OqNvi">
                  <node concept="2OqwBi" id="1wEcoXjJGf4" role="2oxUTC">
                    <node concept="7Obwk" id="21fkvY5SXmc" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1wEcoXjJGf6" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1wEcoXjJGf7" role="3cqZAp">
              <node concept="2OqwBi" id="1wEcoXjJGf8" role="3clFbG">
                <node concept="2OqwBi" id="1wEcoXjJGf9" role="2Oq$k0">
                  <node concept="37vLTw" id="1wEcoXjJGfa" role="2Oq$k0">
                    <ref role="3cqZAo" node="1wEcoXjJGeT" resolve="dotWithElse" />
                  </node>
                  <node concept="3TrEf2" id="1wEcoXjJGfb" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                  </node>
                </node>
                <node concept="2oxUTD" id="1wEcoXjJGfc" role="2OqNvi">
                  <node concept="2OqwBi" id="1wEcoXjJGfd" role="2oxUTC">
                    <node concept="7Obwk" id="21fkvY5SXsX" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1wEcoXjJGff" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1wEcoXjJGex" role="3cqZAp">
              <node concept="2OqwBi" id="1wEcoXjJGes" role="3clFbG">
                <node concept="37vLTw" id="1wEcoXjJGep" role="2Oq$k0">
                  <ref role="3cqZAo" node="1wEcoXjJGeT" resolve="dotWithElse" />
                </node>
                <node concept="1OKiuA" id="1wEcoXjJGet" role="2OqNvi">
                  <node concept="1Q80Hx" id="1wEcoXjJGeu" role="lBI5i" />
                  <node concept="2B6iha" id="21fkvY5Z_Dd" role="lGT1i">
                    <property role="1lyBwo" value="1S2pyLby17D/lastEditable" />
                  </node>
                  <node concept="3cmrfG" id="1wEcoXjJGew" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1FNNb$" id="1wEcoXjJGfp" role="1FNMel">
          <ref role="1FNNbB" to="7ggn:21fkvY54Nzw" resolve="CheckedDotExpressionWithElse" />
        </node>
        <node concept="3cqGtN" id="3tC0Uej4sfm" role="2jZA2a">
          <node concept="3cqJkl" id="3tC0Uej4sfn" role="3cqGtW">
            <node concept="3clFbS" id="3tC0Uej4sfo" role="2VODD2">
              <node concept="3clFbF" id="3tC0Uej4sxJ" role="3cqZAp">
                <node concept="Xl_RD" id="3tC0Uej4sxI" role="3clFbG">
                  <property role="Xl_RC" value="with else" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="2aapKyRebI$" role="2jiSrf">
          <node concept="3clFbS" id="2aapKyRebI_" role="2VODD2">
            <node concept="3clFbF" id="2aapKyRebWV" role="3cqZAp">
              <node concept="1Wc70l" id="21fkvY5SWbI" role="3clFbG">
                <node concept="2OqwBi" id="21fkvY5SW$Q" role="3uHU7B">
                  <node concept="7Obwk" id="21fkvY5SWe6" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="21fkvY5SWP3" role="2OqNvi">
                    <node concept="chp4Y" id="21fkvY5SWVa" role="cj9EA">
                      <ref role="cht4Q" to="pxpg:3ysSjmiKK8V" resolve="CheckedDotExpression" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="21fkvY5SUV$" role="3uHU7w">
                  <node concept="2OqwBi" id="21fkvY5SUVF" role="3fr31v">
                    <node concept="7Obwk" id="21fkvY5SUVH" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="21fkvY5SUVJ" role="2OqNvi">
                      <node concept="chp4Y" id="21fkvY5SUVK" role="cj9EA">
                        <ref role="cht4Q" to="7ggn:21fkvY54Nzw" resolve="CheckedDotExpressionWithElse" />
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
    <node concept="A1WHr" id="21fkvY55EAk" role="AmTjC">
      <ref role="2ZyFGn" to="pxpg:3ysSjmiKK8V" resolve="CheckedDotExpression" />
    </node>
  </node>
  <node concept="24kQdi" id="4Y1UhBWWVIF">
    <property role="3GE5qa" value="quotations" />
    <ref role="1XX52x" to="tp3r:hqc44pu" resolve="ListAntiquotation" />
    <node concept="2aJ2om" id="4Y1UhBWWVJe" role="CpUAK">
      <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
    </node>
    <node concept="3EZMnI" id="hqc4$g1" role="6VMZX">
      <node concept="3F0ifn" id="hqc4$g2" role="3EZMnx">
        <property role="3F0ifm" value="list antiquotation" />
        <node concept="ljvvj" id="i0N7jAH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hqc4$g3" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PA_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="ljvvj" id="i0N7jAI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hqc4$g5" role="3EZMnx">
        <property role="3F0ifm" value="attributed node concept:" />
      </node>
      <node concept="1HlG4h" id="hPR1o6J" role="3EZMnx">
        <node concept="1HfYo3" id="hPR1o6K" role="1HlULh">
          <node concept="3TQlhw" id="hPR1o6L" role="1Hhtcw">
            <node concept="3clFbS" id="hPR1o6M" role="2VODD2">
              <node concept="3clFbJ" id="hPR1o6T" role="3cqZAp">
                <node concept="3clFbS" id="hPR1o6U" role="3clFbx">
                  <node concept="3cpWs6" id="hPR1o6V" role="3cqZAp">
                    <node concept="2OqwBi" id="hPR1o6W" role="3cqZAk">
                      <node concept="liA8E" id="66vxhH6hkrB" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                      </node>
                      <node concept="2OqwBi" id="66vxhH6hkr_" role="2Oq$k0">
                        <node concept="2yIwOk" id="66vxhH6hkrA" role="2OqNvi" />
                        <node concept="2OqwBi" id="hPR1o6Y" role="2Oq$k0">
                          <node concept="pncrf" id="hPR1o6Z" role="2Oq$k0" />
                          <node concept="1mfA1w" id="hPR1o70" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="hPR1o73" role="3clFbw">
                  <node concept="2OqwBi" id="hPR1o74" role="2Oq$k0">
                    <node concept="pncrf" id="hPR1o75" role="2Oq$k0" />
                    <node concept="1mfA1w" id="hPR1o76" role="2OqNvi" />
                  </node>
                  <node concept="3x8VRR" id="hPR1o77" role="2OqNvi" />
                </node>
                <node concept="9aQIb" id="hPR1o78" role="9aQIa">
                  <node concept="3clFbS" id="hPR1o79" role="9aQI4">
                    <node concept="3cpWs6" id="hPR1o7a" role="3cqZAp">
                      <node concept="Xl_RD" id="hPR1o7b" role="3cqZAk">
                        <property role="Xl_RC" value="" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="i0N7jAJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hqc4$gE" role="3EZMnx">
        <property role="3F0ifm" value="attributed node role in parent:" />
      </node>
      <node concept="1HlG4h" id="hPR1oSp" role="3EZMnx">
        <node concept="1HfYo3" id="hPR1oSq" role="1HlULh">
          <node concept="3TQlhw" id="hPR1oSr" role="1Hhtcw">
            <node concept="3clFbS" id="hPR1oSs" role="2VODD2">
              <node concept="3cpWs8" id="hPR1oSt" role="3cqZAp">
                <node concept="3cpWsn" id="hPR1oSu" role="3cpWs9">
                  <property role="TrG5h" value="parent" />
                  <node concept="3Tqbb2" id="hPR1oSv" role="1tU5fm" />
                  <node concept="2OqwBi" id="hPR1oSw" role="33vP2m">
                    <node concept="pncrf" id="hPR1oSx" role="2Oq$k0" />
                    <node concept="1mfA1w" id="hPR1oSy" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="hPR1oSz" role="3cqZAp">
                <node concept="3clFbS" id="hPR1oS$" role="3clFbx">
                  <node concept="3cpWs6" id="hPR1oS_" role="3cqZAp">
                    <node concept="2OqwBi" id="6lZ8OoRvh4n" role="3cqZAk">
                      <node concept="2JrnkZ" id="6lZ8OoRvh4o" role="2Oq$k0">
                        <node concept="37vLTw" id="3GM_nagTyy_" role="2JrQYb">
                          <ref role="3cqZAo" node="hPR1oSu" resolve="parent" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6lZ8OoRvh4q" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getRoleInParent()" resolve="getRoleInParent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="hPR1oSE" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagTwDK" role="2Oq$k0">
                    <ref role="3cqZAo" node="hPR1oSu" resolve="parent" />
                  </node>
                  <node concept="3x8VRR" id="hPR1oSG" role="2OqNvi" />
                </node>
                <node concept="9aQIb" id="hPR1oSH" role="9aQIa">
                  <node concept="3clFbS" id="hPR1oSI" role="9aQI4">
                    <node concept="3cpWs6" id="hPR1oSJ" role="3cqZAp">
                      <node concept="Xl_RD" id="hPR1oSK" role="3cqZAk">
                        <property role="Xl_RC" value="" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="i0N7jAK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="i0N7jAM" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="hqc4$fP" role="2wV5jI">
      <node concept="3vyZuw" id="4Y1UhBX0zAB" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VLuvy" id="4Y1UhBX0zDb" role="3F10Kt">
        <node concept="1iSF2X" id="4Y1UhBX0zDc" role="VblUZ">
          <property role="1iTho6" value="eebb00" />
        </node>
      </node>
      <node concept="Veino" id="4Y1UhBX0zFR" role="3F10Kt">
        <property role="Vb096" value="hEZAO13/white" />
      </node>
      <node concept="3F0A7n" id="5CeLOEbPtdu" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="tp3r:5CeLOEbPqUM" resolve="label" />
        <node concept="VechU" id="5CeLOEbPtdv" role="3F10Kt">
          <node concept="3ZlJ5R" id="5CeLOEbPtdw" role="VblUZ">
            <node concept="3clFbS" id="5CeLOEbPtdx" role="2VODD2">
              <node concept="3cpWs6" id="5CeLOEbPtdy" role="3cqZAp">
                <node concept="10M0yZ" id="5CeLOEbPtdz" role="3cqZAk">
                  <ref role="1PxDUh" node="4Y1UhBWXsCJ" resolve="Colors" />
                  <ref role="3cqZAo" node="hqc5iH6" resolve="BROWN" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="4Y1UhBX5qI5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="hqc4$fV" role="3EZMnx">
        <property role="1$x2rV" value="&lt;expr&gt;" />
        <ref role="1NtTu8" to="tp3r:hqc44pn" resolve="expression" />
      </node>
      <node concept="2iRfu4" id="4Y1UhBX2R3D" role="2iSdaV" />
    </node>
  </node>
  <node concept="312cEu" id="4Y1UhBWXsCJ">
    <property role="TrG5h" value="Colors" />
    <node concept="Wx3nA" id="hqc5iH6" role="jymVt">
      <property role="TrG5h" value="BROWN" />
      <node concept="3uibUv" id="hqc5iH7" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="hIfNsXs" role="33vP2m">
        <node concept="1pGfFk" id="hIfNsXu" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="hqc5iH9" role="37wK5m">
            <property role="3cmrfH" value="200" />
          </node>
          <node concept="3cmrfG" id="hqc5iHa" role="37wK5m">
            <property role="3cmrfH" value="150" />
          </node>
          <node concept="3cmrfG" id="hqc5iHb" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="6L6cJGWcXeW" role="jymVt">
      <node concept="3clFbS" id="6L6cJGWcXeY" role="3clF47" />
      <node concept="3Tm1VV" id="6L6cJGWcXeZ" role="1B3o_S" />
      <node concept="3cqZAl" id="6L6cJGWcXeX" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="4Y1UhBWXsCK" role="1B3o_S" />
  </node>
  <node concept="24kQdi" id="4Y1UhBWWSsC">
    <property role="3GE5qa" value="quotations" />
    <ref role="1XX52x" to="tp3r:hqc44po" resolve="Antiquotation" />
    <node concept="2aJ2om" id="4Y1UhBWWVHB" role="CpUAK">
      <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
    </node>
    <node concept="3EZMnI" id="hqc4$eH" role="6VMZX">
      <node concept="3F0ifn" id="hqc4$eI" role="3EZMnx">
        <property role="3F0ifm" value="node antiquotation " />
        <node concept="ljvvj" id="i0N7jAB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hqc4$eJ" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PZW" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="ljvvj" id="i0N7jAC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hqc4$eL" role="3EZMnx">
        <property role="3F0ifm" value="attributed node concept:" />
      </node>
      <node concept="1HlG4h" id="hPR1pXK" role="3EZMnx">
        <node concept="1HfYo3" id="hPR1pXL" role="1HlULh">
          <node concept="3TQlhw" id="hPR1pXM" role="1Hhtcw">
            <node concept="3clFbS" id="hPR1pXN" role="2VODD2">
              <node concept="3clFbJ" id="hPR1pXU" role="3cqZAp">
                <node concept="3clFbS" id="hPR1pXV" role="3clFbx">
                  <node concept="3cpWs6" id="hPR1pXW" role="3cqZAp">
                    <node concept="2OqwBi" id="hPR1pXX" role="3cqZAk">
                      <node concept="liA8E" id="66vxhH6hkrz" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                      </node>
                      <node concept="2OqwBi" id="66vxhH6hkrx" role="2Oq$k0">
                        <node concept="2yIwOk" id="66vxhH6hkry" role="2OqNvi" />
                        <node concept="2OqwBi" id="hPR1pXZ" role="2Oq$k0">
                          <node concept="pncrf" id="hPR1pY0" role="2Oq$k0" />
                          <node concept="1mfA1w" id="hPR1pY1" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="hPR1pY4" role="3clFbw">
                  <node concept="2OqwBi" id="hPR1pY5" role="2Oq$k0">
                    <node concept="pncrf" id="hPR1pY6" role="2Oq$k0" />
                    <node concept="1mfA1w" id="hPR1pY7" role="2OqNvi" />
                  </node>
                  <node concept="3x8VRR" id="hPR1pY8" role="2OqNvi" />
                </node>
                <node concept="9aQIb" id="hPR1pY9" role="9aQIa">
                  <node concept="3clFbS" id="hPR1pYa" role="9aQI4">
                    <node concept="3cpWs6" id="hPR1pYb" role="3cqZAp">
                      <node concept="Xl_RD" id="hPR1pYc" role="3cqZAk">
                        <property role="Xl_RC" value="" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="i0N7jAD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hqc4$fm" role="3EZMnx">
        <property role="3F0ifm" value="attributed node role in parent:" />
      </node>
      <node concept="1HlG4h" id="hPR1pEh" role="3EZMnx">
        <node concept="1HfYo3" id="hPR1pEi" role="1HlULh">
          <node concept="3TQlhw" id="hPR1pEj" role="1Hhtcw">
            <node concept="3clFbS" id="hPR1pEk" role="2VODD2">
              <node concept="3clFbJ" id="hPR1pEr" role="3cqZAp">
                <node concept="3clFbS" id="hPR1pEs" role="3clFbx">
                  <node concept="3cpWs6" id="hPR1pEt" role="3cqZAp">
                    <node concept="2OqwBi" id="5e7X3XC_s4P" role="3cqZAk">
                      <node concept="2OqwBi" id="5e7X3XC_rkU" role="2Oq$k0">
                        <node concept="pncrf" id="5e7X3XC_rkV" role="2Oq$k0" />
                        <node concept="2qgKlT" id="5e7X3XC_rkW" role="2OqNvi">
                          <ref role="37wK5l" to="ii9q:5e7X3XC_mgR" resolve="getAttributedLink" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5e7X3XC_s6S" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="5e7X3XC_rj9" role="3clFbw">
                  <node concept="10Nm6u" id="5e7X3XC_rjn" role="3uHU7w" />
                  <node concept="2OqwBi" id="5e7X3XC_p2$" role="3uHU7B">
                    <node concept="pncrf" id="5e7X3XC_oGi" role="2Oq$k0" />
                    <node concept="2qgKlT" id="5e7X3XC_poY" role="2OqNvi">
                      <ref role="37wK5l" to="ii9q:5e7X3XC_mgR" resolve="getAttributedLink" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="hPR1pE_" role="9aQIa">
                  <node concept="3clFbS" id="hPR1pEA" role="9aQI4">
                    <node concept="3cpWs6" id="hPR1pEB" role="3cqZAp">
                      <node concept="Xl_RD" id="hPR1pEC" role="3cqZAk">
                        <property role="Xl_RC" value="" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="i0N7jAE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="i0N7jAG" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="hqc4$ex" role="2wV5jI">
      <node concept="3vyZuw" id="4Y1UhBX0zBj" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VLuvy" id="4Y1UhBX0zDU" role="3F10Kt">
        <node concept="1iSF2X" id="4Y1UhBX0zDV" role="VblUZ">
          <property role="1iTho6" value="eebb00" />
        </node>
      </node>
      <node concept="Veino" id="4Y1UhBX0zGA" role="3F10Kt">
        <property role="Vb096" value="hEZAO13/white" />
      </node>
      <node concept="3F0A7n" id="5CeLOEbPtdm" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="tp3r:5CeLOEbPqUM" resolve="label" />
        <node concept="VechU" id="5CeLOEbPtdn" role="3F10Kt">
          <node concept="3ZlJ5R" id="5CeLOEbPtdo" role="VblUZ">
            <node concept="3clFbS" id="5CeLOEbPtdp" role="2VODD2">
              <node concept="3cpWs6" id="5CeLOEbPtdq" role="3cqZAp">
                <node concept="10M0yZ" id="5CeLOEbPtdr" role="3cqZAk">
                  <ref role="1PxDUh" node="4Y1UhBWXsCJ" resolve="Colors" />
                  <ref role="3cqZAo" node="hqc5iH6" resolve="BROWN" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="4Y1UhBX5q_D" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="hqc4$eB" role="3EZMnx">
        <property role="1$x2rV" value="&lt;expr&gt;" />
        <ref role="1NtTu8" to="tp3r:hqc44pn" resolve="expression" />
      </node>
      <node concept="2iRfu4" id="4Y1UhBX2R2W" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="F_kCLyp1X9">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="7ggn:F_kCLyp1WG" resolve="RuleSetReference" />
    <node concept="3EZMnI" id="F_kCLyp8i0" role="2wV5jI">
      <node concept="2iRfu4" id="F_kCLyp8i1" role="2iSdaV" />
      <node concept="3F0ifn" id="F_kCLyp8if" role="3EZMnx">
        <property role="3F0ifm" value="ruleset" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="F_kCLyp8ir" role="3EZMnx">
        <property role="3F0ifm" value="/" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
        <node concept="11L4FC" id="F_kCLypa$D" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="F_kCLypa$I" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="F_kCLyp1Xb" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:F_kCLyp1WH" resolve="ruleSet" />
        <node concept="1sVBvm" id="F_kCLyp1Xd" role="1sWHZn">
          <node concept="3F0A7n" id="F_kCLyp1Xk" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="F_kCLyp8iD" role="3EZMnx">
        <property role="3F0ifm" value="/" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
        <node concept="11L4FC" id="F_kCLypa$M" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3p309x" id="7J8ZPccR9P0">
    <property role="3GE5qa" value="structs.builder" />
    <property role="TrG5h" value="StructBuilder_Contribution" />
    <node concept="2kknPJ" id="7J8ZPccR9P1" role="1IG6uw">
      <ref role="2ZyFGn" to="7ggn:3Qetf3d9slq" resolve="StructBuilder" />
    </node>
    <node concept="2F$Pav" id="2Xu5gU7fUHD" role="3ft7WO">
      <node concept="3eGOop" id="2Xu5gU7fV_K" role="2$S_pN">
        <node concept="ucgPf" id="2Xu5gU7fV_M" role="3aKz83">
          <node concept="3clFbS" id="2Xu5gU7fV_O" role="2VODD2">
            <node concept="3cpWs8" id="2Xu5gU7g0iI" role="3cqZAp">
              <node concept="3cpWsn" id="2Xu5gU7g0iJ" role="3cpWs9">
                <property role="TrG5h" value="struct" />
                <node concept="3Tqbb2" id="2Xu5gU7g0eJ" role="1tU5fm">
                  <ref role="ehGHo" to="7ggn:3Qetf3d9slq" resolve="StructBuilder" />
                </node>
                <node concept="2pJPEk" id="2Xu5gU7g0iK" role="33vP2m">
                  <node concept="2pJPED" id="2Xu5gU7g0iL" role="2pJPEn">
                    <ref role="2pJxaS" to="7ggn:3Qetf3d9slq" resolve="StructBuilder" />
                    <node concept="2pIpSj" id="2Xu5gU7g0iM" role="2pJxcM">
                      <ref role="2pIpSl" to="7ggn:4$bpWrNHOXa" resolve="class" />
                      <node concept="36biLy" id="2Xu5gU7g0iN" role="28nt2d">
                        <node concept="2ZBlsa" id="2Xu5gU7g0iO" role="36biLW" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="2Xu5gU7g0ps" role="3cqZAp">
              <node concept="2GrKxI" id="2Xu5gU7g0pu" role="2Gsz3X">
                <property role="TrG5h" value="a" />
              </node>
              <node concept="2OqwBi" id="2Xu5gU7g0Is" role="2GsD0m">
                <node concept="2ZBlsa" id="2Xu5gU7g0th" role="2Oq$k0" />
                <node concept="2qgKlT" id="2Xu5gU7g1n0" role="2OqNvi">
                  <ref role="37wK5l" to="us1s:4$bpWrNNH$_" resolve="allIdentities" />
                </node>
              </node>
              <node concept="3clFbS" id="2Xu5gU7g0py" role="2LFqv$">
                <node concept="3clFbF" id="2Xu5gU7g1sd" role="3cqZAp">
                  <node concept="2OqwBi" id="2Xu5gU7g3CD" role="3clFbG">
                    <node concept="2OqwBi" id="2Xu5gU7g1FT" role="2Oq$k0">
                      <node concept="37vLTw" id="2Xu5gU7g1sc" role="2Oq$k0">
                        <ref role="3cqZAo" node="2Xu5gU7g0iJ" resolve="struct" />
                      </node>
                      <node concept="3Tsc0h" id="2Xu5gU7g1SL" role="2OqNvi">
                        <ref role="3TtcxE" to="7ggn:4fD99RQo2bn" resolve="parts" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="2Xu5gU7g5Em" role="2OqNvi">
                      <node concept="2pJPEk" id="2Xu5gU7g5UF" role="25WWJ7">
                        <node concept="2pJPED" id="2Xu5gU7g5UH" role="2pJPEn">
                          <ref role="2pJxaS" to="7ggn:4fD99RQo2bS" resolve="StructBuilderInitAttribute" />
                          <node concept="2pIpSj" id="2Xu5gU7g6Hc" role="2pJxcM">
                            <ref role="2pIpSl" to="7ggn:4fD99RQo2bX" resolve="attribute" />
                            <node concept="36biLy" id="2Xu5gU7g6Sp" role="28nt2d">
                              <node concept="2GrUjf" id="2Xu5gU7g70f" role="36biLW">
                                <ref role="2Gs0qQ" node="2Xu5gU7g0pu" resolve="a" />
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
            <node concept="3clFbF" id="2Xu5gU7fZWN" role="3cqZAp">
              <node concept="37vLTw" id="2Xu5gU7g0iP" role="3clFbG">
                <ref role="3cqZAo" node="2Xu5gU7g0iJ" resolve="struct" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="2Xu5gU7fVFD" role="upBLP">
          <node concept="uGdhv" id="2Xu5gU7fVHR" role="16NeZM">
            <node concept="3clFbS" id="2Xu5gU7fVHT" role="2VODD2">
              <node concept="3clFbF" id="2Xu5gU7fVMF" role="3cqZAp">
                <node concept="3cpWs3" id="2Xu5gU7fXyq" role="3clFbG">
                  <node concept="Xl_RD" id="2Xu5gU7fXIG" role="3uHU7w">
                    <property role="Xl_RC" value="()]" />
                  </node>
                  <node concept="3cpWs3" id="2Xu5gU7fWev" role="3uHU7B">
                    <node concept="Xl_RD" id="2Xu5gU7fVME" role="3uHU7B">
                      <property role="Xl_RC" value="[" />
                    </node>
                    <node concept="2OqwBi" id="2Xu5gU7fWAN" role="3uHU7w">
                      <node concept="2ZBlsa" id="2Xu5gU7fWjw" role="2Oq$k0" />
                      <node concept="3TrcHB" id="2Xu5gU7fWZF" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NL0t" id="2Xu5gU7fYcx" role="upBLP">
          <node concept="uGdhv" id="2Xu5gU7fYef" role="16NL0q">
            <node concept="3clFbS" id="2Xu5gU7fYeh" role="2VODD2">
              <node concept="3clFbF" id="2Xu5gU7fYu3" role="3cqZAp">
                <node concept="3cpWs3" id="2Xu5gU7fYVs" role="3clFbG">
                  <node concept="2OqwBi" id="2Xu5gU7fZo3" role="3uHU7w">
                    <node concept="2ZBlsa" id="2Xu5gU7fZ4K" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2Xu5gU7fZKS" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2Xu5gU7fYu2" role="3uHU7B">
                    <property role="Xl_RC" value="Instance of " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="2Xu5gU7fUIh" role="2ZBHrp">
        <ref role="ehGHo" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
      </node>
      <node concept="2$S_p_" id="2Xu5gU7fUIn" role="2$S_pT">
        <node concept="3clFbS" id="2Xu5gU7fUIo" role="2VODD2">
          <node concept="3clFbF" id="2Xu5gU7fUVa" role="3cqZAp">
            <node concept="2OqwBi" id="2Xu5gU7fV6E" role="3clFbG">
              <node concept="1rpKSd" id="2Xu5gU7fUV9" role="2Oq$k0" />
              <node concept="3lApI0" id="2Xu5gU7fVfW" role="2OqNvi">
                <node concept="chp4Y" id="2Xu5gU7fVoN" role="3MHPDn">
                  <ref role="cht4Q" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="2Xu5gU7fXWy" role="3ft7WO" />
  </node>
  <node concept="24kQdi" id="4kJ$pn7ha6T">
    <property role="3GE5qa" value="context" />
    <ref role="1XX52x" to="7ggn:4kJ$pn7ha2E" resolve="NodeContextType" />
    <node concept="1iCGBv" id="4kJ$pn7mnBh" role="2wV5jI">
      <ref role="1NtTu8" to="7ggn:4kJ$pn7hasm" resolve="concept" />
      <node concept="1sVBvm" id="4kJ$pn7mnBi" role="1sWHZn">
        <node concept="3F0A7n" id="4kJ$pn7mnBj" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPXOz" id="3N4RhEWSY0j" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4fD99RQo2cq">
    <property role="3GE5qa" value="structs.builder" />
    <ref role="1XX52x" to="7ggn:4fD99RQo2bS" resolve="StructBuilderInitAttribute" />
    <node concept="3EZMnI" id="4fD99RQo2cs" role="2wV5jI">
      <node concept="1iCGBv" id="4fD99RQo2ct" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:4fD99RQo2bX" resolve="attribute" />
        <ref role="1k5W1q" to="tpen:hFD0yD_" resolve="VariableName" />
        <node concept="1sVBvm" id="4fD99RQo2cu" role="1sWHZn">
          <node concept="3F0A7n" id="4fD99RQo2cv" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1k5W1q" to="tp3y:2r4rhgaDxBT" resolve="Variable" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VechU" id="4fD99RQo2cw" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/darkGreen" />
              <node concept="1iSF2X" id="4fD99RQo2cx" role="VblUZ">
                <property role="1iTho6" value="aa1111" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4fD99RQo2cy" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
        <node concept="pkWqt" id="2JtLodk54rC" role="pqm2j">
          <node concept="3clFbS" id="2JtLodk54rD" role="2VODD2">
            <node concept="3clFbF" id="2JtLodk54vW" role="3cqZAp">
              <node concept="3fqX7Q" id="2JtLodk572V" role="3clFbG">
                <node concept="2OqwBi" id="2JtLodk572X" role="3fr31v">
                  <node concept="2OqwBi" id="2JtLodk572Y" role="2Oq$k0">
                    <node concept="pncrf" id="2JtLodk572Z" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2JtLodk5730" role="2OqNvi">
                      <ref role="3Tt5mk" to="7ggn:4fD99RQo2bX" resolve="attribute" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="2JtLodk5731" role="2OqNvi">
                    <ref role="37wK5l" to="us1s:4$bpWrQp3a2" resolve="identifying" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2JtLodk52zO" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
        <node concept="pkWqt" id="2JtLodk52$6" role="pqm2j">
          <node concept="3clFbS" id="2JtLodk52$7" role="2VODD2">
            <node concept="3clFbF" id="2JtLodk52Ca" role="3cqZAp">
              <node concept="2OqwBi" id="2JtLodk53zN" role="3clFbG">
                <node concept="2OqwBi" id="2JtLodk52Q4" role="2Oq$k0">
                  <node concept="pncrf" id="2JtLodk52C9" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2JtLodk5395" role="2OqNvi">
                    <ref role="3Tt5mk" to="7ggn:4fD99RQo2bX" resolve="attribute" />
                  </node>
                </node>
                <node concept="2qgKlT" id="2JtLodk54fR" role="2OqNvi">
                  <ref role="37wK5l" to="us1s:4$bpWrQp3a2" resolve="identifying" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="4fD99RQo2cz" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:4fD99RQo2bV" resolve="initValue" />
      </node>
      <node concept="l2Vlx" id="4fD99RQo2c$" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4kJ$pn7ha7L">
    <property role="3GE5qa" value="context" />
    <ref role="1XX52x" to="7ggn:4kJ$pn7ha2F" resolve="StructContextType" />
    <node concept="1iCGBv" id="4kJ$pn7mnJG" role="2wV5jI">
      <ref role="1NtTu8" to="7ggn:4kJ$pn7hask" resolve="structClass" />
      <node concept="1sVBvm" id="4kJ$pn7mnJH" role="1sWHZn">
        <node concept="3F0A7n" id="4kJ$pn7mnJI" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
          <node concept="VPXOz" id="3N4RhEWSY0p" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="55f2HNAp6uS">
    <property role="TrG5h" value="AspectEditor" />
    <ref role="1XX52x" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
    <node concept="3EZMnI" id="55f2HNAp6h6" role="2wV5jI">
      <node concept="2iRfu4" id="55f2HNAp6h7" role="2iSdaV" />
      <node concept="3F0ifn" id="55f2HNAp63I" role="3EZMnx">
        <property role="3F0ifm" value="aspect" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="VechU" id="55f2HNAp7l8" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
      </node>
      <node concept="1iCGBv" id="55f2HNAp6ev" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:55f2HNAp5cR" resolve="aspect" />
        <node concept="1sVBvm" id="55f2HNAp6ex" role="1sWHZn">
          <node concept="3F0A7n" id="55f2HNAp6h3" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VechU" id="55f2HNApkyb" role="3F10Kt">
              <property role="Vb096" value="g1_eI4o/darkBlue" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="55f2HNAp5aB">
    <property role="3GE5qa" value="aspects" />
    <ref role="1XX52x" to="7ggn:55f2HNAp5aa" resolve="AspectReference" />
    <node concept="3EZMnI" id="55f2HNAp5aD" role="2wV5jI">
      <node concept="1iCGBv" id="55f2HNAp5aK" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:55f2HNAp5ab" resolve="aspect" />
        <node concept="1sVBvm" id="55f2HNAp5aM" role="1sWHZn">
          <node concept="3F0A7n" id="55f2HNAp5aT" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="55f2HNAp5aG" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3m__5a2YOAo">
    <property role="3GE5qa" value="quotations" />
    <ref role="1XX52x" to="tp3r:hqc44pp" resolve="Quotation" />
    <node concept="2aJ2om" id="3m__5a2YOAq" role="CpUAK">
      <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
    </node>
    <node concept="3EZMnI" id="Z9Cgjz7mGu" role="6VMZX">
      <node concept="3EZMnI" id="Z9Cgjz7oIA" role="3EZMnx">
        <node concept="VPM3Z" id="Z9Cgjz7oIB" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="Z9Cgjz7oID" role="2iSdaV" />
        <node concept="3F0ifn" id="Z9Cgjz7oIE" role="3EZMnx">
          <property role="3F0ifm" value="concept:" />
          <node concept="VPxyj" id="62smZSoq7UD" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPM3Z" id="62smZSoq8X1" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="1HlG4h" id="Z9Cgjz7oIL" role="3EZMnx">
          <node concept="1HfYo3" id="Z9Cgjz7oIM" role="1HlULh">
            <node concept="3TQlhw" id="Z9Cgjz7oIN" role="1Hhtcw">
              <node concept="3clFbS" id="Z9Cgjz7oIO" role="2VODD2">
                <node concept="3clFbF" id="_QtojlvGaX" role="3cqZAp">
                  <node concept="3K4zz7" id="_QtojlvO96" role="3clFbG">
                    <node concept="Xl_RD" id="_QtojlvTh4" role="3K4GZi">
                      <property role="Xl_RC" value="&lt;not specified&gt;" />
                    </node>
                    <node concept="3y3z36" id="_QtojlvO9l" role="3K4Cdx">
                      <node concept="2OqwBi" id="_QtojlvO9m" role="3uHU7B">
                        <node concept="pncrf" id="_QtojlvO9n" role="2Oq$k0" />
                        <node concept="3TrEf2" id="_QtojlvO9o" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:hqc44pq" resolve="quotedNode" />
                        </node>
                      </node>
                      <node concept="10Nm6u" id="_QtojlvO9p" role="3uHU7w" />
                    </node>
                    <node concept="2OqwBi" id="_QtojlvO9a" role="3K4E3e">
                      <node concept="liA8E" id="66vxhH6hkrF" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                      </node>
                      <node concept="2OqwBi" id="66vxhH6hkrD" role="2Oq$k0">
                        <node concept="2yIwOk" id="66vxhH6hkrE" role="2OqNvi" />
                        <node concept="2OqwBi" id="_QtojlvO9c" role="2Oq$k0">
                          <node concept="pncrf" id="_QtojlvO9d" role="2Oq$k0" />
                          <node concept="3TrEf2" id="_QtojlvO9e" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3r:hqc44pq" resolve="quotedNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="OXEIz" id="62smZSopQLB" role="P5bDN">
            <node concept="1Y$tRT" id="7CDYDAPrHfr" role="OY2wv">
              <ref role="1Y$EBa" to="tp3p:7CDYDAPrHdL" resolve="Quotation_quotedNode" />
            </node>
          </node>
          <node concept="pkWqt" id="7CDYDAPr$JL" role="pqm2j">
            <node concept="3clFbS" id="7CDYDAPr$JM" role="2VODD2">
              <node concept="3clFbF" id="7CDYDAPr$JN" role="3cqZAp">
                <node concept="3y3z36" id="7CDYDAPrHdH" role="3clFbG">
                  <node concept="10Nm6u" id="7CDYDAPrHdK" role="3uHU7w" />
                  <node concept="2OqwBi" id="7CDYDAPr$JP" role="3uHU7B">
                    <node concept="pncrf" id="7CDYDAPr$JO" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7CDYDAPrHdG" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:hqc44pq" resolve="quotedNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1xolST" id="7CDYDAPrIdN" role="3EZMnx">
          <property role="1xolSY" value="&lt;not specified&gt;" />
          <node concept="OXEIz" id="7CDYDAPrIdR" role="P5bDN">
            <node concept="1Y$tRT" id="7CDYDAPrIdS" role="OY2wv">
              <ref role="1Y$EBa" to="tp3p:7CDYDAPrHdL" resolve="Quotation_quotedNode" />
            </node>
          </node>
          <node concept="pkWqt" id="7CDYDAPrJvu" role="pqm2j">
            <node concept="3clFbS" id="7CDYDAPrJvv" role="2VODD2">
              <node concept="3clFbF" id="7CDYDAPrJvw" role="3cqZAp">
                <node concept="3clFbC" id="7CDYDAPrJvB" role="3clFbG">
                  <node concept="10Nm6u" id="7CDYDAPrJvE" role="3uHU7w" />
                  <node concept="2OqwBi" id="7CDYDAPrJvy" role="3uHU7B">
                    <node concept="pncrf" id="7CDYDAPrJvx" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7CDYDAPrJvA" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:hqc44pq" resolve="quotedNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="Z9Cgjz7mGw" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="hqc4$h9" role="2wV5jI">
      <ref role="34QXea" to="tp3p:hqc4$is" resolve="_CreateAntiquotationKeyMap" />
      <node concept="3EZMnI" id="3m__5a37guu" role="3EZMnx">
        <node concept="3vyZuw" id="3m__5a3bTFT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VLuvy" id="2JtLodko3nE" role="3F10Kt">
          <node concept="1iSF2X" id="2JtLodko3nF" role="VblUZ">
            <property role="1iTho6" value="ddbbaa" />
          </node>
        </node>
        <node concept="Veino" id="3m__5a398g4" role="3F10Kt">
          <property role="Vb096" value="fLwANPq/yellow" />
          <node concept="1iSF2X" id="3m__5a3a4KS" role="VblUZ">
            <property role="1iTho6" value="ffffdd" />
          </node>
        </node>
        <node concept="2iRfu4" id="3m__5a37guv" role="2iSdaV" />
        <node concept="3F1sOY" id="hqc4$hb" role="3EZMnx">
          <ref role="1NtTu8" to="tp3r:hqc44pq" resolve="quotedNode" />
        </node>
      </node>
      <node concept="3F1sOY" id="2S6ZQ64QxJM" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="tp3r:2S6ZQ64QxqC" resolve="modelToCreate" />
        <node concept="pkWqt" id="2S6ZQ64TCvd" role="pqm2j">
          <node concept="3clFbS" id="2S6ZQ64TCve" role="2VODD2">
            <node concept="3clFbF" id="2S6ZQ64TCze" role="3cqZAp">
              <node concept="2OqwBi" id="2S6ZQ64TD9G" role="3clFbG">
                <node concept="2OqwBi" id="2S6ZQ64TCMg" role="2Oq$k0">
                  <node concept="pncrf" id="2S6ZQ64TCzd" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2S6ZQ64TD0a" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:2S6ZQ64QxqC" resolve="modelToCreate" />
                  </node>
                </node>
                <node concept="3x8VRR" id="2S6ZQ64TDmy" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="2S6ZQ64TQN1" role="2ruayu" />
      </node>
      <node concept="3EZMnI" id="hqc4$hd" role="3EZMnx">
        <node concept="pkWqt" id="hqc4$hh" role="pqm2j">
          <node concept="3clFbS" id="hqc4$hi" role="2VODD2">
            <node concept="3clFbF" id="hqc4$hj" role="3cqZAp">
              <node concept="22lmx$" id="6fcdXHonXn_" role="3clFbG">
                <node concept="2OqwBi" id="2_1mL0eofEr" role="3uHU7B">
                  <node concept="2OqwBi" id="hxx$ZoZ" role="2Oq$k0">
                    <node concept="pncrf" id="hqc4$hn" role="2Oq$k0" />
                    <node concept="Bykcj" id="2_1mL0eofEo" role="2OqNvi">
                      <node concept="1aIX9F" id="2_1mL0eofEp" role="1xVPHs">
                        <node concept="26LbJo" id="2_1mL0eofEq" role="1aIX9E">
                          <ref role="26LbJp" to="tp3r:hqc44pr" resolve="modelToCreate_old" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3GX2aA" id="2_1mL0eofEs" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="6fcdXHonWJC" role="3uHU7w">
                  <node concept="2OqwBi" id="6fcdXHonWJD" role="2Oq$k0">
                    <node concept="pncrf" id="6fcdXHonWJE" role="2Oq$k0" />
                    <node concept="Bykcj" id="6fcdXHonWJF" role="2OqNvi">
                      <node concept="1aIX9F" id="6fcdXHonWJG" role="1xVPHs">
                        <node concept="26LbJo" id="6fcdXHonXJv" role="1aIX9E">
                          <ref role="26LbJp" to="tp3r:2KyHUfrw9K5" resolve="nodeId_old" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3GX2aA" id="6fcdXHonWJI" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$OV$" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="hqc4$he" role="3EZMnx">
          <property role="3F0ifm" value="[model =" />
          <node concept="3nxI2P" id="6fcdXHooVOj" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="hqc4$hf" role="3EZMnx">
          <ref role="1NtTu8" to="tp3r:hqc44pr" resolve="modelToCreate_old" />
        </node>
        <node concept="3F0ifn" id="2KyHUfrw9Pn" role="3EZMnx">
          <property role="3F0ifm" value=";" />
        </node>
        <node concept="3F0ifn" id="2KyHUfrw9PN" role="3EZMnx">
          <property role="3F0ifm" value="id =" />
          <node concept="3nxI2P" id="6fcdXHooVOl" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="2KyHUfrw9Qf" role="3EZMnx">
          <property role="1$x2rV" value="&lt;default&gt;" />
          <ref role="1NtTu8" to="tp3r:2KyHUfrw9K5" resolve="nodeId_old" />
        </node>
        <node concept="3F0ifn" id="hqc4$hg" role="3EZMnx">
          <property role="3F0ifm" value="]" />
        </node>
        <node concept="l2Vlx" id="i0N7jAy" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="i0N7jA$" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4kJ$pn79yI9">
    <property role="3GE5qa" value="aspects" />
    <ref role="1XX52x" to="7ggn:4kJ$pn77AZT" resolve="AspectRuleSet" />
    <node concept="3EZMnI" id="4kJ$pn79K3S" role="2wV5jI">
      <node concept="l2Vlx" id="4kJ$pn79K3T" role="2iSdaV" />
      <node concept="3F0ifn" id="4kJ$pn79K3V" role="3EZMnx">
        <property role="3F0ifm" value="ruleset" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="VechU" id="4kJ$pn79K3W" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
      </node>
      <node concept="3F0A7n" id="4kJ$pn79KBi" role="3EZMnx">
        <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
        <ref role="1NtTu8" to="7ggn:3N4RhEWNE63" resolve="ruleSetName" />
      </node>
      <node concept="PMmxH" id="4kJ$pn79K3X" role="3EZMnx">
        <ref role="PMmxG" node="55f2HNAp6uS" resolve="AspectEditor" />
      </node>
      <node concept="3F0ifn" id="4kJ$pn79K3Y" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="4kJ$pn79K3Z" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="4kJ$pn79K40" role="3n$kyP">
            <node concept="3clFbS" id="4kJ$pn79K41" role="2VODD2">
              <node concept="3clFbF" id="4kJ$pn79K42" role="3cqZAp">
                <node concept="2OqwBi" id="4kJ$pn79K43" role="3clFbG">
                  <node concept="2OqwBi" id="4kJ$pn79K44" role="2Oq$k0">
                    <node concept="pncrf" id="4kJ$pn79K45" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4kJ$pn79K46" role="2OqNvi">
                      <ref role="3TtcxE" to="7ggn:6_R8J$2ChSl" resolve="members" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4kJ$pn79K47" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11LMrY" id="4kJ$pn79K48" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="4kJ$pn79K49" role="3n$kyP">
            <node concept="3clFbS" id="4kJ$pn79K4a" role="2VODD2">
              <node concept="3clFbF" id="4kJ$pn79K4b" role="3cqZAp">
                <node concept="2OqwBi" id="4kJ$pn79K4c" role="3clFbG">
                  <node concept="2OqwBi" id="4kJ$pn79K4d" role="2Oq$k0">
                    <node concept="pncrf" id="4kJ$pn79K4e" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4kJ$pn79K4f" role="2OqNvi">
                      <ref role="3TtcxE" to="7ggn:6_R8J$2ChSl" resolve="members" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4kJ$pn79K4g" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="4kJ$pn79K4h" role="3EZMnx">
        <ref role="PMmxG" node="6HWpSUEvTAW" resolve="RuleSetMembersComponent" />
      </node>
      <node concept="3F0ifn" id="4kJ$pn79K4i" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="2w$q5c" id="4kJ$pn79K4j" role="2whIAn">
        <node concept="2aJ2om" id="4kJ$pn79K4k" role="2w$qW5">
          <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3m__5a3eLbp">
    <property role="3GE5qa" value="quotations" />
    <ref role="1XX52x" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
    <node concept="2aJ2om" id="3m__5a3eLbr" role="CpUAK">
      <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
    </node>
    <node concept="3EZMnI" id="2JtLodk4isd" role="2wV5jI">
      <node concept="l2Vlx" id="2JtLodk4ise" role="2iSdaV" />
      <node concept="3EZMnI" id="3m__5a3eVej" role="3EZMnx">
        <node concept="2iRfu4" id="3m__5a3eVek" role="2iSdaV" />
        <node concept="3F1sOY" id="4IP40Bi2Gw$" role="3EZMnx">
          <ref role="1NtTu8" to="tp3r:4IP40Bi2$Eu" resolve="quotedNode" />
          <node concept="34QqEe" id="6dC4DUsKHYD" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3vyZuw" id="3m__5a3eVtJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VLuvy" id="3m__5a3eVtO" role="3F10Kt">
          <node concept="1iSF2X" id="3m__5a3eVue" role="VblUZ">
            <property role="1iTho6" value="74a4c8" />
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="2S6ZQ64UfkF" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="tp3r:2S6ZQ64UeST" resolve="modelToCreate" />
        <node concept="pkWqt" id="2S6ZQ64UfkG" role="pqm2j">
          <node concept="3clFbS" id="2S6ZQ64UfkH" role="2VODD2">
            <node concept="3clFbF" id="2S6ZQ64UfkI" role="3cqZAp">
              <node concept="2OqwBi" id="2S6ZQ64UfkJ" role="3clFbG">
                <node concept="2OqwBi" id="2S6ZQ64UfkK" role="2Oq$k0">
                  <node concept="pncrf" id="2S6ZQ64UfkL" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2S6ZQ64UfNi" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:2S6ZQ64UeST" resolve="modelToCreate" />
                  </node>
                </node>
                <node concept="3x8VRR" id="2S6ZQ64UfkN" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="2S6ZQ64UfkO" role="2ruayu" />
      </node>
      <node concept="3EZMnI" id="4IP40Bi2GwD" role="3EZMnx">
        <node concept="pkWqt" id="4IP40Bi2GwE" role="pqm2j">
          <node concept="3clFbS" id="4IP40Bi2GwF" role="2VODD2">
            <node concept="3clFbF" id="4IP40Bi2GwG" role="3cqZAp">
              <node concept="2OqwBi" id="2_1mL0eofEm" role="3clFbG">
                <node concept="2OqwBi" id="4IP40Bi2GwJ" role="2Oq$k0">
                  <node concept="pncrf" id="4IP40Bi2GwK" role="2Oq$k0" />
                  <node concept="Bykcj" id="2_1mL0eofEj" role="2OqNvi">
                    <node concept="1aIX9F" id="2_1mL0eofEk" role="1xVPHs">
                      <node concept="26LbJo" id="2_1mL0eofEl" role="1aIX9E">
                        <ref role="26LbJp" to="tp3r:4IP40Bi2$Ev" resolve="modelToCreate_old" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="2_1mL0eofEn" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="4IP40Bi2GwM" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4IP40Bi2GwN" role="3EZMnx">
          <property role="3F0ifm" value="[model =" />
          <node concept="3nxI2P" id="6fcdXHooVZ3" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="4IP40Bi2GwO" role="3EZMnx">
          <ref role="1NtTu8" to="tp3r:4IP40Bi2$Ev" resolve="modelToCreate_old" />
        </node>
        <node concept="3F0ifn" id="4IP40Bi2GwP" role="3EZMnx">
          <property role="3F0ifm" value="]" />
        </node>
        <node concept="l2Vlx" id="4IP40Bi2GwQ" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4Y1UhBWWVKN">
    <property role="3GE5qa" value="quotations" />
    <ref role="1XX52x" to="tp3r:hqEMmm7" resolve="PropertyAntiquotation" />
    <node concept="2aJ2om" id="4Y1UhBWWVLb" role="CpUAK">
      <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
    </node>
    <node concept="3EZMnI" id="hqEOjEJ" role="6VMZX">
      <node concept="3F0ifn" id="hqEOjEL" role="3EZMnx">
        <property role="3F0ifm" value="property antiquotation" />
        <node concept="ljvvj" id="i0N7jAP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hqEOjEM" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PLA" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="ljvvj" id="i0N7jAQ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hqEOjEO" role="3EZMnx">
        <property role="3F0ifm" value="propety name:" />
      </node>
      <node concept="1HlG4h" id="hPR1ozv" role="3EZMnx">
        <node concept="1HfYo3" id="hPR1ozw" role="1HlULh">
          <node concept="3TQlhw" id="hPR1ozx" role="1Hhtcw">
            <node concept="3clFbS" id="hPR1ozy" role="2VODD2">
              <node concept="3clFbF" id="5q7UjaiUsxp" role="3cqZAp">
                <node concept="2OqwBi" id="5q7UjaiUsRv" role="3clFbG">
                  <node concept="2OqwBi" id="5q7UjaiUs_Q" role="2Oq$k0">
                    <node concept="pncrf" id="5q7UjaiUsxn" role="2Oq$k0" />
                    <node concept="2qgKlT" id="5q7UjaiUsPv" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:1avfQ4BBzOo" resolve="getProperty" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5q7UjaiUt0t" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="i0N7jAR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hqEOjF5" role="3EZMnx">
        <property role="3F0ifm" value="source concept:" />
      </node>
      <node concept="1HlG4h" id="hPR1nWK" role="3EZMnx">
        <node concept="1HfYo3" id="hPR1nWL" role="1HlULh">
          <node concept="3TQlhw" id="hPR1nWM" role="1Hhtcw">
            <node concept="3clFbS" id="hPR1nWN" role="2VODD2">
              <node concept="3cpWs8" id="hPR1nWO" role="3cqZAp">
                <node concept="3cpWsn" id="hPR1nWP" role="3cpWs9">
                  <property role="TrG5h" value="parent" />
                  <node concept="3Tqbb2" id="hPR1nWQ" role="1tU5fm" />
                  <node concept="2OqwBi" id="hPR1nWR" role="33vP2m">
                    <node concept="pncrf" id="hPR1nWS" role="2Oq$k0" />
                    <node concept="1mfA1w" id="hPR1nWT" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="hPR1nWU" role="3cqZAp">
                <node concept="3clFbS" id="hPR1nWV" role="3clFbx">
                  <node concept="3cpWs6" id="hPR1nWW" role="3cqZAp">
                    <node concept="2OqwBi" id="hPR1nWX" role="3cqZAk">
                      <node concept="liA8E" id="66vxhH6hkrN" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                      </node>
                      <node concept="2OqwBi" id="66vxhH6hkrL" role="2Oq$k0">
                        <node concept="2yIwOk" id="66vxhH6hkrM" role="2OqNvi" />
                        <node concept="37vLTw" id="3GM_nagTxJA" role="2Oq$k0">
                          <ref role="3cqZAo" node="hPR1nWP" resolve="parent" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="hPR1nX2" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagTBmL" role="2Oq$k0">
                    <ref role="3cqZAo" node="hPR1nWP" resolve="parent" />
                  </node>
                  <node concept="3x8VRR" id="hPR1nX4" role="2OqNvi" />
                </node>
                <node concept="9aQIb" id="hPR1nX5" role="9aQIa">
                  <node concept="3clFbS" id="hPR1nX6" role="9aQI4">
                    <node concept="3cpWs6" id="hPR1nX7" role="3cqZAp">
                      <node concept="Xl_RD" id="hPR1nX8" role="3cqZAk">
                        <property role="Xl_RC" value="" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="i0N7jAT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="i0N7jAU" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="hqEO1RK" role="2wV5jI">
      <node concept="3vyZuw" id="4Y1UhBX0zis" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VLuvy" id="4Y1UhBX0ziD" role="3F10Kt">
        <node concept="1iSF2X" id="4Y1UhBX0ziE" role="VblUZ">
          <property role="1iTho6" value="eebb00" />
        </node>
      </node>
      <node concept="Veino" id="4Y1UhBX0ziV" role="3F10Kt">
        <property role="Vb096" value="hEZAO13/white" />
      </node>
      <node concept="3F0A7n" id="5CeLOEbPtdA" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="tp3r:5CeLOEbPqUM" resolve="label" />
        <node concept="VechU" id="5CeLOEbPtdB" role="3F10Kt">
          <node concept="3ZlJ5R" id="5CeLOEbPtdC" role="VblUZ">
            <node concept="3clFbS" id="5CeLOEbPtdD" role="2VODD2">
              <node concept="3cpWs6" id="5CeLOEbPtdE" role="3cqZAp">
                <node concept="10M0yZ" id="5CeLOEbPtdF" role="3cqZAk">
                  <ref role="1PxDUh" node="4Y1UhBWXsCJ" resolve="Colors" />
                  <ref role="3cqZAo" node="hqc5iH6" resolve="BROWN" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="4Y1UhBX5re1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="hqEO1RQ" role="3EZMnx">
        <property role="1$x2rV" value="&lt;expr&gt;" />
        <ref role="1NtTu8" to="tp3r:hqc44pn" resolve="expression" />
      </node>
      <node concept="2iRfu4" id="4Y1UhBX2R6i" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p309x" id="7J8ZPccOSOk">
    <property role="3GE5qa" value="quotations" />
    <property role="TrG5h" value="NodeBuilder_Contribution" />
    <node concept="2kknPJ" id="7J8ZPccOSOm" role="1IG6uw">
      <ref role="2ZyFGn" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
    </node>
    <node concept="3eGOop" id="7J8ZPccOT2x" role="3ft7WO">
      <ref role="3EoQqy" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
      <node concept="ucgPf" id="7J8ZPccOT2y" role="3aKz83">
        <node concept="3clFbS" id="7J8ZPccOT2z" role="2VODD2">
          <node concept="3clFbF" id="7J8ZPccOTWd" role="3cqZAp">
            <node concept="2pJPEk" id="7J8ZPccOTWb" role="3clFbG">
              <node concept="2pJPED" id="7J8ZPccOTWc" role="2pJPEn">
                <ref role="2pJxaS" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
                <node concept="2pIpSj" id="7J8ZPccOU57" role="2pJxcM">
                  <ref role="2pIpSl" to="tp3r:4IP40Bi2$Eu" resolve="quotedNode" />
                  <node concept="36biLy" id="7J8ZPccOUel" role="28nt2d">
                    <node concept="10Nm6u" id="7J8ZPccOUh7" role="36biLW" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="7J8ZPccOUlX" role="upBLP">
        <node concept="2h3Zct" id="7J8ZPccOUoC" role="16NeZM">
          <property role="2h4Kg1" value="[light quotation]" />
        </node>
      </node>
    </node>
    <node concept="3eGOop" id="2Xu5gU6TUJC" role="3ft7WO">
      <ref role="3EoQqy" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
      <node concept="ucgPf" id="2Xu5gU6TUJE" role="3aKz83">
        <node concept="3clFbS" id="2Xu5gU6TUJG" role="2VODD2">
          <node concept="3clFbF" id="2Xu5gU6TUOy" role="3cqZAp">
            <node concept="2pJPEk" id="2Xu5gU6TUO$" role="3clFbG">
              <node concept="2pJPED" id="2Xu5gU6TUO_" role="2pJPEn">
                <ref role="2pJxaS" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
                <node concept="2pIpSj" id="2Xu5gU6TUOA" role="2pJxcM">
                  <ref role="2pIpSl" to="tp3r:4IP40Bi2$Eu" resolve="quotedNode" />
                  <node concept="36biLy" id="2Xu5gU6TUOB" role="28nt2d">
                    <node concept="10Nm6u" id="2Xu5gU6TUOC" role="36biLW" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2Xu5gU6TUTL" role="upBLP">
        <node concept="2h3Zct" id="2Xu5gU6TUUl" role="16NeZM">
          <property role="2h4Kg1" value="[node]" />
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="2JtLodk5Uvn">
    <property role="3GE5qa" value="quotations" />
    <property role="TrG5h" value="NodeBuilderNode_RuleSpec_Component" />
    <ref role="1XX52x" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
    <node concept="1PE4EZ" id="2JtLodk5Uvp" role="1PM95z">
      <ref role="1PE7su" to="tp3p:PFUECvMjOU" resolve="NodeBuilderNode_Component" />
    </node>
    <node concept="2aJ2om" id="2JtLodk5Uvr" role="3XTboT">
      <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
    </node>
    <node concept="3EZMnI" id="PFUECvMjOV" role="2wV5jI">
      <node concept="1iCGBv" id="PFUECvMjOW" role="3EZMnx">
        <ref role="1NtTu8" to="tp3r:4IP40Bi2KaL" resolve="concept" />
        <node concept="1sVBvm" id="PFUECvMjOX" role="1sWHZn">
          <node concept="3F0A7n" id="PFUECvMjOY" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VechU" id="PFUECvMjOZ" role="3F10Kt">
              <property role="Vb096" value="fLJRk5B/darkGray" />
            </node>
          </node>
        </node>
        <node concept="Vb9p2" id="PFUECvMjP0" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="PFUECvMjP1" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
        <node concept="ljvvj" id="PFUECvMjP2" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="PFUECvMjP3" role="3n$kyP">
            <node concept="3clFbS" id="PFUECvMjP4" role="2VODD2">
              <node concept="3clFbF" id="PFUECvMjP5" role="3cqZAp">
                <node concept="3eOSWO" id="PFUECvMjP6" role="3clFbG">
                  <node concept="2OqwBi" id="PFUECvMjP8" role="3uHU7B">
                    <node concept="2OqwBi" id="PFUECvMjP9" role="2Oq$k0">
                      <node concept="pncrf" id="PFUECvMjPa" role="2Oq$k0" />
                      <node concept="2Rf3mk" id="PFUECvMjPb" role="2OqNvi">
                        <node concept="1xMEDy" id="PFUECvMjPc" role="1xVPHs">
                          <node concept="chp4Y" id="PFUECvMjPd" role="ri$Ld">
                            <ref role="cht4Q" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="34oBXx" id="PFUECvMjPe" role="2OqNvi" />
                  </node>
                  <node concept="3cmrfG" id="2JtLodkdcId" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="PFUECvMjPf" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="tp3r:4IP40Bi2KcV" resolve="values" />
        <node concept="l2Vlx" id="PFUECvMjPg" role="2czzBx" />
        <node concept="3F0ifn" id="PFUECvMjPh" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="1cu_pB" value="gtgu$YJ/attractsFocus" />
          <node concept="VPxyj" id="PFUECvMjPi" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="lj46D" id="PFUECvMjPj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="tppnM" id="PFUECvMjPx" role="sWeuL">
          <node concept="ljvvj" id="PFUECvMjPy" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="PFUECvMjPz" role="2iSdaV" />
      <node concept="1Bsynf" id="2JtLodk5Uvu" role="3F10Kt">
        <property role="VOm3f" value="true" />
        <node concept="3nzxsE" id="2JtLodk5Uvv" role="3n$kyP">
          <node concept="3clFbS" id="2JtLodk5Uvw" role="2VODD2">
            <node concept="3clFbF" id="2JtLodk5Uvx" role="3cqZAp">
              <node concept="1Wc70l" id="PFUECvMjPC" role="3clFbG">
                <node concept="2OqwBi" id="PFUECvMjPD" role="3uHU7B">
                  <node concept="pncrf" id="PFUECvMjPE" role="2Oq$k0" />
                  <node concept="1BlSNk" id="PFUECvMjPF" role="2OqNvi">
                    <ref role="1BmUXE" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
                    <ref role="1Bn3mz" to="tp3r:4IP40Bi2$Eu" resolve="quotedNode" />
                  </node>
                </node>
                <node concept="3eOSWO" id="2JtLodk5Uvy" role="3uHU7w">
                  <node concept="2OqwBi" id="2JtLodk5Uv$" role="3uHU7B">
                    <node concept="2OqwBi" id="2JtLodk5Uv_" role="2Oq$k0">
                      <node concept="pncrf" id="2JtLodk5UvA" role="2Oq$k0" />
                      <node concept="2Rf3mk" id="PFUECvMjPL" role="2OqNvi">
                        <node concept="1xMEDy" id="PFUECvMjPM" role="1xVPHs">
                          <node concept="chp4Y" id="PFUECvMjPN" role="ri$Ld">
                            <ref role="cht4Q" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="34oBXx" id="2JtLodk5UvB" role="2OqNvi" />
                  </node>
                  <node concept="3cmrfG" id="2JtLodke1aM" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="PFUECvMjPP" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="2SqB2G" id="mNrfW92eD1" role="2SqHTX">
        <property role="TrG5h" value="NODE_COMPONENT" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4kJ$pn7ha6t">
    <property role="3GE5qa" value="context" />
    <ref role="1XX52x" to="7ggn:4kJ$pn7ha2G" resolve="ModuleContextType" />
    <node concept="PMmxH" id="4kJ$pn7hafQ" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      <node concept="VPXOz" id="3N4RhEWSY0g" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4kJ$pn7ha7l">
    <property role="3GE5qa" value="context" />
    <ref role="1XX52x" to="7ggn:4kJ$pn7ha2H" resolve="RepositoryContextType" />
    <node concept="PMmxH" id="4kJ$pn7hafS" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      <node concept="VPXOz" id="3N4RhEWSY0m" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4Y1UhBWWVN6">
    <property role="3GE5qa" value="quotations" />
    <ref role="1XX52x" to="tp3r:hqc44pt" resolve="ReferenceAntiquotation" />
    <node concept="2aJ2om" id="4Y1UhBWWVNu" role="CpUAK">
      <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
    </node>
    <node concept="3EZMnI" id="hqc4$hA" role="6VMZX">
      <node concept="3F0ifn" id="hqc4$hC" role="3EZMnx">
        <property role="3F0ifm" value="reference antiquotation" />
        <node concept="ljvvj" id="i0N7j_K" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hqc4$hD" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PaZ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="ljvvj" id="i0N7j_L" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hqc4$hF" role="3EZMnx">
        <property role="3F0ifm" value="reference role:" />
      </node>
      <node concept="1HlG4h" id="hPR1pN_" role="3EZMnx">
        <node concept="1HfYo3" id="hPR1pNA" role="1HlULh">
          <node concept="3TQlhw" id="hPR1pNB" role="1Hhtcw">
            <node concept="3clFbS" id="hPR1pNC" role="2VODD2">
              <node concept="3clFbF" id="5q7UjaiTMwJ" role="3cqZAp">
                <node concept="2OqwBi" id="5q7UjaiTMQX" role="3clFbG">
                  <node concept="2OqwBi" id="5q7UjaiTM_c" role="2Oq$k0">
                    <node concept="pncrf" id="5q7UjaiTMwH" role="2Oq$k0" />
                    <node concept="2qgKlT" id="5q7UjaiTMOP" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:1avfQ4BEFo6" resolve="getLink" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5q7UjaiTN0h" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="i0N7j_M" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hqc4$hW" role="3EZMnx">
        <property role="3F0ifm" value="source concept:" />
      </node>
      <node concept="1HlG4h" id="hPR1pQ3" role="3EZMnx">
        <node concept="1HfYo3" id="hPR1pQ4" role="1HlULh">
          <node concept="3TQlhw" id="hPR1pQ5" role="1Hhtcw">
            <node concept="3clFbS" id="hPR1pQ6" role="2VODD2">
              <node concept="3cpWs8" id="hPR1pQ7" role="3cqZAp">
                <node concept="3cpWsn" id="hPR1pQ8" role="3cpWs9">
                  <property role="TrG5h" value="parent" />
                  <node concept="3Tqbb2" id="hPR1pQ9" role="1tU5fm" />
                  <node concept="2OqwBi" id="hPR1pQa" role="33vP2m">
                    <node concept="pncrf" id="hPR1pQb" role="2Oq$k0" />
                    <node concept="1mfA1w" id="hPR1pQc" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="hPR1pQd" role="3cqZAp">
                <node concept="3clFbS" id="hPR1pQe" role="3clFbx">
                  <node concept="3cpWs6" id="hPR1pQf" role="3cqZAp">
                    <node concept="2OqwBi" id="hPR1pQg" role="3cqZAk">
                      <node concept="liA8E" id="66vxhH6hkrJ" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                      </node>
                      <node concept="2OqwBi" id="66vxhH6hkrH" role="2Oq$k0">
                        <node concept="2yIwOk" id="66vxhH6hkrI" role="2OqNvi" />
                        <node concept="37vLTw" id="3GM_nagTsHv" role="2Oq$k0">
                          <ref role="3cqZAo" node="hPR1pQ8" resolve="parent" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="hPR1pQl" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagTwxd" role="2Oq$k0">
                    <ref role="3cqZAo" node="hPR1pQ8" resolve="parent" />
                  </node>
                  <node concept="3x8VRR" id="hPR1pQn" role="2OqNvi" />
                </node>
                <node concept="9aQIb" id="hPR1pQo" role="9aQIa">
                  <node concept="3clFbS" id="hPR1pQp" role="9aQI4">
                    <node concept="3cpWs6" id="hPR1pQq" role="3cqZAp">
                      <node concept="Xl_RD" id="hPR1pQr" role="3cqZAk">
                        <property role="Xl_RC" value="" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="i0N7j_N" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="i0N7jAt" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="hqc4$hq" role="2wV5jI">
      <node concept="3vyZuw" id="4Y1UhBX0zBY" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VLuvy" id="4Y1UhBX0zEC" role="3F10Kt">
        <node concept="1iSF2X" id="4Y1UhBX0zED" role="VblUZ">
          <property role="1iTho6" value="eebb00" />
        </node>
      </node>
      <node concept="Veino" id="4Y1UhBX0zHk" role="3F10Kt">
        <property role="Vb096" value="hEZAO13/white" />
      </node>
      <node concept="3F0A7n" id="5CeLOEbPtdI" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="tp3r:5CeLOEbPqUM" resolve="label" />
        <node concept="VechU" id="5CeLOEbPtdJ" role="3F10Kt">
          <node concept="3ZlJ5R" id="5CeLOEbPtdK" role="VblUZ">
            <node concept="3clFbS" id="5CeLOEbPtdL" role="2VODD2">
              <node concept="3cpWs6" id="5CeLOEbPtdM" role="3cqZAp">
                <node concept="10M0yZ" id="5CeLOEbPtdN" role="3cqZAk">
                  <ref role="1PxDUh" node="4Y1UhBWXsCJ" resolve="Colors" />
                  <ref role="3cqZAo" node="hqc5iH6" resolve="BROWN" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="4Y1UhBX5q5W" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="hqc4$hw" role="3EZMnx">
        <property role="1$x2rV" value="&lt;expr&gt;" />
        <ref role="1NtTu8" to="tp3r:hqc44pn" resolve="expression" />
      </node>
      <node concept="2iRfu4" id="4Y1UhBX47ew" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="55f2HNAp5bo">
    <property role="3GE5qa" value="aspects" />
    <ref role="1XX52x" to="7ggn:55f2HNAoLSh" resolve="Aspect" />
    <node concept="3EZMnI" id="55f2HNAp5bB" role="2wV5jI">
      <node concept="VPM3Z" id="55f2HNAp5bD" role="3F10Kt" />
      <node concept="3F0ifn" id="55f2HNAp5bF" role="3EZMnx">
        <property role="3F0ifm" value="aspect" />
      </node>
      <node concept="3F0A7n" id="55f2HNAp5bO" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="VechU" id="55f2HNApkyd" role="3F10Kt">
          <property role="Vb096" value="g1_eI4o/darkBlue" />
        </node>
      </node>
      <node concept="3F0ifn" id="55f2HNAp5cC" role="3EZMnx">
        <property role="3F0ifm" value=" depends on" />
      </node>
      <node concept="3F2HdR" id="55f2HNAp5bZ" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="7ggn:55f2HNAp5aW" resolve="dependencies" />
        <node concept="3F0ifn" id="55f2HNAqmym" role="2czzBI">
          <property role="3F0ifm" value="..." />
        </node>
        <node concept="l2Vlx" id="2_SJ50nnPNq" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="2_SJ50nnPMw" role="3EZMnx">
        <property role="3F0ifm" value=" opposites" />
      </node>
      <node concept="3F2HdR" id="2_SJ50nnPMO" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="7ggn:2_SJ50nnAGS" resolve="opposites" />
        <node concept="3F0ifn" id="2_SJ50nnPMQ" role="2czzBI">
          <property role="3F0ifm" value="..." />
        </node>
        <node concept="l2Vlx" id="2_SJ50nnPNr" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="2_SJ50nnPNs" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4$bpWrNHP9b">
    <property role="3GE5qa" value="structs" />
    <ref role="1XX52x" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
    <node concept="3EZMnI" id="4$bpWrNHSyy" role="2wV5jI">
      <node concept="l2Vlx" id="4$bpWrNHSyz" role="2iSdaV" />
      <node concept="3F0ifn" id="4$bpWrNHSy$" role="3EZMnx">
        <property role="3F0ifm" value="struct" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="VechU" id="4$bpWrNHVkX" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
      </node>
      <node concept="3F0A7n" id="4$bpWrNHU7m" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3EZMnI" id="4$bpWrNHSyD" role="3EZMnx">
        <node concept="2iRfu4" id="4$bpWrNHSyE" role="2iSdaV" />
        <node concept="3F0ifn" id="4$bpWrNHSyF" role="3EZMnx">
          <property role="3F0ifm" value="extends" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
        <node concept="3F2HdR" id="4$bpWrNHSyG" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="7ggn:4$bpWrNHODa" resolve="extends" />
          <node concept="2iRfu4" id="4$bpWrNHSyH" role="2czzBx" />
        </node>
        <node concept="pkWqt" id="4$bpWrNHSyI" role="pqm2j">
          <node concept="3clFbS" id="4$bpWrNHSyJ" role="2VODD2">
            <node concept="3clFbF" id="4$bpWrNHSyK" role="3cqZAp">
              <node concept="2OqwBi" id="4$bpWrNHSyL" role="3clFbG">
                <node concept="2OqwBi" id="4$bpWrNHSyM" role="2Oq$k0">
                  <node concept="pncrf" id="4$bpWrNHSyN" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="4$bpWrNHSyO" role="2OqNvi">
                    <ref role="3TtcxE" to="7ggn:4$bpWrNHODa" resolve="extends" />
                  </node>
                </node>
                <node concept="3GX2aA" id="4$bpWrNHSyP" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="A1WHr" id="4$bpWrNHSyQ" role="3vIgyS">
          <ref role="2ZyFGn" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
        </node>
      </node>
      <node concept="3F0ifn" id="4$bpWrNHSyR" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="4$bpWrNHSyS" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="4$bpWrNHSyT" role="3n$kyP">
            <node concept="3clFbS" id="4$bpWrNHSyU" role="2VODD2">
              <node concept="3clFbF" id="4$bpWrNHSyV" role="3cqZAp">
                <node concept="2OqwBi" id="4$bpWrNHSyW" role="3clFbG">
                  <node concept="2OqwBi" id="4$bpWrNHSyX" role="2Oq$k0">
                    <node concept="pncrf" id="4$bpWrNHSyY" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4$bpWrNHSyZ" role="2OqNvi">
                      <ref role="3TtcxE" to="7ggn:4$bpWrNHOX5" resolve="identity" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4$bpWrNHSz0" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11LMrY" id="4$bpWrNHSz1" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="4$bpWrNHSz2" role="3n$kyP">
            <node concept="3clFbS" id="4$bpWrNHSz3" role="2VODD2">
              <node concept="3clFbF" id="4$bpWrNHSz4" role="3cqZAp">
                <node concept="2OqwBi" id="4$bpWrNHSz5" role="3clFbG">
                  <node concept="2OqwBi" id="4$bpWrNHSz6" role="2Oq$k0">
                    <node concept="pncrf" id="4$bpWrNHSz7" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4$bpWrNHSz8" role="2OqNvi">
                      <ref role="3TtcxE" to="7ggn:4$bpWrNHOX5" resolve="identity" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4$bpWrNHSz9" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="A1WHr" id="4$bpWrNHSza" role="3vIgyS">
          <ref role="2ZyFGn" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
        </node>
      </node>
      <node concept="3F2HdR" id="4$bpWrNHSQv" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:4$bpWrNHOX5" resolve="identity" />
        <node concept="3F0ifn" id="4$bpWrNHSQw" role="2czzBI">
          <property role="3F0ifm" value="" />
          <node concept="VPxyj" id="4$bpWrNHSQx" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="10DmGV" id="4$bpWrNHSQy" role="3F10Kt">
          <property role="10E5iX" value="hGLCffT/indented" />
        </node>
        <node concept="lj46D" id="4$bpWrNHSQz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="4$bpWrNHSQ$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="4$bpWrNHSQ_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="4$bpWrNHSQA" role="2czzBx" />
        <node concept="4$FPG" id="4$bpWrNHSQB" role="4_6I_">
          <node concept="3clFbS" id="4$bpWrNHSQC" role="2VODD2">
            <node concept="3clFbF" id="4$bpWrNHSQD" role="3cqZAp">
              <node concept="2ShNRf" id="4$bpWrNHSQE" role="3clFbG">
                <node concept="3zrR0B" id="4$bpWrNHSQF" role="2ShVmc">
                  <node concept="3Tqbb2" id="4$bpWrNHSQG" role="3zrR0E">
                    <ref role="ehGHo" to="7ggn:6_R8J$2CjEx" resolve="PlaceholderRuleSetMember" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4$bpWrNHSzc" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="2w$q5c" id="4$bpWrNHSzd" role="2whIAn">
        <node concept="2aJ2om" id="4$bpWrNHSze" role="2w$qW5">
          <ref role="2$4xQ3" node="4apidoKAdWg" resolve="RuleSpec" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4$bpWrNHRFc">
    <property role="3GE5qa" value="structs" />
    <ref role="1XX52x" to="7ggn:4$bpWrNHOD7" resolve="StructClassReference" />
    <node concept="1iCGBv" id="4$bpWrNHRFe" role="2wV5jI">
      <ref role="1NtTu8" to="7ggn:4$bpWrNHOD8" resolve="class" />
      <node concept="1sVBvm" id="4$bpWrNHRFf" role="1sWHZn">
        <node concept="3F0A7n" id="4$bpWrNHRFg" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3p309x" id="7J8ZPccPHWO">
    <property role="3GE5qa" value="quotations" />
    <property role="TrG5h" value="Quotation_Contribution" />
    <node concept="2kknPJ" id="7J8ZPccPHWP" role="1IG6uw">
      <ref role="2ZyFGn" to="tp3r:hqc44pp" resolve="Quotation" />
    </node>
    <node concept="3eGOop" id="7J8ZPccPHWQ" role="3ft7WO">
      <ref role="3EoQqy" to="tp3r:hqc44pp" resolve="Quotation" />
      <node concept="ucgPf" id="7J8ZPccPHWR" role="3aKz83">
        <node concept="3clFbS" id="7J8ZPccPHWS" role="2VODD2">
          <node concept="3clFbF" id="7J8ZPccPHWT" role="3cqZAp">
            <node concept="2pJPEk" id="7J8ZPccPHWU" role="3clFbG">
              <node concept="2pJPED" id="7J8ZPccPHWV" role="2pJPEn">
                <ref role="2pJxaS" to="tp3r:hqc44pp" resolve="Quotation" />
                <node concept="2pIpSj" id="7J8ZPccPIa$" role="2pJxcM">
                  <ref role="2pIpSl" to="tp3r:hqc44pq" resolve="quotedNode" />
                  <node concept="36biLy" id="7J8ZPccPIdl" role="28nt2d">
                    <node concept="10Nm6u" id="7J8ZPccPIkg" role="36biLW" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="7J8ZPccPHWZ" role="upBLP">
        <node concept="2h3Zct" id="7J8ZPccPHX0" role="16NeZM">
          <property role="2h4Kg1" value="[quotation]" />
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="4kJ$pn7gUF7">
    <property role="3GE5qa" value="context" />
    <property role="TrG5h" value="ContextType_Editor" />
    <ref role="1XX52x" to="7ggn:4WFClUM1rSw" resolve="Feature" />
    <node concept="3EZMnI" id="4kJ$pn7gUFc" role="2wV5jI">
      <node concept="2iRfu4" id="4kJ$pn7gUFd" role="2iSdaV" />
      <node concept="3F1sOY" id="4kJ$pn7gUF9" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:4kJ$pn7gUEE" resolve="contextType" />
      </node>
      <node concept="pkWqt" id="4kJ$pn7gUFi" role="pqm2j">
        <node concept="3clFbS" id="4kJ$pn7gUFj" role="2VODD2">
          <node concept="3clFbF" id="4kJ$pn7gUJm" role="3cqZAp">
            <node concept="2OqwBi" id="4kJ$pn7gVqw" role="3clFbG">
              <node concept="2OqwBi" id="4kJ$pn7gUYu" role="2Oq$k0">
                <node concept="pncrf" id="4kJ$pn7gUJl" role="2Oq$k0" />
                <node concept="1mfA1w" id="4kJ$pn7gVhB" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="4kJ$pn7gVBA" role="2OqNvi">
                <node concept="chp4Y" id="4kJ$pn7gVHF" role="cj9EA">
                  <ref role="cht4Q" to="7ggn:4kJ$pn77AZT" resolve="AspectRuleSet" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4kJ$pn7ha61">
    <property role="3GE5qa" value="context" />
    <ref role="1XX52x" to="7ggn:4kJ$pn7ha2D" resolve="ModelContextType" />
    <node concept="PMmxH" id="4kJ$pn7hafO" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      <node concept="VPXOz" id="3N4RhEWSXS6" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="6bNUpcLzHna">
    <property role="3GE5qa" value="context" />
    <ref role="aqKnT" to="7ggn:4kJ$pn7gUED" resolve="ContextType" />
    <node concept="2F$Pav" id="6bNUpcLzJ1w" role="3ft7WO">
      <node concept="3eGOop" id="6bNUpcLzJZp" role="2$S_pN">
        <node concept="ucgPf" id="6bNUpcLzJZr" role="3aKz83">
          <node concept="3clFbS" id="6bNUpcLzJZt" role="2VODD2">
            <node concept="3clFbF" id="6bNUpcLzK4V" role="3cqZAp">
              <node concept="2pJPEk" id="6bNUpcLzK4T" role="3clFbG">
                <node concept="2pJPED" id="6bNUpcLzK4U" role="2pJPEn">
                  <ref role="2pJxaS" to="7ggn:4kJ$pn7ha2E" resolve="NodeContextType" />
                  <node concept="2pIpSj" id="6bNUpcLzKdx" role="2pJxcM">
                    <ref role="2pIpSl" to="7ggn:4kJ$pn7hasm" resolve="concept" />
                    <node concept="36biLy" id="6bNUpcLzKg4" role="28nt2d">
                      <node concept="2ZBlsa" id="6bNUpcLzKl9" role="36biLW" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="6bNUpcLzKuP" role="upBLP">
          <node concept="uGdhv" id="6bNUpcLzKy5" role="16NeZM">
            <node concept="3clFbS" id="6bNUpcLzKy7" role="2VODD2">
              <node concept="3clFbF" id="6bNUpcLzKAT" role="3cqZAp">
                <node concept="2OqwBi" id="6bNUpcLzKUB" role="3clFbG">
                  <node concept="2ZBlsa" id="6bNUpcLzKAS" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6bNUpcLzLoa" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NL0t" id="6bNUpcLzLzj" role="upBLP">
          <node concept="uGdhv" id="6bNUpcLzL$S" role="16NL0q">
            <node concept="3clFbS" id="6bNUpcLzL$U" role="2VODD2">
              <node concept="3clFbF" id="6bNUpcLzLDG" role="3cqZAp">
                <node concept="3cpWs3" id="6bNUpcLzM2t" role="3clFbG">
                  <node concept="Xl_RD" id="6bNUpcLzM2P" role="3uHU7w">
                    <property role="Xl_RC" value="&gt;" />
                  </node>
                  <node concept="3cpWs3" id="6bNUpcLzM1T" role="3uHU7B">
                    <node concept="Xl_RD" id="6bNUpcLzM1D" role="3uHU7B">
                      <property role="Xl_RC" value="node&lt;" />
                    </node>
                    <node concept="2OqwBi" id="6bNUpcLzN9x" role="3uHU7w">
                      <node concept="2ZBlsa" id="6bNUpcLzN9y" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6bNUpcLzN9z" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6bNUpcLzJ55" role="2ZBHrp">
        <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
      <node concept="2$S_p_" id="6bNUpcLzJ59" role="2$S_pT">
        <node concept="3clFbS" id="6bNUpcLzJ5a" role="2VODD2">
          <node concept="3clFbF" id="6bNUpcLzJea" role="3cqZAp">
            <node concept="2OqwBi" id="6bNUpcLzJpF" role="3clFbG">
              <node concept="1rpKSd" id="6bNUpcLzJe9" role="2Oq$k0" />
              <node concept="3lApI0" id="6bNUpcLzJyV" role="2OqNvi">
                <node concept="chp4Y" id="6bNUpcLzJO4" role="3MHPDn">
                  <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2F$Pav" id="6bNUpcLzN9H" role="3ft7WO">
      <node concept="3eGOop" id="6bNUpcLzN9I" role="2$S_pN">
        <node concept="ucgPf" id="6bNUpcLzN9J" role="3aKz83">
          <node concept="3clFbS" id="6bNUpcLzN9K" role="2VODD2">
            <node concept="3clFbF" id="6bNUpcLzN9L" role="3cqZAp">
              <node concept="2pJPEk" id="6bNUpcLzN9M" role="3clFbG">
                <node concept="2pJPED" id="6bNUpcLzN9N" role="2pJPEn">
                  <ref role="2pJxaS" to="7ggn:4kJ$pn7ha2F" resolve="StructContextType" />
                  <node concept="2pIpSj" id="6bNUpcLzN9O" role="2pJxcM">
                    <ref role="2pIpSl" to="7ggn:4kJ$pn7hask" resolve="structClass" />
                    <node concept="36biLy" id="6bNUpcLzN9P" role="28nt2d">
                      <node concept="2ZBlsa" id="6bNUpcLzN9Q" role="36biLW" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="6bNUpcLzN9R" role="upBLP">
          <node concept="uGdhv" id="6bNUpcLzN9S" role="16NeZM">
            <node concept="3clFbS" id="6bNUpcLzN9T" role="2VODD2">
              <node concept="3clFbF" id="6bNUpcLzN9U" role="3cqZAp">
                <node concept="2OqwBi" id="6bNUpcLzN9V" role="3clFbG">
                  <node concept="2ZBlsa" id="6bNUpcLzN9W" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6bNUpcLzN9X" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NL0t" id="6bNUpcLzN9Y" role="upBLP">
          <node concept="uGdhv" id="6bNUpcLzN9Z" role="16NL0q">
            <node concept="3clFbS" id="6bNUpcLzNa0" role="2VODD2">
              <node concept="3clFbF" id="6bNUpcLzNa1" role="3cqZAp">
                <node concept="3cpWs3" id="6bNUpcLzNa2" role="3clFbG">
                  <node concept="Xl_RD" id="6bNUpcLzNa3" role="3uHU7w">
                    <property role="Xl_RC" value="&gt;" />
                  </node>
                  <node concept="3cpWs3" id="6bNUpcLzNa4" role="3uHU7B">
                    <node concept="Xl_RD" id="6bNUpcLzNa5" role="3uHU7B">
                      <property role="Xl_RC" value="struct&lt;" />
                    </node>
                    <node concept="2OqwBi" id="6bNUpcLzNa6" role="3uHU7w">
                      <node concept="2ZBlsa" id="6bNUpcLzNa7" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6bNUpcLzNa8" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6bNUpcLzNa9" role="2ZBHrp">
        <ref role="ehGHo" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
      </node>
      <node concept="2$S_p_" id="6bNUpcLzNaa" role="2$S_pT">
        <node concept="3clFbS" id="6bNUpcLzNab" role="2VODD2">
          <node concept="3clFbF" id="6bNUpcLzNac" role="3cqZAp">
            <node concept="2OqwBi" id="6bNUpcLzNad" role="3clFbG">
              <node concept="1rpKSd" id="6bNUpcLzNae" role="2Oq$k0" />
              <node concept="3lApI0" id="6bNUpcLzNaf" role="2OqNvi">
                <node concept="chp4Y" id="6bNUpcLzNag" role="3MHPDn">
                  <ref role="cht4Q" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3eGOop" id="6bNUpcLzI1J" role="3ft7WO">
      <ref role="3EoQqy" to="7ggn:4kJ$pn7ha2D" resolve="ModelContextType" />
      <node concept="16NfWO" id="6bNUpcLzIkL" role="upBLP">
        <node concept="2h3Zct" id="6bNUpcLzInd" role="16NeZM">
          <property role="2h4Kg1" value="model" />
        </node>
      </node>
      <node concept="16NL0t" id="6bNUpcLzIpH" role="upBLP">
        <node concept="2h3Zct" id="6bNUpcLzIqp" role="16NL0q">
          <property role="2h4Kg1" value="model" />
        </node>
      </node>
      <node concept="ucgPf" id="6bNUpcLzI1L" role="3aKz83">
        <node concept="3clFbS" id="6bNUpcLzI1N" role="2VODD2">
          <node concept="3clFbF" id="6bNUpcLzI61" role="3cqZAp">
            <node concept="2pJPEk" id="6bNUpcLzI5Z" role="3clFbG">
              <node concept="2pJPED" id="6bNUpcLzI60" role="2pJPEn">
                <ref role="2pJxaS" to="7ggn:4kJ$pn7ha2D" resolve="ModelContextType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3eGOop" id="6bNUpcLzIqt" role="3ft7WO">
      <ref role="3EoQqy" to="7ggn:4kJ$pn7ha2G" resolve="ModuleContextType" />
      <node concept="16NfWO" id="6bNUpcLzIqu" role="upBLP">
        <node concept="2h3Zct" id="6bNUpcLzIqv" role="16NeZM">
          <property role="2h4Kg1" value="module" />
        </node>
      </node>
      <node concept="16NL0t" id="6bNUpcLzIqw" role="upBLP">
        <node concept="2h3Zct" id="6bNUpcLzIqx" role="16NL0q">
          <property role="2h4Kg1" value="module" />
        </node>
      </node>
      <node concept="ucgPf" id="6bNUpcLzIqy" role="3aKz83">
        <node concept="3clFbS" id="6bNUpcLzIqz" role="2VODD2">
          <node concept="3clFbF" id="6bNUpcLzIq$" role="3cqZAp">
            <node concept="2pJPEk" id="6bNUpcLzIq_" role="3clFbG">
              <node concept="2pJPED" id="6bNUpcLzIqA" role="2pJPEn">
                <ref role="2pJxaS" to="7ggn:4kJ$pn7ha2G" resolve="ModuleContextType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3eGOop" id="6bNUpcLzIFS" role="3ft7WO">
      <ref role="3EoQqy" to="7ggn:4kJ$pn7ha2H" resolve="RepositoryContextType" />
      <node concept="16NfWO" id="6bNUpcLzIFT" role="upBLP">
        <node concept="2h3Zct" id="6bNUpcLzIFU" role="16NeZM">
          <property role="2h4Kg1" value="repository" />
        </node>
      </node>
      <node concept="16NL0t" id="6bNUpcLzIFV" role="upBLP">
        <node concept="2h3Zct" id="6bNUpcLzIFW" role="16NL0q">
          <property role="2h4Kg1" value="repository" />
        </node>
      </node>
      <node concept="ucgPf" id="6bNUpcLzIFX" role="3aKz83">
        <node concept="3clFbS" id="6bNUpcLzIFY" role="2VODD2">
          <node concept="3clFbF" id="6bNUpcLzIFZ" role="3cqZAp">
            <node concept="2pJPEk" id="6bNUpcLzIG0" role="3clFbG">
              <node concept="2pJPED" id="6bNUpcLzIG1" role="2pJPEn">
                <ref role="2pJxaS" to="7ggn:4kJ$pn7ha2H" resolve="RepositoryContextType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3eGOop" id="2HQhr66HNoc" role="3ft7WO">
      <ref role="3EoQqy" to="7ggn:1af$Z1TxsIy" resolve="TypedContextType" />
      <node concept="ucgPf" id="2HQhr66HNoe" role="3aKz83">
        <node concept="3clFbS" id="2HQhr66HNog" role="2VODD2">
          <node concept="3clFbF" id="2HQhr66I5Kn" role="3cqZAp">
            <node concept="2pJPEk" id="2HQhr66I5Kl" role="3clFbG">
              <node concept="2pJPED" id="2HQhr66I5Km" role="2pJPEn">
                <ref role="2pJxaS" to="7ggn:1af$Z1TxsIy" resolve="TypedContextType" />
                <node concept="2pIpSj" id="2HQhr66I5UL" role="2pJxcM">
                  <ref role="2pIpSl" to="7ggn:1af$Z1Txuvq" resolve="type" />
                  <node concept="36biLy" id="2HQhr66I5Xj" role="28nt2d">
                    <node concept="10Nm6u" id="2HQhr66I5Xh" role="36biLW" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2HQhr66I69v" role="upBLP">
        <node concept="2h3Zct" id="2HQhr66I6a3" role="16NeZM">
          <property role="2h4Kg1" value="typed" />
        </node>
      </node>
      <node concept="16NL0t" id="2HQhr66I6ir" role="upBLP">
        <node concept="2h3Zct" id="2HQhr66I6j2" role="16NL0q">
          <property role="2h4Kg1" value="typed" />
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="2HQhr66I63v" role="3ft7WO" />
    <node concept="22hDWj" id="6bNUpcLzHnb" role="22hAXT" />
  </node>
  <node concept="24kQdi" id="3uCFKuPotS0">
    <property role="3GE5qa" value="methods" />
    <ref role="1XX52x" to="7ggn:3$OkZkHRDLt" resolve="Method" />
    <node concept="3EZMnI" id="fDoU8NI" role="2wV5jI">
      <node concept="VPM3Z" id="hEU$PuE" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="PMmxH" id="3uCFKuPowhU" role="3EZMnx">
        <ref role="PMmxG" node="4kJ$pn7gUF7" resolve="ContextType_Editor" />
      </node>
      <node concept="3EZMnI" id="hHIJFsl" role="3EZMnx">
        <node concept="VPM3Z" id="hHIJFsm" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="pkWqt" id="hHIJJm2" role="pqm2j">
          <node concept="3clFbS" id="hHIJJm3" role="2VODD2">
            <node concept="3clFbF" id="1X7GQqyQ6Gw" role="3cqZAp">
              <node concept="2OqwBi" id="1X7GQqyQ7fi" role="3clFbG">
                <node concept="pncrf" id="1X7GQqyQ6Gv" role="2Oq$k0" />
                <node concept="2qgKlT" id="1X7GQqyQ8g$" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:1X7GQqyPHmE" resolve="hasVisibility" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="1bjvCAP$dEo" role="3EZMnx">
          <property role="3F0ifm" value="public" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          <node concept="VPxyj" id="1bjvCAP$f0d" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pkWqt" id="1bjvCAP$f0i" role="pqm2j">
            <node concept="3clFbS" id="1bjvCAP$f0j" role="2VODD2">
              <node concept="3clFbF" id="1bjvCAP$f4m" role="3cqZAp">
                <node concept="2OqwBi" id="1bjvCAP$fjX" role="3clFbG">
                  <node concept="pncrf" id="1bjvCAP$f4l" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1bjvCAP$fCP" role="2OqNvi">
                    <ref role="3TsBF5" to="7ggn:1bjvCAP$dkc" resolve="puplic" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="i34__Y3" role="3EZMnx">
          <property role="3F0ifm" value="final" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          <ref role="1ERwB7" to="tpen:78NyZDfmLGH" resolve="DeleteFinalInBaseMethod" />
          <node concept="2SqB2G" id="5kmCgHXRRIX" role="2SqHTX">
            <property role="TrG5h" value="finalModifier" />
          </node>
          <node concept="VPxyj" id="2bl07wEBuDO" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pkWqt" id="i34_E9O" role="pqm2j">
            <node concept="3clFbS" id="i34_E9P" role="2VODD2">
              <node concept="3clFbF" id="i34_FMG" role="3cqZAp">
                <node concept="2OqwBi" id="i34_G3T" role="3clFbG">
                  <node concept="pncrf" id="i34_FMH" role="2Oq$k0" />
                  <node concept="3TrcHB" id="i34_Hdl" role="2OqNvi">
                    <ref role="3TsBF5" to="tpee:hcDiZZi" resolve="isFinal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="A1WHu" id="1wEcoXjJMIa" role="3vIgyS">
            <ref role="A1WHt" to="tpen:1wEcoXjJMD2" resolve="InstanceMethodDeclaration_ApplySideTransforms" />
          </node>
        </node>
        <node concept="3F0ifn" id="hHIJHyW" role="3EZMnx">
          <property role="3F0ifm" value="abstract" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          <ref role="1ERwB7" to="tpen:h9EBNOl" resolve="_InstanceMethodDeclaration_RemoveAbstract" />
          <node concept="2SqB2G" id="5kmCgHXRUBB" role="2SqHTX">
            <property role="TrG5h" value="abstractModifier" />
          </node>
          <node concept="VPxyj" id="2bl07wEHQh2" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pkWqt" id="hHIJHyX" role="pqm2j">
            <node concept="3clFbS" id="hHIJHyY" role="2VODD2">
              <node concept="3cpWs6" id="hHIJHyZ" role="3cqZAp">
                <node concept="2OqwBi" id="hHIJHz0" role="3cqZAk">
                  <node concept="pncrf" id="hHIJHz1" role="2Oq$k0" />
                  <node concept="3TrcHB" id="hHIKSBf" role="2OqNvi">
                    <ref role="3TsBF5" to="tpee:h9EzhlX" resolve="isAbstract" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="A1WHu" id="1wEcoXjJMJ3" role="3vIgyS">
            <ref role="A1WHt" to="tpen:1wEcoXjJMD2" resolve="InstanceMethodDeclaration_ApplySideTransforms" />
          </node>
        </node>
        <node concept="3F0ifn" id="64dupBmWxpe" role="3EZMnx">
          <property role="3F0ifm" value="constant" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          <node concept="VPxyj" id="64dupBmWD9d" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pkWqt" id="64dupBmWD9h" role="pqm2j">
            <node concept="3clFbS" id="64dupBmWD9i" role="2VODD2">
              <node concept="3clFbF" id="64dupBmWDhX" role="3cqZAp">
                <node concept="2OqwBi" id="64dupBmWDSp" role="3clFbG">
                  <node concept="pncrf" id="64dupBmWDhW" role="2Oq$k0" />
                  <node concept="3TrcHB" id="64dupBmWG1c" role="2OqNvi">
                    <ref role="3TsBF5" to="7ggn:64dupBmWp2H" resolve="constant" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="i0HIZvn" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3uCFKuPpl5S" role="3EZMnx">
        <property role="3F0ifm" value="meth" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="VechU" id="3uCFKuPplKW" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
      </node>
      <node concept="PMmxH" id="hwL1BXI" role="3EZMnx">
        <ref role="PMmxG" to="tpen:g96ft$4" resolve="_GenericDeclaration_TypeVariables_Component" />
        <node concept="pkWqt" id="hwL1BXJ" role="pqm2j">
          <node concept="3clFbS" id="hwL1BXK" role="2VODD2">
            <node concept="3cpWs6" id="hwL1BXL" role="3cqZAp">
              <node concept="2OqwBi" id="5eo3iW5feek" role="3cqZAk">
                <node concept="2OqwBi" id="hxiFsjd" role="2Oq$k0">
                  <node concept="pncrf" id="hwL1BXQ" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hwL1BXR" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:g96eVAe" resolve="typeVariableDeclaration" />
                  </node>
                </node>
                <node concept="3GX2aA" id="5eo3iW5feel" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="fDoUsrO" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no return type&gt;" />
        <property role="1cu_pB" value="gtguBGO/firstEditableCell" />
        <ref role="1NtTu8" to="tpee:fzclF7X" resolve="returnType" />
        <node concept="A1WHu" id="43H3v3INDz_" role="3vIgyS">
          <ref role="A1WHt" to="tpen:3$ZGCDhcCx4" resolve="ForReturnTypeOfTheMethod" />
        </node>
      </node>
      <node concept="PMmxH" id="hfRTI2S" role="3EZMnx">
        <ref role="PMmxG" to="tpen:hfRTih$" resolve="BaseMethodDeclaration_NameCellComponent" />
        <node concept="3nxI2P" id="hO0Csuf" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="fDoU8NM" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
        <node concept="2SqB2G" id="2VygjZZ9zbe" role="2SqHTX">
          <property role="TrG5h" value="leftParen" />
        </node>
      </node>
      <node concept="3F2HdR" id="g$abzDm" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="tpee:fzclF7Y" resolve="parameter" />
        <node concept="3F0ifn" id="g$abzDn" role="2czzBI">
          <node concept="VPM3Z" id="hEU$Ppc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPxyj" id="hEZKQ$A" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="i0NJYCV" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="fDoU8NP" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
        <node concept="2SqB2G" id="2VygjZZ9_bd" role="2SqHTX">
          <property role="TrG5h" value="rightParen" />
        </node>
        <node concept="VPM3Z" id="hEU$PaU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="A1WHu" id="1wEcoXjJMHs" role="3vIgyS">
          <ref role="A1WHt" to="tpen:1wEcoXjJMHl" resolve="InstanceMethodDeclaration_ApplySideTransforms_1" />
        </node>
      </node>
      <node concept="PMmxH" id="4ZFm$8SP73$" role="3EZMnx">
        <ref role="PMmxG" to="tpen:4ZFm$8SP4Ko" resolve="BaseMethodDeclaration_ThrowsCollection_Component" />
      </node>
      <node concept="3F0ifn" id="h9E_8mS" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
        <ref role="1ERwB7" to="tpen:64WA21b_Rbu" resolve="DeleteClassifierMember" />
        <node concept="pkWqt" id="h9E_9ea" role="pqm2j">
          <node concept="3clFbS" id="h9E_9eb" role="2VODD2">
            <node concept="3cpWs6" id="h9E_9Cm" role="3cqZAp">
              <node concept="3fqX7Q" id="4SpJmwPM3Ef" role="3cqZAk">
                <node concept="2OqwBi" id="4SpJmwPM3Eh" role="3fr31v">
                  <node concept="pncrf" id="4SpJmwPM3Ei" role="2Oq$k0" />
                  <node concept="2qgKlT" id="4SpJmwPM3Ej" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:10BRnhak8m8" resolve="hasBody" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="i0HIZvq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="5UYpxeVajUe" role="3EZMnx">
        <ref role="PMmxG" to="tpen:5UYpxeVafB6" resolve="BaseMethodDeclaration_BodyComponent" />
        <node concept="pkWqt" id="5UYpxeVajUh" role="pqm2j">
          <node concept="3clFbS" id="5UYpxeVajUi" role="2VODD2">
            <node concept="3cpWs6" id="5UYpxeVajUj" role="3cqZAp">
              <node concept="2OqwBi" id="7fnnP3fG0In" role="3cqZAk">
                <node concept="pncrf" id="7fnnP3fG0vY" role="2Oq$k0" />
                <node concept="2qgKlT" id="4SpJmwPM6Rt" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:10BRnhak8m8" resolve="hasBody" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="i0HIZv_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3uCFKuPHNHT">
    <property role="3GE5qa" value="methods" />
    <ref role="1XX52x" to="7ggn:3uCFKuPHfh_" resolve="MethodCall" />
    <node concept="3EZMnI" id="6LFqxSRCOeE" role="2wV5jI">
      <node concept="2$oqgb" id="6LFqxSRCOeF" role="3F10Kt">
        <ref role="Bvoe9" to="tpen:47XGxT8xUGh" resolve="BaseMethodParameterInformationQuery" />
      </node>
      <node concept="PMmxH" id="6LFqxSRCOeG" role="3EZMnx">
        <ref role="PMmxG" to="tpen:4k0WLUKaCd7" resolve="IMethodCall_typeArguments" />
        <node concept="VPM3Z" id="6LFqxSRCOeH" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="pkWqt" id="34sshOoImlM" role="pqm2j">
          <node concept="3clFbS" id="34sshOoImlN" role="2VODD2">
            <node concept="3clFbF" id="34sshOoImlT" role="3cqZAp">
              <node concept="2OqwBi" id="34sshOoImlU" role="3clFbG">
                <node concept="2OqwBi" id="34sshOoImlV" role="2Oq$k0">
                  <node concept="pncrf" id="34sshOoImlW" role="2Oq$k0" />
                  <node concept="Bykcj" id="34sshOoImlX" role="2OqNvi">
                    <node concept="1aIX9F" id="34sshOoImlY" role="1xVPHs">
                      <node concept="26LbJo" id="34sshOoImlZ" role="1aIX9E">
                        <ref role="26LbJp" to="tpee:4k0WLUKaBu8" resolve="typeArgument" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="34sshOoImm0" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1iCGBv" id="6LFqxSRCOeI" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:2_KHFK2vWEv" resolve="method" />
        <node concept="1sVBvm" id="6LFqxSRCOeJ" role="1sWHZn">
          <node concept="3F0A7n" id="6LFqxSRCOeK" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1k5W1q" to="tpen:6H7j4iMM5Cm" resolve="MPSMethodCall" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="6LFqxSRCOeL" role="3EZMnx">
        <ref role="PMmxG" to="tpen:h5njIub" resolve="IMethodCall_actualArguments" />
      </node>
      <node concept="l2Vlx" id="6LFqxSRCOeM" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6wxUpFc$fZN">
    <property role="3GE5qa" value="methods" />
    <ref role="1XX52x" to="7ggn:6wxUpFc$a2F" resolve="MethodCallOperation" />
    <node concept="3EZMnI" id="hwllSQF" role="2wV5jI">
      <node concept="PMmxH" id="4k0WLUKaRxg" role="3EZMnx">
        <ref role="PMmxG" to="tpen:4k0WLUKaCd7" resolve="IMethodCall_typeArguments" />
        <node concept="VPM3Z" id="48lPkMUs$aT" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="pkWqt" id="34sshOo5uy3" role="pqm2j">
          <node concept="3clFbS" id="34sshOo5uy4" role="2VODD2">
            <node concept="3clFbF" id="34sshOo5uDN" role="3cqZAp">
              <node concept="2OqwBi" id="34sshOo5uDO" role="3clFbG">
                <node concept="2OqwBi" id="34sshOo5uDP" role="2Oq$k0">
                  <node concept="pncrf" id="34sshOo5uDQ" role="2Oq$k0" />
                  <node concept="Bykcj" id="34sshOo5uDR" role="2OqNvi">
                    <node concept="1aIX9F" id="34sshOo5uDS" role="1xVPHs">
                      <node concept="26LbJo" id="34sshOo5uDT" role="1aIX9E">
                        <ref role="26LbJp" to="tpee:4k0WLUKaBu8" resolve="typeArgument" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="34sshOo5uDU" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1iCGBv" id="hwlm1Dd" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no method&gt;" />
        <ref role="1NtTu8" to="7ggn:2_KHFK2mnX$" resolve="method" />
        <node concept="1sVBvm" id="hwlm1De" role="1sWHZn">
          <node concept="3F0A7n" id="hwlm1Df" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <property role="1$x2rV" value="&lt;no name&gt;" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" to="tpen:6H7j4iMM5Cm" resolve="MPSMethodCall" />
          </node>
        </node>
        <node concept="A1WHu" id="1wEcoXjJMJp" role="3vIgyS">
          <ref role="A1WHt" to="tpen:1wEcoXjJMJi" resolve="InstanceMethodCallOperation_ApplySideTransforms" />
        </node>
      </node>
      <node concept="PMmxH" id="hPnpBeU" role="3EZMnx">
        <ref role="PMmxG" to="tpen:h5njIub" resolve="IMethodCall_actualArguments" />
        <node concept="11L4FC" id="hX7a3Mt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="i0vqVru" role="2iSdaV" />
      <node concept="2$oqgb" id="7G1kLlsw5Hf" role="3F10Kt">
        <ref role="Bvoe9" to="tpen:47XGxT8xUGh" resolve="BaseMethodParameterInformationQuery" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5KrXDVZCCUE">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="7ggn:5KrXDVZClCp" resolve="InnerExpression" />
    <node concept="3EZMnI" id="5KrXDVZCCUG" role="2wV5jI">
      <node concept="l2Vlx" id="5KrXDVZCCUH" role="2iSdaV" />
      <node concept="3F0ifn" id="5KrXDVZCCUM" role="3EZMnx">
        <property role="3F0ifm" value="inner" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4y4FX$OmRdN">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="7ggn:4y4FX$OmRdn" resolve="PostStateExpression" />
    <node concept="3EZMnI" id="4y4FX$OmRdP" role="2wV5jI">
      <node concept="l2Vlx" id="4y4FX$OmRdQ" role="2iSdaV" />
      <node concept="3F0ifn" id="4y4FX$OmRdR" role="3EZMnx">
        <property role="3F0ifm" value="post" />
        <node concept="Vb9p2" id="4y4FX$OmRdS" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="4y4FX$OmRdT" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F1sOY" id="4y4FX$OmRdU" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:4y4FX$OmRdo" resolve="expression" />
      </node>
      <node concept="3F0ifn" id="4y4FX$OmRdV" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1af$Z1TxuwQ">
    <property role="3GE5qa" value="context" />
    <ref role="1XX52x" to="7ggn:1af$Z1TxsIy" resolve="TypedContextType" />
    <node concept="3F1sOY" id="1af$Z1TxuwS" role="2wV5jI">
      <ref role="1NtTu8" to="7ggn:1af$Z1Txuvq" resolve="type" />
      <node concept="VPXOz" id="6$5k4dCgc4y" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
</model>

