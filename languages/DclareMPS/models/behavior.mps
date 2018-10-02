<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e7d7a1fa-fb58-4cf6-bc1d-e5ed722e0c61(DclareMPS.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="t4tl" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.dclare.mps(DclareMPSRuntime/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
        <property id="1225194472833" name="isPrivate" index="13i0is" />
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
    </language>
  </registry>
  <node concept="13h7C7" id="4SfaQIrYtVV">
    <ref role="13h7C2" to="7ggn:4SfaQIrYs9U" resolve="RuleSet" />
    <node concept="13hLZK" id="4SfaQIrYtVW" role="13h7CW">
      <node concept="3clFbS" id="4SfaQIrYtVX" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7UtH1mcE10l" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0is" value="false" />
      <property role="TrG5h" value="getMembers" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:hEwJjl2" resolve="getMembers" />
      <node concept="3Tm1VV" id="7UtH1mcE10q" role="1B3o_S" />
      <node concept="3clFbS" id="7UtH1mcE10r" role="3clF47">
        <node concept="3clFbF" id="7UtH1mcE10E" role="3cqZAp">
          <node concept="2OqwBi" id="7UtH1mcE1b6" role="3clFbG">
            <node concept="13iPFW" id="7UtH1mcE10D" role="2Oq$k0" />
            <node concept="3Tsc0h" id="7UtH1mcE1l6" role="2OqNvi">
              <ref role="3TtcxE" to="7ggn:1Sb3mAPvInz" resolve="rules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="7UtH1mcE10s" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1Sb3mAPvyrM">
    <ref role="13h7C2" to="7ggn:1Sb3mAPvh8b" resolve="Rule" />
    <node concept="13hLZK" id="1Sb3mAPwFiC" role="13h7CW">
      <node concept="3clFbS" id="1Sb3mAPwFiD" role="2VODD2">
        <node concept="3clFbF" id="7UtH1mcF4ER" role="3cqZAp">
          <node concept="37vLTI" id="7UtH1mcF5SS" role="3clFbG">
            <node concept="2ShNRf" id="7UtH1mcF5Zw" role="37vLTx">
              <node concept="3zrR0B" id="7UtH1mcF5X$" role="2ShVmc">
                <node concept="3Tqbb2" id="7UtH1mcF5X_" role="3zrR0E">
                  <ref role="ehGHo" to="tpee:fzcqZ_H" resolve="VoidType" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7UtH1mcF4Yb" role="37vLTJ">
              <node concept="13iPFW" id="7UtH1mcF4EP" role="2Oq$k0" />
              <node concept="3TrEf2" id="7UtH1mcF5x1" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="30fQumnG8Au">
    <property role="TrG5h" value="DclareUtil" />
    <node concept="2tJIrI" id="5hwIp2JO1uj" role="jymVt" />
    <node concept="2YIFZL" id="30fQumnGtWz" role="jymVt">
      <property role="TrG5h" value="map" />
      <node concept="37vLTG" id="30fQumnGtW$" role="3clF46">
        <property role="TrG5h" value="ist" />
        <node concept="A3Dl8" id="6GakswJPK1d" role="1tU5fm">
          <node concept="16syzq" id="6GakswJPK1f" role="A3Ik2">
            <ref role="16sUi3" node="30fQumnGtWU" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="30fQumnGtWB" role="3clF46">
        <property role="TrG5h" value="soll" />
        <node concept="A3Dl8" id="6GakswJPK82" role="1tU5fm">
          <node concept="16syzq" id="6GakswJPK84" role="A3Ik2">
            <ref role="16sUi3" node="30fQumnGtWU" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="30fQumnGtWJ" role="3clF46">
        <property role="TrG5h" value="add" />
        <node concept="1ajhzC" id="30fQumnGtWK" role="1tU5fm">
          <node concept="3cqZAl" id="6GakswJPxpl" role="1ajl9A" />
          <node concept="16syzq" id="6GakswJPxor" role="1ajw0F">
            <ref role="16sUi3" node="30fQumnGtWU" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="30fQumnGufA" role="3clF46">
        <property role="TrG5h" value="remove" />
        <node concept="1ajhzC" id="30fQumnGugW" role="1tU5fm">
          <node concept="3cqZAl" id="30fQumnGuhX" role="1ajl9A" />
          <node concept="16syzq" id="30fQumnGuiV" role="1ajw0F">
            <ref role="16sUi3" node="30fQumnGtWU" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="30fQumnGtWP" role="1B3o_S" />
      <node concept="3clFbS" id="30fQumnGtWQ" role="3clF47">
        <node concept="3clFbF" id="6GakswJPSgN" role="3cqZAp">
          <node concept="37vLTI" id="6GakswJPSFo" role="3clFbG">
            <node concept="2OqwBi" id="6GakswJPSTJ" role="37vLTx">
              <node concept="37vLTw" id="6GakswJPSHq" role="2Oq$k0">
                <ref role="3cqZAo" node="30fQumnGtW$" resolve="ist" />
              </node>
              <node concept="1KnU$U" id="6GakswJPT47" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="6GakswJPSgL" role="37vLTJ">
              <ref role="3cqZAo" node="30fQumnGtW$" resolve="ist" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6GakswJPT6F" role="3cqZAp">
          <node concept="37vLTI" id="6GakswJPTjg" role="3clFbG">
            <node concept="2OqwBi" id="6GakswJPTw9" role="37vLTx">
              <node concept="37vLTw" id="6GakswJPTkE" role="2Oq$k0">
                <ref role="3cqZAo" node="30fQumnGtWB" resolve="soll" />
              </node>
              <node concept="1KnU$U" id="6GakswJPTEx" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="6GakswJPT6D" role="37vLTJ">
              <ref role="3cqZAo" node="30fQumnGtWB" resolve="soll" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="jVwYUSS4IA" role="3cqZAp">
          <node concept="3clFbS" id="jVwYUSS4IB" role="2LFqv$">
            <node concept="3clFbJ" id="jVwYUSS4IC" role="3cqZAp">
              <node concept="3clFbS" id="jVwYUSS4ID" role="3clFbx">
                <node concept="3clFbF" id="jVwYUSS7TJ" role="3cqZAp">
                  <node concept="2OqwBi" id="6GakswJPCuZ" role="3clFbG">
                    <node concept="37vLTw" id="6GakswJPCsJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="30fQumnGufA" resolve="remove" />
                    </node>
                    <node concept="1Bd96e" id="6GakswJPCwW" role="2OqNvi">
                      <node concept="37vLTw" id="6GakswJPCze" role="1BdPVh">
                        <ref role="3cqZAo" node="jVwYUSS4IO" resolve="o" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="jVwYUSS4IJ" role="3clFbw">
                <node concept="2OqwBi" id="jVwYUSS4IK" role="3fr31v">
                  <node concept="37vLTw" id="jVwYUSS6Fc" role="2Oq$k0">
                    <ref role="3cqZAo" node="30fQumnGtWB" resolve="soll" />
                  </node>
                  <node concept="3JPx81" id="jVwYUSS4IM" role="2OqNvi">
                    <node concept="37vLTw" id="jVwYUSS4IN" role="25WWJ7">
                      <ref role="3cqZAo" node="jVwYUSS4IO" resolve="o" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="jVwYUSS4IO" role="1Duv9x">
            <property role="TrG5h" value="o" />
            <node concept="16syzq" id="6GakswJPyNT" role="1tU5fm">
              <ref role="16sUi3" node="30fQumnGtWU" resolve="T" />
            </node>
          </node>
          <node concept="37vLTw" id="jVwYUSS5m4" role="1DdaDG">
            <ref role="3cqZAo" node="30fQumnGtW$" resolve="ist" />
          </node>
        </node>
        <node concept="1DcWWT" id="jVwYUSRV9k" role="3cqZAp">
          <node concept="3clFbS" id="jVwYUSRV9m" role="2LFqv$">
            <node concept="3clFbJ" id="jVwYUSRVOv" role="3cqZAp">
              <node concept="3clFbS" id="jVwYUSRVOx" role="3clFbx">
                <node concept="3clFbF" id="jVwYUSS4jU" role="3cqZAp">
                  <node concept="2OqwBi" id="6GakswJPEQ6" role="3clFbG">
                    <node concept="37vLTw" id="6GakswJPEO7" role="2Oq$k0">
                      <ref role="3cqZAo" node="30fQumnGtWJ" resolve="add" />
                    </node>
                    <node concept="1Bd96e" id="6GakswJPESq" role="2OqNvi">
                      <node concept="37vLTw" id="6GakswJPEU2" role="1BdPVh">
                        <ref role="3cqZAo" node="jVwYUSRV9n" resolve="o" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="jVwYUSRYLA" role="3clFbw">
                <node concept="2OqwBi" id="jVwYUSS1z9" role="3fr31v">
                  <node concept="37vLTw" id="jVwYUSRYLQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="30fQumnGtW$" resolve="ist" />
                  </node>
                  <node concept="3JPx81" id="jVwYUSS4hx" role="2OqNvi">
                    <node concept="37vLTw" id="jVwYUSS4iF" role="25WWJ7">
                      <ref role="3cqZAo" node="jVwYUSRV9n" resolve="o" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="jVwYUSRV9n" role="1Duv9x">
            <property role="TrG5h" value="o" />
            <node concept="16syzq" id="6GakswJPDRY" role="1tU5fm">
              <ref role="16sUi3" node="30fQumnGtWU" resolve="T" />
            </node>
          </node>
          <node concept="37vLTw" id="jVwYUSRVIW" role="1DdaDG">
            <ref role="3cqZAo" node="30fQumnGtWB" resolve="soll" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="30fQumnGtWU" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3cqZAl" id="30fQumnGyFh" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5hwIp2JLcq3" role="jymVt" />
    <node concept="2YIFZL" id="5hwIp2JLc$d" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="model" />
      <node concept="37vLTG" id="5hwIp2JLeCm" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5hwIp2JLeCP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5hwIp2JMqup" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="61YJvT9KcL8" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="5hwIp2JLc$h" role="3clF47">
        <node concept="1DcWWT" id="5hwIp2JLeGv" role="3cqZAp">
          <node concept="3cpWsn" id="5hwIp2JLeGw" role="1Duv9x">
            <property role="TrG5h" value="target" />
            <node concept="H_c77" id="61YJvT9KeDx" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="5hwIp2JLeGy" role="2LFqv$">
            <node concept="3clFbJ" id="5hwIp2JLnOG" role="3cqZAp">
              <node concept="17R0WA" id="5hwIp2JLpoN" role="3clFbw">
                <node concept="2OqwBi" id="5hwIp2JLo7T" role="3uHU7B">
                  <node concept="37vLTw" id="5hwIp2JNK8A" role="2Oq$k0">
                    <ref role="3cqZAo" node="5hwIp2JLeGw" resolve="target" />
                  </node>
                  <node concept="LkI2h" id="5hwIp2JNKgz" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="5hwIp2JLpzS" role="3uHU7w">
                  <ref role="3cqZAo" node="5hwIp2JLeCm" resolve="name" />
                </node>
              </node>
              <node concept="3clFbS" id="5hwIp2JLnOI" role="3clFbx">
                <node concept="3cpWs6" id="5hwIp2JLpBa" role="3cqZAp">
                  <node concept="37vLTw" id="5hwIp2JN0Ny" role="3cqZAk">
                    <ref role="3cqZAo" node="5hwIp2JLeGw" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="61YJvT9KdWh" role="1DdaDG">
            <node concept="2OqwBi" id="61YJvT9Kdxc" role="2Oq$k0">
              <node concept="37vLTw" id="61YJvT9KdlH" role="2Oq$k0">
                <ref role="3cqZAo" node="5hwIp2JMqup" resolve="model" />
              </node>
              <node concept="liA8E" id="61YJvT9KdLJ" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              </node>
            </node>
            <node concept="liA8E" id="61YJvT9KedU" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SModule.getModels():java.lang.Iterable" resolve="getModels" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hwIp2JLeQW" role="3cqZAp">
          <node concept="10Nm6u" id="5hwIp2JLfiB" role="3clFbG" />
        </node>
      </node>
      <node concept="H_c77" id="5hwIp2JLc$f" role="3clF45" />
      <node concept="3Tm1VV" id="5hwIp2JLc$g" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="MxZDaxdfVi" role="jymVt" />
    <node concept="2YIFZL" id="MxZDaxdenI" role="jymVt">
      <property role="TrG5h" value="wrap" />
      <node concept="3Tm1VV" id="MxZDaxdenX" role="1B3o_S" />
      <node concept="3clFbS" id="MxZDaxdenY" role="3clF47">
        <node concept="3clFbF" id="MxZDaxdfdC" role="3cqZAp">
          <node concept="10QFUN" id="MxZDaxdfM_" role="3clFbG">
            <node concept="2YIFZM" id="4D8ewICUMn" role="10QFUP">
              <ref role="37wK5l" to="t4tl:~DNode.wrap(org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.model.SNode" resolve="wrap" />
              <ref role="1Pybhc" to="t4tl:~DNode" resolve="DNode" />
              <node concept="37vLTw" id="4D8ewICUMo" role="37wK5m">
                <ref role="3cqZAo" node="MxZDaxdf8Z" resolve="node" />
              </node>
            </node>
            <node concept="16syzq" id="MxZDaxdfMA" role="10QFUM">
              <ref role="16sUi3" node="MxZDaxdeoH" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="MxZDaxdeoH" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3Tqbb2" id="MxZDaxdf5R" role="3ztrMU" />
      </node>
      <node concept="16syzq" id="MxZDaxdf4t" role="3clF45">
        <ref role="16sUi3" node="MxZDaxdeoH" resolve="T" />
      </node>
      <node concept="37vLTG" id="MxZDaxdf8Z" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="MxZDaxdf9C" role="1tU5fm">
          <ref role="16sUi3" node="MxZDaxdeoH" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="MxZDaxacnh" role="jymVt" />
    <node concept="3Tm1VV" id="30fQumnG8Av" role="1B3o_S" />
  </node>
  <node concept="13h7C7" id="jVwYUSRkKY">
    <ref role="13h7C2" to="7ggn:jVwYUSRkKt" resolve="ContextType" />
    <node concept="13i0hz" id="jVwYUSRkJq" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="jVwYUSRkJr" role="1B3o_S" />
      <node concept="3Tqbb2" id="jVwYUSRkJE" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3clFbS" id="jVwYUSRkJt" role="3clF47" />
    </node>
    <node concept="13hLZK" id="jVwYUSRkKZ" role="13h7CW">
      <node concept="3clFbS" id="jVwYUSRkL0" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="jVwYUSRqTO">
    <ref role="13h7C2" to="7ggn:30fQumnEbzJ" resolve="ModelType" />
    <node concept="13hLZK" id="jVwYUSRqTP" role="13h7CW">
      <node concept="3clFbS" id="jVwYUSRqTQ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="jVwYUSRqTZ" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getType" />
      <ref role="13i0hy" node="jVwYUSRkJq" resolve="getType" />
      <node concept="3Tm1VV" id="jVwYUSRqU0" role="1B3o_S" />
      <node concept="3clFbS" id="jVwYUSRqU3" role="3clF47">
        <node concept="3clFbF" id="jVwYUSRqUj" role="3cqZAp">
          <node concept="2ShNRf" id="jVwYUSRqUh" role="3clFbG">
            <node concept="3zrR0B" id="jVwYUSRr98" role="2ShVmc">
              <node concept="3Tqbb2" id="jVwYUSRr9a" role="3zrR0E">
                <ref role="ehGHo" to="tp25:gCH_c3d" resolve="SModelType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="jVwYUSRqU4" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13i0hz" id="33eq5YkzlT4" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3clFbS" id="33eq5YkzlT7" role="3clF47">
        <node concept="3clFbF" id="33eq5YkzlTD" role="3cqZAp">
          <node concept="Xl_RD" id="33eq5YkzlTC" role="3clFbG">
            <property role="Xl_RC" value="model" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="33eq5YkzlTs" role="3clF45" />
      <node concept="3Tm1VV" id="33eq5YkzlTt" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="jVwYUSRraB">
    <ref role="13h7C2" to="7ggn:1Sb3mAPxLpZ" resolve="NodeType" />
    <node concept="13hLZK" id="jVwYUSRraC" role="13h7CW">
      <node concept="3clFbS" id="jVwYUSRraD" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="jVwYUSRraM" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getType" />
      <ref role="13i0hy" node="jVwYUSRkJq" resolve="getType" />
      <node concept="3Tm1VV" id="jVwYUSRraN" role="1B3o_S" />
      <node concept="3clFbS" id="jVwYUSRraQ" role="3clF47">
        <node concept="3cpWs8" id="jVwYUSRrn4" role="3cqZAp">
          <node concept="3cpWsn" id="jVwYUSRrn5" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3Tqbb2" id="jVwYUSRrn2" role="1tU5fm">
              <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
            </node>
            <node concept="2ShNRf" id="jVwYUSRrn6" role="33vP2m">
              <node concept="3zrR0B" id="jVwYUSRrn7" role="2ShVmc">
                <node concept="3Tqbb2" id="jVwYUSRrn8" role="3zrR0E">
                  <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jVwYUSRrsp" role="3cqZAp">
          <node concept="37vLTI" id="jVwYUSRshe" role="3clFbG">
            <node concept="2OqwBi" id="jVwYUSRs$g" role="37vLTx">
              <node concept="13iPFW" id="jVwYUSRsnj" role="2Oq$k0" />
              <node concept="3TrEf2" id="jVwYUSRsMm" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:jVwYUSRpzw" resolve="concept" />
              </node>
            </node>
            <node concept="2OqwBi" id="jVwYUSRrAH" role="37vLTJ">
              <node concept="37vLTw" id="jVwYUSRrsn" role="2Oq$k0">
                <ref role="3cqZAo" node="jVwYUSRrn5" resolve="type" />
              </node>
              <node concept="3TrEf2" id="jVwYUSRrNd" role="2OqNvi">
                <ref role="3Tt5mk" to="tp25:g$ehGDh" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jVwYUSRrb6" role="3cqZAp">
          <node concept="37vLTw" id="jVwYUSRrn9" role="3clFbG">
            <ref role="3cqZAo" node="jVwYUSRrn5" resolve="type" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="jVwYUSRraR" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13i0hz" id="33eq5Ykzm6M" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3clFbS" id="33eq5Ykzm6N" role="3clF47">
        <node concept="3clFbF" id="33eq5Ykzm6O" role="3cqZAp">
          <node concept="Xl_RD" id="33eq5Ykzm6P" role="3clFbG">
            <property role="Xl_RC" value="node" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="33eq5Ykzm6Q" role="3clF45" />
      <node concept="3Tm1VV" id="33eq5Ykzm6R" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="5myXc37OIKa">
    <ref role="13h7C2" to="7ggn:5myXc37OIo9" resolve="ModuleType" />
    <node concept="13i0hz" id="5myXc37PnWv" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getType" />
      <ref role="13i0hy" node="jVwYUSRkJq" resolve="getType" />
      <node concept="3Tm1VV" id="5myXc37PnWw" role="1B3o_S" />
      <node concept="3clFbS" id="5myXc37PnWx" role="3clF47">
        <node concept="3clFbF" id="5myXc37PnWK" role="3cqZAp">
          <node concept="2c44tf" id="5myXc37PFk6" role="3clFbG">
            <node concept="3uibUv" id="5myXc37PFlB" role="2c44tc">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5myXc37PnWM" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13i0hz" id="33eq5YkzlZE" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3clFbS" id="33eq5YkzlZF" role="3clF47">
        <node concept="3clFbF" id="33eq5YkzlZG" role="3cqZAp">
          <node concept="Xl_RD" id="33eq5YkzlZH" role="3clFbG">
            <property role="Xl_RC" value="module" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="33eq5YkzlZI" role="3clF45" />
      <node concept="3Tm1VV" id="33eq5YkzlZJ" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="5myXc37OIKb" role="13h7CW">
      <node concept="3clFbS" id="5myXc37OIKc" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5myXc37Ppyi">
    <ref role="13h7C2" to="7ggn:5myXc37PpxZ" resolve="RepositoryType" />
    <node concept="13i0hz" id="5myXc37PpAH" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getType" />
      <ref role="13i0hy" node="jVwYUSRkJq" resolve="getType" />
      <node concept="3Tm1VV" id="5myXc37PpAI" role="1B3o_S" />
      <node concept="3clFbS" id="5myXc37PpAJ" role="3clF47">
        <node concept="3cpWs6" id="5myXc37P_dL" role="3cqZAp">
          <node concept="2c44tf" id="hqIMTHL" role="3cqZAk">
            <node concept="3uibUv" id="5myXc37PF74" role="2c44tc">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5myXc37PpAY" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
    <node concept="13i0hz" id="33eq5YkzmeW" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3clFbS" id="33eq5YkzmeX" role="3clF47">
        <node concept="3clFbF" id="33eq5YkzmeY" role="3cqZAp">
          <node concept="Xl_RD" id="33eq5YkzmeZ" role="3clFbG">
            <property role="Xl_RC" value="repository" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="33eq5Ykzmf0" role="3clF45" />
      <node concept="3Tm1VV" id="33eq5Ykzmf1" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="5myXc37Ppyj" role="13h7CW">
      <node concept="3clFbS" id="5myXc37Ppyk" role="2VODD2" />
    </node>
  </node>
</model>

