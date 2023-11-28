<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ce1b8c02-bf50-4b8e-992e-eb7fc10fc14e(DclareMPS.dataFlow)">
  <persistence version="9" />
  <languages>
    <use id="7fa12e9c-b949-4976-b4fa-19accbc320b4" name="jetbrains.mps.lang.dataFlow" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
    </language>
    <language id="7fa12e9c-b949-4976-b4fa-19accbc320b4" name="jetbrains.mps.lang.dataFlow">
      <concept id="1206442055221" name="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" flags="ig" index="3_zdsH">
        <reference id="1206442096288" name="conceptDeclaration" index="3_znuS" />
        <child id="1206442812839" name="builderBlock" index="3_A6iZ" />
      </concept>
      <concept id="1206442659665" name="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" flags="in" index="3__wT9" />
      <concept id="1206442747519" name="jetbrains.mps.lang.dataFlow.structure.NodeParameter" flags="nn" index="3__QtB" />
      <concept id="1206443823146" name="jetbrains.mps.lang.dataFlow.structure.EmitReadStatement" flags="nn" index="3_DX4M" />
      <concept id="1206444349662" name="jetbrains.mps.lang.dataFlow.structure.EmitWriteStatement" flags="nn" index="3_FXB6" />
      <concept id="1206444622344" name="jetbrains.mps.lang.dataFlow.structure.BaseEmitVariableStatement" flags="nn" index="3_H0cg">
        <child id="1206444629799" name="variable" index="3_H1SZ" />
      </concept>
      <concept id="1206454052847" name="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" flags="nn" index="3AgYrR">
        <child id="1206454079161" name="codeFor" index="3Ah4Yx" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3_zdsH" id="46vl3mE7u1f">
    <property role="3GE5qa" value="structs.builder" />
    <ref role="3_znuS" to="7ggn:3Qetf3d9slq" resolve="StructBuilder" />
    <node concept="3__wT9" id="46vl3mE7u1g" role="3_A6iZ">
      <node concept="3clFbS" id="46vl3mE7u1h" role="2VODD2">
        <node concept="1DcWWT" id="46vl3mE7u2c" role="3cqZAp">
          <node concept="3cpWsn" id="46vl3mE7u2d" role="1Duv9x">
            <property role="TrG5h" value="part" />
            <node concept="3Tqbb2" id="46vl3mE7$LU" role="1tU5fm">
              <ref role="ehGHo" to="7ggn:4fD99RQo2bS" resolve="StructBuilderInitAttribute" />
            </node>
          </node>
          <node concept="2OqwBi" id="1$Cs7K6iGqM" role="1DdaDG">
            <node concept="2OqwBi" id="46vl3mE7uCe" role="2Oq$k0">
              <node concept="3__QtB" id="46vl3mE7uk9" role="2Oq$k0" />
              <node concept="3Tsc0h" id="46vl3mE7uVC" role="2OqNvi">
                <ref role="3TtcxE" to="7ggn:4fD99RQo2bn" resolve="parts" />
              </node>
            </node>
            <node concept="v3k3i" id="1$Cs7K6iLh_" role="2OqNvi">
              <node concept="chp4Y" id="1$Cs7K6iLsj" role="v3oSu">
                <ref role="cht4Q" to="7ggn:4fD99RQo2bS" resolve="StructBuilderInitAttribute" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="46vl3mE7u2f" role="2LFqv$">
            <node concept="3_FXB6" id="46vl3mE7C2i" role="3cqZAp">
              <node concept="2OqwBi" id="46vl3mE7Cjn" role="3_H1SZ">
                <node concept="37vLTw" id="46vl3mE7C2D" role="2Oq$k0">
                  <ref role="3cqZAo" node="46vl3mE7u2d" resolve="part" />
                </node>
                <node concept="3TrEf2" id="46vl3mE7CzD" role="2OqNvi">
                  <ref role="3Tt5mk" to="7ggn:4fD99RQo2bX" resolve="attribute" />
                </node>
              </node>
            </node>
            <node concept="3AgYrR" id="46vl3mE7M2e" role="3cqZAp">
              <node concept="2OqwBi" id="46vl3mE7MiB" role="3Ah4Yx">
                <node concept="37vLTw" id="46vl3mE7M2F" role="2Oq$k0">
                  <ref role="3cqZAo" node="46vl3mE7u2d" resolve="part" />
                </node>
                <node concept="3TrEf2" id="46vl3mE7MyT" role="2OqNvi">
                  <ref role="3Tt5mk" to="7ggn:4fD99RQo2bV" resolve="initValue" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3_zdsH" id="46vl3mE7S1x">
    <property role="3GE5qa" value="native" />
    <ref role="3_znuS" to="7ggn:5Hwm38JY5Md" resolve="NativeAttributeHandler" />
    <node concept="3__wT9" id="46vl3mE7S1y" role="3_A6iZ">
      <node concept="3clFbS" id="46vl3mE7S1z" role="2VODD2">
        <node concept="3_DX4M" id="46vl3mE7S1O" role="3cqZAp">
          <node concept="2OqwBi" id="46vl3mE7SaF" role="3_H1SZ">
            <node concept="3__QtB" id="46vl3mE7S2b" role="2Oq$k0" />
            <node concept="3TrEf2" id="46vl3mE7SjF" role="2OqNvi">
              <ref role="3Tt5mk" to="7ggn:5Hwm38JY5Me" resolve="attribute" />
            </node>
          </node>
        </node>
        <node concept="3AgYrR" id="46vl3mE7Snp" role="3cqZAp">
          <node concept="2OqwBi" id="46vl3mE7Syx" role="3Ah4Yx">
            <node concept="3__QtB" id="46vl3mE7SqN" role="2Oq$k0" />
            <node concept="3TrEf2" id="46vl3mE7SFx" role="2OqNvi">
              <ref role="3Tt5mk" to="7ggn:5Hwm38JY5Ml" resolve="body" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

