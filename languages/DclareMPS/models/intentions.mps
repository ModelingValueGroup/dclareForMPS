<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c7d5aae8-f5bf-4f88-8851-a39de153e482(DclareMPS.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
          <node concept="1Wc70l" id="4$bpWrQproa" role="3clFbG">
            <node concept="3fqX7Q" id="4$bpWrQpsJc" role="3uHU7w">
              <node concept="2OqwBi" id="4$bpWrQpsJe" role="3fr31v">
                <node concept="2OqwBi" id="4$bpWrQpsJf" role="2Oq$k0">
                  <node concept="2Sf5sV" id="4$bpWrQpsJg" role="2Oq$k0" />
                  <node concept="1mfA1w" id="4$bpWrQpsJh" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="4$bpWrQpsJi" role="2OqNvi">
                  <node concept="chp4Y" id="4$bpWrQpsJj" role="cj9EA">
                    <ref role="cht4Q" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2UEyDf6OTc$" role="3uHU7B">
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
            <property role="Xl_RC" value="Make Constant" />
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
  <node concept="2S6QgY" id="4k6r071pMB5">
    <property role="TrG5h" value="AddOptional" />
    <property role="2ZfUl0" value="true" />
    <property role="3GE5qa" value="attributes" />
    <ref role="2ZfgGC" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="2S6ZIM" id="4k6r071pMB6" role="2ZfVej">
      <node concept="3clFbS" id="4k6r071pMB7" role="2VODD2">
        <node concept="3clFbF" id="4k6r071pMB8" role="3cqZAp">
          <node concept="Xl_RD" id="4k6r071pMB9" role="3clFbG">
            <property role="Xl_RC" value="Make Optional" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4k6r071pMBa" role="2ZfgGD">
      <node concept="3clFbS" id="4k6r071pMBb" role="2VODD2">
        <node concept="3clFbF" id="4k6r071pMBc" role="3cqZAp">
          <node concept="37vLTI" id="4k6r071pMBd" role="3clFbG">
            <node concept="3clFbT" id="4k6r071pMBe" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="4k6r071pMBf" role="37vLTJ">
              <node concept="2Sf5sV" id="4k6r071pMBg" role="2Oq$k0" />
              <node concept="3TrcHB" id="4k6r071pPsR" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:79VROD26KQN" resolve="optional" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="4k6r071pMBi" role="2ZfVeh">
      <node concept="3clFbS" id="4k6r071pMBj" role="2VODD2">
        <node concept="3clFbF" id="4k6r071pMBk" role="3cqZAp">
          <node concept="3fqX7Q" id="4k6r071pMBl" role="3clFbG">
            <node concept="2OqwBi" id="4k6r071pMBm" role="3fr31v">
              <node concept="2Sf5sV" id="4k6r071pMBn" role="2Oq$k0" />
              <node concept="3TrcHB" id="4k6r071pOPj" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:79VROD26KQN" resolve="optional" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4k6r071pP$1">
    <property role="TrG5h" value="RemoveOptional" />
    <property role="2ZfUl0" value="true" />
    <property role="3GE5qa" value="attributes" />
    <ref role="2ZfgGC" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="2S6ZIM" id="4k6r071pP$2" role="2ZfVej">
      <node concept="3clFbS" id="4k6r071pP$3" role="2VODD2">
        <node concept="3clFbF" id="4k6r071pP$4" role="3cqZAp">
          <node concept="Xl_RD" id="4k6r071pP$5" role="3clFbG">
            <property role="Xl_RC" value="Make Non Optional" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4k6r071pP$6" role="2ZfgGD">
      <node concept="3clFbS" id="4k6r071pP$7" role="2VODD2">
        <node concept="3clFbF" id="4k6r071pP$8" role="3cqZAp">
          <node concept="37vLTI" id="4k6r071pP$9" role="3clFbG">
            <node concept="3clFbT" id="4k6r071pP$a" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="2OqwBi" id="4k6r071pP$b" role="37vLTJ">
              <node concept="2Sf5sV" id="4k6r071pP$c" role="2Oq$k0" />
              <node concept="3TrcHB" id="4k6r071pSxN" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:79VROD26KQN" resolve="optional" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="4k6r071pP$e" role="2ZfVeh">
      <node concept="3clFbS" id="4k6r071pP$f" role="2VODD2">
        <node concept="3clFbF" id="4k6r071pP$g" role="3cqZAp">
          <node concept="2OqwBi" id="4k6r071pP$h" role="3clFbG">
            <node concept="2Sf5sV" id="4k6r071pP$i" role="2Oq$k0" />
            <node concept="3TrcHB" id="4k6r071pRUm" role="2OqNvi">
              <ref role="3TsBF5" to="7ggn:79VROD26KQN" resolve="optional" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3myfcgXiqcA">
    <property role="3GE5qa" value="models.builder" />
    <property role="TrG5h" value="FlipTransient" />
    <ref role="2ZfgGC" to="7ggn:7x27w4ybBDN" resolve="ModelBuilder" />
    <node concept="2S6ZIM" id="3myfcgXiqcB" role="2ZfVej">
      <node concept="3clFbS" id="3myfcgXiqcC" role="2VODD2">
        <node concept="3clFbF" id="3myfcgXiBPT" role="3cqZAp">
          <node concept="3K4zz7" id="3myfcgXiCFd" role="3clFbG">
            <node concept="Xl_RD" id="3myfcgXiCG3" role="3K4E3e">
              <property role="Xl_RC" value="Make Persistent" />
            </node>
            <node concept="Xl_RD" id="3myfcgXiCOz" role="3K4GZi">
              <property role="Xl_RC" value="Make Transient" />
            </node>
            <node concept="2OqwBi" id="3myfcgXiC2f" role="3K4Cdx">
              <node concept="2Sf5sV" id="3myfcgXiBPS" role="2Oq$k0" />
              <node concept="3TrcHB" id="3myfcgXiCfk" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:7x27w4yh6fK" resolve="transient" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3myfcgXiqcD" role="2ZfgGD">
      <node concept="3clFbS" id="3myfcgXiqcE" role="2VODD2">
        <node concept="3clFbF" id="3myfcgXiCX7" role="3cqZAp">
          <node concept="37vLTI" id="3myfcgXiDFa" role="3clFbG">
            <node concept="3fqX7Q" id="3myfcgXiE9F" role="37vLTx">
              <node concept="2OqwBi" id="3myfcgXiE9H" role="3fr31v">
                <node concept="2Sf5sV" id="3myfcgXiE9I" role="2Oq$k0" />
                <node concept="3TrcHB" id="3myfcgXiE9J" role="2OqNvi">
                  <ref role="3TsBF5" to="7ggn:7x27w4yh6fK" resolve="transient" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3myfcgXiD5k" role="37vLTJ">
              <node concept="2Sf5sV" id="3myfcgXiCX6" role="2Oq$k0" />
              <node concept="3TrcHB" id="3myfcgXiDe2" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:7x27w4yh6fK" resolve="transient" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="2$O6I04bEne">
    <property role="TrG5h" value="RemoveTracingMarker" />
    <property role="3GE5qa" value="tracing" />
    <ref role="2ZfgGC" to="7ggn:7EeKZioUq_6" resolve="TracingMarker" />
    <node concept="2S6ZIM" id="2$O6I04bEnf" role="2ZfVej">
      <node concept="3clFbS" id="2$O6I04bEng" role="2VODD2">
        <node concept="3clFbF" id="2$O6I04bEsr" role="3cqZAp">
          <node concept="Xl_RD" id="2$O6I04bEst" role="3clFbG">
            <property role="Xl_RC" value="Remove Tracing Marker" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="2$O6I04bEnh" role="2ZfgGD">
      <node concept="3clFbS" id="2$O6I04bEni" role="2VODD2">
        <node concept="3clFbF" id="2$O6I04bEFS" role="3cqZAp">
          <node concept="2OqwBi" id="2$O6I04bF18" role="3clFbG">
            <node concept="2Sf5sV" id="2$O6I04bEFW" role="2Oq$k0" />
            <node concept="1P9Npp" id="2$O6I04bFbm" role="2OqNvi">
              <node concept="10Nm6u" id="2$O6I04bFdI" role="1P9ThW" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="2$O6HZZZDEe">
    <property role="TrG5h" value="ToggleTracingMarker" />
    <property role="3GE5qa" value="tracing" />
    <ref role="2ZfgGC" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="2S6ZIM" id="2$O6HZZZDEf" role="2ZfVej">
      <node concept="3clFbS" id="2$O6HZZZDEg" role="2VODD2">
        <node concept="3clFbJ" id="2$O6I04bxe1" role="3cqZAp">
          <node concept="3clFbS" id="2$O6I04bxe3" role="3clFbx">
            <node concept="3cpWs6" id="2$O6I04bxRU" role="3cqZAp">
              <node concept="Xl_RD" id="2$O6I04bxRV" role="3cqZAk">
                <property role="Xl_RC" value="Add Tracing Marker" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2$O6I04bxeO" role="3clFbw">
            <node concept="10Nm6u" id="2$O6I04bxeP" role="3uHU7w" />
            <node concept="2OqwBi" id="2$O6I04bxeQ" role="3uHU7B">
              <node concept="2Sf5sV" id="2$O6I04bxeR" role="2Oq$k0" />
              <node concept="3CFZ6_" id="2$O6I04bxeS" role="2OqNvi">
                <node concept="3CFYIy" id="2$O6I04bxeT" role="3CFYIz">
                  <ref role="3CFYIx" to="7ggn:7EeKZioUq_6" resolve="TracingMarker" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2$O6I04bxD9" role="9aQIa">
            <node concept="3clFbS" id="2$O6I04bxDa" role="9aQI4">
              <node concept="3cpWs6" id="2$O6I04bxYY" role="3cqZAp">
                <node concept="Xl_RD" id="2$O6I04bxYZ" role="3cqZAk">
                  <property role="Xl_RC" value="Remove Tracing Marker" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="2$O6HZZZDEh" role="2ZfgGD">
      <node concept="3clFbS" id="2$O6HZZZDEi" role="2VODD2">
        <node concept="3clFbJ" id="2$O6I000oz8" role="3cqZAp">
          <node concept="3clFbC" id="2$O6I000p2F" role="3clFbw">
            <node concept="10Nm6u" id="2$O6I000p9d" role="3uHU7w" />
            <node concept="2OqwBi" id="2$O6I000oGJ" role="3uHU7B">
              <node concept="2Sf5sV" id="2$O6I000ozz" role="2Oq$k0" />
              <node concept="3CFZ6_" id="2$O6I000oNW" role="2OqNvi">
                <node concept="3CFYIy" id="2$O6I000oRV" role="3CFYIz">
                  <ref role="3CFYIx" to="7ggn:7EeKZioUq_6" resolve="TracingMarker" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2$O6I000oza" role="3clFbx">
            <node concept="3clFbF" id="2$O6I000pa4" role="3cqZAp">
              <node concept="2OqwBi" id="2$O6I000prM" role="3clFbG">
                <node concept="2OqwBi" id="2$O6I000pc0" role="2Oq$k0">
                  <node concept="2Sf5sV" id="2$O6I000pa2" role="2Oq$k0" />
                  <node concept="3CFZ6_" id="2$O6I000pcW" role="2OqNvi">
                    <node concept="3CFYIy" id="2$O6I000pf8" role="3CFYIz">
                      <ref role="3CFYIx" to="7ggn:7EeKZioUq_6" resolve="TracingMarker" />
                    </node>
                  </node>
                </node>
                <node concept="zfrQC" id="2$O6I000pCx" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="2$O6I001hkC" role="3cqZAp">
              <node concept="37vLTI" id="2$O6I001iya" role="3clFbG">
                <node concept="Xl_RD" id="2$O6I001iBj" role="37vLTx" />
                <node concept="2OqwBi" id="2$O6I001hJa" role="37vLTJ">
                  <node concept="2OqwBi" id="2$O6I001hsI" role="2Oq$k0">
                    <node concept="2Sf5sV" id="2$O6I001hkA" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="2$O6I001h$4" role="2OqNvi">
                      <node concept="3CFYIy" id="2$O6I001hAg" role="3CFYIz">
                        <ref role="3CFYIx" to="7ggn:7EeKZioUq_6" resolve="TracingMarker" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="2$O6I001i7u" role="2OqNvi">
                    <ref role="3TsBF5" to="7ggn:7EeKZioUq_b" resolve="message" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2$O6I000pHC" role="9aQIa">
            <node concept="3clFbS" id="2$O6I000pHD" role="9aQI4">
              <node concept="3clFbF" id="2$O6I000pIH" role="3cqZAp">
                <node concept="37vLTI" id="2$O6I000qeC" role="3clFbG">
                  <node concept="10Nm6u" id="2$O6I000qhn" role="37vLTx" />
                  <node concept="2OqwBi" id="2$O6I000pPZ" role="37vLTJ">
                    <node concept="2Sf5sV" id="2$O6I000pIG" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="2$O6I000pXN" role="2OqNvi">
                      <node concept="3CFYIy" id="2$O6I000q1M" role="3CFYIz">
                        <ref role="3CFYIx" to="7ggn:7EeKZioUq_6" resolve="TracingMarker" />
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
  <node concept="2S6QgY" id="6aMI9gKVYyN">
    <property role="3GE5qa" value="attributes" />
    <property role="TrG5h" value="RemovePublic" />
    <ref role="2ZfgGC" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="2S6ZIM" id="6aMI9gKVYyO" role="2ZfVej">
      <node concept="3clFbS" id="6aMI9gKVYyP" role="2VODD2">
        <node concept="3clFbF" id="6aMI9gKVYBT" role="3cqZAp">
          <node concept="Xl_RD" id="6aMI9gKVYBS" role="3clFbG">
            <property role="Xl_RC" value="Make Non Public" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6aMI9gKVYyQ" role="2ZfgGD">
      <node concept="3clFbS" id="6aMI9gKVYyR" role="2VODD2">
        <node concept="3clFbF" id="6aMI9gKVZAG" role="3cqZAp">
          <node concept="37vLTI" id="6aMI9gKW0nG" role="3clFbG">
            <node concept="3clFbT" id="6aMI9gKW0vF" role="37vLTx" />
            <node concept="2OqwBi" id="6aMI9gKVZEE" role="37vLTJ">
              <node concept="2Sf5sV" id="6aMI9gKVZAF" role="2Oq$k0" />
              <node concept="3TrcHB" id="6aMI9gKVZL4" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:6aMI9gKVBbh" resolve="public" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="6aMI9gKVYVu" role="2ZfVeh">
      <node concept="3clFbS" id="6aMI9gKVYVv" role="2VODD2">
        <node concept="3clFbF" id="6aMI9gKVYZA" role="3cqZAp">
          <node concept="2OqwBi" id="6aMI9gKVZ9R" role="3clFbG">
            <node concept="2Sf5sV" id="6aMI9gKVYZ_" role="2Oq$k0" />
            <node concept="3TrcHB" id="6aMI9gKVZyr" role="2OqNvi">
              <ref role="3TsBF5" to="7ggn:6aMI9gKVBbh" resolve="public" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="6aMI9gKVVHi">
    <property role="3GE5qa" value="attributes" />
    <property role="TrG5h" value="AddPublic" />
    <ref role="2ZfgGC" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
    <node concept="2S6ZIM" id="6aMI9gKVVHj" role="2ZfVej">
      <node concept="3clFbS" id="6aMI9gKVVHk" role="2VODD2">
        <node concept="3clFbF" id="6aMI9gKVVMm" role="3cqZAp">
          <node concept="Xl_RD" id="6aMI9gKVW6f" role="3clFbG">
            <property role="Xl_RC" value="Make Public" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6aMI9gKVVHl" role="2ZfgGD">
      <node concept="3clFbS" id="6aMI9gKVVHm" role="2VODD2">
        <node concept="3clFbF" id="6aMI9gKVX91" role="3cqZAp">
          <node concept="37vLTI" id="6aMI9gKVYgl" role="3clFbG">
            <node concept="3clFbT" id="6aMI9gKVYh4" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="6aMI9gKVXfB" role="37vLTJ">
              <node concept="2Sf5sV" id="6aMI9gKVX90" role="2Oq$k0" />
              <node concept="3TrcHB" id="6aMI9gKVX$t" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:6aMI9gKVBbh" resolve="public" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="6aMI9gKVWgS" role="2ZfVeh">
      <node concept="3clFbS" id="6aMI9gKVWgT" role="2VODD2">
        <node concept="3clFbF" id="6aMI9gKVWpJ" role="3cqZAp">
          <node concept="3fqX7Q" id="6aMI9gKVX0V" role="3clFbG">
            <node concept="2OqwBi" id="6aMI9gKVX0X" role="3fr31v">
              <node concept="2Sf5sV" id="6aMI9gKVX0Y" role="2Oq$k0" />
              <node concept="3TrcHB" id="6aMI9gKVX0Z" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:6aMI9gKVBbh" resolve="public" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="2Xu5gU74G5W">
    <property role="TrG5h" value="AddFeature" />
    <ref role="2ZfgGC" to="7ggn:2iL65LTVkBJ" resolve="NodeIssue" />
    <node concept="2S6ZIM" id="2Xu5gU74G5X" role="2ZfVej">
      <node concept="3clFbS" id="2Xu5gU74G5Y" role="2VODD2">
        <node concept="3clFbF" id="2Xu5gU74Gba" role="3cqZAp">
          <node concept="Xl_RD" id="2Xu5gU74Glc" role="3clFbG">
            <property role="Xl_RC" value="Add Feature" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="2Xu5gU74G5Z" role="2ZfgGD">
      <node concept="3clFbS" id="2Xu5gU74G60" role="2VODD2">
        <node concept="3clFbF" id="2Xu5gU74Gvn" role="3cqZAp">
          <node concept="37vLTI" id="2Xu5gU74H5O" role="3clFbG">
            <node concept="2pJPEk" id="2Xu5gU74H8o" role="37vLTx">
              <node concept="2pJPED" id="2Xu5gU74H8q" role="2pJPEn">
                <ref role="2pJxaS" to="7ggn:wH5jBlQuf1" resolve="FeatureDeclaration" />
              </node>
            </node>
            <node concept="2OqwBi" id="2Xu5gU74GGD" role="37vLTJ">
              <node concept="2Sf5sV" id="2Xu5gU74Gvm" role="2Oq$k0" />
              <node concept="3TrEf2" id="2Xu5gU74GVa" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:wH5jBlQug8" resolve="feature" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="2Xu5gU74Hsh" role="2ZfVeh">
      <node concept="3clFbS" id="2Xu5gU74Hsi" role="2VODD2">
        <node concept="3clFbF" id="2Xu5gU74H_N" role="3cqZAp">
          <node concept="3clFbC" id="2Xu5gU74Imw" role="3clFbG">
            <node concept="10Nm6u" id="2Xu5gU74IAG" role="3uHU7w" />
            <node concept="2OqwBi" id="2Xu5gU74HNq" role="3uHU7B">
              <node concept="2Sf5sV" id="2Xu5gU74H_M" role="2Oq$k0" />
              <node concept="3TrEf2" id="2Xu5gU74I9B" role="2OqNvi">
                <ref role="3Tt5mk" to="7ggn:wH5jBlQug8" resolve="feature" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3uCFKuPsW_G">
    <property role="TrG5h" value="SwitchAbstract" />
    <property role="3GE5qa" value="methods" />
    <ref role="2ZfgGC" to="7ggn:3$OkZkHRDLt" resolve="Method" />
    <node concept="2S6ZIM" id="3uCFKuPsW_H" role="2ZfVej">
      <node concept="3clFbS" id="3uCFKuPsW_I" role="2VODD2">
        <node concept="3clFbJ" id="3uCFKuPsWEN" role="3cqZAp">
          <node concept="2OqwBi" id="3uCFKuPsXm_" role="3clFbw">
            <node concept="2Sf5sV" id="3uCFKuPsWJ_" role="2Oq$k0" />
            <node concept="3TrcHB" id="3uCFKuPsYh7" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:h9EzhlX" resolve="isAbstract" />
            </node>
          </node>
          <node concept="3clFbS" id="3uCFKuPsWEP" role="3clFbx">
            <node concept="3cpWs6" id="3uCFKuPsYny" role="3cqZAp">
              <node concept="Xl_RD" id="3uCFKuPsYyl" role="3cqZAk">
                <property role="Xl_RC" value="make non abstract" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3uCFKuPsYJ7" role="9aQIa">
            <node concept="3clFbS" id="3uCFKuPsYJ8" role="9aQI4">
              <node concept="3cpWs6" id="3uCFKuPsYJP" role="3cqZAp">
                <node concept="Xl_RD" id="3uCFKuPsYKJ" role="3cqZAk">
                  <property role="Xl_RC" value="make abstract" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3uCFKuPsW_J" role="2ZfgGD">
      <node concept="3clFbS" id="3uCFKuPsW_K" role="2VODD2">
        <node concept="3clFbF" id="3uCFKuPsYY9" role="3cqZAp">
          <node concept="37vLTI" id="3uCFKuPt0Ew" role="3clFbG">
            <node concept="3fqX7Q" id="3uCFKuPt0Mu" role="37vLTx">
              <node concept="2OqwBi" id="3uCFKuPt1vP" role="3fr31v">
                <node concept="2Sf5sV" id="3uCFKuPt0WG" role="2Oq$k0" />
                <node concept="3TrcHB" id="3uCFKuPt2pY" role="2OqNvi">
                  <ref role="3TsBF5" to="tpee:h9EzhlX" resolve="isAbstract" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3uCFKuPsZre" role="37vLTJ">
              <node concept="2Sf5sV" id="3uCFKuPsYY8" role="2Oq$k0" />
              <node concept="3TrcHB" id="3uCFKuPt0ho" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:h9EzhlX" resolve="isAbstract" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3uCFKuPt2E5">
    <property role="TrG5h" value="SwitchFinal" />
    <property role="3GE5qa" value="methods" />
    <ref role="2ZfgGC" to="7ggn:3$OkZkHRDLt" resolve="Method" />
    <node concept="2S6ZIM" id="3uCFKuPt2E6" role="2ZfVej">
      <node concept="3clFbS" id="3uCFKuPt2E7" role="2VODD2">
        <node concept="3clFbJ" id="3uCFKuPt2E8" role="3cqZAp">
          <node concept="2OqwBi" id="3uCFKuPt2E9" role="3clFbw">
            <node concept="2Sf5sV" id="3uCFKuPt2Ea" role="2Oq$k0" />
            <node concept="3TrcHB" id="3uCFKuPt2Eb" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:hcDiZZi" resolve="isFinal" />
            </node>
          </node>
          <node concept="3clFbS" id="3uCFKuPt2Ec" role="3clFbx">
            <node concept="3cpWs6" id="3uCFKuPt2Ed" role="3cqZAp">
              <node concept="Xl_RD" id="3uCFKuPt2Ee" role="3cqZAk">
                <property role="Xl_RC" value="make non final" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3uCFKuPt2Ef" role="9aQIa">
            <node concept="3clFbS" id="3uCFKuPt2Eg" role="9aQI4">
              <node concept="3cpWs6" id="3uCFKuPt2Eh" role="3cqZAp">
                <node concept="Xl_RD" id="3uCFKuPt2Ei" role="3cqZAk">
                  <property role="Xl_RC" value="make final" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3uCFKuPt2Ej" role="2ZfgGD">
      <node concept="3clFbS" id="3uCFKuPt2Ek" role="2VODD2">
        <node concept="3clFbF" id="3uCFKuPt2El" role="3cqZAp">
          <node concept="37vLTI" id="3uCFKuPt2Em" role="3clFbG">
            <node concept="3fqX7Q" id="3uCFKuPt2En" role="37vLTx">
              <node concept="2OqwBi" id="3uCFKuPt2Eo" role="3fr31v">
                <node concept="2Sf5sV" id="3uCFKuPt2Ep" role="2Oq$k0" />
                <node concept="3TrcHB" id="3uCFKuPt2Eq" role="2OqNvi">
                  <ref role="3TsBF5" to="tpee:hcDiZZi" resolve="isFinal" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3uCFKuPt2Er" role="37vLTJ">
              <node concept="2Sf5sV" id="3uCFKuPt2Es" role="2Oq$k0" />
              <node concept="3TrcHB" id="3uCFKuPt2Et" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:hcDiZZi" resolve="isFinal" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="60123R2Bhte">
    <property role="TrG5h" value="SwitchAtomic" />
    <ref role="2ZfgGC" to="7ggn:29R9$zZUovC" resolve="Rule" />
    <node concept="2S6ZIM" id="60123R2Bhtf" role="2ZfVej">
      <node concept="3clFbS" id="60123R2Bhtg" role="2VODD2">
        <node concept="3clFbF" id="60123R2Bhyg" role="3cqZAp">
          <node concept="3K4zz7" id="60123R2Bi8W" role="3clFbG">
            <node concept="Xl_RD" id="60123R2Bigm" role="3K4E3e">
              <property role="Xl_RC" value="make nonatomic" />
            </node>
            <node concept="Xl_RD" id="60123R2Biid" role="3K4GZi">
              <property role="Xl_RC" value="make atomic" />
            </node>
            <node concept="2OqwBi" id="60123R2BhHQ" role="3K4Cdx">
              <node concept="2Sf5sV" id="60123R2Bhyf" role="2Oq$k0" />
              <node concept="3TrcHB" id="60123R2BhJ_" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:2uXxmTffMZh" resolve="atomic" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="60123R2Bhth" role="2ZfgGD">
      <node concept="3clFbS" id="60123R2Bhti" role="2VODD2">
        <node concept="3clFbF" id="60123R2Birr" role="3cqZAp">
          <node concept="37vLTI" id="60123R2BiPM" role="3clFbG">
            <node concept="3fqX7Q" id="60123R2BiXK" role="37vLTx">
              <node concept="2OqwBi" id="60123R2Bj7h" role="3fr31v">
                <node concept="2Sf5sV" id="60123R2Bj27" role="2Oq$k0" />
                <node concept="3TrcHB" id="60123R2Bjfb" role="2OqNvi">
                  <ref role="3TsBF5" to="7ggn:2uXxmTffMZh" resolve="atomic" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="60123R2Biu6" role="37vLTJ">
              <node concept="2Sf5sV" id="60123R2Birq" role="2Oq$k0" />
              <node concept="3TrcHB" id="60123R2BivJ" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:2uXxmTffMZh" resolve="atomic" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="1bjvCAP$3Na">
    <property role="3GE5qa" value="methods" />
    <property role="TrG5h" value="SwitchPublic" />
    <ref role="2ZfgGC" to="7ggn:3$OkZkHRDLt" resolve="Method" />
    <node concept="2S6ZIM" id="1bjvCAP$3Nb" role="2ZfVej">
      <node concept="3clFbS" id="1bjvCAP$3Nc" role="2VODD2">
        <node concept="3clFbJ" id="1bjvCAP$6$L" role="3cqZAp">
          <node concept="3clFbS" id="1bjvCAP$6$N" role="3clFbx">
            <node concept="3cpWs6" id="1bjvCAP$70n" role="3cqZAp">
              <node concept="Xl_RD" id="1bjvCAP$718" role="3cqZAk">
                <property role="Xl_RC" value="make non public" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1bjvCAP$6_l" role="9aQIa">
            <node concept="3clFbS" id="1bjvCAP$6_m" role="9aQI4">
              <node concept="3cpWs6" id="1bjvCAP$6HC" role="3cqZAp">
                <node concept="Xl_RD" id="1bjvCAP$6ML" role="3cqZAk">
                  <property role="Xl_RC" value="make public" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1bjvCAP$l8W" role="3clFbw">
            <node concept="2Sf5sV" id="1bjvCAP$kXY" role="2Oq$k0" />
            <node concept="3TrcHB" id="1bjvCAP$ldo" role="2OqNvi">
              <ref role="3TsBF5" to="7ggn:1bjvCAP$dkc" resolve="puplic" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1bjvCAP$3Nd" role="2ZfgGD">
      <node concept="3clFbS" id="1bjvCAP$3Ne" role="2VODD2">
        <node concept="3clFbF" id="1bjvCAP$l_Z" role="3cqZAp">
          <node concept="37vLTI" id="1bjvCAP$lA0" role="3clFbG">
            <node concept="3fqX7Q" id="1bjvCAP$lA1" role="37vLTx">
              <node concept="2OqwBi" id="1bjvCAP$lA2" role="3fr31v">
                <node concept="2Sf5sV" id="1bjvCAP$lA3" role="2Oq$k0" />
                <node concept="3TrcHB" id="1bjvCAP$lA4" role="2OqNvi">
                  <ref role="3TsBF5" to="7ggn:1bjvCAP$dkc" resolve="puplic" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1bjvCAP$lA5" role="37vLTJ">
              <node concept="2Sf5sV" id="1bjvCAP$lA6" role="2Oq$k0" />
              <node concept="3TrcHB" id="1bjvCAP$lA7" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:1bjvCAP$dkc" resolve="puplic" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="64dupBmWrCw">
    <property role="3GE5qa" value="methods" />
    <property role="TrG5h" value="SwitchConstant" />
    <ref role="2ZfgGC" to="7ggn:3$OkZkHRDLt" resolve="Method" />
    <node concept="2S6ZIM" id="64dupBmWrCx" role="2ZfVej">
      <node concept="3clFbS" id="64dupBmWrCy" role="2VODD2">
        <node concept="3clFbJ" id="64dupBmWrXP" role="3cqZAp">
          <node concept="3clFbS" id="64dupBmWrXQ" role="3clFbx">
            <node concept="3cpWs6" id="64dupBmWrXR" role="3cqZAp">
              <node concept="Xl_RD" id="64dupBmWrXS" role="3cqZAk">
                <property role="Xl_RC" value="make non constant" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="64dupBmWrXT" role="9aQIa">
            <node concept="3clFbS" id="64dupBmWrXU" role="9aQI4">
              <node concept="3cpWs6" id="64dupBmWrXV" role="3cqZAp">
                <node concept="Xl_RD" id="64dupBmWrXW" role="3cqZAk">
                  <property role="Xl_RC" value="make constant" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="64dupBmWrXX" role="3clFbw">
            <node concept="2Sf5sV" id="64dupBmWrXY" role="2Oq$k0" />
            <node concept="3TrcHB" id="64dupBmWrXZ" role="2OqNvi">
              <ref role="3TsBF5" to="7ggn:64dupBmWp2H" resolve="constant" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="64dupBmWrCz" role="2ZfgGD">
      <node concept="3clFbS" id="64dupBmWrC$" role="2VODD2">
        <node concept="3clFbF" id="64dupBmWtxv" role="3cqZAp">
          <node concept="37vLTI" id="64dupBmWvdS" role="3clFbG">
            <node concept="3fqX7Q" id="64dupBmWvlR" role="37vLTx">
              <node concept="2OqwBi" id="64dupBmWw3c" role="3fr31v">
                <node concept="2Sf5sV" id="64dupBmWvwk" role="2Oq$k0" />
                <node concept="3TrcHB" id="64dupBmWwXl" role="2OqNvi">
                  <ref role="3TsBF5" to="7ggn:64dupBmWp2H" resolve="constant" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="64dupBmWtYj" role="37vLTJ">
              <node concept="2Sf5sV" id="64dupBmWtxu" role="2Oq$k0" />
              <node concept="3TrcHB" id="64dupBmWuOx" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:64dupBmWp2H" resolve="constant" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="6n54NLYmQ34">
    <property role="TrG5h" value="ToggleListBuilderOrientation" />
    <ref role="2ZfgGC" to="7ggn:76efOMRCHWM" resolve="ListBuilder" />
    <node concept="2S6ZIM" id="6n54NLYmQ35" role="2ZfVej">
      <node concept="3clFbS" id="6n54NLYmQ36" role="2VODD2">
        <node concept="3clFbF" id="6n54NLYmQ8o" role="3cqZAp">
          <node concept="Xl_RD" id="6n54NLYmQ8n" role="3clFbG">
            <property role="Xl_RC" value="Toggle [list] orientation" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6n54NLYmQ37" role="2ZfgGD">
      <node concept="3clFbS" id="6n54NLYmQ38" role="2VODD2">
        <node concept="3clFbF" id="6n54NLYmQEz" role="3cqZAp">
          <node concept="37vLTI" id="6n54NLYmRkl" role="3clFbG">
            <node concept="3fqX7Q" id="6n54NLYmRum" role="37vLTx">
              <node concept="2OqwBi" id="6n54NLYmRGO" role="3fr31v">
                <node concept="2Sf5sV" id="6n54NLYmRyH" role="2Oq$k0" />
                <node concept="3TrcHB" id="6n54NLYmS33" role="2OqNvi">
                  <ref role="3TsBF5" to="7ggn:6n54NLY4afR" resolve="multiLine" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6n54NLYmQMz" role="37vLTJ">
              <node concept="2Sf5sV" id="6n54NLYmQEy" role="2Oq$k0" />
              <node concept="3TrcHB" id="6n54NLYmQVn" role="2OqNvi">
                <ref role="3TsBF5" to="7ggn:6n54NLY4afR" resolve="multiLine" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

