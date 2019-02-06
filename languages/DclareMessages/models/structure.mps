<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9a42e459-6b0e-4c37-8fab-9b46bab588bd(DclareMessages.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="7" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <reference id="1083241965437" name="defaultMember" index="Qgau1" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ig" index="M4N5e">
        <property id="1083923523172" name="externalValue" index="1uS6qo" />
        <property id="1083923523171" name="internalValue" index="1uS6qv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="7e_PmaZxfwQ">
    <property role="EcuMT" value="8333301305615644726" />
    <property role="TrG5h" value="Message" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5FinwQP4DTI" role="1TKVEl">
      <property role="IQ2nx" value="6544396621488234094" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="5FinwQP4DTw" resolve="MessageType" />
    </node>
    <node concept="1TJgyi" id="IcHFOtrcMv" role="1TKVEl">
      <property role="IQ2nx" value="832240954515442847" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4hagRHmzsU3" role="1TKVEl">
      <property role="IQ2nx" value="4920819739867860611" />
      <property role="TrG5h" value="context" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="IcHFOtrcNa" role="1TKVEl">
      <property role="IQ2nx" value="832240954515442890" />
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="7e_PmaZxfxC" role="1TKVEi">
      <property role="IQ2ns" value="8333301305615644776" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="source" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="1TJgyj" id="7e_PmaZxfxA" role="1TKVEi">
      <property role="IQ2ns" value="8333301305615644774" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="lines" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="7e_PmaZxfxz" resolve="MessageLine" />
    </node>
  </node>
  <node concept="1TIwiD" id="7e_PmaZxfxz">
    <property role="EcuMT" value="8333301305615644771" />
    <property role="TrG5h" value="MessageLine" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="IcHFOtrcMs" role="1TKVEi">
      <property role="IQ2ns" value="832240954515442844" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="source" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="1TJgyi" id="7e_PmaZxfx$" role="1TKVEl">
      <property role="IQ2nx" value="8333301305615644772" />
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="IcHFOtrcMq" role="1TKVEi">
      <property role="IQ2ns" value="832240954515442842" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="lines" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="7e_PmaZxfxz" resolve="MessageLine" />
    </node>
  </node>
  <node concept="1TIwiD" id="7e_PmaZxgoP">
    <property role="EcuMT" value="8333301305615648309" />
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="MessageSet" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7e_PmaZxgoQ" role="1TKVEi">
      <property role="IQ2ns" value="8333301305615648310" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="messages" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="7e_PmaZxfwQ" resolve="Message" />
    </node>
  </node>
  <node concept="AxPO7" id="5FinwQP4DTw">
    <property role="TrG5h" value="MessageType" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <ref role="Qgau1" node="5FinwQP4DTx" />
    <node concept="M4N5e" id="5FinwQP4DTx" role="M5hS2">
      <property role="1uS6qv" value="ERROR" />
      <property role="1uS6qo" value="error" />
    </node>
    <node concept="M4N5e" id="5FinwQP4DTy" role="M5hS2">
      <property role="1uS6qv" value="WARNING" />
      <property role="1uS6qo" value="warning" />
    </node>
    <node concept="M4N5e" id="5FinwQP4DT_" role="M5hS2">
      <property role="1uS6qv" value="INFO" />
      <property role="1uS6qo" value="info" />
    </node>
    <node concept="M4N5e" id="5FinwQP4DTD" role="M5hS2">
      <property role="1uS6qv" value="DEBUG" />
      <property role="1uS6qo" value="debug" />
    </node>
  </node>
</model>
