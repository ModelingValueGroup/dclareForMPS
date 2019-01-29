<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d496f872-14f4-4415-9dd1-a59394188d3a(DclareMessages.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wknp" ref="r:9a42e459-6b0e-4c37-8fab-9b46bab588bd(DclareMessages.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="795210086017940429" name="jetbrains.mps.lang.editor.structure.ReadOnlyStyleClassItem" flags="lg" index="xShMh" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="7e_PmaZxgph">
    <ref role="1XX52x" to="wknp:7e_PmaZxgoP" resolve="ErrorSet" />
    <node concept="3EZMnI" id="7e_PmaZxgF$" role="2wV5jI">
      <node concept="l2Vlx" id="7e_PmaZxgF_" role="2iSdaV" />
      <node concept="lj46D" id="7e_PmaZxgFA" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="3F2HdR" id="7e_PmaZxgFF" role="3EZMnx">
        <ref role="1NtTu8" to="wknp:7e_PmaZxgoQ" resolve="errors" />
        <node concept="l2Vlx" id="7e_PmaZxgFG" role="2czzBx" />
        <node concept="pj6Ft" id="7e_PmaZxgFH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="7e_PmaZxgFI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="7e_PmaZxgFJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="xShMh" id="7e_PmaZxgHb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7e_PmaZxgqa">
    <ref role="1XX52x" to="wknp:7e_PmaZxfwQ" resolve="Error" />
    <node concept="3EZMnI" id="7e_PmaZxgqc" role="2wV5jI">
      <node concept="l2Vlx" id="7e_PmaZxgqd" role="2iSdaV" />
      <node concept="1iCGBv" id="7e_PmaZxgqg" role="3EZMnx">
        <ref role="1NtTu8" to="wknp:7e_PmaZxfxF" resolve="context" />
        <node concept="1sVBvm" id="7e_PmaZxgqj" role="1sWHZn">
          <node concept="3F0A7n" id="7e_PmaZxgql" role="2wV5jI">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
        <node concept="xShMh" id="7e_PmaZxgEe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7e_PmaZxgqm" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="7e_PmaZxgqn" role="3EZMnx">
        <ref role="1NtTu8" to="wknp:7e_PmaZxfxC" resolve="source" />
        <node concept="1sVBvm" id="7e_PmaZxgqq" role="1sWHZn">
          <node concept="3F0ifn" id="7e_PmaZxgEb" role="2wV5jI">
            <property role="3F0ifm" value="ref.presentation" />
          </node>
        </node>
        <node concept="xShMh" id="7e_PmaZxgEg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7e_PmaZxgqt" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="3mYdg7" id="7e_PmaZxgqu" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
        <node concept="ljvvj" id="7e_PmaZxgqv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="7e_PmaZxgqw" role="3EZMnx">
        <node concept="l2Vlx" id="7e_PmaZxgqx" role="2iSdaV" />
        <node concept="lj46D" id="7e_PmaZxgqy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F2HdR" id="7e_PmaZxgqB" role="3EZMnx">
          <ref role="1NtTu8" to="wknp:7e_PmaZxfxA" resolve="messages" />
          <node concept="l2Vlx" id="7e_PmaZxgqC" role="2czzBx" />
          <node concept="pj6Ft" id="7e_PmaZxgqD" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="7e_PmaZxgqE" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="7e_PmaZxgqF" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="xShMh" id="7e_PmaZxgHm" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7e_PmaZxgqG" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="3mYdg7" id="7e_PmaZxgqH" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7e_PmaZxgEQ">
    <ref role="1XX52x" to="wknp:7e_PmaZxfxz" resolve="Message" />
    <node concept="3EZMnI" id="7e_PmaZxgES" role="2wV5jI">
      <node concept="l2Vlx" id="7e_PmaZxgET" role="2iSdaV" />
      <node concept="3F0A7n" id="7e_PmaZxgEV" role="3EZMnx">
        <ref role="1NtTu8" to="wknp:7e_PmaZxfx$" resolve="text" />
        <node concept="xShMh" id="7e_PmaZxgHs" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
</model>

