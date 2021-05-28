<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d496f872-14f4-4415-9dd1-a59394188d3a(DclareMessages.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="akim" ref="r:36c1ea3b-fbca-41f9-87cc-9bacb8f18c30(DclareMessages.behavior)" />
    <import index="t4tl" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.dclare.mps(DclareMPSRuntime/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="mbwu" ref="r:484d68ee-91ab-4199-84e9-f43210a9918b(DclareMPSPlugin.plugin)" />
    <import index="wknp" ref="r:9a42e459-6b0e-4c37-8fab-9b46bab588bd(DclareMessages.structure)" implicit="true" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" implicit="true" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" implicit="true" />
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
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="3459162043708467089" name="jetbrains.mps.lang.editor.structure.CellActionMap_CanExecuteFunction" flags="in" index="jK8Ss" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="795210086017940429" name="jetbrains.mps.lang.editor.structure.ReadOnlyStyleClassItem" flags="lg" index="xShMh" />
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186404574412" name="jetbrains.mps.lang.editor.structure.BackgroundColorStyleClassItem" flags="ln" index="Veino" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414976055" name="jetbrains.mps.lang.editor.structure.DrawBorderStyleClassItem" flags="ln" index="VPXOz" />
      <concept id="1186415722038" name="jetbrains.mps.lang.editor.structure.FontSizeStyleClassItem" flags="ln" index="VSNWy">
        <property id="1221209241505" name="value" index="1lJzqX" />
      </concept>
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <property id="1139537298254" name="description" index="1hHO97" />
        <child id="3459162043708468028" name="canExecuteFunction" index="jK8aL" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1227861515039" name="jetbrains.mps.lang.editor.structure.NavigatableReferenceStyleClassItem" flags="ln" index="3yfXC2">
        <reference id="1227861587090" name="link" index="3ygfmf" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="6240706158490734113" name="collapseByDefault" index="3EXrWe" />
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
      <concept id="1176809959526" name="jetbrains.mps.lang.editor.structure.QueryFunction_Color" flags="in" index="3ZlJ5R" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
      </concept>
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="2453008993612717253" name="jetbrains.mps.lang.smodel.structure.EnumSwitchCaseBody_Expression" flags="ng" index="3X5gDF">
        <child id="2453008993612717254" name="expression" index="3X5gDC" />
      </concept>
      <concept id="2453008993612559843" name="jetbrains.mps.lang.smodel.structure.EnumSwitchCase" flags="ng" index="3X5Udd">
        <child id="2453008993612717146" name="body" index="3X5gFO" />
        <child id="2453008993612559844" name="members" index="3X5Uda" />
      </concept>
      <concept id="2453008993612559839" name="jetbrains.mps.lang.smodel.structure.EnumSwitchExpression" flags="ng" index="3X5UdL">
        <child id="2453008993612714935" name="cases" index="3X5gkp" />
        <child id="2453008993612559840" name="enumExpression" index="3X5Ude" />
        <child id="2453008993619909454" name="otherwiseBody" index="3XxORw" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="7e_PmaZxgph">
    <ref role="1XX52x" to="wknp:7e_PmaZxgoP" resolve="MessageSet" />
    <node concept="3EZMnI" id="1DUQ$OwrN4j" role="2wV5jI">
      <node concept="3EZMnI" id="1DUQ$OwrQgP" role="3EZMnx">
        <node concept="2iRfu4" id="1DUQ$OwrQgQ" role="2iSdaV" />
        <node concept="3F0ifn" id="1DUQ$OwrN6Y" role="3EZMnx">
          <property role="3F0ifm" value="engine   " />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
        <node concept="3F0A7n" id="3zaVTDewP2f" role="3EZMnx">
          <ref role="1NtTu8" to="wknp:1DUQ$OwrN1P" resolve="engineState" />
          <ref role="1ERwB7" node="3jy5t$Kpvrt" resolve="OnOffAction" />
          <node concept="VPXOz" id="stpt8kgRS0" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="30gYXW" id="stpt8kihYn" role="3F10Kt">
            <property role="Vb096" value="hEZAO13/white" />
          </node>
        </node>
        <node concept="3F0ifn" id="3zaVTDeDWup" role="3EZMnx">
          <property role="3F0ifm" value=" " />
        </node>
        <node concept="3EZMnI" id="3YQqo46Z0g0" role="3EZMnx">
          <node concept="1HlG4h" id="12jv95xevMf" role="3EZMnx">
            <node concept="1HfYo3" id="12jv95xevMh" role="1HlULh">
              <node concept="3TQlhw" id="12jv95xevMj" role="1Hhtcw">
                <node concept="3clFbS" id="12jv95xevMl" role="2VODD2">
                  <node concept="3clFbF" id="12jv95xew4U" role="3cqZAp">
                    <node concept="2OqwBi" id="12jv95xewgy" role="3clFbG">
                      <node concept="pncrf" id="12jv95xew4T" role="2Oq$k0" />
                      <node concept="2qgKlT" id="12jv95xfEgs" role="2OqNvi">
                        <ref role="37wK5l" to="akim:12jv95xewus" resolve="statusFormatted" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="3YQqo46Z0g1" role="2iSdaV" />
          <node concept="Veino" id="3YQqo46Z2Q5" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
            <node concept="3ZlJ5R" id="3VwCmlf_e9S" role="VblUZ">
              <node concept="3clFbS" id="3VwCmlf_e9T" role="2VODD2">
                <node concept="3cpWs8" id="3tlm7a_tZ4K" role="3cqZAp">
                  <node concept="3cpWsn" id="3tlm7a_tZ4L" role="3cpWs9">
                    <property role="TrG5h" value="off" />
                    <node concept="3uibUv" id="3tlm7a_tZ3J" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
                    </node>
                    <node concept="2ShNRf" id="3tlm7a_tZ4M" role="33vP2m">
                      <node concept="1pGfFk" id="3tlm7a_tZ4N" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
                        <node concept="2nou5x" id="3tlm7a_tZ4O" role="37wK5m">
                          <property role="2noCCI" value="e0e0e0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3zaVTDepNZ8" role="3cqZAp">
                  <node concept="3cpWsn" id="3zaVTDepNZ9" role="3cpWs9">
                    <property role="TrG5h" value="idle" />
                    <node concept="3uibUv" id="3zaVTDepNZa" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
                    </node>
                    <node concept="2ShNRf" id="3zaVTDepNZb" role="33vP2m">
                      <node concept="1pGfFk" id="3zaVTDepNZc" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
                        <node concept="2nou5x" id="3zaVTDepNZd" role="37wK5m">
                          <property role="2noCCI" value="caf6ce" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3tlm7a_tZyO" role="3cqZAp">
                  <node concept="3cpWsn" id="3tlm7a_tZyP" role="3cpWs9">
                    <property role="TrG5h" value="active" />
                    <node concept="3uibUv" id="3tlm7a_tZxJ" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
                    </node>
                    <node concept="2ShNRf" id="3tlm7a_tZyQ" role="33vP2m">
                      <node concept="1pGfFk" id="3tlm7a_tZyR" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
                        <node concept="2nou5x" id="3tlm7a_tZyS" role="37wK5m">
                          <property role="2noCCI" value="7ad3ff" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3tlm7a_tZJJ" role="3cqZAp">
                  <node concept="3cpWsn" id="3tlm7a_tZJK" role="3cpWs9">
                    <property role="TrG5h" value="terminating" />
                    <node concept="3uibUv" id="3tlm7a_tZIM" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
                    </node>
                    <node concept="2ShNRf" id="3tlm7a_tZJL" role="33vP2m">
                      <node concept="1pGfFk" id="3tlm7a_tZJM" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
                        <node concept="2nou5x" id="3tlm7a_tZJN" role="37wK5m">
                          <property role="2noCCI" value="ffaa1d" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3tlm7a_tYTG" role="3cqZAp">
                  <node concept="3cpWsn" id="3tlm7a_tYTH" role="3cpWs9">
                    <property role="TrG5h" value="inError" />
                    <node concept="3uibUv" id="3tlm7a_tDYG" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
                    </node>
                    <node concept="2ShNRf" id="3tlm7a_tYTI" role="33vP2m">
                      <node concept="1pGfFk" id="3tlm7a_tYTJ" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
                        <node concept="2nou5x" id="3tlm7a_tYTK" role="37wK5m">
                          <property role="2noCCI" value="f3a9be" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3zaVTDepRiU" role="3cqZAp" />
                <node concept="3clFbF" id="3zaVTDewEXR" role="3cqZAp">
                  <node concept="3X5UdL" id="3zaVTDewEXN" role="3clFbG">
                    <node concept="2OqwBi" id="3zaVTDewFfv" role="3X5Ude">
                      <node concept="pncrf" id="3zaVTDewF1A" role="2Oq$k0" />
                      <node concept="3TrcHB" id="3zaVTDewFwv" role="2OqNvi">
                        <ref role="3TsBF5" to="wknp:1DUQ$OwrN1P" resolve="engineState" />
                      </node>
                    </node>
                    <node concept="3X5Udd" id="3zaVTDewG4W" role="3X5gkp">
                      <node concept="21nZrQ" id="3zaVTDewG4V" role="3X5Uda">
                        <ref role="21nZrZ" to="wknp:3zaVTDeuvaA" resolve="off" />
                      </node>
                      <node concept="3X5gDF" id="3zaVTDewGd2" role="3X5gFO">
                        <node concept="3K4zz7" id="3zaVTDewGd3" role="3X5gDC">
                          <node concept="37vLTw" id="3zaVTDewGd4" role="3K4E3e">
                            <ref role="3cqZAo" node="3tlm7a_tYTH" resolve="inError" />
                          </node>
                          <node concept="2OqwBi" id="3zaVTDewGd5" role="3K4Cdx">
                            <node concept="2OqwBi" id="3zaVTDewGd6" role="2Oq$k0">
                              <node concept="pncrf" id="3zaVTDewGd7" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="3zaVTDewGd8" role="2OqNvi">
                                <ref role="3TtcxE" to="wknp:7e_PmaZxgoQ" resolve="errors" />
                              </node>
                            </node>
                            <node concept="3GX2aA" id="3zaVTDewGd9" role="2OqNvi" />
                          </node>
                          <node concept="37vLTw" id="3zaVTDewGda" role="3K4GZi">
                            <ref role="3cqZAo" node="3tlm7a_tZ4L" resolve="off" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3X5Udd" id="3zaVTDewGo6" role="3X5gkp">
                      <node concept="21nZrQ" id="3zaVTDewGxl" role="3X5Uda">
                        <ref role="21nZrZ" to="wknp:3zaVTDeuvaB" resolve="terminating" />
                      </node>
                      <node concept="3X5gDF" id="3zaVTDewG_k" role="3X5gFO">
                        <node concept="37vLTw" id="3zaVTDewG_i" role="3X5gDC">
                          <ref role="3cqZAo" node="3tlm7a_tZJK" resolve="terminating" />
                        </node>
                      </node>
                    </node>
                    <node concept="3X5Udd" id="3zaVTDewGNe" role="3X5gkp">
                      <node concept="21nZrQ" id="3zaVTDewGUF" role="3X5Uda">
                        <ref role="21nZrZ" to="wknp:3zaVTDeuvaE" resolve="on" />
                      </node>
                      <node concept="3X5gDF" id="3zaVTDewGYP" role="3X5gFO">
                        <node concept="3K4zz7" id="3zaVTDewGYH" role="3X5gDC">
                          <node concept="37vLTw" id="3zaVTDewHju" role="3K4E3e">
                            <ref role="3cqZAo" node="3tlm7a_tZyP" resolve="active" />
                          </node>
                          <node concept="37vLTw" id="3zaVTDewHjy" role="3K4GZi">
                            <ref role="3cqZAo" node="3zaVTDepNZ9" resolve="idle" />
                          </node>
                          <node concept="2OqwBi" id="3zaVTDewH82" role="3K4Cdx">
                            <node concept="pncrf" id="3zaVTDewH83" role="2Oq$k0" />
                            <node concept="3TrcHB" id="3zaVTDewH84" role="2OqNvi">
                              <ref role="3TsBF5" to="wknp:3VwCmlf$VFh" resolve="transactionActive" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3X5gDF" id="3zaVTDeC8ei" role="3XxORw">
                      <node concept="37vLTw" id="3zaVTDeC8eg" role="3X5gDC">
                        <ref role="3cqZAo" node="3tlm7a_tZ4L" resolve="off" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VSNWy" id="3YQqo46Z7HU" role="3F10Kt">
            <property role="1lJzqX" value="10" />
          </node>
          <node concept="pkWqt" id="5v4VAeclRPF" role="pqm2j">
            <node concept="3clFbS" id="5v4VAeclRPG" role="2VODD2">
              <node concept="3clFbF" id="5v4VAeclUFD" role="3cqZAp">
                <node concept="3y3z36" id="5v4VAeclWES" role="3clFbG">
                  <node concept="10Nm6u" id="5v4VAeclWVU" role="3uHU7w" />
                  <node concept="2OqwBi" id="5v4VAeclVgi" role="3uHU7B">
                    <node concept="2JrnkZ" id="5v4VAeclUVZ" role="2Oq$k0">
                      <node concept="pncrf" id="5v4VAeclUFC" role="2JrQYb" />
                    </node>
                    <node concept="liA8E" id="5v4VAeclVoL" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                      <node concept="355D3s" id="5v4VAeclWdv" role="37wK5m">
                        <ref role="355D3t" to="wknp:7e_PmaZxgoP" resolve="MessageSet" />
                        <ref role="355D3u" to="wknp:1FrOyhdWCsR" resolve="changes" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="1DUQ$OwrN4k" role="2iSdaV" />
      <node concept="3EZMnI" id="1KqhpdG7b8B" role="3EZMnx">
        <node concept="2iRfu4" id="1KqhpdG7b8C" role="2iSdaV" />
        <node concept="3F0ifn" id="1KqhpdG7b9y" role="3EZMnx">
          <property role="3F0ifm" value="errors   " />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
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
          <node concept="3F0ifn" id="5FinwQP4AMI" role="2czzBI">
            <property role="3F0ifm" value="&lt;none&gt;    " />
            <node concept="VechU" id="1KqhpdG7b7i" role="3F10Kt">
              <property role="Vb096" value="fLJRk5A/lightGray" />
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="1KqhpdG7b9j" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1KqhpdG7b9l" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="3VwCmlf$HlE" role="pqm2j">
          <node concept="3clFbS" id="3VwCmlf$HlF" role="2VODD2">
            <node concept="3clFbF" id="3VwCmlf$Hm4" role="3cqZAp">
              <node concept="2OqwBi" id="3VwCmlf$JnM" role="3clFbG">
                <node concept="2OqwBi" id="3VwCmlf$HyM" role="2Oq$k0">
                  <node concept="pncrf" id="3VwCmlf$Hm3" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3VwCmlf$HJj" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:7e_PmaZxgoQ" resolve="errors" />
                  </node>
                </node>
                <node concept="3GX2aA" id="3VwCmlf$L4i" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="1KqhpdG7bb_" role="3EZMnx">
        <node concept="2iRfu4" id="1KqhpdG7bbA" role="2iSdaV" />
        <node concept="3F0ifn" id="1KqhpdG7bbB" role="3EZMnx">
          <property role="3F0ifm" value="warnings " />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
        <node concept="3F2HdR" id="1KqhpdG7bbC" role="3EZMnx">
          <ref role="1NtTu8" to="wknp:30f$n$3bYxD" resolve="warnings" />
          <node concept="l2Vlx" id="1KqhpdG7bbD" role="2czzBx" />
          <node concept="pj6Ft" id="1KqhpdG7bbE" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="1KqhpdG7bbF" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="1KqhpdG7bbG" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="xShMh" id="1KqhpdG7bbH" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="1KqhpdG7bbI" role="2czzBI">
            <property role="3F0ifm" value="&lt;none&gt;    " />
            <node concept="VechU" id="1KqhpdG7bbJ" role="3F10Kt">
              <property role="Vb096" value="fLJRk5A/lightGray" />
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="1KqhpdG7bbK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1KqhpdG7bbL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="3VwCmlf$L93" role="pqm2j">
          <node concept="3clFbS" id="3VwCmlf$L94" role="2VODD2">
            <node concept="3clFbF" id="3VwCmlf$L9t" role="3cqZAp">
              <node concept="2OqwBi" id="3VwCmlf$MNN" role="3clFbG">
                <node concept="2OqwBi" id="3VwCmlf$Lmb" role="2Oq$k0">
                  <node concept="pncrf" id="3VwCmlf$L9s" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3VwCmlf$Lv9" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:30f$n$3bYxD" resolve="warnings" />
                  </node>
                </node>
                <node concept="3GX2aA" id="3VwCmlf$Osp" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="1KqhpdG7bfz" role="3EZMnx">
        <node concept="2iRfu4" id="1KqhpdG7bf$" role="2iSdaV" />
        <node concept="3F0ifn" id="1KqhpdG7bf_" role="3EZMnx">
          <property role="3F0ifm" value="infos    " />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
        <node concept="3F2HdR" id="1KqhpdG7bfA" role="3EZMnx">
          <ref role="1NtTu8" to="wknp:30f$n$3bYxH" resolve="infos" />
          <node concept="l2Vlx" id="1KqhpdG7bfB" role="2czzBx" />
          <node concept="pj6Ft" id="1KqhpdG7bfC" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="1KqhpdG7bfD" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="1KqhpdG7bfE" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="xShMh" id="1KqhpdG7bfF" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="1KqhpdG7bfG" role="2czzBI">
            <property role="3F0ifm" value="&lt;none&gt;    " />
            <node concept="VechU" id="1KqhpdG7bfH" role="3F10Kt">
              <property role="Vb096" value="fLJRk5A/lightGray" />
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="1KqhpdG7bfI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1KqhpdG7bfJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="3VwCmlf$OE3" role="pqm2j">
          <node concept="3clFbS" id="3VwCmlf$OE4" role="2VODD2">
            <node concept="3clFbF" id="3VwCmlf$OEt" role="3cqZAp">
              <node concept="2OqwBi" id="3VwCmlf$Q_p" role="3clFbG">
                <node concept="2OqwBi" id="3VwCmlf$ORb" role="2Oq$k0">
                  <node concept="pncrf" id="3VwCmlf$OEs" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3VwCmlf$P09" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:30f$n$3bYxH" resolve="infos" />
                  </node>
                </node>
                <node concept="3GX2aA" id="3VwCmlf$RN4" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="1KqhpdG7bhO" role="3EZMnx">
        <node concept="2iRfu4" id="1KqhpdG7bhP" role="2iSdaV" />
        <node concept="3F0ifn" id="1KqhpdG7bhQ" role="3EZMnx">
          <property role="3F0ifm" value="debugs   " />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
        <node concept="3F2HdR" id="1KqhpdG7bhR" role="3EZMnx">
          <ref role="1NtTu8" to="wknp:30f$n$3bYxM" resolve="debugs" />
          <node concept="l2Vlx" id="1KqhpdG7bhS" role="2czzBx" />
          <node concept="pj6Ft" id="1KqhpdG7bhT" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="1KqhpdG7bhU" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="1KqhpdG7bhV" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="xShMh" id="1KqhpdG7bhW" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="1KqhpdG7bhX" role="2czzBI">
            <property role="3F0ifm" value="&lt;none&gt;    " />
            <node concept="VechU" id="1KqhpdG7bhY" role="3F10Kt">
              <property role="Vb096" value="fLJRk5A/lightGray" />
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="1KqhpdG7bhZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1KqhpdG7bi0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="3VwCmlf$RV$" role="pqm2j">
          <node concept="3clFbS" id="3VwCmlf$RV_" role="2VODD2">
            <node concept="3clFbF" id="3VwCmlf$RVY" role="3cqZAp">
              <node concept="2OqwBi" id="3VwCmlf$TS6" role="3clFbG">
                <node concept="2OqwBi" id="3VwCmlf$S8G" role="2Oq$k0">
                  <node concept="pncrf" id="3VwCmlf$RVX" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3VwCmlf$ShE" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:30f$n$3bYxM" resolve="debugs" />
                  </node>
                </node>
                <node concept="3GX2aA" id="3VwCmlf$VA2" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7e_PmaZxgqa">
    <ref role="1XX52x" to="wknp:7e_PmaZxfwQ" resolve="Message" />
    <node concept="3EZMnI" id="7e_PmaZxgqc" role="2wV5jI">
      <node concept="l2Vlx" id="7e_PmaZxgqd" role="2iSdaV" />
      <node concept="3EZMnI" id="5FinwQP4Wbz" role="3EZMnx">
        <node concept="3F0A7n" id="IcHFOtrdfu" role="3EZMnx">
          <ref role="1NtTu8" to="wknp:IcHFOtrcMv" resolve="id" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          <node concept="xShMh" id="IcHFOtrdfv" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3yfXC2" id="IcHFOtrdfw" role="3F10Kt">
            <ref role="3ygfmf" to="wknp:7e_PmaZxfxC" resolve="source" />
          </node>
          <node concept="VechU" id="2seYxKlo6Ew" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/darkGreen" />
          </node>
          <node concept="pkWqt" id="30f$n$3itU_" role="pqm2j">
            <node concept="3clFbS" id="30f$n$3itUA" role="2VODD2">
              <node concept="3clFbF" id="30f$n$3iu1V" role="3cqZAp">
                <node concept="3y3z36" id="30f$n$3ivUh" role="3clFbG">
                  <node concept="10Nm6u" id="30f$n$3iw3N" role="3uHU7w" />
                  <node concept="2OqwBi" id="30f$n$3iueq" role="3uHU7B">
                    <node concept="pncrf" id="30f$n$3iu1U" role="2Oq$k0" />
                    <node concept="3TrcHB" id="30f$n$3iuyF" role="2OqNvi">
                      <ref role="3TsBF5" to="wknp:IcHFOtrcMv" resolve="id" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
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
        <node concept="3EZMnI" id="30f$n$3iAK2" role="3EZMnx">
          <node concept="2iRfu4" id="30f$n$3iAK3" role="2iSdaV" />
          <node concept="3F0ifn" id="5FinwQP4W2d" role="3EZMnx">
            <property role="3F0ifm" value="in" />
            <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
            <node concept="3yfXC2" id="4DDgtvGUdQB" role="3F10Kt">
              <ref role="3ygfmf" to="wknp:7e_PmaZxfxC" resolve="source" />
            </node>
          </node>
          <node concept="3F0A7n" id="4hagRHmzV$_" role="3EZMnx">
            <ref role="1NtTu8" to="wknp:24xnmkF8lZy" resolve="context" />
            <node concept="xShMh" id="4hagRHmzV$R" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="3yfXC2" id="4DDgtvGUdQ$" role="3F10Kt">
              <ref role="3ygfmf" to="wknp:24xnmkFe4UT" resolve="node" />
            </node>
          </node>
          <node concept="pkWqt" id="30f$n$3iB5b" role="pqm2j">
            <node concept="3clFbS" id="30f$n$3iB5c" role="2VODD2">
              <node concept="3clFbF" id="30f$n$3iBcx" role="3cqZAp">
                <node concept="3y3z36" id="30f$n$3iCZT" role="3clFbG">
                  <node concept="10Nm6u" id="30f$n$3iDgO" role="3uHU7w" />
                  <node concept="2OqwBi" id="30f$n$3iBsH" role="3uHU7B">
                    <node concept="pncrf" id="30f$n$3iBcw" role="2Oq$k0" />
                    <node concept="3TrcHB" id="30f$n$3iBLS" role="2OqNvi">
                      <ref role="3TsBF5" to="wknp:24xnmkF8lZy" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="5FinwQP4Wb$" role="2iSdaV" />
        <node concept="pVoyu" id="5FinwQP73ss" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="1KqhpdFLOoo" role="3EZMnx">
          <property role="3F0ifm" value="          " />
          <node concept="pkWqt" id="1KqhpdFLOyV" role="pqm2j">
            <node concept="3clFbS" id="1KqhpdFLOyW" role="2VODD2">
              <node concept="3clFbF" id="1KqhpdFLP1U" role="3cqZAp">
                <node concept="2OqwBi" id="1KqhpdFLPg$" role="3clFbG">
                  <node concept="pncrf" id="1KqhpdFLP1S" role="2Oq$k0" />
                  <node concept="2qgKlT" id="1KqhpdFLPCt" role="2OqNvi">
                    <ref role="37wK5l" to="akim:5j905zHg5d1" resolve="initializeChildren" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1KqhpdFLOEh" role="3cqZAp">
                <node concept="3clFbT" id="1KqhpdFLOEg" role="3clFbG">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="7e_PmaZxgqw" role="3EZMnx">
        <property role="3EXrWe" value="true" />
        <node concept="l2Vlx" id="7e_PmaZxgqx" role="2iSdaV" />
        <node concept="lj46D" id="7e_PmaZxgqy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="1QoScp" id="1KqhpdG6kYT" role="3EZMnx">
          <property role="1QpmdY" value="true" />
          <node concept="pkWqt" id="1KqhpdG6kYW" role="3e4ffs">
            <node concept="3clFbS" id="1KqhpdG6kYY" role="2VODD2">
              <node concept="3clFbF" id="1KqhpdG6ljJ" role="3cqZAp">
                <node concept="2OqwBi" id="1KqhpdG6lwg" role="3clFbG">
                  <node concept="pncrf" id="1KqhpdG6ljI" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1KqhpdG6lUI" role="2OqNvi">
                    <ref role="3TsBF5" to="wknp:5j905zHfYa$" resolve="expanded" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="1KqhpdG6mgU" role="1QoVPY">
            <property role="3F0ifm" value="……" />
            <ref role="1ERwB7" node="1KqhpdG5TiT" resolve="Expand" />
            <node concept="VechU" id="2seYxKlnZiV" role="3F10Kt">
              <property role="Vb096" value="g1_qRwE/darkGreen" />
            </node>
          </node>
          <node concept="3EZMnI" id="5mT2CTpGAa6" role="1QoS34">
            <node concept="2iRfu4" id="5mT2CTpGAa7" role="2iSdaV" />
            <node concept="3F0ifn" id="5mT2CTpGAjD" role="3EZMnx">
              <property role="3F0ifm" value="[]" />
              <ref role="1ERwB7" node="1KqhpdG5TiT" resolve="Expand" />
              <node concept="VechU" id="2seYxKlnZiX" role="3F10Kt">
                <property role="Vb096" value="g1_qRwE/darkGreen" />
              </node>
            </node>
            <node concept="3F2HdR" id="7e_PmaZxgqB" role="3EZMnx">
              <ref role="1NtTu8" to="wknp:7e_PmaZxfxA" resolve="children" />
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
        </node>
        <node concept="pVoyu" id="5FinwQP73zy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="28aZ75U6B9s" role="pqm2j">
          <node concept="3clFbS" id="28aZ75U6B9t" role="2VODD2">
            <node concept="3clFbF" id="28aZ75U6B9u" role="3cqZAp">
              <node concept="2OqwBi" id="28aZ75U6B9v" role="3clFbG">
                <node concept="2OqwBi" id="28aZ75U6B9w" role="2Oq$k0">
                  <node concept="pncrf" id="28aZ75U6B9x" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="28aZ75U6B9y" role="2OqNvi">
                    <ref role="3TtcxE" to="wknp:7e_PmaZxfxA" resolve="children" />
                  </node>
                </node>
                <node concept="3GX2aA" id="28aZ75U6B9z" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="1KqhpdG5TiT">
    <property role="TrG5h" value="Expand" />
    <ref role="1h_SK9" to="wknp:7e_PmaZxfwQ" resolve="Message" />
    <node concept="1hA7zw" id="1KqhpdG5TiX" role="1h_SK8">
      <property role="1hAc7j" value="1FSxSwWqMNJ/click_action_id" />
      <property role="1hHO97" value="expand" />
      <node concept="1hAIg9" id="1KqhpdG5TiY" role="1hA7z_">
        <node concept="3clFbS" id="1KqhpdG5TiZ" role="2VODD2">
          <node concept="3clFbJ" id="5mT2CTpGemX" role="3cqZAp">
            <node concept="3clFbS" id="5mT2CTpGemZ" role="3clFbx">
              <node concept="3clFbF" id="5mT2CTpGf5u" role="3cqZAp">
                <node concept="37vLTI" id="5mT2CTpGfWP" role="3clFbG">
                  <node concept="3clFbT" id="5mT2CTpGg2B" role="37vLTx" />
                  <node concept="2OqwBi" id="5mT2CTpGfcG" role="37vLTJ">
                    <node concept="0IXxy" id="5mT2CTpGf5s" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5mT2CTpGflG" role="2OqNvi">
                      <ref role="3TsBF5" to="wknp:5j905zHfYa$" resolve="expanded" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5mT2CTpGeCc" role="3clFbw">
              <node concept="0IXxy" id="5mT2CTpGerP" role="2Oq$k0" />
              <node concept="3TrcHB" id="5mT2CTpGeOH" role="2OqNvi">
                <ref role="3TsBF5" to="wknp:5j905zHfYa$" resolve="expanded" />
              </node>
            </node>
            <node concept="9aQIb" id="5mT2CTpGeQO" role="9aQIa">
              <node concept="3clFbS" id="5mT2CTpGeQP" role="9aQI4">
                <node concept="3clFbF" id="1KqhpdG5XLo" role="3cqZAp">
                  <node concept="37vLTI" id="1KqhpdG5YwG" role="3clFbG">
                    <node concept="3clFbT" id="1KqhpdG5YAD" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="2OqwBi" id="1KqhpdG5XSC" role="37vLTJ">
                      <node concept="0IXxy" id="1KqhpdG5XLn" role="2Oq$k0" />
                      <node concept="3TrcHB" id="1KqhpdG5Y1H" role="2OqNvi">
                        <ref role="3TsBF5" to="wknp:5j905zHfYa$" resolve="expanded" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="1KqhpdG5YT3" role="3cqZAp">
                  <node concept="2GrKxI" id="1KqhpdG5YT5" role="2Gsz3X">
                    <property role="TrG5h" value="c" />
                  </node>
                  <node concept="2OqwBi" id="1KqhpdG5Z5a" role="2GsD0m">
                    <node concept="0IXxy" id="1KqhpdG5YW5" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="1KqhpdG5Zeh" role="2OqNvi">
                      <ref role="3TtcxE" to="wknp:7e_PmaZxfxA" resolve="children" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1KqhpdG5YT9" role="2LFqv$">
                    <node concept="3clFbF" id="1KqhpdG5ZgJ" role="3cqZAp">
                      <node concept="2OqwBi" id="1KqhpdG5ZnM" role="3clFbG">
                        <node concept="2GrUjf" id="1KqhpdG5ZgI" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="1KqhpdG5YT5" resolve="c" />
                        </node>
                        <node concept="2qgKlT" id="1KqhpdG5ZzS" role="2OqNvi">
                          <ref role="37wK5l" to="akim:5j905zHg5d1" resolve="initializeChildren" />
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
      <node concept="jK8Ss" id="1KqhpdG5Tje" role="jK8aL">
        <node concept="3clFbS" id="1KqhpdG5Tjf" role="2VODD2">
          <node concept="3clFbF" id="1KqhpdG5TqD" role="3cqZAp">
            <node concept="2OqwBi" id="1KqhpdG5VRK" role="3clFbG">
              <node concept="2OqwBi" id="1KqhpdG5TEU" role="2Oq$k0">
                <node concept="0IXxy" id="1KqhpdG5TqC" role="2Oq$k0" />
                <node concept="3Tsc0h" id="1KqhpdG5TVe" role="2OqNvi">
                  <ref role="3TtcxE" to="wknp:7e_PmaZxfxA" resolve="children" />
                </node>
              </node>
              <node concept="3GX2aA" id="1KqhpdG5XzU" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="3jy5t$Kpvrt">
    <property role="TrG5h" value="OnOffAction" />
    <ref role="1h_SK9" to="wknp:7e_PmaZxgoP" resolve="MessageSet" />
    <node concept="1hA7zw" id="3jy5t$Kpvru" role="1h_SK8">
      <property role="1hAc7j" value="1FSxSwWqMNJ/click_action_id" />
      <node concept="1hAIg9" id="3jy5t$Kpvrv" role="1hA7z_">
        <node concept="3clFbS" id="3jy5t$Kpvrw" role="2VODD2">
          <node concept="3cpWs8" id="3jy5t$KXxKS" role="3cqZAp">
            <node concept="3cpWsn" id="3jy5t$KXxKT" role="3cpWs9">
              <property role="TrG5h" value="engine" />
              <node concept="3uibUv" id="3jy5t$KXxKU" role="1tU5fm">
                <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
              </node>
              <node concept="10QFUN" id="3jy5t$KXykV" role="33vP2m">
                <node concept="3uibUv" id="3jy5t$KXynt" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DclareForMPSEngine" resolve="DclareForMPSEngine" />
                </node>
                <node concept="2OqwBi" id="3jy5t$KXy7X" role="10QFUP">
                  <node concept="2JrnkZ" id="3jy5t$KXxUE" role="2Oq$k0">
                    <node concept="0IXxy" id="3jy5t$KXxLA" role="2JrQYb" />
                  </node>
                  <node concept="liA8E" id="3jy5t$KXygc" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object)" resolve="getUserObject" />
                    <node concept="10M0yZ" id="3zaVTDewamD" role="37wK5m">
                      <ref role="3cqZAo" to="akim:3zaVTDewagF" resolve="ENGINE_IN_ROOT_KEY" />
                      <ref role="1PxDUh" to="akim:3zaVTDewaf5" resolve="Const" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2yBFF$$gGTo" role="3cqZAp">
            <node concept="2OqwBi" id="2yBFF$$gI9I" role="3clFbG">
              <node concept="37vLTw" id="2yBFF$$gHZW" role="2Oq$k0">
                <ref role="3cqZAo" node="3jy5t$KXxKT" resolve="engine" />
              </node>
              <node concept="liA8E" id="2yBFF$$gInu" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setConfig(org.modelingvalue.dclare.mps.DclareForMpsConfig)" resolve="setConfig" />
                <node concept="2OqwBi" id="2yBFF$$gHq5" role="37wK5m">
                  <node concept="2OqwBi" id="2yBFF$$gH4d" role="2Oq$k0">
                    <node concept="37vLTw" id="2yBFF$$gGTm" role="2Oq$k0">
                      <ref role="3cqZAo" node="3jy5t$KXxKT" resolve="engine" />
                    </node>
                    <node concept="liA8E" id="2yBFF$$gHhb" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.getConfig()" resolve="getConfig" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2yBFF$$gHCY" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withOnMode(boolean)" resolve="withOnMode" />
                    <node concept="3clFbT" id="2yBFF$$gHDM" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2yBFF$$gI$L" role="3cqZAp">
            <node concept="2OqwBi" id="2yBFF$$gI$M" role="3clFbG">
              <node concept="37vLTw" id="2yBFF$$gI$N" role="2Oq$k0">
                <ref role="3cqZAo" node="3jy5t$KXxKT" resolve="engine" />
              </node>
              <node concept="liA8E" id="2yBFF$$gI$O" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.setConfig(org.modelingvalue.dclare.mps.DclareForMpsConfig)" resolve="setConfig" />
                <node concept="2OqwBi" id="2yBFF$$gI$P" role="37wK5m">
                  <node concept="2OqwBi" id="2yBFF$$gI$Q" role="2Oq$k0">
                    <node concept="37vLTw" id="2yBFF$$gI$R" role="2Oq$k0">
                      <ref role="3cqZAo" node="3jy5t$KXxKT" resolve="engine" />
                    </node>
                    <node concept="liA8E" id="2yBFF$$gI$S" role="2OqNvi">
                      <ref role="37wK5l" to="t4tl:~DclareForMPSEngine.getConfig()" resolve="getConfig" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2yBFF$$gI$T" role="2OqNvi">
                    <ref role="37wK5l" to="t4tl:~DclareForMpsConfig.withOnMode(boolean)" resolve="withOnMode" />
                    <node concept="3y3z36" id="3zaVTDevz7G" role="37wK5m">
                      <node concept="2OqwBi" id="3zaVTDevxXt" role="3uHU7B">
                        <node concept="0IXxy" id="3zaVTDevxXu" role="2Oq$k0" />
                        <node concept="3TrcHB" id="3zaVTDevxXv" role="2OqNvi">
                          <ref role="3TsBF5" to="wknp:1DUQ$OwrN1P" resolve="engineState" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3zaVTDevxXq" role="3uHU7w">
                        <node concept="1XH99k" id="3zaVTDevxXr" role="2Oq$k0">
                          <ref role="1XH99l" to="wknp:3zaVTDeuva_" resolve="EngineOperationState" />
                        </node>
                        <node concept="2ViDtV" id="3zaVTDevy6X" role="2OqNvi">
                          <ref role="2ViDtZ" to="wknp:3zaVTDeuvaE" resolve="on" />
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
      <node concept="jK8Ss" id="3zaVTDepRrE" role="jK8aL">
        <node concept="3clFbS" id="3zaVTDepRrF" role="2VODD2">
          <node concept="3clFbF" id="3zaVTDepRxD" role="3cqZAp">
            <node concept="3y3z36" id="3zaVTDevvv2" role="3clFbG">
              <node concept="2OqwBi" id="3zaVTDevwVN" role="3uHU7w">
                <node concept="1XH99k" id="3zaVTDevvIp" role="2Oq$k0">
                  <ref role="1XH99l" to="wknp:3zaVTDeuva_" resolve="EngineOperationState" />
                </node>
                <node concept="2ViDtV" id="3zaVTDevxhk" role="2OqNvi">
                  <ref role="2ViDtZ" to="wknp:3zaVTDeuvaB" resolve="terminating" />
                </node>
              </node>
              <node concept="2OqwBi" id="3zaVTDepSKe" role="3uHU7B">
                <node concept="0IXxy" id="3zaVTDepSKf" role="2Oq$k0" />
                <node concept="3TrcHB" id="3zaVTDevvdL" role="2OqNvi">
                  <ref role="3TsBF5" to="wknp:1DUQ$OwrN1P" resolve="engineState" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

