<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f72a0977-26ea-4451-94a1-65916d1e2877(DclareGui.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="c32b788d-8e4b-4023-97f5-3e90d04ed77b" name="DclareMPS" version="5" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="q3xn" ref="r:3ec44d77-eb4f-4600-add0-5e671af45a7b(DclareGui.rules)" />
    <import index="u4ym" ref="r:1a96ceaa-2946-43e0-af3f-cd05d77ee6d1(DclareMPSRuntime.util)" />
    <import index="53d4" ref="r:0049729d-ba70-461b-8d8a-b0755e3bfabb(DclareGui.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="4242538589859161874" name="jetbrains.mps.lang.editor.structure.ExplicitHintsSpecification" flags="ng" index="2w$q5c" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="1103016434866" name="jetbrains.mps.lang.editor.structure.CellModel_JComponent" flags="sg" stub="8104358048506731196" index="3gTLQM">
        <child id="1176475119347" name="componentProvider" index="3FoqZy" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="4242538589862653897" name="addHints" index="2whIAn" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1176474535556" name="jetbrains.mps.lang.editor.structure.QueryFunction_JComponent" flags="in" index="3Fmcul" />
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="c32b788d-8e4b-4023-97f5-3e90d04ed77b" name="DclareMPS">
      <concept id="7503535305242222763" name="DclareMPS.structure.MethodCallOperation" flags="ng" index="2$Gk$L" />
      <concept id="5274342987130696546" name="DclareMPS.structure.AttributeOperation" flags="ng" index="32jkxy" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="31sbKqyPLEJ">
    <property role="3GE5qa" value="diagrams" />
    <ref role="1XX52x" to="53d4:31sbKqyPLDe" resolve="NodeLayout" />
    <node concept="3EZMnI" id="31sbKqyPMfU" role="2wV5jI">
      <node concept="2iRfu4" id="31sbKqyPMfV" role="2iSdaV" />
      <node concept="1iCGBv" id="31sbKqyPM8b" role="3EZMnx">
        <ref role="1NtTu8" to="53d4:31sbKqyPLDf" resolve="node" />
        <node concept="1sVBvm" id="31sbKqyPM8d" role="1sWHZn">
          <node concept="3F0A7n" id="1J7fUUys9_H" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="7ypR233W1Ef" role="3EZMnx">
        <node concept="2iRfu4" id="7ypR233W1Eg" role="2iSdaV" />
        <node concept="3F0ifn" id="7ypR233W1Eo" role="3EZMnx">
          <property role="3F0ifm" value="x" />
        </node>
        <node concept="3F0ifn" id="7ypR233W1F4" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="7ypR233W1Ed" role="3EZMnx">
          <ref role="1NtTu8" to="53d4:31sbKqyPLDJ" resolve="x" />
        </node>
        <node concept="35HoNQ" id="7ypR233W1Fk" role="3EZMnx" />
        <node concept="3F0ifn" id="7ypR233W1Ew" role="3EZMnx">
          <property role="3F0ifm" value="y" />
        </node>
        <node concept="3F0ifn" id="7ypR233W1EE" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="7ypR233W1EQ" role="3EZMnx">
          <ref role="1NtTu8" to="53d4:31sbKqyPLDL" resolve="y" />
        </node>
      </node>
      <node concept="3F0ifn" id="2CQk7M45FWC" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F2HdR" id="2CQk7M45FW7" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="53d4:31sbKqyPLEi" resolve="edges" />
        <node concept="2iRfu4" id="2CQk7M45FW9" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="2CQk7M45FXa" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="31sbKqyPMeW">
    <property role="3GE5qa" value="diagrams" />
    <ref role="1XX52x" to="53d4:31sbKqyPLDj" resolve="EdgeLayout" />
    <node concept="3EZMnI" id="2CQk7M45OMm" role="2wV5jI">
      <node concept="l2Vlx" id="2CQk7M45OMn" role="2iSdaV" />
      <node concept="1iCGBv" id="31sbKqyPMeY" role="3EZMnx">
        <ref role="1NtTu8" to="53d4:31sbKqyPLDk" resolve="association" />
        <node concept="1sVBvm" id="31sbKqyPMeZ" role="1sWHZn">
          <node concept="3F0A7n" id="1J7fUUys9oa" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2CQk7M45OM_" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F2HdR" id="2CQk7M45OMZ" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="53d4:31sbKqyPMf4" resolve="joints" />
        <node concept="l2Vlx" id="2CQk7M45ON1" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="2CQk7M45OML" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="31sbKqyPMfA">
    <property role="3GE5qa" value="diagrams" />
    <ref role="1XX52x" to="53d4:31sbKqyPLDm" resolve="JointLayout" />
    <node concept="3EZMnI" id="31sbKqyPMfC" role="2wV5jI">
      <node concept="2iRfu4" id="31sbKqyPMfD" role="2iSdaV" />
      <node concept="3F0ifn" id="31sbKqyPMfE" role="3EZMnx">
        <property role="3F0ifm" value="x" />
      </node>
      <node concept="3F0ifn" id="31sbKqyPMfF" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0A7n" id="31sbKqyPMfG" role="3EZMnx">
        <ref role="1NtTu8" to="53d4:31sbKqyPMf7" resolve="x" />
      </node>
      <node concept="35HoNQ" id="31sbKqyPMfH" role="3EZMnx" />
      <node concept="3F0ifn" id="31sbKqyPMfI" role="3EZMnx">
        <property role="3F0ifm" value="y" />
      </node>
      <node concept="3F0ifn" id="31sbKqyPMfJ" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0A7n" id="31sbKqyPMfK" role="3EZMnx">
        <ref role="1NtTu8" to="53d4:31sbKqyPMf9" resolve="y" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="31sbKqyPMrZ">
    <property role="TrG5h" value="IEditorComponent" />
    <property role="3GE5qa" value="gui" />
    <ref role="1XX52x" to="53d4:3psr82$c6ii" resolve="IEditor" />
    <node concept="3EZMnI" id="Vg5FswJUJu" role="2wV5jI">
      <node concept="2iRfu4" id="Vg5FswJUJv" role="2iSdaV" />
      <node concept="3gTLQM" id="Vg5FswJUDm" role="3EZMnx">
        <node concept="3Fmcul" id="Vg5FswJUDo" role="3FoqZy">
          <node concept="3clFbS" id="Vg5FswJUDq" role="2VODD2">
            <node concept="3clFbF" id="Vg5FswK5a$" role="3cqZAp">
              <node concept="2OqwBi" id="7QL$9BxRTFz" role="3clFbG">
                <node concept="pncrf" id="7QL$9BxRTF$" role="2Oq$k0" />
                <node concept="32jkxy" id="7QL$9BxRTF_" role="2OqNvi">
                  <ref role="3cqZAo" to="q3xn:Vg5FswJWWZ" resolve="dPanel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="pkWqt" id="Vg5FswJUPB" role="pqm2j">
        <node concept="3clFbS" id="Vg5FswJUPC" role="2VODD2">
          <node concept="3cpWs8" id="1lgiJwuJ6d7" role="3cqZAp">
            <node concept="3cpWsn" id="1lgiJwuJ6d8" role="3cpWs9">
              <property role="TrG5h" value="dPanel" />
              <node concept="3uibUv" id="1lgiJwuJ61F" role="1tU5fm">
                <ref role="3uigEE" to="u4ym:5uiQOXmFP5Y" resolve="DPanel" />
              </node>
              <node concept="2OqwBi" id="1lgiJwuJ6d9" role="33vP2m">
                <node concept="pncrf" id="1lgiJwuJ6da" role="2Oq$k0" />
                <node concept="32jkxy" id="1lgiJwuJ6db" role="2OqNvi">
                  <ref role="3cqZAo" to="q3xn:Vg5FswJWWZ" resolve="dPanel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1lgiJwuJ6jt" role="3cqZAp">
            <node concept="3clFbS" id="1lgiJwuJ6jv" role="3clFbx">
              <node concept="3cpWs6" id="1lgiJwuJ7w4" role="3cqZAp">
                <node concept="3clFbT" id="1lgiJwuJ7y8" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1lgiJwuJ78S" role="3clFbw">
              <node concept="10Nm6u" id="1lgiJwuJ7py" role="3uHU7w" />
              <node concept="37vLTw" id="1lgiJwuJ6kR" role="3uHU7B">
                <ref role="3cqZAo" node="1lgiJwuJ6d8" resolve="dPanel" />
              </node>
            </node>
            <node concept="9aQIb" id="1lgiJwuJ7zZ" role="9aQIa">
              <node concept="3clFbS" id="1lgiJwuJ7$0" role="9aQI4">
                <node concept="3clFbF" id="AO_ohtaVNQ" role="3cqZAp">
                  <node concept="2OqwBi" id="AO_ohtaW1p" role="3clFbG">
                    <node concept="pncrf" id="AO_ohtaVNP" role="2Oq$k0" />
                    <node concept="2$Gk$L" id="AO_ohtaXg$" role="2OqNvi">
                      <ref role="37wK5l" to="q3xn:7SMfHClgL6N" resolve="init" />
                      <node concept="1Q80Hx" id="AO_ohtaXo5" role="37wK5m" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="1lgiJwuJ7A0" role="3cqZAp">
                  <node concept="3clFbT" id="1lgiJwuJ7Ft" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="67eN9Qkg3uH">
    <property role="3GE5qa" value="concept_diagram" />
    <ref role="1XX52x" to="53d4:67eN9Qkg3uD" resolve="ConceptRef" />
    <node concept="1iCGBv" id="67eN9Qkg3uJ" role="2wV5jI">
      <ref role="1NtTu8" to="53d4:67eN9Qkg3uE" resolve="concept" />
      <node concept="1sVBvm" id="67eN9Qkg3uL" role="1sWHZn">
        <node concept="3F0A7n" id="67eN9Qkg3uV" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="67eN9QkCk8_">
    <property role="3GE5qa" value="concept_diagram" />
    <ref role="1XX52x" to="53d4:67eN9QkffP5" resolve="ConceptDiagram" />
    <node concept="3EZMnI" id="4Oa6zNZyZYT" role="2wV5jI">
      <node concept="2iRkQZ" id="4Oa6zNZyZYU" role="2iSdaV" />
      <node concept="3EZMnI" id="4Oa6zNZyZZ8" role="3EZMnx">
        <node concept="2iRfu4" id="4Oa6zNZyZZ9" role="2iSdaV" />
        <node concept="3F0ifn" id="4Oa6zNZyZZi" role="3EZMnx">
          <property role="3F0ifm" value="diagram" />
        </node>
        <node concept="3F0A7n" id="4Oa6zNZyZYQ" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="PMmxH" id="1CjrrCKbnX3" role="3EZMnx">
        <ref role="PMmxG" node="31sbKqyPMrZ" resolve="IEditorComponent" />
      </node>
      <node concept="2w$q5c" id="6E86S2AAv3q" role="2whIAn" />
    </node>
    <node concept="3EZMnI" id="67eN9QkViCq" role="6VMZX">
      <node concept="2iRkQZ" id="67eN9QkViCr" role="2iSdaV" />
      <node concept="3EZMnI" id="67eN9QkViD9" role="3EZMnx">
        <node concept="2iRfu4" id="67eN9QkViDa" role="2iSdaV" />
        <node concept="3F0ifn" id="67eN9QkViDm" role="3EZMnx">
          <property role="3F0ifm" value="manual" />
        </node>
        <node concept="3F0ifn" id="67eN9QkViDp" role="3EZMnx">
          <property role="3F0ifm" value="selection" />
        </node>
        <node concept="3F0A7n" id="12WXgwl7BMy" role="3EZMnx">
          <ref role="1NtTu8" to="53d4:12WXgwl7Bd8" resolve="manual" />
        </node>
      </node>
      <node concept="3F0ifn" id="67eN9QkViCO" role="3EZMnx" />
      <node concept="3EZMnI" id="1CjrrCKbDnN" role="3EZMnx">
        <node concept="l2Vlx" id="1CjrrCKbDnO" role="2iSdaV" />
        <node concept="3F0ifn" id="1CjrrCKbDo0" role="3EZMnx">
          <property role="3F0ifm" value="concepts" />
        </node>
        <node concept="3F0ifn" id="1CjrrCKbDos" role="3EZMnx">
          <property role="3F0ifm" value="(" />
        </node>
        <node concept="3F2HdR" id="1CjrrCKbDnL" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="53d4:67eN9Qkfp8P" resolve="concepts" />
        </node>
        <node concept="3F0ifn" id="1CjrrCKbDoi" role="3EZMnx">
          <property role="3F0ifm" value=")" />
        </node>
      </node>
    </node>
  </node>
</model>

