<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9a42e459-6b0e-4c37-8fab-9b46bab588bd(DclareMessages.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
        <reference id="899069222106091871" name="oldMember" index="2wpffI" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration_Old" flags="ng" index="AxPO7">
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <reference id="1083241965437" name="defaultMember" index="Qgau1" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1588368162884797030" name="jetbrains.mps.lang.structure.structure.EnumMigrationInfo" flags="ng" index="2JgGob">
        <property id="6491077959634662372" name="valueOpMigration" index="3scbB" />
        <property id="6491077959634650670" name="nameOpMigration" index="3sfsH" />
        <child id="6491077959632451996" name="oldEnum" index="3lCyv" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration_Old" flags="ig" index="M4N5e">
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="7e_PmaZxfwQ">
    <property role="EcuMT" value="8333301305615644726" />
    <property role="TrG5h" value="Message" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="7$u7SPmR_x3" role="1TKVEl">
      <property role="TrG5h" value="type" />
      <property role="IQ2nx" value="6544396621488234094" />
      <ref role="AX2Wp" node="7$u7SPmR_wI" resolve="MessageType" />
    </node>
    <node concept="1TJgyi" id="24xnmkF8lZy" role="1TKVEl">
      <property role="IQ2nx" value="2387291966579761122" />
      <property role="TrG5h" value="context" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="IcHFOtrcMv" role="1TKVEl">
      <property role="IQ2nx" value="832240954515442847" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="IcHFOtrcNa" role="1TKVEl">
      <property role="IQ2nx" value="832240954515442890" />
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="5j905zHfYa$" role="1TKVEl">
      <property role="IQ2nx" value="6109414751442297508" />
      <property role="TrG5h" value="expanded" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="7e_PmaZxfxC" role="1TKVEi">
      <property role="IQ2ns" value="8333301305615644776" />
      <property role="20kJfa" value="source" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="1TJgyj" id="24xnmkFe4UT" role="1TKVEi">
      <property role="IQ2ns" value="2387291966581264057" />
      <property role="20kJfa" value="node" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="1TJgyj" id="7e_PmaZxfxA" role="1TKVEi">
      <property role="IQ2ns" value="8333301305615644774" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="children" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7e_PmaZxfwQ" resolve="Message" />
    </node>
  </node>
  <node concept="1TIwiD" id="7e_PmaZxgoP">
    <property role="EcuMT" value="8333301305615648309" />
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="MessageSet" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="1DUQ$OwrN1P" role="1TKVEl">
      <property role="IQ2nx" value="1908077416936321141" />
      <property role="TrG5h" value="engineActive" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="3VwCmlf$VFh" role="1TKVEl">
      <property role="IQ2nx" value="4530798681633569489" />
      <property role="TrG5h" value="transactionActive" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="2TyoUkhlXBM" role="1TKVEl">
      <property role="IQ2nx" value="3342343434074053106" />
      <property role="TrG5h" value="runs" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="1FrOyhdWCsR" role="1TKVEl">
      <property role="IQ2nx" value="1935371518254155575" />
      <property role="TrG5h" value="changes" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="2TyoUkhlXBP" role="1TKVEl">
      <property role="IQ2nx" value="3342343434074053109" />
      <property role="TrG5h" value="changesEver" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="7e_PmaZxgoQ" role="1TKVEi">
      <property role="IQ2ns" value="8333301305615648310" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="errors" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7e_PmaZxfwQ" resolve="Message" />
    </node>
    <node concept="1TJgyj" id="30f$n$3bYxD" role="1TKVEi">
      <property role="IQ2ns" value="3463146587401742441" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="warnings" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7e_PmaZxfwQ" resolve="Message" />
    </node>
    <node concept="1TJgyj" id="30f$n$3bYxH" role="1TKVEi">
      <property role="IQ2ns" value="3463146587401742445" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="infos" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7e_PmaZxfwQ" resolve="Message" />
    </node>
    <node concept="1TJgyj" id="30f$n$3bYxM" role="1TKVEi">
      <property role="IQ2ns" value="3463146587401742450" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="debugs" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7e_PmaZxfwQ" resolve="Message" />
    </node>
  </node>
  <node concept="25R3W" id="7$u7SPmR_wI">
    <property role="TrG5h" value="MessageType" />
    <property role="3F6X1D" value="6544396621488234080" />
    <ref role="1H5jkz" node="7$u7SPmR_wK" resolve="ERROR" />
    <node concept="2JgGob" id="7$u7SPmR_wJ" role="lGtFl">
      <property role="3scbB" value="5CkWgdpp3eY/string_name" />
      <property role="3sfsH" value="5CkWgdpp0p2/by_presentation" />
      <node concept="AxPO7" id="5FinwQP4DTw" role="3lCyv">
        <property role="TrG5h" value="MessageType" />
        <property role="3F6X1D" value="6544396621488234080" />
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
    </node>
    <node concept="25R33" id="7$u7SPmR_wK" role="25R1y">
      <property role="TrG5h" value="ERROR" />
      <property role="1L1pqM" value="error" />
      <property role="3tVfz5" value="6544396621488234081" />
      <ref role="2wpffI" node="5FinwQP4DTx" />
    </node>
    <node concept="25R33" id="7$u7SPmR_wL" role="25R1y">
      <property role="TrG5h" value="WARNING" />
      <property role="1L1pqM" value="warning" />
      <property role="3tVfz5" value="6544396621488234082" />
      <ref role="2wpffI" node="5FinwQP4DTy" />
    </node>
    <node concept="25R33" id="7$u7SPmR_wM" role="25R1y">
      <property role="TrG5h" value="INFO" />
      <property role="1L1pqM" value="info" />
      <property role="3tVfz5" value="6544396621488234085" />
      <ref role="2wpffI" node="5FinwQP4DT_" />
    </node>
    <node concept="25R33" id="7$u7SPmR_wN" role="25R1y">
      <property role="TrG5h" value="DEBUG" />
      <property role="1L1pqM" value="debug" />
      <property role="3tVfz5" value="6544396621488234089" />
      <ref role="2wpffI" node="5FinwQP4DTD" />
    </node>
  </node>
</model>

