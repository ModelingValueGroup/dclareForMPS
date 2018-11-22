<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c7d5aae8-f5bf-4f88-8851-a39de153e482(DclareMPS.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
  </registry>
  <node concept="2S6QgY" id="3Qetf3e5wvc">
    <property role="TrG5h" value="AddComposite" />
    <property role="2ZfUl0" value="true" />
    <property role="3GE5qa" value="attributes" />
    <ref role="2ZfgGC" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="2S6ZIM" id="3Qetf3e5wvd" role="2ZfVej">
      <node concept="3clFbS" id="3Qetf3e5wve" role="2VODD2">
        <node concept="3clFbF" id="3Qetf3e5wCh" role="3cqZAp">
          <node concept="Xl_RD" id="3Qetf3e5wCg" role="3clFbG">
            <property role="Xl_RC" value="Make Composite" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3Qetf3e5wvf" role="2ZfgGD">
      <node concept="3clFbS" id="3Qetf3e5wvg" role="2VODD2">
        <node concept="3clFbF" id="3Qetf3e5zlR" role="3cqZAp">
          <node concept="37vLTI" id="3Qetf3e5$Ih" role="3clFbG">
            <node concept="3clFbT" id="3Qetf3e5$P_" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="3Qetf3e5ztY" role="37vLTJ">
              <node concept="2Sf5sV" id="3Qetf3e5zlQ" role="2Oq$k0" />
              <node concept="3TrcHB" id="3Qetf3e5$54" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:3Qetf3dy0jT" resolve="composite" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="3Qetf3e5$WF" role="2ZfVeh">
      <node concept="3clFbS" id="3Qetf3e5$WG" role="2VODD2">
        <node concept="3clFbF" id="3Qetf3e5_7E" role="3cqZAp">
          <node concept="3fqX7Q" id="3Qetf3e5EZX" role="3clFbG">
            <node concept="2OqwBi" id="3Qetf3e5EZZ" role="3fr31v">
              <node concept="2Sf5sV" id="3Qetf3e5F00" role="2Oq$k0" />
              <node concept="3TrcHB" id="3Qetf3e5F01" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:3Qetf3dy0jT" resolve="composite" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3Qetf3e5FGJ">
    <property role="TrG5h" value="RemoveComposite" />
    <property role="2ZfUl0" value="true" />
    <property role="3GE5qa" value="attributes" />
    <ref role="2ZfgGC" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="2S6ZIM" id="3Qetf3e5FGK" role="2ZfVej">
      <node concept="3clFbS" id="3Qetf3e5FGL" role="2VODD2">
        <node concept="3clFbF" id="3Qetf3e5FGM" role="3cqZAp">
          <node concept="Xl_RD" id="3Qetf3e5FGN" role="3clFbG">
            <property role="Xl_RC" value="Make Non Composite" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3Qetf3e5FGO" role="2ZfgGD">
      <node concept="3clFbS" id="3Qetf3e5FGP" role="2VODD2">
        <node concept="3clFbF" id="3Qetf3e5FGQ" role="3cqZAp">
          <node concept="37vLTI" id="3Qetf3e5FGR" role="3clFbG">
            <node concept="3clFbT" id="3Qetf3e5Hgd" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="2OqwBi" id="3Qetf3e5FGT" role="37vLTJ">
              <node concept="2Sf5sV" id="3Qetf3e5FGU" role="2Oq$k0" />
              <node concept="3TrcHB" id="3Qetf3e5FGV" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:3Qetf3dy0jT" resolve="composite" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="3Qetf3e5FGW" role="2ZfVeh">
      <node concept="3clFbS" id="3Qetf3e5FGX" role="2VODD2">
        <node concept="3clFbF" id="3Qetf3e5FGY" role="3cqZAp">
          <node concept="2OqwBi" id="3Qetf3e5FH0" role="3clFbG">
            <node concept="2Sf5sV" id="3Qetf3e5FH1" role="2Oq$k0" />
            <node concept="3TrcHB" id="3Qetf3e5FH2" role="2OqNvi">
              <ref role="3TsBF5" to="7ggn:3Qetf3dy0jT" resolve="composite" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="2UEyDf6OTck">
    <property role="TrG5h" value="AddIdentifying" />
    <property role="2ZfUl0" value="true" />
    <property role="3GE5qa" value="attributes" />
    <ref role="2ZfgGC" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="2S6ZIM" id="2UEyDf6OTcl" role="2ZfVej">
      <node concept="3clFbS" id="2UEyDf6OTcm" role="2VODD2">
        <node concept="3clFbF" id="2UEyDf6OTcn" role="3cqZAp">
          <node concept="Xl_RD" id="2UEyDf6OTco" role="3clFbG">
            <property role="Xl_RC" value="Make Identifying" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="2UEyDf6OTcp" role="2ZfgGD">
      <node concept="3clFbS" id="2UEyDf6OTcq" role="2VODD2">
        <node concept="3clFbF" id="2UEyDf6OTcr" role="3cqZAp">
          <node concept="37vLTI" id="2UEyDf6OTcs" role="3clFbG">
            <node concept="3clFbT" id="2UEyDf6OTct" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="2UEyDf6OTcu" role="37vLTJ">
              <node concept="2Sf5sV" id="2UEyDf6OTcv" role="2Oq$k0" />
              <node concept="3TrcHB" id="2UEyDf6OW6w" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:2UEyDf6lmL1" resolve="identifying" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="2UEyDf6OTcx" role="2ZfVeh">
      <node concept="3clFbS" id="2UEyDf6OTcy" role="2VODD2">
        <node concept="3clFbF" id="2UEyDf6OTcz" role="3cqZAp">
          <node concept="3fqX7Q" id="2UEyDf6OTc$" role="3clFbG">
            <node concept="2OqwBi" id="2UEyDf6OTc_" role="3fr31v">
              <node concept="2Sf5sV" id="2UEyDf6OTcA" role="2Oq$k0" />
              <node concept="3TrcHB" id="2UEyDf6OVv0" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:2UEyDf6lmL1" resolve="identifying" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="2UEyDf6OTcC">
    <property role="TrG5h" value="RemoveIdentifying" />
    <property role="2ZfUl0" value="true" />
    <property role="3GE5qa" value="attributes" />
    <ref role="2ZfgGC" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="2S6ZIM" id="2UEyDf6OTcD" role="2ZfVej">
      <node concept="3clFbS" id="2UEyDf6OTcE" role="2VODD2">
        <node concept="3clFbF" id="2UEyDf6OTcF" role="3cqZAp">
          <node concept="Xl_RD" id="2UEyDf6OTcG" role="3clFbG">
            <property role="Xl_RC" value="Make Non Identifying" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="2UEyDf6OTcH" role="2ZfgGD">
      <node concept="3clFbS" id="2UEyDf6OTcI" role="2VODD2">
        <node concept="3clFbF" id="2UEyDf6OTcJ" role="3cqZAp">
          <node concept="37vLTI" id="2UEyDf6OTcK" role="3clFbG">
            <node concept="3clFbT" id="2UEyDf6OTcL" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="2OqwBi" id="2UEyDf6OTcM" role="37vLTJ">
              <node concept="2Sf5sV" id="2UEyDf6OTcN" role="2Oq$k0" />
              <node concept="3TrcHB" id="2UEyDf6P13_" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:2UEyDf6lmL1" resolve="identifying" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="2UEyDf6OTcP" role="2ZfVeh">
      <node concept="3clFbS" id="2UEyDf6OTcQ" role="2VODD2">
        <node concept="3clFbF" id="2UEyDf6OTcR" role="3cqZAp">
          <node concept="2OqwBi" id="2UEyDf6OTcS" role="3clFbG">
            <node concept="2Sf5sV" id="2UEyDf6OTcT" role="2Oq$k0" />
            <node concept="3TrcHB" id="2UEyDf6P0sc" role="2OqNvi">
              <ref role="3TsBF5" to="7ggn:2UEyDf6lmL1" resolve="identifying" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="7byyZgEvBg7">
    <property role="TrG5h" value="AddConstant" />
    <property role="2ZfUl0" value="true" />
    <property role="3GE5qa" value="attributes" />
    <ref role="2ZfgGC" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="2S6ZIM" id="7byyZgEvBg8" role="2ZfVej">
      <node concept="3clFbS" id="7byyZgEvBg9" role="2VODD2">
        <node concept="3clFbF" id="7byyZgEvBga" role="3cqZAp">
          <node concept="Xl_RD" id="7byyZgEvBgb" role="3clFbG">
            <property role="Xl_RC" value="Make Comstant" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7byyZgEvBgc" role="2ZfgGD">
      <node concept="3clFbS" id="7byyZgEvBgd" role="2VODD2">
        <node concept="3clFbF" id="7byyZgEvBge" role="3cqZAp">
          <node concept="37vLTI" id="7byyZgEvBgf" role="3clFbG">
            <node concept="3clFbT" id="7byyZgEvBgg" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="7byyZgEvBgh" role="37vLTJ">
              <node concept="2Sf5sV" id="7byyZgEvBgi" role="2Oq$k0" />
              <node concept="3TrcHB" id="7byyZgEvEY8" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:7byyZgEvBg3" resolve="constant" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="7byyZgEvBgk" role="2ZfVeh">
      <node concept="3clFbS" id="7byyZgEvBgl" role="2VODD2">
        <node concept="3clFbF" id="7byyZgEvBgm" role="3cqZAp">
          <node concept="3fqX7Q" id="7byyZgEvBgn" role="3clFbG">
            <node concept="2OqwBi" id="7byyZgEvBgo" role="3fr31v">
              <node concept="2Sf5sV" id="7byyZgEvBgp" role="2Oq$k0" />
              <node concept="3TrcHB" id="7byyZgEvEq4" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:7byyZgEvBg3" resolve="constant" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="7byyZgEvBgr">
    <property role="TrG5h" value="RemoveConstant" />
    <property role="2ZfUl0" value="true" />
    <property role="3GE5qa" value="attributes" />
    <ref role="2ZfgGC" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="2S6ZIM" id="7byyZgEvBgs" role="2ZfVej">
      <node concept="3clFbS" id="7byyZgEvBgt" role="2VODD2">
        <node concept="3clFbF" id="7byyZgEvBgu" role="3cqZAp">
          <node concept="Xl_RD" id="7byyZgEvBgv" role="3clFbG">
            <property role="Xl_RC" value="Make Non Constant" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7byyZgEvBgw" role="2ZfgGD">
      <node concept="3clFbS" id="7byyZgEvBgx" role="2VODD2">
        <node concept="3clFbF" id="7byyZgEvBgy" role="3cqZAp">
          <node concept="37vLTI" id="7byyZgEvBgz" role="3clFbG">
            <node concept="3clFbT" id="7byyZgEvBg$" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="2OqwBi" id="7byyZgEvBg_" role="37vLTJ">
              <node concept="2Sf5sV" id="7byyZgEvBgA" role="2Oq$k0" />
              <node concept="3TrcHB" id="7byyZgEvIdF" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:7byyZgEvBg3" resolve="constant" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="7byyZgEvBgC" role="2ZfVeh">
      <node concept="3clFbS" id="7byyZgEvBgD" role="2VODD2">
        <node concept="3clFbF" id="7byyZgEvBgE" role="3cqZAp">
          <node concept="2OqwBi" id="7byyZgEvBgF" role="3clFbG">
            <node concept="2Sf5sV" id="7byyZgEvBgG" role="2Oq$k0" />
            <node concept="3TrcHB" id="7byyZgEvHAe" role="2OqNvi">
              <ref role="3TsBF5" to="7ggn:7byyZgEvBg3" resolve="constant" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

