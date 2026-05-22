<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:35eece78-0a77-4f6d-9311-e4198940cf3a(DclareGui.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="c32b788d-8e4b-4023-97f5-3e90d04ed77b" name="DclareMPS" version="5" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="q3xn" ref="r:3ec44d77-eb4f-4600-add0-5e671af45a7b(DclareGui.rules)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="53d4" ref="r:0049729d-ba70-461b-8d8a-b0755e3bfabb(DclareGui.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" implicit="true" />
    <import index="us1s" ref="r:e7d7a1fa-fb58-4cf6-bc1d-e5ed722e0c61(DclareMPS.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="c32b788d-8e4b-4023-97f5-3e90d04ed77b" name="DclareMPS">
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
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1176109685393" name="jetbrains.mps.lang.smodel.structure.Model_RootsIncludingImportedOperation" flags="nn" index="3lApI0">
        <child id="6750920497477143611" name="conceptArgument" index="3MHPDn" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
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
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="13h7C7" id="4OSO3OxwkED">
    <property role="3GE5qa" value="diagrams" />
    <ref role="13h7C2" to="53d4:3psr82$eZ54" resolve="IDiagram" />
    <node concept="13i0hz" id="4OSO3OxwkGs" role="13h7CS">
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="5$hAhBuaDa6" role="3clF46">
        <property role="TrG5h" value="xy" />
        <node concept="1ajhzC" id="5$hAhBuaDkb" role="1tU5fm">
          <node concept="1LlUBW" id="46_tf6FEf8g" role="1ajw0F">
            <node concept="10Oyi0" id="46_tf6FEgyD" role="1Lm7xW" />
            <node concept="10Oyi0" id="46_tf6FEhZM" role="1Lm7xW" />
          </node>
          <node concept="1LlUBW" id="46_tf6FEkkG" role="1ajl9A">
            <node concept="10Oyi0" id="46_tf6FElHc" role="1Lm7xW" />
            <node concept="10Oyi0" id="46_tf6FEnj$" role="1Lm7xW" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4OSO3OxwkGt" role="1B3o_S" />
      <node concept="3cqZAl" id="4OSO3OxwkGO" role="3clF45" />
      <node concept="3clFbS" id="4OSO3OxwkGv" role="3clF47">
        <node concept="2Gpval" id="4OSO3OxwkJm" role="3cqZAp">
          <node concept="2GrKxI" id="4OSO3OxwkJn" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
          <node concept="2OqwBi" id="4OSO3OxwkTZ" role="2GsD0m">
            <node concept="13iPFW" id="4OSO3OxwkJO" role="2Oq$k0" />
            <node concept="3Tsc0h" id="4OSO3Oxwl2w" role="2OqNvi">
              <ref role="3TtcxE" to="53d4:31sbKqyPLDh" resolve="nodes" />
            </node>
          </node>
          <node concept="3clFbS" id="4OSO3OxwkJp" role="2LFqv$">
            <node concept="3clFbF" id="4OSO3Oxwl7n" role="3cqZAp">
              <node concept="2OqwBi" id="4OSO3Oxwlhc" role="3clFbG">
                <node concept="2GrUjf" id="4OSO3Oxwl7m" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4OSO3OxwkJn" resolve="node" />
                </node>
                <node concept="2qgKlT" id="4OSO3OxwtgF" role="2OqNvi">
                  <ref role="37wK5l" node="4OSO3OxwlqN" resolve="transform" />
                  <node concept="37vLTw" id="4OSO3Oxwtma" role="37wK5m">
                    <ref role="3cqZAo" node="5$hAhBuaDa6" resolve="xy" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4OSO3OxwkEE" role="13h7CW">
      <node concept="3clFbS" id="4OSO3OxwkEF" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4OSO3Oxwlqw">
    <property role="3GE5qa" value="diagrams" />
    <ref role="13h7C2" to="53d4:31sbKqyPLDe" resolve="NodeLayout" />
    <node concept="13i0hz" id="4OSO3OxwlqN" role="13h7CS">
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="46_tf6FEoGo" role="3clF46">
        <property role="TrG5h" value="xy" />
        <node concept="1ajhzC" id="46_tf6FEoGp" role="1tU5fm">
          <node concept="1LlUBW" id="46_tf6FEoGq" role="1ajw0F">
            <node concept="10Oyi0" id="46_tf6FEoGr" role="1Lm7xW" />
            <node concept="10Oyi0" id="46_tf6FEoGs" role="1Lm7xW" />
          </node>
          <node concept="1LlUBW" id="46_tf6FEoGt" role="1ajl9A">
            <node concept="10Oyi0" id="46_tf6FEoGu" role="1Lm7xW" />
            <node concept="10Oyi0" id="46_tf6FEoGv" role="1Lm7xW" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4OSO3OxwlqQ" role="1B3o_S" />
      <node concept="3cqZAl" id="4OSO3OxwlqR" role="3clF45" />
      <node concept="3clFbS" id="4OSO3OxwlqS" role="3clF47">
        <node concept="3cpWs8" id="46_tf6FE6yB" role="3cqZAp">
          <node concept="3cpWsn" id="46_tf6FE6yE" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2OqwBi" id="46_tf6FE7Kc" role="33vP2m">
              <node concept="37vLTw" id="46_tf6FE7tt" role="2Oq$k0">
                <ref role="3cqZAo" node="46_tf6FEoGo" resolve="xy" />
              </node>
              <node concept="1Bd96e" id="46_tf6FE87i" role="2OqNvi">
                <node concept="1Ls8ON" id="46_tf6FEpDD" role="1BdPVh">
                  <node concept="2OqwBi" id="46_tf6FEr$_" role="1Lso8e">
                    <node concept="13iPFW" id="46_tf6FEqMZ" role="2Oq$k0" />
                    <node concept="3TrcHB" id="46_tf6FEsgl" role="2OqNvi">
                      <ref role="3TsBF5" to="53d4:31sbKqyPLDJ" resolve="x" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="46_tf6FEu5a" role="1Lso8e">
                    <node concept="13iPFW" id="46_tf6FEtrp" role="2Oq$k0" />
                    <node concept="3TrcHB" id="46_tf6FEuFu" role="2OqNvi">
                      <ref role="3TsBF5" to="53d4:31sbKqyPLDL" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1LlUBW" id="46_tf6FEvW5" role="1tU5fm">
              <node concept="10Oyi0" id="46_tf6FExml" role="1Lm7xW" />
              <node concept="10Oyi0" id="46_tf6FEy_u" role="1Lm7xW" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5$hAhBuaKUp" role="3cqZAp">
          <node concept="37vLTI" id="5$hAhBuaKUq" role="3clFbG">
            <node concept="2OqwBi" id="5$hAhBuaKUr" role="37vLTJ">
              <node concept="13iPFW" id="5$hAhBuaKUs" role="2Oq$k0" />
              <node concept="3TrcHB" id="5$hAhBuaKUt" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPLDJ" resolve="x" />
              </node>
            </node>
            <node concept="1LFfDK" id="46_tf6FECdK" role="37vLTx">
              <node concept="3cmrfG" id="46_tf6FECP_" role="1LF_Uc">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="46_tf6FE_Le" role="1LFl5Q">
                <ref role="3cqZAo" node="46_tf6FE6yE" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5$hAhBuaKU$" role="3cqZAp">
          <node concept="37vLTI" id="5$hAhBuaKU_" role="3clFbG">
            <node concept="2OqwBi" id="5$hAhBuaKUA" role="37vLTJ">
              <node concept="13iPFW" id="5$hAhBuaKUB" role="2Oq$k0" />
              <node concept="3TrcHB" id="5$hAhBuaKUC" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPLDL" resolve="y" />
              </node>
            </node>
            <node concept="1LFfDK" id="46_tf6FEEw$" role="37vLTx">
              <node concept="3cmrfG" id="46_tf6FEERJ" role="1LF_Uc">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="46_tf6FEDTp" role="1LFl5Q">
                <ref role="3cqZAo" node="46_tf6FE6yE" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4OSO3OxwlqT" role="3cqZAp">
          <node concept="2GrKxI" id="4OSO3OxwlqU" role="2Gsz3X">
            <property role="TrG5h" value="edge" />
          </node>
          <node concept="2OqwBi" id="4OSO3OxwlqV" role="2GsD0m">
            <node concept="13iPFW" id="4OSO3OxwlqW" role="2Oq$k0" />
            <node concept="3Tsc0h" id="4OSO3OxwlqX" role="2OqNvi">
              <ref role="3TtcxE" to="53d4:31sbKqyPLEi" resolve="edges" />
            </node>
          </node>
          <node concept="3clFbS" id="4OSO3OxwlqY" role="2LFqv$">
            <node concept="3clFbF" id="4OSO3OxwlqZ" role="3cqZAp">
              <node concept="2OqwBi" id="4OSO3Oxwlr0" role="3clFbG">
                <node concept="2GrUjf" id="4OSO3Oxwlr1" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4OSO3OxwlqU" resolve="edge" />
                </node>
                <node concept="2qgKlT" id="4OSO3OxwrwX" role="2OqNvi">
                  <ref role="37wK5l" node="4OSO3OxwlAu" resolve="transform" />
                  <node concept="37vLTw" id="5$hAhBtFZga" role="37wK5m">
                    <ref role="3cqZAo" node="46_tf6FEoGo" resolve="xy" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4OSO3Oxwlqx" role="13h7CW">
      <node concept="3clFbS" id="4OSO3Oxwlqy" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4OSO3OxwlAb">
    <property role="3GE5qa" value="diagrams" />
    <ref role="13h7C2" to="53d4:31sbKqyPLDj" resolve="EdgeLayout" />
    <node concept="13i0hz" id="4OSO3OxwlAu" role="13h7CS">
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="46_tf6FEGT2" role="3clF46">
        <property role="TrG5h" value="xy" />
        <node concept="1ajhzC" id="46_tf6FEGT3" role="1tU5fm">
          <node concept="1LlUBW" id="46_tf6FEGT4" role="1ajw0F">
            <node concept="10Oyi0" id="46_tf6FEGT5" role="1Lm7xW" />
            <node concept="10Oyi0" id="46_tf6FEGT6" role="1Lm7xW" />
          </node>
          <node concept="1LlUBW" id="46_tf6FEGT7" role="1ajl9A">
            <node concept="10Oyi0" id="46_tf6FEGT8" role="1Lm7xW" />
            <node concept="10Oyi0" id="46_tf6FEGT9" role="1Lm7xW" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4OSO3OxwlAx" role="1B3o_S" />
      <node concept="3cqZAl" id="4OSO3OxwlAy" role="3clF45" />
      <node concept="3clFbS" id="4OSO3OxwlAz" role="3clF47">
        <node concept="2Gpval" id="4OSO3OxwlA$" role="3cqZAp">
          <node concept="2GrKxI" id="4OSO3OxwlA_" role="2Gsz3X">
            <property role="TrG5h" value="joint" />
          </node>
          <node concept="2OqwBi" id="4OSO3OxwlAA" role="2GsD0m">
            <node concept="13iPFW" id="4OSO3OxwlAB" role="2Oq$k0" />
            <node concept="3Tsc0h" id="4OSO3OxwlAC" role="2OqNvi">
              <ref role="3TtcxE" to="53d4:31sbKqyPMf4" resolve="joints" />
            </node>
          </node>
          <node concept="3clFbS" id="4OSO3OxwlAD" role="2LFqv$">
            <node concept="3clFbF" id="4OSO3OxwlAE" role="3cqZAp">
              <node concept="2OqwBi" id="4OSO3OxwlAF" role="3clFbG">
                <node concept="2GrUjf" id="4OSO3OxwlAG" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4OSO3OxwlA_" resolve="joint" />
                </node>
                <node concept="2qgKlT" id="4OSO3OxwqTQ" role="2OqNvi">
                  <ref role="37wK5l" node="4OSO3OxwlP0" resolve="transform" />
                  <node concept="37vLTw" id="5$hAhBtG0Jz" role="37wK5m">
                    <ref role="3cqZAo" node="46_tf6FEGT2" resolve="xy" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4OSO3OxwlAc" role="13h7CW">
      <node concept="3clFbS" id="4OSO3OxwlAd" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4OSO3OxwlOH">
    <property role="3GE5qa" value="diagrams" />
    <ref role="13h7C2" to="53d4:31sbKqyPLDm" resolve="JointLayout" />
    <node concept="13i0hz" id="4OSO3OxwlP0" role="13h7CS">
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="46_tf6FEHJG" role="3clF46">
        <property role="TrG5h" value="xy" />
        <node concept="1ajhzC" id="46_tf6FEHJH" role="1tU5fm">
          <node concept="1LlUBW" id="46_tf6FEHJI" role="1ajw0F">
            <node concept="10Oyi0" id="46_tf6FEHJJ" role="1Lm7xW" />
            <node concept="10Oyi0" id="46_tf6FEHJK" role="1Lm7xW" />
          </node>
          <node concept="1LlUBW" id="46_tf6FEHJL" role="1ajl9A">
            <node concept="10Oyi0" id="46_tf6FEHJM" role="1Lm7xW" />
            <node concept="10Oyi0" id="46_tf6FEHJN" role="1Lm7xW" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4OSO3OxwlP3" role="1B3o_S" />
      <node concept="3cqZAl" id="4OSO3OxwlP4" role="3clF45" />
      <node concept="3clFbS" id="4OSO3OxwlP5" role="3clF47">
        <node concept="3cpWs8" id="46_tf6FEI5I" role="3cqZAp">
          <node concept="3cpWsn" id="46_tf6FEI5J" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2OqwBi" id="46_tf6FEI5K" role="33vP2m">
              <node concept="37vLTw" id="46_tf6FEI5L" role="2Oq$k0">
                <ref role="3cqZAo" node="46_tf6FEHJG" resolve="xy" />
              </node>
              <node concept="1Bd96e" id="46_tf6FEI5M" role="2OqNvi">
                <node concept="1Ls8ON" id="46_tf6FEI5N" role="1BdPVh">
                  <node concept="2OqwBi" id="46_tf6FEI5O" role="1Lso8e">
                    <node concept="13iPFW" id="46_tf6FEI5P" role="2Oq$k0" />
                    <node concept="3TrcHB" id="46_tf6FEI5Q" role="2OqNvi">
                      <ref role="3TsBF5" to="53d4:31sbKqyPMf7" resolve="x" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="46_tf6FEI5R" role="1Lso8e">
                    <node concept="13iPFW" id="46_tf6FEI5S" role="2Oq$k0" />
                    <node concept="3TrcHB" id="46_tf6FEI5T" role="2OqNvi">
                      <ref role="3TsBF5" to="53d4:31sbKqyPMf9" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1LlUBW" id="46_tf6FEI5U" role="1tU5fm">
              <node concept="10Oyi0" id="46_tf6FEI5V" role="1Lm7xW" />
              <node concept="10Oyi0" id="46_tf6FEI5W" role="1Lm7xW" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="46_tf6FEI5X" role="3cqZAp">
          <node concept="37vLTI" id="46_tf6FEI5Y" role="3clFbG">
            <node concept="2OqwBi" id="46_tf6FEI5Z" role="37vLTJ">
              <node concept="13iPFW" id="46_tf6FEI60" role="2Oq$k0" />
              <node concept="3TrcHB" id="46_tf6FEI61" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPMf7" resolve="x" />
              </node>
            </node>
            <node concept="1LFfDK" id="46_tf6FEI62" role="37vLTx">
              <node concept="3cmrfG" id="46_tf6FEI63" role="1LF_Uc">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="46_tf6FEI64" role="1LFl5Q">
                <ref role="3cqZAo" node="46_tf6FEI5J" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="46_tf6FEI65" role="3cqZAp">
          <node concept="37vLTI" id="46_tf6FEI66" role="3clFbG">
            <node concept="2OqwBi" id="46_tf6FEI67" role="37vLTJ">
              <node concept="13iPFW" id="46_tf6FEI68" role="2Oq$k0" />
              <node concept="3TrcHB" id="46_tf6FEI69" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPMf9" resolve="y" />
              </node>
            </node>
            <node concept="1LFfDK" id="46_tf6FEI6a" role="37vLTx">
              <node concept="3cmrfG" id="46_tf6FEI6b" role="1LF_Uc">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="46_tf6FEI6c" role="1LFl5Q">
                <ref role="3cqZAo" node="46_tf6FEI5J" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4OSO3OxwlOI" role="13h7CW">
      <node concept="3clFbS" id="4OSO3OxwlOJ" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5acIJhOumk_">
    <property role="3GE5qa" value="rules_diagram" />
    <ref role="13h7C2" to="53d4:E9JPNpn5VC" resolve="RulesDiagram" />
    <node concept="13i0hz" id="5acIJhOumkY" role="13h7CS">
      <property role="TrG5h" value="variables" />
      <node concept="3Tm1VV" id="5acIJhOumkZ" role="1B3o_S" />
      <node concept="2I9FWS" id="5acIJhOumlt" role="3clF45">
        <ref role="2I9WkF" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
      <node concept="3clFbS" id="5acIJhOuml1" role="3clF47">
        <node concept="3cpWs8" id="7JbvydaNP8M" role="3cqZAp">
          <node concept="3cpWsn" id="7JbvydaNP8N" role="3cpWs9">
            <property role="TrG5h" value="isActive" />
            <node concept="3uibUv" id="7JbvydaNP4M" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
            <node concept="2OqwBi" id="7JbvydaNP8O" role="33vP2m">
              <node concept="13iPFW" id="7JbvydaNP8P" role="2Oq$k0" />
              <node concept="32jkxy" id="7JbvydaNP8Q" role="2OqNvi">
                <ref role="3cqZAo" to="q3xn:7Jbvyda$n7B" resolve="isActive" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7JbvydaDbTr" role="3cqZAp">
          <node concept="3clFbS" id="7JbvydaDbTt" role="3clFbx">
            <node concept="3cpWs6" id="7JbvydaDeds" role="3cqZAp">
              <node concept="2OqwBi" id="7JbvydaDev5" role="3cqZAk">
                <node concept="13iPFW" id="7JbvydaDev6" role="2Oq$k0" />
                <node concept="32jkxy" id="7JbvydaDev7" role="2OqNvi">
                  <ref role="3cqZAo" to="q3xn:5acIJhOupo3" resolve="variables" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7JbvydaNVYl" role="3clFbw">
            <node concept="37vLTw" id="7JbvydaNWxt" role="3uHU7w">
              <ref role="3cqZAo" node="7JbvydaNP8N" resolve="isActive" />
            </node>
            <node concept="3y3z36" id="7JbvydaNTl6" role="3uHU7B">
              <node concept="37vLTw" id="7JbvydaNP8R" role="3uHU7B">
                <ref role="3cqZAo" node="7JbvydaNP8N" resolve="isActive" />
              </node>
              <node concept="10Nm6u" id="7JbvydaNVFQ" role="3uHU7w" />
            </node>
          </node>
          <node concept="9aQIb" id="7JbvydaDi0t" role="9aQIa">
            <node concept="3clFbS" id="7JbvydaDi0u" role="9aQI4">
              <node concept="3cpWs8" id="7Jbvyda_73y" role="3cqZAp">
                <node concept="3cpWsn" id="7Jbvyda_73z" role="3cpWs9">
                  <property role="TrG5h" value="m" />
                  <node concept="H_c77" id="7Jbvyda_6ZW" role="1tU5fm" />
                  <node concept="2OqwBi" id="7Jbvyda_73$" role="33vP2m">
                    <node concept="13iPFW" id="7Jbvyda_73_" role="2Oq$k0" />
                    <node concept="I4A8Y" id="7Jbvyda_73A" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7Jbvyda_GZH" role="3cqZAp">
                <node concept="3cpWsn" id="7Jbvyda_GZI" role="3cpWs9">
                  <property role="TrG5h" value="concepts" />
                  <node concept="2I9FWS" id="7Jbvyda_GUN" role="1tU5fm">
                    <ref role="2I9WkF" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="7Jbvyda_GZJ" role="33vP2m">
                    <node concept="37vLTw" id="7Jbvyda_GZK" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Jbvyda_73z" resolve="m" />
                    </node>
                    <node concept="3lApI0" id="7Jbvyda_GZL" role="2OqNvi">
                      <node concept="chp4Y" id="7Jbvyda_GZM" role="3MHPDn">
                        <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7Jbvyda_PlZ" role="3cqZAp">
                <node concept="3cpWsn" id="7Jbvyda_Pm0" role="3cpWs9">
                  <property role="TrG5h" value="attributeOwners" />
                  <node concept="2I9FWS" id="7Jbvyda_Pm1" role="1tU5fm">
                    <ref role="2I9WkF" to="7ggn:4$bpWrNHVkZ" resolve="IAttributeOwner" />
                  </node>
                  <node concept="2OqwBi" id="7Jbvyda_Pm2" role="33vP2m">
                    <node concept="37vLTw" id="7Jbvyda_Pm3" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Jbvyda_73z" resolve="m" />
                    </node>
                    <node concept="3lApI0" id="7Jbvyda_Pm4" role="2OqNvi">
                      <node concept="chp4Y" id="7Jbvyda_Pm5" role="3MHPDn">
                        <ref role="cht4Q" to="7ggn:4$bpWrNHVkZ" resolve="IAttributeOwner" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7JbvydaDkbh" role="3cqZAp">
                <node concept="2OqwBi" id="7JbvydaD1RO" role="3cqZAk">
                  <node concept="2OqwBi" id="7JbvydaCjCg" role="2Oq$k0">
                    <node concept="2OqwBi" id="7JbvydaAZwH" role="2Oq$k0">
                      <node concept="2OqwBi" id="7Jbvyda_fsG" role="2Oq$k0">
                        <node concept="37vLTw" id="7Jbvyda_GZN" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Jbvyda_GZI" resolve="concepts" />
                        </node>
                        <node concept="13MTOL" id="7Jbvyda__WA" role="2OqNvi">
                          <ref role="13MTZf" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                        </node>
                      </node>
                      <node concept="3QWeyG" id="7JbvydaB22G" role="2OqNvi">
                        <node concept="2OqwBi" id="7JbvydaBgRU" role="576Qk">
                          <node concept="37vLTw" id="7JbvydaB2aA" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Jbvyda_GZI" resolve="concepts" />
                          </node>
                          <node concept="13MTOL" id="7JbvydaBBlk" role="2OqNvi">
                            <ref role="13MTZf" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3QWeyG" id="7JbvydaCCNF" role="2OqNvi">
                      <node concept="2OqwBi" id="7JbvydaCHJF" role="576Qk">
                        <node concept="37vLTw" id="7JbvydaCD5d" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Jbvyda_Pm0" resolve="attributeOwners" />
                        </node>
                        <node concept="3goQfb" id="7JbvydaCV6M" role="2OqNvi">
                          <node concept="1bVj0M" id="7JbvydaCV6O" role="23t8la">
                            <node concept="3clFbS" id="7JbvydaCV6P" role="1bW5cS">
                              <node concept="3clFbF" id="7JbvydaCWvq" role="3cqZAp">
                                <node concept="2OqwBi" id="7JbvydaCWSi" role="3clFbG">
                                  <node concept="37vLTw" id="7JbvydaCWvp" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7JbvydaCV6Q" resolve="ao" />
                                  </node>
                                  <node concept="2qgKlT" id="7JbvydaCZSh" role="2OqNvi">
                                    <ref role="37wK5l" to="us1s:4$bpWrNHVl_" resolve="attributes" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="7JbvydaCV6Q" role="1bW2Oz">
                              <property role="TrG5h" value="ao" />
                              <node concept="2jxLKc" id="7JbvydaCV6R" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="7JbvydaDaYG" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="5acIJhOumkA" role="13h7CW">
      <node concept="3clFbS" id="5acIJhOumkB" role="2VODD2" />
    </node>
  </node>
</model>

