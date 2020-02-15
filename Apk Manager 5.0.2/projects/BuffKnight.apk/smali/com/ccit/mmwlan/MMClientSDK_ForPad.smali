.class public final Lcom/ccit/mmwlan/MMClientSDK_ForPad;
.super Ljava/lang/Object;
.source "MMClientSDK_ForPad.java"


# static fields
.field private static final INT_RESULT_0:I = 0x0

.field private static final INT_RESULT_1:I = 0x1

.field private static final INT_RESULT_2:I = 0x2

.field private static final INT_RESULT_3:I = 0x3

.field private static final INT_RESULT_4:I = 0x4

.field private static final INT_RESULT_5:I = 0x5

.field private static final INT_RESULT_6:I = 0x6

.field private static final INT_RESULT_7:I = 0x7

.field private static final MMCLIENT_SDK:Ljava/lang/String; = "MMClientSDK_ForPad"

.field private static clientSDK:Lcom/ccit/mmwlan/ClientSDK;

.field private static context:Landroid/content/Context;

.field private static strApplyCert:Ljava/lang/String;

.field private static strDeviceOuth:Ljava/lang/String;

.field private static strGetDeviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->context:Landroid/content/Context;

    .line 41
    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    .line 42
    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strDeviceOuth:Ljava/lang/String;

    .line 43
    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strApplyCert:Ljava/lang/String;

    .line 44
    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strGetDeviceName:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/ccit/mmwlan/ClientSDK;

    invoke-direct {v0}, Lcom/ccit/mmwlan/ClientSDK;-><init>()V

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
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
    .line 1286
    const/4 v1, 0x0

    .line 1290
    .local v1, iRet:I
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2, p0}, Lcom/ccit/mmwlan/ClientSDK;->DestorySecCertForBilling(Ljava/lang/String;)I

    move-result v1

    .line 1293
    const-string v2, "MMClientSDK_ForPad"

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

    .line 1296
    const/4 v1, 0x0

    .line 1302
    :goto_0
    return v1

    .line 1297
    :catch_0
    move-exception v0

    .line 1299
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static RSAEncryptWithPubKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "strBase64PlainText"

    .prologue
    const/4 v5, 0x1

    .line 1252
    const/4 v1, 0x0

    .line 1256
    .local v1, strRet:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2, p0}, Lcom/ccit/mmwlan/ClientSDK;->AsymmetricEncryptionForBilling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1257
    if-nez v1, :cond_0

    .line 1259
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1263
    :cond_0
    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RSAEncryptWithPubKey() strRet -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1263
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :goto_0
    return-object v1

    .line 1267
    :catch_0
    move-exception v0

    .line 1269
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static applyCert(Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;
    .locals 22
    .parameter "appid"
    .parameter "deviceAuthorizationCode"

    .prologue
    .line 579
    const/4 v13, 0x0

    .line 582
    .local v13, signView:Lcom/ccit/mmwlan/vo/SignView;
    new-instance v13, Lcom/ccit/mmwlan/vo/SignView;

    .end local v13           #signView:Lcom/ccit/mmwlan/vo/SignView;
    invoke-direct {v13}, Lcom/ccit/mmwlan/vo/SignView;-><init>()V

    .line 583
    .restart local v13       #signView:Lcom/ccit/mmwlan/vo/SignView;
    const/4 v11, -0x1

    .line 585
    .local v11, iResult:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strApplyCert:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "mmwlan/applyCert_PAD"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 588
    .local v19, strUrl:Ljava/lang/String;
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->imeiOfMD5Value()Ljava/lang/String;

    move-result-object v3

    .line 589
    .local v3, strImeiMD5:Ljava/lang/String;
    const-string v2, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 591
    const/4 v2, 0x5

    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 592
    const-string v2, "\u83b7\u53d6IMEIMD5\u503c\u5931\u8d25"

    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    .line 742
    :cond_0
    :goto_0
    return-object v13

    .line 597
    :cond_1
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->genSid_PAD()Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, strSID:Ljava/lang/String;
    const-string v2, "2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 600
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 601
    const-string v2, "\u51c6\u5907PKI\u5bc6\u94a5\u5bf9\u5931\u8d25"

    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_2
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->genPKIKey_PAD()I

    move-result v10

    .line 607
    .local v10, iGenPKIKEYResult:I
    const/4 v2, 0x3

    if-ne v2, v10, :cond_3

    .line 609
    const/4 v2, 0x3

    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 610
    const-string v2, "\u7533\u8bf7\u5b89\u5168\u51ed\u8bc1\u5931\u8d25"

    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_3
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->getGenPubkey()Ljava/lang/String;

    move-result-object v5

    .line 617
    .local v5, strPubKey:Ljava/lang/String;
    const-string v2, "4"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 619
    const/4 v2, 0x4

    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 620
    const-string v2, "\u4fdd\u5b58\u5b89\u5168\u51ed\u8bc1\u5931\u8d25"

    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_4
    const/16 v17, 0x0

    .line 628
    .local v17, strRequestXML:Ljava/lang/String;
    const/4 v7, 0x0

    check-cast v7, [B

    .line 629
    .local v7, byResponse:[B
    new-instance v1, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;

    invoke-direct {v1}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;-><init>()V

    .line 630
    .local v1, httpConnetTool:Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;
    if-nez p1, :cond_6

    .line 633
    const/4 v6, 0x0

    move-object/from16 v2, p0

    .line 632
    invoke-virtual/range {v1 .. v6}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->ConbinCertApply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 642
    :goto_1
    const-string v2, "MMClientSDK_ForPad"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v21, "applyCert() strRequestXML -> "

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v12, Lcom/ccit/mmwlan/httpClient/InflaterTool;

    invoke-direct {v12}, Lcom/ccit/mmwlan/httpClient/InflaterTool;-><init>()V

    .line 650
    .local v12, inflaterTool:Lcom/ccit/mmwlan/httpClient/InflaterTool;
    :try_start_0
    const-string v2, "utf-8"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 649
    move-object/from16 v0, v19

    invoke-virtual {v1, v0, v2}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->doPost(Ljava/lang/String;[B)[B

    move-result-object v7

    .line 653
    const-string v2, "MMClientSDK_ForPad"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v21, "applyCert() byResponse -> "

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 654
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 653
    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v12, v2}, Lcom/ccit/mmwlan/httpClient/InflaterTool;->getServiceInit(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 662
    .local v8, certDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ccit/mmwlan/vo/CertApplyInfo;>;"
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ccit/mmwlan/vo/CertApplyInfo;

    invoke-virtual {v2}, Lcom/ccit/mmwlan/vo/CertApplyInfo;->getResult()Ljava/lang/String;

    move-result-object v14

    .line 664
    .local v14, strCertResult:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ccit/mmwlan/vo/CertApplyInfo;

    invoke-virtual {v2}, Lcom/ccit/mmwlan/vo/CertApplyInfo;->getErrormsg()Ljava/lang/String;

    move-result-object v15

    .line 665
    .local v15, strError:Ljava/lang/String;
    invoke-virtual {v13, v15}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    .line 668
    const-string v2, "MMClientSDK_ForPad"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v21, "applyCert() strCertResult -> "

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 668
    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v2, "0"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 676
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ccit/mmwlan/vo/CertApplyInfo;

    invoke-virtual {v2}, Lcom/ccit/mmwlan/vo/CertApplyInfo;->getCert()Ljava/lang/String;

    move-result-object v18

    .line 679
    .local v18, strSecCert:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ccit/mmwlan/vo/CertApplyInfo;

    invoke-virtual {v2}, Lcom/ccit/mmwlan/vo/CertApplyInfo;->getRandNum()Ljava/lang/String;

    move-result-object v16

    .line 682
    .local v16, strRandom:Ljava/lang/String;
    if-eqz v16, :cond_5

    .line 684
    invoke-static/range {v16 .. v16}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->updateRandNum_PAD(Ljava/lang/String;)I

    move-result v20

    .line 686
    .local v20, upRandomResult:I
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 687
    if-nez v20, :cond_0

    .line 699
    .end local v20           #upRandomResult:I
    :cond_5
    :try_start_1
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v6}, Lcom/ccit/mmwlan/ClientSDK;->saveSecCertNativeForBilling(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 701
    invoke-virtual {v13, v11}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 704
    const-string v2, "MMClientSDK_ForPad"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v21, "applyCert() saveSecCertNative -> "

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 704
    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 717
    :goto_2
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 718
    const-string v2, "\u6210\u529f"

    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 727
    .end local v8           #certDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ccit/mmwlan/vo/CertApplyInfo;>;"
    .end local v14           #strCertResult:Ljava/lang/String;
    .end local v15           #strError:Ljava/lang/String;
    .end local v16           #strRandom:Ljava/lang/String;
    .end local v18           #strSecCert:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 730
    .local v9, e:Ljava/io/UnsupportedEncodingException;
    const/4 v2, 0x7

    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 731
    const-string v2, "\u7b7e\u540d\u5931\u8d25"

    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .end local v9           #e:Ljava/io/UnsupportedEncodingException;
    .end local v12           #inflaterTool:Lcom/ccit/mmwlan/httpClient/InflaterTool;
    :cond_6
    move-object/from16 v2, p0

    move-object/from16 v6, p1

    .line 636
    invoke-virtual/range {v1 .. v6}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->ConbinCertApply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 708
    .restart local v8       #certDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ccit/mmwlan/vo/CertApplyInfo;>;"
    .restart local v12       #inflaterTool:Lcom/ccit/mmwlan/httpClient/InflaterTool;
    .restart local v14       #strCertResult:Ljava/lang/String;
    .restart local v15       #strError:Ljava/lang/String;
    .restart local v16       #strRandom:Ljava/lang/String;
    .restart local v18       #strSecCert:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 711
    .local v9, e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    const/4 v2, 0x4

    :try_start_3
    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 712
    const-string v2, "\u4fdd\u5b58\u5b89\u5168\u51ed\u8bc1\u5931\u8d25"

    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v9}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 734
    .end local v8           #certDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ccit/mmwlan/vo/CertApplyInfo;>;"
    .end local v9           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    .end local v14           #strCertResult:Ljava/lang/String;
    .end local v15           #strError:Ljava/lang/String;
    .end local v16           #strRandom:Ljava/lang/String;
    .end local v18           #strSecCert:Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 737
    .local v9, e:Ljava/lang/Exception;
    const/4 v2, 0x7

    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 738
    const-string v2, "\u7b7e\u540d\u5931\u8d25"

    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 723
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #certDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ccit/mmwlan/vo/CertApplyInfo;>;"
    .restart local v14       #strCertResult:Ljava/lang/String;
    .restart local v15       #strError:Ljava/lang/String;
    :cond_7
    :try_start_4
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 724
    invoke-virtual {v13, v11}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method

.method public static applyCert_PAD(Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;
    .locals 3
    .parameter "appid"

    .prologue
    .line 553
    const/4 v0, 0x0

    .line 556
    .local v0, signView:Lcom/ccit/mmwlan/vo/SignView;
    new-instance v0, Lcom/ccit/mmwlan/vo/SignView;

    .end local v0           #signView:Lcom/ccit/mmwlan/vo/SignView;
    invoke-direct {v0}, Lcom/ccit/mmwlan/vo/SignView;-><init>()V

    .line 558
    .restart local v0       #signView:Lcom/ccit/mmwlan/vo/SignView;
    if-nez p0, :cond_0

    .line 560
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 561
    const-string v2, "\u83b7\u53d6\u5e94\u7528appid\u9519\u8bef"

    invoke-virtual {v0, v2}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    move-object v1, v0

    .line 567
    .end local v0           #signView:Lcom/ccit/mmwlan/vo/SignView;
    .local v1, signView:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 565
    .end local v1           #signView:Ljava/lang/Object;
    .restart local v0       #signView:Lcom/ccit/mmwlan/vo/SignView;
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->applyCert(Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v0

    move-object v1, v0

    .line 567
    .restart local v1       #signView:Ljava/lang/Object;
    goto :goto_0
.end method

.method private static authProcess(Lcom/ccit/mmwlan/vo/SignView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;
    .locals 17
    .parameter "signView"
    .parameter "appid"
    .parameter "strImeiMD5"
    .parameter "deviceName"
    .parameter "mobilePhone"

    .prologue
    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strDeviceOuth:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 426
    const-string v3, "mmwlan/ApplyDeviceAuth_PAD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 425
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 428
    .local v16, strUrl:Ljava/lang/String;
    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "authProcess() strUrl -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v15, 0x0

    .line 433
    .local v15, strRequestXML:Ljava/lang/String;
    const/4 v9, 0x0

    check-cast v9, [B

    .line 435
    .local v9, byResponse:[B
    new-instance v1, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;

    invoke-direct {v1}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;-><init>()V

    .line 437
    .local v1, httpConnetTool:Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    .line 436
    invoke-virtual/range {v1 .. v8}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->conbinGetDeviceAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 440
    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "authProcess() strRequestXML -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v13, Lcom/ccit/mmwlan/httpClient/InflaterTool;

    invoke-direct {v13}, Lcom/ccit/mmwlan/httpClient/InflaterTool;-><init>()V

    .line 449
    .local v13, inflaterTool:Lcom/ccit/mmwlan/httpClient/InflaterTool;
    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {v15, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 448
    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->doPost(Ljava/lang/String;[B)[B

    move-result-object v9

    .line 452
    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "authProcess() byResponse -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v2}, Lcom/ccit/mmwlan/httpClient/InflaterTool;->getDeviceAuthServiceInit(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 461
    .local v10, deviceAuthInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ccit/mmwlan/vo/DeviceAuthInfo;>;"
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ccit/mmwlan/vo/DeviceAuthInfo;

    invoke-virtual {v2}, Lcom/ccit/mmwlan/vo/DeviceAuthInfo;->getResult()Ljava/lang/String;

    move-result-object v14

    .line 468
    .local v14, strCertResult:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ccit/mmwlan/vo/DeviceAuthInfo;

    invoke-virtual {v2}, Lcom/ccit/mmwlan/vo/DeviceAuthInfo;->getErrormsg()Ljava/lang/String;

    move-result-object v12

    .line 469
    .local v12, error:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    .line 474
    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "authProcess() strCertResult -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 474
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 490
    .end local v10           #deviceAuthInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ccit/mmwlan/vo/DeviceAuthInfo;>;"
    .end local v12           #error:Ljava/lang/String;
    .end local v14           #strCertResult:Ljava/lang/String;
    :goto_0
    return-object p0

    .line 480
    :catch_0
    move-exception v11

    .line 482
    .local v11, e:Ljava/io/UnsupportedEncodingException;
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 483
    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 484
    .end local v11           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v11

    .line 486
    .local v11, e:Ljava/lang/Exception;
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 487
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkSecCert_PAD()I
    .locals 5

    .prologue
    .line 163
    const/4 v1, -0x1

    .line 167
    .local v1, iResult:I
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2}, Lcom/ccit/mmwlan/ClientSDK;->checkSecCertNativeForBilling()I

    move-result v1

    .line 170
    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkSecCert_PAD() -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return v1

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static genPKIKey_PAD()I
    .locals 5

    .prologue
    .line 967
    const/4 v1, -0x1

    .line 971
    .local v1, iResult:I
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2}, Lcom/ccit/mmwlan/ClientSDK;->genPKIKeyNativeForBilling()I

    move-result v1

    .line 974
    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "genPKIKey_PAD() -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :goto_0
    return v1

    .line 977
    :catch_0
    move-exception v0

    .line 979
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x3

    .line 980
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static genSid_PAD()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 936
    const/4 v1, 0x0

    .line 940
    .local v1, strResult:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2}, Lcom/ccit/mmwlan/ClientSDK;->genSIDNative()Ljava/lang/String;

    move-result-object v1

    .line 941
    if-nez v1, :cond_0

    .line 943
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 947
    :cond_0
    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "genSid_PAD() -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :goto_0
    return-object v1

    .line 950
    :catch_0
    move-exception v0

    .line 952
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 953
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceID_PAD()Ljava/lang/String;
    .locals 8

    .prologue
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 193
    sget-object v5, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->context:Landroid/content/Context;

    .line 194
    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 193
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 196
    .local v1, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, strIMEI:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 198
    sget-object v5, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->context:Landroid/content/Context;

    .line 199
    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 198
    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 200
    .local v4, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 201
    .local v0, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v5, "MMClientSDK_ForPad"

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getDeviceID_PAD() MacAddress -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 204
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 219
    .end local v0           #info:Landroid/net/wifi/WifiInfo;
    .end local v4           #wifi:Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v5

    .line 211
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v5, "MMClientSDK_ForPad"

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getDeviceID_PAD() strIMEI -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getDeviceNameNew_PAD()Lcom/ccit/mmwlan/vo/DeviceName;
    .locals 14

    .prologue
    .line 862
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http://"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strGetDeviceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 863
    const-string v12, "mmwlan/getDeviceName_PAD"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 862
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 866
    .local v10, strURL:Ljava/lang/String;
    new-instance v6, Lcom/ccit/mmwlan/vo/DeviceName;

    invoke-direct {v6}, Lcom/ccit/mmwlan/vo/DeviceName;-><init>()V

    .line 869
    .local v6, stDeviceNameFirst:Lcom/ccit/mmwlan/vo/DeviceName;
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->imeiOfMD5Value()Ljava/lang/String;

    move-result-object v8

    .line 870
    .local v8, strImeiMD5:Ljava/lang/String;
    const-string v11, "5"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 872
    const-string v11, "5"

    invoke-virtual {v6, v11}, Lcom/ccit/mmwlan/vo/DeviceName;->setResult(Ljava/lang/String;)V

    .line 873
    const-string v11, "imei/imsi/mac\u7684MD5\u5931\u8d25"

    invoke-virtual {v6, v11}, Lcom/ccit/mmwlan/vo/DeviceName;->setErrormsg(Ljava/lang/String;)V

    .line 874
    const-string v11, ""

    invoke-virtual {v6, v11}, Lcom/ccit/mmwlan/vo/DeviceName;->setDeviceName(Ljava/lang/String;)V

    move-object v7, v6

    .line 925
    .end local v6           #stDeviceNameFirst:Lcom/ccit/mmwlan/vo/DeviceName;
    .local v7, stDeviceNameFirst:Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 880
    .end local v7           #stDeviceNameFirst:Ljava/lang/Object;
    .restart local v6       #stDeviceNameFirst:Lcom/ccit/mmwlan/vo/DeviceName;
    :cond_0
    const/4 v9, 0x0

    .line 881
    .local v9, strRequestXML:Ljava/lang/String;
    const/4 v1, 0x0

    check-cast v1, [B

    .line 883
    .local v1, byResponse:[B
    new-instance v4, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;

    invoke-direct {v4}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;-><init>()V

    .line 884
    .local v4, httpConnetTool:Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;
    invoke-virtual {v4, v8}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->conbinGetDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 887
    const-string v11, "MMClientSDK_ForPad"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getDeviceName_PAD() strRequestXML -> "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 887
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v5, Lcom/ccit/mmwlan/httpClient/InflaterTool;

    invoke-direct {v5}, Lcom/ccit/mmwlan/httpClient/InflaterTool;-><init>()V

    .line 896
    .local v5, inflaterTool:Lcom/ccit/mmwlan/httpClient/InflaterTool;
    :try_start_0
    const-string v11, "utf-8"

    invoke-virtual {v9, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 895
    invoke-virtual {v4, v10, v11}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->doPost(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 899
    const-string v11, "MMClientSDK_ForPad"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getDeviceName_PAD() byResponse -> "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 900
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 899
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v11}, Lcom/ccit/mmwlan/httpClient/InflaterTool;->getDeviceNameServiceInit(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 908
    .local v2, deviceNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ccit/mmwlan/vo/DeviceName;>;"
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/ccit/mmwlan/vo/DeviceName;

    move-object v6, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #deviceNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ccit/mmwlan/vo/DeviceName;>;"
    :goto_1
    move-object v7, v6

    .line 925
    .restart local v7       #stDeviceNameFirst:Ljava/lang/Object;
    goto :goto_0

    .line 910
    .end local v7           #stDeviceNameFirst:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 912
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v11, "7"

    invoke-virtual {v6, v11}, Lcom/ccit/mmwlan/vo/DeviceName;->setResult(Ljava/lang/String;)V

    .line 913
    const-string v11, "\u8bf7\u6c42\u8bbe\u5907\u540d\u5931\u8d25"

    invoke-virtual {v6, v11}, Lcom/ccit/mmwlan/vo/DeviceName;->setErrormsg(Ljava/lang/String;)V

    .line 914
    const-string v11, ""

    invoke-virtual {v6, v11}, Lcom/ccit/mmwlan/vo/DeviceName;->setDeviceName(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 916
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    .line 918
    .local v3, e:Ljava/lang/Exception;
    const-string v11, "7"

    invoke-virtual {v6, v11}, Lcom/ccit/mmwlan/vo/DeviceName;->setResult(Ljava/lang/String;)V

    .line 919
    const-string v11, "\u8bf7\u6c42\u8bbe\u5907\u540d\u5931\u8d25"

    invoke-virtual {v6, v11}, Lcom/ccit/mmwlan/vo/DeviceName;->setErrormsg(Ljava/lang/String;)V

    .line 920
    const-string v11, ""

    invoke-virtual {v6, v11}, Lcom/ccit/mmwlan/vo/DeviceName;->setDeviceName(Ljava/lang/String;)V

    .line 922
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDeviceName_PAD()Ljava/lang/String;
    .locals 19

    .prologue
    .line 754
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "http://"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strGetDeviceName:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 755
    const-string v17, "mmwlan/getDeviceName_PAD"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 754
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 757
    .local v12, strURL:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->imeiOfMD5Value()Ljava/lang/String;

    move-result-object v9

    .line 761
    .local v9, strImeiMD5:Ljava/lang/String;
    const-string v16, "5"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 763
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 764
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 847
    :goto_0
    return-object v16

    .line 769
    :cond_0
    const/4 v10, 0x0

    .line 770
    .local v10, strRequestXML:Ljava/lang/String;
    const/4 v1, 0x0

    check-cast v1, [B

    .line 772
    .local v1, byResponse:[B
    new-instance v4, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;

    invoke-direct {v4}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;-><init>()V

    .line 773
    .local v4, httpConnetTool:Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;
    invoke-virtual {v4, v9}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->conbinGetDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 776
    const-string v16, "MMClientSDK_ForPad"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "getDeviceName_PAD() strRequestXML -> "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 776
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v5, Lcom/ccit/mmwlan/httpClient/InflaterTool;

    invoke-direct {v5}, Lcom/ccit/mmwlan/httpClient/InflaterTool;-><init>()V

    .line 785
    .local v5, inflaterTool:Lcom/ccit/mmwlan/httpClient/InflaterTool;
    :try_start_0
    const-string v16, "utf-8"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    .line 784
    move-object/from16 v0, v16

    invoke-virtual {v4, v12, v0}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->doPost(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 788
    const-string v16, "MMClientSDK_ForPad"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "getDeviceName_PAD() byResponse -> "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 789
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 788
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/ccit/mmwlan/httpClient/InflaterTool;->getDeviceNameServiceInit(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 797
    .local v2, deviceNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ccit/mmwlan/vo/DeviceName;>;"
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/ccit/mmwlan/vo/DeviceName;

    invoke-virtual/range {v16 .. v16}, Lcom/ccit/mmwlan/vo/DeviceName;->getDeviceName()Ljava/lang/String;

    move-result-object v13

    .line 798
    .local v13, strXMLResult:Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/ccit/mmwlan/vo/DeviceName;

    invoke-virtual/range {v16 .. v16}, Lcom/ccit/mmwlan/vo/DeviceName;->getResult()Ljava/lang/String;

    move-result-object v11

    .line 799
    .local v11, strResult:Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/ccit/mmwlan/vo/DeviceName;

    invoke-virtual/range {v16 .. v16}, Lcom/ccit/mmwlan/vo/DeviceName;->getErrormsg()Ljava/lang/String;

    move-result-object v8

    .line 802
    .local v8, strErrormsg:Ljava/lang/String;
    const-string v16, "MMClientSDK_ForPad"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "getDeviceName_PAD() strXMLResult -> "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 803
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 802
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const-string v16, "0"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 809
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/ccit/mmwlan/vo/DeviceName;

    invoke-virtual/range {v16 .. v16}, Lcom/ccit/mmwlan/vo/DeviceName;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    .line 810
    .local v7, strDeviceName:Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/ccit/mmwlan/vo/DeviceName;

    invoke-virtual/range {v16 .. v16}, Lcom/ccit/mmwlan/vo/DeviceName;->getResult()Ljava/lang/String;

    move-result-object v15

    .line 811
    .local v15, strgetResult:Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/ccit/mmwlan/vo/DeviceName;

    invoke-virtual/range {v16 .. v16}, Lcom/ccit/mmwlan/vo/DeviceName;->getErrormsg()Ljava/lang/String;

    move-result-object v14

    .line 812
    .local v14, strgetErrormsg:Ljava/lang/String;
    const-string v16, "strDeviceName --- >"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "strDeviceName"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v16, "MMClientSDK_ForPad"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "getDeviceName_PAD() strDeviceName -> "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 817
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 816
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 821
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 831
    .end local v7           #strDeviceName:Ljava/lang/String;
    .end local v14           #strgetErrormsg:Ljava/lang/String;
    .end local v15           #strgetResult:Ljava/lang/String;
    :cond_1
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 832
    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 847
    .end local v2           #deviceNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ccit/mmwlan/vo/DeviceName;>;"
    .end local v8           #strErrormsg:Ljava/lang/String;
    .end local v11           #strResult:Ljava/lang/String;
    .end local v13           #strXMLResult:Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 835
    :catch_0
    move-exception v3

    .line 837
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 838
    const/16 v16, 0x7

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 840
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    .line 842
    .local v3, e:Ljava/lang/Exception;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 843
    const/16 v16, 0x7

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static getGenPubkey()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 993
    const/4 v1, 0x0

    .line 996
    .local v1, strResult:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2}, Lcom/ccit/mmwlan/ClientSDK;->getPubKeyForBilling()Ljava/lang/String;

    move-result-object v1

    .line 997
    if-nez v1, :cond_0

    .line 999
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1013
    :goto_0
    return-object v1

    .line 1004
    :cond_0
    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getGenPubkey() -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1007
    :catch_0
    move-exception v0

    .line 1009
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1010
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIMSI_PAD()Ljava/lang/String;
    .locals 4

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v0, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 234
    const-string v1, "10086"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, "MMClientSDK_ForPad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getIMSI_PAD() strIMEI -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    const-string v0, "1.1.6"

    .line 116
    .local v0, strVersion:Ljava/lang/String;
    const-string v1, "MMClientSDK_ForPad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getVersion() -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-object v0
.end method

.method private static imeiOfMD5Value()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 1213
    const/4 v2, 0x0

    .line 1214
    .local v2, strIMEI:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1216
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->getDeviceID_PAD()Ljava/lang/String;

    move-result-object v2

    .line 1219
    :try_start_0
    sget-object v4, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const-string v5, "md5"

    invoke-virtual {v4, v5, v2}, Lcom/ccit/mmwlan/ClientSDK;->getDigestNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1220
    .local v3, strMD5Result:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1222
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1223
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1242
    .end local v3           #strMD5Result:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1227
    .restart local v3       #strMD5Result:Ljava/lang/String;
    :cond_0
    const-string v4, "MMClientSDK_ForPad"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "imeiOfMD5Value() strMD5Result -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1227
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1233
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    .end local v3           #strMD5Result:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1235
    :catch_0
    move-exception v0

    .line 1237
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1238
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static initialImsiAndImeiValue()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1099
    const/4 v3, -0x1

    .line 1100
    .local v3, iResult:I
    const/4 v6, 0x0

    .line 1101
    .local v6, strIMSI:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1103
    .local v5, strIMEI:Ljava/lang/String;
    new-instance v1, Lcom/ccit/mmwlan/vo/DeviceInfo;

    invoke-direct {v1}, Lcom/ccit/mmwlan/vo/DeviceInfo;-><init>()V

    .line 1105
    .local v1, deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;
    const-string v6, "10086"

    .line 1106
    invoke-virtual {v1, v6}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImei(Ljava/lang/String;)V

    .line 1108
    const-string v7, "MMClientSDK_ForPad"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "initialImsiAndImeiValue() strIMSI -> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1108
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->getDeviceID_PAD()Ljava/lang/String;

    move-result-object v5

    .line 1116
    const-string v7, "MMClientSDK_ForPad"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "initialImsiAndImeiValue() IMEI ->"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    if-nez v5, :cond_0

    .line 1121
    const/4 v3, 0x1

    .line 1164
    :goto_0
    return v3

    .line 1125
    :cond_0
    invoke-virtual {v1, v5}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImsi(Ljava/lang/String;)V

    .line 1127
    const-string v7, "MMClientSDK_ForPad"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "initialImsiAndImeiValue() strIMEI -> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1127
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    sget-object v7, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 1132
    .local v0, certFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1133
    .local v4, strFilePath:Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setFilePath(Ljava/lang/String;)V

    .line 1136
    const-string v7, "MMClientSDK_ForPad"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "initialImsiAndImeiValue() FilePath -> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1136
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :try_start_0
    sget-object v7, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v7, v1}, Lcom/ccit/mmwlan/ClientSDK;->transmitInfoNative(Lcom/ccit/mmwlan/vo/DeviceInfo;)I

    move-result v3

    .line 1145
    const-string v7, "MMClientSDK_ForPad"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "initialImsiAndImeiValue() iResult -> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1145
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    if-nez v3, :cond_1

    .line 1152
    const/4 v3, 0x0

    .line 1163
    :goto_1
    const/4 v3, 0x0

    .line 1164
    goto :goto_0

    .line 1155
    :cond_1
    const/4 v3, 0x4

    goto :goto_1

    .line 1157
    :catch_0
    move-exception v2

    .line 1159
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x3

    .line 1160
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static initialMMSDK(Landroid/content/Context;Lcom/ccit/mmwlan/vo/IPDress_ForPad;)I
    .locals 5
    .parameter "context1"
    .parameter "ipDress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, -0x1

    .line 67
    .local v0, iResult:I
    sput-object p0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->context:Landroid/content/Context;

    .line 68
    if-nez p1, :cond_0

    .line 70
    const/4 v0, 0x5

    move v1, v0

    .line 100
    .end local v0           #iResult:I
    .local v1, iResult:I
    :goto_0
    return v1

    .line 74
    .end local v1           #iResult:I
    .restart local v0       #iResult:I
    :cond_0
    invoke-virtual {p1}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;->getStrDeviceOuthIp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;->getStrApplySecCertIP()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;->getStrGetDeviceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 78
    :cond_1
    const/4 v0, 0x5

    move v1, v0

    .line 79
    .end local v0           #iResult:I
    .restart local v1       #iResult:I
    goto :goto_0

    .line 82
    .end local v1           #iResult:I
    .restart local v0       #iResult:I
    :cond_2
    invoke-virtual {p1}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;->getStrDeviceOuthIp()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strDeviceOuth:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;->getStrApplySecCertIP()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strApplyCert:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;->getStrGetDeviceName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strGetDeviceName:Ljava/lang/String;

    .line 89
    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initialMMSDK() strIPDress -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strApplyCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 90
    const-string v4, "  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strApplyCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->initialImsiAndImeiValue()I

    move-result v0

    .line 97
    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initialMMSDK() -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 100
    .end local v0           #iResult:I
    .restart local v1       #iResult:I
    goto :goto_0
.end method

.method public static md5Algorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "strPlaintText"

    .prologue
    const/4 v5, 0x2

    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, strResult:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 134
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 152
    .end local v1           #strResult:Ljava/lang/String;
    .local v2, strResult:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 140
    .end local v2           #strResult:Ljava/lang/String;
    .restart local v1       #strResult:Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v3, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const-string v4, "md5"

    invoke-virtual {v3, v4, p0}, Lcom/ccit/mmwlan/ClientSDK;->getDigestNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    if-nez v1, :cond_1

    .line 143
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    :goto_1
    move-object v2, v1

    .line 152
    .end local v1           #strResult:Ljava/lang/String;
    .restart local v2       #strResult:Ljava/lang/String;
    goto :goto_0

    .line 146
    .end local v2           #strResult:Ljava/lang/String;
    .restart local v1       #strResult:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static sidSign_PAD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;
    .locals 10
    .parameter "appid"
    .parameter "deviceName"
    .parameter "mobilePhone"
    .parameter "deviceAuthorizationCode"

    .prologue
    const/4 v9, 0x6

    .line 294
    const/4 v4, 0x0

    .line 297
    .local v4, signView:Lcom/ccit/mmwlan/vo/SignView;
    new-instance v4, Lcom/ccit/mmwlan/vo/SignView;

    .end local v4           #signView:Lcom/ccit/mmwlan/vo/SignView;
    invoke-direct {v4}, Lcom/ccit/mmwlan/vo/SignView;-><init>()V

    .line 298
    .restart local v4       #signView:Lcom/ccit/mmwlan/vo/SignView;
    if-nez p0, :cond_0

    .line 300
    invoke-virtual {v4, v9}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 301
    const-string v6, "\u5e94\u7528appid\u4e3a\u7a7a"

    invoke-virtual {v4, v6}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    .line 409
    .end local v4           #signView:Lcom/ccit/mmwlan/vo/SignView;
    :goto_0
    return-object v4

    .line 306
    .restart local v4       #signView:Lcom/ccit/mmwlan/vo/SignView;
    :cond_0
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->imeiOfMD5Value()Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, strImeiMD5:Ljava/lang/String;
    const-string v6, "5"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 309
    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 310
    const-string v6, "\u83b7\u53d6IMEI\u7684MD5\u503c\u9519\u8bef"

    invoke-virtual {v4, v6}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_1
    const/4 v2, -0x1

    .line 318
    .local v2, iCertState:I
    :try_start_0
    sget-object v6, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v6}, Lcom/ccit/mmwlan/ClientSDK;->checkSecCertNativeForBilling()I

    move-result v2

    .line 321
    const-string v6, "MMClientSDK_ForPad"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sidSign_PAD() iCertState -> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_1
    if-nez v2, :cond_2

    .line 334
    invoke-static {v4, p0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->signProcess(Lcom/ccit/mmwlan/vo/SignView;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v4

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 327
    const-string v6, "\u68c0\u67e5\u51ed\u8bc1\u5f02\u5e38"

    invoke-virtual {v4, v6}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    goto :goto_1

    .line 336
    .end local v0           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    :cond_2
    const/4 v6, 0x1

    if-ne v6, v2, :cond_6

    .line 338
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 341
    invoke-static {v4, p0, v5, p1, p2}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->authProcess(Lcom/ccit/mmwlan/vo/SignView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v4

    goto :goto_0

    .line 343
    :cond_3
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    .line 346
    invoke-static {p0, p3}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->applyCert(Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v1

    .line 356
    .local v1, iApplyCert:Lcom/ccit/mmwlan/vo/SignView;
    invoke-virtual {v1}, Lcom/ccit/mmwlan/vo/SignView;->getResult()I

    move-result v6

    if-nez v6, :cond_4

    .line 359
    invoke-static {v4, p0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->signProcess(Lcom/ccit/mmwlan/vo/SignView;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v4

    goto :goto_0

    :cond_4
    move-object v4, v1

    .line 363
    goto :goto_0

    .line 368
    .end local v1           #iApplyCert:Lcom/ccit/mmwlan/vo/SignView;
    :cond_5
    invoke-virtual {v4, v9}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 369
    const-string v6, "\u5e94\u7528appid\u4e3a\u7a7a"

    invoke-virtual {v4, v6}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_6
    const/4 v6, 0x2

    if-ne v6, v2, :cond_8

    .line 377
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->applyCert(Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v3

    .line 380
    .local v3, iUpdateCert:Lcom/ccit/mmwlan/vo/SignView;
    const-string v6, "MMClientSDK_ForPad"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sidSign_PAD() iUpdateCert -> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 380
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v3}, Lcom/ccit/mmwlan/vo/SignView;->getResult()I

    move-result v6

    if-nez v6, :cond_7

    .line 395
    invoke-static {v4, p0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->signProcess(Lcom/ccit/mmwlan/vo/SignView;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    move-object v4, v3

    .line 400
    goto/16 :goto_0

    .line 406
    .end local v3           #iUpdateCert:Lcom/ccit/mmwlan/vo/SignView;
    :cond_8
    invoke-virtual {v4, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto/16 :goto_0
.end method

.method private static signProcess(Lcom/ccit/mmwlan/vo/SignView;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;
    .locals 7
    .parameter "signView"
    .parameter "appid"

    .prologue
    const/4 v6, 0x7

    .line 503
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->genSid_PAD()Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, strSID:Ljava/lang/String;
    const-string v3, "2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 507
    const-string v3, "\u83b7\u53d6sid\u5931\u8d25"

    invoke-virtual {p0, v3}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    .line 540
    :goto_0
    return-object p0

    .line 514
    :cond_0
    :try_start_0
    sget-object v3, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, p1, v4}, Lcom/ccit/mmwlan/ClientSDK;->SIDSignNativeForBilling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, strSignResult:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 517
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 518
    const-string v3, "\u7b7e\u540d\u5931\u8d25"

    invoke-virtual {p0, v3}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    .end local v2           #strSignResult:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v6}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 536
    const-string v3, "\u7b7e\u540d\u5931\u8d25"

    invoke-virtual {p0, v3}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 524
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #strSignResult:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v3, "MMClientSDK_ForPad"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "signProcess() strSignResult -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 524
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    .line 529
    const-string v3, "\u7b7e\u540d\u6210\u529f"

    invoke-virtual {p0, v3}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0, v2}, Lcom/ccit/mmwlan/vo/SignView;->setUserSignature(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static updateRandNum_PAD(Ljava/lang/String;)I
    .locals 6
    .parameter "strRandNum"

    .prologue
    .line 251
    const/4 v1, -0x1

    .line 253
    .local v1, iResult:I
    if-nez p0, :cond_0

    .line 255
    const/4 v1, 0x1

    move v2, v1

    .line 278
    .end local v1           #iResult:I
    .local v2, iResult:I
    :goto_0
    return v2

    .line 261
    .end local v2           #iResult:I
    .restart local v1       #iResult:I
    :cond_0
    :try_start_0
    sget-object v3, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v3, p0}, Lcom/ccit/mmwlan/ClientSDK;->UpdateRandNumForBilling(Ljava/lang/String;)I

    move-result v1

    .line 262
    if-eqz v1, :cond_1

    .line 264
    const/4 v1, 0x1

    move v2, v1

    .line 265
    .end local v1           #iResult:I
    .restart local v2       #iResult:I
    goto :goto_0

    .line 269
    .end local v2           #iResult:I
    .restart local v1       #iResult:I
    :cond_1
    const-string v3, "MMClientSDK_ForPad"

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

    .line 278
    .end local v1           #iResult:I
    .restart local v2       #iResult:I
    goto :goto_0

    .line 272
    .end local v2           #iResult:I
    .restart local v1       #iResult:I
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
