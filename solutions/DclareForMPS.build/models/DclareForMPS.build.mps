<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:10463b38-a01c-4c1f-8bb8-309452040dd9(DclareForMPS.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="5" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="2750015747481074431" name="jetbrains.mps.build.structure.BuildLayout_Files" flags="ng" index="2HvfSZ">
        <child id="2750015747481074432" name="path" index="2HvfZ0" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050071" name="jetbrains.mps.build.structure.BuildLayout_Zip" flags="ng" index="3981dG" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT" />
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731981027" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleSolutionRuntime" flags="ng" index="1E0d5M">
        <reference id="3189788309731981028" name="solution" index="1E0d5P" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="3189788309731917348" name="runtime" index="1E1XAP" />
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="5TmHY1kYraH">
    <property role="TrG5h" value="DclareForMPS" />
    <property role="2DA0ip" value="../../" />
    <node concept="10PD9b" id="5TmHY1kYraI" role="10PD9s" />
    <node concept="3b7kt6" id="5TmHY1kYraJ" role="10PD9s" />
    <node concept="398rNT" id="5TmHY1kYraK" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2sgV4H" id="5TmHY1kYraL" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="5TmHY1kYraM" role="2JcizS">
        <ref role="398BVh" node="5TmHY1kYraK" resolve="mps_home" />
      </node>
    </node>
    <node concept="1l3spV" id="5TmHY1kYrbf" role="1l3spN">
      <node concept="3981dG" id="5TmHY1kYrbg" role="39821P">
        <node concept="3_J27D" id="5TmHY1kYrbh" role="Nbhlr">
          <node concept="3Mxwew" id="5TmHY1kYrbi" role="3MwsjC">
            <property role="3MwjfP" value="DclareForMPS.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="5TmHY1kYrbj" role="39821P">
          <ref role="m_rDy" node="5TmHY1kYrb6" resolve="DclareForMPS" />
          <node concept="2HvfSZ" id="7dEOGAXaJA$" role="39821P">
            <node concept="55IIr" id="7dEOGAXaKLy" role="2HvfZ0">
              <node concept="2Ry0Ak" id="7dEOGAXaKLT" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7dEOGAXaKLY" role="2Ry0An">
                  <property role="2Ry0Am" value="DclareMPS" />
                  <node concept="2Ry0Ak" id="7dEOGAXaKM3" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2HvfSZ" id="4nSJqiCddlE" role="39821P">
            <node concept="55IIr" id="4nSJqiCddlG" role="2HvfZ0">
              <node concept="2Ry0Ak" id="4nSJqiCddml" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4nSJqiCddms" role="2Ry0An">
                  <property role="2Ry0Am" value="DclareMPS" />
                  <node concept="2Ry0Ak" id="4nSJqiCddmz" role="2Ry0An">
                    <property role="2Ry0Am" value="icons" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="5TmHY1kYrb6" role="3989C9">
      <property role="m$_wk" value="DclareForMPS" />
      <node concept="3_J27D" id="5TmHY1kYrb7" role="m$_yQ">
        <node concept="3Mxwew" id="5TmHY1kYrb8" role="3MwsjC">
          <property role="3MwjfP" value="DclareForMPS" />
        </node>
      </node>
      <node concept="3_J27D" id="5TmHY1kYrb9" role="m$_w8">
        <node concept="3Mxwew" id="5TmHY1kYrba" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="5TmHY1kYrbb" role="m$_yh">
        <ref role="m$f5T" node="5TmHY1kYrb5" resolve="DclareForMPS" />
      </node>
      <node concept="m$_yC" id="5TmHY1kYrbc" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="3_J27D" id="5TmHY1kYrbd" role="m_cZH">
        <node concept="3Mxwew" id="5TmHY1kYrbe" role="3MwsjC">
          <property role="3MwjfP" value="DclareForMPS" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="5TmHY1kYrb5" role="3989C9">
      <property role="TrG5h" value="DclareForMPS" />
      <node concept="1E1JtD" id="5TmHY1kYraS" role="2G$12L">
        <property role="BnDLt" value="false" />
        <property role="TrG5h" value="DclareMPS" />
        <property role="3LESm3" value="c32b788d-8e4b-4023-97f5-3e90d04ed77b" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5TmHY1kYraN" role="3LF7KH">
          <node concept="2Ry0Ak" id="5TmHY1kYraO" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="5TmHY1kYraP" role="2Ry0An">
              <property role="2Ry0Am" value="DclareMPS" />
              <node concept="2Ry0Ak" id="5TmHY1kYraQ" role="2Ry0An">
                <property role="2Ry0Am" value="DclareMPS.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5TmHY1kYrbk" role="3bR37C">
          <node concept="3bR9La" id="5TmHY1kYrbl" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lc2" resolve="jetbrains.mps.lang.typesystem" />
          </node>
        </node>
        <node concept="1SiIV0" id="5TmHY1kYrbm" role="3bR37C">
          <node concept="3bR9La" id="5TmHY1kYrbn" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="5TmHY1kYrbq" role="3bR37C">
          <node concept="3bR9La" id="5TmHY1kYrbr" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5TmHY1kYrbw" role="3bR37C">
          <node concept="3bR9La" id="5TmHY1kYrbx" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L8Y" resolve="jetbrains.mps.lang.project" />
          </node>
        </node>
        <node concept="1SiIV0" id="5TmHY1kYrb$" role="3bR37C">
          <node concept="3bR9La" id="5TmHY1kYrb_" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9I" resolve="jetbrains.mps.lang.sharedConcepts" />
          </node>
        </node>
        <node concept="1SiIV0" id="5TmHY1kYrbA" role="3bR37C">
          <node concept="1Busua" id="5TmHY1kYrbB" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="5TmHY1kYrbC" role="1TViLv">
          <property role="TrG5h" value="DclareMPS#01" />
          <property role="3LESm3" value="ccecc7e9-c1b6-4f31-89b8-7221b2d9e53b" />
          <property role="2GAjPV" value="false" />
          <node concept="1SiIV0" id="5TmHY1kYrbD" role="3bR37C">
            <node concept="3bR9La" id="5TmHY1kYrbE" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
            </node>
          </node>
          <node concept="1SiIV0" id="5TmHY1kYrbF" role="3bR37C">
            <node concept="3bR9La" id="5TmHY1kYrbG" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="5TmHY1kYrbH" role="3bR37C">
            <node concept="3bR9La" id="5TmHY1kYrbI" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:6zkSwmUIjUj" resolve="jetbrains.mps.lang.aspect#3274906159125927726" />
            </node>
          </node>
          <node concept="1SiIV0" id="5TmHY1kYrbJ" role="3bR37C">
            <node concept="3bR9La" id="5TmHY1kYrbK" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L8Y" resolve="jetbrains.mps.lang.project" />
            </node>
          </node>
          <node concept="1SiIV0" id="5TmHY1kYrbM" role="3bR37C">
            <node concept="3bR9La" id="5TmHY1kYrbL" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7YI57w6K0jH" resolve="jetbrains.mps.lang.descriptor#9020561928507175817" />
            </node>
          </node>
          <node concept="1SiIV0" id="7GFT0ayboAa" role="3bR37C">
            <node concept="3bR9La" id="7GFT0ayboAb" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" node="5TmHY1kYraS" resolve="DclareMPS" />
            </node>
          </node>
          <node concept="1SiIV0" id="29R9$zZ7tZG" role="3bR37C">
            <node concept="3bR9La" id="29R9$zZ7tZH" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
            </node>
          </node>
          <node concept="1SiIV0" id="29R9$zZ7tZI" role="3bR37C">
            <node concept="3bR9La" id="29R9$zZ7tZJ" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7YI57w6K0rx" resolve="jetbrains.mps.lang.smodel#1139186730696" />
            </node>
          </node>
          <node concept="1SiIV0" id="29R9$zZ7tZK" role="3bR37C">
            <node concept="3bR9La" id="29R9$zZ7tZL" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6Lg8" resolve="jetbrains.mps.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="29R9$zZ7tZM" role="3bR37C">
            <node concept="3bR9La" id="29R9$zZ7tZN" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5TmHY1l0vf9" role="3bR37C">
          <node concept="3bR9La" id="5TmHY1l0vfa" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5TmHY1kYraY" resolve="DclareMPSRuntime" />
          </node>
        </node>
        <node concept="1E0d5M" id="5TmHY1l0vfb" role="1E1XAP">
          <ref role="1E0d5P" node="5TmHY1kYraY" resolve="DclareMPSRuntime" />
        </node>
        <node concept="1SiIV0" id="29R9$zZ7tZE" role="3bR37C">
          <node concept="1Busua" id="29R9$zZ7tZF" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="3QNBbOrV1r8" role="3bR37C">
          <node concept="1Busua" id="3QNBbOrV1r9" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="3rtmxn" id="3QNBbOsArms" role="3bR31x">
          <node concept="3LXTmp" id="3QNBbOsArmt" role="3rtmxm">
            <node concept="55IIr" id="3QNBbOsArmu" role="3LXTmr">
              <node concept="2Ry0Ak" id="3QNBbOsArmv" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="3QNBbOsArmw" role="2Ry0An">
                  <property role="2Ry0Am" value="DclareMPS" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3QNBbOsArmy" role="3LXTna">
              <property role="3qWCbO" value="icons/**" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5TmHY1kYraY" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="DclareMPSRuntime" />
        <property role="3LESm3" value="55d6b6f5-8095-4cd0-a39b-779da8d12940" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="5TmHY1kYraT" role="3LF7KH">
          <node concept="2Ry0Ak" id="5TmHY1kYraU" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="5TmHY1kYraV" role="2Ry0An">
              <property role="2Ry0Am" value="DclareMPS" />
              <node concept="2Ry0Ak" id="5TmHY1kYraW" role="2Ry0An">
                <property role="2Ry0Am" value="DclareMPS.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5TmHY1kYrbZ" role="3bR37C">
          <node concept="3bR9La" id="5TmHY1kYrc0" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="5TmHY1kYrc1" role="3bR37C">
          <node concept="3bR9La" id="5TmHY1kYrc2" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="5TmHY1kYrc8" role="3bR37C">
          <node concept="1BurEX" id="5TmHY1kYrc9" role="1SiIV1">
            <node concept="55IIr" id="7GFT0aymk3N" role="1BurEY">
              <node concept="2Ry0Ak" id="7GFT0aymk4t" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7GFT0aymk56" role="2Ry0An">
                  <property role="2Ry0Am" value="DclareMPS" />
                  <node concept="2Ry0Ak" id="7GFT0aymk5J" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="7GFT0aymk6o" role="2Ry0An">
                      <property role="2Ry0Am" value="DclareMps.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5TmHY1kYrb4" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="DclareMPSPlugin" />
        <property role="3LESm3" value="a33d2b79-6adc-4ccd-8599-3af01a93f23c" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5TmHY1kYraZ" role="3LF7KH">
          <node concept="2Ry0Ak" id="5TmHY1kYrb0" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="5TmHY1kYrb1" role="2Ry0An">
              <property role="2Ry0Am" value="DclareMPSPlugin" />
              <node concept="2Ry0Ak" id="5TmHY1kYrb2" role="2Ry0An">
                <property role="2Ry0Am" value="DclareMPSPlugin.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5TmHY1l0vft" role="3bR37C">
          <node concept="3bR9La" id="5TmHY1l0vfu" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="5TmHY1kYraY" resolve="DclareMPSRuntime" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

