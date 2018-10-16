<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0047be70-faf6-4f46-a1c5-8acaee49783b(DclareMPS.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tpeu" ref="r:00000000-0000-4000-0000-011c895902fa(jetbrains.mps.lang.smodel.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807351367" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" flags="in" index="9S07l" />
      <concept id="6702802731807420587" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAParent" flags="ig" index="9SLcT" />
      <concept id="6702802731807424858" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAnAncestor" flags="in" index="9SQb8" />
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="4303308395523343364" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_link" flags="ng" index="2DA6wF" />
      <concept id="4303308395523096213" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childConcept" flags="ng" index="2DD5aU" />
      <concept id="6738154313879680265" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childNode" flags="nn" index="2H4GUG" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1163200368514" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSetHandler" flags="in" index="3k9gUc" />
      <concept id="1163200647017" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode" flags="nn" index="3kakTB" />
      <concept id="1163202640154" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_newReferentNode" flags="nn" index="3khVwk" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807532730" name="canBeAncestor" index="9SGkC" />
        <child id="6702802731807532712" name="canBeParent" index="9SGkU" />
        <child id="6702802731807737306" name="canBeChild" index="9Vyp8" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1163203787401" name="referentSetHandler" index="3kmjI7" />
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
      <concept id="1138676077309" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="nn" index="uoxfO">
        <reference id="1138676095763" name="enumMember" index="uo_Cq" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1180031783296" name="jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation" flags="nn" index="2Zo12i">
        <child id="1180031783297" name="conceptArgument" index="2Zo12j" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1182511038748" name="jetbrains.mps.lang.smodel.structure.Model_NodesIncludingImportedOperation" flags="nn" index="1j9C0f">
        <reference id="1182511038750" name="concept" index="1j9C0d" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1146171026731" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum" flags="nn" index="3t7uKx">
        <child id="1146171026732" name="value" index="3t7uKA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="1M2fIO" id="1Sb3mAPwI3y">
    <ref role="1M2myG" to="7ggn:29R9$zZUovC" resolve="AbstractRule" />
    <node concept="9SLcT" id="30fQumnF2t7" role="9SGkU">
      <node concept="3clFbS" id="30fQumnF2t8" role="2VODD2">
        <node concept="3clFbF" id="30fQumnF2$r" role="3cqZAp">
          <node concept="22lmx$" id="30fQumnFh7t" role="3clFbG">
            <node concept="2OqwBi" id="30fQumnFizq" role="3uHU7w">
              <node concept="2DD5aU" id="30fQumnFhfp" role="2Oq$k0" />
              <node concept="2Zo12i" id="30fQumnFiR0" role="2OqNvi">
                <node concept="chp4Y" id="jVwYUSRo1t" role="2Zo12j">
                  <ref role="cht4Q" to="7ggn:jVwYUSRkKt" resolve="ContextType" />
                </node>
              </node>
            </node>
            <node concept="17QLQc" id="30fQumnFgmJ" role="3uHU7B">
              <node concept="2DA6wF" id="30fQumnFdks" role="3uHU7B" />
              <node concept="359W_D" id="30fQumnFfPm" role="3uHU7w">
                <ref role="359W_E" to="7ggn:1Sb3mAPvh8b" resolve="Rule" />
                <ref role="359W_F" to="7ggn:1Sb3mAPxB$N" resolve="context" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9SQb8" id="3qVwZ8sDqlV" role="9SGkC">
      <node concept="3clFbS" id="3qVwZ8sDqlW" role="2VODD2">
        <node concept="3clFbF" id="3qVwZ8sDqth" role="3cqZAp">
          <node concept="3fqX7Q" id="3qVwZ8sI287" role="3clFbG">
            <node concept="1eOMI4" id="4KjhF$ZQPcF" role="3fr31v">
              <node concept="1Wc70l" id="6vHgrsT3uai" role="1eOMHV">
                <node concept="1eOMI4" id="6vHgrsT3uqo" role="3uHU7w">
                  <node concept="1Wc70l" id="6vHgrsT3D8g" role="1eOMHV">
                    <node concept="2OqwBi" id="6vHgrsT3z$e" role="3uHU7B">
                      <node concept="2OqwBi" id="6vHgrsT3yap" role="2Oq$k0">
                        <node concept="1PxgMI" id="6vHgrsT3xgU" role="2Oq$k0">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="6vHgrsT3xDo" role="3oSUPX">
                            <ref role="cht4Q" to="tpee:hGd03cG" resolve="BaseAssignmentExpression" />
                          </node>
                          <node concept="2H4GUG" id="6vHgrsT3_fH" role="1m5AlR" />
                        </node>
                        <node concept="3TrEf2" id="6vHgrsT3yM9" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fz7vLUn" resolve="lValue" />
                        </node>
                      </node>
                      <node concept="1mIQ4w" id="6vHgrsT3$99" role="2OqNvi">
                        <node concept="chp4Y" id="6vHgrsT3Aep" role="cj9EA">
                          <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6vHgrsT3I$K" role="3uHU7w">
                      <node concept="2OqwBi" id="6vHgrsT3GYM" role="2Oq$k0">
                        <node concept="1PxgMI" id="6vHgrsT3G1h" role="2Oq$k0">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="6vHgrsT3Gtu" role="3oSUPX">
                            <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                          </node>
                          <node concept="2OqwBi" id="6vHgrsT3Dy$" role="1m5AlR">
                            <node concept="1PxgMI" id="6vHgrsT3Dy_" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="6vHgrsT3DyA" role="3oSUPX">
                                <ref role="cht4Q" to="tpee:hGd03cG" resolve="BaseAssignmentExpression" />
                              </node>
                              <node concept="2H4GUG" id="6vHgrsT3DyB" role="1m5AlR" />
                            </node>
                            <node concept="3TrEf2" id="6vHgrsT3DyC" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:fz7vLUn" resolve="lValue" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6vHgrsT3HOG" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                        </node>
                      </node>
                      <node concept="1mIQ4w" id="6vHgrsT3J9F" role="2OqNvi">
                        <node concept="chp4Y" id="6vHgrsT3JBl" role="cj9EA">
                          <ref role="cht4Q" to="tp25:g$eCIIG" resolve="SNodeOperation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="3qVwZ8sI6oy" role="3uHU7B">
                  <node concept="2OqwBi" id="3qVwZ8sI37I" role="3uHU7B">
                    <node concept="2H4GUG" id="3qVwZ8sI2uB" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="3qVwZ8sI3zt" role="2OqNvi">
                      <node concept="chp4Y" id="3qVwZ8sI9r8" role="cj9EA">
                        <ref role="cht4Q" to="tpee:hGd03cG" resolve="BaseAssignmentExpression" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="3qVwZ8sI6IZ" role="3uHU7w">
                    <node concept="2OqwBi" id="3qVwZ8sI82M" role="3fr31v">
                      <node concept="2H4GUG" id="3qVwZ8sI7$C" role="2Oq$k0" />
                      <node concept="1mIQ4w" id="3qVwZ8sI8xT" role="2OqNvi">
                        <node concept="chp4Y" id="3qVwZ8sI8VV" role="cj9EA">
                          <ref role="cht4Q" to="7ggn:3qVwZ8sHWnm" resolve="RuleAssignmentExpression" />
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
  <node concept="1M2fIO" id="jVwYUSQ$jb">
    <ref role="1M2myG" to="7ggn:jVwYUSPLKM" resolve="ThisExpression" />
    <node concept="9S07l" id="jVwYUSQ$jc" role="9Vyp8">
      <node concept="3clFbS" id="jVwYUSQ$jd" role="2VODD2">
        <node concept="3clFbF" id="jVwYUSQ$LJ" role="3cqZAp">
          <node concept="3y3z36" id="147CB3QsVcZ" role="3clFbG">
            <node concept="10Nm6u" id="147CB3QsVd0" role="3uHU7w" />
            <node concept="2OqwBi" id="147CB3QsVd1" role="3uHU7B">
              <node concept="nLn13" id="147CB3QsVd2" role="2Oq$k0" />
              <node concept="2Xjw5R" id="147CB3QsVd3" role="2OqNvi">
                <node concept="1xMEDy" id="147CB3QsVd4" role="1xVPHs">
                  <node concept="chp4Y" id="29R9$$00x2K" role="ri$Ld">
                    <ref role="cht4Q" to="7ggn:29R9$zZUovC" resolve="AbstractRule" />
                  </node>
                </node>
                <node concept="1xIGOp" id="147CB3QsVd6" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="29R9$zYWrlN">
    <ref role="1M2myG" to="7ggn:29R9$zYWiFR" resolve="OppositeLinkAccess" />
    <node concept="1N5Pfh" id="29R9$zYWrq2" role="1Mr941">
      <ref role="1N5Vy1" to="tp25:gzTtc_y" resolve="link" />
      <node concept="3dgokm" id="29R9$zYWruk" role="1N6uqs">
        <node concept="3clFbS" id="29R9$zYWrum" role="2VODD2">
          <node concept="3cpWs8" id="5Vvmn_QkSkM" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_QkSkN" role="3cpWs9">
              <property role="TrG5h" value="dotOperandConcept" />
              <node concept="3Tqbb2" id="5Vvmn_QkSkO" role="1tU5fm">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
              <node concept="2OqwBi" id="5Vvmn_QkSkP" role="33vP2m">
                <node concept="2qgKlT" id="5Vvmn_QkSkQ" role="2OqNvi">
                  <ref role="37wK5l" to="tpeu:hEwJdFJ" resolve="getLeftNodeConcept" />
                  <node concept="1PxgMI" id="5Vvmn_QkSkR" role="37wK5m">
                    <node concept="1eOMI4" id="5Vvmn_QkSlC" role="1m5AlR">
                      <node concept="3K4zz7" id="5Vvmn_QkSlD" role="1eOMHV">
                        <node concept="2rP1CM" id="5Vvmn_QkSlE" role="3K4E3e" />
                        <node concept="2OqwBi" id="5Vvmn_QkSlF" role="3K4Cdx">
                          <node concept="3kakTB" id="5Vvmn_QkSlG" role="2Oq$k0" />
                          <node concept="3w_OXm" id="5Vvmn_QkSlH" role="2OqNvi" />
                        </node>
                        <node concept="2OqwBi" id="5Vvmn_QkSlI" role="3K4GZi">
                          <node concept="3kakTB" id="5Vvmn_QkSlJ" role="2Oq$k0" />
                          <node concept="1mfA1w" id="5Vvmn_QkSlK" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="chp4Y" id="5Vvmn_QkSkT" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                    </node>
                  </node>
                </node>
                <node concept="35c_gC" id="5Vvmn_QkSkU" role="2Oq$k0">
                  <ref role="35c_gD" to="tp25:g$eCIIG" resolve="SNodeOperation" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="29R9$zZjP5$" role="3cqZAp">
            <node concept="3cpWsn" id="29R9$zZjP5_" role="3cpWs9">
              <property role="TrG5h" value="links" />
              <node concept="A3Dl8" id="29R9$zZjP5w" role="1tU5fm">
                <node concept="3Tqbb2" id="29R9$zZjP5z" role="A3Ik2">
                  <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                </node>
              </node>
              <node concept="2OqwBi" id="29R9$zZjP5A" role="33vP2m">
                <node concept="2OqwBi" id="29R9$zZjP5B" role="2Oq$k0">
                  <node concept="2OqwBi" id="29R9$zZjP5C" role="2Oq$k0">
                    <node concept="2rP1CM" id="29R9$zZjP5D" role="2Oq$k0" />
                    <node concept="I4A8Y" id="29R9$zZjP5E" role="2OqNvi" />
                  </node>
                  <node concept="1j9C0f" id="29R9$zZjP5F" role="2OqNvi">
                    <ref role="1j9C0d" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                  </node>
                </node>
                <node concept="3zZkjj" id="29R9$zZjP5G" role="2OqNvi">
                  <node concept="1bVj0M" id="29R9$zZjP5H" role="23t8la">
                    <node concept="3clFbS" id="29R9$zZjP5I" role="1bW5cS">
                      <node concept="3clFbF" id="29R9$zZjP5J" role="3cqZAp">
                        <node concept="1Wc70l" id="29R9$zZjP5K" role="3clFbG">
                          <node concept="2OqwBi" id="29R9$zZjP5L" role="3uHU7w">
                            <node concept="2OqwBi" id="29R9$zZjP5M" role="2Oq$k0">
                              <node concept="37vLTw" id="29R9$zZjP5N" role="2Oq$k0">
                                <ref role="3cqZAo" node="29R9$zZjP5X" resolve="lc" />
                              </node>
                              <node concept="3TrEf2" id="29R9$zZjP5O" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="29R9$zZjP5P" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:73yVtVlWOga" resolve="isSubconceptOf" />
                              <node concept="37vLTw" id="29R9$zZjP5Q" role="37wK5m">
                                <ref role="3cqZAo" node="5Vvmn_QkSkN" resolve="dotOperandConcept" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="29R9$zZjP5R" role="3uHU7B">
                            <node concept="2OqwBi" id="29R9$zZjP5S" role="2Oq$k0">
                              <node concept="37vLTw" id="29R9$zZjP5T" role="2Oq$k0">
                                <ref role="3cqZAo" node="29R9$zZjP5X" resolve="lc" />
                              </node>
                              <node concept="3TrcHB" id="29R9$zZjP5U" role="2OqNvi">
                                <ref role="3TsBF5" to="tpce:fA0lm$B" resolve="metaClass" />
                              </node>
                            </node>
                            <node concept="3t7uKx" id="29R9$zZjP5V" role="2OqNvi">
                              <node concept="uoxfO" id="29R9$zZjP5W" role="3t7uKA">
                                <ref role="uo_Cq" to="tpce:fLJjDmS" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="29R9$zZjP5X" role="1bW2Oz">
                      <property role="TrG5h" value="lc" />
                      <node concept="2jxLKc" id="29R9$zZjP5Y" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="29R9$zZA4x0" role="3cqZAp">
            <node concept="2YIFZM" id="29R9$zZA5Ms" role="3cqZAk">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="37vLTw" id="29R9$zZA6ee" role="37wK5m">
                <ref role="3cqZAo" node="29R9$zZjP5_" resolve="links" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9S07l" id="29R9$zYZDBF" role="9Vyp8">
      <node concept="3clFbS" id="29R9$zYZDBG" role="2VODD2">
        <node concept="3clFbF" id="29R9$zYZE4V" role="3cqZAp">
          <node concept="3y3z36" id="29R9$zYZGXk" role="3clFbG">
            <node concept="10Nm6u" id="29R9$zYZH9R" role="3uHU7w" />
            <node concept="2OqwBi" id="29R9$zYZEod" role="3uHU7B">
              <node concept="nLn13" id="29R9$zYZLs1" role="2Oq$k0" />
              <node concept="2Xjw5R" id="29R9$zYZEGn" role="2OqNvi">
                <node concept="1xMEDy" id="29R9$zYZEGp" role="1xVPHs">
                  <node concept="chp4Y" id="29R9$$00PTB" role="ri$Ld">
                    <ref role="cht4Q" to="7ggn:29R9$zZUovC" resolve="AbstractRule" />
                  </node>
                </node>
                <node concept="1xIGOp" id="29R9$zYZFjs" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="29R9$zYZHTm">
    <ref role="1M2myG" to="7ggn:3qVwZ8sHWnm" resolve="RuleAssignmentExpression" />
    <node concept="9S07l" id="29R9$zYZI97" role="9Vyp8">
      <node concept="3clFbS" id="29R9$zYZI98" role="2VODD2">
        <node concept="3clFbF" id="29R9$zYZIgq" role="3cqZAp">
          <node concept="3y3z36" id="29R9$zYZKwq" role="3clFbG">
            <node concept="10Nm6u" id="29R9$zYZKGS" role="3uHU7w" />
            <node concept="2OqwBi" id="29R9$zYZIgs" role="3uHU7B">
              <node concept="nLn13" id="29R9$zYZIgt" role="2Oq$k0" />
              <node concept="2Xjw5R" id="29R9$zYZIgu" role="2OqNvi">
                <node concept="1xMEDy" id="29R9$zYZIgv" role="1xVPHs">
                  <node concept="chp4Y" id="29R9$$00Mh4" role="ri$Ld">
                    <ref role="cht4Q" to="7ggn:29R9$zZUovC" resolve="AbstractRule" />
                  </node>
                </node>
                <node concept="1xIGOp" id="29R9$zYZIgx" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="29R9$$00xUs">
    <ref role="1M2myG" to="7ggn:29R9$zZU3_j" resolve="ConceptRuleSet" />
    <node concept="1N5Pfh" id="29R9$$00xUt" role="1Mr941">
      <ref role="1N5Vy1" to="7ggn:29R9$zZU3_y" resolve="concept" />
      <node concept="3k9gUc" id="29R9$$00xUw" role="3kmjI7">
        <node concept="3clFbS" id="29R9$$00xUx" role="2VODD2">
          <node concept="3clFbF" id="29R9$$00xUJ" role="3cqZAp">
            <node concept="37vLTI" id="29R9$$00yXA" role="3clFbG">
              <node concept="3cpWs3" id="29R9$$00zGa" role="37vLTx">
                <node concept="2OqwBi" id="29R9$$00$5e" role="3uHU7B">
                  <node concept="3khVwk" id="29R9$$00zN8" role="2Oq$k0" />
                  <node concept="3TrcHB" id="29R9$$00$q$" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="29R9$$00zmB" role="3uHU7w">
                  <property role="Xl_RC" value="_RuleSet" />
                </node>
              </node>
              <node concept="2OqwBi" id="29R9$$00y4B" role="37vLTJ">
                <node concept="3kakTB" id="29R9$$00xUI" role="2Oq$k0" />
                <node concept="3TrcHB" id="29R9$$00yhG" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

