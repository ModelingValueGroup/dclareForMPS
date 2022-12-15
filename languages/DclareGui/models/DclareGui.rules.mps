<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3ec44d77-eb4f-4600-add0-5e671af45a7b(DclareGui.rules)">
  <persistence version="9" />
  <languages>
    <use id="c32b788d-8e4b-4023-97f5-3e90d04ed77b" name="DclareMPS" version="5" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports />
  <registry>
    <language id="c32b788d-8e4b-4023-97f5-3e90d04ed77b" name="DclareMPS">
      <concept id="5858913584106642961" name="DclareMPS.structure.Aspect" flags="ng" index="2Rb1jd" />
      <concept id="5263414693702615530" name="DclareMPS.structure.StructClass" flags="ng" index="2UJ2oG">
        <child id="5263414693702617674" name="extends" index="2UJ2Qc" />
      </concept>
      <concept id="5263414693702617671" name="DclareMPS.structure.StructClassReference" flags="ng" index="2UJ2Q1">
        <reference id="5263414693702617672" name="class" index="2UJ2Qe" />
      </concept>
      <concept id="2483495814491113449" name="DclareMPS.structure.RuleSet" flags="ng" index="3tBE6x">
        <reference id="5858913584106722103" name="aspect" index="2RaPBF" />
        <child id="7599581349097315861" name="members" index="1FPzNG" />
      </concept>
      <concept id="4435611260584021618" name="DclareMPS.structure.StructRuleSet" flags="ng" index="3LmNE2">
        <reference id="5263414693702617678" name="structClass" index="2UJ2Q8" />
      </concept>
      <concept id="6584359627792080012" name="DclareMPS.structure.NativeDeclaration" flags="ng" index="1OA0iY">
        <child id="6584359627792080018" name="exit" index="1OA0iw" />
        <child id="6584359627792080016" name="init" index="1OA0iy" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS" />
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
  <node concept="2UJ2oG" id="WHdioYVYaT">
    <property role="TrG5h" value="DVisible" />
    <property role="3GE5qa" value="structs" />
  </node>
  <node concept="3LmNE2" id="WHdioYVYbc">
    <property role="3GE5qa" value="gui." />
    <ref role="2UJ2Q8" node="WHdioYVYaT" resolve="DVisible" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3v5" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3v6" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3v7" role="1OA0iw" />
    </node>
  </node>
  <node concept="2Rb1jd" id="WHdioYVYbd">
    <property role="TrG5h" value="GUI" />
    <property role="3GE5qa" value="gui." />
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z2r">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DShape" />
    <node concept="2UJ2Q1" id="skgx$J4Z2_" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="WHdioYVYaT" resolve="DVisible" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z2s">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DContainer" />
    <node concept="2UJ2Q1" id="skgx$J4Z2D" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="WHdioYVYaT" resolve="DVisible" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z2F">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DComponent" />
    <node concept="2UJ2Q1" id="skgx$J4Z2I" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2s" resolve="DContainer" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z32">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DCanvas" />
    <node concept="2UJ2Q1" id="skgx$J4Z35" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2F" resolve="DComponent" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z3d">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DPanel" />
    <node concept="2UJ2Q1" id="skgx$J4Z3g" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2F" resolve="DComponent" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z3o">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DSplitPane" />
    <node concept="2UJ2Q1" id="skgx$J4Z3r" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2F" resolve="DComponent" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z3D">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DFrame" />
    <node concept="2UJ2Q1" id="skgx$J4Z3G" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2s" resolve="DContainer" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z3O">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DLine" />
    <node concept="2UJ2Q1" id="skgx$J4Z3R" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2r" resolve="DShape" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z45">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DFilled" />
    <node concept="2UJ2Q1" id="skgx$J4Z48" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z2r" resolve="DShape" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z4a">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DRectangle" />
    <node concept="2UJ2Q1" id="skgx$J4Z4f" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z45" resolve="DFilled" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z4h">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DCircle" />
    <node concept="2UJ2Q1" id="skgx$J4Z4k" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z45" resolve="DFilled" />
    </node>
  </node>
  <node concept="2UJ2oG" id="skgx$J4Z4s">
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="DTriangle" />
    <node concept="2UJ2Q1" id="skgx$J4Z4v" role="2UJ2Qc">
      <ref role="2UJ2Qe" node="skgx$J4Z45" resolve="DFilled" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4B">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z4s" resolve="DTriangle" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3vb" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vc" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vd" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4C">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z3o" resolve="DSplitPane" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3vh" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vi" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vj" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4D">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z2r" resolve="DShape" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3vn" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vo" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vp" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4E">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z4a" resolve="DRectangle" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3vt" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vu" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vv" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4F">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z3d" resolve="DPanel" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3vz" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3v$" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3v_" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4G">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z3O" resolve="DLine" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3vD" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vE" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vF" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4H">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z3D" resolve="DFrame" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3vJ" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vK" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vL" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4I">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z45" resolve="DFilled" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3vP" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vQ" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vR" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4J">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z2s" resolve="DContainer" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3vV" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3vW" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3vX" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4K">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z2F" resolve="DComponent" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3w1" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3w2" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3w3" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4L">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z4h" resolve="DCircle" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3w7" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3w8" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3w9" role="1OA0iw" />
    </node>
  </node>
  <node concept="3LmNE2" id="skgx$J4Z4M">
    <property role="3GE5qa" value="gui" />
    <ref role="2UJ2Q8" node="skgx$J4Z32" resolve="DCanvas" />
    <ref role="2RaPBF" node="WHdioYVYbd" resolve="GUI" />
    <node concept="1OA0iY" id="3ySjgkDG3wd" role="1FPzNG">
      <node concept="3clFbS" id="3ySjgkDG3we" role="1OA0iy" />
      <node concept="3clFbS" id="3ySjgkDG3wf" role="1OA0iw" />
    </node>
  </node>
</model>

