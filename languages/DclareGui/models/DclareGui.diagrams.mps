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
        <child id="3484711917226236497" name="nodes" index="2iyNln" />
      </concept>
      <concept id="3484711917226236502" name="DclareGui.structure.JointLayout" flags="ng" index="2iyNlg">
        <property id="3484711917226238919" name="x" index="2iyKN1" />
        <property id="3484711917226238921" name="y" index="2iyKNf" />
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
  <node concept="3z7$_r" id="5hEUvARWFgs">
    <property role="TrG5h" value="structs" />
    <node concept="2iyNl8" id="3jHNPFKMxTw" role="2iyNln">
      <property role="2iyNlR" value="740" />
      <property role="2iyNlD" value="1360" />
      <ref role="2iyNl9" to="q3xn:3HJBHARsh7U" resolve="ConceptDiagramCanvas" />
      <node concept="2iyNll" id="3jHNPFKMxTG" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTq" role="2iyNln">
      <property role="2iyNlR" value="600" />
      <property role="2iyNlD" value="800" />
      <ref role="2iyNl9" to="q3xn:3HJBHARtgyV" resolve="ConceptRectangle" />
      <node concept="2iyNll" id="3jHNPFKMxTH" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      </node>
      <node concept="2iyNll" id="3jHNPFKMxTI" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTa" role="2iyNln">
      <property role="2iyNlR" value="600" />
      <property role="2iyNlD" value="300" />
      <ref role="2iyNl9" to="q3xn:6YJvVULPUly" resolve="ConceptSpecialisationLine" />
      <node concept="2iyNll" id="3jHNPFKMxTS" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTb" role="2iyNln">
      <property role="2iyNlR" value="440" />
      <property role="2iyNlD" value="1180" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
      <node concept="2iyNll" id="3jHNPFKMxTP" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTs" role="2iyNln">
      <property role="2iyNlR" value="440" />
      <property role="2iyNlD" value="660" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z4h" resolve="DCircleShape" />
      <node concept="2iyNll" id="3jHNPFKMxT$" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTj" role="2iyNln">
      <property role="2iyNlR" value="260" />
      <property role="2iyNlD" value="1240" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      <node concept="2iyNll" id="3jHNPFKMxT_" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxT7" role="2iyNln">
      <property role="2iyNlR" value="120" />
      <property role="2iyNlD" value="1040" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      <node concept="2iyNll" id="3jHNPFKMxTT" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:WHdioYVYaT" resolve="DVisible" />
      </node>
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfC" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3HJBHARsh7U" resolve="ConceptDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfS" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3HJBHARtgyV" resolve="ConceptRectangle" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfK" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:6YJvVULPUly" resolve="ConceptSpecialisationLine" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfT" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfF" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z4h" resolve="DCircleShape" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRf_" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfW" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfy" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2gyk5S1Dvn0" resolve="DDeviceInput" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfz" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfO" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:4NMtPTvGXY5" resolve="DDimension" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfx" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfJ" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfL" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3D" resolve="DFrame" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfI" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:7wc8RN4MUFm" resolve="DImage" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfQ" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:6YJvVULTHtj" resolve="DLineSegment" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfR" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfpttw" resolve="DMenu" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfN" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfpttH" resolve="DMenuItem" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfU" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2xAA8jfoMuD" resolve="DMenubar" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfD" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfB" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfE" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:681X9Tz0KVS" resolve="DNodeComponent" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfP" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3d" resolve="DPanel" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRf$" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:4NMtPTvGW7r" resolve="DPoint" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfM" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfA" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z2r" resolve="DShape" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfV" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:skgx$J4Z3o" resolve="DSplitPane" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfG" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:WHdioYVYaT" resolve="DVisible" />
    </node>
    <node concept="3z7$6w" id="5hEUvARWRfH" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:67eN9QkfT0n" resolve="LinkLine" />
    </node>
    <node concept="3z7$6w" id="2QCHpowuQyi" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuQyh" resolve="StructDiagramCanvas" />
    </node>
    <node concept="3z7$6w" id="2QCHpowuSLK" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuSLJ" resolve="StructRectangle" />
    </node>
    <node concept="3z7$6w" id="2QCHpowuSMG" role="3z7$1E">
      <ref role="3z7$6z" to="q3xn:2QCHpowuSMF" resolve="StructSpecialisationLine" />
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTi" role="2iyNln">
      <property role="2iyNlR" value="140" />
      <property role="2iyNlD" value="1680" />
      <ref role="2iyNl9" to="q3xn:2gyk5S1Dvn0" resolve="DDeviceInput" />
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTm" role="2iyNln">
      <property role="2iyNlR" value="600" />
      <property role="2iyNlD" value="1180" />
      <ref role="2iyNl9" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      <node concept="2iyNll" id="3jHNPFKMxTF" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z32" resolve="DCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTy" role="2iyNln">
      <property role="2iyNlR" value="140" />
      <property role="2iyNlD" value="1480" />
      <ref role="2iyNl9" to="q3xn:4NMtPTvGXY5" resolve="DDimension" />
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxT5" role="2iyNln">
      <property role="2iyNlR" value="440" />
      <property role="2iyNlD" value="340" />
      <ref role="2iyNl9" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      <node concept="2iyNll" id="3jHNPFKMxTN" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTp" role="2iyNln">
      <property role="2iyNlR" value="280" />
      <property role="2iyNlD" value="500" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      <node concept="2iyNll" id="3jHNPFKMxTL" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTk" role="2iyNln">
      <property role="2iyNlR" value="260" />
      <property role="2iyNlD" value="940" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3D" resolve="DFrame" />
      <node concept="2iyNll" id="3jHNPFKMxTC" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2s" resolve="DContainer" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTl" role="2iyNln">
      <property role="2iyNlR" value="60" />
      <property role="2iyNlD" value="1680" />
      <ref role="2iyNl9" to="q3xn:7wc8RN4MUFm" resolve="DImage" />
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxT6" role="2iyNln">
      <property role="2iyNlR" value="220" />
      <property role="2iyNlD" value="1480" />
      <ref role="2iyNl9" to="q3xn:6YJvVULTHtj" resolve="DLineSegment" />
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTh" role="2iyNln">
      <property role="2iyNlR" value="440" />
      <property role="2iyNlD" value="1780" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfpttw" resolve="DMenu" />
      <node concept="2iyNll" id="3jHNPFKMxTV" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTu" role="2iyNln">
      <property role="2iyNlR" value="440" />
      <property role="2iyNlD" value="1040" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfpttH" resolve="DMenuItem" />
      <node concept="2iyNll" id="3jHNPFKMxTA" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTf" role="2iyNln">
      <property role="2iyNlR" value="440" />
      <property role="2iyNlD" value="900" />
      <ref role="2iyNl9" to="q3xn:2xAA8jfoMuD" resolve="DMenubar" />
      <node concept="2iyNll" id="3jHNPFKMxTW" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTz" role="2iyNln">
      <property role="2iyNlR" value="440" />
      <property role="2iyNlD" value="100" />
      <ref role="2iyNl9" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      <node concept="2iyNll" id="3jHNPFKMxTU" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTv" role="2iyNln">
      <property role="2iyNlR" value="280" />
      <property role="2iyNlD" value="100" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3O" resolve="DMultiLineShape" />
      <node concept="2iyNll" id="3jHNPFKMxTK" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2r" resolve="DShape" />
        <node concept="2iyNlg" id="1AFJzHF7c8B" role="2iyKN2">
          <property role="2iyKNf" value="140" />
          <property role="2iyKN1" value="100" />
        </node>
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTn" role="2iyNln">
      <property role="2iyNlR" value="440" />
      <property role="2iyNlD" value="1620" />
      <ref role="2iyNl9" to="q3xn:681X9Tz0KVS" resolve="DNodeComponent" />
      <node concept="2iyNll" id="3jHNPFKMxTD" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTx" role="2iyNln">
      <property role="2iyNlR" value="440" />
      <property role="2iyNlD" value="1320" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3d" resolve="DPanel" />
      <node concept="2iyNll" id="3jHNPFKMxTE" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTr" role="2iyNln">
      <property role="2iyNlR" value="60" />
      <property role="2iyNlD" value="1480" />
      <ref role="2iyNl9" to="q3xn:4NMtPTvGW7r" resolve="DPoint" />
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTo" role="2iyNln">
      <property role="2iyNlR" value="440" />
      <property role="2iyNlD" value="500" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      <node concept="2iyNll" id="3jHNPFKMxTJ" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z45" resolve="DFilledShape" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTt" role="2iyNln">
      <property role="2iyNlR" value="140" />
      <property role="2iyNlD" value="500" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z2r" resolve="DShape" />
      <node concept="2iyNll" id="3jHNPFKMxTB" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:WHdioYVYaT" resolve="DVisible" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTg" role="2iyNln">
      <property role="2iyNlR" value="440" />
      <property role="2iyNlD" value="1460" />
      <ref role="2iyNl9" to="q3xn:skgx$J4Z3o" resolve="DSplitPane" />
      <node concept="2iyNll" id="3jHNPFKMxTQ" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z2F" resolve="DComponent" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTe" role="2iyNln">
      <property role="2iyNlR" value="60" />
      <property role="2iyNlD" value="780" />
      <ref role="2iyNl9" to="q3xn:WHdioYVYaT" resolve="DVisible" />
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxT9" role="2iyNln">
      <property role="2iyNlR" value="600" />
      <property role="2iyNlD" value="80" />
      <ref role="2iyNl9" to="q3xn:67eN9QkfT0n" resolve="LinkLine" />
      <node concept="2iyNll" id="3jHNPFKMxTR" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTc" role="2iyNln">
      <property role="2iyNlR" value="740" />
      <property role="2iyNlD" value="1060" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuQyh" resolve="StructDiagramCanvas" />
      <node concept="2iyNll" id="3jHNPFKMxTO" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowr30i" resolve="DDiagramCanvas" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxTd" role="2iyNln">
      <property role="2iyNlR" value="600" />
      <property role="2iyNlD" value="560" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuSLJ" resolve="StructRectangle" />
      <node concept="2iyNll" id="3jHNPFKMxTX" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:skgx$J4Z4a" resolve="DRectangleShape" />
      </node>
      <node concept="2iyNll" id="3jHNPFKMxTY" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowptDc" resolve="DFilledNode" />
      </node>
    </node>
    <node concept="2iyNl8" id="3jHNPFKMxT8" role="2iyNln">
      <property role="2iyNlR" value="740" />
      <property role="2iyNlD" value="200" />
      <ref role="2iyNl9" to="q3xn:2QCHpowuSMF" resolve="StructSpecialisationLine" />
      <node concept="2iyNll" id="3jHNPFKMxTM" role="2iyNmk">
        <ref role="2iyNli" to="q3xn:3OZjsowp$AG" resolve="DMultiLineEdge" />
      </node>
    </node>
    <node concept="A2Dkr" id="2$yK5YKoP1e" role="2pcM1O">
      <property role="A2Dkp" value="DclareGui" />
      <property role="A2Dkq" value="ce36526d-d793-4b8b-88e9-d1815f616441" />
    </node>
  </node>
  <node concept="3PWz7o" id="7BVZ4Aes_qp">
    <property role="TrG5h" value="concepts" />
    <property role="5CCp0" value="true" />
    <node concept="2iyNl8" id="7BVZ4Aes_qu" role="2iyNln">
      <property role="2iyNlD" value="580" />
      <property role="2iyNlR" value="260" />
      <ref role="2iyNl9" to="53d4:67eN9QkffP5" resolve="ConceptDiagram" />
      <node concept="2iyNll" id="7BVZ4Aes_qS" role="2iyNmk">
        <ref role="2iyNli" to="53d4:3psr82$eZ54" resolve="IDiagram" />
        <node concept="2iyNlg" id="5$hAhBtryqH" role="2iyKN2">
          <property role="2iyKN1" value="580" />
          <property role="2iyKNf" value="160" />
        </node>
      </node>
      <node concept="2iyNll" id="1AFJzHFdCoj" role="2iyNmk">
        <ref role="2iyNli" to="53d4:67eN9Qkfp8P" resolve="concepts" />
      </node>
    </node>
    <node concept="2iyNl8" id="7BVZ4Aes_xG" role="2iyNln">
      <property role="2iyNlD" value="580" />
      <property role="2iyNlR" value="480" />
      <ref role="2iyNl9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="2iyNl8" id="7BVZ4Aes_qH" role="2iyNln">
      <property role="2iyNlD" value="100" />
      <property role="2iyNlR" value="340" />
      <ref role="2iyNl9" to="53d4:31sbKqyPLDj" resolve="EdgeLayout" />
      <node concept="2iyNll" id="7BVZ4Aes_rq" role="2iyNmk">
        <ref role="2iyNli" to="53d4:31sbKqyPMf4" resolve="joints" />
      </node>
    </node>
    <node concept="2iyNl8" id="7BVZ4Aes_qR" role="2iyNln">
      <property role="2iyNlD" value="340" />
      <property role="2iyNlR" value="160" />
      <ref role="2iyNl9" to="53d4:3psr82$eZ54" resolve="IDiagram" />
      <node concept="2iyNll" id="7BVZ4Aes_r8" role="2iyNmk">
        <ref role="2iyNli" to="53d4:3psr82$c6ii" resolve="IEditor" />
      </node>
      <node concept="2iyNll" id="7BVZ4Aes_rJ" role="2iyNmk">
        <ref role="2iyNli" to="53d4:31sbKqyPLDh" resolve="nodes" />
        <node concept="2iyNlg" id="7BVZ4Aes__G" role="2iyKN2">
          <property role="2iyKNf" value="160" />
          <property role="2iyKN1" value="100" />
        </node>
      </node>
    </node>
    <node concept="2iyNl8" id="7BVZ4Aes_r7" role="2iyNln">
      <property role="2iyNlD" value="340" />
      <property role="2iyNlR" value="60" />
      <ref role="2iyNl9" to="53d4:3psr82$c6ii" resolve="IEditor" />
    </node>
    <node concept="2iyNl8" id="7BVZ4Aes_rp" role="2iyNln">
      <property role="2iyNlD" value="100" />
      <property role="2iyNlR" value="480" />
      <ref role="2iyNl9" to="53d4:31sbKqyPLDm" resolve="JointLayout" />
    </node>
    <node concept="2iyNl8" id="7BVZ4Aes_rI" role="2iyNln">
      <property role="2iyNlD" value="100" />
      <property role="2iyNlR" value="220" />
      <ref role="2iyNl9" to="53d4:31sbKqyPLDe" resolve="NodeLayout" />
      <node concept="2iyNll" id="7BVZ4Aes_rK" role="2iyNmk">
        <ref role="2iyNli" to="53d4:31sbKqyPLEi" resolve="edges" />
      </node>
    </node>
    <node concept="2iyNl8" id="7BVZ4Aes_sa" role="2iyNln">
      <property role="2iyNlD" value="340" />
      <property role="2iyNlR" value="260" />
      <ref role="2iyNl9" to="53d4:5hEUvARta2y" resolve="StructDiagram" />
      <node concept="2iyNll" id="7BVZ4Aes_sb" role="2iyNmk">
        <ref role="2iyNli" to="53d4:3psr82$eZ54" resolve="IDiagram" />
      </node>
      <node concept="2iyNll" id="1AFJzHFdCok" role="2iyNmk">
        <ref role="2iyNli" to="53d4:5hEUvARtaAj" resolve="structs" />
      </node>
    </node>
    <node concept="2iyNl8" id="7BVZ4Aes_ye" role="2iyNln">
      <property role="2iyNlD" value="340" />
      <property role="2iyNlR" value="480" />
      <ref role="2iyNl9" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
      <node concept="2iyNll" id="1AFJzHFdCoh" role="2iyNmk">
        <ref role="2iyNli" to="7ggn:4$bpWrNHODa" resolve="extends" />
        <node concept="2iyNlg" id="1AFJzHFeEQ7" role="2iyKN2">
          <property role="2iyKNf" value="480" />
          <property role="2iyKN1" value="240" />
        </node>
        <node concept="2iyNlg" id="1AFJzHFeEQ9" role="2iyKN2">
          <property role="2iyKNf" value="580" />
          <property role="2iyKN1" value="240" />
        </node>
        <node concept="2iyNlg" id="5$hAhBtryq$" role="2iyKN2">
          <property role="2iyKN1" value="440" />
          <property role="2iyKNf" value="580" />
        </node>
        <node concept="2iyNlg" id="5$hAhBtryqC" role="2iyKN2">
          <property role="2iyKN1" value="440" />
          <property role="2iyKNf" value="480" />
        </node>
      </node>
    </node>
    <node concept="3PzJGO" id="7BVZ4Aes_qs" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:67eN9QkffP5" resolve="ConceptDiagram" />
    </node>
    <node concept="3PzJGO" id="7BVZ4Aes_sV" role="3PWPUC">
      <ref role="3PzJGR" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="3PzJGO" id="7BVZ4Aes_qD" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:31sbKqyPLDj" resolve="EdgeLayout" />
    </node>
    <node concept="3PzJGO" id="7BVZ4Aes_qM" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:3psr82$eZ54" resolve="IDiagram" />
    </node>
    <node concept="3PzJGO" id="7BVZ4Aes_r1" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:3psr82$c6ii" resolve="IEditor" />
    </node>
    <node concept="3PzJGO" id="7BVZ4Aes_qw" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:67eN9Qkg3uD" resolve="ConceptRef" />
    </node>
    <node concept="3PzJGO" id="7BVZ4Aes_ri" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:31sbKqyPLDm" resolve="JointLayout" />
    </node>
    <node concept="3PzJGO" id="7BVZ4Aes_rA" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:31sbKqyPLDe" resolve="NodeLayout" />
    </node>
    <node concept="3PzJGO" id="7BVZ4Aes_s1" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:5hEUvARta2y" resolve="StructDiagram" />
    </node>
    <node concept="3PzJGO" id="7BVZ4Aes_ss" role="3PWPUC">
      <ref role="3PzJGR" to="53d4:5hEUvARtaxp" resolve="StructRef" />
    </node>
    <node concept="3PzJGO" id="7BVZ4Aes_y2" role="3PWPUC">
      <ref role="3PzJGR" to="7ggn:4$bpWrNHO7E" resolve="StructClass" />
    </node>
    <node concept="A2Dkr" id="7aFw1sqwd7k" role="1FiUSG">
      <property role="A2Dkp" value="DclareGui" />
      <property role="A2Dkq" value="ce36526d-d793-4b8b-88e9-d1815f616441" />
    </node>
  </node>
</model>

