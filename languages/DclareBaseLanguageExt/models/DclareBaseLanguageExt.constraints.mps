<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a846851b-6f7a-455c-bd75-e5f16245b3be(DclareBaseLanguageExt.constraints)">
  <persistence version="9" />
  <languages>
    <use id="5dae8159-ab99-46bb-a40d-0cee30ee7018" name="jetbrains.mps.lang.constraints.rules.kinds" version="0" />
    <use id="ea3159bf-f48e-4720-bde2-86dba75f0d34" name="jetbrains.mps.lang.context.defs" version="0" />
    <use id="e51810c5-7308-4642-bcb6-469e61b5dd18" name="jetbrains.mps.lang.constraints.msg.specification" version="0" />
    <use id="134c38d4-e3af-4d9e-b069-1c7df0a4005d" name="jetbrains.mps.lang.constraints.rules.skeleton" version="0" />
    <use id="b3551702-269c-4f05-ba61-58060cef4292" name="jetbrains.mps.lang.rulesAndMessages" version="0" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="3ad5badc-1d9c-461c-b7b1-fa2fcd0a0ae7" name="jetbrains.mps.lang.context" version="0" />
    <use id="ad93155d-79b2-4759-b10c-55123e763903" name="jetbrains.mps.lang.messages" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="pwn9" ref="r:d26de8aa-207d-46d8-b947-994f2f786eb8(DclareBaseLanguageExt.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="us1s" ref="r:e7d7a1fa-fb58-4cf6-bc1d-e5ed722e0c61(DclareMPS.behavior)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
  </imports>
  <registry>
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807351367" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" flags="in" index="9S07l" />
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1163200647017" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode" flags="nn" index="3kakTB" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807737306" name="canBeChild" index="9Vyp8" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1182511038748" name="jetbrains.mps.lang.smodel.structure.Model_NodesIncludingImportedOperation" flags="nn" index="1j9C0f">
        <reference id="1182511038750" name="concept" index="1j9C0d" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="1M2fIO" id="2icq$nJCpJi">
    <property role="3GE5qa" value="attributes" />
    <ref role="1M2myG" to="pwn9:2icq$nJCmZ2" resolve="DclareAttributeOperation" />
    <node concept="1N5Pfh" id="2icq$nJCpJj" role="1Mr941">
      <ref role="1N5Vy1" to="pwn9:oVVxO7wotu" resolve="attribute" />
      <node concept="3dgokm" id="oVVxO7wowY" role="1N6uqs">
        <node concept="3clFbS" id="oVVxO7wowZ" role="2VODD2">
          <node concept="3cpWs8" id="oVVxO7wox0" role="3cqZAp">
            <node concept="3cpWsn" id="oVVxO7wox1" role="3cpWs9">
              <property role="TrG5h" value="dotExpression" />
              <node concept="3Tqbb2" id="oVVxO7wox2" role="1tU5fm">
                <ref role="ehGHo" to="tpee:hqOqwz4" resolve="DotExpression" />
              </node>
              <node concept="10Nm6u" id="oVVxO7wox3" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbJ" id="oVVxO7wox4" role="3cqZAp">
            <node concept="3clFbS" id="oVVxO7wox5" role="3clFbx">
              <node concept="3clFbF" id="oVVxO7wox6" role="3cqZAp">
                <node concept="37vLTI" id="oVVxO7wox7" role="3clFbG">
                  <node concept="1PxgMI" id="oVVxO7wox8" role="37vLTx">
                    <node concept="chp4Y" id="oVVxO7wox9" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                    </node>
                    <node concept="2rP1CM" id="oVVxO7woxa" role="1m5AlR" />
                  </node>
                  <node concept="37vLTw" id="oVVxO7woxb" role="37vLTJ">
                    <ref role="3cqZAo" node="oVVxO7wox1" resolve="dotExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="oVVxO7woxc" role="3clFbw">
              <node concept="10Nm6u" id="oVVxO7woxd" role="3uHU7w" />
              <node concept="3kakTB" id="oVVxO7woxe" role="3uHU7B" />
            </node>
            <node concept="9aQIb" id="oVVxO7woxf" role="9aQIa">
              <node concept="3clFbS" id="oVVxO7woxg" role="9aQI4">
                <node concept="3cpWs8" id="oVVxO7woxh" role="3cqZAp">
                  <node concept="3cpWsn" id="oVVxO7woxi" role="3cpWs9">
                    <property role="TrG5h" value="parent" />
                    <node concept="3Tqbb2" id="oVVxO7woxj" role="1tU5fm" />
                    <node concept="2OqwBi" id="oVVxO7woxk" role="33vP2m">
                      <node concept="3kakTB" id="oVVxO7woxl" role="2Oq$k0" />
                      <node concept="1mfA1w" id="oVVxO7woxm" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="oVVxO7woxn" role="3cqZAp">
                  <node concept="3clFbS" id="oVVxO7woxo" role="3clFbx">
                    <node concept="3clFbF" id="oVVxO7woxp" role="3cqZAp">
                      <node concept="37vLTI" id="oVVxO7woxq" role="3clFbG">
                        <node concept="1PxgMI" id="oVVxO7woxr" role="37vLTx">
                          <node concept="chp4Y" id="oVVxO7woxs" role="3oSUPX">
                            <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                          </node>
                          <node concept="37vLTw" id="oVVxO7woxt" role="1m5AlR">
                            <ref role="3cqZAo" node="oVVxO7woxi" resolve="parent" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="oVVxO7woxu" role="37vLTJ">
                          <ref role="3cqZAo" node="oVVxO7wox1" resolve="dotExpression" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="oVVxO7woxv" role="3clFbw">
                    <node concept="37vLTw" id="oVVxO7woxw" role="2Oq$k0">
                      <ref role="3cqZAo" node="oVVxO7woxi" resolve="parent" />
                    </node>
                    <node concept="1mIQ4w" id="oVVxO7woxx" role="2OqNvi">
                      <node concept="chp4Y" id="oVVxO7woxy" role="cj9EA">
                        <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="oVVxO7woxz" role="3eNLev">
                    <node concept="2OqwBi" id="oVVxO7wox$" role="3eO9$A">
                      <node concept="37vLTw" id="oVVxO7wox_" role="2Oq$k0">
                        <ref role="3cqZAo" node="oVVxO7woxi" resolve="parent" />
                      </node>
                      <node concept="1mIQ4w" id="oVVxO7woxA" role="2OqNvi">
                        <node concept="chp4Y" id="oVVxO7woxB" role="cj9EA">
                          <ref role="cht4Q" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="oVVxO7woxC" role="3eOfB_">
                      <node concept="3clFbF" id="oVVxO7woxD" role="3cqZAp">
                        <node concept="37vLTI" id="oVVxO7woxE" role="3clFbG">
                          <node concept="2OqwBi" id="oVVxO7woxF" role="37vLTx">
                            <node concept="37vLTw" id="oVVxO7woxG" role="2Oq$k0">
                              <ref role="3cqZAo" node="oVVxO7woxi" resolve="parent" />
                            </node>
                            <node concept="1mfA1w" id="oVVxO7woxH" role="2OqNvi" />
                          </node>
                          <node concept="37vLTw" id="oVVxO7woxI" role="37vLTJ">
                            <ref role="3cqZAo" node="oVVxO7woxi" resolve="parent" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="oVVxO7woxJ" role="3cqZAp">
                        <node concept="3clFbS" id="oVVxO7woxK" role="3clFbx">
                          <node concept="3clFbF" id="oVVxO7woxL" role="3cqZAp">
                            <node concept="37vLTI" id="oVVxO7woxM" role="3clFbG">
                              <node concept="1PxgMI" id="oVVxO7woxN" role="37vLTx">
                                <node concept="chp4Y" id="oVVxO7woxO" role="3oSUPX">
                                  <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                </node>
                                <node concept="37vLTw" id="oVVxO7woxP" role="1m5AlR">
                                  <ref role="3cqZAo" node="oVVxO7woxi" resolve="parent" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="oVVxO7woxQ" role="37vLTJ">
                                <ref role="3cqZAo" node="oVVxO7wox1" resolve="dotExpression" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="oVVxO7woxR" role="3clFbw">
                          <node concept="37vLTw" id="oVVxO7woxS" role="2Oq$k0">
                            <ref role="3cqZAo" node="oVVxO7woxi" resolve="parent" />
                          </node>
                          <node concept="1mIQ4w" id="oVVxO7woxT" role="2OqNvi">
                            <node concept="chp4Y" id="oVVxO7woxU" role="cj9EA">
                              <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
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
          <node concept="3clFbJ" id="oVVxO7woxV" role="3cqZAp">
            <node concept="3clFbS" id="oVVxO7woxW" role="3clFbx">
              <node concept="3cpWs8" id="oVVxO7woxX" role="3cqZAp">
                <node concept="3cpWsn" id="oVVxO7woxY" role="3cpWs9">
                  <property role="TrG5h" value="attributes" />
                  <node concept="2I9FWS" id="oVVxO7woxZ" role="1tU5fm">
                    <ref role="2I9WkF" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
                  </node>
                  <node concept="2OqwBi" id="oVVxO7woy0" role="33vP2m">
                    <node concept="2OqwBi" id="oVVxO7woy1" role="2Oq$k0">
                      <node concept="2rP1CM" id="oVVxO7woy2" role="2Oq$k0" />
                      <node concept="I4A8Y" id="oVVxO7woy3" role="2OqNvi" />
                    </node>
                    <node concept="1j9C0f" id="oVVxO7woy4" role="2OqNvi">
                      <ref role="1j9C0d" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="oVVxO7woy5" role="3cqZAp">
                <node concept="2YIFZM" id="oVVxO7woy6" role="3cqZAk">
                  <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                  <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <node concept="2OqwBi" id="oVVxO7woy7" role="37wK5m">
                    <node concept="37vLTw" id="oVVxO7woy8" role="2Oq$k0">
                      <ref role="3cqZAo" node="oVVxO7woxY" resolve="attributes" />
                    </node>
                    <node concept="3zZkjj" id="oVVxO7woy9" role="2OqNvi">
                      <node concept="1bVj0M" id="oVVxO7woya" role="23t8la">
                        <node concept="3clFbS" id="oVVxO7woyb" role="1bW5cS">
                          <node concept="3clFbF" id="oVVxO7woyc" role="3cqZAp">
                            <node concept="2OqwBi" id="oVVxO7woyd" role="3clFbG">
                              <node concept="2OqwBi" id="oVVxO7woye" role="2Oq$k0">
                                <node concept="37vLTw" id="oVVxO7woyf" role="2Oq$k0">
                                  <ref role="3cqZAo" node="oVVxO7woyn" resolve="a" />
                                </node>
                                <node concept="2qgKlT" id="oVVxO7woyg" role="2OqNvi">
                                  <ref role="37wK5l" to="us1s:29R9$zZWsRH" resolve="getContextType" />
                                </node>
                              </node>
                              <node concept="2qgKlT" id="oVVxO7woyh" role="2OqNvi">
                                <ref role="37wK5l" to="tpek:hKBOZqh" resolve="isSupersetOf" />
                                <node concept="10QFUN" id="oVVxO7woyi" role="37wK5m">
                                  <node concept="3Tqbb2" id="oVVxO7woyj" role="10QFUM">
                                    <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                                  </node>
                                  <node concept="2OqwBi" id="oVVxO7woyk" role="10QFUP">
                                    <node concept="37vLTw" id="oVVxO7woyl" role="2Oq$k0">
                                      <ref role="3cqZAo" node="oVVxO7wox1" resolve="dotExpression" />
                                    </node>
                                    <node concept="2qgKlT" id="oVVxO7woym" role="2OqNvi">
                                      <ref role="37wK5l" to="tpek:7GulAc9z0dN" resolve="getOperandType" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="oVVxO7woyn" role="1bW2Oz">
                          <property role="TrG5h" value="a" />
                          <node concept="2jxLKc" id="oVVxO7woyo" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="oVVxO7woyp" role="3clFbw">
              <node concept="10Nm6u" id="oVVxO7woyq" role="3uHU7w" />
              <node concept="37vLTw" id="oVVxO7woyr" role="3uHU7B">
                <ref role="3cqZAo" node="oVVxO7wox1" resolve="dotExpression" />
              </node>
            </node>
            <node concept="9aQIb" id="oVVxO7woys" role="9aQIa">
              <node concept="3clFbS" id="oVVxO7woyt" role="9aQI4">
                <node concept="3cpWs6" id="oVVxO7woyu" role="3cqZAp">
                  <node concept="2ShNRf" id="oVVxO7woyv" role="3cqZAk">
                    <node concept="1pGfFk" id="2icq$nJCqvL" role="2ShVmc">
                      <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9S07l" id="6JjdmBEtbuE" role="9Vyp8">
      <node concept="3clFbS" id="6JjdmBEtbuF" role="2VODD2">
        <node concept="3clFbF" id="6JjdmBEtcRU" role="3cqZAp">
          <node concept="3clFbC" id="6JjdmBEtePo" role="3clFbG">
            <node concept="10Nm6u" id="6JjdmBEteVQ" role="3uHU7w" />
            <node concept="2OqwBi" id="6JjdmBEtey6" role="3uHU7B">
              <node concept="nLn13" id="6JjdmBEtey7" role="2Oq$k0" />
              <node concept="2Xjw5R" id="6JjdmBEtey8" role="2OqNvi">
                <node concept="1xMEDy" id="6JjdmBEtey9" role="1xVPHs">
                  <node concept="chp4Y" id="6JjdmBEteya" role="ri$Ld">
                    <ref role="cht4Q" to="7ggn:61p65V8x$6I" resolve="ThisContext" />
                  </node>
                </node>
                <node concept="1xIGOp" id="6JjdmBEteyb" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

