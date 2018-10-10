<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b3bd6869-3f20-419a-be47-753c4d00d5e8(DclareMPS.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="tpeh" ref="r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" implicit="true" />
    <import index="us1s" ref="r:e7d7a1fa-fb58-4cf6-bc1d-e5ed722e0c61(DclareMPS.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tp2q" ref="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" implicit="true" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1766949807893567867" name="jetbrains.mps.lang.typesystem.structure.OverridesConceptFunction" flags="ig" index="bXqS6" />
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1185805035213" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteStatement" flags="nn" index="nvevp">
        <child id="1185805047793" name="body" index="nvhr_" />
        <child id="1185805056450" name="argument" index="nvjzm" />
        <child id="1205761991995" name="argumentRepresentator" index="2X0Ygz" />
      </concept>
      <concept id="1175517400280" name="jetbrains.mps.lang.typesystem.structure.AssertStatement" flags="nn" index="2Mj0R9">
        <child id="1175517761460" name="condition" index="2MkoU_" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1212056081426" name="jetbrains.mps.lang.typesystem.structure.AbstractInequationStatement" flags="ng" index="Ob1k8">
        <property id="1212056105818" name="inequationPriority" index="Ob790" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1205762105978" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteVariableDeclaration" flags="ng" index="2X1qdy" />
      <concept id="1205762656241" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteVariableReference" flags="nn" index="2X3wrD">
        <reference id="1205762683928" name="whenConcreteVar" index="2X3Bk0" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <property id="1195213689297" name="overrides" index="18ip37" />
        <child id="1766949807893591548" name="overridesFun" index="bX4a1" />
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1210784285454" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntention" flags="ng" index="3Cnw8n">
        <reference id="1216388525179" name="quickFix" index="QpYPw" />
        <child id="1210784493590" name="actualArgument" index="3Coj4f" />
      </concept>
      <concept id="1210784384552" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntentionArgument" flags="ng" index="3CnSsL">
        <reference id="1216386999476" name="quickFixArgument" index="QkamJ" />
        <child id="1210784642750" name="value" index="3CoRuB" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF">
        <child id="1193733919555" name="dependency" index="3K5x9m" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <property id="1206359757216" name="checkOnly" index="3wDh2S" />
        <child id="1216204483513" name="helginsIntention" index="FrUEy" />
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
        <child id="1174662598553" name="nodeToCheck" index="1ZmcU8" />
      </concept>
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="1YbPZF" id="jVwYUSQ_Cb">
    <property role="TrG5h" value="typeof_ThisExpression" />
    <node concept="3clFbS" id="jVwYUSQ_Cc" role="18ibNy">
      <node concept="1Z5TYs" id="2S7riqlG5MW" role="3cqZAp">
        <node concept="mw_s8" id="2S7riqlG5MZ" role="1ZfhK$">
          <node concept="1Z2H0r" id="2S7riqlG5MT" role="mwGJk">
            <node concept="1YBJjd" id="jVwYUSQBjR" role="1Z2MuG">
              <ref role="1YBMHb" node="jVwYUSQ_Ce" resolve="thisExpression" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6XkcKt_fb1s" role="1ZfhKB">
          <node concept="2OqwBi" id="jVwYUSRmbU" role="mwGJk">
            <node concept="2OqwBi" id="6XkcKt_fgzp" role="2Oq$k0">
              <node concept="2OqwBi" id="6XkcKt_fb1u" role="2Oq$k0">
                <node concept="1YBJjd" id="jVwYUSQ_XT" role="2Oq$k0">
                  <ref role="1YBMHb" node="jVwYUSQ_Ce" resolve="thisExpression" />
                </node>
                <node concept="2Xjw5R" id="6XkcKt_fgzk" role="2OqNvi">
                  <node concept="1xMEDy" id="6XkcKt_fgzl" role="1xVPHs">
                    <node concept="chp4Y" id="jVwYUSQA7t" role="ri$Ld">
                      <ref role="cht4Q" to="7ggn:1Sb3mAPvh8b" resolve="Rule" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="jVwYUSQDbI" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:1Sb3mAPxB$N" resolve="context" />
              </node>
            </node>
            <node concept="2qgKlT" id="jVwYUSRmqo" role="2OqNvi">
              <ref role="37wK5l" to="us1s:jVwYUSRkJq" resolve="getType" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="jVwYUSQ_Ce" role="1YuTPh">
      <property role="TrG5h" value="thisExpression" />
      <ref role="1YaFvo" to="7ggn:jVwYUSPLKM" resolve="ThisExpression" />
    </node>
  </node>
  <node concept="18kY7G" id="2TGnmG1_6GX">
    <property role="TrG5h" value="ruleNameUnique" />
    <node concept="3clFbS" id="2TGnmG1_6GY" role="18ibNy">
      <node concept="2Gpval" id="2TGnmG1_6Ha" role="3cqZAp">
        <node concept="2GrKxI" id="2TGnmG1_6Hb" role="2Gsz3X">
          <property role="TrG5h" value="other" />
        </node>
        <node concept="2OqwBi" id="2TGnmG1_7PN" role="2GsD0m">
          <node concept="2OqwBi" id="2TGnmG1_74X" role="2Oq$k0">
            <node concept="1YBJjd" id="2TGnmG1_6HC" role="2Oq$k0">
              <ref role="1YBMHb" node="2TGnmG1_6H0" resolve="rule" />
            </node>
            <node concept="2Xjw5R" id="2TGnmG1_7BQ" role="2OqNvi">
              <node concept="1xMEDy" id="2TGnmG1_7BS" role="1xVPHs">
                <node concept="chp4Y" id="2TGnmG1_7Eo" role="ri$Ld">
                  <ref role="cht4Q" to="7ggn:4SfaQIrYs9U" resolve="RuleSet" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tsc0h" id="2TGnmG1_818" role="2OqNvi">
            <ref role="3TtcxE" to="7ggn:1Sb3mAPvInz" resolve="rules" />
          </node>
        </node>
        <node concept="3clFbS" id="2TGnmG1_6Hd" role="2LFqv$">
          <node concept="3clFbJ" id="2TGnmG1_83K" role="3cqZAp">
            <node concept="1Wc70l" id="2TGnmG1CJz1" role="3clFbw">
              <node concept="17R0WA" id="2TGnmG1CPeZ" role="3uHU7w">
                <node concept="2OqwBi" id="2TGnmG1CRZF" role="3uHU7w">
                  <node concept="2OqwBi" id="2TGnmG1CQ8j" role="2Oq$k0">
                    <node concept="2GrUjf" id="2TGnmG1CPvp" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2TGnmG1_6Hb" resolve="other" />
                    </node>
                    <node concept="3TrcHB" id="2TGnmG1CQTr" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2TGnmG1CSsw" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.toUpperCase():java.lang.String" resolve="toUpperCase" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2TGnmG1CMaf" role="3uHU7B">
                  <node concept="2OqwBi" id="2TGnmG1CKl1" role="2Oq$k0">
                    <node concept="1YBJjd" id="2TGnmG1CJKE" role="2Oq$k0">
                      <ref role="1YBMHb" node="2TGnmG1_6H0" resolve="rule" />
                    </node>
                    <node concept="3TrcHB" id="2TGnmG1CL55" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2TGnmG1CMAE" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.toUpperCase():java.lang.String" resolve="toUpperCase" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="3qVwZ8sVFV7" role="3uHU7B">
                <node concept="2OqwBi" id="3qVwZ8sVM51" role="3uHU7w">
                  <node concept="2OqwBi" id="3qVwZ8sVKbZ" role="2Oq$k0">
                    <node concept="2GrUjf" id="3qVwZ8sVJAk" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2TGnmG1_6Hb" resolve="other" />
                    </node>
                    <node concept="3TrcHB" id="3qVwZ8sVKXX" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="17RvpY" id="3qVwZ8sVMBd" role="2OqNvi" />
                </node>
                <node concept="1Wc70l" id="3qVwZ8sVFGz" role="3uHU7B">
                  <node concept="17QLQc" id="2TGnmG1_8JX" role="3uHU7B">
                    <node concept="1YBJjd" id="2TGnmG1_83Z" role="3uHU7B">
                      <ref role="1YBMHb" node="2TGnmG1_6H0" resolve="rule" />
                    </node>
                    <node concept="2GrUjf" id="2TGnmG1_8Nv" role="3uHU7w">
                      <ref role="2Gs0qQ" node="2TGnmG1_6Hb" resolve="other" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3qVwZ8sVIU4" role="3uHU7w">
                    <node concept="2OqwBi" id="3qVwZ8sVGY7" role="2Oq$k0">
                      <node concept="1YBJjd" id="3qVwZ8sVGoB" role="2Oq$k0">
                        <ref role="1YBMHb" node="2TGnmG1_6H0" resolve="rule" />
                      </node>
                      <node concept="3TrcHB" id="3qVwZ8sVHJk" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="17RvpY" id="3qVwZ8sVJnC" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2TGnmG1_83M" role="3clFbx">
              <node concept="2MkqsV" id="2TGnmG1_8QW" role="3cqZAp">
                <node concept="3cpWs3" id="2TGnmG1_9H8" role="2MkJ7o">
                  <node concept="2OqwBi" id="2TGnmG1_a4X" role="3uHU7w">
                    <node concept="1YBJjd" id="2TGnmG1_9Hu" role="2Oq$k0">
                      <ref role="1YBMHb" node="2TGnmG1_6H0" resolve="rule" />
                    </node>
                    <node concept="3TrcHB" id="2TGnmG1_aFf" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2TGnmG1_8Rb" role="3uHU7B">
                    <property role="Xl_RC" value="rule name not unique " />
                  </node>
                </node>
                <node concept="1YBJjd" id="2TGnmG1_aR4" role="2OEOjV">
                  <ref role="1YBMHb" node="2TGnmG1_6H0" resolve="rule" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2TGnmG1_6H0" role="1YuTPh">
      <property role="TrG5h" value="rule" />
      <ref role="1YaFvo" to="7ggn:1Sb3mAPvh8b" resolve="Rule" />
    </node>
  </node>
  <node concept="1YbPZF" id="3qVwZ8sxnum">
    <property role="TrG5h" value="typeof_NewNodeExpression" />
    <node concept="3clFbS" id="3qVwZ8sxnun" role="18ibNy">
      <node concept="1Z5TYs" id="hrE9X94" role="3cqZAp">
        <node concept="mw_s8" id="hrE9X95" role="1ZfhK$">
          <node concept="1Z2H0r" id="hrE9X96" role="mwGJk">
            <node concept="1YBJjd" id="3qVwZ8sxnzc" role="1Z2MuG">
              <ref role="1YBMHb" node="3qVwZ8sxnup" resolve="newNodeExpression" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="hrE9X97" role="1ZfhKB">
          <node concept="1Z2H0r" id="h84xJxS" role="mwGJk">
            <node concept="2OqwBi" id="hxiFsOh" role="1Z2MuG">
              <node concept="1YBJjd" id="3qVwZ8sxnB_" role="2Oq$k0">
                <ref role="1YBMHb" node="3qVwZ8sxnup" resolve="newNodeExpression" />
              </node>
              <node concept="3TrEf2" id="3qVwZ8sxnO3" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:3qVwZ8swVPC" resolve="nodeConcept" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3qVwZ8sxnup" role="1YuTPh">
      <property role="TrG5h" value="newNodeExpression" />
      <ref role="1YaFvo" to="7ggn:3qVwZ8swO_Y" resolve="NodeDeclarationExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="3qVwZ8sKL86">
    <property role="TrG5h" value="typeof_NodeExpression" />
    <node concept="3clFbS" id="3qVwZ8sKL87" role="18ibNy">
      <node concept="1Z5TYs" id="3qVwZ8sKLjz" role="3cqZAp">
        <node concept="mw_s8" id="3qVwZ8sKLj$" role="1ZfhK$">
          <node concept="1Z2H0r" id="3qVwZ8sKLj_" role="mwGJk">
            <node concept="1YBJjd" id="3qVwZ8sKLG6" role="1Z2MuG">
              <ref role="1YBMHb" node="3qVwZ8sKL89" resolve="nodeExpression" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="3qVwZ8sKLjB" role="1ZfhKB">
          <node concept="2OqwBi" id="3qVwZ8sKMwb" role="mwGJk">
            <node concept="2OqwBi" id="3qVwZ8sKLjD" role="2Oq$k0">
              <node concept="2OqwBi" id="3qVwZ8sKLjE" role="2Oq$k0">
                <node concept="1YBJjd" id="3qVwZ8sKLIR" role="2Oq$k0">
                  <ref role="1YBMHb" node="3qVwZ8sKL89" resolve="nodeExpression" />
                </node>
                <node concept="2Xjw5R" id="3qVwZ8sKLjG" role="2OqNvi">
                  <node concept="1xMEDy" id="3qVwZ8sKLjH" role="1xVPHs">
                    <node concept="chp4Y" id="3qVwZ8sKLTF" role="ri$Ld">
                      <ref role="cht4Q" to="7ggn:3qVwZ8swO_Y" resolve="NodeDeclarationExpression" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="3qVwZ8sKMde" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:3qVwZ8swVPC" resolve="nodeConcept" />
              </node>
            </node>
            <node concept="3TrEf2" id="3qVwZ8sKMIz" role="2OqNvi">
              <ref role="3Tt5mk" to="tp25:hbzrR4S" resolve="createdType" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3qVwZ8sKL89" role="1YuTPh">
      <property role="TrG5h" value="nodeExpression" />
      <ref role="1YaFvo" to="7ggn:3qVwZ8sKKey" resolve="NodeExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="3qVwZ8sOU$P">
    <property role="TrG5h" value="typeof_RuleAssignmentExpression" />
    <node concept="1YbPZF" id="h6MiByj" role="3K5x9m">
      <property role="TrG5h" value="typeof_BaseAssignmentExpression" />
      <property role="3GE5qa" value="" />
      <node concept="3clFbS" id="h6MiByk" role="18ibNy">
        <node concept="3cpWs8" id="h6MiLxh" role="3cqZAp">
          <node concept="3cpWsn" id="h6MiLxi" role="3cpWs9">
            <property role="TrG5h" value="ae" />
            <property role="3TUv4t" value="true" />
            <node concept="3Tqbb2" id="h6MiLxj" role="1tU5fm">
              <ref role="ehGHo" to="tpee:hGd03cG" resolve="BaseAssignmentExpression" />
            </node>
            <node concept="1YBJjd" id="h6MiNul" role="33vP2m">
              <ref role="1YBMHb" node="h6MiFV6" resolve="baseAssignmentExpression" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="h6MpKak" role="3cqZAp">
          <node concept="3cpWsn" id="h6MpKal" role="3cpWs9">
            <property role="TrG5h" value="lval" />
            <property role="3TUv4t" value="true" />
            <node concept="3Tqbb2" id="h6MpKam" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
            </node>
            <node concept="2OqwBi" id="hxiFtE3" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTyQm" role="2Oq$k0">
                <ref role="3cqZAo" node="h6MiLxi" resolve="ae" />
              </node>
              <node concept="3TrEf2" id="h6MpRwS" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fz7vLUn" resolve="lValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="h6MpWlL" role="3cqZAp">
          <node concept="3cpWsn" id="h6MpWlM" role="3cpWs9">
            <property role="TrG5h" value="rval" />
            <property role="3TUv4t" value="true" />
            <node concept="3Tqbb2" id="h6MpWlN" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
            </node>
            <node concept="2OqwBi" id="hxiFttb" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTrPJ" role="2Oq$k0">
                <ref role="3cqZAo" node="h6MiLxi" resolve="ae" />
              </node>
              <node concept="3TrEf2" id="h6MpYi9" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fz7vLUp" resolve="rValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="nvevp" id="5ABTioeQds8" role="3cqZAp">
          <node concept="2X1qdy" id="5ABTioeQdsd" role="2X0Ygz">
            <property role="TrG5h" value="lType" />
            <node concept="2jxLKc" id="5ABTioeQdse" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="5ABTioeQdsj" role="nvhr_">
            <node concept="3clFbJ" id="5ABTioePJL$" role="3cqZAp">
              <node concept="3fqX7Q" id="5ABTioePJL_" role="3clFbw">
                <node concept="1eOMI4" id="5ABTioePJLA" role="3fr31v">
                  <node concept="2YIFZM" id="5ABTioftx5R" role="1eOMHV">
                    <ref role="37wK5l" to="tpeh:5ABTiofsWg6" resolve="isValidByteOrShortExpression" />
                    <ref role="1Pybhc" to="tpeh:6UtDUq0tqUO" resolve="CheckingUtil" />
                    <node concept="2X3wrD" id="5ABTioftxne" role="37wK5m">
                      <ref role="2X3Bk0" node="5ABTioeQdsd" resolve="lType" />
                    </node>
                    <node concept="37vLTw" id="5ABTioftxrh" role="37wK5m">
                      <ref role="3cqZAo" node="h6MpWlM" resolve="rval" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5ABTioePJM9" role="3clFbx">
                <node concept="1ZobV4" id="h6MqprW" role="3cqZAp">
                  <property role="Ob790" value="0" />
                  <property role="3wDh2S" value="true" />
                  <node concept="3Cnw8n" id="3v2v_L9ldyi" role="FrUEy">
                    <ref role="QpYPw" to="tpeh:3v2v_L9koo3" resolve="AddCast" />
                    <node concept="3CnSsL" id="3v2v_L9llGa" role="3Coj4f">
                      <ref role="QkamJ" to="tpeh:3v2v_L9ksYL" resolve="desiredType" />
                      <node concept="37vLTw" id="3v2v_L9tF90" role="3CoRuB">
                        <ref role="3cqZAo" node="h6MpKal" resolve="lval" />
                      </node>
                    </node>
                    <node concept="3CnSsL" id="3v2v_L9r8BU" role="3Coj4f">
                      <ref role="QkamJ" to="tpeh:3v2v_L9oH7P" resolve="expression" />
                      <node concept="2OqwBi" id="3v2v_L9r8FV" role="3CoRuB">
                        <node concept="37vLTw" id="3v2v_L9r8Cp" role="2Oq$k0">
                          <ref role="3cqZAo" node="h6MiLxi" resolve="ae" />
                        </node>
                        <node concept="3TrEf2" id="3v2v_L9r98y" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fz7vLUp" resolve="rValue" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Cnw8n" id="3v2v_L9Fe3C" role="FrUEy">
                    <ref role="QpYPw" to="tpeh:3v2v_L9FdTT" resolve="ChangeExpectedType" />
                    <node concept="3CnSsL" id="3v2v_L9Fe3L" role="3Coj4f">
                      <ref role="QkamJ" to="tpeh:3v2v_L9FdU0" resolve="desiredType" />
                      <node concept="37vLTw" id="3v2v_L9FjA2" role="3CoRuB">
                        <ref role="3cqZAo" node="h6MpWlM" resolve="rval" />
                      </node>
                    </node>
                    <node concept="3CnSsL" id="3v2v_L9Fe4z" role="3Coj4f">
                      <ref role="QkamJ" to="tpeh:3v2v_L9FdUV" resolve="expression" />
                      <node concept="2OqwBi" id="3v2v_L9FiFU" role="3CoRuB">
                        <node concept="37vLTw" id="3v2v_L9FiCo" role="2Oq$k0">
                          <ref role="3cqZAo" node="h6MiLxi" resolve="ae" />
                        </node>
                        <node concept="3TrEf2" id="3v2v_L9Fj$E" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fz7vLUn" resolve="lValue" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="mw_s8" id="hgmDw7y" role="1ZfhK$">
                    <node concept="1Z2H0r" id="h6MqpU0" role="mwGJk">
                      <node concept="37vLTw" id="3GM_nagTzBu" role="1Z2MuG">
                        <ref role="3cqZAo" node="h6MpWlM" resolve="rval" />
                      </node>
                    </node>
                  </node>
                  <node concept="mw_s8" id="5ABTioeQ_cX" role="1ZfhKB">
                    <node concept="2X3wrD" id="5ABTioeQ_cV" role="mwGJk">
                      <ref role="2X3Bk0" node="5ABTioeQdsd" resolve="lType" />
                    </node>
                  </node>
                  <node concept="1YBJjd" id="5X3cypc6P82" role="1ZmcU8">
                    <ref role="1YBMHb" node="h6MiFV6" resolve="baseAssignmentExpression" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="24B8XX1bzP2" role="9aQIa">
                <node concept="3clFbS" id="24B8XX1bzP3" role="9aQI4">
                  <node concept="3SKdUt" id="24B8XX484ec" role="3cqZAp">
                    <node concept="3SKdUq" id="24B8XX484ed" role="3SKWNk">
                      <property role="3SKdUp" value="Ensure rval is an IntegerType" />
                    </node>
                  </node>
                  <node concept="1ZobV4" id="24B8XX1b$4P" role="3cqZAp">
                    <property role="Ob790" value="0" />
                    <property role="3wDh2S" value="true" />
                    <node concept="3Cnw8n" id="24B8XX1b$4Q" role="FrUEy">
                      <ref role="QpYPw" to="tpeh:3v2v_L9koo3" resolve="AddCast" />
                      <node concept="3CnSsL" id="24B8XX1b$4R" role="3Coj4f">
                        <ref role="QkamJ" to="tpeh:3v2v_L9ksYL" resolve="desiredType" />
                        <node concept="37vLTw" id="24B8XX1b$4S" role="3CoRuB">
                          <ref role="3cqZAo" node="h6MpKal" resolve="lval" />
                        </node>
                      </node>
                      <node concept="3CnSsL" id="24B8XX1b$4T" role="3Coj4f">
                        <ref role="QkamJ" to="tpeh:3v2v_L9oH7P" resolve="expression" />
                        <node concept="2OqwBi" id="24B8XX1b$4U" role="3CoRuB">
                          <node concept="37vLTw" id="24B8XX1b$4V" role="2Oq$k0">
                            <ref role="3cqZAo" node="h6MiLxi" resolve="ae" />
                          </node>
                          <node concept="3TrEf2" id="24B8XX1b$4W" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:fz7vLUp" resolve="rValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3Cnw8n" id="24B8XX1b$4X" role="FrUEy">
                      <ref role="QpYPw" to="tpeh:3v2v_L9FdTT" resolve="ChangeExpectedType" />
                      <node concept="3CnSsL" id="24B8XX1b$4Y" role="3Coj4f">
                        <ref role="QkamJ" to="tpeh:3v2v_L9FdU0" resolve="desiredType" />
                        <node concept="37vLTw" id="24B8XX1b$4Z" role="3CoRuB">
                          <ref role="3cqZAo" node="h6MpWlM" resolve="rval" />
                        </node>
                      </node>
                      <node concept="3CnSsL" id="24B8XX1b$50" role="3Coj4f">
                        <ref role="QkamJ" to="tpeh:3v2v_L9FdUV" resolve="expression" />
                        <node concept="2OqwBi" id="24B8XX1b$51" role="3CoRuB">
                          <node concept="37vLTw" id="24B8XX1b$52" role="2Oq$k0">
                            <ref role="3cqZAo" node="h6MiLxi" resolve="ae" />
                          </node>
                          <node concept="3TrEf2" id="24B8XX1b$53" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:fz7vLUn" resolve="lValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="mw_s8" id="24B8XX1b$54" role="1ZfhK$">
                      <node concept="1Z2H0r" id="24B8XX1b$55" role="mwGJk">
                        <node concept="37vLTw" id="24B8XX1b$56" role="1Z2MuG">
                          <ref role="3cqZAo" node="h6MpWlM" resolve="rval" />
                        </node>
                      </node>
                    </node>
                    <node concept="mw_s8" id="24B8XX1b$57" role="1ZfhKB">
                      <node concept="2c44tf" id="24B8XX1b$8_" role="mwGJk">
                        <node concept="10Oyi0" id="24B8XX1b$9f" role="2c44tc" />
                      </node>
                    </node>
                    <node concept="1YBJjd" id="24B8XX1b$59" role="1ZmcU8">
                      <ref role="1YBMHb" node="h6MiFV6" resolve="baseAssignmentExpression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Z2H0r" id="5ABTioeQrzH" role="nvjzm">
            <node concept="37vLTw" id="5ABTioeQrzI" role="1Z2MuG">
              <ref role="3cqZAo" node="h6MpKal" resolve="lval" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5ABTioePJId" role="3cqZAp" />
        <node concept="1Z5TYs" id="hzG2ANF" role="3cqZAp">
          <node concept="mw_s8" id="hzG2ANG" role="1ZfhK$">
            <node concept="1Z2H0r" id="hzG2ANH" role="mwGJk">
              <node concept="37vLTw" id="3GM_nagTwSV" role="1Z2MuG">
                <ref role="3cqZAo" node="h6MiLxi" resolve="ae" />
              </node>
            </node>
          </node>
          <node concept="mw_s8" id="hzG2ANI" role="1ZfhKB">
            <node concept="1Z2H0r" id="h6Mqu$g" role="mwGJk">
              <node concept="37vLTw" id="3GM_nagTzkm" role="1Z2MuG">
                <ref role="3cqZAo" node="h6MpKal" resolve="lval" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1YaCAy" id="h6MiFV6" role="1YuTPh">
        <property role="TrG5h" value="baseAssignmentExpression" />
        <ref role="1YaFvo" to="tpee:hGd03cG" resolve="BaseAssignmentExpression" />
      </node>
    </node>
    <node concept="3clFbS" id="3qVwZ8sOU$Q" role="18ibNy">
      <node concept="3cpWs8" id="3qVwZ8sOWw2" role="3cqZAp">
        <node concept="3cpWsn" id="3qVwZ8sOWw5" role="3cpWs9">
          <property role="TrG5h" value="rae" />
          <property role="3TUv4t" value="true" />
          <node concept="3Tqbb2" id="3qVwZ8sOWw6" role="1tU5fm">
            <ref role="ehGHo" to="7ggn:3qVwZ8sHWnm" resolve="RuleAssignmentExpression" />
          </node>
          <node concept="1YBJjd" id="3qVwZ8sOX53" role="33vP2m">
            <ref role="1YBMHb" node="3qVwZ8sOU$S" resolve="ruleAssignmentExpression" />
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="3qVwZ8sOW_9" role="3cqZAp">
        <node concept="3cpWsn" id="3qVwZ8sOW_a" role="3cpWs9">
          <property role="TrG5h" value="lval" />
          <property role="3TUv4t" value="true" />
          <node concept="3Tqbb2" id="3qVwZ8sOW_b" role="1tU5fm">
            <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
          </node>
          <node concept="2OqwBi" id="3qVwZ8sOW_c" role="33vP2m">
            <node concept="37vLTw" id="3qVwZ8sOW_d" role="2Oq$k0">
              <ref role="3cqZAo" node="3qVwZ8sOWw5" resolve="rae" />
            </node>
            <node concept="3TrEf2" id="3qVwZ8sOW_e" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:fz7vLUn" resolve="lValue" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="3qVwZ8sOWGY" role="3cqZAp">
        <node concept="3cpWsn" id="3qVwZ8sOWGZ" role="3cpWs9">
          <property role="TrG5h" value="rval" />
          <property role="3TUv4t" value="true" />
          <node concept="3Tqbb2" id="3qVwZ8sOWH0" role="1tU5fm">
            <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
          </node>
          <node concept="2OqwBi" id="3qVwZ8sOWH1" role="33vP2m">
            <node concept="37vLTw" id="3qVwZ8sOWH2" role="2Oq$k0">
              <ref role="3cqZAo" node="3qVwZ8sOWw5" resolve="rae" />
            </node>
            <node concept="3TrEf2" id="3qVwZ8sOWH3" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:fz7vLUp" resolve="rValue" />
            </node>
          </node>
        </node>
      </node>
      <node concept="nvevp" id="3qVwZ8sOWhb" role="3cqZAp">
        <node concept="2X1qdy" id="3qVwZ8sOWhc" role="2X0Ygz">
          <property role="TrG5h" value="lType" />
          <node concept="2jxLKc" id="3qVwZ8sOWhd" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="3qVwZ8sOWhe" role="nvhr_">
          <node concept="3clFbJ" id="3qVwZ8sOWhf" role="3cqZAp">
            <node concept="2YIFZM" id="3qVwZ8sOWhi" role="3clFbw">
              <ref role="37wK5l" to="tpeh:5ABTiofsWg6" resolve="isValidByteOrShortExpression" />
              <ref role="1Pybhc" to="tpeh:6UtDUq0tqUO" resolve="CheckingUtil" />
              <node concept="2X3wrD" id="3qVwZ8sOWhj" role="37wK5m">
                <ref role="2X3Bk0" node="3qVwZ8sOWhc" resolve="lType" />
              </node>
              <node concept="37vLTw" id="3qVwZ8sOWhk" role="37wK5m">
                <ref role="3cqZAo" node="3qVwZ8sOWGZ" resolve="rval" />
              </node>
            </node>
            <node concept="3clFbS" id="3qVwZ8sOWhl" role="3clFbx">
              <node concept="3SKdUt" id="3qVwZ8sP0Ck" role="3cqZAp">
                <node concept="3SKdUq" id="3qVwZ8sP0Cl" role="3SKWNk">
                  <property role="3SKdUp" value="Ensure rval is an IntegerType" />
                </node>
              </node>
              <node concept="1ZobV4" id="3qVwZ8sOYuV" role="3cqZAp">
                <property role="3wDh2S" value="true" />
                <node concept="mw_s8" id="3qVwZ8sOWhY" role="1ZfhK$">
                  <node concept="1Z2H0r" id="3qVwZ8sOWhZ" role="mwGJk">
                    <node concept="37vLTw" id="3qVwZ8sOWi0" role="1Z2MuG">
                      <ref role="3cqZAo" node="3qVwZ8sOWGZ" resolve="rval" />
                    </node>
                  </node>
                </node>
                <node concept="mw_s8" id="3qVwZ8sOWi1" role="1ZfhKB">
                  <node concept="2c44tf" id="3qVwZ8sOWi2" role="mwGJk">
                    <node concept="10Oyi0" id="3qVwZ8sOWi3" role="2c44tc" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="3qVwZ8sP0FJ" role="9aQIa">
              <node concept="3clFbS" id="3qVwZ8sP0FK" role="9aQI4">
                <node concept="3clFbJ" id="3qVwZ8sWg3b" role="3cqZAp">
                  <node concept="3clFbS" id="3qVwZ8sWg3d" role="3clFbx">
                    <node concept="3cpWs8" id="3qVwZ8t1tr4" role="3cqZAp">
                      <node concept="3cpWsn" id="3qVwZ8t1tr7" role="3cpWs9">
                        <property role="TrG5h" value="ntype" />
                        <node concept="3Tqbb2" id="3qVwZ8t1tr8" role="1tU5fm">
                          <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
                        </node>
                        <node concept="2ShNRf" id="3qVwZ8t1tr9" role="33vP2m">
                          <node concept="3zrR0B" id="3qVwZ8t1tra" role="2ShVmc">
                            <node concept="3Tqbb2" id="3qVwZ8t1trb" role="3zrR0E">
                              <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3qVwZ8t1uMm" role="3cqZAp">
                      <node concept="37vLTI" id="3qVwZ8t1vOm" role="3clFbG">
                        <node concept="2OqwBi" id="3qVwZ8t1x2R" role="37vLTx">
                          <node concept="1PxgMI" id="3qVwZ8t1wKg" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="3qVwZ8t1wN7" role="3oSUPX">
                              <ref role="cht4Q" to="tp25:gEI9FSM" resolve="SNodeListType" />
                            </node>
                            <node concept="2X3wrD" id="3qVwZ8t1vT_" role="1m5AlR">
                              <ref role="2X3Bk0" node="3qVwZ8sOWhc" resolve="lType" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="3qVwZ8t1xmP" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp25:gEI9Wgx" resolve="elementConcept" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3qVwZ8t1vbP" role="37vLTJ">
                          <node concept="37vLTw" id="3qVwZ8t1uMk" role="2Oq$k0">
                            <ref role="3cqZAo" node="3qVwZ8t1tr7" resolve="ntype" />
                          </node>
                          <node concept="3TrEf2" id="3qVwZ8t1vnh" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp25:g$ehGDh" resolve="concept" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="3qVwZ8t1syv" role="3cqZAp">
                      <node concept="3cpWsn" id="3qVwZ8t1syy" role="3cpWs9">
                        <property role="TrG5h" value="stype" />
                        <node concept="3Tqbb2" id="3qVwZ8t1syt" role="1tU5fm">
                          <ref role="ehGHo" to="tp2q:gKA3Dh4" resolve="SequenceType" />
                        </node>
                        <node concept="2ShNRf" id="3qVwZ8t1szi" role="33vP2m">
                          <node concept="3zrR0B" id="3qVwZ8t1szg" role="2ShVmc">
                            <node concept="3Tqbb2" id="3qVwZ8t1szh" role="3zrR0E">
                              <ref role="ehGHo" to="tp2q:gKA3Dh4" resolve="SequenceType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3qVwZ8t1t$9" role="3cqZAp">
                      <node concept="37vLTI" id="3qVwZ8t1ukg" role="3clFbG">
                        <node concept="37vLTw" id="3qVwZ8t1upf" role="37vLTx">
                          <ref role="3cqZAo" node="3qVwZ8t1tr7" resolve="ntype" />
                        </node>
                        <node concept="2OqwBi" id="3qVwZ8t1tIA" role="37vLTJ">
                          <node concept="37vLTw" id="3qVwZ8t1t$7" role="2Oq$k0">
                            <ref role="3cqZAo" node="3qVwZ8t1syy" resolve="stype" />
                          </node>
                          <node concept="3TrEf2" id="3qVwZ8t1tVy" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp2q:gKA3Ige" resolve="elementType" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1ZobV4" id="3qVwZ8t1sh1" role="3cqZAp">
                      <property role="3wDh2S" value="true" />
                      <node concept="mw_s8" id="3qVwZ8t1she" role="1ZfhK$">
                        <node concept="1Z2H0r" id="3qVwZ8t1sha" role="mwGJk">
                          <node concept="37vLTw" id="3qVwZ8t1shy" role="1Z2MuG">
                            <ref role="3cqZAo" node="3qVwZ8sOWGZ" resolve="rval" />
                          </node>
                        </node>
                      </node>
                      <node concept="mw_s8" id="3qVwZ8t1uIh" role="1ZfhKB">
                        <node concept="37vLTw" id="3qVwZ8t1uIg" role="mwGJk">
                          <ref role="3cqZAo" node="3qVwZ8t1syy" resolve="stype" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3qVwZ8sWgbC" role="3clFbw">
                    <node concept="2X3wrD" id="3qVwZ8sWg3E" role="2Oq$k0">
                      <ref role="2X3Bk0" node="3qVwZ8sOWhc" resolve="lType" />
                    </node>
                    <node concept="1mIQ4w" id="3qVwZ8sWghe" role="2OqNvi">
                      <node concept="chp4Y" id="3qVwZ8sWgj5" role="cj9EA">
                        <ref role="cht4Q" to="tp25:gEI9FSM" resolve="SNodeListType" />
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="3qVwZ8t1san" role="9aQIa">
                    <node concept="3clFbS" id="3qVwZ8t1sao" role="9aQI4">
                      <node concept="1ZobV4" id="3qVwZ8sP0Cd" role="3cqZAp">
                        <property role="3wDh2S" value="true" />
                        <node concept="mw_s8" id="3qVwZ8sP0Ce" role="1ZfhKB">
                          <node concept="2X3wrD" id="3qVwZ8sP0Cf" role="mwGJk">
                            <ref role="2X3Bk0" node="3qVwZ8sOWhc" resolve="lType" />
                          </node>
                        </node>
                        <node concept="mw_s8" id="3qVwZ8sP0Cg" role="1ZfhK$">
                          <node concept="1Z2H0r" id="3qVwZ8sP0Ch" role="mwGJk">
                            <node concept="37vLTw" id="3qVwZ8sP0Ci" role="1Z2MuG">
                              <ref role="3cqZAo" node="3qVwZ8sOWGZ" resolve="rval" />
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
        <node concept="1Z2H0r" id="3qVwZ8sOWi5" role="nvjzm">
          <node concept="37vLTw" id="3qVwZ8sOWi6" role="1Z2MuG">
            <ref role="3cqZAo" node="3qVwZ8sOW_a" resolve="lval" />
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="3qVwZ8sOWWV" role="3cqZAp">
        <node concept="mw_s8" id="3qVwZ8sOWWW" role="1ZfhK$">
          <node concept="1Z2H0r" id="3qVwZ8sOWWX" role="mwGJk">
            <node concept="37vLTw" id="3qVwZ8sOWWY" role="1Z2MuG">
              <ref role="3cqZAo" node="3qVwZ8sOWw5" resolve="rae" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="3qVwZ8sOWWZ" role="1ZfhKB">
          <node concept="1Z2H0r" id="3qVwZ8sOWX0" role="mwGJk">
            <node concept="37vLTw" id="3qVwZ8sOWX1" role="1Z2MuG">
              <ref role="3cqZAo" node="3qVwZ8sOW_a" resolve="lval" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3qVwZ8sOU$S" role="1YuTPh">
      <property role="TrG5h" value="ruleAssignmentExpression" />
      <ref role="1YaFvo" to="7ggn:3qVwZ8sHWnm" resolve="RuleAssignmentExpression" />
    </node>
    <node concept="bXqS6" id="3qVwZ8sOVa6" role="bX4a1">
      <node concept="3clFbS" id="3qVwZ8sOVa7" role="2VODD2">
        <node concept="3cpWs6" id="3qVwZ8sOVy2" role="3cqZAp">
          <node concept="3clFbT" id="3qVwZ8sOVRX" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="3qVwZ8t2MwE">
    <property role="TrG5h" value="check_RuleAssignmentExpression" />
    <property role="18ip37" value="true" />
    <node concept="3clFbS" id="3qVwZ8t2MwF" role="18ibNy">
      <node concept="3cpWs8" id="3qVwZ8t2Wtp" role="3cqZAp">
        <node concept="3cpWsn" id="3qVwZ8t2Wtq" role="3cpWs9">
          <property role="TrG5h" value="lv" />
          <node concept="3Tqbb2" id="3qVwZ8t2Wtl" role="1tU5fm">
            <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
          </node>
          <node concept="2OqwBi" id="3qVwZ8t2Wtr" role="33vP2m">
            <node concept="1YBJjd" id="3qVwZ8t2Wts" role="2Oq$k0">
              <ref role="1YBMHb" node="3qVwZ8t2MwP" resolve="assignment" />
            </node>
            <node concept="3TrEf2" id="3qVwZ8t2Wtt" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:fz7vLUn" resolve="lValue" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="4Zw_eaZSxXW" role="3cqZAp">
        <node concept="3clFbS" id="4Zw_eaZSxXZ" role="3clFbx">
          <node concept="3cpWs6" id="4Zw_eb02D1t" role="3cqZAp" />
        </node>
        <node concept="2OqwBi" id="4Zw_eaZSza7" role="3clFbw">
          <node concept="37vLTw" id="3qVwZ8t2Wtv" role="2Oq$k0">
            <ref role="3cqZAo" node="3qVwZ8t2Wtq" resolve="lv" />
          </node>
          <node concept="3w_OXm" id="4Zw_eaZSzT4" role="2OqNvi" />
        </node>
      </node>
      <node concept="3clFbJ" id="3qVwZ8t2RzB" role="3cqZAp">
        <node concept="3clFbS" id="3qVwZ8t2RzD" role="3clFbx">
          <node concept="3cpWs6" id="3qVwZ8t339Y" role="3cqZAp" />
        </node>
        <node concept="1Wc70l" id="3qVwZ8t2Vkp" role="3clFbw">
          <node concept="1eOMI4" id="3qVwZ8t4i2m" role="3uHU7w">
            <node concept="22lmx$" id="3qVwZ8t4iz$" role="1eOMHV">
              <node concept="2OqwBi" id="3qVwZ8t32kp" role="3uHU7B">
                <node concept="2OqwBi" id="3qVwZ8t2Zcf" role="2Oq$k0">
                  <node concept="1PxgMI" id="3qVwZ8t2YA5" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="3qVwZ8t2YQh" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                    </node>
                    <node concept="37vLTw" id="3qVwZ8t2Wtw" role="1m5AlR">
                      <ref role="3cqZAo" node="3qVwZ8t2Wtq" resolve="lv" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="3qVwZ8t2Zzp" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="3qVwZ8t32DT" role="2OqNvi">
                  <node concept="chp4Y" id="3qVwZ8t32SW" role="cj9EA">
                    <ref role="cht4Q" to="tp25:gzTsc4p" resolve="SLinkListAccess" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3qVwZ8t4iN_" role="3uHU7w">
                <node concept="2OqwBi" id="3qVwZ8t4iNA" role="2Oq$k0">
                  <node concept="1PxgMI" id="3qVwZ8t4iNB" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="3qVwZ8t4iNC" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                    </node>
                    <node concept="37vLTw" id="3qVwZ8t4iND" role="1m5AlR">
                      <ref role="3cqZAo" node="3qVwZ8t2Wtq" resolve="lv" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="3qVwZ8t4iNE" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="3qVwZ8t4iNF" role="2OqNvi">
                  <node concept="chp4Y" id="3qVwZ8t4j5p" role="cj9EA">
                    <ref role="cht4Q" to="tp25:h2RRcAW" resolve="Model_RootsOperation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3qVwZ8t2SBL" role="3uHU7B">
            <node concept="37vLTw" id="3qVwZ8t2Wtu" role="2Oq$k0">
              <ref role="3cqZAo" node="3qVwZ8t2Wtq" resolve="lv" />
            </node>
            <node concept="1mIQ4w" id="3qVwZ8t2SRS" role="2OqNvi">
              <node concept="chp4Y" id="3qVwZ8t2SU0" role="cj9EA">
                <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Mj0R9" id="h6MpZmj" role="3cqZAp">
        <node concept="2OqwBi" id="329q4wnbT2I" role="2MkoU_">
          <node concept="37vLTw" id="3qVwZ8t2Wtx" role="2Oq$k0">
            <ref role="3cqZAo" node="3qVwZ8t2Wtq" resolve="lv" />
          </node>
          <node concept="2qgKlT" id="329q4wnbT2O" role="2OqNvi">
            <ref role="37wK5l" to="tpek:hEwJgmE" resolve="isLValue" />
          </node>
        </node>
        <node concept="Xl_RD" id="h6Mq9Va" role="2MkJ7o">
          <property role="Xl_RC" value="unexpected in left part or assignment" />
        </node>
        <node concept="37vLTw" id="3qVwZ8t2Wty" role="2OEOjV">
          <ref role="3cqZAo" node="3qVwZ8t2Wtq" resolve="lv" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3qVwZ8t2MwP" role="1YuTPh">
      <property role="TrG5h" value="assignment" />
      <ref role="1YaFvo" to="7ggn:3qVwZ8sHWnm" resolve="RuleAssignmentExpression" />
    </node>
  </node>
</model>

