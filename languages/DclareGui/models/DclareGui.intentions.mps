<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b16073d8-49fb-4443-a2a8-a6d757eb11c4(DclareGui.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="53d4" ref="r:0049729d-ba70-461b-8d8a-b0755e3bfabb(DclareGui.structure)" implicit="true" />
    <import index="eud2" ref="r:35eece78-0a77-4f6d-9311-e4198940cf3a(DclareGui.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2S6QgY" id="4OSO3Oxwtnf">
    <property role="3GE5qa" value="diagrams" />
    <property role="TrG5h" value="ZoomIn" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="53d4:3psr82$eZ54" resolve="IDiagram" />
    <node concept="2S6ZIM" id="4OSO3Oxwtng" role="2ZfVej">
      <node concept="3clFbS" id="4OSO3Oxwtnh" role="2VODD2">
        <node concept="3clFbF" id="4OSO3OxwtGZ" role="3cqZAp">
          <node concept="Xl_RD" id="4OSO3OxwtGY" role="3clFbG">
            <property role="Xl_RC" value="Zoom In" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4OSO3Oxwtni" role="2ZfgGD">
      <node concept="3clFbS" id="4OSO3Oxwtnj" role="2VODD2">
        <node concept="3clFbF" id="4OSO3OxwuGf" role="3cqZAp">
          <node concept="2OqwBi" id="4OSO3OxwuGg" role="3clFbG">
            <node concept="2Sf5sV" id="4OSO3OxwuGh" role="2Oq$k0" />
            <node concept="2qgKlT" id="4OSO3OxwuGi" role="2OqNvi">
              <ref role="37wK5l" to="eud2:4OSO3OxwkGs" resolve="zoom" />
              <node concept="3b6qkQ" id="4OSO3OxwuNY" role="37wK5m">
                <property role="$nhwW" value="1.1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4OSO3Oxwtvv">
    <property role="3GE5qa" value="diagrams" />
    <property role="TrG5h" value="ZoomOut" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="53d4:3psr82$eZ54" resolve="IDiagram" />
    <node concept="2S6ZIM" id="4OSO3Oxwtvw" role="2ZfVej">
      <node concept="3clFbS" id="4OSO3Oxwtvx" role="2VODD2">
        <node concept="3clFbF" id="4OSO3Oxwu18" role="3cqZAp">
          <node concept="Xl_RD" id="4OSO3Oxwu17" role="3clFbG">
            <property role="Xl_RC" value="Zoom Out" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4OSO3Oxwtvy" role="2ZfgGD">
      <node concept="3clFbS" id="4OSO3Oxwtvz" role="2VODD2">
        <node concept="3clFbF" id="4OSO3Oxwu8j" role="3cqZAp">
          <node concept="2OqwBi" id="4OSO3Oxwuiv" role="3clFbG">
            <node concept="2Sf5sV" id="4OSO3Oxwu8i" role="2Oq$k0" />
            <node concept="2qgKlT" id="4OSO3OxwusQ" role="2OqNvi">
              <ref role="37wK5l" to="eud2:4OSO3OxwkGs" resolve="zoom" />
              <node concept="3b6qkQ" id="4OSO3OxwuyG" role="37wK5m">
                <property role="$nhwW" value="0.9" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4OSO3OxwCP$">
    <property role="3GE5qa" value="diagrams" />
    <property role="TrG5h" value="SnapToGrid" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="53d4:3psr82$eZ54" resolve="IDiagram" />
    <node concept="2S6ZIM" id="4OSO3OxwCP_" role="2ZfVej">
      <node concept="3clFbS" id="4OSO3OxwCPA" role="2VODD2">
        <node concept="3clFbF" id="4OSO3OxwCWr" role="3cqZAp">
          <node concept="Xl_RD" id="4OSO3OxwCWq" role="3clFbG">
            <property role="Xl_RC" value="Snap To Grid" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4OSO3OxwCPB" role="2ZfgGD">
      <node concept="3clFbS" id="4OSO3OxwCPC" role="2VODD2">
        <node concept="3clFbF" id="4OSO3OxwGYn" role="3cqZAp">
          <node concept="2OqwBi" id="4OSO3OxwH8z" role="3clFbG">
            <node concept="2Sf5sV" id="4OSO3OxwGYm" role="2Oq$k0" />
            <node concept="2qgKlT" id="4OSO3OxwHiU" role="2OqNvi">
              <ref role="37wK5l" to="eud2:4OSO3OxwD9o" resolve="snapToGrid" />
              <node concept="3cmrfG" id="4OSO3OxwHo5" role="37wK5m">
                <property role="3cmrfH" value="20" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

