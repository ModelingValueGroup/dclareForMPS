<?xml version="1.0" encoding="UTF-8"?>
<solution name="DclareMPSPlugin" uuid="a33d2b79-6adc-4ccd-8599-3af01a93f23c" moduleVersion="0" pluginKind="PLUGIN_OTHER" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
    <modelRoot contentPath="${dclare_home}" type="java_classes" />
  </models>
  <facets>
    <facet type="java">
      <classes generated="true" path="${module}/classes_gen" />
    </facet>
  </facets>
  <sourcePath />
  <dependencies>
    <dependency reexport="true">55d6b6f5-8095-4cd0-a39b-779da8d12940(DclareMPSRuntime)</dependency>
    <dependency reexport="false">498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)</dependency>
    <dependency reexport="false">742f6602-5a2f-4313-aa6e-ae1cd4ffdc61(MPS.Platform)</dependency>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)</dependency>
    <dependency reexport="false">8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)</dependency>
    <dependency reexport="false">c32b788d-8e4b-4023-97f5-3e90d04ed77b(DclareMPS)</dependency>
    <dependency reexport="false">b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)</dependency>
    <dependency reexport="false">25092e07-e655-497c-92fb-558a8e3080ed(jetbrains.mps.ide.ui)</dependency>
    <dependency reexport="false">15ef76ea-e875-4ecb-ba93-f3d16cc9b71a(DclareMessages)</dependency>
    <dependency reexport="true">1ed103c3-3aa6-49b7-9c21-6765ee11f224(MPS.Editor)</dependency>
    <dependency reexport="false">cae9c33a-938f-42e8-8f0f-26f001c0af63(jetbrains.mps.ide.devkit.editor)</dependency>
    <dependency reexport="false">cac2fef0-41a6-4fcd-923f-f893d536b2ab(jetbrains.mps.ide.mpsdevkit)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="11" />
    <language slang="l:443f4c36-fcf5-4eb6-9500-8d06ed259e3e:jetbrains.mps.baseLanguage.classifiers" version="0" />
    <language slang="l:fd392034-7849-419d-9071-12563d152375:jetbrains.mps.baseLanguage.closures" version="0" />
    <language slang="l:83888646-71ce-4f1c-9c53-c54016f6ad4f:jetbrains.mps.baseLanguage.collections" version="1" />
    <language slang="l:f2801650-65d5-424e-bb1b-463a8781b786:jetbrains.mps.baseLanguage.javadoc" version="2" />
    <language slang="l:760a0a8c-eabb-4521-8bfd-65db761a9ba3:jetbrains.mps.baseLanguage.logging" version="0" />
    <language slang="l:a247e09e-2435-45ba-b8d2-07e93feba96a:jetbrains.mps.baseLanguage.tuples" version="0" />
    <language slang="l:aee9cad2-acd4-4608-aef2-0004f6a1cdbd:jetbrains.mps.lang.actions" version="4" />
    <language slang="l:fe9d76d7-5809-45c9-ae28-a40915b4d6ff:jetbrains.mps.lang.checkedName" version="1" />
    <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="2" />
    <language slang="l:446c26eb-2b7b-4bf0-9b35-f83fa582753e:jetbrains.mps.lang.modelapi" version="0" />
    <language slang="l:28f9e497-3b42-4291-aeba-0a1039153ab1:jetbrains.mps.lang.plugin" version="5" />
    <language slang="l:ef7bf5ac-d06c-4342-b11d-e42104eb9343:jetbrains.mps.lang.plugin.standalone" version="0" />
    <language slang="l:3a13115c-633c-4c5c-bbcc-75c4219e9555:jetbrains.mps.lang.quotation" version="5" />
    <language slang="l:3ecd7c84-cde3-45de-886c-135ecc69b742:jetbrains.mps.lang.refactoring" version="0" />
    <language slang="l:982eb8df-2c96-4bd7-9963-11712ea622e5:jetbrains.mps.lang.resources" version="2" />
    <language slang="l:69b8a993-9b87-4d96-bf0c-3559f4bb0c63:jetbrains.mps.lang.slanguage" version="0" />
    <language slang="l:7866978e-a0f0-4cc7-81bc-4d213d9375e1:jetbrains.mps.lang.smodel" version="18" />
    <language slang="l:1a8554c4-eb84-43ba-8c34-6f0d90c6e75a:jetbrains.mps.lang.smodel.query" version="3" />
    <language slang="l:c72da2b9-7cce-4447-8389-f407dc1158b7:jetbrains.mps.lang.structure" version="9" />
    <language slang="l:c7fb639f-be78-4307-89b0-b5959c3fa8c8:jetbrains.mps.lang.text" version="0" />
    <language slang="l:9ded098b-ad6a-4657-bfd9-48636cfe8bc3:jetbrains.mps.lang.traceable" version="0" />
  </languageVersions>
  <dependencyVersions>
    <module reference="3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)" version="0" />
    <module reference="c32b788d-8e4b-4023-97f5-3e90d04ed77b(DclareMPS)" version="0" />
    <module reference="a33d2b79-6adc-4ccd-8599-3af01a93f23c(DclareMPSPlugin)" version="0" />
    <module reference="55d6b6f5-8095-4cd0-a39b-779da8d12940(DclareMPSRuntime)" version="0" />
    <module reference="15ef76ea-e875-4ecb-ba93-f3d16cc9b71a(DclareMessages)" version="0" />
    <module reference="6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)" version="0" />
    <module reference="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)" version="0" />
    <module reference="1ed103c3-3aa6-49b7-9c21-6765ee11f224(MPS.Editor)" version="0" />
    <module reference="498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)" version="0" />
    <module reference="8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)" version="0" />
    <module reference="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61(MPS.Platform)" version="0" />
    <module reference="71843232-be09-46d1-b53c-28c32e36ff55(TempModule71843232-be09-46d1-b53c-28c32e36ff55)" version="0" />
    <module reference="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" version="0" />
    <module reference="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" version="0" />
    <module reference="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" version="0" />
    <module reference="e39e4a59-8cb6-498e-860e-8fa8361c0d90(jetbrains.mps.baseLanguage.scopes)" version="0" />
    <module reference="cae9c33a-938f-42e8-8f0f-26f001c0af63(jetbrains.mps.ide.devkit.editor)" version="0" />
    <module reference="cac2fef0-41a6-4fcd-923f-f893d536b2ab(jetbrains.mps.ide.mpsdevkit)" version="0" />
    <module reference="25092e07-e655-497c-92fb-558a8e3080ed(jetbrains.mps.ide.ui)" version="0" />
    <module reference="2d3c70e9-aab2-4870-8d8d-6036800e4103(jetbrains.mps.kernel)" version="0" />
    <module reference="d936855b-48da-4812-a8a0-2bfddd633ac5(jetbrains.mps.lang.behavior.api)" version="0" />
    <module reference="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" version="0" />
    <module reference="b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)" version="0" />
    <module reference="446c26eb-2b7b-4bf0-9b35-f83fa582753e(jetbrains.mps.lang.modelapi)" version="0" />
    <module reference="3a13115c-633c-4c5c-bbcc-75c4219e9555(jetbrains.mps.lang.quotation)" version="0" />
    <module reference="d7eb0a2a-bd50-4576-beae-e4a89db35f20(jetbrains.mps.lang.scopes.runtime)" version="0" />
    <module reference="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" version="1" />
    <module reference="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" version="0" />
    <module reference="9ded098b-ad6a-4657-bfd9-48636cfe8bc3(jetbrains.mps.lang.traceable)" version="0" />
  </dependencyVersions>
</solution>

