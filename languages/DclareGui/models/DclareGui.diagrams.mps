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
        <property id="2964143021971881120" name="manual" index="2pdfNZ" />
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
    <node concept="2iyNl8" id="1zO1wi1crIc" role="2iyNln">
      <property role="2iyNlD" value="400" />
      <property role="2iyNlR" value="440" />
      <ref role="2iyNl9" to="53d4:67eN9QkffP5" resolve="ConceptDiagram" />
      <node concept="2iyNll" id="1zO1wi1crIk" role="2iyNmk">
        <ref role="2iyNli" to="53d4:3psr82$eZ54" resolve="IDiagram" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1crId" role="2iyNln">
      <property role="2iyNlD" value="640" />
      <property role="2iyNlR" value="280" />
      <ref role="2iyNl9" to="53d4:31sbKqyPLDj" resolve="EdgeLayout" />
      <node concept="2iyNll" id="1zO1wi1crIi" role="2iyNmk">
        <ref role="2iyNli" to="53d4:31sbKqyPMf4" resolve="joints" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi16A7$" role="2iyNln">
      <property role="2iyNlD" value="260" />
      <property role="2iyNlR" value="280" />
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
      <property role="2iyNlD" value="100" />
      <property role="2iyNlR" value="120" />
      <ref role="2iyNl9" to="53d4:3psr82$c6ii" resolve="IEditor" />
    </node>
    <node concept="2iyNl8" id="1zO1wi1crIe" role="2iyNln">
      <property role="2iyNlD" value="640" />
      <property role="2iyNlR" value="440" />
      <ref role="2iyNl9" to="53d4:31sbKqyPLDm" resolve="JointLayout" />
    </node>
    <node concept="2iyNl8" id="1zO1wi1crIf" role="2iyNln">
      <property role="2iyNlD" value="400" />
      <property role="2iyNlR" value="120" />
      <ref role="2iyNl9" to="53d4:31sbKqyPLDe" resolve="NodeLayout" />
      <node concept="2iyNll" id="1zO1wi1crIj" role="2iyNmk">
        <ref role="2iyNli" to="53d4:31sbKqyPLEi" resolve="edges" />
        <node concept="2iyNlg" id="1tLAihHFSJ1" role="2iyKN2">
          <property role="2iyKN1" value="640" />
          <property role="2iyKNf" value="120" />
          <property role="30jCVK" value="0" />
        </node>
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1crIg" role="2iyNln">
      <property role="2iyNlD" value="100" />
      <property role="2iyNlR" value="440" />
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
    <property role="2pdfNZ" value="true" />
    <property role="mcfiE" value="true" />
    <node concept="2iyNl8" id="1zO1wi1oniz" role="2iyNln">
      <property role="2iyNlD" value="102" />
      <property role="2iyNlR" value="185" />
      <ref role="2iyNl9" to="q3xn:3HJBHARsh7U" resolve="ConceptDiagramCanvas" />
      <node concept="2iyNll" id="1zO1wi1onjg" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oni$" role="2iyNln">
      <property role="2iyNlD" value="555" />
      <property role="2iyNlR" value="113" />
      <ref role="2iyNl9" to="q3xn:3HJBHARtgyV" resolve="ConceptRectangle" />
      <node concept="2iyNll" id="1zO1wi1onjx" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      </node>
      <node concept="2iyNll" id="1zO1wi1onjy" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oni_" role="2iyNln">
      <property role="2iyNlD" value="1300" />
      <property role="2iyNlR" value="380" />
      <ref role="2iyNl9" to="q3xn:6YJvVULPUly" resolve="ConceptSpecialisationLine" />
      <node concept="2iyNll" id="1zO1wi1onjw" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniA" role="2iyNln">
      <property role="2iyNlD" value="950" />
      <property role="2iyNlR" value="353" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
      <node concept="2iyNll" id="1zO1wi1onje" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniB" role="2iyNln">
      <property role="2iyNlD" value="377" />
      <property role="2iyNlR" value="344" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z4h" resolve="DCircleShape" />
      <node concept="2iyNll" id="1zO1wi1onjk" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniC" role="2iyNln">
      <property role="2iyNlD" value="320" />
      <property role="2iyNlR" value="80" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      <node concept="2iyNll" id="1zO1wi1onjA" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniD" role="2iyNln">
      <property role="2iyNlD" value="460" />
      <property role="2iyNlR" value="40" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      <node concept="2iyNll" id="1zO1wi1onjq" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:WHdioYVYaT" resolve="DVisible" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniE" role="2iyNln">
      <property role="2iyNlD" value="836" />
      <property role="2iyNlR" value="153" />
      <ref role="2iyNl9" to="q3xn:2gyk5S1Dvn0" resolve="DDeviceInput" />
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniF" role="2iyNln">
      <property role="2iyNlD" value="163" />
      <property role="2iyNlR" value="94" />
      <ref role="2iyNl9" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      <node concept="2iyNll" id="1zO1wi1onj_" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniH" role="2iyNln">
      <property role="2iyNlD" value="481" />
      <property role="2iyNlR" value="268" />
      <ref role="2iyNl9" to="q3xn:3VTki$0kFQZ" resolve="DEdgeJoint" />
      <node concept="2iyNll" id="1zO1wi1onjb" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
      </node>
      <node concept="2iyNll" id="1zO1wi1onjc" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniI" role="2iyNln">
      <property role="2iyNlD" value="477" />
      <property role="2iyNlR" value="361" />
      <ref role="2iyNl9" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      <node concept="2iyNll" id="1zO1wi1onjl" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
      <node concept="2iyNll" id="1zO1wi1onjm" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniJ" role="2iyNln">
      <property role="2iyNlD" value="761" />
      <property role="2iyNlR" value="127" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      <node concept="2iyNll" id="1zO1wi1onjz" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      </node>
      <node concept="2iyNll" id="1zO1wi1onj$" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniK" role="2iyNln">
      <property role="2iyNlD" value="822" />
      <property role="2iyNlR" value="75" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3D" resolve="DFrame" />
      <node concept="2iyNll" id="1zO1wi1onj8" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniL" role="2iyNln">
      <property role="2iyNlD" value="920" />
      <property role="2iyNlR" value="413" />
      <ref role="2iyNl9" to="q3xn:7wc8RN4MUFm" resolve="DImage" />
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniM" role="2iyNln">
      <property role="2iyNlD" value="232" />
      <property role="2iyNlR" value="291" />
      <ref role="2iyNl9" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
      <node concept="2iyNll" id="1zO1wi1onjs" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniO" role="2iyNln">
      <property role="2iyNlD" value="914" />
      <property role="2iyNlR" value="217" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfpttw" resolve="DMenu" />
      <node concept="2iyNll" id="1zO1wi1onji" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniP" role="2iyNln">
      <property role="2iyNlD" value="836" />
      <property role="2iyNlR" value="319" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfpttH" resolve="DMenuItem" />
      <node concept="2iyNll" id="1zO1wi1onjv" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniQ" role="2iyNln">
      <property role="2iyNlD" value="440" />
      <property role="2iyNlR" value="500" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfoMuD" resolve="DMenubar" />
      <node concept="2iyNll" id="1zO1wi1onjo" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniR" role="2iyNln">
      <property role="2iyNlD" value="891" />
      <property role="2iyNlR" value="489" />
      <ref role="2iyNl9" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniS" role="2iyNln">
      <property role="2iyNlD" value="560" />
      <property role="2iyNlR" value="580" />
      <ref role="2iyNl9" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
      <node concept="2iyNll" id="1zO1wi1onjp" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniT" role="2iyNln">
      <property role="2iyNlD" value="680" />
      <property role="2iyNlR" value="20" />
      <ref role="2iyNl9" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      <node concept="2iyNll" id="1zO1wi1onjj" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniU" role="2iyNln">
      <property role="2iyNlD" value="755" />
      <property role="2iyNlR" value="214" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
      <node concept="2iyNll" id="1zO1wi1onjr" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniV" role="2iyNln">
      <property role="2iyNlD" value="819" />
      <property role="2iyNlR" value="390" />
      <ref role="2iyNl9" to="q3xn:681X9Tz0KVS" resolve="DNodeComponent" />
      <node concept="2iyNll" id="1zO1wi1onja" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniW" role="2iyNln">
      <property role="2iyNlD" value="320" />
      <property role="2iyNlR" value="540" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3d" resolve="DPanel" />
      <node concept="2iyNll" id="1zO1wi1onjt" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniY" role="2iyNln">
      <property role="2iyNlD" value="514" />
      <property role="2iyNlR" value="363" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      <node concept="2iyNll" id="1zO1wi1onju" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1oniZ" role="2iyNln">
      <property role="2iyNlD" value="100" />
      <property role="2iyNlR" value="380" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      <node concept="2iyNll" id="1zO1wi1onjf" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:WHdioYVYaT" resolve="DVisible" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1onj0" role="2iyNln">
      <property role="2iyNlD" value="789" />
      <property role="2iyNlR" value="72" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3o" resolve="DSplitPane" />
      <node concept="2iyNll" id="1zO1wi1onjd" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1onj1" role="2iyNln">
      <property role="2iyNlD" value="140" />
      <property role="2iyNlR" value="20" />
      <ref role="2iyNl9" to="q3xn:WHdioYVYaT" resolve="DVisible" />
    </node>
    <node concept="2iyNl8" id="1zO1wi1onj2" role="2iyNln">
      <property role="2iyNlD" value="720" />
      <property role="2iyNlR" value="580" />
      <ref role="2iyNl9" to="q3xn:67eN9QkfT0n" resolve="LinkLine" />
      <node concept="2iyNll" id="1zO1wi1onjh" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1onj3" role="2iyNln">
      <property role="2iyNlD" value="573" />
      <property role="2iyNlR" value="420" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuQyh" resolve="StructDiagramCanvas" />
      <node concept="2iyNll" id="1zO1wi1onjn" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1onj4" role="2iyNln">
      <property role="2iyNlD" value="987" />
      <property role="2iyNlR" value="120" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuSLJ" resolve="StructRectangle" />
      <node concept="2iyNll" id="1zO1wi1onj6" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      </node>
      <node concept="2iyNll" id="1zO1wi1onj7" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="1zO1wi1onj5" role="2iyNln">
      <property role="2iyNlD" value="962" />
      <property role="2iyNlR" value="462" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuSMF" resolve="StructSpecialisationLine" />
      <node concept="2iyNll" id="1zO1wi1onj9" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="3z7$6w" id="1zO1wi1laCU" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3HJBHARsh7U" resolve="ConceptDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laCV" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3HJBHARtgyV" resolve="ConceptRectangle" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laCW" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:6YJvVULPUly" resolve="ConceptSpecialisationLine" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laCX" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laCY" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z4h" resolve="DCircleShape" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laCZ" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laD0" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laD1" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2gyk5S1Dvn0" resolve="DDeviceInput" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laD2" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laD4" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTki$0kFQZ" resolve="DEdgeJoint" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laD5" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laD6" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laD7" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3D" resolve="DFrame" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laD8" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:7wc8RN4MUFm" resolve="DImage" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laD9" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTkizWCVbO" resolve="DJoint" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDb" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfpttw" resolve="DMenu" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDc" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfpttH" resolve="DMenuItem" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDd" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfoMuD" resolve="DMenubar" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDe" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTkizWGbn5" resolve="DMovable" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDf" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3VTki$0W76c" resolve="DMovableNode" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDg" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDh" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDi" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:681X9Tz0KVS" resolve="DNodeComponent" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDj" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3d" resolve="DPanel" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDl" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDm" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2r" resolve="DShape" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDn" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3o" resolve="DSplitPane" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDo" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:WHdioYVYaT" resolve="DVisible" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDp" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:67eN9QkfT0n" resolve="LinkLine" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDq" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuQyh" resolve="StructDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDr" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuSLJ" resolve="StructRectangle" />
    </node>
    <node concept="3z7$6w" id="1zO1wi1laDs" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuSMF" resolve="StructSpecialisationLine" />
    </node>
    <node concept="A2Dkr" id="1zO1wi1laCT" role="2pcM1O">
      <property role="A2Dkq" value="ce36526d-d793-4b8b-88e9-d1815f616441" />
      <property role="A2Dkp" value="DclareGui" />
    </node>
  </node>
</model>

