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
    <node concept="2iyNl8" id="1zO1wi1crIc" role="2iyNln">
      <property role="2iyNlD" value="430" />
      <property role="2iyNlR" value="565" />
      <ref role="2iyNl9" to="53d4:67eN9QkffP5" resolve="ConceptDiagram" />
      <node concept="2iyNll" id="1zO1wi1crIk" role="2iyNmk">
        <ref role="2iyNli" to="53d4:3psr82$eZ54" resolve="IDiagram" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1crId" role="2iyNln">
      <property role="2iyNlD" value="605" />
      <property role="2iyNlR" value="235" />
      <ref role="2iyNl9" to="53d4:31sbKqyPLDj" resolve="EdgeLayout" />
      <node concept="2iyNll" id="1zO1wi1crIi" role="2iyNmk">
        <ref role="2iyNli" to="53d4:31sbKqyPMf4" resolve="joints" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi16A7$" role="2iyNln">
      <property role="2iyNlD" value="325" />
      <property role="2iyNlR" value="365" />
      <ref role="2iyNl9" to="53d4:3psr82$eZ54" resolve="IDiagram" />
      <node concept="2iyNll" id="1zO1wi16A7_" role="2iyNmk">
        <ref role="2iyNli" to="53d4:3psr82$c6ii" resolve="IEditor" />
      </node>
      <node concept="2iyNll" id="1zO1wi1crIh" role="2iyNmk">
        <ref role="2iyNli" to="53d4:31sbKqyPLDh" resolve="nodes" />
      </node>
    </node>
    <node concept="3PzJGO" id="1zO1wi1crI5" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:67eN9QkffP5" resolve="ConceptDiagram" />
    </node>
    <node concept="3PzJGO" id="1zO1wi1crI6" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:67eN9Qkg3uD" resolve="ConceptRef" />
    </node>
    <node concept="3PzJGO" id="1zO1wi1crI7" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:31sbKqyPLDj" resolve="EdgeLayout" />
    </node>
    <node concept="3PzJGO" id="1zO1wi16A71" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:3psr82$eZ54" resolve="IDiagram" />
    </node>
    <node concept="2iyNl8" id="1zO1whZjk3s" role="2iyNln">
      <property role="2iyNlD" value="180" />
      <property role="2iyNlR" value="525" />
      <ref role="2iyNl9" to="53d4:3psr82$c6ii" resolve="IEditor" />
    </node>
    <node concept="2iyNl8" id="1zO1wi1crIe" role="2iyNln">
      <property role="2iyNlD" value="645" />
      <property role="2iyNlR" value="450" />
      <ref role="2iyNl9" to="53d4:31sbKqyPLDm" resolve="JointLayout" />
    </node>
    <node concept="2iyNl8" id="1zO1wi1crIf" role="2iyNln">
      <property role="2iyNlD" value="420" />
      <property role="2iyNlR" value="160" />
      <ref role="2iyNl9" to="53d4:31sbKqyPLDe" resolve="NodeLayout" />
      <node concept="2iyNll" id="1zO1wi1crIj" role="2iyNmk">
        <ref role="2iyNli" to="53d4:31sbKqyPLEi" resolve="edges" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1crIg" role="2iyNln">
      <property role="2iyNlD" value="165" />
      <property role="2iyNlR" value="220" />
      <ref role="2iyNl9" to="53d4:5hEUvARta2y" resolve="StructDiagram" />
      <node concept="2iyNll" id="1zO1wi1crIl" role="2iyNmk">
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
    <node concept="3PzJGO" id="1zO1wi1crI8" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:31sbKqyPLDm" resolve="JointLayout" />
    </node>
    <node concept="3PzJGO" id="1zO1wi1crI9" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:31sbKqyPLDe" resolve="NodeLayout" />
    </node>
    <node concept="3PzJGO" id="1zO1wi1crIa" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:5hEUvARta2y" resolve="StructDiagram" />
    </node>
    <node concept="3PzJGO" id="1zO1wi1crIb" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:5hEUvARtaxp" resolve="StructRef" />
    </node>
  </node>
  <node concept="3z7$_r" id="1zO1wi1laCS">
    <property role="TrG5h" value="structs" />
    <property role="mcfiE" value="true" />
    <node concept="2iyNl8" id="2_HXTiYrilv" role="2iyNln">
      <property role="2iyNlD" value="845" />
      <property role="2iyNlR" value="90" />
      <ref role="2iyNl9" to="q3xn:3HJBHARsh7U" resolve="ConceptDiagramCanvas" />
      <node concept="2iyNll" id="2_HXTiYrimy" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilw" role="2iyNln">
      <property role="2iyNlD" value="265" />
      <property role="2iyNlR" value="550" />
      <ref role="2iyNl9" to="q3xn:3HJBHARtgyV" resolve="ConceptRectangle" />
      <node concept="2iyNll" id="2_HXTiYrims" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiYrimt" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilx" role="2iyNln">
      <property role="2iyNlD" value="550" />
      <property role="2iyNlR" value="910" />
      <ref role="2iyNl9" to="q3xn:6YJvVULPUly" resolve="ConceptSpecialisationLine" />
      <node concept="2iyNll" id="2_HXTiYrimn" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrily" role="2iyNln">
      <property role="2iyNlD" value="995" />
      <property role="2iyNlR" value="390" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
      <node concept="2iyNll" id="2_HXTiYrimf" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilz" role="2iyNln">
      <property role="2iyNlD" value="615" />
      <property role="2iyNlR" value="400" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z4h" resolve="DCircleShape" />
      <node concept="2iyNll" id="2_HXTiYrimo" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYril$" role="2iyNln">
      <property role="2iyNlD" value="925" />
      <property role="2iyNlR" value="580" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      <node concept="2iyNll" id="2_HXTiYrimp" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYril_" role="2iyNln">
      <property role="2iyNlD" value="945" />
      <property role="2iyNlR" value="815" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      <node concept="2iyNll" id="2_HXTiYrimk" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:WHdioYVYaT" resolve="DVisible" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilA" role="2iyNln">
      <property role="2iyNlD" value="495" />
      <property role="2iyNlR" value="55" />
      <ref role="2iyNl9" to="q3xn:2gyk5S1Dvn0" resolve="DDeviceInput" />
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilB" role="2iyNln">
      <property role="2iyNlD" value="965" />
      <property role="2iyNlR" value="220" />
      <ref role="2iyNl9" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      <node concept="2iyNll" id="2_HXTiYrima" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilC" role="2iyNln">
      <property role="2iyNlD" value="570" />
      <property role="2iyNlR" value="580" />
      <ref role="2iyNl9" to="q3xn:4NMtPTvGXY5" resolve="DDimension" />
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilD" role="2iyNln">
      <property role="2iyNlD" value="335" />
      <property role="2iyNlR" value="130" />
      <ref role="2iyNl9" to="q3xn:3VTki$0kFQZ" resolve="DEdgeJoint" />
      <node concept="2iyNll" id="2_HXTiYrimq" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
      </node>
      <node concept="2iyNll" id="2_HXTiYrimr" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilE" role="2iyNln">
      <property role="2iyNlD" value="170" />
      <property role="2iyNlR" value="415" />
      <ref role="2iyNl9" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      <node concept="2iyNll" id="2_HXTiYrim4" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiYrim5" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilF" role="2iyNln">
      <property role="2iyNlD" value="430" />
      <property role="2iyNlR" value="530" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      <node concept="2iyNll" id="2_HXTiYrimu" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiYrimv" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilG" role="2iyNln">
      <property role="2iyNlD" value="900" />
      <property role="2iyNlR" value="985" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3D" resolve="DFrame" />
      <node concept="2iyNll" id="2_HXTiYrimc" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilH" role="2iyNln">
      <property role="2iyNlD" value="490" />
      <property role="2iyNlR" value="390" />
      <ref role="2iyNl9" to="q3xn:7wc8RN4MUFm" resolve="DImage" />
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilI" role="2iyNln">
      <property role="2iyNlD" value="505" />
      <property role="2iyNlR" value="245" />
      <ref role="2iyNl9" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
      <node concept="2iyNll" id="2_HXTiYrim8" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilJ" role="2iyNln">
      <property role="2iyNlD" value="680" />
      <property role="2iyNlR" value="1075" />
      <ref role="2iyNl9" to="q3xn:6YJvVULTHtj" resolve="DLineSegment" />
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilK" role="2iyNln">
      <property role="2iyNlD" value="795" />
      <property role="2iyNlR" value="370" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfpttw" resolve="DMenu" />
      <node concept="2iyNll" id="2_HXTiYrimw" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilL" role="2iyNln">
      <property role="2iyNlD" value="730" />
      <property role="2iyNlR" value="600" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfpttH" resolve="DMenuItem" />
      <node concept="2iyNll" id="2_HXTiYrim2" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilM" role="2iyNln">
      <property role="2iyNlD" value="1120" />
      <property role="2iyNlR" value="500" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfoMuD" resolve="DMenubar" />
      <node concept="2iyNll" id="2_HXTiYrime" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilN" role="2iyNln">
      <property role="2iyNlD" value="345" />
      <property role="2iyNlR" value="355" />
      <ref role="2iyNl9" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilO" role="2iyNln">
      <property role="2iyNlD" value="180" />
      <property role="2iyNlR" value="235" />
      <ref role="2iyNl9" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
      <node concept="2iyNll" id="2_HXTiYrim6" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilP" role="2iyNln">
      <property role="2iyNlD" value="360" />
      <property role="2iyNlR" value="915" />
      <ref role="2iyNl9" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      <node concept="2iyNll" id="2_HXTiYrimi" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilQ" role="2iyNln">
      <property role="2iyNlD" value="465" />
      <property role="2iyNlR" value="765" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
      <node concept="2iyNll" id="2_HXTiYrimb" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilR" role="2iyNln">
      <property role="2iyNlD" value="1080" />
      <property role="2iyNlR" value="705" />
      <ref role="2iyNl9" to="q3xn:681X9Tz0KVS" resolve="DNodeComponent" />
      <node concept="2iyNll" id="2_HXTiYrim7" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilS" role="2iyNln">
      <property role="2iyNlD" value="795" />
      <property role="2iyNlR" value="720" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3d" resolve="DPanel" />
      <node concept="2iyNll" id="2_HXTiYrim9" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilT" role="2iyNln">
      <property role="2iyNlD" value="655" />
      <property role="2iyNlR" value="35" />
      <ref role="2iyNl9" to="q3xn:4NMtPTvGW7r" resolve="DPoint" />
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilU" role="2iyNln">
      <property role="2iyNlD" value="355" />
      <property role="2iyNlR" value="685" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      <node concept="2iyNll" id="2_HXTiYrimx" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilV" role="2iyNln">
      <property role="2iyNlD" value="605" />
      <property role="2iyNlR" value="725" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      <node concept="2iyNll" id="2_HXTiYrim3" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:WHdioYVYaT" resolve="DVisible" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilW" role="2iyNln">
      <property role="2iyNlD" value="785" />
      <property role="2iyNlR" value="490" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3o" resolve="DSplitPane" />
      <node concept="2iyNll" id="2_HXTiYriml" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilX" role="2iyNln">
      <property role="2iyNlD" value="740" />
      <property role="2iyNlR" value="870" />
      <ref role="2iyNl9" to="q3xn:WHdioYVYaT" resolve="DVisible" />
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilY" role="2iyNln">
      <property role="2iyNlD" value="450" />
      <property role="2iyNlR" value="1075" />
      <ref role="2iyNl9" to="q3xn:67eN9QkfT0n" resolve="LinkLine" />
      <node concept="2iyNll" id="2_HXTiYrimj" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrilZ" role="2iyNln">
      <property role="2iyNlD" value="730" />
      <property role="2iyNlR" value="235" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuQyh" resolve="StructDiagramCanvas" />
      <node concept="2iyNll" id="2_HXTiYrimm" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrim0" role="2iyNln">
      <property role="2iyNlD" value="180" />
      <property role="2iyNlR" value="720" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuSLJ" resolve="StructRectangle" />
      <node concept="2iyNll" id="2_HXTiYrimg" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiYrimh" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
        <node concept="2iyNlg" id="2_HXTiZPdSN" role="2iyKN2">
          <property role="2iyKN1" value="50" />
          <property role="2iyKNf" value="575" />
          <property role="30jCVK" value="0" />
        </node>
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiYrim1" role="2iyNln">
      <property role="2iyNlD" value="175" />
      <property role="2iyNlR" value="905" />
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
    <node concept="3z7$6w" id="2_HXTiYoh2y" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuSMF" resolve="StructSpecialisationLine" />
    </node>
    <node concept="A2Dkr" id="1zO1wi1laCT" role="2pcM1O">
      <property role="A2Dkq" value="ce36526d-d793-4b8b-88e9-d1815f616441" />
      <property role="A2Dkp" value="DclareGui" />
    </node>
  </node>
  <node concept="3z7$_r" id="2_HXTiZmLjV">
    <property role="TrG5h" value="sasds" />
    <property role="mcfiE" value="true" />
    <node concept="2iyNl8" id="2_HXTiZmLlj" role="2iyNln">
      <property role="2iyNlD" value="340" />
      <property role="2iyNlR" value="1020" />
      <ref role="2iyNl9" to="q3xn:3HJBHARsh7U" resolve="ConceptDiagramCanvas" />
      <node concept="2iyNll" id="2_HXTiZmLlW" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlk" role="2iyNln">
      <property role="2iyNlD" value="750" />
      <property role="2iyNlR" value="50" />
      <ref role="2iyNl9" to="q3xn:3HJBHARtgyV" resolve="ConceptRectangle" />
      <node concept="2iyNll" id="2_HXTiZmLm6" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiZmLm7" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLll" role="2iyNln">
      <property role="2iyNlD" value="615" />
      <property role="2iyNlR" value="785" />
      <ref role="2iyNl9" to="q3xn:6YJvVULPUly" resolve="ConceptSpecialisationLine" />
      <node concept="2iyNll" id="2_HXTiZmLm8" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlm" role="2iyNln">
      <property role="2iyNlD" value="440" />
      <property role="2iyNlR" value="830" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
      <node concept="2iyNll" id="2_HXTiZmLm1" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLln" role="2iyNln">
      <property role="2iyNlD" value="845" />
      <property role="2iyNlR" value="540" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z4h" resolve="DCircleShape" />
      <node concept="2iyNll" id="2_HXTiZmLlV" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlo" role="2iyNln">
      <property role="2iyNlD" value="265" />
      <property role="2iyNlR" value="620" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      <node concept="2iyNll" id="2_HXTiZmLmm" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlp" role="2iyNln">
      <property role="2iyNlD" value="335" />
      <property role="2iyNlR" value="385" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      <node concept="2iyNll" id="2_HXTiZmLlQ" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:WHdioYVYaT" resolve="DVisible" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlq" role="2iyNln">
      <property role="2iyNlD" value="615" />
      <property role="2iyNlR" value="655" />
      <ref role="2iyNl9" to="q3xn:2gyk5S1Dvn0" resolve="DDeviceInput" />
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlr" role="2iyNln">
      <property role="2iyNlD" value="525" />
      <property role="2iyNlR" value="1005" />
      <ref role="2iyNl9" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      <node concept="2iyNll" id="2_HXTiZmLm0" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLls" role="2iyNln">
      <property role="2iyNlD" value="515" />
      <property role="2iyNlR" value="545" />
      <ref role="2iyNl9" to="q3xn:4NMtPTvGXY5" resolve="DDimension" />
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlt" role="2iyNln">
      <property role="2iyNlD" value="1100" />
      <property role="2iyNlR" value="360" />
      <ref role="2iyNl9" to="q3xn:3VTki$0kFQZ" resolve="DEdgeJoint" />
      <node concept="2iyNll" id="2_HXTiZmLlR" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
      </node>
      <node concept="2iyNll" id="2_HXTiZmLlS" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlu" role="2iyNln">
      <property role="2iyNlD" value="780" />
      <property role="2iyNlR" value="210" />
      <ref role="2iyNl9" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      <node concept="2iyNll" id="2_HXTiZmLmf" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiZmLmg" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlv" role="2iyNln">
      <property role="2iyNlD" value="725" />
      <property role="2iyNlR" value="385" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      <node concept="2iyNll" id="2_HXTiZmLmc" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiZmLmd" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlw" role="2iyNln">
      <property role="2iyNlD" value="220" />
      <property role="2iyNlR" value="225" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3D" resolve="DFrame" />
      <node concept="2iyNll" id="2_HXTiZmLmh" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlx" role="2iyNln">
      <property role="2iyNlD" value="1075" />
      <property role="2iyNlR" value="800" />
      <ref role="2iyNl9" to="q3xn:7wc8RN4MUFm" resolve="DImage" />
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLly" role="2iyNln">
      <property role="2iyNlD" value="1070" />
      <property role="2iyNlR" value="535" />
      <ref role="2iyNl9" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
      <node concept="2iyNll" id="2_HXTiZmLml" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlz" role="2iyNln">
      <property role="2iyNlD" value="355" />
      <property role="2iyNlR" value="60" />
      <ref role="2iyNl9" to="q3xn:6YJvVULTHtj" resolve="DLineSegment" />
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLl$" role="2iyNln">
      <property role="2iyNlD" value="75" />
      <property role="2iyNlR" value="545" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfpttw" resolve="DMenu" />
      <node concept="2iyNll" id="2_HXTiZmLlY" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLl_" role="2iyNln">
      <property role="2iyNlD" value="420" />
      <property role="2iyNlR" value="690" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfpttH" resolve="DMenuItem" />
      <node concept="2iyNll" id="2_HXTiZmLm4" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlA" role="2iyNln">
      <property role="2iyNlD" value="260" />
      <property role="2iyNlR" value="825" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfoMuD" resolve="DMenubar" />
      <node concept="2iyNll" id="2_HXTiZmLmb" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlB" role="2iyNln">
      <property role="2iyNlD" value="900" />
      <property role="2iyNlR" value="395" />
      <ref role="2iyNl9" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlC" role="2iyNln">
      <property role="2iyNlD" value="965" />
      <property role="2iyNlR" value="210" />
      <ref role="2iyNl9" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
      <node concept="2iyNll" id="2_HXTiZmLmk" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlD" role="2iyNln">
      <property role="2iyNlD" value="775" />
      <property role="2iyNlR" value="705" />
      <ref role="2iyNl9" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      <node concept="2iyNll" id="2_HXTiZmLlZ" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlE" role="2iyNln">
      <property role="2iyNlD" value="695" />
      <property role="2iyNlR" value="525" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
      <node concept="2iyNll" id="2_HXTiZmLlX" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlF" role="2iyNln">
      <property role="2iyNlD" value="385" />
      <property role="2iyNlR" value="515" />
      <ref role="2iyNl9" to="q3xn:681X9Tz0KVS" resolve="DNodeComponent" />
      <node concept="2iyNll" id="2_HXTiZmLm2" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlG" role="2iyNln">
      <property role="2iyNlD" value="110" />
      <property role="2iyNlR" value="760" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3d" resolve="DPanel" />
      <node concept="2iyNll" id="2_HXTiZmLmi" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlH" role="2iyNln">
      <property role="2iyNlD" value="905" />
      <property role="2iyNlR" value="925" />
      <ref role="2iyNl9" to="q3xn:4NMtPTvGW7r" resolve="DPoint" />
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlI" role="2iyNln">
      <property role="2iyNlD" value="610" />
      <property role="2iyNlR" value="235" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      <node concept="2iyNll" id="2_HXTiZmLma" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlJ" role="2iyNln">
      <property role="2iyNlD" value="555" />
      <property role="2iyNlR" value="390" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      <node concept="2iyNll" id="2_HXTiZmLm5" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:WHdioYVYaT" resolve="DVisible" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlK" role="2iyNln">
      <property role="2iyNlD" value="160" />
      <property role="2iyNlR" value="410" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3o" resolve="DSplitPane" />
      <node concept="2iyNll" id="2_HXTiZmLme" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlL" role="2iyNln">
      <property role="2iyNlD" value="435" />
      <property role="2iyNlR" value="265" />
      <ref role="2iyNl9" to="q3xn:WHdioYVYaT" resolve="DVisible" />
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlM" role="2iyNln">
      <property role="2iyNlD" value="955" />
      <property role="2iyNlR" value="675" />
      <ref role="2iyNl9" to="q3xn:67eN9QkfT0n" resolve="LinkLine" />
      <node concept="2iyNll" id="2_HXTiZmLm3" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlN" role="2iyNln">
      <property role="2iyNlD" value="695" />
      <property role="2iyNlR" value="1055" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuQyh" resolve="StructDiagramCanvas" />
      <node concept="2iyNll" id="2_HXTiZmLmj" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlO" role="2iyNln">
      <property role="2iyNlD" value="570" />
      <property role="2iyNlR" value="70" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuSLJ" resolve="StructRectangle" />
      <node concept="2iyNll" id="2_HXTiZmLlT" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiZmLlU" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZmLlP" role="2iyNln">
      <property role="2iyNlD" value="750" />
      <property role="2iyNlR" value="875" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuSMF" resolve="StructSpecialisationLine" />
      <node concept="2iyNll" id="2_HXTiZmLm9" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLjX" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3HJBHARsh7U" resolve="ConceptDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLjY" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3HJBHARtgyV" resolve="ConceptRectangle" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLjZ" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:6YJvVULPUly" resolve="ConceptSpecialisationLine" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLk0" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLk1" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z4h" resolve="DCircleShape" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLk2" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLk3" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLk4" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2gyk5S1Dvn0" resolve="DDeviceInput" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLk5" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLk6" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:4NMtPTvGXY5" resolve="DDimension" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLk7" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTki$0kFQZ" resolve="DEdgeJoint" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLk8" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLk9" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLka" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3D" resolve="DFrame" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkb" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:7wc8RN4MUFm" resolve="DImage" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkc" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkd" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:6YJvVULTHtj" resolve="DLineSegment" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLke" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfpttw" resolve="DMenu" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkf" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfpttH" resolve="DMenuItem" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkg" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfoMuD" resolve="DMenubar" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkh" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLki" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkj" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkk" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkl" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:681X9Tz0KVS" resolve="DNodeComponent" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkm" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3d" resolve="DPanel" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkn" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:4NMtPTvGW7r" resolve="DPoint" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLko" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkp" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2r" resolve="DShape" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkq" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3o" resolve="DSplitPane" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkr" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:WHdioYVYaT" resolve="DVisible" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLks" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:67eN9QkfT0n" resolve="LinkLine" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkt" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuQyh" resolve="StructDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLku" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuSLJ" resolve="StructRectangle" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZmLkv" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuSMF" resolve="StructSpecialisationLine" />
    </node>
    <node concept="A2Dkr" id="2_HXTiZmLjW" role="2pcM1O">
      <property role="A2Dkq" value="ce36526d-d793-4b8b-88e9-d1815f616441" />
      <property role="A2Dkp" value="DclareGui" />
    </node>
  </node>
  <node concept="3z7$_r" id="2_HXTiZD7bb">
    <property role="TrG5h" value="ouiioiuio" />
    <property role="mcfiE" value="true" />
    <node concept="2iyNl8" id="2_HXTiZD7cz" role="2iyNln">
      <property role="2iyNlD" value="230" />
      <property role="2iyNlR" value="580" />
      <ref role="2iyNl9" to="q3xn:3HJBHARsh7U" resolve="ConceptDiagramCanvas" />
      <node concept="2iyNll" id="2_HXTiZD7dv" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7c$" role="2iyNln">
      <property role="2iyNlD" value="685" />
      <property role="2iyNlR" value="850" />
      <ref role="2iyNl9" to="q3xn:3HJBHARtgyV" resolve="ConceptRectangle" />
      <node concept="2iyNll" id="2_HXTiZD7d_" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiZD7dA" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7c_" role="2iyNln">
      <property role="2iyNlD" value="1045" />
      <property role="2iyNlR" value="240" />
      <ref role="2iyNl9" to="q3xn:6YJvVULPUly" resolve="ConceptSpecialisationLine" />
      <node concept="2iyNll" id="2_HXTiZD7db" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cA" role="2iyNln">
      <property role="2iyNlD" value="175" />
      <property role="2iyNlR" value="260" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
      <node concept="2iyNll" id="2_HXTiZD7dy" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cB" role="2iyNln">
      <property role="2iyNlD" value="990" />
      <property role="2iyNlR" value="750" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z4h" resolve="DCircleShape" />
      <node concept="2iyNll" id="2_HXTiZD7do" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cC" role="2iyNln">
      <property role="2iyNlD" value="440" />
      <property role="2iyNlR" value="235" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      <node concept="2iyNll" id="2_HXTiZD7dd" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cD" role="2iyNln">
      <property role="2iyNlD" value="415" />
      <property role="2iyNlR" value="475" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      <node concept="2iyNll" id="2_HXTiZD7dp" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:WHdioYVYaT" resolve="DVisible" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cE" role="2iyNln">
      <property role="2iyNlD" value="670" />
      <property role="2iyNlR" value="555" />
      <ref role="2iyNl9" to="q3xn:2gyk5S1Dvn0" resolve="DDeviceInput" />
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cF" role="2iyNln">
      <property role="2iyNlD" value="105" />
      <property role="2iyNlR" value="460" />
      <ref role="2iyNl9" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      <node concept="2iyNll" id="2_HXTiZD7dl" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cG" role="2iyNln">
      <property role="2iyNlD" value="465" />
      <property role="2iyNlR" value="595" />
      <ref role="2iyNl9" to="q3xn:4NMtPTvGXY5" resolve="DDimension" />
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cH" role="2iyNln">
      <property role="2iyNlD" value="255" />
      <property role="2iyNlR" value="950" />
      <ref role="2iyNl9" to="q3xn:3VTki$0kFQZ" resolve="DEdgeJoint" />
      <node concept="2iyNll" id="2_HXTiZD7d9" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
      </node>
      <node concept="2iyNll" id="2_HXTiZD7da" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cI" role="2iyNln">
      <property role="2iyNlD" value="615" />
      <property role="2iyNlR" value="985" />
      <ref role="2iyNl9" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      <node concept="2iyNll" id="2_HXTiZD7d6" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiZD7d7" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cJ" role="2iyNln">
      <property role="2iyNlD" value="770" />
      <property role="2iyNlR" value="785" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      <node concept="2iyNll" id="2_HXTiZD7de" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiZD7df" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cK" role="2iyNln">
      <property role="2iyNlD" value="370" />
      <property role="2iyNlR" value="675" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3D" resolve="DFrame" />
      <node concept="2iyNll" id="2_HXTiZD7dw" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cL" role="2iyNln">
      <property role="2iyNlD" value="815" />
      <property role="2iyNlR" value="300" />
      <ref role="2iyNl9" to="q3xn:7wc8RN4MUFm" resolve="DImage" />
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cM" role="2iyNln">
      <property role="2iyNlD" value="310" />
      <property role="2iyNlR" value="810" />
      <ref role="2iyNl9" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
      <node concept="2iyNll" id="2_HXTiZD7di" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cN" role="2iyNln">
      <property role="2iyNlD" value="635" />
      <property role="2iyNlR" value="415" />
      <ref role="2iyNl9" to="q3xn:6YJvVULTHtj" resolve="DLineSegment" />
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cO" role="2iyNln">
      <property role="2iyNlD" value="520" />
      <property role="2iyNlR" value="45" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfpttw" resolve="DMenu" />
      <node concept="2iyNll" id="2_HXTiZD7dz" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cP" role="2iyNln">
      <property role="2iyNlD" value="675" />
      <property role="2iyNlR" value="80" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfpttH" resolve="DMenuItem" />
      <node concept="2iyNll" id="2_HXTiZD7dt" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cQ" role="2iyNln">
      <property role="2iyNlD" value="295" />
      <property role="2iyNlR" value="355" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfoMuD" resolve="DMenubar" />
      <node concept="2iyNll" id="2_HXTiZD7du" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cR" role="2iyNln">
      <property role="2iyNlD" value="510" />
      <property role="2iyNlR" value="835" />
      <ref role="2iyNl9" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cS" role="2iyNln">
      <property role="2iyNlD" value="445" />
      <property role="2iyNlR" value="1030" />
      <ref role="2iyNl9" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
      <node concept="2iyNll" id="2_HXTiZD7d$" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cT" role="2iyNln">
      <property role="2iyNlD" value="1010" />
      <property role="2iyNlR" value="405" />
      <ref role="2iyNl9" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      <node concept="2iyNll" id="2_HXTiZD7dx" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cU" role="2iyNln">
      <property role="2iyNlD" value="925" />
      <property role="2iyNlR" value="565" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
      <node concept="2iyNll" id="2_HXTiZD7dq" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cV" role="2iyNln">
      <property role="2iyNlD" value="640" />
      <property role="2iyNlR" value="255" />
      <ref role="2iyNl9" to="q3xn:681X9Tz0KVS" resolve="DNodeComponent" />
      <node concept="2iyNll" id="2_HXTiZD7dm" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cW" role="2iyNln">
      <property role="2iyNlD" value="320" />
      <property role="2iyNlR" value="90" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3d" resolve="DPanel" />
      <node concept="2iyNll" id="2_HXTiZD7dh" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cX" role="2iyNln">
      <property role="2iyNlD" value="795" />
      <property role="2iyNlR" value="445" />
      <ref role="2iyNl9" to="q3xn:4NMtPTvGW7r" resolve="DPoint" />
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cY" role="2iyNln">
      <property role="2iyNlD" value="920" />
      <property role="2iyNlR" value="905" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      <node concept="2iyNll" id="2_HXTiZD7dr" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7cZ" role="2iyNln">
      <property role="2iyNlD" value="765" />
      <property role="2iyNlR" value="635" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      <node concept="2iyNll" id="2_HXTiZD7ds" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:WHdioYVYaT" resolve="DVisible" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7d0" role="2iyNln">
      <property role="2iyNlD" value="500" />
      <property role="2iyNlR" value="365" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3o" resolve="DSplitPane" />
      <node concept="2iyNll" id="2_HXTiZD7d8" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7d1" role="2iyNln">
      <property role="2iyNlD" value="570" />
      <property role="2iyNlR" value="665" />
      <ref role="2iyNl9" to="q3xn:WHdioYVYaT" resolve="DVisible" />
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7d2" role="2iyNln">
      <property role="2iyNlD" value="875" />
      <property role="2iyNlR" value="150" />
      <ref role="2iyNl9" to="q3xn:67eN9QkfT0n" resolve="LinkLine" />
      <node concept="2iyNll" id="2_HXTiZD7dg" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7d3" role="2iyNln">
      <property role="2iyNlD" value="90" />
      <property role="2iyNlR" value="680" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuQyh" resolve="StructDiagramCanvas" />
      <node concept="2iyNll" id="2_HXTiZD7dn" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7d4" role="2iyNln">
      <property role="2iyNlD" value="790" />
      <property role="2iyNlR" value="1055" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuSLJ" resolve="StructRectangle" />
      <node concept="2iyNll" id="2_HXTiZD7dj" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      </node>
      <node concept="2iyNll" id="2_HXTiZD7dk" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="2_HXTiZD7d5" role="2iyNln">
      <property role="2iyNlD" value="1115" />
      <property role="2iyNlR" value="585" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuSMF" resolve="StructSpecialisationLine" />
      <node concept="2iyNll" id="2_HXTiZD7dc" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bd" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3HJBHARsh7U" resolve="ConceptDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7be" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3HJBHARtgyV" resolve="ConceptRectangle" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bf" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:6YJvVULPUly" resolve="ConceptSpecialisationLine" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bg" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bh" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z4h" resolve="DCircleShape" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bi" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bj" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bk" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2gyk5S1Dvn0" resolve="DDeviceInput" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bl" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bm" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:4NMtPTvGXY5" resolve="DDimension" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bn" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTki$0kFQZ" resolve="DEdgeJoint" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bo" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bp" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bq" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3D" resolve="DFrame" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7br" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:7wc8RN4MUFm" resolve="DImage" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bs" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bt" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:6YJvVULTHtj" resolve="DLineSegment" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bu" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfpttw" resolve="DMenu" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bv" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfpttH" resolve="DMenuItem" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bw" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfoMuD" resolve="DMenubar" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bx" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7by" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bz" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7b$" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7b_" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:681X9Tz0KVS" resolve="DNodeComponent" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bA" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3d" resolve="DPanel" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bB" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:4NMtPTvGW7r" resolve="DPoint" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bC" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bD" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2r" resolve="DShape" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bE" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3o" resolve="DSplitPane" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bF" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:WHdioYVYaT" resolve="DVisible" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bG" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:67eN9QkfT0n" resolve="LinkLine" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bH" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuQyh" resolve="StructDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bI" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuSLJ" resolve="StructRectangle" />
    </node>
    <node concept="3z7$6w" id="2_HXTiZD7bJ" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuSMF" resolve="StructSpecialisationLine" />
    </node>
    <node concept="A2Dkr" id="2_HXTiZD7bc" role="2pcM1O">
      <property role="A2Dkq" value="ce36526d-d793-4b8b-88e9-d1815f616441" />
      <property role="A2Dkp" value="DclareGui" />
    </node>
  </node>
</model>

