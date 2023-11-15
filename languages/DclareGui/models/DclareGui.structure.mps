<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0049729d-ba70-461b-8d8a-b0755e3bfabb(DclareGui.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="2756621024541681841" name="jetbrains.mps.lang.resources.structure.Primitive" flags="ng" index="1irPi6">
        <child id="1860120738943552529" name="fillColor" index="3PKjn_" />
      </concept>
      <concept id="2756621024541681849" name="jetbrains.mps.lang.resources.structure.Text" flags="ng" index="1irPie">
        <property id="2756621024541681854" name="text" index="1irPi9" />
        <child id="1860120738943552534" name="color" index="3PKjny" />
      </concept>
      <concept id="2756621024541674821" name="jetbrains.mps.lang.resources.structure.TextIcon" flags="ng" index="1irR5M">
        <property id="1358878980655415353" name="iconId" index="2$rrk2" />
        <child id="2756621024541675110" name="layers" index="1irR9h" />
      </concept>
      <concept id="2756621024541675105" name="jetbrains.mps.lang.resources.structure.Rect" flags="ng" index="1irR9m" />
      <concept id="1860120738943552477" name="jetbrains.mps.lang.resources.structure.ColorLiteral" flags="ng" index="3PKj8D">
        <property id="1860120738943552481" name="val" index="3PKj8l" />
      </concept>
    </language>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="6327362524875300597" name="icon" index="rwd14" />
        <child id="1169129564478" name="implements" index="PzmwI" />
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
  <node concept="PlHQZ" id="3psr82$c6ii">
    <property role="TrG5h" value="IEditor" />
    <property role="EcuMT" value="699348237883893817" />
    <property role="3GE5qa" value="gui" />
  </node>
  <node concept="PlHQZ" id="3psr82$eZ54">
    <property role="TrG5h" value="IDiagram" />
    <property role="3GE5qa" value="diagrams" />
    <property role="EcuMT" value="3484711917226236493" />
    <node concept="1TJgyj" id="31sbKqyPLDh" role="1TKVEi">
      <property role="IQ2ns" value="3484711917226236497" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="nodes" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="31sbKqyPLDe" resolve="NodeLayout" />
    </node>
    <node concept="PrWs8" id="3psr82$cO_x" role="PrDN$">
      <ref role="PrY4T" node="3psr82$c6ii" resolve="IEditor" />
    </node>
  </node>
  <node concept="1TIwiD" id="67eN9QkffP5">
    <property role="EcuMT" value="7047795444050361669" />
    <property role="TrG5h" value="ConceptDiagram" />
    <property role="3GE5qa" value="concept_diagram" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="12WXgwl7Bd8" role="1TKVEl">
      <property role="IQ2nx" value="1206108215291310920" />
      <property role="TrG5h" value="manual" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="67eN9QkffP6" role="PzmwI">
      <ref role="PrY4T" node="3psr82$eZ54" resolve="IDiagram" />
    </node>
    <node concept="PrWs8" id="67eN9QkffP9" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="67eN9Qkfp8P" role="1TKVEi">
      <property role="IQ2ns" value="7047795444050399797" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="concepts" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="67eN9Qkg3uD" resolve="ConceptRef" />
    </node>
    <node concept="1irR5M" id="67eN9QkChOV" role="rwd14">
      <property role="2$rrk2" value="101" />
      <node concept="1irR9m" id="67eN9QkChP6" role="1irR9h">
        <node concept="3PKj8D" id="67eN9QkChPd" role="3PKjn_">
          <property role="3PKj8l" value="00ddff" />
        </node>
      </node>
      <node concept="1irPie" id="67eN9QkChPl" role="1irR9h">
        <property role="1irPi9" value="D" />
        <node concept="3PKj8D" id="67eN9QkChPs" role="3PKjny">
          <property role="3PKj8l" value="000000" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="67eN9Qkg3uD">
    <property role="EcuMT" value="7047795444050573225" />
    <property role="3GE5qa" value="concept_diagram" />
    <property role="TrG5h" value="ConceptRef" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="67eN9Qkg3uE" role="1TKVEi">
      <property role="IQ2ns" value="7047795444050573226" />
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="5hEUvARta2y">
    <property role="EcuMT" value="6082931505451278498" />
    <property role="TrG5h" value="StructDiagram" />
    <property role="3GE5qa" value="struct_diagram" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="5hEUvARtaAj" role="1TKVEi">
      <property role="IQ2ns" value="6082931505451280787" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="structs" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5hEUvARtaxp" resolve="StructRef" />
    </node>
    <node concept="PrWs8" id="5hEUvARta2z" role="PzmwI">
      <ref role="PrY4T" node="3psr82$eZ54" resolve="IDiagram" />
    </node>
    <node concept="PrWs8" id="5hEUvARta2_" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1irR5M" id="5hEUvARta2C" role="rwd14">
      <property role="2$rrk2" value="104" />
      <node concept="1irR9m" id="5hEUvARta2G" role="1irR9h">
        <node concept="3PKj8D" id="5hEUvARta2Z" role="3PKjn_">
          <property role="3PKj8l" value="00ddff" />
        </node>
      </node>
      <node concept="1irPie" id="5hEUvARta2P" role="1irR9h">
        <property role="1irPi9" value="D" />
        <node concept="3PKj8D" id="5hEUvARta2W" role="3PKjny">
          <property role="3PKj8l" value="000055" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="5hEUvARtaxp">
    <property role="EcuMT" value="6082931505451280473" />
    <property role="3GE5qa" value="struct_diagram" />
    <property role="TrG5h" value="StructRef" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="5hEUvARtaxq" role="1TKVEi">
      <property role="IQ2ns" value="6082931505451280474" />
      <property role="20kJfa" value="struct" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
    </node>
  </node>
</model>

