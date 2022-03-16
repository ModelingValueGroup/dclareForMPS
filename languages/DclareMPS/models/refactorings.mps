<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:66be19c1-5b29-480c-8d33-33b23b1579f6(DclareMPS.refactorings)">
  <persistence version="9" />
  <languages>
    <use id="3ecd7c84-cde3-45de-886c-135ecc69b742" name="jetbrains.mps.lang.refactoring" version="0" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="7ggn" ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="89o2" ref="r:5f19c5cc-325c-485a-b033-20949d89a6f0(jetbrains.mps.baseLanguage.util.plugin.refactorings)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tp2q" ref="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" implicit="true" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="us1s" ref="r:e7d7a1fa-fb58-4cf6-bc1d-e5ed722e0c61(DclareMPS.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3ecd7c84-cde3-45de-886c-135ecc69b742" name="jetbrains.mps.lang.refactoring">
      <concept id="7953996722066252915" name="jetbrains.mps.lang.refactoring.structure.NodeOperation" flags="nn" index="50M6j" />
      <concept id="7953996722066256458" name="jetbrains.mps.lang.refactoring.structure.RefactoringContext_ConceptFunctionParameter" flags="nn" index="50NuE" />
      <concept id="6895093993902236229" name="jetbrains.mps.lang.refactoring.structure.Refactoring" flags="ig" index="3SMa$L">
        <property id="6895093993902236371" name="userFriendlyName" index="3SMaAB" />
        <child id="6895093993902236381" name="doRefactorBlock" index="3SMaAD" />
        <child id="6895093993902236376" name="parameter" index="3SMaAG" />
        <child id="6895093993902310998" name="target" index="3SM$Oy" />
      </concept>
      <concept id="6895093993902311012" name="jetbrains.mps.lang.refactoring.structure.RefactoringParameter" flags="ng" index="3SM$Og" />
      <concept id="6895093993902310764" name="jetbrains.mps.lang.refactoring.structure.NodeTarget" flags="ng" index="3SM$So" />
      <concept id="6895093993902310761" name="jetbrains.mps.lang.refactoring.structure.RefactoringTarget" flags="ng" index="3SM$St">
        <child id="5497648299878742039" name="isApplicableBlock" index="1M1ICn" />
      </concept>
      <concept id="6895093993902310814" name="jetbrains.mps.lang.refactoring.structure.ConceptFunctionParameter_SNode" flags="nn" index="3SM$VE" />
      <concept id="6895093993902310808" name="jetbrains.mps.lang.refactoring.structure.IsApplicableToNodeClause" flags="in" index="3SM$VG" />
      <concept id="6895093993902496262" name="jetbrains.mps.lang.refactoring.structure.RefactoringParameterReference" flags="nn" index="3SN95M">
        <reference id="6895093993902496263" name="refactoringParameter" index="3SN95N" />
      </concept>
      <concept id="1189694053795" name="jetbrains.mps.lang.refactoring.structure.DoRefactorClause" flags="in" index="3ZiDMR" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
        <child id="1595412875168045201" name="initValue" index="28ntcv" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="6985522012210254362" name="jetbrains.mps.lang.quotation.structure.NodeBuilderPropertyExpression" flags="nn" index="WxPPo">
        <child id="6985522012210254363" name="expression" index="WxPPp" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227022159410" name="jetbrains.mps.baseLanguage.collections.structure.AddFirstElementOperation" flags="nn" index="2Ke4WJ" />
    </language>
  </registry>
  <node concept="3SMa$L" id="18IIFqBwrS4">
    <property role="TrG5h" value="ExpressionToAttribute" />
    <property role="3SMaAB" value="Extract Attribute" />
    <node concept="3SM$Og" id="6aMI9gHGzDH" role="3SMaAG">
      <property role="TrG5h" value="ruleset" />
      <node concept="3Tqbb2" id="6aMI9gHG_Lx" role="1tU5fm">
        <ref role="ehGHo" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
      </node>
    </node>
    <node concept="3SM$So" id="18IIFqBwrSq" role="3SM$Oy">
      <node concept="3SM$VG" id="3P0Mnt4E_3K" role="1M1ICn">
        <node concept="3clFbS" id="3P0Mnt4E_3L" role="2VODD2">
          <node concept="3clFbF" id="18IIFqBwCsh" role="3cqZAp">
            <node concept="2OqwBi" id="18IIFqBX93V" role="3clFbG">
              <node concept="3SM$VE" id="18IIFqBX8DE" role="2Oq$k0" />
              <node concept="1mIQ4w" id="18IIFqBX9P2" role="2OqNvi">
                <node concept="chp4Y" id="18IIFqBXaml" role="cj9EA">
                  <ref role="cht4Q" to="tpee:fz3vP1J" resolve="Expression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ZiDMR" id="18IIFqBwrS6" role="3SMaAD">
      <node concept="3clFbS" id="18IIFqBwrS7" role="2VODD2">
        <node concept="3cpWs8" id="18IIFqBwGtS" role="3cqZAp">
          <node concept="3cpWsn" id="18IIFqBwGtV" role="3cpWs9">
            <property role="TrG5h" value="expr" />
            <node concept="3Tqbb2" id="18IIFqBwGtR" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
            </node>
            <node concept="1PxgMI" id="18IIFqBXb5U" role="33vP2m">
              <node concept="chp4Y" id="18IIFqBXb9U" role="3oSUPX">
                <ref role="cht4Q" to="tpee:fz3vP1J" resolve="Expression" />
              </node>
              <node concept="2OqwBi" id="18IIFqBwGC1" role="1m5AlR">
                <node concept="50NuE" id="18IIFqBwGvD" role="2Oq$k0" />
                <node concept="50M6j" id="18IIFqBwGGL" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7lFJjS3oOoJ" role="3cqZAp">
          <node concept="3cpWsn" id="7lFJjS3oOoK" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3Tqbb2" id="7lFJjS3oObM" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
            </node>
            <node concept="10QFUN" id="7lFJjS3oOoL" role="33vP2m">
              <node concept="2OqwBi" id="7lFJjS3oOoM" role="10QFUP">
                <node concept="2OqwBi" id="7lFJjS3oOoN" role="2Oq$k0">
                  <node concept="37vLTw" id="7lFJjS3oOoO" role="2Oq$k0">
                    <ref role="3cqZAo" node="18IIFqBwGtV" resolve="expr" />
                  </node>
                  <node concept="3JvlWi" id="7lFJjS3oOoP" role="2OqNvi" />
                </node>
                <node concept="1$rogu" id="7lFJjS3oOoQ" role="2OqNvi" />
              </node>
              <node concept="3Tqbb2" id="7lFJjS3oOoR" role="10QFUM">
                <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="Jncv_" id="7lFJjS3p1NF" role="3cqZAp">
          <ref role="JncvD" to="tp2q:gKA3Dh4" resolve="SequenceType" />
          <node concept="37vLTw" id="7lFJjS3p3Zv" role="JncvB">
            <ref role="3cqZAo" node="7lFJjS3oOoK" resolve="type" />
          </node>
          <node concept="3clFbS" id="7lFJjS3p1NJ" role="Jncv$">
            <node concept="3clFbF" id="7lFJjS3p6j7" role="3cqZAp">
              <node concept="37vLTI" id="7lFJjS3p6rW" role="3clFbG">
                <node concept="2pJPEk" id="7lFJjS3p6uw" role="37vLTx">
                  <node concept="2pJPED" id="7lFJjS3p6yy" role="2pJPEn">
                    <ref role="2pJxaS" to="tp2q:gK_YKtE" resolve="ListType" />
                    <node concept="2pIpSj" id="7lFJjS3p6Ap" role="2pJxcM">
                      <ref role="2pIpSl" to="tp2q:gK_ZDn5" resolve="elementType" />
                      <node concept="36biLy" id="7lFJjS3p6H_" role="28nt2d">
                        <node concept="2OqwBi" id="7lFJjS3p6Ve" role="36biLW">
                          <node concept="Jnkvi" id="7lFJjS3p6JZ" role="2Oq$k0">
                            <ref role="1M0zk5" node="7lFJjS3p1NL" resolve="st" />
                          </node>
                          <node concept="3TrEf2" id="7lFJjS3p7nv" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp2q:gKA3Ige" resolve="elementType" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7lFJjS3p6j6" role="37vLTJ">
                  <ref role="3cqZAo" node="7lFJjS3oOoK" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="7lFJjS3p1NL" role="JncvA">
            <property role="TrG5h" value="st" />
            <node concept="2jxLKc" id="7lFJjS3p1NM" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="7lFJjS3p9HZ" role="3cqZAp">
          <ref role="JncvD" to="tp2q:gK_YKtE" resolve="ListType" />
          <node concept="37vLTw" id="7lFJjS3pbSS" role="JncvB">
            <ref role="3cqZAo" node="7lFJjS3oOoK" resolve="type" />
          </node>
          <node concept="3clFbS" id="7lFJjS3p9I3" role="Jncv$">
            <node concept="Jncv_" id="7lFJjS3pen5" role="3cqZAp">
              <ref role="JncvD" to="tp25:gzTqbfa" resolve="SNodeType" />
              <node concept="2OqwBi" id="7lFJjS3poPn" role="JncvB">
                <node concept="Jnkvi" id="7lFJjS3penG" role="2Oq$k0">
                  <ref role="1M0zk5" node="7lFJjS3p9I5" resolve="lt" />
                </node>
                <node concept="3TrEf2" id="7lFJjS3ppi7" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp2q:gK_ZDn5" resolve="elementType" />
                </node>
              </node>
              <node concept="3clFbS" id="7lFJjS3pen7" role="Jncv$">
                <node concept="3clFbF" id="7lFJjS3peKG" role="3cqZAp">
                  <node concept="37vLTI" id="7lFJjS3peT$" role="3clFbG">
                    <node concept="2pJPEk" id="7lFJjS3peW8" role="37vLTx">
                      <node concept="2pJPED" id="7lFJjS3pf0a" role="2pJPEn">
                        <ref role="2pJxaS" to="tp25:gEI9FSM" resolve="SNodeListType" />
                        <node concept="2pIpSj" id="7lFJjS3pf5Y" role="2pJxcM">
                          <ref role="2pIpSl" to="tp25:gEI9Wgx" resolve="elementConcept" />
                          <node concept="36biLy" id="7lFJjS3pf8x" role="28nt2d">
                            <node concept="2OqwBi" id="7lFJjS3pfmx" role="36biLW">
                              <node concept="Jnkvi" id="7lFJjS3pfaV" role="2Oq$k0">
                                <ref role="1M0zk5" node="7lFJjS3pen8" resolve="nt" />
                              </node>
                              <node concept="3TrEf2" id="7lFJjS3pfLE" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp25:g$ehGDh" resolve="concept" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="7lFJjS3peKF" role="37vLTJ">
                      <ref role="3cqZAo" node="7lFJjS3oOoK" resolve="type" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="7lFJjS3pen8" role="JncvA">
                <property role="TrG5h" value="nt" />
                <node concept="2jxLKc" id="7lFJjS3pen9" role="1tU5fm" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="7lFJjS3p9I5" role="JncvA">
            <property role="TrG5h" value="lt" />
            <node concept="2jxLKc" id="7lFJjS3p9I6" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="18IIFqBwImP" role="3cqZAp">
          <node concept="3cpWsn" id="18IIFqBwImS" role="3cpWs9">
            <property role="TrG5h" value="attribute" />
            <node concept="3Tqbb2" id="18IIFqBwImN" role="1tU5fm">
              <ref role="ehGHo" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
            </node>
            <node concept="2pJPEk" id="18IIFqBwIxI" role="33vP2m">
              <node concept="2pJPED" id="18IIFqBwIzE" role="2pJPEn">
                <ref role="2pJxaS" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
                <node concept="2pJxcG" id="18IIFqBwI$t" role="2pJxcM">
                  <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                  <node concept="WxPPo" id="42AmA0B3fVn" role="28ntcv">
                    <node concept="10Nm6u" id="7lFJjS3oqdr" role="WxPPp" />
                  </node>
                </node>
                <node concept="2pIpSj" id="18IIFqBwITu" role="2pJxcM">
                  <ref role="2pIpSl" to="tpee:4VkOLwjf83e" resolve="type" />
                  <node concept="36biLy" id="18IIFqBwIU6" role="28nt2d">
                    <node concept="37vLTw" id="7lFJjS3oOoS" role="36biLW">
                      <ref role="3cqZAo" node="7lFJjS3oOoK" resolve="type" />
                    </node>
                  </node>
                </node>
                <node concept="2pIpSj" id="18IIFqBwICL" role="2pJxcM">
                  <ref role="2pIpSl" to="tpee:fz3vP1I" resolve="initializer" />
                  <node concept="36biLy" id="18IIFqBwIDk" role="28nt2d">
                    <node concept="2OqwBi" id="18IIFqBwIL9" role="36biLW">
                      <node concept="37vLTw" id="18IIFqBwIDI" role="2Oq$k0">
                        <ref role="3cqZAo" node="18IIFqBwGtV" resolve="expr" />
                      </node>
                      <node concept="1$rogu" id="18IIFqBwISg" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="18IIFqC41Y4" role="3cqZAp">
          <node concept="3cpWsn" id="18IIFqC41Y5" role="3cpWs9">
            <property role="TrG5h" value="finder" />
            <node concept="3uibUv" id="18IIFqC41Y6" role="1tU5fm">
              <ref role="3uigEE" to="89o2:Zuouc_uozQ" resolve="SimpleDuplicatesFinder" />
            </node>
            <node concept="2ShNRf" id="18IIFqC433m" role="33vP2m">
              <node concept="1pGfFk" id="18IIFqC433l" role="2ShVmc">
                <ref role="37wK5l" to="89o2:Zuouc_uoCz" resolve="SimpleDuplicatesFinder" />
                <node concept="37vLTw" id="18IIFqC433T" role="37wK5m">
                  <ref role="3cqZAo" node="18IIFqBwGtV" resolve="expr" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="18IIFqC44ID" role="3cqZAp">
          <node concept="3cpWsn" id="18IIFqC44IE" role="3cpWs9">
            <property role="TrG5h" value="duplicates" />
            <node concept="3uibUv" id="18IIFqC44I_" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3Tqbb2" id="18IIFqC44IC" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="18IIFqC44IF" role="33vP2m">
              <node concept="37vLTw" id="18IIFqC44IG" role="2Oq$k0">
                <ref role="3cqZAo" node="18IIFqC41Y5" resolve="finder" />
              </node>
              <node concept="liA8E" id="18IIFqC44IH" role="2OqNvi">
                <ref role="37wK5l" to="89o2:Zuouc_uozR" resolve="findDuplicates" />
                <node concept="3SN95M" id="6aMI9gHGK_y" role="37wK5m">
                  <ref role="3SN95N" node="6aMI9gHGzDH" resolve="ruleset" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="18IIFqC45$u" role="3cqZAp">
          <node concept="3clFbS" id="18IIFqC45$w" role="3clFbx">
            <node concept="3clFbF" id="18IIFqC49nT" role="3cqZAp">
              <node concept="2OqwBi" id="18IIFqC4a4g" role="3clFbG">
                <node concept="37vLTw" id="18IIFqC49nR" role="2Oq$k0">
                  <ref role="3cqZAo" node="18IIFqC44IE" resolve="duplicates" />
                </node>
                <node concept="liA8E" id="18IIFqC4aGs" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="18IIFqC4aXP" role="37wK5m">
                    <ref role="3cqZAo" node="18IIFqBwGtV" resolve="expr" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="18IIFqC496m" role="3clFbw">
            <node concept="2OqwBi" id="18IIFqC496o" role="3fr31v">
              <node concept="37vLTw" id="18IIFqC496p" role="2Oq$k0">
                <ref role="3cqZAo" node="18IIFqC44IE" resolve="duplicates" />
              </node>
              <node concept="liA8E" id="18IIFqC496q" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                <node concept="37vLTw" id="18IIFqC496r" role="37wK5m">
                  <ref role="3cqZAo" node="18IIFqBwGtV" resolve="expr" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="18IIFqBwJAx" role="3cqZAp">
          <node concept="2OqwBi" id="18IIFqBwNII" role="3clFbG">
            <node concept="2OqwBi" id="18IIFqBwJLh" role="2Oq$k0">
              <node concept="3SN95M" id="6aMI9gHGKOb" role="2Oq$k0">
                <ref role="3SN95N" node="6aMI9gHGzDH" resolve="ruleset" />
              </node>
              <node concept="3Tsc0h" id="7lFJjS3oiPB" role="2OqNvi">
                <ref role="3TtcxE" to="7ggn:6_R8J$2ChSl" resolve="members" />
              </node>
            </node>
            <node concept="2Ke4WJ" id="7lFJjS3okX4" role="2OqNvi">
              <node concept="37vLTw" id="7lFJjS3okX6" role="25WWJ7">
                <ref role="3cqZAo" node="18IIFqBwImS" resolve="attribute" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7lFJjS3oBXh" role="3cqZAp">
          <node concept="2OqwBi" id="7lFJjS3oER4" role="3clFbG">
            <node concept="2OqwBi" id="7lFJjS3oDpJ" role="2Oq$k0">
              <node concept="3SN95M" id="6aMI9gHGLPm" role="2Oq$k0">
                <ref role="3SN95N" node="6aMI9gHGzDH" resolve="ruleset" />
              </node>
              <node concept="3Tsc0h" id="7lFJjS3oDJW" role="2OqNvi">
                <ref role="3TtcxE" to="7ggn:6_R8J$2ChSl" resolve="members" />
              </node>
            </node>
            <node concept="2Ke4WJ" id="7lFJjS3oG9r" role="2OqNvi">
              <node concept="2pJPEk" id="7lFJjS3oH5Y" role="25WWJ7">
                <node concept="2pJPED" id="7lFJjS3oI1O" role="2pJPEn">
                  <ref role="2pJxaS" to="7ggn:6_R8J$2CjEx" resolve="PlaceholderRuleSetMember" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="18IIFqC4bCG" role="3cqZAp">
          <node concept="2OqwBi" id="18IIFqC4cIH" role="3clFbG">
            <node concept="37vLTw" id="18IIFqC4bCE" role="2Oq$k0">
              <ref role="3cqZAo" node="18IIFqC44IE" resolve="duplicates" />
            </node>
            <node concept="liA8E" id="18IIFqC4dpp" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Iterable.forEach(java.util.function.Consumer)" resolve="forEach" />
              <node concept="1bVj0M" id="18IIFqC4eL_" role="37wK5m">
                <node concept="3clFbS" id="18IIFqC4eLA" role="1bW5cS">
                  <node concept="3clFbF" id="18IIFqC4fkB" role="3cqZAp">
                    <node concept="2OqwBi" id="18IIFqBx3hr" role="3clFbG">
                      <node concept="37vLTw" id="18IIFqC4ftT" role="2Oq$k0">
                        <ref role="3cqZAo" node="18IIFqC4f2F" resolve="e" />
                      </node>
                      <node concept="1P9Npp" id="18IIFqBx3xz" role="2OqNvi">
                        <node concept="2pJPEk" id="18IIFqBx3zJ" role="1P9ThW">
                          <node concept="2pJPED" id="18IIFqBx3_X" role="2pJPEn">
                            <ref role="2pJxaS" to="7ggn:4wbMdoKd7ev" resolve="AttributeReference" />
                            <node concept="2pIpSj" id="18IIFqBx3Gq" role="2pJxcM">
                              <ref role="2pIpSl" to="7ggn:4wbMdoKd7ex" resolve="attribute" />
                              <node concept="36biLy" id="18IIFqBx3JK" role="28nt2d">
                                <node concept="37vLTw" id="18IIFqBx3Mv" role="36biLW">
                                  <ref role="3cqZAo" node="18IIFqBwImS" resolve="attribute" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="18IIFqC4f2F" role="1bW2Oz">
                  <property role="TrG5h" value="e" />
                  <node concept="3Tqbb2" id="18IIFqC4f6u" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3SMa$L" id="55f2HNAxggR">
    <property role="TrG5h" value="MoveToAspect" />
    <property role="3SMaAB" value="Move To Aspect" />
    <node concept="3SM$Og" id="55f2HNAxrhW" role="3SMaAG">
      <property role="TrG5h" value="aspect" />
      <node concept="3Tqbb2" id="55f2HNAxriH" role="1tU5fm">
        <ref role="ehGHo" to="7ggn:55f2HNAoLSh" resolve="Aspect" />
      </node>
    </node>
    <node concept="3SM$Og" id="6aMI9gHHWOt" role="3SMaAG">
      <property role="TrG5h" value="source" />
      <node concept="3Tqbb2" id="6aMI9gHHXl1" role="1tU5fm">
        <ref role="ehGHo" to="7ggn:29R9$zZUovD" resolve="RuleSet" />
      </node>
    </node>
    <node concept="3SM$So" id="55f2HNAxlsB" role="3SM$Oy">
      <node concept="3SM$VG" id="55f2HNAxlsK" role="1M1ICn">
        <node concept="3clFbS" id="55f2HNAxlsL" role="2VODD2">
          <node concept="3clFbF" id="55f2HNAxlwM" role="3cqZAp">
            <node concept="22lmx$" id="55f2HNAxnra" role="3clFbG">
              <node concept="2OqwBi" id="55f2HNAxnGF" role="3uHU7w">
                <node concept="3SM$VE" id="55f2HNAxnyt" role="2Oq$k0" />
                <node concept="1mIQ4w" id="55f2HNAxo1R" role="2OqNvi">
                  <node concept="chp4Y" id="55f2HNAxo7v" role="cj9EA">
                    <ref role="cht4Q" to="7ggn:29R9$zZUovC" resolve="Rule" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="55f2HNAxlwP" role="3uHU7B">
                <node concept="3SM$VE" id="55f2HNAxlwQ" role="2Oq$k0" />
                <node concept="1mIQ4w" id="55f2HNAxlwR" role="2OqNvi">
                  <node concept="chp4Y" id="55f2HNAxlwS" role="cj9EA">
                    <ref role="cht4Q" to="7ggn:4$MeK2bmw9s" resolve="Attribute" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ZiDMR" id="55f2HNAxggT" role="3SMaAD">
      <node concept="3clFbS" id="55f2HNAxggU" role="2VODD2">
        <node concept="3clFbF" id="6aMI9gI1$Tt" role="3cqZAp">
          <node concept="2OqwBi" id="6aMI9gI1_1z" role="3clFbG">
            <node concept="2qgKlT" id="6aMI9gI1_8C" role="2OqNvi">
              <ref role="37wK5l" to="us1s:6aMI9gI1usf" resolve="moveTo" />
              <node concept="3SN95M" id="6aMI9gI1_cY" role="37wK5m">
                <ref role="3SN95N" node="55f2HNAxrhW" resolve="aspect" />
              </node>
              <node concept="2ShNRf" id="6aMI9gIlR4e" role="37wK5m">
                <node concept="2i4dXS" id="6aMI9gIlRfw" role="2ShVmc">
                  <node concept="3Tqbb2" id="6aMI9gIlRrc" role="HW$YZ">
                    <ref role="ehGHo" to="7ggn:6_R8J$2CjE3" resolve="RuleSetMember" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1PxgMI" id="55f2HNAzvYz" role="2Oq$k0">
              <node concept="chp4Y" id="55f2HNAzwo9" role="3oSUPX">
                <ref role="cht4Q" to="7ggn:6_R8J$2CjE3" resolve="RuleSetMember" />
              </node>
              <node concept="2OqwBi" id="55f2HNAxr8s" role="1m5AlR">
                <node concept="50NuE" id="55f2HNAxr8t" role="2Oq$k0" />
                <node concept="50M6j" id="55f2HNAxr8u" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

