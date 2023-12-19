<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:128aaf80-6c15-4aa9-b438-d8029ada7a51(DclareGui.diagrams)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="ce36526d-d793-4b8b-88e9-d1815f616441" name="DclareGui" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="q3xn" ref="r:3ec44d77-eb4f-4600-add0-5e671af45a7b(DclareGui.rules)" />
    <import index="53d4" ref="r:0049729d-ba70-461b-8d8a-b0755e3bfabb(DclareGui.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" />
  </imports>
  <registry>
    <language id="86ef8290-12bb-4ca7-947f-093788f263a9" name="jetbrains.mps.lang.project">
      <concept id="1855399583446016268" name="jetbrains.mps.lang.project.structure.ModuleReference" flags="ng" index="A2Dkr">
        <property id="1855399583446016270" name="qualifiedName" index="A2Dkp" />
        <property id="1855399583446016269" name="uuid" index="A2Dkq" />
      </concept>
    </language>
    <language id="ce36526d-d793-4b8b-88e9-d1815f616441" name="DclareGui">
      <concept id="3484711917226236494" name="DclareGui.structure.NodeLayout" flags="ng" index="2iyNl8">
        <property id="3484711917226236527" name="x" index="2iyNlD" />
        <property id="3484711917226236529" name="y" index="2iyNlR" />
        <reference id="3484711917226236495" name="node" index="2iyNl9" />
        <child id="3484711917226236562" name="edges" index="2iyNmk" />
      </concept>
      <concept id="3484711917226236493" name="DclareGui.structure.IDiagram" flags="ng" index="2iyNlb">
        <property id="3281077006207831693" name="autoLayout" index="mcfiE" />
        <child id="3484711917226236497" name="nodes" index="2iyNln" />
      </concept>
      <concept id="3484711917226236499" name="DclareGui.structure.EdgeLayout" flags="ng" index="2iyNll">
        <reference id="3484711917226236500" name="association" index="2iyNli" />
      </concept>
      <concept id="6082931505451280473" name="DclareGui.structure.StructRef" flags="ng" index="3z7$6w">
        <reference id="6082931505451280474" name="struct" index="3z7$6z" />
      </concept>
      <concept id="6082931505451278498" name="DclareGui.structure.StructDiagram" flags="ng" index="3z7$_r">
        <child id="2964143021971595307" name="drawnModuleREf" index="2pcM1O" />
        <child id="6082931505451280787" name="structs" index="3z7$1E" />
      </concept>
      <concept id="7047795444050573225" name="DclareGui.structure.ConceptRef" flags="ng" index="3PzJGO">
        <reference id="7047795444050573226" name="concept" index="3PzJGR" />
      </concept>
      <concept id="7047795444050361669" name="DclareGui.structure.ConceptDiagram" flags="ng" index="3PWz7o">
        <property id="1206108215291310920" name="manual" index="5CCp0" />
        <child id="8262838778048032315" name="drawnModuleREf" index="1FiUSG" />
        <child id="7047795444050399797" name="concepts" index="3PWPUC" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3PWz7o" id="3sOksCm__DL">
    <property role="TrG5h" value="two" />
    <property role="5CCp0" value="true" />
    <property role="mcfiE" value="true" />
    <node concept="2iyNl8" id="3sOksCpGeYg" role="2iyNln">
      <property role="2iyNlD" value="632" />
      <property role="2iyNlR" value="349" />
      <ref role="2iyNl9" to="53d4:3psr82$c6ii" resolve="IEditor" />
    </node>
    <node concept="2iyNl8" id="5dZA9Q0TvYG" role="2iyNln">
      <property role="2iyNlD" value="400" />
      <property role="2iyNlR" value="420" />
      <ref role="2iyNl9" to="53d4:3psr82$eZ54" resolve="IDiagram" />
      <node concept="2iyNll" id="5dZA9Q0TvYH" role="2iyNmk">
        <ref role="2iyNli" to="53d4:3psr82$c6ii" resolve="IEditor" />
      </node>
    </node>
    <node concept="2iyNl8" id="3vvG333GztT" role="2iyNln">
      <property role="2iyNlR" value="263" />
      <property role="2iyNlD" value="388" />
      <ref role="2iyNl9" to="53d4:67eN9QkffP5" resolve="ConceptDiagram" />
      <node concept="2iyNll" id="3vvG333GztU" role="2iyNmk">
        <ref role="2iyNli" to="53d4:3psr82$eZ54" resolve="IDiagram" />
      </node>
    </node>
    <node concept="2iyNl8" id="3vvG333Gzu6" role="2iyNln">
      <property role="2iyNlR" value="361" />
      <property role="2iyNlD" value="167" />
      <ref role="2iyNl9" to="53d4:5hEUvARta2y" resolve="StructDiagram" />
      <node concept="2iyNll" id="3vvG333Gzu7" role="2iyNmk">
        <ref role="2iyNli" to="53d4:3psr82$eZ54" resolve="IDiagram" />
      </node>
    </node>
    <node concept="A2Dkr" id="3sOksCm__DM" role="1FiUSG">
      <property role="A2Dkp" value="DclareGui" />
      <property role="A2Dkq" value="ce36526d-d793-4b8b-88e9-d1815f616441" />
    </node>
    <node concept="3PzJGO" id="3sOksCm__DN" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:3psr82$c6ii" resolve="IEditor" />
    </node>
    <node concept="3PzJGO" id="3sOksCpY3$y" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:3psr82$eZ54" resolve="IDiagram" />
    </node>
    <node concept="3PzJGO" id="3vvG333GztP" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:67eN9QkffP5" resolve="ConceptDiagram" />
    </node>
    <node concept="3PzJGO" id="3vvG333Gzu1" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:5hEUvARta2y" resolve="StructDiagram" />
    </node>
  </node>
  <node concept="3z7$_r" id="1obUNAL0rRo">
    <property role="TrG5h" value="asdasd" />
    <property role="mcfiE" value="true" />
    <node concept="2iyNl8" id="1obUNAL0rSy" role="2iyNln">
      <property role="2iyNlD" value="712" />
      <property role="2iyNlR" value="1018" />
      <ref role="2iyNl9" to="q3xn:3HJBHARsh7U" resolve="ConceptDiagramCanvas" />
      <node concept="2iyNll" id="1obUNAL0rTA" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSz" role="2iyNln">
      <property role="2iyNlD" value="891" />
      <property role="2iyNlR" value="686" />
      <ref role="2iyNl9" to="q3xn:3HJBHARtgyV" resolve="ConceptRectangle" />
      <node concept="2iyNll" id="1obUNAL0rTs" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      </node>
      <node concept="2iyNll" id="1obUNAL0rTt" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowptDc" resolve="DDiagramNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rS$" role="2iyNln">
      <property role="2iyNlD" value="1192" />
      <property role="2iyNlR" value="102" />
      <ref role="2iyNl9" to="q3xn:6YJvVULPUly" resolve="ConceptSpecialisationLine" />
      <node concept="2iyNll" id="1obUNAL0rTw" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DDiagramEdge" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rS_" role="2iyNln">
      <property role="2iyNlD" value="1078" />
      <property role="2iyNlR" value="915" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
      <node concept="2iyNll" id="1obUNAL0rTk" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSA" role="2iyNln">
      <property role="2iyNlD" value="1136" />
      <property role="2iyNlR" value="399" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z4h" resolve="DCircleShape" />
      <node concept="2iyNll" id="1obUNAL0rTn" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSB" role="2iyNln">
      <property role="2iyNlD" value="1413" />
      <property role="2iyNlR" value="960" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      <node concept="2iyNll" id="1obUNAL0rTd" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSC" role="2iyNln">
      <property role="2iyNlD" value="1619" />
      <property role="2iyNlR" value="786" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      <node concept="2iyNll" id="1obUNAL0rT8" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:WHdioYVYaT" resolve="DVisible" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSD" role="2iyNln">
      <property role="2iyNlD" value="-76" />
      <property role="2iyNlR" value="706" />
      <ref role="2iyNl9" to="q3xn:2gyk5S1Dvn0" resolve="DDeviceInput" />
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSE" role="2iyNln">
      <property role="2iyNlD" value="828" />
      <property role="2iyNlR" value="912" />
      <ref role="2iyNl9" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      <node concept="2iyNll" id="1obUNAL0rT_" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSF" role="2iyNln">
      <property role="2iyNlD" value="1311" />
      <property role="2iyNlR" value="221" />
      <ref role="2iyNl9" to="q3xn:3OZjsowp$AG" resolve="DDiagramEdge" />
      <node concept="2iyNll" id="1obUNAL0rTe" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSG" role="2iyNln">
      <property role="2iyNlD" value="1363" />
      <property role="2iyNlR" value="716" />
      <ref role="2iyNl9" to="q3xn:3VTki$0kFQZ" resolve="DDiagramJoint" />
      <node concept="2iyNll" id="1obUNAL0rTq" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
      </node>
      <node concept="2iyNll" id="1obUNAL0rTr" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTki$0W76c" resolve="DDiagramVertice" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSH" role="2iyNln">
      <property role="2iyNlD" value="1030" />
      <property role="2iyNlR" value="603" />
      <ref role="2iyNl9" to="q3xn:3OZjsowptDc" resolve="DDiagramNode" />
      <node concept="2iyNll" id="1obUNAL0rTh" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
      <node concept="2iyNll" id="1obUNAL0rTi" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTki$0W76c" resolve="DDiagramVertice" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSI" role="2iyNln">
      <property role="2iyNlD" value="1186" />
      <property role="2iyNlR" value="682" />
      <ref role="2iyNl9" to="q3xn:3VTki$0W76c" resolve="DDiagramVertice" />
      <node concept="2iyNll" id="1obUNAL0rTa" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DVertice" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSJ" role="2iyNln">
      <property role="2iyNlD" value="300" />
      <property role="2iyNlR" value="660" />
      <ref role="2iyNl9" to="q3xn:4NMtPTvGXY5" resolve="DDimension" />
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSK" role="2iyNln">
      <property role="2iyNlD" value="1236" />
      <property role="2iyNlR" value="480" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      <node concept="2iyNll" id="1obUNAL0rT6" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      </node>
      <node concept="2iyNll" id="1obUNAL0rT7" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DVertice" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSL" role="2iyNln">
      <property role="2iyNlD" value="1841" />
      <property role="2iyNlR" value="758" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3D" resolve="DFrame" />
      <node concept="2iyNll" id="1obUNAL0rTv" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSM" role="2iyNln">
      <property role="2iyNlD" value="477" />
      <property role="2iyNlR" value="213" />
      <ref role="2iyNl9" to="q3xn:7wc8RN4MUFm" resolve="DImage" />
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSN" role="2iyNln">
      <property role="2iyNlD" value="1485" />
      <property role="2iyNlR" value="642" />
      <ref role="2iyNl9" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
      <node concept="2iyNll" id="1obUNAL0rT9" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DVertice" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSO" role="2iyNln">
      <property role="2iyNlD" value="180" />
      <property role="2iyNlR" value="350" />
      <ref role="2iyNl9" to="q3xn:6YJvVULTHtj" resolve="DLineSegment" />
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSP" role="2iyNln">
      <property role="2iyNlD" value="1172" />
      <property role="2iyNlR" value="1017" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfpttw" resolve="DMenu" />
      <node concept="2iyNll" id="1obUNAL0rTj" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSQ" role="2iyNln">
      <property role="2iyNlD" value="1635" />
      <property role="2iyNlR" value="939" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfpttH" resolve="DMenuItem" />
      <node concept="2iyNll" id="1obUNAL0rTm" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSR" role="2iyNln">
      <property role="2iyNlD" value="1306" />
      <property role="2iyNlR" value="862" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfoMuD" resolve="DMenubar" />
      <node concept="2iyNll" id="1obUNAL0rTb" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSS" role="2iyNln">
      <property role="2iyNlD" value="1487" />
      <property role="2iyNlR" value="339" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
      <node concept="2iyNll" id="1obUNAL0rTo" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rST" role="2iyNln">
      <property role="2iyNlD" value="1289" />
      <property role="2iyNlR" value="1093" />
      <ref role="2iyNl9" to="q3xn:681X9Tz0KVS" resolve="DNodeComponent" />
      <node concept="2iyNll" id="1obUNAL0rTg" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSU" role="2iyNln">
      <property role="2iyNlD" value="1697" />
      <property role="2iyNlR" value="1045" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3d" resolve="DPanel" />
      <node concept="2iyNll" id="1obUNAL0rTp" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSV" role="2iyNln">
      <property role="2iyNlD" value="514" />
      <property role="2iyNlR" value="445" />
      <ref role="2iyNl9" to="q3xn:4NMtPTvGW7r" resolve="DPoint" />
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSW" role="2iyNln">
      <property role="2iyNlD" value="2368" />
      <property role="2iyNlR" value="1205" />
      <ref role="2iyNl9" to="q3xn:4LLmjMcNoIC" resolve="DQuadrant" />
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSX" role="2iyNln">
      <property role="2iyNlD" value="962" />
      <property role="2iyNlR" value="514" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      <node concept="2iyNll" id="1obUNAL0rTz" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSY" role="2iyNln">
      <property role="2iyNlD" value="1545" />
      <property role="2iyNlR" value="457" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      <node concept="2iyNll" id="1obUNAL0rTc" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:WHdioYVYaT" resolve="DVisible" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rSZ" role="2iyNln">
      <property role="2iyNlD" value="1493" />
      <property role="2iyNlR" value="1101" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3o" resolve="DSplitPane" />
      <node concept="2iyNll" id="1obUNAL0rTf" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rT0" role="2iyNln">
      <property role="2iyNlD" value="1317" />
      <property role="2iyNlR" value="577" />
      <ref role="2iyNl9" to="q3xn:3VTkizWGbn5" resolve="DVertice" />
    </node>
    <node concept="2iyNl8" id="1obUNAL0rT1" role="2iyNln">
      <property role="2iyNlD" value="1702" />
      <property role="2iyNlR" value="592" />
      <ref role="2iyNl9" to="q3xn:WHdioYVYaT" resolve="DVisible" />
    </node>
    <node concept="2iyNl8" id="1obUNAL0rT2" role="2iyNln">
      <property role="2iyNlD" value="1531" />
      <property role="2iyNlR" value="136" />
      <ref role="2iyNl9" to="q3xn:67eN9QkfT0n" resolve="LinkLine" />
      <node concept="2iyNll" id="1obUNAL0rTu" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DDiagramEdge" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rT3" role="2iyNln">
      <property role="2iyNlD" value="676" />
      <property role="2iyNlR" value="809" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuQyh" resolve="StructDiagramCanvas" />
      <node concept="2iyNll" id="1obUNAL0rT$" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rT4" role="2iyNln">
      <property role="2iyNlD" value="769" />
      <property role="2iyNlR" value="558" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuSLJ" resolve="StructRectangle" />
      <node concept="2iyNll" id="1obUNAL0rTx" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      </node>
      <node concept="2iyNll" id="1obUNAL0rTy" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowptDc" resolve="DDiagramNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="1obUNAL0rT5" role="2iyNln">
      <property role="2iyNlD" value="1017" />
      <property role="2iyNlR" value="257" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuSMF" resolve="StructSpecialisationLine" />
      <node concept="2iyNll" id="1obUNAL0rTl" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DDiagramEdge" />
      </node>
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRq" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3HJBHARsh7U" resolve="ConceptDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRr" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3HJBHARtgyV" resolve="ConceptRectangle" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRs" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:6YJvVULPUly" resolve="ConceptSpecialisationLine" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRt" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRu" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z4h" resolve="DCircleShape" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRv" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRw" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRx" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2gyk5S1Dvn0" resolve="DDeviceInput" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRy" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRz" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowp$AG" resolve="DDiagramEdge" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rR$" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTki$0kFQZ" resolve="DDiagramJoint" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rR_" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowptDc" resolve="DDiagramNode" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRA" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTki$0W76c" resolve="DDiagramVertice" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRB" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:4NMtPTvGXY5" resolve="DDimension" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRC" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRD" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3D" resolve="DFrame" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRE" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:7wc8RN4MUFm" resolve="DImage" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRF" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRG" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:6YJvVULTHtj" resolve="DLineSegment" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRH" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfpttw" resolve="DMenu" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRI" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfpttH" resolve="DMenuItem" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRJ" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfoMuD" resolve="DMenubar" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRK" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRL" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:681X9Tz0KVS" resolve="DNodeComponent" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRM" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3d" resolve="DPanel" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRN" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:4NMtPTvGW7r" resolve="DPoint" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRO" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:4LLmjMcNoIC" resolve="DQuadrant" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRP" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRQ" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2r" resolve="DShape" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRR" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3o" resolve="DSplitPane" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRS" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTkizWGbn5" resolve="DVertice" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRT" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:WHdioYVYaT" resolve="DVisible" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRU" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:67eN9QkfT0n" resolve="LinkLine" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRV" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuQyh" resolve="StructDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRW" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuSLJ" resolve="StructRectangle" />
    </node>
    <node concept="3z7$6w" id="1obUNAL0rRX" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuSMF" resolve="StructSpecialisationLine" />
    </node>
    <node concept="A2Dkr" id="1obUNAL0rRp" role="2pcM1O">
      <property role="A2Dkp" value="DclareGui" />
      <property role="A2Dkq" value="ce36526d-d793-4b8b-88e9-d1815f616441" />
    </node>
  </node>
</model>

