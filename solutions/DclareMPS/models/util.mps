<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1a96ceaa-2946-43e0-af3f-cd05d77ee6d1(DclareMPSRuntime.util)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="11" />
  </languages>
  <imports>
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="t4tl" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.dclare.mps(DclareMPSRuntime/)" />
    <import index="dy39" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.transactions(DclareMPSRuntime/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="42m3" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.collections.util(DclareMPSRuntime/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
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
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
    </language>
  </registry>
  <node concept="312cEu" id="30fQumnG8Au">
    <property role="TrG5h" value="DclareUtil" />
    <node concept="2tJIrI" id="1pPEdD75S_P" role="jymVt" />
    <node concept="Wx3nA" id="1pPEdD75T3t" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="BUILDER_TYPE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1pPEdD75SSn" role="1B3o_S" />
      <node concept="3uibUv" id="1pPEdD75T2F" role="1tU5fm">
        <ref role="3uigEE" to="t4tl:~DAttribute" resolve="DAttribute" />
        <node concept="3uibUv" id="30GBB6YdBqM" role="11_B2D">
          <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
        </node>
        <node concept="17QB3L" id="4jqYi9EISxt" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="2GrW9c4eWaM" role="33vP2m">
        <node concept="1pGfFk" id="2GrW9c4eW9V" role="2ShVmc">
          <ref role="37wK5l" to="t4tl:~DAttribute.&lt;init&gt;(java.lang.Object,java.lang.String,java.lang.Object,org.modelingvalue.collections.util.QuadConsumer)" resolve="DAttribute" />
          <node concept="Xl_RD" id="1pPEdD75Tle" role="37wK5m">
            <property role="Xl_RC" value="&lt;PATTERN_TYPE&gt;" />
          </node>
          <node concept="Xl_RD" id="4wbMdoJjL2k" role="37wK5m">
            <property role="Xl_RC" value="patternType" />
          </node>
          <node concept="Xl_RD" id="2ADKImQ6Cxp" role="37wK5m">
            <property role="Xl_RC" value="" />
          </node>
          <node concept="2ShNRf" id="2GrW9c4gkJT" role="37wK5m">
            <node concept="YeOm9" id="2GrW9c4gq7F" role="2ShVmc">
              <node concept="1Y3b0j" id="2GrW9c4gq7I" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="42m3:~QuadConsumer" resolve="QuadConsumer" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="2GrW9c4gq7J" role="1B3o_S" />
                <node concept="3clFb_" id="2GrW9c4gq7K" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="accept" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <node concept="3Tm1VV" id="2GrW9c4gq7L" role="1B3o_S" />
                  <node concept="3cqZAl" id="2GrW9c4gq7N" role="3clF45" />
                  <node concept="37vLTG" id="2GrW9c4gq7O" role="3clF46">
                    <property role="TrG5h" value="tx" />
                    <node concept="3uibUv" id="2GrW9c4gq8c" role="1tU5fm">
                      <ref role="3uigEE" to="dy39:~AbstractLeaf" resolve="AbstractLeaf" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="2GrW9c4gq7Q" role="3clF46">
                    <property role="TrG5h" value="o" />
                    <node concept="3uibUv" id="30GBB6YdC9B" role="1tU5fm">
                      <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="2GrW9c4gq7S" role="3clF46">
                    <property role="TrG5h" value="b" />
                    <node concept="17QB3L" id="2GrW9c4gq8g" role="1tU5fm" />
                  </node>
                  <node concept="37vLTG" id="2GrW9c4gq7U" role="3clF46">
                    <property role="TrG5h" value="a" />
                    <node concept="17QB3L" id="2GrW9c4gq8i" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="2GrW9c4gq7W" role="3clF47">
                    <node concept="3clFbJ" id="30GBB6Yd$wB" role="3cqZAp">
                      <node concept="3clFbS" id="30GBB6Yd$wD" role="3clFbx">
                        <node concept="3clFbF" id="30GBB6YdO8v" role="3cqZAp">
                          <node concept="2OqwBi" id="30GBB6YdOCd" role="3clFbG">
                            <node concept="37vLTw" id="30GBB6YdO8u" role="2Oq$k0">
                              <ref role="3cqZAo" node="2GrW9c4gq7Q" resolve="o" />
                            </node>
                            <node concept="liA8E" id="30GBB6YdP0A" role="2OqNvi">
                              <ref role="37wK5l" to="t4tl:~DNode.clearAllFeatures():void" resolve="clearAllFeatures" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1Wc70l" id="30GBB6Yd_l1" role="3clFbw">
                        <node concept="3eOSWO" id="2ADKImQ6CkO" role="3uHU7B">
                          <node concept="3cmrfG" id="2ADKImQ6Cmf" role="3uHU7w">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2ADKImQ6Aa7" role="3uHU7B">
                            <node concept="37vLTw" id="30GBB6Yd$yC" role="2Oq$k0">
                              <ref role="3cqZAo" node="2GrW9c4gq7S" resolve="b" />
                            </node>
                            <node concept="liA8E" id="2ADKImQ6AsE" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                            </node>
                          </node>
                        </node>
                        <node concept="3eOSWO" id="2ADKImQ6FIQ" role="3uHU7w">
                          <node concept="3cmrfG" id="2ADKImQ6FKh" role="3uHU7w">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2ADKImQ6Dbb" role="3uHU7B">
                            <node concept="37vLTw" id="30GBB6Yd_qg" role="2Oq$k0">
                              <ref role="3cqZAo" node="2GrW9c4gq7U" resolve="a" />
                            </node>
                            <node concept="liA8E" id="2ADKImQ6DLF" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="2GrW9c4gq8b" role="2Ghqu4">
                  <ref role="3uigEE" to="dy39:~AbstractLeaf" resolve="AbstractLeaf" />
                </node>
                <node concept="3uibUv" id="30GBB6YdBVR" role="2Ghqu4">
                  <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                </node>
                <node concept="17QB3L" id="2GrW9c4gq8f" role="2Ghqu4" />
                <node concept="17QB3L" id="2GrW9c4gq8h" role="2Ghqu4" />
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="30GBB6YdBHl" role="1pMfVU">
            <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
          </node>
          <node concept="17QB3L" id="2GrW9c4eW9X" role="1pMfVU" />
        </node>
      </node>
    </node>
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
    <node concept="2tJIrI" id="29R9$zZo$v9" role="jymVt" />
    <node concept="2YIFZL" id="4Y8BM43o88y" role="jymVt">
      <property role="TrG5h" value="getAttributes" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="4Y8BM43o88_" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="4Y8BM43o88A" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="4Y8BM43o88B" role="3clF47">
        <node concept="3clFbF" id="4Y8BM43o9KK" role="3cqZAp">
          <node concept="10QFUN" id="4Y8BM43oaMd" role="3clFbG">
            <node concept="2OqwBi" id="4Y8BM43oaqz" role="10QFUP">
              <node concept="1eOMI4" id="4Y8BM43oadw" role="2Oq$k0">
                <node concept="10QFUN" id="4Y8BM43oagw" role="1eOMHV">
                  <node concept="3uibUv" id="4wbMdoJv1ie" role="10QFUM">
                    <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                  </node>
                  <node concept="37vLTw" id="4Y8BM43o9KJ" role="10QFUP">
                    <ref role="3cqZAo" node="4Y8BM43o88_" resolve="object" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4Y8BM43oaxi" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DObject.getAttributes():java.util.List" resolve="getAttributes" />
              </node>
            </node>
            <node concept="A3Dl8" id="4Y8BM43oaMe" role="10QFUM">
              <node concept="3uibUv" id="4Y8BM43odSo" role="A3Ik2">
                <ref role="3uigEE" to="t4tl:~DAttribute" resolve="DAttribute" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Y8BM43o88M" role="1B3o_S" />
      <node concept="A3Dl8" id="4Y8BM43o9lz" role="3clF45">
        <node concept="3uibUv" id="4Y8BM43oeiT" role="A3Ik2">
          <ref role="3uigEE" to="t4tl:~DAttribute" resolve="DAttribute" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Y8BM43o7rh" role="jymVt" />
    <node concept="2YIFZL" id="1lQ5DPQts7D" role="jymVt">
      <property role="TrG5h" value="getAttributeValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="1lQ5DPQtstn" role="3clF46">
        <property role="TrG5h" value="attributeId" />
        <node concept="3uibUv" id="1lQ5DPQtsvD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4wbMdoJjOKU" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4wbMdoJjOZH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1lQ5DPQtsij" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="1lQ5DPQ_8lM" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="1lQ5DPQts7G" role="3clF47">
        <node concept="3clFbF" id="1lQ5DPQtwf3" role="3cqZAp">
          <node concept="10QFUN" id="1lQ5DPQtA3I" role="3clFbG">
            <node concept="2OqwBi" id="1lQ5DPQtwTS" role="10QFUP">
              <node concept="2YIFZM" id="1lQ5DPQtwia" role="2Oq$k0">
                <ref role="1Pybhc" to="t4tl:~DAttribute" resolve="DAttribute" />
                <ref role="37wK5l" to="t4tl:~DAttribute.of(java.lang.Object,java.lang.String):org.modelingvalue.dclare.mps.DAttribute" resolve="of" />
                <node concept="37vLTw" id="1lQ5DPQtwl4" role="37wK5m">
                  <ref role="3cqZAo" node="1lQ5DPQtstn" resolve="attributeId" />
                </node>
                <node concept="37vLTw" id="4wbMdoJjP92" role="37wK5m">
                  <ref role="3cqZAo" node="4wbMdoJjOKU" resolve="name" />
                </node>
              </node>
              <node concept="liA8E" id="1lQ5DPQtxzb" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DAttribute.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="37vLTw" id="1lQ5DPQtxFz" role="37wK5m">
                  <ref role="3cqZAo" node="1lQ5DPQtsij" resolve="object" />
                </node>
              </node>
            </node>
            <node concept="16syzq" id="1lQ5DPQtA3J" role="10QFUM">
              <ref role="16sUi3" node="1lQ5DPQtsqI" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1lQ5DPQtrW5" role="1B3o_S" />
      <node concept="16syzq" id="1lQ5DPQt_Nc" role="3clF45">
        <ref role="16sUi3" node="1lQ5DPQtsqI" resolve="T" />
      </node>
      <node concept="16euLQ" id="1lQ5DPQtsqI" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="1lQ5DPQt_c7" role="jymVt" />
    <node concept="2YIFZL" id="1lQ5DPQt_o8" role="jymVt">
      <property role="TrG5h" value="setAttributeValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="1lQ5DPQt_o9" role="3clF46">
        <property role="TrG5h" value="attributeId" />
        <node concept="3uibUv" id="1lQ5DPQt_oa" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4wbMdoJjOTa" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4wbMdoJjOXu" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1lQ5DPQt_ob" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="1lQ5DPQ_8op" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1lQ5DPQtAgA" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="1lQ5DPQtAji" role="1tU5fm">
          <ref role="16sUi3" node="1lQ5DPQt_oo" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="1lQ5DPQt_od" role="3clF47">
        <node concept="3clFbF" id="1lQ5DPQt_oe" role="3cqZAp">
          <node concept="2OqwBi" id="1lQ5DPQt_of" role="3clFbG">
            <node concept="2YIFZM" id="1lQ5DPQt_og" role="2Oq$k0">
              <ref role="1Pybhc" to="t4tl:~DAttribute" resolve="DAttribute" />
              <ref role="37wK5l" to="t4tl:~DAttribute.of(java.lang.Object,java.lang.String):org.modelingvalue.dclare.mps.DAttribute" resolve="of" />
              <node concept="37vLTw" id="1lQ5DPQt_oh" role="37wK5m">
                <ref role="3cqZAo" node="1lQ5DPQt_o9" resolve="attributeId" />
              </node>
              <node concept="37vLTw" id="4wbMdoJjPkh" role="37wK5m">
                <ref role="3cqZAo" node="4wbMdoJjOTa" resolve="name" />
              </node>
            </node>
            <node concept="liA8E" id="1lQ5DPQt_oi" role="2OqNvi">
              <ref role="37wK5l" to="dy39:~Setable.set(java.lang.Object,java.lang.Object):java.lang.Object" resolve="set" />
              <node concept="37vLTw" id="1lQ5DPQt_oj" role="37wK5m">
                <ref role="3cqZAo" node="1lQ5DPQt_ob" resolve="object" />
              </node>
              <node concept="37vLTw" id="1lQ5DPQtAs1" role="37wK5m">
                <ref role="3cqZAo" node="1lQ5DPQtAgA" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1lQ5DPQt_ok" role="1B3o_S" />
      <node concept="3cqZAl" id="1lQ5DPQt_ol" role="3clF45" />
      <node concept="16euLQ" id="1lQ5DPQt_oo" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="1lQ5DPQtrAA" role="jymVt" />
    <node concept="2YIFZL" id="29R9$zZq4Ie" role="jymVt">
      <property role="TrG5h" value="getOpposite" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="29R9$zZq4Ig" role="3clF47">
        <node concept="3clFbF" id="29R9$zZq4Ih" role="3cqZAp">
          <node concept="10QFUN" id="29R9$zZq4Ii" role="3clFbG">
            <node concept="2OqwBi" id="29R9$zZq4Ij" role="10QFUP">
              <node concept="1eOMI4" id="29R9$zZq4Ik" role="2Oq$k0">
                <node concept="10QFUN" id="29R9$zZq4Il" role="1eOMHV">
                  <node concept="3uibUv" id="29R9$zZq4Im" role="10QFUM">
                    <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                  </node>
                  <node concept="37vLTw" id="29R9$zZq4In" role="10QFUP">
                    <ref role="3cqZAo" node="29R9$zZq4Iv" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="29R9$zZq4Io" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DNode.getReferenceSources(org.jetbrains.mps.openapi.language.SReferenceLink):java.lang.Iterable" resolve="getReferenceSources" />
                <node concept="37vLTw" id="29R9$zZq4Ip" role="37wK5m">
                  <ref role="3cqZAo" node="29R9$zZq4Ix" resolve="oppos" />
                </node>
              </node>
            </node>
            <node concept="A3Dl8" id="29R9$zZq4Iq" role="10QFUM" />
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="29R9$zZq4It" role="3clF45">
        <node concept="3Tqbb2" id="29R9$zZq4Iu" role="A3Ik2" />
      </node>
      <node concept="37vLTG" id="29R9$zZq4Iv" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="29R9$zZq4Iw" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="29R9$zZq4Ix" role="3clF46">
        <property role="TrG5h" value="oppos" />
        <node concept="3uibUv" id="29R9$zZq4Iy" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="3Tm1VV" id="29R9$zZq4Is" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5hwIp2JLcq3" role="jymVt" />
    <node concept="2YIFZL" id="5hwIp2JLc$d" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="findSibling" />
      <node concept="37vLTG" id="5hwIp2JMqup" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="56O9viirrC9" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="5hwIp2JLeCm" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5hwIp2JLeCP" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5hwIp2JLc$h" role="3clF47">
        <node concept="3clFbF" id="5hwIp2JLeQW" role="3cqZAp">
          <node concept="1rXfSq" id="7fAqG1ajx4" role="3clFbG">
            <ref role="37wK5l" node="7fAqG1ai8G" resolve="findModel" />
            <node concept="2OqwBi" id="7fAqG1ajHx" role="37wK5m">
              <node concept="37vLTw" id="7fAqG1ajAx" role="2Oq$k0">
                <ref role="3cqZAo" node="5hwIp2JMqup" resolve="model" />
              </node>
              <node concept="liA8E" id="7fAqG1ajPn" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              </node>
            </node>
            <node concept="37vLTw" id="7fAqG1ajSU" role="37wK5m">
              <ref role="3cqZAo" node="5hwIp2JLeCm" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="H_c77" id="5hwIp2JLc$f" role="3clF45" />
      <node concept="3Tm1VV" id="5hwIp2JLc$g" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7fAqG1ahZU" role="jymVt" />
    <node concept="2YIFZL" id="7fAqG1ai8G" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="findModel" />
      <node concept="37vLTG" id="7fAqG1ai8H" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="7fAqG1aj0Z" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="7fAqG1ai8J" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7fAqG1ai8K" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7fAqG1ai8L" role="3clF47">
        <node concept="1DcWWT" id="7fAqG1ai8M" role="3cqZAp">
          <node concept="3cpWsn" id="7fAqG1ai8N" role="1Duv9x">
            <property role="TrG5h" value="target" />
            <node concept="H_c77" id="7fAqG1ai8O" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7fAqG1ai8P" role="2LFqv$">
            <node concept="3clFbJ" id="7fAqG1ai8Q" role="3cqZAp">
              <node concept="17R0WA" id="7fAqG1ai8R" role="3clFbw">
                <node concept="2OqwBi" id="7fAqG1ai8S" role="3uHU7B">
                  <node concept="37vLTw" id="7fAqG1ai8T" role="2Oq$k0">
                    <ref role="3cqZAo" node="7fAqG1ai8N" resolve="target" />
                  </node>
                  <node concept="LkI2h" id="7fAqG1ai8U" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="7fAqG1ai8V" role="3uHU7w">
                  <ref role="3cqZAo" node="7fAqG1ai8J" resolve="name" />
                </node>
              </node>
              <node concept="3clFbS" id="7fAqG1ai8W" role="3clFbx">
                <node concept="3cpWs6" id="7fAqG1ai8X" role="3cqZAp">
                  <node concept="37vLTw" id="7fAqG1ai8Y" role="3cqZAk">
                    <ref role="3cqZAo" node="7fAqG1ai8N" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7fAqG1ai8Z" role="1DdaDG">
            <node concept="37vLTw" id="7fAqG1ai91" role="2Oq$k0">
              <ref role="3cqZAo" node="7fAqG1ai8H" resolve="module" />
            </node>
            <node concept="liA8E" id="7fAqG1ai93" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SModule.getModels():java.lang.Iterable" resolve="getModels" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7fAqG1ai94" role="3cqZAp">
          <node concept="10Nm6u" id="7fAqG1ai95" role="3clFbG" />
        </node>
      </node>
      <node concept="H_c77" id="7fAqG1ai96" role="3clF45" />
      <node concept="3Tm1VV" id="7fAqG1ai97" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="56O9viirgpu" role="jymVt" />
    <node concept="2YIFZL" id="2_8jVv8mttu" role="jymVt">
      <property role="TrG5h" value="dModel" />
      <node concept="3Tm1VV" id="2_8jVv8mttv" role="1B3o_S" />
      <node concept="3clFbS" id="2_8jVv8mttw" role="3clF47">
        <node concept="3clFbF" id="2_8jVv8mttx" role="3cqZAp">
          <node concept="2YIFZM" id="2_8jVv8mttz" role="3clFbG">
            <ref role="1Pybhc" to="t4tl:~DModel" resolve="DModel" />
            <ref role="37wK5l" to="t4tl:~DModel.wrap(org.jetbrains.mps.openapi.model.SModel):org.modelingvalue.dclare.mps.DModel" resolve="wrap" />
            <node concept="37vLTw" id="2_8jVv8mtt$" role="37wK5m">
              <ref role="3cqZAo" node="2_8jVv8mttD" resolve="model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2_8jVv8mttD" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="2_8jVv8mtCs" role="1tU5fm" />
      </node>
      <node concept="H_c77" id="2_8jVv8mtJ0" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2_8jVv8mtqm" role="jymVt" />
    <node concept="2YIFZL" id="MxZDaxdenI" role="jymVt">
      <property role="TrG5h" value="dNode" />
      <node concept="3Tm1VV" id="MxZDaxdenX" role="1B3o_S" />
      <node concept="3clFbS" id="MxZDaxdenY" role="3clF47">
        <node concept="3clFbJ" id="URkLcmzzKl" role="3cqZAp">
          <node concept="3clFbS" id="URkLcmzzKn" role="3clFbx">
            <node concept="3clFbF" id="URkLcmzDRA" role="3cqZAp">
              <node concept="37vLTI" id="URkLcmzE35" role="3clFbG">
                <node concept="37vLTw" id="URkLcmzDR$" role="37vLTJ">
                  <ref role="3cqZAo" node="URkLcmyTIz" resolve="node" />
                </node>
                <node concept="10QFUN" id="URkLcmzEdg" role="37vLTx">
                  <node concept="16syzq" id="URkLcmzEkY" role="10QFUM">
                    <ref role="16sUi3" node="MxZDaxdeoH" resolve="T" />
                  </node>
                  <node concept="2YIFZM" id="2ADKImQ6qWq" role="10QFUP">
                    <ref role="1Pybhc" to="t4tl:~DNode" resolve="DNode" />
                    <ref role="37wK5l" to="t4tl:~DNode.wrap(org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.model.SNode" resolve="wrap" />
                    <node concept="2OqwBi" id="URkLcmzzpr" role="37wK5m">
                      <node concept="37vLTw" id="2ADKImQ6qWr" role="2Oq$k0">
                        <ref role="3cqZAo" node="MxZDaxdf8Z" resolve="creator" />
                      </node>
                      <node concept="1Bd96e" id="URkLcmzzug" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="URkLcmz$_f" role="3clFbw">
            <node concept="17QLQc" id="URkLcmzASa" role="3uHU7w">
              <node concept="2OqwBi" id="URkLcmzBOo" role="3uHU7B">
                <node concept="37vLTw" id="URkLcmz$G1" role="2Oq$k0">
                  <ref role="3cqZAo" node="URkLcmyTIz" resolve="node" />
                </node>
                <node concept="2yIwOk" id="URkLcmzBXE" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="URkLcmz_VD" role="3uHU7w">
                <ref role="3cqZAo" node="URkLcmzzyJ" resolve="concept" />
              </node>
            </node>
            <node concept="3clFbC" id="URkLcmz$qh" role="3uHU7B">
              <node concept="37vLTw" id="URkLcmzzPL" role="3uHU7B">
                <ref role="3cqZAo" node="URkLcmyTIz" resolve="node" />
              </node>
              <node concept="10Nm6u" id="URkLcmz$yc" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2ADKImQ6rum" role="3cqZAp">
          <node concept="2OqwBi" id="2ADKImQ6rVI" role="3clFbG">
            <node concept="37vLTw" id="2ADKImQ6ruk" role="2Oq$k0">
              <ref role="3cqZAo" node="1pPEdD75T3t" resolve="BUILDER_TYPE" />
            </node>
            <node concept="liA8E" id="2ADKImQ6sED" role="2OqNvi">
              <ref role="37wK5l" to="dy39:~Setable.set(java.lang.Object,java.lang.Object):java.lang.Object" resolve="set" />
              <node concept="10QFUN" id="URkLcmzFSj" role="37wK5m">
                <node concept="3uibUv" id="URkLcmzGGU" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                </node>
                <node concept="37vLTw" id="URkLcmzEN_" role="10QFUP">
                  <ref role="3cqZAo" node="URkLcmyTIz" resolve="node" />
                </node>
              </node>
              <node concept="37vLTw" id="2ADKImQ6uzs" role="37wK5m">
                <ref role="3cqZAo" node="2ADKImQ6r5F" resolve="builderType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4KjhF$ZCSmH" role="3cqZAp">
          <node concept="37vLTw" id="URkLcmzDFC" role="3clFbG">
            <ref role="3cqZAo" node="URkLcmyTIz" resolve="node" />
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
      <node concept="37vLTG" id="URkLcmyTIz" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="URkLcmyTNs" role="1tU5fm">
          <ref role="16sUi3" node="MxZDaxdeoH" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="MxZDaxdf8Z" role="3clF46">
        <property role="TrG5h" value="creator" />
        <node concept="1ajhzC" id="URkLcmyTbW" role="1tU5fm">
          <node concept="16syzq" id="URkLcmyTgP" role="1ajl9A">
            <ref role="16sUi3" node="MxZDaxdeoH" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="URkLcmzzyJ" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="URkLcmzzCu" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="2ADKImQ6r5F" role="3clF46">
        <property role="TrG5h" value="builderType" />
        <node concept="17QB3L" id="2ADKImQ6rkP" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="MxZDaxacnh" role="jymVt" />
    <node concept="3Tm1VV" id="30fQumnG8Av" role="1B3o_S" />
  </node>
</model>

