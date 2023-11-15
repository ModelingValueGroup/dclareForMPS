<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:35eece78-0a77-4f6d-9311-e4198940cf3a(DclareGui.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="53d4" ref="r:0049729d-ba70-461b-8d8a-b0755e3bfabb(DclareGui.structure)" implicit="true" />
  </imports>
  <registry>
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
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
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
  <node concept="13h7C7" id="4OSO3OxwkED">
    <property role="3GE5qa" value="diagrams" />
    <ref role="13h7C2" to="53d4:3psr82$eZ54" resolve="IDiagram" />
    <node concept="13i0hz" id="4OSO3OxwkGs" role="13h7CS">
      <property role="TrG5h" value="zoom" />
      <node concept="37vLTG" id="4OSO3OxwkHR" role="3clF46">
        <property role="TrG5h" value="amount" />
        <node concept="10P55v" id="4OSO3OxwkId" role="1tU5fm" />
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
                  <ref role="37wK5l" node="4OSO3OxwlqN" resolve="zoom" />
                  <node concept="37vLTw" id="4OSO3Oxwtma" role="37wK5m">
                    <ref role="3cqZAo" node="4OSO3OxwkHR" resolve="amount" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4OSO3OxwD9o" role="13h7CS">
      <property role="TrG5h" value="snapToGrid" />
      <node concept="37vLTG" id="4OSO3OxwDdj" role="3clF46">
        <property role="TrG5h" value="gridSize" />
        <node concept="10Oyi0" id="4OSO3OxwDdD" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4OSO3OxwD9p" role="1B3o_S" />
      <node concept="3cqZAl" id="4OSO3OxwDbg" role="3clF45" />
      <node concept="3clFbS" id="4OSO3OxwD9r" role="3clF47">
        <node concept="2Gpval" id="4OSO3OxwGcY" role="3cqZAp">
          <node concept="2GrKxI" id="4OSO3OxwGcZ" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
          <node concept="2OqwBi" id="4OSO3OxwGd0" role="2GsD0m">
            <node concept="13iPFW" id="4OSO3OxwGd1" role="2Oq$k0" />
            <node concept="3Tsc0h" id="4OSO3OxwGd2" role="2OqNvi">
              <ref role="3TtcxE" to="53d4:31sbKqyPLDh" resolve="nodes" />
            </node>
          </node>
          <node concept="3clFbS" id="4OSO3OxwGd3" role="2LFqv$">
            <node concept="3clFbF" id="4OSO3OxwGd4" role="3cqZAp">
              <node concept="2OqwBi" id="4OSO3OxwGd5" role="3clFbG">
                <node concept="2GrUjf" id="4OSO3OxwGd6" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4OSO3OxwGcZ" resolve="node" />
                </node>
                <node concept="2qgKlT" id="4OSO3OxwGd7" role="2OqNvi">
                  <ref role="37wK5l" node="4OSO3OxwE6V" resolve="snapToGrid" />
                  <node concept="37vLTw" id="4OSO3OxwGd8" role="37wK5m">
                    <ref role="3cqZAo" node="4OSO3OxwDdj" resolve="gridSize" />
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
      <property role="TrG5h" value="zoom" />
      <node concept="37vLTG" id="4OSO3OxwlqO" role="3clF46">
        <property role="TrG5h" value="amount" />
        <node concept="10P55v" id="4OSO3OxwlqP" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4OSO3OxwlqQ" role="1B3o_S" />
      <node concept="3cqZAl" id="4OSO3OxwlqR" role="3clF45" />
      <node concept="3clFbS" id="4OSO3OxwlqS" role="3clF47">
        <node concept="3clFbF" id="4OSO3OxwrC$" role="3cqZAp">
          <node concept="37vLTI" id="4OSO3OxwrC_" role="3clFbG">
            <node concept="10QFUN" id="4OSO3OxwrCA" role="37vLTx">
              <node concept="10Oyi0" id="4OSO3OxwrCB" role="10QFUM" />
              <node concept="1eOMI4" id="4OSO3OxwrCC" role="10QFUP">
                <node concept="17qRlL" id="4OSO3OxwrCD" role="1eOMHV">
                  <node concept="2OqwBi" id="4OSO3OxwrCE" role="3uHU7B">
                    <node concept="13iPFW" id="4OSO3OxwrCF" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4OSO3OxwrCG" role="2OqNvi">
                      <ref role="3TsBF5" to="53d4:31sbKqyPLDJ" resolve="x" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4OSO3OxwrCH" role="3uHU7w">
                    <ref role="3cqZAo" node="4OSO3OxwlqO" resolve="amount" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4OSO3OxwrCI" role="37vLTJ">
              <node concept="13iPFW" id="4OSO3OxwrCJ" role="2Oq$k0" />
              <node concept="3TrcHB" id="4OSO3OxwrCK" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPLDJ" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OSO3OxwrCL" role="3cqZAp">
          <node concept="37vLTI" id="4OSO3OxwrCM" role="3clFbG">
            <node concept="10QFUN" id="4OSO3OxwrCN" role="37vLTx">
              <node concept="10Oyi0" id="4OSO3OxwrCO" role="10QFUM" />
              <node concept="1eOMI4" id="4OSO3OxwrCP" role="10QFUP">
                <node concept="17qRlL" id="4OSO3OxwrCQ" role="1eOMHV">
                  <node concept="2OqwBi" id="4OSO3OxwrCR" role="3uHU7B">
                    <node concept="13iPFW" id="4OSO3OxwrCS" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4OSO3OxwrCT" role="2OqNvi">
                      <ref role="3TsBF5" to="53d4:31sbKqyPLDL" resolve="y" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4OSO3OxwrCU" role="3uHU7w">
                    <ref role="3cqZAo" node="4OSO3OxwlqO" resolve="amount" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4OSO3OxwrCV" role="37vLTJ">
              <node concept="13iPFW" id="4OSO3OxwrCW" role="2Oq$k0" />
              <node concept="3TrcHB" id="4OSO3OxwrCX" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPLDL" resolve="y" />
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
                  <ref role="2Gs0qQ" node="4OSO3OxwlqU" resolve="node" />
                </node>
                <node concept="2qgKlT" id="4OSO3OxwrwX" role="2OqNvi">
                  <ref role="37wK5l" node="4OSO3OxwlAu" resolve="zoom" />
                  <node concept="37vLTw" id="4OSO3OxwrAs" role="37wK5m">
                    <ref role="3cqZAo" node="4OSO3OxwlqO" resolve="amount" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4OSO3OxwE6V" role="13h7CS">
      <property role="TrG5h" value="snapToGrid" />
      <node concept="37vLTG" id="4OSO3OxwE6W" role="3clF46">
        <property role="TrG5h" value="gridSize" />
        <node concept="10Oyi0" id="4OSO3OxwE6X" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4OSO3OxwE6Y" role="1B3o_S" />
      <node concept="3cqZAl" id="4OSO3OxwE6Z" role="3clF45" />
      <node concept="3clFbS" id="4OSO3OxwE70" role="3clF47">
        <node concept="3clFbF" id="4OSO3OxwEav" role="3cqZAp">
          <node concept="37vLTI" id="4OSO3OxwEaw" role="3clFbG">
            <node concept="2OqwBi" id="4OSO3OxwEaD" role="37vLTJ">
              <node concept="13iPFW" id="4OSO3OxwEaE" role="2Oq$k0" />
              <node concept="3TrcHB" id="4OSO3OxwEaF" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPLDJ" resolve="x" />
              </node>
            </node>
            <node concept="17qRlL" id="4OSO3OxwNdW" role="37vLTx">
              <node concept="37vLTw" id="4OSO3OxwOgG" role="3uHU7w">
                <ref role="3cqZAo" node="4OSO3OxwE6W" resolve="gridSize" />
              </node>
              <node concept="FJ1c_" id="4OSO3OxwLa7" role="3uHU7B">
                <node concept="1eOMI4" id="4OSO3OxwKM5" role="3uHU7B">
                  <node concept="3cpWs3" id="4OSO3OxwJXR" role="1eOMHV">
                    <node concept="FJ1c_" id="4OSO3OxwKyj" role="3uHU7w">
                      <node concept="3cmrfG" id="4OSO3OxwKym" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="37vLTw" id="4OSO3OxwKaH" role="3uHU7B">
                        <ref role="3cqZAo" node="4OSO3OxwE6W" resolve="gridSize" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4OSO3OxwIK8" role="3uHU7B">
                      <node concept="13iPFW" id="4OSO3OxwIqx" role="2Oq$k0" />
                      <node concept="3TrcHB" id="4OSO3OxwJ6h" role="2OqNvi">
                        <ref role="3TsBF5" to="53d4:31sbKqyPLDJ" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4OSO3OxwLnq" role="3uHU7w">
                  <ref role="3cqZAo" node="4OSO3OxwE6W" resolve="gridSize" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OSO3OxwEaG" role="3cqZAp">
          <node concept="37vLTI" id="4OSO3OxwEaH" role="3clFbG">
            <node concept="2OqwBi" id="4OSO3OxwEaQ" role="37vLTJ">
              <node concept="13iPFW" id="4OSO3OxwEaR" role="2Oq$k0" />
              <node concept="3TrcHB" id="4OSO3OxwEaS" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPLDL" resolve="y" />
              </node>
            </node>
            <node concept="17qRlL" id="4OSO3OxwOtY" role="37vLTx">
              <node concept="37vLTw" id="4OSO3OxwOtZ" role="3uHU7w">
                <ref role="3cqZAo" node="4OSO3OxwE6W" resolve="gridSize" />
              </node>
              <node concept="FJ1c_" id="4OSO3OxwOu0" role="3uHU7B">
                <node concept="1eOMI4" id="4OSO3OxwOu1" role="3uHU7B">
                  <node concept="3cpWs3" id="4OSO3OxwOu2" role="1eOMHV">
                    <node concept="FJ1c_" id="4OSO3OxwOu3" role="3uHU7w">
                      <node concept="3cmrfG" id="4OSO3OxwOu4" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="37vLTw" id="4OSO3OxwOu5" role="3uHU7B">
                        <ref role="3cqZAo" node="4OSO3OxwE6W" resolve="gridSize" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4OSO3OxwOu6" role="3uHU7B">
                      <node concept="13iPFW" id="4OSO3OxwOu7" role="2Oq$k0" />
                      <node concept="3TrcHB" id="4OSO3OxwP9r" role="2OqNvi">
                        <ref role="3TsBF5" to="53d4:31sbKqyPLDL" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4OSO3OxwOu9" role="3uHU7w">
                  <ref role="3cqZAo" node="4OSO3OxwE6W" resolve="gridSize" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4OSO3OxwEaT" role="3cqZAp">
          <node concept="2GrKxI" id="4OSO3OxwEaU" role="2Gsz3X">
            <property role="TrG5h" value="edge" />
          </node>
          <node concept="2OqwBi" id="4OSO3OxwEaV" role="2GsD0m">
            <node concept="13iPFW" id="4OSO3OxwEaW" role="2Oq$k0" />
            <node concept="3Tsc0h" id="4OSO3OxwEaX" role="2OqNvi">
              <ref role="3TtcxE" to="53d4:31sbKqyPLEi" resolve="edges" />
            </node>
          </node>
          <node concept="3clFbS" id="4OSO3OxwEaY" role="2LFqv$">
            <node concept="3clFbF" id="4OSO3OxwEaZ" role="3cqZAp">
              <node concept="2OqwBi" id="4OSO3OxwEb0" role="3clFbG">
                <node concept="2GrUjf" id="4OSO3OxwEb1" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4OSO3OxwEaU" resolve="edge" />
                </node>
                <node concept="2qgKlT" id="4OSO3OxwEb2" role="2OqNvi">
                  <ref role="37wK5l" node="4OSO3OxwDmA" resolve="snapToGrid" />
                  <node concept="37vLTw" id="4OSO3OxwEb3" role="37wK5m">
                    <ref role="3cqZAo" node="4OSO3OxwE6W" resolve="gridSize" />
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
      <property role="TrG5h" value="zoom" />
      <node concept="37vLTG" id="4OSO3OxwlAv" role="3clF46">
        <property role="TrG5h" value="amount" />
        <node concept="10P55v" id="4OSO3OxwlAw" role="1tU5fm" />
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
                  <ref role="2Gs0qQ" node="4OSO3OxwlA_" resolve="node" />
                </node>
                <node concept="2qgKlT" id="4OSO3OxwqTQ" role="2OqNvi">
                  <ref role="37wK5l" node="4OSO3OxwlP0" resolve="zoom" />
                  <node concept="37vLTw" id="4OSO3OxwqZl" role="37wK5m">
                    <ref role="3cqZAo" node="4OSO3OxwlAv" resolve="amount" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4OSO3OxwDmA" role="13h7CS">
      <property role="TrG5h" value="snapToGrid" />
      <node concept="37vLTG" id="4OSO3OxwDmB" role="3clF46">
        <property role="TrG5h" value="gridSize" />
        <node concept="10Oyi0" id="4OSO3OxwDmC" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4OSO3OxwDmD" role="1B3o_S" />
      <node concept="3cqZAl" id="4OSO3OxwDmE" role="3clF45" />
      <node concept="3clFbS" id="4OSO3OxwDmF" role="3clF47">
        <node concept="2Gpval" id="4OSO3OxwG_R" role="3cqZAp">
          <node concept="2GrKxI" id="4OSO3OxwG_S" role="2Gsz3X">
            <property role="TrG5h" value="joint" />
          </node>
          <node concept="2OqwBi" id="4OSO3OxwG_T" role="2GsD0m">
            <node concept="13iPFW" id="4OSO3OxwG_U" role="2Oq$k0" />
            <node concept="3Tsc0h" id="4OSO3OxwG_V" role="2OqNvi">
              <ref role="3TtcxE" to="53d4:31sbKqyPMf4" resolve="joints" />
            </node>
          </node>
          <node concept="3clFbS" id="4OSO3OxwG_W" role="2LFqv$">
            <node concept="3clFbF" id="4OSO3OxwG_X" role="3cqZAp">
              <node concept="2OqwBi" id="4OSO3OxwG_Y" role="3clFbG">
                <node concept="2GrUjf" id="4OSO3OxwG_Z" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4OSO3OxwG_S" resolve="joint" />
                </node>
                <node concept="2qgKlT" id="4OSO3OxwGA0" role="2OqNvi">
                  <ref role="37wK5l" node="4OSO3OxwDVA" resolve="snapToGrid" />
                  <node concept="37vLTw" id="4OSO3OxwGA1" role="37wK5m">
                    <ref role="3cqZAo" node="4OSO3OxwDmB" resolve="gridSize" />
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
      <property role="TrG5h" value="zoom" />
      <node concept="37vLTG" id="4OSO3OxwlP1" role="3clF46">
        <property role="TrG5h" value="amount" />
        <node concept="10P55v" id="4OSO3OxwlP2" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4OSO3OxwlP3" role="1B3o_S" />
      <node concept="3cqZAl" id="4OSO3OxwlP4" role="3clF45" />
      <node concept="3clFbS" id="4OSO3OxwlP5" role="3clF47">
        <node concept="3clFbF" id="4OSO3OxwlSw" role="3cqZAp">
          <node concept="37vLTI" id="4OSO3Oxwn9w" role="3clFbG">
            <node concept="10QFUN" id="4OSO3Oxwo48" role="37vLTx">
              <node concept="10Oyi0" id="4OSO3OxwofH" role="10QFUM" />
              <node concept="1eOMI4" id="4OSO3OxwoIJ" role="10QFUP">
                <node concept="17qRlL" id="4OSO3OxwnpT" role="1eOMHV">
                  <node concept="2OqwBi" id="4OSO3Oxwnnd" role="3uHU7B">
                    <node concept="13iPFW" id="4OSO3OxwnkH" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4OSO3Oxwnov" role="2OqNvi">
                      <ref role="3TsBF5" to="53d4:31sbKqyPMf7" resolve="x" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4OSO3Oxwn_f" role="3uHU7w">
                    <ref role="3cqZAo" node="4OSO3OxwlP1" resolve="amount" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4OSO3Oxwm1S" role="37vLTJ">
              <node concept="13iPFW" id="4OSO3OxwlSv" role="2Oq$k0" />
              <node concept="3TrcHB" id="4OSO3Oxwm9b" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPMf7" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OSO3Oxwp1V" role="3cqZAp">
          <node concept="37vLTI" id="4OSO3Oxwp1W" role="3clFbG">
            <node concept="10QFUN" id="4OSO3Oxwp1X" role="37vLTx">
              <node concept="10Oyi0" id="4OSO3Oxwp1Y" role="10QFUM" />
              <node concept="1eOMI4" id="4OSO3Oxwp1Z" role="10QFUP">
                <node concept="17qRlL" id="4OSO3Oxwp20" role="1eOMHV">
                  <node concept="2OqwBi" id="4OSO3Oxwp21" role="3uHU7B">
                    <node concept="13iPFW" id="4OSO3Oxwp22" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4OSO3OxwpLf" role="2OqNvi">
                      <ref role="3TsBF5" to="53d4:31sbKqyPMf9" resolve="y" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4OSO3Oxwp24" role="3uHU7w">
                    <ref role="3cqZAo" node="4OSO3OxwlP1" resolve="amount" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4OSO3Oxwp25" role="37vLTJ">
              <node concept="13iPFW" id="4OSO3Oxwp26" role="2Oq$k0" />
              <node concept="3TrcHB" id="4OSO3OxwpHQ" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPMf9" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4OSO3OxwDVA" role="13h7CS">
      <property role="TrG5h" value="snapToGrid" />
      <node concept="37vLTG" id="4OSO3OxwDVB" role="3clF46">
        <property role="TrG5h" value="gridSize" />
        <node concept="10Oyi0" id="4OSO3OxwDVC" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4OSO3OxwDVD" role="1B3o_S" />
      <node concept="3cqZAl" id="4OSO3OxwDVE" role="3clF45" />
      <node concept="3clFbS" id="4OSO3OxwDVF" role="3clF47">
        <node concept="3clFbF" id="4OSO3OxxR0D" role="3cqZAp">
          <node concept="37vLTI" id="4OSO3OxxR0E" role="3clFbG">
            <node concept="2OqwBi" id="4OSO3OxxR0F" role="37vLTJ">
              <node concept="13iPFW" id="4OSO3OxxR0G" role="2Oq$k0" />
              <node concept="3TrcHB" id="4OSO3OxxR0H" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPMf7" resolve="x" />
              </node>
            </node>
            <node concept="17qRlL" id="4OSO3OxxR0I" role="37vLTx">
              <node concept="37vLTw" id="4OSO3OxxR0J" role="3uHU7w">
                <ref role="3cqZAo" node="4OSO3OxwDVB" resolve="gridSize" />
              </node>
              <node concept="FJ1c_" id="4OSO3OxxR0K" role="3uHU7B">
                <node concept="1eOMI4" id="4OSO3OxxR0L" role="3uHU7B">
                  <node concept="3cpWs3" id="4OSO3OxxR0M" role="1eOMHV">
                    <node concept="FJ1c_" id="4OSO3OxxR0N" role="3uHU7w">
                      <node concept="3cmrfG" id="4OSO3OxxR0O" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="37vLTw" id="4OSO3OxxR0P" role="3uHU7B">
                        <ref role="3cqZAo" node="4OSO3OxwDVB" resolve="gridSize" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4OSO3OxxR0Q" role="3uHU7B">
                      <node concept="13iPFW" id="4OSO3OxxR0R" role="2Oq$k0" />
                      <node concept="3TrcHB" id="4OSO3OxxR0S" role="2OqNvi">
                        <ref role="3TsBF5" to="53d4:31sbKqyPMf7" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4OSO3OxxR0T" role="3uHU7w">
                  <ref role="3cqZAo" node="4OSO3OxwDVB" resolve="gridSize" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OSO3OxxR0U" role="3cqZAp">
          <node concept="37vLTI" id="4OSO3OxxR0V" role="3clFbG">
            <node concept="2OqwBi" id="4OSO3OxxR0W" role="37vLTJ">
              <node concept="13iPFW" id="4OSO3OxxR0X" role="2Oq$k0" />
              <node concept="3TrcHB" id="4OSO3OxxR0Y" role="2OqNvi">
                <ref role="3TsBF5" to="53d4:31sbKqyPMf9" resolve="y" />
              </node>
            </node>
            <node concept="17qRlL" id="4OSO3OxxR0Z" role="37vLTx">
              <node concept="37vLTw" id="4OSO3OxxR10" role="3uHU7w">
                <ref role="3cqZAo" node="4OSO3OxwDVB" resolve="gridSize" />
              </node>
              <node concept="FJ1c_" id="4OSO3OxxR11" role="3uHU7B">
                <node concept="1eOMI4" id="4OSO3OxxR12" role="3uHU7B">
                  <node concept="3cpWs3" id="4OSO3OxxR13" role="1eOMHV">
                    <node concept="FJ1c_" id="4OSO3OxxR14" role="3uHU7w">
                      <node concept="3cmrfG" id="4OSO3OxxR15" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="37vLTw" id="4OSO3OxxR16" role="3uHU7B">
                        <ref role="3cqZAo" node="4OSO3OxwDVB" resolve="gridSize" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4OSO3OxxR17" role="3uHU7B">
                      <node concept="13iPFW" id="4OSO3OxxR18" role="2Oq$k0" />
                      <node concept="3TrcHB" id="4OSO3OxxR19" role="2OqNvi">
                        <ref role="3TsBF5" to="53d4:31sbKqyPMf9" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4OSO3OxxR1a" role="3uHU7w">
                  <ref role="3cqZAo" node="4OSO3OxwDVB" resolve="gridSize" />
                </node>
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
</model>

