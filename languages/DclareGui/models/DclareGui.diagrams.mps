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
      <concept id="3484711917226236502" name="DclareGui.structure.JointLayout" flags="ng" index="2iyNlg">
        <property id="3484711917226238919" name="x" index="2iyKN1" />
        <property id="3484711917226238921" name="y" index="2iyKNf" />
        <property id="4537747336066490328" name="identity" index="30jCVK" />
      </concept>
      <concept id="3484711917226236499" name="DclareGui.structure.EdgeLayout" flags="ng" index="2iyNll">
        <reference id="3484711917226236500" name="association" index="2iyNli" />
        <child id="3484711917226238916" name="joints" index="2iyKN2" />
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
  <node concept="3PWz7o" id="1zO1whXnryt">
    <property role="TrG5h" value="concepts" />
    <property role="mcfiE" value="true" />
    <node concept="3PzJGO" id="2h1RSEsmDqX" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:67eN9QkffP5" resolve="ConceptDiagram" />
    </node>
    <node concept="3PzJGO" id="2h1RSEsmDqY" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:67eN9Qkg3uD" resolve="ConceptRef" />
    </node>
    <node concept="3PzJGO" id="2h1RSEsmDqZ" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:31sbKqyPLDj" resolve="EdgeLayout" />
    </node>
    <node concept="2iyNl8" id="2h1RSEsmDqS" role="2iyNln">
      <property role="2iyNlD" value="642" />
      <property role="2iyNlR" value="524" />
      <ref role="2iyNl9" to="53d4:67eN9QkffP5" resolve="ConceptDiagram" />
      <node concept="2iyNll" id="2h1RSEsmDr5" role="2iyNmk">
        <ref role="2iyNli" to="53d4:3psr82$eZ54" resolve="IDiagram" />
      </node>
    </node>
    <node concept="2iyNl8" id="2h1RSEsmDqT" role="2iyNln">
      <property role="2iyNlD" value="92" />
      <property role="2iyNlR" value="256" />
      <ref role="2iyNl9" to="53d4:31sbKqyPLDj" resolve="EdgeLayout" />
      <node concept="2iyNll" id="2h1RSEsmDr8" role="2iyNmk">
        <ref role="2iyNli" to="53d4:31sbKqyPMf4" resolve="joints" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi16A7$" role="2iyNln">
      <property role="2iyNlD" value="476" />
      <property role="2iyNlR" value="374" />
      <ref role="2iyNl9" to="53d4:3psr82$eZ54" resolve="IDiagram" />
      <node concept="2iyNll" id="1zO1wi16A7_" role="2iyNmk">
        <ref role="2iyNli" to="53d4:3psr82$c6ii" resolve="IEditor" />
        <node concept="2iyNlg" id="4raUFHBwNkd" role="2iyKN2">
          <property role="30jCVK" value="0" />
          <property role="2iyKN1" value="612" />
          <property role="2iyKNf" value="258" />
        </node>
      </node>
      <node concept="2iyNll" id="2h1RSEsmDr4" role="2iyNmk">
        <ref role="2iyNli" to="53d4:31sbKqyPLDh" resolve="nodes" />
      </node>
    </node>
    <node concept="3PzJGO" id="1zO1wi16A71" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:3psr82$eZ54" resolve="IDiagram" />
    </node>
    <node concept="2iyNl8" id="1zO1whZjk3s" role="2iyNln">
      <property role="2iyNlD" value="536" />
      <property role="2iyNlR" value="92" />
      <ref role="2iyNl9" to="53d4:3psr82$c6ii" resolve="IEditor" />
    </node>
    <node concept="2iyNl8" id="2h1RSEsmDqU" role="2iyNln">
      <property role="2iyNlD" value="84" />
      <property role="2iyNlR" value="434" />
      <ref role="2iyNl9" to="53d4:31sbKqyPLDm" resolve="JointLayout" />
    </node>
    <node concept="2iyNl8" id="2h1RSEsmDqV" role="2iyNln">
      <property role="2iyNlD" value="324" />
      <property role="2iyNlR" value="224" />
      <ref role="2iyNl9" to="53d4:31sbKqyPLDe" resolve="NodeLayout" />
      <node concept="2iyNll" id="2h1RSEsmDr7" role="2iyNmk">
        <ref role="2iyNli" to="53d4:31sbKqyPLEi" resolve="edges" />
      </node>
    </node>
    <node concept="2iyNl8" id="2h1RSEsmDqW" role="2iyNln">
      <property role="2iyNlD" value="350" />
      <property role="2iyNlR" value="542" />
      <ref role="2iyNl9" to="53d4:5hEUvARta2y" resolve="StructDiagram" />
      <node concept="2iyNll" id="2h1RSEsmDr6" role="2iyNmk">
        <ref role="2iyNli" to="53d4:3psr82$eZ54" resolve="IDiagram" />
      </node>
    </node>
    <node concept="A2Dkr" id="1zO1whXnryu" role="1FiUSG">
      <property role="A2Dkp" value="DclareGui" />
      <property role="A2Dkq" value="ce36526d-d793-4b8b-88e9-d1815f616441" />
    </node>
    <node concept="3PzJGO" id="1zO1whZjk2v" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:3psr82$c6ii" resolve="IEditor" />
    </node>
    <node concept="3PzJGO" id="2h1RSEsmDr0" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:31sbKqyPLDm" resolve="JointLayout" />
    </node>
    <node concept="3PzJGO" id="2h1RSEsmDr1" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:31sbKqyPLDe" resolve="NodeLayout" />
    </node>
    <node concept="3PzJGO" id="2h1RSEsmDr2" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:5hEUvARta2y" resolve="StructDiagram" />
    </node>
    <node concept="3PzJGO" id="2h1RSEsmDr3" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:5hEUvARtaxp" resolve="StructRef" />
    </node>
  </node>
  <node concept="3z7$_r" id="1zO1wi1laCS">
    <property role="TrG5h" value="structs" />
    <property role="mcfiE" value="true" />
    <node concept="2iyNl8" id="2_HXTiYrilv" role="2iyNln">
      <property role="2iyNlD" value="586" />
      <property role="2iyNlR" value="1106" />
      <ref role="2iyNl9" to="q3xn:3HJBHARsh7U" resolve="ConceptDiagramCanvas" />
      <node concept="2iyNll" id="2_HXTiYrimy" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilw" role="2iyNln">
      <property role="2iyNlD" value="482" />
      <property role="2iyNlR" value="764" />
      <ref role="2iyNl9" to="q3xn:3HJBHARtgyV" resolve="ConceptRectangle" />
      <node concept="2iyNll" id="2_HXTiYrims" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiYrimt" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilx" role="2iyNln">
      <property role="2iyNlD" value="1264" />
      <property role="2iyNlR" value="896" />
      <ref role="2iyNl9" to="q3xn:6YJvVULPUly" resolve="ConceptSpecialisationLine" />
      <node concept="2iyNll" id="2_HXTiYrimn" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrily" role="2iyNln">
      <property role="2iyNlD" value="806" />
      <property role="2iyNlR" value="734" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
      <node concept="2iyNll" id="2_HXTiYrimf" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilz" role="2iyNln">
      <property role="2iyNlD" value="110" />
      <property role="2iyNlR" value="626" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z4h" resolve="DCircleShape" />
      <node concept="2iyNll" id="2_HXTiYrimo" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYril$" role="2iyNln">
      <property role="2iyNlD" value="1010" />
      <property role="2iyNlR" value="476" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      <node concept="2iyNll" id="2_HXTiYrimp" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYril_" role="2iyNln">
      <property role="2iyNlD" value="896" />
      <property role="2iyNlR" value="250" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      <node concept="2iyNll" id="2_HXTiYrimk" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:WHdioYVYaT" resolve="DVisible" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilA" role="2iyNln">
      <property role="2iyNlD" value="88" />
      <property role="2iyNlR" value="856" />
      <ref role="2iyNl9" to="q3xn:2gyk5S1Dvn0" resolve="DDeviceInput" />
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilB" role="2iyNln">
      <property role="2iyNlD" value="684" />
      <property role="2iyNlR" value="942" />
      <ref role="2iyNl9" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      <node concept="2iyNll" id="2_HXTiYrima" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilC" role="2iyNln">
      <property role="2iyNlD" value="274" />
      <property role="2iyNlR" value="1032" />
      <ref role="2iyNl9" to="q3xn:4NMtPTvGXY5" resolve="DDimension" />
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilD" role="2iyNln">
      <property role="2iyNlD" value="182" />
      <property role="2iyNlR" value="492" />
      <ref role="2iyNl9" to="q3xn:3VTki$0kFQZ" resolve="DEdgeJoint" />
      <node concept="2iyNll" id="2_HXTiYrimq" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
      </node>
      <node concept="2iyNll" id="2_HXTiYrimr" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilE" role="2iyNln">
      <property role="2iyNlD" value="490" />
      <property role="2iyNlR" value="602" />
      <ref role="2iyNl9" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      <node concept="2iyNll" id="2_HXTiYrim4" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiYrim5" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilF" role="2iyNln">
      <property role="2iyNlD" value="400" />
      <property role="2iyNlR" value="464" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      <node concept="2iyNll" id="2_HXTiYrimu" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiYrimv" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilG" role="2iyNln">
      <property role="2iyNlD" value="948" />
      <property role="2iyNlR" value="368" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3D" resolve="DFrame" />
      <node concept="2iyNll" id="2_HXTiYrimc" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilH" role="2iyNln">
      <property role="2iyNlD" value="624" />
      <property role="2iyNlR" value="464" />
      <ref role="2iyNl9" to="q3xn:7wc8RN4MUFm" resolve="DImage" />
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilI" role="2iyNln">
      <property role="2iyNlD" value="170" />
      <property role="2iyNlR" value="332" />
      <ref role="2iyNl9" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
      <node concept="2iyNll" id="2_HXTiYrim8" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilJ" role="2iyNln">
      <property role="2iyNlD" value="640" />
      <property role="2iyNlR" value="790" />
      <ref role="2iyNl9" to="q3xn:6YJvVULTHtj" resolve="DLineSegment" />
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilK" role="2iyNln">
      <property role="2iyNlD" value="1124" />
      <property role="2iyNlR" value="584" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfpttw" resolve="DMenu" />
      <node concept="2iyNll" id="2_HXTiYrimw" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilL" role="2iyNln">
      <property role="2iyNlD" value="1082" />
      <property role="2iyNlR" value="696" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfpttH" resolve="DMenuItem" />
      <node concept="2iyNll" id="2_HXTiYrim2" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilM" role="2iyNln">
      <property role="2iyNlD" value="1300" />
      <property role="2iyNlR" value="658" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfoMuD" resolve="DMenubar" />
      <node concept="2iyNll" id="2_HXTiYrime" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilN" role="2iyNln">
      <property role="2iyNlD" value="376" />
      <property role="2iyNlR" value="216" />
      <ref role="2iyNl9" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilO" role="2iyNln">
      <property role="2iyNlD" value="444" />
      <property role="2iyNlR" value="364" />
      <ref role="2iyNl9" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
      <node concept="2iyNll" id="2_HXTiYrim6" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilP" role="2iyNln">
      <property role="2iyNlD" value="980" />
      <property role="2iyNlR" value="784" />
      <ref role="2iyNl9" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      <node concept="2iyNll" id="2_HXTiYrimi" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilQ" role="2iyNln">
      <property role="2iyNlD" value="800" />
      <property role="2iyNlR" value="506" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
      <node concept="2iyNll" id="2_HXTiYrimb" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilR" role="2iyNln">
      <property role="2iyNlD" value="720" />
      <property role="2iyNlR" value="612" />
      <ref role="2iyNl9" to="q3xn:681X9Tz0KVS" resolve="DNodeComponent" />
      <node concept="2iyNll" id="2_HXTiYrim7" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilS" role="2iyNln">
      <property role="2iyNlD" value="896" />
      <property role="2iyNlR" value="618" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3d" resolve="DPanel" />
      <node concept="2iyNll" id="2_HXTiYrim9" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilT" role="2iyNln">
      <property role="2iyNlD" value="1206" />
      <property role="2iyNlR" value="280" />
      <ref role="2iyNl9" to="q3xn:4NMtPTvGW7r" resolve="DPoint" />
    </node>
    <node concept="2iyNl8" id="4LLmjMd06z7" role="2iyNln">
      <property role="2iyNlD" value="452" />
      <property role="2iyNlR" value="938" />
      <ref role="2iyNl9" to="q3xn:4LLmjMcNoIC" resolve="DQuadrant" />
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilU" role="2iyNln">
      <property role="2iyNlD" value="348" />
      <property role="2iyNlR" value="628" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      <node concept="2iyNll" id="2_HXTiYrimx" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilV" role="2iyNln">
      <property role="2iyNlD" value="650" />
      <property role="2iyNlR" value="322" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      <node concept="2iyNll" id="2_HXTiYrim3" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:WHdioYVYaT" resolve="DVisible" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilW" role="2iyNln">
      <property role="2iyNlD" value="1310" />
      <property role="2iyNlR" value="514" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3o" resolve="DSplitPane" />
      <node concept="2iyNll" id="2_HXTiYriml" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilX" role="2iyNln">
      <property role="2iyNlD" value="712" />
      <property role="2iyNlR" value="144" />
      <ref role="2iyNl9" to="q3xn:WHdioYVYaT" resolve="DVisible" />
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilY" role="2iyNln">
      <property role="2iyNlD" value="1062" />
      <property role="2iyNlR" value="970" />
      <ref role="2iyNl9" to="q3xn:67eN9QkfT0n" resolve="LinkLine" />
      <node concept="2iyNll" id="2_HXTiYrimj" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilZ" role="2iyNln">
      <property role="2iyNlD" value="848" />
      <property role="2iyNlR" value="1102" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuQyh" resolve="StructDiagramCanvas" />
      <node concept="2iyNll" id="2_HXTiYrimm" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrim0" role="2iyNln">
      <property role="2iyNlD" value="318" />
      <property role="2iyNlR" value="772" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuSLJ" resolve="StructRectangle" />
      <node concept="2iyNll" id="2_HXTiYrimg" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiYrimh" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrim1" role="2iyNln">
      <property role="2iyNlD" value="860" />
      <property role="2iyNlR" value="916" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuSMF" resolve="StructSpecialisationLine" />
      <node concept="2iyNll" id="2_HXTiYrimd" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh20" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3HJBHARsh7U" resolve="ConceptDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh21" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3HJBHARtgyV" resolve="ConceptRectangle" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh22" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:6YJvVULPUly" resolve="ConceptSpecialisationLine" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh23" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh24" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z4h" resolve="DCircleShape" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh25" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh26" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh27" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2gyk5S1Dvn0" resolve="DDeviceInput" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh28" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh29" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:4NMtPTvGXY5" resolve="DDimension" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2a" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTki$0kFQZ" resolve="DEdgeJoint" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2b" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2c" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2d" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3D" resolve="DFrame" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2e" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:7wc8RN4MUFm" resolve="DImage" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2f" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2g" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:6YJvVULTHtj" resolve="DLineSegment" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2h" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfpttw" resolve="DMenu" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2i" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfpttH" resolve="DMenuItem" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2j" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfoMuD" resolve="DMenubar" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2k" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2l" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2m" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2n" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2o" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:681X9Tz0KVS" resolve="DNodeComponent" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2p" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3d" resolve="DPanel" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2q" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:4NMtPTvGW7r" resolve="DPoint" />
    </node>
    <node concept="3z7$6w" id="4LLmjMd06yy" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:4LLmjMcNoIC" resolve="DQuadrant" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2r" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2s" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2r" resolve="DShape" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2t" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3o" resolve="DSplitPane" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2u" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:WHdioYVYaT" resolve="DVisible" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2v" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:67eN9QkfT0n" resolve="LinkLine" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2w" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuQyh" resolve="StructDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="2_HXTiYoh2x" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuSLJ" resolve="StructRectangle" />
    </node>
    <node concept="3z7$6w" id="2h1RSEsjhIE" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuSMF" resolve="StructSpecialisationLine" />
    </node>
    <node concept="A2Dkr" id="1zO1wi1laCT" role="2pcM1O">
      <property role="A2Dkq" value="ce36526d-d793-4b8b-88e9-d1815f616441" />
      <property role="A2Dkp" value="DclareGui" />
    </node>
  </node>
</model>

