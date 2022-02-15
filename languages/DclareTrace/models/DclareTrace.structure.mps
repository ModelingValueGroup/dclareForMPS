<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ab4a727d-863f-4cd6-83d6-c3322f012644(DclareTrace.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="dvox" ref="r:9dfd3567-3b1f-4edb-85a0-3981ca2bfd8c(jetbrains.mps.lang.modelapi.structure)" implicit="true" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="5csmg0uERaS">
    <property role="EcuMT" value="5988759461545341624" />
    <property role="TrG5h" value="TraceState" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="4rPXX8gwr3t" role="1TKVEi">
      <property role="IQ2ns" value="5113265433541193949" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="loadedRuleSets" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4rPXX8gwr2Y" resolve="RuleSetReference" />
    </node>
    <node concept="1TJgyj" id="5csmg0uERaX" role="1TKVEi">
      <property role="IQ2ns" value="5988759461545341629" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="loadedModels" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" to="dvox:k2ZBl8Cedw" resolve="ModelPointer" />
    </node>
  </node>
  <node concept="1TIwiD" id="4rPXX8gwr2Y">
    <property role="EcuMT" value="5113265433541193918" />
    <property role="TrG5h" value="RuleSetReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="4rPXX8gwr3n" role="1TKVEi">
      <property role="IQ2ns" value="5113265433541193943" />
      <property role="20kJfa" value="ruleSet" />
      <ref role="20lvS9" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
    </node>
  </node>
</model>

