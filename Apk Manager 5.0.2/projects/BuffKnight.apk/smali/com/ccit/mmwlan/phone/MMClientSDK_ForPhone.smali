.class public final Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;
.super Ljava/lang/Object;
.source "MMClientSDK_ForPhone.java"


# static fields
.field private static final INT_RESULT_0:I = 0x0

.field private static final INT_RESULT_1:I = 0x1

.field private static final INT_RESULT_2:I = 0x2

.field private static final INT_RESULT_3:I = 0x3

.field private static final INT_RESULT_4:I = 0x4

.field private static final INT_RESULT_5:I = 0x5

.field private static final INT_RESULT_6:I = 0x6

.field private static final INT_RESULT_7:I = 0x7

.field private static final MMCLIENT_SDK:Ljava/lang/String; = "MMClientSDK_ForPhone"

.field private static SMSNumber:Ljava/lang/String;

.field private static clientSDK:Lcom/ccit/mmwlan/ClientSDK;

.field private static context:Landroid/content/Context;

.field private static strApplyCertForPhone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    .line 25
    sput-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    .line 27
    sput-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->strApplyCertForPhone:Ljava/lang/String;

    .line 28
    sput-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->SMSNumber:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/ccit/mmwlan/ClientSDK;

    invoke-direct {v0}, Lcom/ccit/mmwlan/ClientSDK;-><init>()V

    sput-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DestorySecCert(Ljava/lang/String;)I
    .locals 5
    .parameter "strAuthCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1214
    const/4 v1, -0x1

    .line 1218
    .local v1, iRet:I
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2, p0}, Lcom/ccit/mmwlan/ClientSDK;->DestorySecCertForBilling(Ljava/lang/String;)I

    move-result v1

    .line 1221
    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DestroySecCert() iRet -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    :goto_0
    return v1

    .line 1224
    :catch_0
    move-exception v0

    .line 1226
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static RSAEncryptWithPubKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "strBase64PlainText"

    .prologue
    const/4 v5, 0x1

    .line 1180
    const/4 v1, 0x0

    .line 1184
    .local v1, strRet:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2, p0}, Lcom/ccit/mmwlan/ClientSDK;->AsymmetricEncryptionForBilling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1185
    if-nez v1, :cond_0

    .line 1187
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1191
    :cond_0
    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RSAEncryptWithPubKey() strRet -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1191
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    :goto_0
    return-object v1

    .line 1195
    :catch_0
    move-exception v0

    .line 1197
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static SIDSign(Ljava/lang/String;Lorg/apache/http/HttpHost;)Lcom/ccit/mmwlan/vo/SignView;
    .locals 13
    .parameter "appuid"
    .parameter "getHttpProxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 726
    const/4 v2, -0x1

    .line 727
    .local v2, iResult:I
    const/4 v3, 0x0

    .line 729
    .local v3, signView:Lcom/ccit/mmwlan/vo/SignView;
    new-instance v3, Lcom/ccit/mmwlan/vo/SignView;

    .end local v3           #signView:Lcom/ccit/mmwlan/vo/SignView;
    invoke-direct {v3}, Lcom/ccit/mmwlan/vo/SignView;-><init>()V

    .line 730
    .restart local v3       #signView:Lcom/ccit/mmwlan/vo/SignView;
    if-nez p0, :cond_0

    .line 731
    const/4 v10, 0x6

    invoke-virtual {v3, v10}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 844
    :goto_0
    return-object v3

    .line 735
    :cond_0
    const/4 v4, 0x0

    .line 737
    .local v4, strResult:Ljava/lang/String;
    sget-object v10, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v10}, Lcom/ccit/mmwlan/ClientSDK;->checkSecCertNativeForBilling()I

    move-result v1

    .line 739
    .local v1, iCertState:I
    const-string v10, "MMClientSDK_ForPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "SIDSign() iCertState -> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    if-nez v1, :cond_3

    .line 742
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genSID()Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, strSID0:Ljava/lang/String;
    const-string v10, "2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 744
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto :goto_0

    .line 748
    :cond_1
    invoke-static {v5, p0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getSIDSignValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 749
    if-nez v4, :cond_2

    .line 750
    const/4 v10, 0x7

    invoke-virtual {v3, v10}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto :goto_0

    .line 754
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 755
    invoke-virtual {v3, v4}, Lcom/ccit/mmwlan/vo/SignView;->setUserSignature(Ljava/lang/String;)V

    goto :goto_0

    .line 758
    .end local v5           #strSID0:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x1

    if-ne v10, v1, :cond_7

    .line 759
    invoke-static {p0, p1}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->sendMessageAndApplyCert(Ljava/lang/String;Lorg/apache/http/HttpHost;)I

    move-result v2

    .line 760
    if-eqz v2, :cond_4

    .line 761
    invoke-virtual {v3, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto :goto_0

    .line 766
    :cond_4
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genSID()Ljava/lang/String;

    move-result-object v6

    .line 767
    .local v6, strSID1:Ljava/lang/String;
    const-string v10, "2"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 768
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto :goto_0

    .line 772
    :cond_5
    invoke-static {v6, p0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getSIDSignValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 773
    if-nez v4, :cond_6

    .line 774
    const/4 v10, 0x7

    invoke-virtual {v3, v10}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto :goto_0

    .line 778
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 779
    invoke-virtual {v3, v4}, Lcom/ccit/mmwlan/vo/SignView;->setUserSignature(Ljava/lang/String;)V

    goto :goto_0

    .line 782
    .end local v6           #strSID1:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x2

    if-ne v10, v1, :cond_c

    .line 783
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genSID()Ljava/lang/String;

    move-result-object v7

    .line 784
    .local v7, strSID2:Ljava/lang/String;
    const-string v10, "2"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 785
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto/16 :goto_0

    .line 790
    :cond_8
    :try_start_0
    invoke-static {v7, p0, p1}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->applySecCertMethod(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;)I

    move-result v2

    .line 792
    const-string v10, "MMClientSDK_ForPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "SIDSign() iResult -> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    if-nez v2, :cond_b

    .line 795
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genSID()Ljava/lang/String;

    move-result-object v8

    .line 796
    .local v8, strSID21:Ljava/lang/String;
    const-string v10, "2"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 797
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 816
    .end local v8           #strSID21:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 817
    .local v0, e:Ljava/lang/Exception;
    const/4 v10, 0x6

    invoke-virtual {v3, v10}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 818
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 803
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v8       #strSID21:Ljava/lang/String;
    :cond_9
    :try_start_1
    invoke-static {v8, p0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getSIDSignValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 804
    if-nez v4, :cond_a

    .line 805
    const/4 v10, 0x7

    invoke-virtual {v3, v10}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto/16 :goto_0

    .line 809
    :cond_a
    invoke-virtual {v3, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 810
    invoke-virtual {v3, v4}, Lcom/ccit/mmwlan/vo/SignView;->setUserSignature(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 814
    .end local v8           #strSID21:Ljava/lang/String;
    :cond_b
    invoke-virtual {v3, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 824
    .end local v7           #strSID2:Ljava/lang/String;
    :cond_c
    invoke-static {p0, p1}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->sendMessageAndApplyCert(Ljava/lang/String;Lorg/apache/http/HttpHost;)I

    move-result v2

    .line 825
    if-eqz v2, :cond_d

    .line 826
    invoke-virtual {v3, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto/16 :goto_0

    .line 830
    :cond_d
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genSID()Ljava/lang/String;

    move-result-object v9

    .line 831
    .local v9, strSID3:Ljava/lang/String;
    const-string v10, "2"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 832
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto/16 :goto_0

    .line 836
    :cond_e
    invoke-static {v9, p0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getSIDSignValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 837
    if-nez v4, :cond_f

    .line 838
    const/4 v10, 0x7

    invoke-virtual {v3, v10}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto/16 :goto_0

    .line 842
    :cond_f
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 843
    invoke-virtual {v3, v4}, Lcom/ccit/mmwlan/vo/SignView;->setUserSignature(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static applyCertPrivate(Lcom/ccit/mmwlan/phone/HTTPConnectionTool;Lcom/ccit/mmwlan/phone/InflaterTool;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "httpConnetTool1"
    .parameter "inflaterTool1"
    .parameter "strUrl1"
    .parameter "requestXML1"
    .parameter "getHttpProxy1"
    .parameter "strFlag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 643
    const/4 v7, 0x0

    .line 644
    .local v7, strResult:Ljava/lang/String;
    const/4 v2, 0x0

    check-cast v2, [B

    .line 648
    .local v2, byResponse:[B
    const-string v10, "utf-8"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, p2, v10, v0, v1}, Lcom/ccit/mmwlan/phone/HTTPConnectionTool;->doPost(Ljava/lang/String;[BLorg/apache/http/HttpHost;Ljava/lang/String;)[B

    move-result-object v2

    .line 651
    const-string v10, "MMClientSDK_ForPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "applyCertPrivate() -> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 651
    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v10, Ljava/lang/String;

    .line 657
    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V

    .line 656
    invoke-virtual {p1, v10}, Lcom/ccit/mmwlan/phone/InflaterTool;->getServiceInit(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 660
    .local v3, certDataList:Ljava/util/ArrayList;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ccit/mmwlan/phone/CertApplyInfo;

    .line 661
    invoke-virtual {v10}, Lcom/ccit/mmwlan/phone/CertApplyInfo;->getResult()Ljava/lang/String;

    move-result-object v5

    .line 663
    .local v5, strCertResult:Ljava/lang/String;
    const-string v10, "0"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 666
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ccit/mmwlan/phone/CertApplyInfo;

    invoke-virtual {v10}, Lcom/ccit/mmwlan/phone/CertApplyInfo;->getCert()Ljava/lang/String;

    move-result-object v8

    .line 680
    .local v8, strSecCert:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ccit/mmwlan/phone/CertApplyInfo;

    .line 681
    invoke-virtual {v10}, Lcom/ccit/mmwlan/phone/CertApplyInfo;->getRandNum()Ljava/lang/String;

    move-result-object v6

    .line 683
    .local v6, strRandom:Ljava/lang/String;
    const/4 v4, 0x0

    .line 687
    .local v4, iResult:I
    if-eqz v6, :cond_1

    .line 689
    invoke-static {v6}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->updateRandNum(Ljava/lang/String;)I

    move-result v9

    .line 690
    .local v9, upRandomResult:I
    if-eqz v9, :cond_1

    .line 692
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 712
    .end local v4           #iResult:I
    .end local v5           #strCertResult:Ljava/lang/String;
    .end local v6           #strRandom:Ljava/lang/String;
    .end local v8           #strSecCert:Ljava/lang/String;
    .end local v9           #upRandomResult:I
    :cond_0
    :goto_0
    return-object v5

    .line 699
    .restart local v4       #iResult:I
    .restart local v5       #strCertResult:Ljava/lang/String;
    .restart local v6       #strRandom:Ljava/lang/String;
    .restart local v8       #strSecCert:Ljava/lang/String;
    :cond_1
    sget-object v10, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Lcom/ccit/mmwlan/ClientSDK;->saveSecCertNativeForBilling(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 703
    const-string v10, "MMClientSDK_ForPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "applyCertPrivate() iResult -> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 712
    goto :goto_0
.end method

.method public static applySecCert(Ljava/lang/String;Lorg/apache/http/HttpHost;)I
    .locals 7
    .parameter "appuid"
    .parameter "getHttpProxy"

    .prologue
    .line 412
    const/4 v1, 0x1

    .line 414
    .local v1, iResult:I
    if-nez p0, :cond_0

    .line 416
    const/4 v1, 0x6

    move v2, v1

    .line 442
    .end local v1           #iResult:I
    .local v2, iResult:I
    :goto_0
    return v2

    .line 421
    .end local v2           #iResult:I
    .restart local v1       #iResult:I
    :cond_0
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genSID()Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, strSID:Ljava/lang/String;
    const-string v4, "2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    const/4 v1, 0x2

    move v2, v1

    .line 425
    .end local v1           #iResult:I
    .restart local v2       #iResult:I
    goto :goto_0

    .line 430
    .end local v2           #iResult:I
    .restart local v1       #iResult:I
    :cond_1
    :try_start_0
    invoke-static {v3, p0, p1}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->applySecCertMethod(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;)I

    move-result v1

    .line 433
    const-string v4, "MMClientSDK_ForPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCert() iResult -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v1

    .line 442
    .end local v1           #iResult:I
    .restart local v2       #iResult:I
    goto :goto_0

    .line 436
    .end local v2           #iResult:I
    .restart local v1       #iResult:I
    :catch_0
    move-exception v0

    .line 438
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    .line 439
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static applySecCertMethod(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;)I
    .locals 25
    .parameter "strSID"
    .parameter "appuid"
    .parameter "getHttpProxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 457
    const/4 v14, 0x1

    .line 458
    .local v14, iResult:I
    const/16 v22, 0x0

    .line 461
    .local v22, strSecCert:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->strApplyCertForPhone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 462
    const-string v9, "mmwlan/applySecCertForAPPThird"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 461
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 465
    .local v6, strUrl:Ljava/lang/String;
    const-string v8, "MMClientSDK_ForPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v24, "applySecCertMethod() strUrl -> "

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object v8, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v8}, Lcom/ccit/mmwlan/ClientSDK;->checkSecCertNativeForBilling()I

    move-result v12

    .line 472
    .local v12, iCertState:I
    const-string v8, "MMClientSDK_ForPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v24, "applySecCertMethod() iCertState -> "

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 472
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/16 v19, 0x0

    .line 476
    .local v19, strPubKey:Ljava/lang/String;
    const/4 v8, 0x2

    if-ne v12, v8, :cond_1

    .line 479
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getGenPubkey()Ljava/lang/String;

    move-result-object v19

    .line 480
    const-string v8, "4"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 482
    const/4 v14, 0x4

    move/from16 v23, v14

    .line 624
    :cond_0
    :goto_0
    return v23

    .line 488
    :cond_1
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genPKIKey()I

    move-result v13

    .line 489
    .local v13, iGenPKIKEYResult:I
    const/4 v8, 0x3

    if-ne v8, v13, :cond_2

    .line 491
    const/4 v14, 0x3

    move/from16 v23, v14

    .line 492
    goto :goto_0

    .line 496
    :cond_2
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getGenPubkey()Ljava/lang/String;

    move-result-object v19

    .line 497
    const-string v8, "4"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 499
    const/4 v14, 0x4

    move/from16 v23, v14

    .line 500
    goto :goto_0

    .line 505
    .end local v13           #iGenPKIKEYResult:I
    :cond_3
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->imsiOfMD5Value()Ljava/lang/String;

    move-result-object v18

    .line 506
    .local v18, strImsiMD5:Ljava/lang/String;
    const-string v8, "5"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 508
    const/4 v14, 0x5

    move/from16 v23, v14

    .line 509
    goto :goto_0

    .line 513
    :cond_4
    const/4 v7, 0x0

    .line 514
    .local v7, requestXML:Ljava/lang/String;
    const/4 v10, 0x0

    check-cast v10, [B

    .line 515
    .local v10, byResponse:[B
    new-instance v4, Lcom/ccit/mmwlan/phone/HTTPConnectionTool;

    invoke-direct {v4}, Lcom/ccit/mmwlan/phone/HTTPConnectionTool;-><init>()V

    .line 516
    .local v4, httpConnetTool:Lcom/ccit/mmwlan/phone/HTTPConnectionTool;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/ccit/mmwlan/phone/HTTPConnectionTool;->ConbinCertApply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 520
    const-string v8, "MMClientSDK_ForPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v24, "applySecCertMethod() requestXML -> "

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 520
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v5, Lcom/ccit/mmwlan/phone/InflaterTool;

    invoke-direct {v5}, Lcom/ccit/mmwlan/phone/InflaterTool;-><init>()V

    .line 529
    .local v5, inflaterTool:Lcom/ccit/mmwlan/phone/InflaterTool;
    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "3"

    move-object/from16 v0, p2

    invoke-virtual {v4, v6, v8, v0, v9}, Lcom/ccit/mmwlan/phone/HTTPConnectionTool;->doPost(Ljava/lang/String;[BLorg/apache/http/HttpHost;Ljava/lang/String;)[B

    move-result-object v10

    .line 532
    const-string v8, "MMClientSDK_ForPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v24, "applySecCertMethod() byResponse -> "

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 532
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v8, Ljava/lang/String;

    .line 538
    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V

    .line 537
    invoke-virtual {v5, v8}, Lcom/ccit/mmwlan/phone/InflaterTool;->getServiceInit(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 541
    .local v11, certDataList:Ljava/util/ArrayList;
    const/4 v8, 0x0

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ccit/mmwlan/phone/CertApplyInfo;

    .line 542
    invoke-virtual {v8}, Lcom/ccit/mmwlan/phone/CertApplyInfo;->getResult()Ljava/lang/String;

    move-result-object v16

    .line 545
    .local v16, strApplyCertResult:Ljava/lang/String;
    const-string v8, "MMClientSDK_ForPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v24, "applySecCertMethod() strApplyCertResult -> "

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 545
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v8, "0"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 552
    const/4 v8, 0x0

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ccit/mmwlan/phone/CertApplyInfo;

    invoke-virtual {v8}, Lcom/ccit/mmwlan/phone/CertApplyInfo;->getCert()Ljava/lang/String;

    move-result-object v22

    .line 555
    const/4 v8, 0x0

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ccit/mmwlan/phone/CertApplyInfo;

    .line 556
    invoke-virtual {v8}, Lcom/ccit/mmwlan/phone/CertApplyInfo;->getEncKey()Ljava/lang/String;

    move-result-object v17

    .line 559
    .local v17, strDynPdworld:Ljava/lang/String;
    const-string v8, "MMClientSDK_ForPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v24, "applySecCertMethod() strDynPdworld -> "

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 559
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v8, 0x0

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ccit/mmwlan/phone/CertApplyInfo;

    .line 565
    invoke-virtual {v8}, Lcom/ccit/mmwlan/phone/CertApplyInfo;->getRandNum()Ljava/lang/String;

    move-result-object v20

    .line 569
    .local v20, strRandom:Ljava/lang/String;
    if-eqz v20, :cond_5

    .line 571
    invoke-static/range {v20 .. v20}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->updateRandNum(Ljava/lang/String;)I

    move-result v23

    .line 572
    .local v23, upRandomResult:I
    if-nez v23, :cond_0

    .line 579
    .end local v23           #upRandomResult:I
    :cond_5
    sget-object v8, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const/4 v9, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v9}, Lcom/ccit/mmwlan/ClientSDK;->saveSecCertNativeForBilling(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 582
    const-string v8, "MMClientSDK_ForPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v24, "applySecCertMethod() iResult -> "

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 582
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v23, v14

    .line 586
    goto/16 :goto_0

    .line 588
    .end local v17           #strDynPdworld:Ljava/lang/String;
    .end local v20           #strRandom:Ljava/lang/String;
    :cond_6
    const-string v8, "7"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 590
    const/4 v15, 0x0

    .local v15, index:I
    :goto_1
    const/16 v8, 0xa

    if-lt v15, v8, :cond_7

    .end local v15           #index:I
    :goto_2
    move/from16 v23, v14

    .line 624
    goto/16 :goto_0

    .line 593
    .restart local v15       #index:I
    :cond_7
    const-string v9, "2"

    move-object/from16 v8, p2

    .line 592
    invoke-static/range {v4 .. v9}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->applyCertPrivate(Lcom/ccit/mmwlan/phone/HTTPConnectionTool;Lcom/ccit/mmwlan/phone/InflaterTool;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 594
    .local v21, strResult1:Ljava/lang/String;
    const-string v8, "7"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 596
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 597
    goto :goto_2

    .line 590
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 621
    .end local v15           #index:I
    .end local v21           #strResult1:Ljava/lang/String;
    :cond_9
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_2
.end method

.method public static checkSecCert()I
    .locals 5

    .prologue
    .line 377
    const/4 v1, -0x1

    .line 381
    .local v1, iResult:I
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2}, Lcom/ccit/mmwlan/ClientSDK;->checkSecCertNativeForBilling()I

    move-result v1

    .line 384
    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkSecCert()  iResult -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return v1

    .line 387
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 390
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static genPKIKey()I
    .locals 5

    .prologue
    .line 148
    const/4 v1, -0x1

    .line 152
    .local v1, iResult:I
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2}, Lcom/ccit/mmwlan/ClientSDK;->genPKIKeyNativeForBilling()I

    move-result v1

    .line 155
    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "genPKIKey() iResult -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return v1

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x3

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static genSID()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 117
    const/4 v1, 0x0

    .line 121
    .local v1, strResult:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2}, Lcom/ccit/mmwlan/ClientSDK;->genSIDNative()Ljava/lang/String;

    move-result-object v1

    .line 122
    if-nez v1, :cond_0

    .line 124
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    :cond_0
    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "genSID() strResult -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-object v1

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 8

    .prologue
    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 303
    sget-object v5, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    .line 304
    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 303
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 307
    .local v1, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, strIMEI:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 310
    sget-object v5, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 311
    .local v4, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 312
    .local v0, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v5, "MMClientSDK_ForPhone"

    .line 316
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getDeviceID_PAD() MacAddress -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 315
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 328
    .end local v0           #info:Landroid/net/wifi/WifiInfo;
    .end local v4           #wifi:Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v5

    .line 322
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v5, "MMClientSDK_ForPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getDeviceID_PAD() strIMEI -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static getGenPubkey()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 174
    const/4 v1, 0x0

    .line 177
    .local v1, strResult:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2}, Lcom/ccit/mmwlan/ClientSDK;->getPubKeyForBilling()Ljava/lang/String;

    move-result-object v1

    .line 178
    if-nez v1, :cond_0

    .line 180
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    :goto_0
    return-object v1

    .line 185
    :cond_0
    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getGenPubkey()  strResult -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIMSI()Ljava/lang/String;
    .locals 6

    .prologue
    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 343
    sget-object v3, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    .line 344
    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 343
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 347
    .local v0, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, strIMSI:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 350
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v3, "MMClientSDK_ForPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getIMSI() errorValue -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    :goto_0
    return-object v3

    .line 359
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v3, "MMClientSDK_ForPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getIMSI() IMSI -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getSIDSignValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strSID"
    .parameter "appuid"

    .prologue
    .line 856
    const/4 v1, 0x0

    .line 861
    .local v1, strResult:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p1, v3}, Lcom/ccit/mmwlan/ClientSDK;->SIDSignNativeForBilling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 867
    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSIDSignValue() -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    :goto_0
    return-object v1

    .line 869
    :catch_0
    move-exception v0

    .line 871
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "1.1.6"

    .line 106
    .local v0, strVersion:Ljava/lang/String;
    return-object v0
.end method

.method private static imsiOfMD5Value()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 1129
    const/4 v3, 0x0

    .line 1130
    .local v3, strIMSI:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1132
    .local v2, sb:Ljava/lang/StringBuilder;
    sget-object v5, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    .line 1133
    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1132
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1136
    .local v1, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 1137
    if-nez v3, :cond_0

    .line 1139
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1140
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1169
    :goto_0
    return-object v5

    .line 1146
    :cond_0
    :try_start_0
    sget-object v5, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const-string v6, "md5"

    invoke-virtual {v5, v6, v3}, Lcom/ccit/mmwlan/ClientSDK;->getDigestNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1147
    .local v4, strMD5Result:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1149
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1150
    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1155
    :cond_1
    const-string v5, "MMClientSDK_ForPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "imsiOfMD5Value() strMD5Result -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1155
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1160
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    .end local v4           #strMD5Result:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1162
    :catch_0
    move-exception v0

    .line 1164
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1165
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static initialImsiAndImeiValue()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1036
    const/4 v3, 0x1

    .line 1037
    .local v3, iResult:I
    const/4 v8, 0x0

    .line 1038
    .local v8, strIMSI:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1042
    .local v7, strIMEI:Ljava/lang/String;
    new-instance v1, Lcom/ccit/mmwlan/vo/DeviceInfo;

    invoke-direct {v1}, Lcom/ccit/mmwlan/vo/DeviceInfo;-><init>()V

    .line 1044
    .local v1, deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;
    sget-object v10, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    .line 1045
    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1044
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 1048
    .local v5, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    .line 1049
    if-nez v8, :cond_0

    .line 1050
    const/4 v3, 0x1

    .line 1106
    :goto_0
    return v3

    .line 1054
    :cond_0
    invoke-virtual {v1, v8}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImsi(Ljava/lang/String;)V

    .line 1056
    const-string v10, "MMClientSDK_ForPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "strIMSI -> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 1061
    if-nez v7, :cond_1

    .line 1062
    sget-object v10, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    const-string v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 1063
    .local v9, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1064
    .local v4, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1066
    const-string v10, "MMClientSDK_ForPhone"

    .line 1067
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "initialImsiAndImeiValue() strIMEI MacAddress -> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1067
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1066
    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    invoke-virtual {v1, v7}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImei(Ljava/lang/String;)V

    .line 1076
    .end local v4           #info:Landroid/net/wifi/WifiInfo;
    .end local v9           #wifi:Landroid/net/wifi/WifiManager;
    :goto_1
    const-string v10, "MMClientSDK_ForPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "strIMEI -> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    sget-object v10, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 1081
    .local v0, certFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1082
    .local v6, strFilePath:Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setFilePath(Ljava/lang/String;)V

    .line 1085
    const-string v10, "MMClientSDK_ForPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "FilePath -> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :try_start_0
    sget-object v10, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v10, v1}, Lcom/ccit/mmwlan/ClientSDK;->transmitInfoNative(Lcom/ccit/mmwlan/vo/DeviceInfo;)I

    move-result v3

    .line 1091
    const-string v10, "MMClientSDK_ForPhone"

    .line 1092
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "initialImsiAndImeiValue() iResult -> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1091
    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    if-eqz v3, :cond_2

    .line 1096
    const/4 v3, 0x4

    .line 1097
    goto/16 :goto_0

    .line 1073
    .end local v0           #certFile:Ljava/io/File;
    .end local v6           #strFilePath:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v7}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImei(Ljava/lang/String;)V

    goto :goto_1

    .line 1099
    .restart local v0       #certFile:Ljava/io/File;
    .restart local v6       #strFilePath:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1101
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x3

    .line 1102
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1105
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    .line 1106
    goto/16 :goto_0
.end method

.method public static initialMMSDK(Landroid/content/Context;Lcom/ccit/mmwlan/phone/IPDress_ForPhone;)I
    .locals 5
    .parameter "context1"
    .parameter "ipDress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, -0x1

    .line 61
    .local v0, iResult:I
    sput-object p0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    .line 62
    if-nez p1, :cond_0

    .line 64
    const/4 v0, 0x5

    move v1, v0

    .line 91
    .end local v0           #iResult:I
    .local v1, iResult:I
    :goto_0
    return v1

    .line 68
    .end local v1           #iResult:I
    .restart local v0       #iResult:I
    :cond_0
    invoke-virtual {p1}, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->getStrApplySecCertIP()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {p1}, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->getStrSMSNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 71
    :cond_1
    const/4 v0, 0x5

    move v1, v0

    .line 72
    .end local v0           #iResult:I
    .restart local v1       #iResult:I
    goto :goto_0

    .line 75
    .end local v1           #iResult:I
    .restart local v0       #iResult:I
    :cond_2
    invoke-virtual {p1}, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->getStrApplySecCertIP()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->strApplyCertForPhone:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->getStrSMSNumber()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->SMSNumber:Ljava/lang/String;

    .line 80
    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initialMMSDK() strIPDress -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    sget-object v4, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->strApplyCertForPhone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->SMSNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->initialImsiAndImeiValue()I

    move-result v0

    .line 88
    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initialMMSDK() iResult -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 91
    .end local v0           #iResult:I
    .restart local v1       #iResult:I
    goto :goto_0
.end method

.method public static md5Algorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "strPlaintText"

    .prologue
    const/4 v5, 0x2

    .line 205
    const/4 v1, 0x0

    .line 207
    .local v1, strResult:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 209
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 227
    .end local v1           #strResult:Ljava/lang/String;
    .local v2, strResult:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 215
    .end local v2           #strResult:Ljava/lang/String;
    .restart local v1       #strResult:Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v3, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const-string v4, "md5"

    invoke-virtual {v3, v4, p0}, Lcom/ccit/mmwlan/ClientSDK;->getDigestNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    if-nez v1, :cond_1

    .line 218
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    :goto_1
    move-object v2, v1

    .line 227
    .end local v1           #strResult:Ljava/lang/String;
    .restart local v2       #strResult:Ljava/lang/String;
    goto :goto_0

    .line 221
    .end local v2           #strResult:Ljava/lang/String;
    .restart local v1       #strResult:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static sendMessageAndApplyCert(Ljava/lang/String;Lorg/apache/http/HttpHost;)I
    .locals 16
    .parameter "appuid"
    .parameter "getHttpProxy"

    .prologue
    .line 885
    const/4 v12, -0x1

    .line 888
    .local v12, iResult:I
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genSID()Ljava/lang/String;

    move-result-object v15

    .line 889
    .local v15, strSID:Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    const/4 v12, 0x2

    .line 895
    :cond_0
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->imsiOfMD5Value()Ljava/lang/String;

    move-result-object v14

    .line 896
    .local v14, strImsiMD5:Ljava/lang/String;
    const-string v1, "5"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 898
    const/4 v12, 0x5

    .line 902
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 903
    .local v13, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 904
    const-string v1, "MM#WLAN"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 905
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 906
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    const-string v1, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "sendMessageAndApplyCert() sendMessage -> "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 910
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 909
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 917
    .local v0, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x46

    if-le v1, v2, :cond_3

    .line 920
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 921
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 920
    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 922
    .local v10, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 936
    .end local v10           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    :try_start_0
    invoke-static/range {v15 .. v17}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->applySecCertMethod(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;)I

    move-result v12

    .line 939
    const-string v1, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "sendMessageAndApplyCert() -> "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :goto_2
    return v12

    .line 922
    .restart local v10       #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 925
    .local v3, msg:Ljava/lang/String;
    sget-object v1, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->SMSNumber:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 930
    .end local v3           #msg:Ljava/lang/String;
    .end local v10           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    sget-object v5, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->SMSNumber:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 931
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    .line 930
    invoke-virtual/range {v4 .. v9}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 942
    :catch_0
    move-exception v11

    .line 944
    .local v11, e:Ljava/lang/Exception;
    const/4 v12, 0x6

    .line 945
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static updateRandNum(Ljava/lang/String;)I
    .locals 6
    .parameter "strRandNum"

    .prologue
    .line 238
    const/4 v1, -0x1

    .line 240
    .local v1, iResult:I
    if-nez p0, :cond_0

    .line 242
    const/4 v1, 0x1

    move v2, v1

    .line 265
    .end local v1           #iResult:I
    .local v2, iResult:I
    :goto_0
    return v2

    .line 248
    .end local v2           #iResult:I
    .restart local v1       #iResult:I
    :cond_0
    :try_start_0
    sget-object v3, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v3, p0}, Lcom/ccit/mmwlan/ClientSDK;->UpdateRandNumForBilling(Ljava/lang/String;)I

    move-result v1

    .line 249
    if-eqz v1, :cond_1

    .line 251
    const/4 v1, 0x1

    move v2, v1

    .line 252
    .end local v1           #iResult:I
    .restart local v2       #iResult:I
    goto :goto_0

    .line 256
    .end local v2           #iResult:I
    .restart local v1       #iResult:I
    :cond_1
    const-string v3, "MMClientSDK_ForPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateRandNum()  iResult -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v1

    .line 265
    .end local v1           #iResult:I
    .restart local v2       #iResult:I
    goto :goto_0

    .line 259
    .end local v2           #iResult:I
    .restart local v1       #iResult:I
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
