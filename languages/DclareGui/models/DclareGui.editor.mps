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
    <import index="hypd" ref="r:aa31e43e-9240-4f4d-b6db-5c1c9a86c59e(jetbrains.mps.lang.project.structure)" />
    <import index="53d4" ref="r:0049729d-ba70-461b-8d8a-b0755e3bfabb(DclareGui.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1164052439493" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_MatchingText" flags="in" index="6VE3a" />
      <concept id="1164052588708" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_DescriptionText" flags="in" index="6WeAF" />
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
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414976055" name="jetbrains.mps.lang.editor.structure.DrawBorderStyleClassItem" flags="ln" index="VPXOz" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="1165253627126" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup" flags="ng" index="1exORT">
        <property id="1165254125954" name="presentation" index="1ezIyd" />
        <child id="1165253890469" name="parameterObjectType" index="1eyP2E" />
        <child id="1165254159533" name="matchingTextFunction" index="1ezQQy" />
        <child id="1165254180581" name="descriptionTextFunction" index="1ezVZE" />
      </concept>
      <concept id="1165270418989" name="jetbrains.mps.lang.editor.structure.CellMenuPart_ReplaceChild_Group" flags="ng" index="1fxSsy">
        <child id="1165270418991" name="parametersFunction" index="1fxSsw" />
        <child id="1165270418992" name="createFunction" index="1fxSsZ" />
      </concept>
      <concept id="1165270662927" name="jetbrains.mps.lang.editor.structure.CellMenuPart_ReplaceChild_Group_Query" flags="in" index="1fyNS0" />
      <concept id="1165270999881" name="jetbrains.mps.lang.editor.structure.CellMenuPart_ReplaceChild_Group_Create" flags="in" index="1f$696" />
      <concept id="1103016434866" name="jetbrains.mps.lang.editor.structure.CellModel_JComponent" flags="sg" stub="8104358048506731196" index="3gTLQM">
        <child id="1176475119347" name="componentProvider" index="3FoqZy" />
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
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
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
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1176474535556" name="jetbrains.mps.lang.editor.structure.QueryFunction_JComponent" flags="in" index="3Fmcul" />
      <concept id="1163613549566" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_parameterObject" flags="nn" index="3GLrbK" />
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
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
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="6995935425733782641" name="jetbrains.mps.lang.smodel.structure.Model_GetModule" flags="nn" index="13u695" />
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
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
      <node concept="3F0A7n" id="3VTkizYIetd" role="3EZMnx">
        <ref role="1NtTu8" to="53d4:3VTkizYHXZo" resolve="identity" />
      </node>
      <node concept="35HoNQ" id="3VTkizYIesT" role="3EZMnx" />
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
      <node concept="2iRfu4" id="6FHmkWLdGpn" role="2iSdaV" />
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
          <node concept="3clFbF" id="AO_ohtaVNQ" role="3cqZAp">
            <node concept="2OqwBi" id="AO_ohtaW1p" role="3clFbG">
              <node concept="pncrf" id="AO_ohtaVNP" role="2Oq$k0" />
              <node concept="2$Gk$L" id="AO_ohtaXg$" role="2OqNvi">
                <ref role="37wK5l" to="q3xn:7SMfHClgL6N" resolve="update" />
                <node concept="1Q80Hx" id="AO_ohtaXo5" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6FHmkWK6de4" role="3cqZAp">
            <node concept="3clFbS" id="6FHmkWK6de6" role="3clFbx">
              <node concept="3cpWs6" id="6FHmkWK6eZo" role="3cqZAp">
                <node concept="3clFbT" id="6FHmkWK6f15" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6FHmkWK6eGP" role="3clFbw">
              <node concept="10Nm6u" id="6FHmkWK6eXU" role="3uHU7w" />
              <node concept="37vLTw" id="6FHmkWK6dg1" role="3uHU7B">
                <ref role="3cqZAo" node="1lgiJwuJ6d8" resolve="dPanel" />
              </node>
            </node>
            <node concept="9aQIb" id="6FHmkWK6f2L" role="9aQIa">
              <node concept="3clFbS" id="6FHmkWK6f2M" role="9aQI4">
                <node concept="3clFbF" id="6FHmkWK6fcY" role="3cqZAp">
                  <node concept="2OqwBi" id="6FHmkWK6ftq" role="3clFbG">
                    <node concept="pncrf" id="6FHmkWK6fcX" role="2Oq$k0" />
                    <node concept="2$Gk$L" id="6FHmkWK6hWf" role="2OqNvi">
                      <ref role="37wK5l" to="q3xn:6FHmkWK66ey" resolve="init" />
                      <node concept="1Q80Hx" id="6FHmkWK6i3i" role="37wK5m" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6FHmkWK6f4s" role="3cqZAp">
                  <node concept="3clFbT" id="6FHmkWK6f6r" role="3cqZAk" />
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
          <node concept="VPM3Z" id="7aFw1sr3pGx" role="3F10Kt" />
        </node>
        <node concept="3F0A7n" id="4Oa6zNZyZYQ" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="35HoNQ" id="2Q8IysV1GpB" role="3EZMnx" />
        <node concept="3F0ifn" id="7aFw1sqbIKj" role="3EZMnx">
          <property role="3F0ifm" value="drawn" />
          <node concept="VPM3Z" id="7aFw1sr3n1r" role="3F10Kt" />
        </node>
        <node concept="3F0ifn" id="7aFw1spPoO0" role="3EZMnx">
          <property role="3F0ifm" value="module" />
          <node concept="VPM3Z" id="7aFw1sr3omY" role="3F10Kt" />
        </node>
        <node concept="3F1sOY" id="7aFw1spS31Q" role="3EZMnx">
          <ref role="1NtTu8" to="53d4:7aFw1spS2SV" resolve="drawnModuleREf" />
          <node concept="OXEIz" id="7aFw1spS31Y" role="P5bDN">
            <node concept="1fxSsy" id="7aFw1spS320" role="OY2wv">
              <property role="1ezIyd" value="gWZP3tU/custom_" />
              <node concept="1fyNS0" id="7aFw1spS321" role="1fxSsw">
                <node concept="3clFbS" id="7aFw1spS322" role="2VODD2">
                  <node concept="3cpWs8" id="7aFw1spPKGR" role="3cqZAp">
                    <node concept="3cpWsn" id="7aFw1spPKGS" role="3cpWs9">
                      <property role="TrG5h" value="module" />
                      <node concept="3Tqbb2" id="7aFw1spPKDV" role="1tU5fm">
                        <ref role="ehGHo" to="hypd:5xDtKQA7vSu" resolve="Module" />
                      </node>
                      <node concept="2OqwBi" id="7aFw1spPKGT" role="33vP2m">
                        <node concept="2OqwBi" id="7aFw1spPKGU" role="2Oq$k0">
                          <node concept="3GMtW1" id="7aFw1spPKGV" role="2Oq$k0" />
                          <node concept="I4A8Y" id="7aFw1spPKGW" role="2OqNvi" />
                        </node>
                        <node concept="13u695" id="7aFw1spPKGX" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="b80zSObG2y" role="3cqZAp">
                    <node concept="3cpWsn" id="b80zSObG2z" role="3cpWs9">
                      <property role="TrG5h" value="ref" />
                      <node concept="3Tqbb2" id="b80zSObFWz" role="1tU5fm">
                        <ref role="ehGHo" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
                      </node>
                      <node concept="2pJPEk" id="b80zSObG2$" role="33vP2m">
                        <node concept="2pJPED" id="b80zSObG2_" role="2pJPEn">
                          <ref role="2pJxaS" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="b80zSObGx8" role="3cqZAp">
                    <node concept="37vLTI" id="b80zSObOSF" role="3clFbG">
                      <node concept="2OqwBi" id="b80zSObP9H" role="37vLTx">
                        <node concept="37vLTw" id="b80zSObP0Y" role="2Oq$k0">
                          <ref role="3cqZAo" node="7aFw1spPKGS" resolve="module" />
                        </node>
                        <node concept="3TrcHB" id="b80zSObPuj" role="2OqNvi">
                          <ref role="3TsBF5" to="hypd:5xDtKQA7vSy" resolve="uuid" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="b80zSObH9c" role="37vLTJ">
                        <node concept="37vLTw" id="b80zSObGx6" role="2Oq$k0">
                          <ref role="3cqZAo" node="b80zSObG2z" resolve="ref" />
                        </node>
                        <node concept="3TrcHB" id="b80zSObO1d" role="2OqNvi">
                          <ref role="3TsBF5" to="hypd:1AZH1sZHi4d" resolve="uuid" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="b80zSObPEq" role="3cqZAp">
                    <node concept="37vLTI" id="b80zSObS2g" role="3clFbG">
                      <node concept="2OqwBi" id="b80zSObTfi" role="37vLTx">
                        <node concept="37vLTw" id="b80zSObSAH" role="2Oq$k0">
                          <ref role="3cqZAo" node="7aFw1spPKGS" resolve="module" />
                        </node>
                        <node concept="2qgKlT" id="b80zSObTTC" role="2OqNvi">
                          <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="b80zSObPVJ" role="37vLTJ">
                        <node concept="37vLTw" id="b80zSObPEo" role="2Oq$k0">
                          <ref role="3cqZAo" node="b80zSObG2z" resolve="ref" />
                        </node>
                        <node concept="3TrcHB" id="b80zSObQj_" role="2OqNvi">
                          <ref role="3TsBF5" to="hypd:1AZH1sZHi4e" resolve="qualifiedName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="b80zSObFaD" role="3cqZAp">
                    <node concept="3cpWsn" id="b80zSObFaE" role="3cpWs9">
                      <property role="TrG5h" value="single" />
                      <node concept="A3Dl8" id="b80zSObF8T" role="1tU5fm">
                        <node concept="3Tqbb2" id="b80zSObF8W" role="A3Ik2">
                          <ref role="ehGHo" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="b80zSObFaF" role="33vP2m">
                        <node concept="2HTt$P" id="b80zSObFaG" role="2ShVmc">
                          <node concept="3Tqbb2" id="b80zSObFaH" role="2HTBi0">
                            <ref role="ehGHo" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
                          </node>
                          <node concept="37vLTw" id="b80zSObG2A" role="2HTEbv">
                            <ref role="3cqZAo" node="b80zSObG2z" resolve="node" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7aFw1spSeKN" role="3cqZAp">
                    <node concept="2OqwBi" id="7aFw1spRI_R" role="3clFbG">
                      <node concept="2OqwBi" id="7aFw1spREOJ" role="2Oq$k0">
                        <node concept="2OqwBi" id="7aFw1spRC9X" role="2Oq$k0">
                          <node concept="2OqwBi" id="b80zSOb$TI" role="2Oq$k0">
                            <node concept="2OqwBi" id="7aFw1spRa6M" role="2Oq$k0">
                              <node concept="2OqwBi" id="7aFw1spPDzj" role="2Oq$k0">
                                <node concept="2OqwBi" id="7aFw1spPBj3" role="2Oq$k0">
                                  <node concept="37vLTw" id="7aFw1spPKGY" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7aFw1spPKGS" resolve="module" />
                                  </node>
                                  <node concept="3Tsc0h" id="7aFw1spPBj9" role="2OqNvi">
                                    <ref role="3TtcxE" to="hypd:1AZH1sZHigv" resolve="usedLanguages" />
                                  </node>
                                </node>
                                <node concept="3QWeyG" id="7aFw1spPK4Q" role="2OqNvi">
                                  <node concept="2OqwBi" id="7aFw1spQQXX" role="576Qk">
                                    <node concept="37vLTw" id="7aFw1spQQXY" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7aFw1spPKGS" resolve="module" />
                                    </node>
                                    <node concept="3Tsc0h" id="7aFw1spQQXZ" role="2OqNvi">
                                      <ref role="3TtcxE" to="hypd:1AZH1sZHigw" resolve="usedDevkits" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3QWeyG" id="7aFw1spRb$7" role="2OqNvi">
                                <node concept="2OqwBi" id="7aFw1spRgB7" role="576Qk">
                                  <node concept="2OqwBi" id="7aFw1spRd0t" role="2Oq$k0">
                                    <node concept="37vLTw" id="7aFw1spRcau" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7aFw1spPKGS" resolve="module" />
                                    </node>
                                    <node concept="3Tsc0h" id="7aFw1spRdN_" role="2OqNvi">
                                      <ref role="3TtcxE" to="hypd:5xDtKQA7vSG" resolve="dependencies" />
                                    </node>
                                  </node>
                                  <node concept="13MTOL" id="7aFw1spRnjl" role="2OqNvi">
                                    <ref role="13MTZf" to="hypd:1AZH1sZHigu" resolve="moduleRef" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3QWeyG" id="b80zSObAu2" role="2OqNvi">
                              <node concept="37vLTw" id="b80zSObFaJ" role="576Qk">
                                <ref role="3cqZAo" node="b80zSObFaE" resolve="seq" />
                              </node>
                            </node>
                          </node>
                          <node concept="1VAtEI" id="7aFw1spRDtN" role="2OqNvi" />
                        </node>
                        <node concept="2S7cBI" id="7aFw1spRHxR" role="2OqNvi">
                          <node concept="1bVj0M" id="7aFw1spRHxT" role="23t8la">
                            <node concept="3clFbS" id="7aFw1spRHxU" role="1bW5cS">
                              <node concept="3clFbF" id="7aFw1spRUzr" role="3cqZAp">
                                <node concept="2OqwBi" id="7aFw1spRVHZ" role="3clFbG">
                                  <node concept="37vLTw" id="7aFw1spRUzq" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7aFw1spRHxV" resolve="mr" />
                                  </node>
                                  <node concept="3TrcHB" id="7aFw1spRXed" role="2OqNvi">
                                    <ref role="3TsBF5" to="hypd:1AZH1sZHi4e" resolve="qualifiedName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="7aFw1spRHxV" role="1bW2Oz">
                              <property role="TrG5h" value="mr" />
                              <node concept="2jxLKc" id="7aFw1spRHxW" role="1tU5fm" />
                            </node>
                          </node>
                          <node concept="1nlBCl" id="7aFw1spRHxX" role="2S7zOq">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                      <node concept="ANE8D" id="7aFw1spRKp8" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tqbb2" id="7aFw1spS5S7" role="1eyP2E">
                <ref role="ehGHo" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
              </node>
              <node concept="1f$696" id="7aFw1spSg9V" role="1fxSsZ">
                <node concept="3clFbS" id="7aFw1spSg9W" role="2VODD2">
                  <node concept="3clFbF" id="7aFw1spShsr" role="3cqZAp">
                    <node concept="2OqwBi" id="7aFw1spSiKu" role="3clFbG">
                      <node concept="3GLrbK" id="7aFw1spShsq" role="2Oq$k0" />
                      <node concept="1$rogu" id="7aFw1spSkmd" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6VE3a" id="7aFw1spSlEv" role="1ezQQy">
                <node concept="3clFbS" id="7aFw1spSlEw" role="2VODD2">
                  <node concept="3clFbF" id="7aFw1spSt3G" role="3cqZAp">
                    <node concept="2OqwBi" id="7aFw1spSusN" role="3clFbG">
                      <node concept="3GLrbK" id="7aFw1spSt3F" role="2Oq$k0" />
                      <node concept="3TrcHB" id="7aFw1spSvY6" role="2OqNvi">
                        <ref role="3TsBF5" to="hypd:1AZH1sZHi4e" resolve="qualifiedName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6WeAF" id="7aFw1spSne_" role="1ezVZE">
                <node concept="3clFbS" id="7aFw1spSneA" role="2VODD2">
                  <node concept="3clFbF" id="7aFw1spSoHs" role="3cqZAp">
                    <node concept="2OqwBi" id="7aFw1spSqdo" role="3clFbG">
                      <node concept="3GLrbK" id="7aFw1spSoHr" role="2Oq$k0" />
                      <node concept="3TrcHB" id="7aFw1spSrI2" role="2OqNvi">
                        <ref role="3TsBF5" to="hypd:1AZH1sZHi4e" resolve="qualifiedName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="35HoNQ" id="2Q8IysV1Gde" role="3EZMnx" />
        <node concept="1HlG4h" id="2Q8IysVyELY" role="3EZMnx">
          <ref role="1ERwB7" node="2Q8IysV1Iwg" resolve="AutoLayoutAction" />
          <node concept="1HfYo3" id="2Q8IysVyEM0" role="1HlULh">
            <node concept="3TQlhw" id="2Q8IysVyEM2" role="1Hhtcw">
              <node concept="3clFbS" id="2Q8IysVyEM4" role="2VODD2">
                <node concept="3clFbF" id="2Q8IysVyIxI" role="3cqZAp">
                  <node concept="3K4zz7" id="2Q8IysVyKgH" role="3clFbG">
                    <node concept="Xl_RD" id="2Q8IysVyKgV" role="3K4E3e">
                      <property role="Xl_RC" value="AUTO LAYOUT" />
                    </node>
                    <node concept="Xl_RD" id="2Q8IysVyKqb" role="3K4GZi">
                      <property role="Xl_RC" value="MANUAL LAYOUT" />
                    </node>
                    <node concept="2OqwBi" id="2Q8IysVyIRl" role="3K4Cdx">
                      <node concept="pncrf" id="2Q8IysVyIxH" role="2Oq$k0" />
                      <node concept="3TrcHB" id="2Q8IysVWNAD" role="2OqNvi">
                        <ref role="3TsBF5" to="53d4:2Q8IysVI4Ud" resolve="autoLayout" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPXOz" id="2Q8IysVyF4J" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="1CjrrCKbnX3" role="3EZMnx">
        <ref role="PMmxG" node="31sbKqyPMrZ" resolve="IEditorComponent" />
      </node>
      <node concept="2w$q5c" id="6E86S2AAv3q" role="2whIAn" />
    </node>
    <node concept="3EZMnI" id="67eN9QkViCq" role="6VMZX">
      <node concept="2iRkQZ" id="67eN9QkViCr" role="2iSdaV" />
      <node concept="3EZMnI" id="4w3I0IX44R4" role="3EZMnx">
        <node concept="2iRfu4" id="4w3I0IX44R5" role="2iSdaV" />
        <node concept="3F0ifn" id="4w3I0IX44R6" role="3EZMnx">
          <property role="3F0ifm" value="manual" />
        </node>
        <node concept="3F0ifn" id="4w3I0IX44R7" role="3EZMnx">
          <property role="3F0ifm" value="selection" />
        </node>
        <node concept="3F0A7n" id="4w3I0IX44R8" role="3EZMnx">
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
          <node concept="11LMrY" id="7aFw1sr4ScD" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="1CjrrCKbDnL" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="53d4:67eN9Qkfp8P" resolve="concepts" />
          <node concept="l2Vlx" id="7aFw1sr7RV7" role="2czzBx" />
        </node>
        <node concept="3F0ifn" id="1CjrrCKbDoi" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <node concept="11L4FC" id="7aFw1sr4Tyc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5hEUvARta32">
    <property role="3GE5qa" value="struct_diagram" />
    <ref role="1XX52x" to="53d4:5hEUvARta2y" resolve="StructDiagram" />
    <node concept="3EZMnI" id="5hEUvARta34" role="2wV5jI">
      <node concept="2iRkQZ" id="5hEUvARta35" role="2iSdaV" />
      <node concept="3EZMnI" id="2$yK5YK5udt" role="3EZMnx">
        <node concept="2iRfu4" id="2$yK5YK5udu" role="2iSdaV" />
        <node concept="3F0ifn" id="2$yK5YK5udv" role="3EZMnx">
          <property role="3F0ifm" value="diagram" />
          <node concept="VPM3Z" id="2$yK5YK5udw" role="3F10Kt" />
        </node>
        <node concept="3F0A7n" id="2$yK5YK5udx" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="2$yK5YK5udy" role="3EZMnx">
          <node concept="VPM3Z" id="2$yK5YK5udz" role="3F10Kt" />
        </node>
        <node concept="3F0ifn" id="2$yK5YK5ud$" role="3EZMnx">
          <property role="3F0ifm" value="drawn" />
          <node concept="VPM3Z" id="2$yK5YK5ud_" role="3F10Kt" />
        </node>
        <node concept="3F0ifn" id="2$yK5YK5udA" role="3EZMnx">
          <property role="3F0ifm" value="module" />
          <node concept="VPM3Z" id="2$yK5YK5udB" role="3F10Kt" />
        </node>
        <node concept="3F1sOY" id="2$yK5YK5udC" role="3EZMnx">
          <ref role="1NtTu8" to="53d4:2$yK5YK4u0F" resolve="drawnModuleREf" />
          <node concept="OXEIz" id="2$yK5YK5udD" role="P5bDN">
            <node concept="1fxSsy" id="2$yK5YK5udE" role="OY2wv">
              <property role="1ezIyd" value="gWZP3tU/custom_" />
              <node concept="1fyNS0" id="2$yK5YK5udF" role="1fxSsw">
                <node concept="3clFbS" id="2$yK5YK5udG" role="2VODD2">
                  <node concept="3cpWs8" id="2$yK5YK5udH" role="3cqZAp">
                    <node concept="3cpWsn" id="2$yK5YK5udI" role="3cpWs9">
                      <property role="TrG5h" value="module" />
                      <node concept="3Tqbb2" id="2$yK5YK5udJ" role="1tU5fm">
                        <ref role="ehGHo" to="hypd:5xDtKQA7vSu" resolve="Module" />
                      </node>
                      <node concept="2OqwBi" id="2$yK5YK5udK" role="33vP2m">
                        <node concept="2OqwBi" id="2$yK5YK5udL" role="2Oq$k0">
                          <node concept="3GMtW1" id="2$yK5YK5udM" role="2Oq$k0" />
                          <node concept="I4A8Y" id="2$yK5YK5udN" role="2OqNvi" />
                        </node>
                        <node concept="13u695" id="2$yK5YK5udO" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="b80zSObW0l" role="3cqZAp">
                    <node concept="3cpWsn" id="b80zSObW0m" role="3cpWs9">
                      <property role="TrG5h" value="ref" />
                      <node concept="3Tqbb2" id="b80zSObW0n" role="1tU5fm">
                        <ref role="ehGHo" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
                      </node>
                      <node concept="2pJPEk" id="b80zSObW0o" role="33vP2m">
                        <node concept="2pJPED" id="b80zSObW0p" role="2pJPEn">
                          <ref role="2pJxaS" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="b80zSObW0q" role="3cqZAp">
                    <node concept="37vLTI" id="b80zSObW0r" role="3clFbG">
                      <node concept="2OqwBi" id="b80zSObW0s" role="37vLTx">
                        <node concept="37vLTw" id="b80zSObW0t" role="2Oq$k0">
                          <ref role="3cqZAo" node="2$yK5YK5udI" resolve="module" />
                        </node>
                        <node concept="3TrcHB" id="b80zSObW0u" role="2OqNvi">
                          <ref role="3TsBF5" to="hypd:5xDtKQA7vSy" resolve="uuid" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="b80zSObW0v" role="37vLTJ">
                        <node concept="37vLTw" id="b80zSObW0w" role="2Oq$k0">
                          <ref role="3cqZAo" node="b80zSObW0m" resolve="ref" />
                        </node>
                        <node concept="3TrcHB" id="b80zSObW0x" role="2OqNvi">
                          <ref role="3TsBF5" to="hypd:1AZH1sZHi4d" resolve="uuid" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="b80zSObW0y" role="3cqZAp">
                    <node concept="37vLTI" id="b80zSObW0z" role="3clFbG">
                      <node concept="2OqwBi" id="b80zSObW0$" role="37vLTx">
                        <node concept="37vLTw" id="b80zSObW0_" role="2Oq$k0">
                          <ref role="3cqZAo" node="2$yK5YK5udI" resolve="module" />
                        </node>
                        <node concept="2qgKlT" id="b80zSObW0A" role="2OqNvi">
                          <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="b80zSObW0B" role="37vLTJ">
                        <node concept="37vLTw" id="b80zSObW0C" role="2Oq$k0">
                          <ref role="3cqZAo" node="b80zSObW0m" resolve="ref" />
                        </node>
                        <node concept="3TrcHB" id="b80zSObW0D" role="2OqNvi">
                          <ref role="3TsBF5" to="hypd:1AZH1sZHi4e" resolve="qualifiedName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="b80zSObW0E" role="3cqZAp">
                    <node concept="3cpWsn" id="b80zSObW0F" role="3cpWs9">
                      <property role="TrG5h" value="single" />
                      <node concept="A3Dl8" id="b80zSObW0G" role="1tU5fm">
                        <node concept="3Tqbb2" id="b80zSObW0H" role="A3Ik2">
                          <ref role="ehGHo" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="b80zSObW0I" role="33vP2m">
                        <node concept="2HTt$P" id="b80zSObW0J" role="2ShVmc">
                          <node concept="3Tqbb2" id="b80zSObW0K" role="2HTBi0">
                            <ref role="ehGHo" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
                          </node>
                          <node concept="37vLTw" id="b80zSObW0L" role="2HTEbv">
                            <ref role="3cqZAo" node="b80zSObW0m" resolve="ref" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2$yK5YK5udP" role="3cqZAp">
                    <node concept="2OqwBi" id="2$yK5YK5udQ" role="3clFbG">
                      <node concept="2OqwBi" id="2$yK5YK5udR" role="2Oq$k0">
                        <node concept="2OqwBi" id="2$yK5YK5udS" role="2Oq$k0">
                          <node concept="2OqwBi" id="b80zSObWCj" role="2Oq$k0">
                            <node concept="2OqwBi" id="2$yK5YK5udT" role="2Oq$k0">
                              <node concept="2OqwBi" id="2$yK5YK5udU" role="2Oq$k0">
                                <node concept="2OqwBi" id="2$yK5YK5udV" role="2Oq$k0">
                                  <node concept="37vLTw" id="2$yK5YK5udW" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2$yK5YK5udI" resolve="module" />
                                  </node>
                                  <node concept="3Tsc0h" id="2$yK5YK5udX" role="2OqNvi">
                                    <ref role="3TtcxE" to="hypd:1AZH1sZHigv" resolve="usedLanguages" />
                                  </node>
                                </node>
                                <node concept="3QWeyG" id="2$yK5YK5udY" role="2OqNvi">
                                  <node concept="2OqwBi" id="2$yK5YK5udZ" role="576Qk">
                                    <node concept="37vLTw" id="2$yK5YK5ue0" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2$yK5YK5udI" resolve="module" />
                                    </node>
                                    <node concept="3Tsc0h" id="2$yK5YK5ue1" role="2OqNvi">
                                      <ref role="3TtcxE" to="hypd:1AZH1sZHigw" resolve="usedDevkits" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3QWeyG" id="2$yK5YK5ue2" role="2OqNvi">
                                <node concept="2OqwBi" id="2$yK5YK5ue3" role="576Qk">
                                  <node concept="2OqwBi" id="2$yK5YK5ue4" role="2Oq$k0">
                                    <node concept="37vLTw" id="2$yK5YK5ue5" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2$yK5YK5udI" resolve="module" />
                                    </node>
                                    <node concept="3Tsc0h" id="2$yK5YK5ue6" role="2OqNvi">
                                      <ref role="3TtcxE" to="hypd:5xDtKQA7vSG" resolve="dependencies" />
                                    </node>
                                  </node>
                                  <node concept="13MTOL" id="2$yK5YK5ue7" role="2OqNvi">
                                    <ref role="13MTZf" to="hypd:1AZH1sZHigu" resolve="moduleRef" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3QWeyG" id="b80zSObXI9" role="2OqNvi">
                              <node concept="37vLTw" id="b80zSObXT1" role="576Qk">
                                <ref role="3cqZAo" node="b80zSObW0F" resolve="single" />
                              </node>
                            </node>
                          </node>
                          <node concept="1VAtEI" id="2$yK5YK5ue8" role="2OqNvi" />
                        </node>
                        <node concept="2S7cBI" id="2$yK5YK5ue9" role="2OqNvi">
                          <node concept="1bVj0M" id="2$yK5YK5uea" role="23t8la">
                            <node concept="3clFbS" id="2$yK5YK5ueb" role="1bW5cS">
                              <node concept="3clFbF" id="2$yK5YK5uec" role="3cqZAp">
                                <node concept="2OqwBi" id="2$yK5YK5ued" role="3clFbG">
                                  <node concept="37vLTw" id="2$yK5YK5uee" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2$yK5YK5ueg" resolve="mr" />
                                  </node>
                                  <node concept="3TrcHB" id="2$yK5YK5uef" role="2OqNvi">
                                    <ref role="3TsBF5" to="hypd:1AZH1sZHi4e" resolve="qualifiedName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="2$yK5YK5ueg" role="1bW2Oz">
                              <property role="TrG5h" value="mr" />
                              <node concept="2jxLKc" id="2$yK5YK5ueh" role="1tU5fm" />
                            </node>
                          </node>
                          <node concept="1nlBCl" id="2$yK5YK5uei" role="2S7zOq">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                      <node concept="ANE8D" id="2$yK5YK5uej" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tqbb2" id="2$yK5YK5uek" role="1eyP2E">
                <ref role="ehGHo" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
              </node>
              <node concept="1f$696" id="2$yK5YK5uel" role="1fxSsZ">
                <node concept="3clFbS" id="2$yK5YK5uem" role="2VODD2">
                  <node concept="3clFbF" id="2$yK5YK5uen" role="3cqZAp">
                    <node concept="2OqwBi" id="2$yK5YK5ueo" role="3clFbG">
                      <node concept="3GLrbK" id="2$yK5YK5uep" role="2Oq$k0" />
                      <node concept="1$rogu" id="2$yK5YK5ueq" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6VE3a" id="2$yK5YK5uer" role="1ezQQy">
                <node concept="3clFbS" id="2$yK5YK5ues" role="2VODD2">
                  <node concept="3clFbF" id="2$yK5YK5uet" role="3cqZAp">
                    <node concept="2OqwBi" id="2$yK5YK5ueu" role="3clFbG">
                      <node concept="3GLrbK" id="2$yK5YK5uev" role="2Oq$k0" />
                      <node concept="3TrcHB" id="2$yK5YK5uew" role="2OqNvi">
                        <ref role="3TsBF5" to="hypd:1AZH1sZHi4e" resolve="qualifiedName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6WeAF" id="2$yK5YK5uex" role="1ezVZE">
                <node concept="3clFbS" id="2$yK5YK5uey" role="2VODD2">
                  <node concept="3clFbF" id="2$yK5YK5uez" role="3cqZAp">
                    <node concept="2OqwBi" id="2$yK5YK5ue$" role="3clFbG">
                      <node concept="3GLrbK" id="2$yK5YK5ue_" role="2Oq$k0" />
                      <node concept="3TrcHB" id="2$yK5YK5ueA" role="2OqNvi">
                        <ref role="3TsBF5" to="hypd:1AZH1sZHi4e" resolve="qualifiedName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="35HoNQ" id="2Q8IysV1O7f" role="3EZMnx" />
        <node concept="1HlG4h" id="2Q8IysVyLr4" role="3EZMnx">
          <ref role="1ERwB7" node="2Q8IysV1Iwg" resolve="AutoLayoutAction" />
          <node concept="1HfYo3" id="2Q8IysVyLr5" role="1HlULh">
            <node concept="3TQlhw" id="2Q8IysVyLr6" role="1Hhtcw">
              <node concept="3clFbS" id="2Q8IysVyLr7" role="2VODD2">
                <node concept="3clFbF" id="2Q8IysVyLr8" role="3cqZAp">
                  <node concept="3K4zz7" id="2Q8IysVyLr9" role="3clFbG">
                    <node concept="Xl_RD" id="2Q8IysVyLra" role="3K4E3e">
                      <property role="Xl_RC" value="AUTO LAYOUT" />
                    </node>
                    <node concept="Xl_RD" id="2Q8IysVyLrb" role="3K4GZi">
                      <property role="Xl_RC" value="MANUAL LAYOUT" />
                    </node>
                    <node concept="2OqwBi" id="2Q8IysVyLrc" role="3K4Cdx">
                      <node concept="pncrf" id="2Q8IysVyLrd" role="2Oq$k0" />
                      <node concept="3TrcHB" id="2Q8IysVWOuY" role="2OqNvi">
                        <ref role="3TsBF5" to="53d4:2Q8IysVI4Ud" resolve="autoLayout" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPXOz" id="2Q8IysVyLrf" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="5hEUvARta3a" role="3EZMnx">
        <ref role="PMmxG" node="31sbKqyPMrZ" resolve="IEditorComponent" />
      </node>
      <node concept="2w$q5c" id="5hEUvARta3b" role="2whIAn" />
    </node>
    <node concept="3EZMnI" id="2$yK5YK5ygl" role="6VMZX">
      <node concept="2iRkQZ" id="2$yK5YK5ygm" role="2iSdaV" />
      <node concept="3EZMnI" id="2$yK5YK5ygn" role="3EZMnx">
        <node concept="2iRfu4" id="2$yK5YK5ygo" role="2iSdaV" />
        <node concept="3F0ifn" id="2$yK5YK5ygp" role="3EZMnx">
          <property role="3F0ifm" value="manual" />
        </node>
        <node concept="3F0ifn" id="2$yK5YK5ygq" role="3EZMnx">
          <property role="3F0ifm" value="selection" />
        </node>
        <node concept="3F0A7n" id="2$yK5YK5ygr" role="3EZMnx">
          <ref role="1NtTu8" to="53d4:2$yK5YK5zMw" resolve="manual" />
        </node>
      </node>
      <node concept="3F0ifn" id="2$yK5YK5ygs" role="3EZMnx" />
      <node concept="3EZMnI" id="2$yK5YK5ygt" role="3EZMnx">
        <node concept="l2Vlx" id="2$yK5YK5ygu" role="2iSdaV" />
        <node concept="3F0ifn" id="2$yK5YK5_xp" role="3EZMnx">
          <property role="3F0ifm" value="structs" />
        </node>
        <node concept="3F0ifn" id="2$yK5YK5ygw" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <node concept="11LMrY" id="2$yK5YK5ygx" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="2$yK5YK5ygy" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="53d4:5hEUvARtaAj" resolve="structs" />
          <node concept="l2Vlx" id="2$yK5YK5ygz" role="2czzBx" />
        </node>
        <node concept="3F0ifn" id="2$yK5YK5yg$" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <node concept="11L4FC" id="2$yK5YK5yg_" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5hEUvARtaA5">
    <property role="3GE5qa" value="struct_diagram" />
    <ref role="1XX52x" to="53d4:5hEUvARtaxp" resolve="StructRef" />
    <node concept="1iCGBv" id="5hEUvARtaA7" role="2wV5jI">
      <ref role="1NtTu8" to="53d4:5hEUvARtaxq" resolve="struct" />
      <node concept="1sVBvm" id="5hEUvARtaA9" role="1sWHZn">
        <node concept="3F0A7n" id="5hEUvARtaAg" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="2Q8IysV1Iwg">
    <property role="3GE5qa" value="diagrams" />
    <property role="TrG5h" value="AutoLayoutAction" />
    <ref role="1h_SK9" to="53d4:3psr82$eZ54" resolve="IDiagram" />
    <node concept="1hA7zw" id="2Q8IysV1Iwh" role="1h_SK8">
      <property role="1hAc7j" value="1FSxSwWqMNJ/click_action_id" />
      <node concept="1hAIg9" id="2Q8IysV1Iwi" role="1hA7z_">
        <node concept="3clFbS" id="2Q8IysV1Iwj" role="2VODD2">
          <node concept="3clFbF" id="2Q8IysV1JCc" role="3cqZAp">
            <node concept="37vLTI" id="2Q8IysWbJ2S" role="3clFbG">
              <node concept="3fqX7Q" id="2Q8IysWbJ3$" role="37vLTx">
                <node concept="2OqwBi" id="2Q8IysWbJgb" role="3fr31v">
                  <node concept="0IXxy" id="2Q8IysWbJ4h" role="2Oq$k0" />
                  <node concept="3TrcHB" id="2Q8IysWbJti" role="2OqNvi">
                    <ref role="3TsBF5" to="53d4:2Q8IysVI4Ud" resolve="autoLayout" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2Q8IysV1JO2" role="37vLTJ">
                <node concept="0IXxy" id="2Q8IysV1JCb" role="2Oq$k0" />
                <node concept="3TrcHB" id="2Q8IysWbHEl" role="2OqNvi">
                  <ref role="3TsBF5" to="53d4:2Q8IysVI4Ud" resolve="autoLayout" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

