<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d496f872-14f4-4415-9dd1-a59394188d3a(DclareMessages.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wknp" ref="r:9a42e459-6b0e-4c37-8fab-9b46bab588bd(DclareMessages.structure)" implicit="true" />
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
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="795210086017940429" name="jetbrains.mps.lang.editor.structure.ReadOnlyStyleClassItem" flags="lg" index="xShMh" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="7597241200646296619" name="jetbrains.mps.lang.editor.structure.QueryFunction_SNode" flags="in" index="3k4GqP" />
      <concept id="7597241200646296617" name="jetbrains.mps.lang.editor.structure.NavigatableNodeStyleClassItem" flags="ln" index="3k4GqR">
        <child id="7597241200646296618" name="functionNode" index="3k4GqO" />
      </concept>
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
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
      <node concept="3k4GqR" id="2m1Wr_p8Xys" role="3F10Kt">
        <node concept="3k4GqP" id="2m1Wr_p8Xyt" role="3k4GqO">
          <node concept="3clFbS" id="2m1Wr_p8Xyu" role="2VODD2">
            <node concept="3clFbF" id="2m1Wr_p8Xyv" role="3cqZAp">
              <node concept="2OqwBi" id="2m1Wr_p8Xyw" role="3clFbG">
                <node concept="pncrf" id="2m1Wr_p8Xyx" role="2Oq$k0" />
                <node concept="3TrEf2" id="2m1Wr_p8Xyy" role="2OqNvi">
                  <ref role="3Tt5mk" to="wknp:7e_PmaZxfxC" resolve="source" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="7e_PmaZxgqd" role="2iSdaV" />
      <node concept="3F0ifn" id="4hagRHmzsTD" role="3EZMnx">
        <property role="3F0ifm" value="ERROR" />
        <node concept="3k4GqR" id="2m1Wr_p8XaZ" role="3F10Kt">
          <node concept="3k4GqP" id="2m1Wr_p8Xb0" role="3k4GqO">
            <node concept="3clFbS" id="2m1Wr_p8Xb1" role="2VODD2">
              <node concept="3clFbF" id="2m1Wr_p8Xb2" role="3cqZAp">
                <node concept="2OqwBi" id="2m1Wr_p8Xb3" role="3clFbG">
                  <node concept="pncrf" id="2m1Wr_p8Xb4" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2m1Wr_p8Xb5" role="2OqNvi">
                    <ref role="3Tt5mk" to="wknp:7e_PmaZxfxC" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0A7n" id="4hagRHmzV$_" role="3EZMnx">
        <ref role="1NtTu8" to="wknp:4hagRHmzsU3" resolve="context" />
        <node concept="3k4GqR" id="4hagRHmzV$W" role="3F10Kt">
          <node concept="3k4GqP" id="4hagRHmzV$Y" role="3k4GqO">
            <node concept="3clFbS" id="4hagRHmzV_0" role="2VODD2">
              <node concept="3clFbF" id="4hagRHmzVCs" role="3cqZAp">
                <node concept="2OqwBi" id="4hagRHmzVNj" role="3clFbG">
                  <node concept="pncrf" id="4hagRHmzVCr" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4hagRHmzWwX" role="2OqNvi">
                    <ref role="3Tt5mk" to="wknp:7e_PmaZxfxC" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="xShMh" id="4hagRHmzV$R" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="7e_PmaZxgqw" role="3EZMnx">
        <node concept="l2Vlx" id="7e_PmaZxgqx" role="2iSdaV" />
        <node concept="lj46D" id="7e_PmaZxgqy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3k4GqR" id="2m1Wr_p8Xs8" role="3F10Kt">
          <node concept="3k4GqP" id="2m1Wr_p8Xs9" role="3k4GqO">
            <node concept="3clFbS" id="2m1Wr_p8Xsa" role="2VODD2">
              <node concept="3clFbF" id="2m1Wr_p8Xsb" role="3cqZAp">
                <node concept="2OqwBi" id="2m1Wr_p8Xsc" role="3clFbG">
                  <node concept="pncrf" id="2m1Wr_p8Xsd" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2m1Wr_p8Xse" role="2OqNvi">
                    <ref role="3Tt5mk" to="wknp:7e_PmaZxfxC" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
          </node>
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
          <node concept="3k4GqR" id="2m1Wr_p8XgQ" role="3F10Kt">
            <node concept="3k4GqP" id="2m1Wr_p8XgR" role="3k4GqO">
              <node concept="3clFbS" id="2m1Wr_p8XgS" role="2VODD2">
                <node concept="3clFbF" id="2m1Wr_p8XgT" role="3cqZAp">
                  <node concept="2OqwBi" id="2m1Wr_p8XgU" role="3clFbG">
                    <node concept="pncrf" id="2m1Wr_p8XgV" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2m1Wr_p8XgW" role="2OqNvi">
                      <ref role="3Tt5mk" to="wknp:7e_PmaZxfxC" resolve="source" />
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

