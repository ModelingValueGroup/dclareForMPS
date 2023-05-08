<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0049729d-ba70-461b-8d8a-b0755e3bfabb(DclareGui.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="31sbKqyPLDd">
    <property role="EcuMT" value="3484711917226236493" />
    <property role="TrG5h" value="Diagram" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="diagrams" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="31sbKqyPLDh" role="1TKVEi">
      <property role="IQ2ns" value="3484711917226236497" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nodes" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="31sbKqyPLDe" resolve="NodeLayout" />
    </node>
  </node>
  <node concept="1TIwiD" id="31sbKqyPLDe">
    <property role="EcuMT" value="3484711917226236494" />
    <property role="TrG5h" value="NodeLayout" />
    <property role="3GE5qa" value="diagrams" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="31sbKqyPLDJ" role="1TKVEl">
      <property role="IQ2nx" value="3484711917226236527" />
      <property role="TrG5h" value="x" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="31sbKqyPLDL" role="1TKVEl">
      <property role="IQ2nx" value="3484711917226236529" />
      <property role="TrG5h" value="y" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="31sbKqyPLDf" role="1TKVEi">
      <property role="IQ2ns" value="3484711917226236495" />
      <property role="20kJfa" value="node" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="31sbKqyPLEi" role="1TKVEi">
      <property role="IQ2ns" value="3484711917226236562" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="edges" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="31sbKqyPLDj" resolve="EdgeLayout" />
    </node>
  </node>
  <node concept="1TIwiD" id="31sbKqyPLDj">
    <property role="EcuMT" value="3484711917226236499" />
    <property role="TrG5h" value="EdgeLayout" />
    <property role="3GE5qa" value="diagrams" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="31sbKqyPMf4" role="1TKVEi">
      <property role="IQ2ns" value="3484711917226238916" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="joints" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="31sbKqyPLDm" resolve="JointLayout" />
    </node>
    <node concept="1TJgyj" id="31sbKqyPLDk" role="1TKVEi">
      <property role="IQ2ns" value="3484711917226236500" />
      <property role="20kJfa" value="association" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="31sbKqyPLDm">
    <property role="EcuMT" value="3484711917226236502" />
    <property role="TrG5h" value="JointLayout" />
    <property role="3GE5qa" value="diagrams" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="31sbKqyPMf7" role="1TKVEl">
      <property role="IQ2nx" value="3484711917226238919" />
      <property role="TrG5h" value="x" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="31sbKqyPMf9" role="1TKVEl">
      <property role="IQ2nx" value="3484711917226238921" />
      <property role="TrG5h" value="y" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
</model>

