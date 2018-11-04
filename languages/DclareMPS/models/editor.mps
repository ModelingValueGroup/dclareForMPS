<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8068d09c-9151-4525-aa21-5fdda1e26e1b(DclareMPS.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tpd3" ref="r:00000000-0000-4000-0000-011c895902bb(jetbrains.mps.lang.sharedConcepts.editor)" />
    <import index="tp3r" ref="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="ln" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="7667708318090725848" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentAnchorStyleClassItem" flags="ln" index="1Bsynf" />
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1082639509531" name="nullText" index="ilYzB" />
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="24kQdi" id="1Sb3mAPvmgH">
    <ref role="1XX52x" to="7ggn:4SfaQIrYs9U" resolve="RuleSet" />
    <node concept="3EZMnI" id="6XkcKt_d965" role="2wV5jI">
      <node concept="3F0ifn" id="6XkcKt_d967" role="3EZMnx">
        <property role="3F0ifm" value="ruleset" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="6XkcKt_d968" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="6XkcKt_d96l" role="2iSdaV" />
      <node concept="3F0ifn" id="6XkcKt_d96n" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="6XkcKt_d96o" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="6XkcKt_d96p" role="3EZMnx">
        <node concept="VPM3Z" id="6XkcKt_d96q" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="30fQumnEDu7" role="3EZMnx">
          <node concept="ljvvj" id="30fQumnEDuk" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="6XkcKt_d96r" role="3EZMnx">
          <ref role="1NtTu8" to="7ggn:1Sb3mAPvInz" resolve="elements" />
          <node concept="l2Vlx" id="6XkcKt_d96s" role="2czzBx" />
          <node concept="lj46D" id="6XkcKt_d96t" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="6XkcKt_d96u" role="2czzBI">
            <property role="ilYzB" value="&lt;rules&gt;" />
          </node>
        </node>
        <node concept="l2Vlx" id="6XkcKt_d96v" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6XkcKt_d96w" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        <node concept="pVoyu" id="6XkcKt_d96x" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1Sb3mAPvxfv">
    <ref role="1XX52x" to="7ggn:1Sb3mAPvh8b" resolve="Rule" />
    <node concept="3EZMnI" id="6obdqWnfOVz" role="2wV5jI">
      <node concept="3F0ifn" id="1Sb3mAPvF6N" role="3EZMnx">
        <property role="3F0ifm" value="rule" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="6obdqWnhPA9" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="OXEIz" id="6obdqWnhPAa" role="P5bDN" />
      </node>
      <node concept="3EZMnI" id="6XkcKt_enBH" role="3EZMnx">
        <node concept="VPM3Z" id="6XkcKt_enBI" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F1sOY" id="1Sb3mAPxGp6" role="3EZMnx">
          <ref role="1NtTu8" to="7ggn:1Sb3mAPxB$N" resolve="context" />
        </node>
        <node concept="l2Vlx" id="6XkcKt_enBK" role="2iSdaV" />
      </node>
      <node concept="PMmxH" id="2DQYZoTsgQ1" role="3EZMnx">
        <ref role="PMmxG" to="tpen:5UYpxeVafB6" resolve="BaseMethodDeclaration_BodyComponent" />
      </node>
      <node concept="l2Vlx" id="6obdqWnfOV$" role="2iSdaV" />
      <node concept="3F0ifn" id="6obdqWnjPZU" role="3EZMnx">
        <node concept="ljvvj" id="6obdqWnmhNg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1Sb3mAPxM8q">
    <ref role="1XX52x" to="7ggn:1Sb3mAPxLpZ" resolve="NodeType" />
    <node concept="3EZMnI" id="g$ehTS2" role="2wV5jI">
      <node concept="3F0ifn" id="1Sb3mAPyrlq" role="3EZMnx">
        <property role="3F0ifm" value="for" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="1iCGBv" id="g$eijOx" role="3EZMnx">
        <property role="1cu_pB" value="1" />
        <property role="39s7Ar" value="true" />
        <property role="1$x2rV" value="&lt;no concept&gt;" />
        <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
        <ref role="1NtTu8" to="7ggn:jVwYUSRpzw" resolve="concept" />
        <node concept="1sVBvm" id="g$eijOw" role="1sWHZn">
          <node concept="3F0A7n" id="g$eilaJ" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <property role="1$x2rV" value="&lt;no name&gt;" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="3$7jql" id="hFHy94J" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
          </node>
        </node>
        <node concept="3$7jql" id="hJwfRSo" role="3F10Kt">
          <property role="3$6WeP" value="0.0" />
        </node>
      </node>
      <node concept="l2Vlx" id="2BXC8DkILFu" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="30fQumnEGJ9">
    <ref role="1XX52x" to="7ggn:30fQumnEbzJ" resolve="ModelType" />
    <node concept="3EZMnI" id="30fQumnEOJm" role="2wV5jI">
      <node concept="2iRfu4" id="30fQumnEOJn" role="2iSdaV" />
      <node concept="3F0ifn" id="30fQumnEGJb" role="3EZMnx">
        <property role="3F0ifm" value="for" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="30fQumnEOJv" role="3EZMnx">
        <property role="3F0ifm" value="model" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="jVwYUSPLKV">
    <ref role="1XX52x" to="7ggn:jVwYUSPLKM" resolve="ThisExpression" />
    <node concept="3EZMnI" id="idJwCzqmMD" role="2wV5jI">
      <node concept="l2Vlx" id="idJwCzqmMF" role="2iSdaV" />
      <node concept="3F0ifn" id="44eH7NDnXJa" role="3EZMnx">
        <property role="3F0ifm" value="this" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5myXc37OIoi">
    <ref role="1XX52x" to="7ggn:5myXc37OIo9" resolve="ModuleType" />
    <node concept="3EZMnI" id="5myXc37OIou" role="2wV5jI">
      <node concept="2iRfu4" id="5myXc37OIov" role="2iSdaV" />
      <node concept="3F0ifn" id="5myXc37OIow" role="3EZMnx">
        <property role="3F0ifm" value="for" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="5myXc37OIox" role="3EZMnx">
        <property role="3F0ifm" value="module" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5myXc37Ppy8">
    <ref role="1XX52x" to="7ggn:5myXc37PpxZ" resolve="RepositoryType" />
    <node concept="3EZMnI" id="5myXc37Ppya" role="2wV5jI">
      <node concept="2iRfu4" id="5myXc37Ppyb" role="2iSdaV" />
      <node concept="3F0ifn" id="5myXc37Ppyc" role="3EZMnx">
        <property role="3F0ifm" value="for" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="5myXc37Ppyd" role="3EZMnx">
        <property role="3F0ifm" value="repository" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="29R9$zYWiG0">
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
  <node concept="24kQdi" id="29R9$zZUo3g">
    <ref role="1XX52x" to="7ggn:29R9$zZU3__" resolve="ConceptRule" />
    <node concept="3EZMnI" id="29R9$zZUo3i" role="2wV5jI">
      <node concept="3F0ifn" id="29R9$zZUo3j" role="3EZMnx">
        <property role="3F0ifm" value="rule" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="29R9$zZUo3k" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="OXEIz" id="29R9$zZUo3l" role="P5bDN" />
      </node>
      <node concept="PMmxH" id="29R9$zZUo3q" role="3EZMnx">
        <ref role="PMmxG" to="tpen:5UYpxeVafB6" resolve="BaseMethodDeclaration_BodyComponent" />
      </node>
      <node concept="l2Vlx" id="29R9$zZUo3r" role="2iSdaV" />
      <node concept="3F0ifn" id="29R9$zZUo3s" role="3EZMnx">
        <node concept="ljvvj" id="29R9$zZUo3t" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="29R9$$00xIe">
    <ref role="1XX52x" to="7ggn:29R9$zZU3_j" resolve="ConceptRuleSet" />
    <node concept="3EZMnI" id="29R9$$00xIg" role="2wV5jI">
      <node concept="3F0ifn" id="29R9$$00xIh" role="3EZMnx">
        <property role="3F0ifm" value="ruleset" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="l2Vlx" id="29R9$$00xIj" role="2iSdaV" />
      <node concept="3F0ifn" id="29R9$$00xND" role="3EZMnx">
        <property role="3F0ifm" value="for" />
      </node>
      <node concept="1iCGBv" id="29R9$$00xP6" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:29R9$zZU3_y" resolve="concept" />
        <node concept="1sVBvm" id="29R9$$00xP8" role="1sWHZn">
          <node concept="3F0A7n" id="29R9$$00xPY" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="29R9$$00xIk" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="29R9$$00xIl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="29R9$$00xIm" role="3EZMnx">
        <node concept="VPM3Z" id="29R9$$00xIn" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="29R9$$00xIo" role="3EZMnx">
          <node concept="ljvvj" id="29R9$$00xIp" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="29R9$$00xIq" role="3EZMnx">
          <ref role="1NtTu8" to="7ggn:29R9$zZU3_D" resolve="elements" />
          <node concept="l2Vlx" id="29R9$$00xIr" role="2czzBx" />
          <node concept="lj46D" id="29R9$$00xIs" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="29R9$$00xIt" role="2czzBI">
            <property role="ilYzB" value="&lt;rules&gt;" />
          </node>
        </node>
        <node concept="l2Vlx" id="29R9$$00xI$" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="29R9$$00xI_" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        <node concept="pVoyu" id="29R9$$00xIA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5ZOs9Jxw8KE">
    <ref role="1XX52x" to="7ggn:5ZOs9JxpqPW" resolve="PropertyMapping" />
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
        <property role="3F0ifm" value=":" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
        <node concept="11L4FC" id="76efOMRCfEi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="4IP40Bi2KcR" role="3EZMnx">
        <ref role="1NtTu8" to="tp3r:4IP40Bi2KcQ" resolve="expression" />
      </node>
      <node concept="l2Vlx" id="4IP40Bi2KcI" role="2iSdaV" />
      <node concept="3F0ifn" id="5ZOs9Jxw8S6" role="3EZMnx">
        <node concept="ljvvj" id="5ZOs9Jxw8Sm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1Vx$CNNb4w4" role="3EZMnx">
        <node concept="ljvvj" id="1Vx$CNNbfVh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5ZOs9Jxw8To">
    <ref role="1XX52x" to="7ggn:5ZOs9JxpqPV" resolve="LinkMapping" />
    <node concept="3EZMnI" id="4IP40Bi38Sz" role="2wV5jI">
      <node concept="1iCGBv" id="4IP40Bi38S$" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hFD0yD_" resolve="VariableName" />
        <ref role="1NtTu8" to="tp3r:4IP40Bi38Ss" resolve="link" />
        <node concept="1sVBvm" id="4IP40Bi38S_" role="1sWHZn">
          <node concept="3F0A7n" id="4IP40Bi38SA" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpce:fA0kJcN" resolve="role" />
          </node>
        </node>
        <node concept="VechU" id="4IP40Bi38SF" role="3F10Kt">
          <property role="Vb096" value="DARK_MAGENTA" />
        </node>
      </node>
      <node concept="3F0ifn" id="4IP40Bi38SB" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
        <node concept="11L4FC" id="76efOMRCfEh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="4IP40Bi38SC" role="3EZMnx">
        <ref role="1NtTu8" to="tp3r:4IP40Bi2KcQ" resolve="expression" />
      </node>
      <node concept="l2Vlx" id="4IP40Bi38SD" role="2iSdaV" />
      <node concept="3F0ifn" id="5ZOs9Jxw90P" role="3EZMnx">
        <node concept="ljvvj" id="5ZOs9Jxw917" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1Vx$CNNb4vr" role="3EZMnx">
        <node concept="ljvvj" id="1Vx$CNNbfVk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5ZOs9Jxw9u1">
    <ref role="1XX52x" to="7ggn:5ZOs9JxpqPU" resolve="Mapping" />
    <node concept="3EZMnI" id="4IP40Bi2KaO" role="2wV5jI">
      <node concept="1iCGBv" id="4IP40Bi2KaR" role="3EZMnx">
        <ref role="1NtTu8" to="tp3r:4IP40Bi2KaL" resolve="concept" />
        <node concept="1sVBvm" id="4IP40Bi2KaS" role="1sWHZn">
          <node concept="3F0A7n" id="4IP40Bi2KaU" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VechU" id="4IP40Bi36YM" role="3F10Kt">
              <property role="Vb096" value="darkGray" />
            </node>
          </node>
        </node>
        <node concept="Vb9p2" id="4IP40Bi2YMW" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="1QoScp" id="76efOMRC9pW" role="3EZMnx">
        <property role="1QpmdY" value="true" />
        <node concept="3F0ifn" id="76efOMRC9q1" role="1QoS34">
          <property role="3F0ifm" value="(" />
          <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
          <node concept="11L4FC" id="76efOMRC9q3" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="76efOMRCd_j" role="3F10Kt" />
          <node concept="ljvvj" id="76efOMRC9ro" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="pkWqt" id="76efOMRC9pY" role="3e4ffs">
          <node concept="3clFbS" id="76efOMRC9pZ" role="2VODD2">
            <node concept="3clFbF" id="76efOMRC9q4" role="3cqZAp">
              <node concept="3eOSWO" id="76efOMRC9rj" role="3clFbG">
                <node concept="3cmrfG" id="76efOMRC9rm" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="76efOMRC9qP" role="3uHU7B">
                  <node concept="2OqwBi" id="76efOMRC9qq" role="2Oq$k0">
                    <node concept="pncrf" id="76efOMRC9q5" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="76efOMRC9qv" role="2OqNvi">
                      <ref role="3TtcxE" to="tp3r:4IP40Bi2KcV" resolve="values" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="76efOMRC9qX" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="76efOMRC9q2" role="1QoVPY">
          <property role="3F0ifm" value="(" />
          <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
          <node concept="11L4FC" id="4IP40Bi2WTK" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="4IP40Bi2KcW" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="tp3r:4IP40Bi2KcV" resolve="values" />
        <node concept="l2Vlx" id="4IP40Bi2KcX" role="2czzBx" />
        <node concept="3F0ifn" id="4IP40Bi2KcY" role="2czzBI">
          <property role="3F0ifm" value="" />
          <node concept="VPxyj" id="4IP40Bi2KcZ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="lj46D" id="76efOMRC9pS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="tppnM" id="76efOMRCbx0" role="sWeuL">
          <node concept="ljvvj" id="76efOMRCbx1" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4IP40Bi2Kcz" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="3F0ifn" id="5ZOs9Jxw9Y4" role="3EZMnx">
        <node concept="ljvvj" id="5ZOs9Jxwae1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1Vx$CNNb52e" role="3EZMnx">
        <node concept="ljvvj" id="1Vx$CNNbfVe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="4IP40Bi2KaQ" role="2iSdaV" />
      <node concept="1Bsynf" id="76efOMRC9pR" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4$MeK2bmDNT">
    <ref role="1XX52x" to="7ggn:4$MeK2bmkiB" resolve="Attribute" />
    <node concept="3EZMnI" id="4$MeK2bmDOO" role="2wV5jI">
      <node concept="l2Vlx" id="4$MeK2bmDOP" role="2iSdaV" />
      <node concept="3F1sOY" id="4$MeK2bmDOZ" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:4$MeK2bmypm" resolve="context" />
      </node>
      <node concept="3F0ifn" id="4$MeK2bmDOQ" role="3EZMnx">
        <property role="3F0ifm" value="." />
      </node>
      <node concept="3F0A7n" id="4$MeK2bmDOR" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4$MeK2bmDQo" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="4$MeK2bmDP5" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:4$MeK2bmw9x" resolve="type" />
      </node>
      <node concept="3F0ifn" id="4$MeK2bmDSt" role="3EZMnx">
        <node concept="ljvvj" id="4$MeK2bmDS_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4$MeK2bmDSK" role="3EZMnx">
        <node concept="ljvvj" id="4$MeK2bmDSU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4$MeK2bmDT4">
    <ref role="1XX52x" to="7ggn:4$MeK2bmw9b" resolve="ConceptAttribute" />
    <node concept="3EZMnI" id="4$MeK2bmDT6" role="2wV5jI">
      <node concept="l2Vlx" id="4$MeK2bmDT7" role="2iSdaV" />
      <node concept="3F0A7n" id="4$MeK2bmDTa" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4$MeK2bmDTb" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="4$MeK2bmDTc" role="3EZMnx">
        <ref role="1NtTu8" to="7ggn:4$MeK2bmw9x" resolve="type" />
      </node>
      <node concept="3F0ifn" id="4$MeK2bmDTd" role="3EZMnx">
        <node concept="ljvvj" id="4$MeK2bmDTe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4$MeK2bmDTf" role="3EZMnx">
        <node concept="ljvvj" id="4$MeK2bmDTg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4$MeK2bvUKZ">
    <ref role="1XX52x" to="7ggn:4$MeK2bvRdy" resolve="AttributeCall" />
    <node concept="1iCGBv" id="4$MeK2bvUL1" role="2wV5jI">
      <ref role="1NtTu8" to="7ggn:4$MeK2bvUeg" resolve="attribute" />
      <node concept="1sVBvm" id="4$MeK2bvUL3" role="1sWHZn">
        <node concept="3F0A7n" id="4$MeK2bvULa" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
</model>

