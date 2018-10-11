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
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="8842732777748464990" name="jetbrains.mps.lang.structure.structure.RefPresentationTemplate" flags="ng" index="ROjv2">
        <property id="4307758654697524057" name="prefix" index="1W_73P" />
      </concept>
      <concept id="8842732777748207592" name="jetbrains.mps.lang.structure.structure.SmartReferenceAttribute" flags="ng" index="RPilO">
        <reference id="8842732777748207597" name="charactersticReference" index="RPilL" />
        <child id="8842732777748474935" name="refPresentationTemplate" index="ROhUF" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="6327362524875300597" name="icon" index="rwd14" />
        <child id="1169129564478" name="implements" index="PzmwI" />
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
  <node concept="1TIwiD" id="4SfaQIrYs9U">
    <property role="EcuMT" value="5624762200787370618" />
    <property role="TrG5h" value="RuleSet" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1Sb3mAPvInz" role="1TKVEi">
      <property role="IQ2ns" value="2164838793549374947" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="rules" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="1Sb3mAPvh8b" resolve="Rule" />
    </node>
    <node concept="PrWs8" id="7UtH1mcE0IS" role="PzmwI">
      <ref role="PrY4T" to="tpee:hoSGL_l" resolve="IMemberContainer" />
    </node>
    <node concept="PrWs8" id="7UtH1mcE0IY" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1QGGSu" id="59OKK4YdX$X" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/Dclare.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Sb3mAPvh8b">
    <property role="EcuMT" value="2164838793549255179" />
    <property role="TrG5h" value="Rule" />
    <property role="34LRSv" value="Rule" />
    <ref role="1TJDcQ" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
    <node concept="1TJgyj" id="1Sb3mAPxB$N" role="1TKVEi">
      <property role="IQ2ns" value="2164838793549871411" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="context" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="jVwYUSRkKt" resolve="ContextType" />
    </node>
    <node concept="PrWs8" id="7UtH1mcDNAf" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Sb3mAPxLpZ">
    <property role="EcuMT" value="2164838793549911679" />
    <property role="TrG5h" value="NodeType" />
    <property role="34LRSv" value="node" />
    <ref role="1TJDcQ" node="jVwYUSRkKt" resolve="ContextType" />
    <node concept="1TJgyj" id="jVwYUSRpzw" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="IQ2ns" value="359025656633071840" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="30fQumnEbzJ">
    <property role="EcuMT" value="3463226218586355951" />
    <property role="TrG5h" value="ModelType" />
    <property role="34LRSv" value="model" />
    <ref role="1TJDcQ" node="jVwYUSRkKt" resolve="ContextType" />
  </node>
  <node concept="1TIwiD" id="jVwYUSPLKM">
    <property role="EcuMT" value="359025656632646706" />
    <property role="TrG5h" value="ThisExpression" />
    <property role="34LRSv" value="this" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="jVwYUSRkKt">
    <property role="EcuMT" value="359025656633052189" />
    <property role="TrG5h" value="ContextType" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="5myXc37OIo9">
    <property role="EcuMT" value="6170763548274386441" />
    <property role="TrG5h" value="ModuleType" />
    <property role="34LRSv" value="module" />
    <ref role="1TJDcQ" node="jVwYUSRkKt" resolve="ContextType" />
  </node>
  <node concept="1TIwiD" id="5myXc37PpxZ">
    <property role="EcuMT" value="6170763548274563199" />
    <property role="TrG5h" value="RepositoryType" />
    <property role="34LRSv" value="repository" />
    <ref role="1TJDcQ" node="jVwYUSRkKt" resolve="ContextType" />
  </node>
  <node concept="1TIwiD" id="3qVwZ8sHWnm">
    <property role="EcuMT" value="3943890974580131286" />
    <property role="TrG5h" value="RuleAssignmentExpression" />
    <property role="34LRSv" value=":=" />
    <ref role="1TJDcQ" to="tpee:fz7vLUm" resolve="AssignmentExpression" />
  </node>
  <node concept="1TIwiD" id="29R9$zYWiFR">
    <property role="EcuMT" value="2483495814474836727" />
    <property role="TrG5h" value="OppositeLinkAccess" />
    <ref role="1TJDcQ" to="tp25:gzTsc4p" resolve="SLinkListAccess" />
    <node concept="RPilO" id="29R9$zZN5nE" role="lGtFl">
      <ref role="RPilL" to="tp25:gzTtc_y" resolve="link" />
      <node concept="ROjv2" id="29R9$zZN5nH" role="ROhUF">
        <property role="1W_73P" value="~" />
      </node>
    </node>
  </node>
</model>

