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
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807351367" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" flags="in" index="9S07l" />
      <concept id="6702802731807420587" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAParent" flags="ig" index="9SLcT" />
      <concept id="6702802731807424858" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAnAncestor" flags="in" index="9SQb8" />
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="4303308395523343364" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_link" flags="ng" index="2DA6wF" />
      <concept id="4303308395523096213" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childConcept" flags="ng" index="2DD5aU" />
      <concept id="6738154313879680265" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childNode" flags="nn" index="2H4GUG" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807532730" name="canBeAncestor" index="9SGkC" />
        <child id="6702802731807532712" name="canBeParent" index="9SGkU" />
        <child id="6702802731807737306" name="canBeChild" index="9Vyp8" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1180031783296" name="jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation" flags="nn" index="2Zo12i">
        <child id="1180031783297" name="conceptArgument" index="2Zo12j" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="1Sb3mAPwI3y">
    <ref role="1M2myG" to="7ggn:1Sb3mAPvh8b" resolve="Rule" />
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
          <node concept="1Wc70l" id="3qVwZ8sI1Nx" role="3clFbG">
            <node concept="3fqX7Q" id="3qVwZ8sI287" role="3uHU7w">
              <node concept="1eOMI4" id="3qVwZ8sI289" role="3fr31v">
                <node concept="1Wc70l" id="3qVwZ8sI6oy" role="1eOMHV">
                  <node concept="3fqX7Q" id="3qVwZ8sI6IZ" role="3uHU7w">
                    <node concept="1eOMI4" id="3qVwZ8sI6J1" role="3fr31v">
                      <node concept="2OqwBi" id="3qVwZ8sI82M" role="1eOMHV">
                        <node concept="2H4GUG" id="3qVwZ8sI7$C" role="2Oq$k0" />
                        <node concept="1mIQ4w" id="3qVwZ8sI8xT" role="2OqNvi">
                          <node concept="chp4Y" id="3qVwZ8sI8VV" role="cj9EA">
                            <ref role="cht4Q" to="7ggn:3qVwZ8sHWnm" resolve="RuleAssignmentExpression" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3qVwZ8sI37I" role="3uHU7B">
                    <node concept="2H4GUG" id="3qVwZ8sI2uB" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="3qVwZ8sI3zt" role="2OqNvi">
                      <node concept="chp4Y" id="3qVwZ8sI9r8" role="cj9EA">
                        <ref role="cht4Q" to="tpee:hGd03cG" resolve="BaseAssignmentExpression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="3qVwZ8sDBo1" role="3uHU7B">
              <node concept="1eOMI4" id="3qVwZ8sDBz9" role="3fr31v">
                <node concept="1Wc70l" id="3qVwZ8sDtGc" role="1eOMHV">
                  <node concept="2OqwBi" id="3qVwZ8sDr6N" role="3uHU7B">
                    <node concept="2H4GUG" id="3qVwZ8sDqtg" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="3qVwZ8sDrjy" role="2OqNvi">
                      <node concept="chp4Y" id="3qVwZ8sDrwh" role="cj9EA">
                        <ref role="cht4Q" to="tpee:gEShNN5" resolve="GenericNewExpression" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3qVwZ8sD_uB" role="3uHU7w">
                    <node concept="2OqwBi" id="3qVwZ8sD$yM" role="2Oq$k0">
                      <node concept="1PxgMI" id="3qVwZ8sDzVB" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="3qVwZ8sD$d0" role="3oSUPX">
                          <ref role="cht4Q" to="tpee:gEShNN5" resolve="GenericNewExpression" />
                        </node>
                        <node concept="2H4GUG" id="3qVwZ8sDyRA" role="1m5AlR" />
                      </node>
                      <node concept="3TrEf2" id="3qVwZ8sD$VB" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:gEShVi6" resolve="creator" />
                      </node>
                    </node>
                    <node concept="1mIQ4w" id="3qVwZ8sD_T7" role="2OqNvi">
                      <node concept="chp4Y" id="3qVwZ8sDAQR" role="cj9EA">
                        <ref role="cht4Q" to="tp25:hbzrR4P" resolve="SNodeCreator" />
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
                  <node concept="chp4Y" id="jVwYUSQ$Yc" role="ri$Ld">
                    <ref role="cht4Q" to="7ggn:1Sb3mAPvh8b" resolve="Rule" />
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
  <node concept="1M2fIO" id="3qVwZ8swOP6">
    <ref role="1M2myG" to="7ggn:3qVwZ8swO_Y" resolve="NodeDeclarationExpression" />
    <node concept="9S07l" id="3qVwZ8swOP7" role="9Vyp8">
      <node concept="3clFbS" id="3qVwZ8swOP8" role="2VODD2">
        <node concept="3clFbF" id="3qVwZ8swOWq" role="3cqZAp">
          <node concept="3y3z36" id="3qVwZ8swOWr" role="3clFbG">
            <node concept="10Nm6u" id="3qVwZ8swOWs" role="3uHU7w" />
            <node concept="2OqwBi" id="3qVwZ8swOWt" role="3uHU7B">
              <node concept="nLn13" id="3qVwZ8swOWu" role="2Oq$k0" />
              <node concept="2Xjw5R" id="3qVwZ8swOWv" role="2OqNvi">
                <node concept="1xMEDy" id="3qVwZ8swOWw" role="1xVPHs">
                  <node concept="chp4Y" id="3qVwZ8swOWx" role="ri$Ld">
                    <ref role="cht4Q" to="7ggn:1Sb3mAPvh8b" resolve="Rule" />
                  </node>
                </node>
                <node concept="1xIGOp" id="3qVwZ8swOWy" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3qVwZ8sKKqt">
    <ref role="1M2myG" to="7ggn:3qVwZ8sKKey" resolve="NodeExpression" />
    <node concept="9S07l" id="3qVwZ8sKKqu" role="9Vyp8">
      <node concept="3clFbS" id="3qVwZ8sKKqv" role="2VODD2">
        <node concept="3clFbF" id="3qVwZ8sKKxN" role="3cqZAp">
          <node concept="3y3z36" id="3qVwZ8sKKxO" role="3clFbG">
            <node concept="10Nm6u" id="3qVwZ8sKKxP" role="3uHU7w" />
            <node concept="2OqwBi" id="3qVwZ8sKKxQ" role="3uHU7B">
              <node concept="nLn13" id="3qVwZ8sKKxR" role="2Oq$k0" />
              <node concept="2Xjw5R" id="3qVwZ8sKKxS" role="2OqNvi">
                <node concept="1xMEDy" id="3qVwZ8sKKxT" role="1xVPHs">
                  <node concept="chp4Y" id="3qVwZ8sKKLl" role="ri$Ld">
                    <ref role="cht4Q" to="7ggn:3qVwZ8swO_Y" resolve="NodeDeclarationExpression" />
                  </node>
                </node>
                <node concept="1xIGOp" id="3qVwZ8sKKxV" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

