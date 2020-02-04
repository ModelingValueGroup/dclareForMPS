<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a2026005-6b7d-459a-9411-95438c0ccd87(main@generator)">
  <persistence version="9" />
  <languages>
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="pwn9" ref="r:d26de8aa-207d-46d8-b947-994f2f786eb8(DclareBaseLanguageExt.structure)" />
    <import index="u4ym" ref="r:1a96ceaa-2946-43e0-af3f-cd05d77ee6d1(DclareMPSRuntime.util)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpeu" ref="r:00000000-0000-4000-0000-011c895902fa(jetbrains.mps.lang.smodel.behavior)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="us1s" ref="r:e7d7a1fa-fb58-4cf6-bc1d-e5ed722e0c61(DclareMPS.behavior)" implicit="true" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
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
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="5015072279636592410" name="jetbrains.mps.lang.generator.structure.VarMacro_ValueQuery" flags="in" index="2jfdEK" />
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1048903277984099206" name="jetbrains.mps.lang.generator.structure.VarDeclaration" flags="ng" index="1ps_xZ">
        <child id="1048903277984099209" name="type" index="1ps_xK" />
        <child id="1048903277984099210" name="value" index="1ps_xN" />
      </concept>
      <concept id="1048903277984099198" name="jetbrains.mps.lang.generator.structure.VarMacro2" flags="lg" index="1ps_y7">
        <child id="1048903277984099213" name="variables" index="1ps_xO" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1229477454423" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalCopiedInputByOutput" flags="nn" index="12$id9">
        <child id="1229477520175" name="outputNode" index="12$y8L" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1048903277984174662" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_VarRef2" flags="nn" index="1psM6Z">
        <reference id="1048903277984174663" name="vardecl" index="1psM6Y" />
      </concept>
      <concept id="1217026863835" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalInputModel" flags="nn" index="1st3f0" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="5Eq6vdsE1qz">
    <property role="TrG5h" value="extMain" />
    <node concept="3aamgX" id="oVVxO7w_uv" role="3acgRq">
      <ref role="30HIoZ" to="tpee:hqOqwz4" resolve="DotExpression" />
      <node concept="gft3U" id="oVVxO7w_uw" role="1lVwrX">
        <node concept="2YIFZM" id="5$bRKnREkLD" role="gfFT$">
          <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
          <ref role="37wK5l" to="u4ym:5$bRKnREcAj" resolve="getAttributeValue" />
          <node concept="1ps_y7" id="5$bRKnREkLI" role="lGtFl">
            <node concept="1ps_xZ" id="5$bRKnREkLJ" role="1ps_xO">
              <property role="TrG5h" value="attr" />
              <node concept="3Tqbb2" id="5$bRKnREkLK" role="1ps_xK">
                <ref role="ehGHo" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
              </node>
              <node concept="2jfdEK" id="5$bRKnREkLL" role="1ps_xN">
                <node concept="3clFbS" id="5$bRKnREkLM" role="2VODD2">
                  <node concept="3clFbF" id="5$bRKnREkLN" role="3cqZAp">
                    <node concept="2OqwBi" id="5$bRKnREkLO" role="3clFbG">
                      <node concept="1PxgMI" id="5$bRKnREkLP" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="5$bRKnREkLQ" role="3oSUPX">
                          <ref role="cht4Q" to="pwn9:2icq$nJCmZ2" resolve="DclareAttributeOperation" />
                        </node>
                        <node concept="2OqwBi" id="5$bRKnREkLR" role="1m5AlR">
                          <node concept="30H73N" id="5$bRKnREkLS" role="2Oq$k0" />
                          <node concept="3TrEf2" id="5$bRKnREkLT" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                          </node>
                        </node>
                      </node>
                      <node concept="3TrEf2" id="5$bRKnREkLU" role="2OqNvi">
                        <ref role="3Tt5mk" to="pwn9:oVVxO7wotu" resolve="attribute" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="7cS5T_tT5EK" role="37wK5m">
            <property role="Xl_RC" value="attr" />
            <node concept="17Uvod" id="7cS5T_tT7D2" role="lGtFl">
              <property role="2qtEX9" value="value" />
              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
              <node concept="3zFVjK" id="7cS5T_tT7D3" role="3zH0cK">
                <node concept="3clFbS" id="7cS5T_tT7D4" role="2VODD2">
                  <node concept="3clFbF" id="7cS5T_tT7SP" role="3cqZAp">
                    <node concept="2OqwBi" id="7cS5T_tTbju" role="3clFbG">
                      <node concept="2OqwBi" id="7cS5T_tTaqT" role="2Oq$k0">
                        <node concept="2JrnkZ" id="7cS5T_tT9Rb" role="2Oq$k0">
                          <node concept="2OqwBi" id="7cS5T_tT85K" role="2JrQYb">
                            <node concept="1iwH7S" id="7cS5T_tT7SO" role="2Oq$k0" />
                            <node concept="1psM6Z" id="7cS5T_tT8eT" role="2OqNvi">
                              <ref role="1psM6Y" node="5$bRKnREkLJ" resolve="attr" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7cS5T_tTbb5" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7cS5T_tTbBt" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="10Nm6u" id="5$bRKnREmiu" role="37wK5m">
            <node concept="29HgVG" id="5$bRKnREmiv" role="lGtFl">
              <node concept="3NFfHV" id="5$bRKnREmiw" role="3NFExx">
                <node concept="3clFbS" id="5$bRKnREmix" role="2VODD2">
                  <node concept="3clFbF" id="5$bRKnREmiy" role="3cqZAp">
                    <node concept="2OqwBi" id="5$bRKnREmiz" role="3clFbG">
                      <node concept="3TrEf2" id="5$bRKnREmi$" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                      </node>
                      <node concept="30H73N" id="5$bRKnREmi_" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="7cS5T_tM_8R" role="3PaCim">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <node concept="29HgVG" id="7cS5T_tM_8S" role="lGtFl">
              <node concept="3NFfHV" id="7cS5T_tM_8T" role="3NFExx">
                <node concept="3clFbS" id="7cS5T_tM_8U" role="2VODD2">
                  <node concept="3clFbF" id="7cS5T_tM_8V" role="3cqZAp">
                    <node concept="2OqwBi" id="7cS5T_tM_8W" role="3clFbG">
                      <node concept="2OqwBi" id="7cS5T_tM_8X" role="2Oq$k0">
                        <node concept="1iwH7S" id="7cS5T_tM_8Y" role="2Oq$k0" />
                        <node concept="1psM6Z" id="7cS5T_tM_8Z" role="2OqNvi">
                          <ref role="1psM6Y" node="5$bRKnREkLJ" resolve="attr" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="7cS5T_tM_90" role="2OqNvi">
                        <ref role="37wK5l" to="us1s:29R9$zZWsRH" resolve="getContextType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="7cS5T_tMAOS" role="3PaCim">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <node concept="29HgVG" id="7cS5T_tMAOT" role="lGtFl">
              <node concept="3NFfHV" id="7cS5T_tMAOU" role="3NFExx">
                <node concept="3clFbS" id="7cS5T_tMAOV" role="2VODD2">
                  <node concept="3clFbF" id="7cS5T_tMAOW" role="3cqZAp">
                    <node concept="2OqwBi" id="7cS5T_tMAOX" role="3clFbG">
                      <node concept="2OqwBi" id="7cS5T_tMAOY" role="2Oq$k0">
                        <node concept="2OqwBi" id="7cS5T_tMAOZ" role="2Oq$k0">
                          <node concept="1iwH7S" id="7cS5T_tMAP0" role="2Oq$k0" />
                          <node concept="1psM6Z" id="7cS5T_tMAP1" role="2OqNvi">
                            <ref role="1psM6Y" node="5$bRKnREkLJ" resolve="attr" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7cS5T_tMAP2" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="7cS5T_tMAP3" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:hEwIzNC" resolve="getBoxedType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="oVVxO7w_vo" role="30HLyM">
        <node concept="3clFbS" id="oVVxO7w_vp" role="2VODD2">
          <node concept="3clFbF" id="oVVxO7w_vq" role="3cqZAp">
            <node concept="2OqwBi" id="oVVxO7w_vr" role="3clFbG">
              <node concept="2OqwBi" id="oVVxO7w_vs" role="2Oq$k0">
                <node concept="30H73N" id="oVVxO7w_vt" role="2Oq$k0" />
                <node concept="3TrEf2" id="oVVxO7w_vu" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                </node>
              </node>
              <node concept="1mIQ4w" id="oVVxO7w_vv" role="2OqNvi">
                <node concept="chp4Y" id="oVVxO7wISz" role="cj9EA">
                  <ref role="cht4Q" to="pwn9:2icq$nJCmZ2" resolve="DclareAttributeOperation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="6di_o0Bm381" role="3acgRq">
      <ref role="30HIoZ" to="tp25:hJB5_oW" resolve="NodeRefExpression" />
      <node concept="gft3U" id="6di_o0Bm382" role="1lVwrX">
        <node concept="2YIFZM" id="6di_o0BpHwN" role="gfFT$">
          <ref role="37wK5l" to="u4ym:6di_o0Bppmx" resolve="read" />
          <ref role="1Pybhc" to="u4ym:30fQumnG8Au" resolve="DclareUtil" />
          <node concept="1bVj0M" id="6di_o0BpHwO" role="37wK5m">
            <node concept="3clFbS" id="6di_o0BpHwP" role="1bW5cS">
              <node concept="3clFbF" id="6di_o0BpHwQ" role="3cqZAp">
                <node concept="2YIFZM" id="6di_o0BpHwR" role="3clFbG">
                  <ref role="37wK5l" to="i8bi:5IkW5anFez3" resolve="getNode" />
                  <ref role="1Pybhc" to="i8bi:5IkW5anFcyt" resolve="SNodeOperations" />
                  <node concept="Xl_RD" id="6di_o0BpHwS" role="37wK5m">
                    <property role="Xl_RC" value="modelUID" />
                    <node concept="17Uvod" id="6di_o0BpHwT" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="6di_o0BpHwU" role="3zH0cK">
                        <node concept="3clFbS" id="6di_o0BpHwV" role="2VODD2">
                          <node concept="3clFbJ" id="6di_o0BpHwW" role="3cqZAp">
                            <node concept="3clFbS" id="6di_o0BpHwX" role="3clFbx">
                              <node concept="3cpWs6" id="6di_o0BpHwY" role="3cqZAp">
                                <node concept="2OqwBi" id="6di_o0BpHwZ" role="3cqZAk">
                                  <node concept="2OqwBi" id="6di_o0BpHx0" role="2Oq$k0">
                                    <node concept="liA8E" id="6di_o0BpHx1" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                    </node>
                                    <node concept="2JrnkZ" id="6di_o0BpHx2" role="2Oq$k0">
                                      <node concept="2OqwBi" id="6di_o0BpHx3" role="2JrQYb">
                                        <node concept="2OqwBi" id="6di_o0BpHx4" role="2Oq$k0">
                                          <node concept="30H73N" id="6di_o0BpHx5" role="2Oq$k0" />
                                          <node concept="2qgKlT" id="6di_o0BpHx6" role="2OqNvi">
                                            <ref role="37wK5l" to="tpeu:36vPRrqnscn" resolve="getTargetNode" />
                                          </node>
                                        </node>
                                        <node concept="I4A8Y" id="6di_o0BpHx7" role="2OqNvi" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="6di_o0BpHx8" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3y3z36" id="6di_o0BpHx9" role="3clFbw">
                              <node concept="2OqwBi" id="6di_o0BpHxa" role="3uHU7w">
                                <node concept="30H73N" id="6di_o0BpHxb" role="2Oq$k0" />
                                <node concept="I4A8Y" id="6di_o0BpHxc" role="2OqNvi" />
                              </node>
                              <node concept="2OqwBi" id="6di_o0BpHxd" role="3uHU7B">
                                <node concept="2OqwBi" id="6di_o0BpHxe" role="2Oq$k0">
                                  <node concept="30H73N" id="6di_o0BpHxf" role="2Oq$k0" />
                                  <node concept="2qgKlT" id="6di_o0BpHxg" role="2OqNvi">
                                    <ref role="37wK5l" to="tpeu:36vPRrqnscn" resolve="getTargetNode" />
                                  </node>
                                </node>
                                <node concept="I4A8Y" id="6di_o0BpHxh" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="9aQIb" id="6di_o0BpHxi" role="9aQIa">
                              <node concept="3clFbS" id="6di_o0BpHxj" role="9aQI4">
                                <node concept="3cpWs6" id="6di_o0BpHxk" role="3cqZAp">
                                  <node concept="2OqwBi" id="6di_o0BpHxl" role="3cqZAk">
                                    <node concept="2OqwBi" id="6di_o0BpHxm" role="2Oq$k0">
                                      <node concept="liA8E" id="6di_o0BpHxn" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                      </node>
                                      <node concept="2JrnkZ" id="6di_o0BpHxo" role="2Oq$k0">
                                        <node concept="2OqwBi" id="6di_o0BpHxp" role="2JrQYb">
                                          <node concept="1iwH7S" id="6di_o0BpHxq" role="2Oq$k0" />
                                          <node concept="1st3f0" id="6di_o0BpHxr" role="2OqNvi" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="6di_o0BpHxs" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
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
                  <node concept="Xl_RD" id="6di_o0BpHxt" role="37wK5m">
                    <property role="Xl_RC" value="nodeUID" />
                    <node concept="17Uvod" id="6di_o0BpHxu" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="6di_o0BpHxv" role="3zH0cK">
                        <node concept="3clFbS" id="6di_o0BpHxw" role="2VODD2">
                          <node concept="3clFbJ" id="6di_o0BpHxx" role="3cqZAp">
                            <node concept="3clFbS" id="6di_o0BpHxy" role="3clFbx">
                              <node concept="3cpWs6" id="6di_o0BpHxz" role="3cqZAp">
                                <node concept="2OqwBi" id="6di_o0BpHx$" role="3cqZAk">
                                  <node concept="2OqwBi" id="6di_o0BpHx_" role="2Oq$k0">
                                    <node concept="liA8E" id="6di_o0BpHxA" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                    <node concept="2JrnkZ" id="6di_o0BpHxB" role="2Oq$k0">
                                      <node concept="2OqwBi" id="6di_o0BpHxC" role="2JrQYb">
                                        <node concept="30H73N" id="6di_o0BpHxD" role="2Oq$k0" />
                                        <node concept="2qgKlT" id="6di_o0BpHxE" role="2OqNvi">
                                          <ref role="37wK5l" to="tpeu:36vPRrqnscn" resolve="getTargetNode" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="6di_o0BpHxF" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3y3z36" id="6di_o0BpHxG" role="3clFbw">
                              <node concept="2OqwBi" id="6di_o0BpHxH" role="3uHU7w">
                                <node concept="30H73N" id="6di_o0BpHxI" role="2Oq$k0" />
                                <node concept="I4A8Y" id="6di_o0BpHxJ" role="2OqNvi" />
                              </node>
                              <node concept="2OqwBi" id="6di_o0BpHxK" role="3uHU7B">
                                <node concept="2OqwBi" id="6di_o0BpHxL" role="2Oq$k0">
                                  <node concept="30H73N" id="6di_o0BpHxM" role="2Oq$k0" />
                                  <node concept="2qgKlT" id="6di_o0BpHxN" role="2OqNvi">
                                    <ref role="37wK5l" to="tpeu:36vPRrqnscn" resolve="getTargetNode" />
                                  </node>
                                </node>
                                <node concept="I4A8Y" id="6di_o0BpHxO" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="9aQIb" id="6di_o0BpHxP" role="9aQIa">
                              <node concept="3clFbS" id="6di_o0BpHxQ" role="9aQI4">
                                <node concept="3cpWs6" id="6di_o0BpHxR" role="3cqZAp">
                                  <node concept="2OqwBi" id="6di_o0BpHxS" role="3cqZAk">
                                    <node concept="2OqwBi" id="6di_o0BpHxT" role="2Oq$k0">
                                      <node concept="2JrnkZ" id="6di_o0BpHxU" role="2Oq$k0">
                                        <node concept="2OqwBi" id="6di_o0BpHxV" role="2JrQYb">
                                          <node concept="1iwH7S" id="6di_o0BpHxW" role="2Oq$k0" />
                                          <node concept="12$id9" id="6di_o0BpHxX" role="2OqNvi">
                                            <node concept="2OqwBi" id="6di_o0BpHxY" role="12$y8L">
                                              <node concept="30H73N" id="6di_o0BpHxZ" role="2Oq$k0" />
                                              <node concept="2qgKlT" id="6di_o0BpHy0" role="2OqNvi">
                                                <ref role="37wK5l" to="tpeu:36vPRrqnscn" resolve="getTargetNode" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="6di_o0BpHy1" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="6di_o0BpHy2" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
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
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

