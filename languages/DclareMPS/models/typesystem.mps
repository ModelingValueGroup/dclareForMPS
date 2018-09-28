<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b3bd6869-3f20-419a-be47-753c4d00d5e8(DclareMPS.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" implicit="true" />
    <import index="us1s" ref="r:e7d7a1fa-fb58-4cf6-bc1d-e5ed722e0c61(DclareMPS.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
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
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
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
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
  <node concept="1YbPZF" id="jVwYUSRba0">
    <property role="TrG5h" value="typeof_NewNodeExpression" />
    <node concept="3clFbS" id="jVwYUSRba1" role="18ibNy">
      <node concept="1Z5TYs" id="jVwYUSRba7" role="3cqZAp">
        <node concept="mw_s8" id="jVwYUSRba8" role="1ZfhK$">
          <node concept="1Z2H0r" id="jVwYUSRba9" role="mwGJk">
            <node concept="1YBJjd" id="jVwYUSRbhF" role="1Z2MuG">
              <ref role="1YBMHb" node="jVwYUSRba3" resolve="newNodeExpression" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="jVwYUSRbab" role="1ZfhKB">
          <node concept="2OqwBi" id="jVwYUSRbad" role="mwGJk">
            <node concept="1YBJjd" id="jVwYUSRbmu" role="2Oq$k0">
              <ref role="1YBMHb" node="jVwYUSRba3" resolve="newNodeExpression" />
            </node>
            <node concept="2qgKlT" id="jVwYUSRdvQ" role="2OqNvi">
              <ref role="37wK5l" to="us1s:jVwYUSRbGA" resolve="getType" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="jVwYUSRba3" role="1YuTPh">
      <property role="TrG5h" value="newNodeExpression" />
      <ref role="1YaFvo" to="7ggn:jVwYUSQMg8" resolve="NewNodeExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="MxZDaxjEBS">
    <property role="TrG5h" value="typeof_RuleSetReference" />
    <node concept="3clFbS" id="MxZDaxjEBT" role="18ibNy">
      <node concept="1Z5TYs" id="MxZDaxjEIn" role="3cqZAp">
        <node concept="mw_s8" id="MxZDaxjEIo" role="1ZfhK$">
          <node concept="1Z2H0r" id="MxZDaxjEIp" role="mwGJk">
            <node concept="1YBJjd" id="MxZDaxjEWc" role="1Z2MuG">
              <ref role="1YBMHb" node="MxZDaxjEBV" resolve="ruleSetReference" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="MxZDaxjEIr" role="1ZfhKB">
          <node concept="2OqwBi" id="MxZDaxjEIs" role="mwGJk">
            <node concept="1YBJjd" id="MxZDaxjEYS" role="2Oq$k0">
              <ref role="1YBMHb" node="MxZDaxjEBV" resolve="ruleSetReference" />
            </node>
            <node concept="2qgKlT" id="MxZDaxjEIu" role="2OqNvi">
              <ref role="37wK5l" to="us1s:MxZDaxjEuY" resolve="getType" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="MxZDaxjEBV" role="1YuTPh">
      <property role="TrG5h" value="ruleSetReference" />
      <ref role="1YaFvo" to="7ggn:MxZDaxjDpz" resolve="RuleSetReference" />
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
              <node concept="17QLQc" id="2TGnmG1_8JX" role="3uHU7B">
                <node concept="1YBJjd" id="2TGnmG1_83Z" role="3uHU7B">
                  <ref role="1YBMHb" node="2TGnmG1_6H0" resolve="rule" />
                </node>
                <node concept="2GrUjf" id="2TGnmG1_8Nv" role="3uHU7w">
                  <ref role="2Gs0qQ" node="2TGnmG1_6Hb" resolve="other" />
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
</model>

