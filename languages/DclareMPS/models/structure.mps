<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="6" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tp3r" ref="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tp2q" ref="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.FileIcon" flags="ng" index="1QGGSu">
        <property id="2756621024541341363" name="file" index="1iqoE4" />
      </concept>
    </language>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="8842732777748464990" name="jetbrains.mps.lang.structure.structure.RefPresentationTemplate" flags="ng" index="ROjv2">
        <property id="4307758654697524060" name="suffix" index="1W_73K" />
        <property id="4307758654697524057" name="prefix" index="1W_73P" />
      </concept>
      <concept id="8842732777748207592" name="jetbrains.mps.lang.structure.structure.SmartReferenceAttribute" flags="ng" index="RPilO">
        <reference id="8842732777748207597" name="charactersticReference" index="RPilL" />
        <child id="8842732777748474935" name="refPresentationTemplate" index="ROhUF" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="5404671619616246344" name="staticScope" index="2_RsDV" />
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
        <reference id="1071599698500" name="specializedLink" index="20ksaX" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="jVwYUSPLKM">
    <property role="EcuMT" value="359025656632646706" />
    <property role="TrG5h" value="ThisExpression" />
    <property role="34LRSv" value="this" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="3qVwZ8sHWnm">
    <property role="EcuMT" value="3943890974580131286" />
    <property role="TrG5h" value="Equation" />
    <property role="34LRSv" value=":=" />
    <ref role="1TJDcQ" to="tpee:fz7vLUm" resolve="AssignmentExpression" />
  </node>
  <node concept="1TIwiD" id="29R9$zYWiFR">
    <property role="EcuMT" value="2483495814474836727" />
    <property role="TrG5h" value="OppositeLinkAccess" />
    <property role="3GE5qa" value="models" />
    <ref role="1TJDcQ" to="tp25:gzTsc4p" resolve="SLinkListAccess" />
    <node concept="RPilO" id="29R9$zZN5nE" role="lGtFl">
      <ref role="RPilL" to="tp25:gzTtc_y" resolve="link" />
      <node concept="ROjv2" id="29R9$zZN5nH" role="ROhUF">
        <property role="1W_73P" value="~" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="29R9$zZUovC">
    <property role="EcuMT" value="2483495814491113448" />
    <property role="TrG5h" value="Rule" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="34LRSv" value="rule" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7byyZgEwsfy" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="6HWpSUEwIV3" role="PzmwI">
      <ref role="PrY4T" node="61p65V8x$6I" resolve="ThisContext" />
    </node>
    <node concept="1TJgyj" id="6HWpSUFcW9N" role="1TKVEi">
      <property role="IQ2ns" value="7745179321625723507" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="statement" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fzclF8l" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="29R9$zZUovD">
    <property role="EcuMT" value="2483495814491113449" />
    <property role="TrG5h" value="RuleSet" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6HWpSUEu3U8" role="1TKVEi">
      <property role="IQ2ns" value="7745179321613434504" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="attributes" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="4$MeK2bmw9s" resolve="Attribute" />
    </node>
    <node concept="1TJgyj" id="6HWpSUEu3U6" role="1TKVEi">
      <property role="IQ2ns" value="7745179321613434502" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="rules" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="29R9$zZUovC" resolve="Rule" />
    </node>
    <node concept="PrWs8" id="29R9$zZUovP" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="6HWpSUEu3Ut" role="PzmwI">
      <ref role="PrY4T" node="61p65V8x$6I" resolve="ThisContext" />
    </node>
  </node>
  <node concept="PlHQZ" id="61p65V8x$6I">
    <property role="EcuMT" value="6942607095938564526" />
    <property role="TrG5h" value="ThisContext" />
  </node>
  <node concept="1TIwiD" id="4$MeK2bmw9s">
    <property role="EcuMT" value="5274342987128242780" />
    <property role="TrG5h" value="Attribute" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="34LRSv" value="attribute" />
    <property role="3GE5qa" value="attributes" />
    <ref role="1TJDcQ" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
    <node concept="PrWs8" id="6HWpSUEwIUY" role="PzmwI">
      <ref role="PrY4T" node="61p65V8x$6I" resolve="ThisContext" />
    </node>
    <node concept="1TJgyi" id="3Qetf3dy0jT" role="1TKVEl">
      <property role="IQ2nx" value="4435611260595733753" />
      <property role="TrG5h" value="composite" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="2UEyDf6lmL1" role="1TKVEl">
      <property role="IQ2nx" value="3362652439077809217" />
      <property role="TrG5h" value="identifying" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="7byyZgEvBg3" role="1TKVEl">
      <property role="IQ2nx" value="8278332945861604355" />
      <property role="TrG5h" value="constant" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="79VROD26KQN" role="1TKVEl">
      <property role="IQ2nx" value="8249432652488838579" />
      <property role="TrG5h" value="optional" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="7S$pNDLyqsr" role="1TKVEl">
      <property role="IQ2nx" value="9089503448651114267" />
      <property role="TrG5h" value="synthetic" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="4$MeK2bvRdy">
    <property role="EcuMT" value="5274342987130696546" />
    <property role="TrG5h" value="AttributeOperation" />
    <property role="3GE5qa" value="attributes" />
    <ref role="1TJDcQ" to="tpee:fz7vLUo" resolve="VariableReference" />
    <node concept="PrWs8" id="4$MeK2bvUee" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
    <node concept="1TJgyj" id="4$MeK2bvUeg" role="1TKVEi">
      <property role="IQ2ns" value="5274342987130708880" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="attribute" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4$MeK2bmw9s" resolve="Attribute" />
      <ref role="20ksaX" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="30GBB6Y$vTM">
    <property role="EcuMT" value="3471323624161541746" />
    <property role="TrG5h" value="NodeBuilderInitAttribute" />
    <property role="3GE5qa" value="attributes" />
    <ref role="1TJDcQ" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
    <node concept="1TJgyj" id="30GBB6Y$wtJ" role="1TKVEi">
      <property role="IQ2ns" value="3471323624161544047" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="attribute" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4$MeK2bmw9s" resolve="Attribute" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Y8BM43ogq1">
    <property role="EcuMT" value="5731005489968383617" />
    <property role="TrG5h" value="Attributes" />
    <property role="34LRSv" value="attributes" />
    <property role="3GE5qa" value="attributes" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4wbMdoKMetb" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="6HWpSUEu3T2">
    <property role="EcuMT" value="7745179321613434434" />
    <property role="TrG5h" value="ModelRuleSet" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Model RuleSet" />
    <property role="3GE5qa" value="models" />
    <ref role="1TJDcQ" node="29R9$zZUovD" resolve="RuleSet" />
    <node concept="1QGGSu" id="6HWpSUEu3T6" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/Dclare.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="6HWpSUEu3U0">
    <property role="EcuMT" value="7745179321613434496" />
    <property role="TrG5h" value="ModuleRuleSet" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Module RuleSet" />
    <property role="3GE5qa" value="models" />
    <ref role="1TJDcQ" node="29R9$zZUovD" resolve="RuleSet" />
    <node concept="1QGGSu" id="6HWpSUEu3U2" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/Dclare.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="6HWpSUEu3U3">
    <property role="EcuMT" value="7745179321613434499" />
    <property role="TrG5h" value="RepositoryRuleSet" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Repository RuleSet" />
    <property role="3GE5qa" value="models" />
    <ref role="1TJDcQ" node="29R9$zZUovD" resolve="RuleSet" />
    <node concept="1QGGSu" id="6HWpSUEu3U5" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/Dclare.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="6HWpSUEuark">
    <property role="EcuMT" value="7745179321613461204" />
    <property role="TrG5h" value="NodeRuleSet" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Node RuleSet" />
    <property role="3GE5qa" value="models" />
    <ref role="1TJDcQ" node="29R9$zZUovD" resolve="RuleSet" />
    <node concept="PrWs8" id="6HWpSUEuarl" role="PzmwI">
      <ref role="PrY4T" to="tpce:2hxg_BDjKM4" resolve="IConceptAspect" />
    </node>
    <node concept="1QGGSu" id="6HWpSUEuarm" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/Dclare.png" />
    </node>
    <node concept="1TJgyj" id="6HWpSUEuarY" role="1TKVEi">
      <property role="IQ2ns" value="7745179321613461246" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="35Jy4LMD1lX">
    <property role="TrG5h" value="AttributeImplicitSelect" />
    <property role="2_RsDV" value="none" />
    <property role="EcuMT" value="3562215692195599741" />
    <property role="3GE5qa" value="attributes" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="35Jy4LMD1u3" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="attribute" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="3562215692195600259" />
      <ref role="20lvS9" node="4$MeK2bmw9s" resolve="Attribute" />
    </node>
    <node concept="PrWs8" id="fZiK5FHvrE" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="4wbMdoKd7ev">
    <property role="EcuMT" value="5191463817731928991" />
    <property role="TrG5h" value="AttributeReference" />
    <property role="3GE5qa" value="attributes" />
    <ref role="1TJDcQ" to="tpee:fz7vLUo" resolve="VariableReference" />
    <node concept="1TJgyj" id="4wbMdoKd7ex" role="1TKVEi">
      <property role="IQ2ns" value="5191463817731928993" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="attribute" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4$MeK2bmw9s" resolve="Attribute" />
      <ref role="20ksaX" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3Qetf3cPkTM">
    <property role="EcuMT" value="4435611260584021618" />
    <property role="TrG5h" value="StructRuleSet" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Struct RuleSet" />
    <property role="3GE5qa" value="structs" />
    <ref role="1TJDcQ" node="29R9$zZUovD" resolve="RuleSet" />
    <node concept="1TJgyj" id="3Qetf3cPp0s" role="1TKVEi">
      <property role="IQ2ns" value="4435611260584038428" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="extends" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3Qetf3dC4N5" resolve="StructRuleSetReference" />
    </node>
    <node concept="1QGGSu" id="3Qetf3diZ3y" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/Dclare.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="3Qetf3cPPAL">
    <property role="EcuMT" value="4435611260584155569" />
    <property role="TrG5h" value="StructType" />
    <property role="3GE5qa" value="structs" />
    <property role="34LRSv" value="struct&lt;&gt;" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
    <node concept="1TJgyj" id="3Qetf3cPPAM" role="1TKVEi">
      <property role="IQ2ns" value="4435611260584155570" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="class" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="3Qetf3cPkTM" resolve="StructRuleSet" />
    </node>
    <node concept="RPilO" id="67uyCwD4I_y" role="lGtFl">
      <ref role="RPilL" node="3Qetf3cPPAM" resolve="class" />
      <node concept="ROjv2" id="67uyCwD4I_C" role="ROhUF">
        <property role="1W_73P" value="struct&lt;" />
        <property role="1W_73K" value="&gt;" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="3Qetf3d9slq">
    <property role="EcuMT" value="4435611260589294938" />
    <property role="TrG5h" value="Struct" />
    <property role="3GE5qa" value="structs" />
    <property role="34LRSv" value="struct" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="3Qetf3d9slr" role="1TKVEi">
      <property role="IQ2ns" value="4435611260589294939" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="class" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3Qetf3cPkTM" resolve="StructRuleSet" />
    </node>
    <node concept="1TJgyj" id="745HIYNPcqg" role="1TKVEi">
      <property role="IQ2ns" value="8144116641799915152" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="identity" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="RPilO" id="67uyCwD0$6o" role="lGtFl">
      <ref role="RPilL" node="3Qetf3d9slr" resolve="class" />
      <node concept="ROjv2" id="67uyCwD0$6r" role="ROhUF">
        <property role="1W_73K" value="()" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="3Qetf3dC4N5">
    <property role="EcuMT" value="4435611260597324997" />
    <property role="TrG5h" value="StructRuleSetReference" />
    <property role="3GE5qa" value="structs" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3Qetf3dC4N6" role="1TKVEi">
      <property role="IQ2ns" value="4435611260597324998" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="class" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3Qetf3cPkTM" resolve="StructRuleSet" />
    </node>
  </node>
  <node concept="1TIwiD" id="67uyCwCOEaZ">
    <property role="EcuMT" value="7052226383913853631" />
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="StructParent" />
    <property role="34LRSv" value="parent" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="67uyCwCOEb0" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="55IEyjJEeQU">
    <property role="EcuMT" value="5867814440126705082" />
    <property role="3GE5qa" value="models" />
    <property role="TrG5h" value="RootsImplicitSelect" />
    <property role="34LRSv" value="roots" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="55IEyjJEeR1" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
    <node concept="1TJgyj" id="55IEyjJEjgi" role="1TKVEi">
      <property role="IQ2ns" value="5867814440126723090" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="concept" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="55IEyjJExwL">
    <property role="EcuMT" value="5867814440126781489" />
    <property role="3GE5qa" value="models" />
    <property role="TrG5h" value="Models" />
    <property role="34LRSv" value="models" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="55IEyjJExwM" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="18IIFqBx3QL">
    <property role="EcuMT" value="1310189835268668849" />
    <property role="TrG5h" value="OppositeLinkAccessImplicitSelect" />
    <property role="3GE5qa" value="models" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="RPilO" id="18IIFqBx3QM" role="lGtFl">
      <ref role="RPilL" node="18IIFqBH7Z$" resolve="link" />
      <node concept="ROjv2" id="18IIFqBx3QN" role="ROhUF">
        <property role="1W_73P" value="~" />
      </node>
    </node>
    <node concept="PrWs8" id="18IIFqBH7Zy" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
    <node concept="1TJgyj" id="18IIFqBH7Z$" role="1TKVEi">
      <property role="IQ2ns" value="1310189835271831524" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="76efOMRCHWM">
    <property role="TrG5h" value="ListBuilder" />
    <property role="2_RsDV" value="none" />
    <property role="34LRSv" value="[list]" />
    <property role="EcuMT" value="8182547171709738802" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="4jp8R7C$k_N" role="1TKVEi">
      <property role="IQ2ns" value="4961035436665424243" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="elements" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="2bORRGLUZYX">
    <property role="EcuMT" value="2518883811818471357" />
    <property role="TrG5h" value="ToSetOperation" />
    <property role="34LRSv" value="toSet" />
    <property role="R4oN_" value="convert to a set" />
    <ref role="1TJDcQ" to="tp2q:u1zR62sAAH" resolve="NoArgumentsSequenceOperation" />
  </node>
  <node concept="1TIwiD" id="7S$pNDLbd0e">
    <property role="EcuMT" value="9089503448645029902" />
    <property role="3GE5qa" value="models" />
    <property role="TrG5h" value="RepositoryOperation" />
    <property role="34LRSv" value="repository" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7S$pNDLbd0f" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="7S$pNDLbgad">
    <property role="EcuMT" value="9089503448645042829" />
    <property role="3GE5qa" value="models" />
    <property role="TrG5h" value="Modules" />
    <property role="34LRSv" value="modules" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7S$pNDLbgae" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HLMRNkuBN1">
    <property role="EcuMT" value="4283428457607232705" />
    <property role="TrG5h" value="PreviousStateExpression" />
    <property role="34LRSv" value="pre(expr)" />
    <property role="R4oN_" value="previous state expression" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="3HLMRNkuYWy" role="1TKVEi">
      <property role="IQ2ns" value="4283428457607327522" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
</model>

