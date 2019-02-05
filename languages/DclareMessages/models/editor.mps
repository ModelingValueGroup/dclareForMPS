<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d496f872-14f4-4415-9dd1-a59394188d3a(DclareMessages.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wknp" ref="r:9a42e459-6b0e-4c37-8fab-9b46bab588bd(DclareMessages.structure)" implicit="true" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="795210086017940429" name="jetbrains.mps.lang.editor.structure.ReadOnlyStyleClassItem" flags="lg" index="xShMh" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <property id="1139537298254" name="description" index="1hHO97" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="1227861515039" name="jetbrains.mps.lang.editor.structure.NavigatableReferenceStyleClassItem" flags="ln" index="3yfXC2">
        <reference id="1227861587090" name="link" index="3ygfmf" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
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
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="7e_PmaZxgph">
    <ref role="1XX52x" to="wknp:7e_PmaZxgoP" resolve="MessageSet" />
    <node concept="3EZMnI" id="7e_PmaZxgF$" role="2wV5jI">
      <node concept="l2Vlx" id="7e_PmaZxgF_" role="2iSdaV" />
      <node concept="lj46D" id="7e_PmaZxgFA" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="3F2HdR" id="7e_PmaZxgFF" role="3EZMnx">
        <ref role="1NtTu8" to="wknp:7e_PmaZxgoQ" resolve="messages" />
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
        <node concept="3F0ifn" id="5FinwQP4AMI" role="2czzBI">
          <property role="3F0ifm" value="&lt;no messages&gt;     " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7e_PmaZxgqa">
    <ref role="1XX52x" to="wknp:7e_PmaZxfwQ" resolve="Message" />
    <node concept="3EZMnI" id="7e_PmaZxgqc" role="2wV5jI">
      <ref role="1ERwB7" node="5FinwQPbka2" resolve="SourceSelection" />
      <node concept="l2Vlx" id="7e_PmaZxgqd" role="2iSdaV" />
      <node concept="3EZMnI" id="5FinwQP4Wbz" role="3EZMnx">
        <ref role="1ERwB7" node="5FinwQPbka2" resolve="SourceSelection" />
        <node concept="3F0A7n" id="5FinwQP4JyB" role="3EZMnx">
          <ref role="1NtTu8" to="wknp:5FinwQP4DTI" resolve="type" />
          <node concept="xShMh" id="4DDgtvGU1SC" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3yfXC2" id="4DDgtvGU1Yj" role="3F10Kt">
            <ref role="3ygfmf" to="wknp:7e_PmaZxfxC" resolve="source" />
          </node>
        </node>
        <node concept="3F0A7n" id="IcHFOtrdfu" role="3EZMnx">
          <ref role="1NtTu8" to="wknp:IcHFOtrcMv" resolve="id" />
          <node concept="xShMh" id="IcHFOtrdfv" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3yfXC2" id="IcHFOtrdfw" role="3F10Kt">
            <ref role="3ygfmf" to="wknp:7e_PmaZxfxC" resolve="source" />
          </node>
        </node>
        <node concept="3F0A7n" id="IcHFOtrdfH" role="3EZMnx">
          <ref role="1NtTu8" to="wknp:IcHFOtrcNa" resolve="text" />
          <node concept="xShMh" id="IcHFOtrdfI" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3yfXC2" id="IcHFOtrdfJ" role="3F10Kt">
            <ref role="3ygfmf" to="wknp:7e_PmaZxfxC" resolve="source" />
          </node>
        </node>
        <node concept="3F0ifn" id="5FinwQP4W2d" role="3EZMnx">
          <property role="3F0ifm" value="in" />
          <node concept="3yfXC2" id="4DDgtvGUdQB" role="3F10Kt">
            <ref role="3ygfmf" to="wknp:7e_PmaZxfxC" resolve="source" />
          </node>
        </node>
        <node concept="2iRfu4" id="5FinwQP4Wb$" role="2iSdaV" />
        <node concept="3F0A7n" id="4hagRHmzV$_" role="3EZMnx">
          <ref role="1NtTu8" to="wknp:4hagRHmzsU3" resolve="context" />
          <node concept="xShMh" id="4hagRHmzV$R" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3yfXC2" id="4DDgtvGUdQ$" role="3F10Kt">
            <ref role="3ygfmf" to="wknp:7e_PmaZxfxC" resolve="source" />
          </node>
        </node>
        <node concept="pVoyu" id="5FinwQP73ss" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="7e_PmaZxgqw" role="3EZMnx">
        <node concept="l2Vlx" id="7e_PmaZxgqx" role="2iSdaV" />
        <node concept="lj46D" id="7e_PmaZxgqy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F2HdR" id="7e_PmaZxgqB" role="3EZMnx">
          <ref role="1NtTu8" to="wknp:7e_PmaZxfxA" resolve="lines" />
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
        <node concept="pVoyu" id="5FinwQP73zy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7e_PmaZxgEQ">
    <ref role="1XX52x" to="wknp:7e_PmaZxfxz" resolve="MessageLine" />
    <node concept="3EZMnI" id="IcHFOtrdan" role="2wV5jI">
      <node concept="l2Vlx" id="IcHFOtrdao" role="2iSdaV" />
      <node concept="3F0A7n" id="IcHFOtrdg4" role="3EZMnx">
        <ref role="1NtTu8" to="wknp:7e_PmaZxfx$" resolve="text" />
        <node concept="xShMh" id="IcHFOtrdg5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3yfXC2" id="IcHFOtrdg6" role="3F10Kt">
          <ref role="3ygfmf" to="wknp:IcHFOtrcMs" resolve="source" />
        </node>
      </node>
      <node concept="3EZMnI" id="IcHFOtrda_" role="3EZMnx">
        <node concept="l2Vlx" id="IcHFOtrdaA" role="2iSdaV" />
        <node concept="lj46D" id="IcHFOtrdaB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F2HdR" id="IcHFOtrdaG" role="3EZMnx">
          <ref role="1NtTu8" to="wknp:IcHFOtrcMq" resolve="lines" />
          <node concept="l2Vlx" id="IcHFOtrdaH" role="2czzBx" />
          <node concept="pj6Ft" id="IcHFOtrdaI" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="IcHFOtrdaJ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="IcHFOtrdaK" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="5FinwQPbka2">
    <property role="TrG5h" value="SourceSelection" />
    <ref role="1h_SK9" to="wknp:7e_PmaZxfwQ" resolve="Message" />
    <node concept="1hA7zw" id="5FinwQPbka3" role="1h_SK8">
      <property role="1hAc7j" value="click_action_id" />
      <property role="1hHO97" value="select source" />
      <node concept="1hAIg9" id="5FinwQPbka4" role="1hA7z_">
        <node concept="3clFbS" id="5FinwQPbka5" role="2VODD2">
          <node concept="3clFbF" id="5FinwQPbkai" role="3cqZAp">
            <node concept="2OqwBi" id="5FinwQPbkhc" role="3clFbG">
              <node concept="1Q80Hx" id="5FinwQPbkah" role="2Oq$k0" />
              <node concept="liA8E" id="5FinwQPbZmP" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.select(org.jetbrains.mps.openapi.model.SNode):void" resolve="select" />
                <node concept="2OqwBi" id="5FinwQPbZvs" role="37wK5m">
                  <node concept="0IXxy" id="5FinwQPbZnn" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5FinwQPbZE6" role="2OqNvi">
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
</model>

