.class public final Lcom/ccit/mmwlan/MMClientSDK_ForLogin;
.super Ljava/lang/Object;
.source "MMClientSDK_ForLogin.java"


# static fields
.field private static final INT_RESULT_0:I = 0x0

.field private static final INT_RESULT_1:I = 0x1

.field private static clientSDK:Lcom/ccit/mmwlan/ClientSDK;

.field private static context:Landroid/content/Context;

.field private static getDevInfo:Lcom/ccit/mmwlan/util/GetDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    .line 50
    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/ccit/mmwlan/util/GetDeviceInfo;

    invoke-direct {v0}, Lcom/ccit/mmwlan/util/GetDeviceInfo;-><init>()V

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->getDevInfo:Lcom/ccit/mmwlan/util/GetDeviceInfo;

    .line 59
    new-instance v0, Lcom/ccit/mmwlan/ClientSDK;

    invoke-direct {v0}, Lcom/ccit/mmwlan/ClientSDK;-><init>()V

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SIDSign(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "cardSlot"
    .parameter "loginType"
    .parameter "userName"
    .parameter "sid"
    .parameter "appid"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x2

    .line 623
    const/4 v7, 0x0

    .line 625
    .local v7, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 626
    if-eq p0, v0, :cond_0

    if-ne p0, v3, :cond_2

    .line 627
    :cond_0
    if-eq p1, v0, :cond_1

    if-ne p1, v3, :cond_2

    .line 628
    :cond_1
    if-eqz p3, :cond_2

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 630
    :cond_2
    const-string v0, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SIDSign() result -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 688
    .end local v7           #result:Ljava/lang/String;
    .local v8, result:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 633
    .end local v8           #result:Ljava/lang/String;
    .restart local v7       #result:Ljava/lang/String;
    :cond_3
    if-ne p1, v3, :cond_5

    .line 634
    if-eqz p2, :cond_4

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 636
    :cond_4
    const-string v0, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SIDSign() result -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 638
    .end local v7           #result:Ljava/lang/String;
    .restart local v8       #result:Ljava/lang/String;
    goto :goto_0

    .line 641
    .end local v8           #result:Ljava/lang/String;
    .restart local v7       #result:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    .line 643
    .local v5, deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->getDevInfo:Lcom/ccit/mmwlan/util/GetDeviceInfo;

    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    invoke-virtual {v0, v2, p0}, Lcom/ccit/mmwlan/util/GetDeviceInfo;->getDeviceInfo(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 652
    const/4 v10, 0x0

    .line 654
    .local v10, strPlaintText:Ljava/lang/String;
    const/4 v9, 0x0

    .line 655
    .local v9, signValue:Ljava/lang/String;
    if-ne p0, v3, :cond_7

    .line 656
    invoke-virtual {v5}, Lcom/ccit/mmwlan/vo/DeviceInfo;->getStrMac()Ljava/lang/String;

    move-result-object v10

    .line 664
    :goto_1
    move-object v1, p3

    .line 665
    .local v1, signData:Ljava/lang/String;
    :try_start_1
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    move-object v2, p4

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ccit/mmwlan/ClientSDK;->SignNativeForLogin(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)Ljava/lang/String;

    move-result-object v9

    .line 667
    if-eqz v9, :cond_6

    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 669
    :cond_6
    const-string v0, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SIDSign() result -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; \u7b7e\u540d\u5931\u8d25!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v7

    .line 672
    .end local v7           #result:Ljava/lang/String;
    .restart local v8       #result:Ljava/lang/String;
    goto :goto_0

    .line 644
    .end local v1           #signData:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    .end local v9           #signValue:Ljava/lang/String;
    .end local v10           #strPlaintText:Ljava/lang/String;
    .restart local v7       #result:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 645
    .local v6, e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v6}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 646
    const-string v0, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SIDSign() ClientSDKException -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v6}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 648
    .end local v7           #result:Ljava/lang/String;
    .restart local v8       #result:Ljava/lang/String;
    goto/16 :goto_0

    .line 658
    .end local v6           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    .end local v8           #result:Ljava/lang/String;
    .restart local v7       #result:Ljava/lang/String;
    .restart local v9       #signValue:Ljava/lang/String;
    .restart local v10       #strPlaintText:Ljava/lang/String;
    :cond_7
    invoke-virtual {v5}, Lcom/ccit/mmwlan/vo/DeviceInfo;->getStrImsi()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 676
    .restart local v1       #signData:Ljava/lang/String;
    :cond_8
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "#V1.0#"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .line 685
    const-string v0, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SIDSign() result -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 688
    .end local v7           #result:Ljava/lang/String;
    .restart local v8       #result:Ljava/lang/String;
    goto/16 :goto_0

    .line 677
    .end local v8           #result:Ljava/lang/String;
    .restart local v7       #result:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 678
    .restart local v6       #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v6}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 679
    const-string v0, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SIDSign() ClientSDKException -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v6}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 679
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 681
    .end local v7           #result:Ljava/lang/String;
    .restart local v8       #result:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static applySecCert(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;I)I
    .locals 20
    .parameter "cardSlot"
    .parameter "loginType"
    .parameter "userName"
    .parameter "passCode"
    .parameter "iapid"
    .parameter "appid"
    .parameter "sid"
    .parameter "moServerHost"
    .parameter "wapHost"
    .parameter "sessionID"

    .prologue
    .line 331
    const/16 v16, -0x1

    .line 333
    .local v16, result:I
    if-eqz p0, :cond_0

    .line 334
    const/4 v2, 0x1

    move/from16 v0, p0

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    move/from16 v0, p0

    if-ne v0, v2, :cond_2

    .line 335
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 336
    :cond_1
    if-eqz p6, :cond_2

    .line 337
    const-string v2, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 338
    if-eqz p5, :cond_2

    .line 339
    const-string v2, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 340
    invoke-virtual/range {p7 .. p7}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 341
    invoke-virtual/range {p7 .. p7}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 342
    :cond_2
    const/16 v16, 0x5

    .line 344
    const-string v2, "MmClientSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCert() result -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 344
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v16

    .line 462
    .end local v16           #result:I
    .local v17, result:I
    :goto_0
    return v17

    .line 349
    .end local v17           #result:I
    .restart local v16       #result:I
    :cond_3
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 350
    if-eqz p2, :cond_4

    const-string v2, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p3, :cond_4

    .line 351
    const-string v2, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 352
    :cond_4
    const/16 v16, 0x5

    .line 354
    const-string v2, "MmClientSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCert() result -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 354
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v16

    .line 358
    .end local v16           #result:I
    .restart local v17       #result:I
    goto :goto_0

    .line 362
    .end local v17           #result:I
    .restart local v16       #result:I
    :cond_5
    const/4 v13, 0x0

    .line 364
    .local v13, deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->getDevInfo:Lcom/ccit/mmwlan/util/GetDeviceInfo;

    sget-object v5, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    move/from16 v0, p0

    invoke-virtual {v2, v5, v0}, Lcom/ccit/mmwlan/util/GetDeviceInfo;->getDeviceInfo(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 373
    const/4 v12, 0x0

    .line 374
    .local v12, deviceId:Ljava/lang/String;
    const/4 v3, 0x0

    .line 375
    .local v3, deviceIdMd5Hash:Ljava/lang/String;
    const/4 v2, 0x2

    move/from16 v0, p0

    if-ne v0, v2, :cond_7

    .line 376
    invoke-virtual {v13}, Lcom/ccit/mmwlan/vo/DeviceInfo;->getStrMac()Ljava/lang/String;

    move-result-object v12

    .line 381
    :goto_1
    :try_start_1
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const-string v5, "md5"

    invoke-virtual {v2, v5, v12}, Lcom/ccit/mmwlan/ClientSDK;->getDigestNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 392
    const/4 v4, 0x0

    .line 394
    .local v4, pubKey:Ljava/lang/String;
    :try_start_2
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1, v13}, Lcom/ccit/mmwlan/ClientSDK;->getPubKeyForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)Ljava/lang/String;

    move-result-object v4

    .line 395
    if-eqz v4, :cond_6

    const-string v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 396
    :cond_6
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1, v13}, Lcom/ccit/mmwlan/ClientSDK;->genPKIKeyNativeForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)I

    move-result v15

    .line 398
    .local v15, genKeyRes:I
    if-eqz v15, :cond_8

    .line 399
    const/16 v16, 0x1

    .line 400
    const-string v2, "MmClientSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCert() result -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 400
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v17, v16

    .line 402
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 365
    .end local v3           #deviceIdMd5Hash:Ljava/lang/String;
    .end local v4           #pubKey:Ljava/lang/String;
    .end local v12           #deviceId:Ljava/lang/String;
    .end local v15           #genKeyRes:I
    .end local v17           #result:I
    .restart local v16       #result:I
    :catch_0
    move-exception v14

    .line 366
    .local v14, e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v14}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 367
    const/16 v16, 0x2

    .line 368
    const-string v2, "MmClientSdk"

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCert() ClientSDKException -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v16

    .line 370
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 378
    .end local v14           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    .end local v17           #result:I
    .restart local v3       #deviceIdMd5Hash:Ljava/lang/String;
    .restart local v12       #deviceId:Ljava/lang/String;
    .restart local v16       #result:I
    :cond_7
    invoke-virtual {v13}, Lcom/ccit/mmwlan/vo/DeviceInfo;->getStrImsi()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 383
    :catch_1
    move-exception v14

    .line 384
    .restart local v14       #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v14}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 385
    const-string v2, "MmClientSdk"

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCert() ClientSDKException -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 385
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/16 v16, 0x1

    move/from16 v17, v16

    .line 388
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 404
    .end local v14           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    .end local v17           #result:I
    .restart local v4       #pubKey:Ljava/lang/String;
    .restart local v15       #genKeyRes:I
    .restart local v16       #result:I
    :cond_8
    :try_start_3
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1, v13}, Lcom/ccit/mmwlan/ClientSDK;->getPubKeyForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    .end local v15           #genKeyRes:I
    :cond_9
    move-object/from16 v2, p5

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 414
    invoke-static/range {v2 .. v10}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->applySecCertFromMoserver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;)[Ljava/lang/String;

    move-result-object v19

    .line 417
    .local v19, secCertWithEncData:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v19, v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    aget-object v2, v19, v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 418
    :cond_a
    const/16 v16, 0x1

    .line 419
    const-string v2, "MmClientSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCert() result -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v16

    .line 420
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 406
    .end local v17           #result:I
    .end local v19           #secCertWithEncData:[Ljava/lang/String;
    .restart local v16       #result:I
    :catch_2
    move-exception v14

    .line 407
    .restart local v14       #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v14}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 408
    const/16 v16, 0x1

    .line 409
    const-string v2, "MmClientSdk"

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "genPKIKeyNative() ClientSDKException -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 409
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v16

    .line 411
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 421
    .end local v14           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    .end local v17           #result:I
    .restart local v16       #result:I
    .restart local v19       #secCertWithEncData:[Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    aget-object v2, v19, v2

    const-string v5, "105"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 422
    const/4 v2, 0x0

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 423
    const-string v2, "MmClientSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCert() result -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v16

    .line 424
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 425
    .end local v17           #result:I
    .restart local v16       #result:I
    :cond_c
    const/4 v2, 0x0

    aget-object v2, v19, v2

    const-string v5, "107"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 426
    const/4 v2, 0x0

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 427
    const-string v2, "MmClientSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCert() result -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v16

    .line 428
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 429
    .end local v17           #result:I
    .restart local v16       #result:I
    :cond_d
    const/4 v2, 0x0

    aget-object v2, v19, v2

    const-string v5, "108"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 430
    const/4 v2, 0x0

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 431
    const-string v2, "MmClientSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCert() result -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v16

    .line 432
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 433
    .end local v17           #result:I
    .restart local v16       #result:I
    :cond_e
    const/4 v2, 0x0

    aget-object v2, v19, v2

    const-string v5, "122"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 434
    const/4 v2, 0x0

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 435
    const-string v2, "MmClientSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCert() result -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v16

    .line 436
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 437
    .end local v17           #result:I
    .restart local v16       #result:I
    :cond_f
    const/4 v2, 0x0

    aget-object v2, v19, v2

    const-string v5, "500"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 438
    const/4 v2, 0x0

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 439
    const-string v2, "MmClientSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCert() result -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v16

    .line 440
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 444
    .end local v17           #result:I
    .restart local v16       #result:I
    :cond_10
    const/16 v18, -0x1

    .line 446
    .local v18, saveRes:I
    :try_start_4
    sget-object v5, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const/4 v2, 0x0

    aget-object v6, v19, v2

    const/4 v2, 0x1

    aget-object v7, v19, v2

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object v10, v13

    move-object/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/ccit/mmwlan/ClientSDK;->saveSecCertNativeForLogin(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v18

    .line 455
    if-nez v18, :cond_11

    .line 456
    const/16 v16, 0x0

    .line 460
    :goto_2
    const-string v2, "MmClientSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCert() result -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v16

    .line 462
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 448
    .end local v17           #result:I
    .restart local v16       #result:I
    :catch_3
    move-exception v14

    .line 449
    .restart local v14       #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v14}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 450
    const/16 v16, 0x1

    .line 451
    const-string v2, "MmClientSdk"

    .line 452
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "saveSecCertNative() ClientSDKException -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 451
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v16

    .line 453
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 458
    .end local v14           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    .end local v17           #result:I
    .restart local v16       #result:I
    :cond_11
    const/16 v16, 0x1

    goto :goto_2
.end method

.method private static applySecCertFromMoserver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;)[Ljava/lang/String;
    .locals 30
    .parameter "appid"
    .parameter "deviceIdMd5Hash"
    .parameter "pubKey"
    .parameter "loginType"
    .parameter "userName"
    .parameter "passCode"
    .parameter "sid"
    .parameter "moServerHost"
    .parameter "wapHost"

    .prologue
    .line 499
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 501
    .local v25, result:[Ljava/lang/String;
    new-instance v22, Lcom/ccit/mmwlan/util/ReadConfigFile;

    invoke-direct/range {v22 .. v22}, Lcom/ccit/mmwlan/util/ReadConfigFile;-><init>()V

    .line 502
    .local v22, readConfigFile:Lcom/ccit/mmwlan/util/ReadConfigFile;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 503
    invoke-virtual/range {p7 .. p7}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 504
    const-string v5, "applySecCertUrl"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/ccit/mmwlan/util/ReadConfigFile;->getConfigInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 502
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 505
    .local v11, applyCertUrl:Ljava/lang/String;
    const-string v4, "MmClientSdk"

    .line 506
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCertFromMoserver() applyCertUrl -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 505
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/16 v19, 0x0

    .line 510
    .local v19, messageType:I
    new-instance v20, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;

    invoke-direct/range {v20 .. v20}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;-><init>()V

    .line 511
    .local v20, msPostRequest:Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;
    new-instance v21, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;

    invoke-direct/range {v21 .. v21}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;-><init>()V

    .line 512
    .local v21, msPostResponse:Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;
    new-instance v18, Lcom/ccit/mmwlan/httpClient/InflaterTool;

    invoke-direct/range {v18 .. v18}, Lcom/ccit/mmwlan/httpClient/InflaterTool;-><init>()V

    .line 514
    .local v18, inflaterTool:Lcom/ccit/mmwlan/httpClient/InflaterTool;
    const/16 v23, 0x0

    .line 515
    .local v23, requestXml:Ljava/lang/String;
    new-instance v3, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;

    invoke-direct {v3}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;-><init>()V

    .line 517
    .local v3, httpTool:Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_2

    .line 518
    const v19, 0x10020

    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p0

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    .line 519
    invoke-virtual/range {v3 .. v8}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->applyCertRequestXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 527
    :goto_0
    const-string v4, "MmClientSdk"

    .line 528
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCertFromMoserver() requestXml -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 527
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/16 v17, 0x0

    check-cast v17, [B

    .line 531
    .local v17, finalReqData:[B
    const/16 v24, 0x0

    check-cast v24, [B

    .line 532
    .local v24, response:[B
    const/16 v29, 0x0

    .line 533
    .local v29, strResponse:Ljava/lang/String;
    const/4 v13, 0x0

    .line 537
    .local v13, certDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ccit/mmwlan/vo/CertApplyInfo;>;"
    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->getFinalData(Ljava/lang/String;I)[B

    move-result-object v17

    .line 539
    move-object/from16 v0, v17

    move-object/from16 v1, p8

    invoke-virtual {v3, v11, v0, v1}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->doPostByHttpClient(Ljava/lang/String;[BLorg/apache/http/HttpHost;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 551
    :try_start_1
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->inflaterHttpPostResponse([B)Ljava/lang/String;

    move-result-object v29

    .line 552
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/httpClient/InflaterTool;->getServiceInit(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 572
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ccit/mmwlan/vo/CertApplyInfo;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 573
    :cond_0
    const-string v4, "MmClientSdk"

    .line 574
    const-string v5, "applySecCertFromMoserver()  Errormsg -> Apply cert failed!"

    .line 573
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_1
    :goto_1
    return-object v25

    .line 522
    .end local v13           #certDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ccit/mmwlan/vo/CertApplyInfo;>;"
    .end local v17           #finalReqData:[B
    .end local v24           #response:[B
    .end local v29           #strResponse:Ljava/lang/String;
    :cond_2
    const v19, 0x10030

    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p0

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 523
    invoke-virtual/range {v3 .. v10}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->applyCertRequest_N_XML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 540
    .restart local v13       #certDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ccit/mmwlan/vo/CertApplyInfo;>;"
    .restart local v17       #finalReqData:[B
    .restart local v24       #response:[B
    .restart local v29       #strResponse:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 541
    .local v14, e:Ljava/lang/Exception;
    const-string v4, "MmClientSdk"

    .line 542
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCertFromMoserver() Exception -> \u4e0emo.server\u901a\u4fe1\u5f02\u5e38\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 542
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 541
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 553
    .end local v14           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v14

    .line 554
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v4, "MmClientSdk"

    .line 555
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCertFromMoserver() Exception -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 554
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 559
    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    .line 560
    .local v16, exceInfo:Ljava/lang/String;
    if-eqz v16, :cond_1

    const-string v4, "returnCode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 561
    const-string v4, "="

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 562
    .local v28, retInfoArr:[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v28, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 563
    .local v27, retCode:Ljava/lang/String;
    const/4 v4, 0x0

    aput-object v27, v25, v4

    goto :goto_1

    .line 580
    .end local v14           #e:Ljava/lang/Exception;
    .end local v16           #exceInfo:Ljava/lang/String;
    .end local v27           #retCode:Ljava/lang/String;
    .end local v28           #retInfoArr:[Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ccit/mmwlan/vo/CertApplyInfo;

    invoke-virtual {v4}, Lcom/ccit/mmwlan/vo/CertApplyInfo;->getResult()Ljava/lang/String;

    move-result-object v26

    .line 581
    .local v26, resultCode:Ljava/lang/String;
    if-eqz v26, :cond_4

    const-string v4, "1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 582
    const-string v5, "MmClientSdk"

    .line 583
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "applySecCertFromMoserver()  Errormsg -> "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ccit/mmwlan/vo/CertApplyInfo;

    invoke-virtual {v4}, Lcom/ccit/mmwlan/vo/CertApplyInfo;->getErrormsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 583
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 582
    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 589
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ccit/mmwlan/vo/CertApplyInfo;

    invoke-virtual {v4}, Lcom/ccit/mmwlan/vo/CertApplyInfo;->getCert()Ljava/lang/String;

    move-result-object v12

    .line 590
    .local v12, cert:Ljava/lang/String;
    const/4 v4, 0x0

    aput-object v12, v25, v4

    .line 591
    const-string v4, "MmClientSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCertFromMoserver() cert -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 591
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ccit/mmwlan/vo/CertApplyInfo;

    invoke-virtual {v4}, Lcom/ccit/mmwlan/vo/CertApplyInfo;->getEncData()Ljava/lang/String;

    move-result-object v15

    .line 595
    .local v15, encData:Ljava/lang/String;
    const/4 v4, 0x1

    aput-object v15, v25, v4

    .line 596
    const-string v4, "MmClientSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applySecCertFromMoserver() encData -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static checkSecCert(IILjava/lang/String;)I
    .locals 8
    .parameter "cardSlot"
    .parameter "loginType"
    .parameter "userName"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 159
    const/4 v3, -0x1

    .line 162
    .local v3, result:I
    if-eqz p0, :cond_0

    .line 163
    if-eq p0, v6, :cond_0

    if-ne p0, v5, :cond_1

    .line 164
    :cond_0
    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_2

    .line 165
    :cond_1
    const/4 v3, 0x5

    .line 167
    const-string v5, "MmClientSdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkSecCert() result -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 167
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 217
    .end local v3           #result:I
    .local v4, result:I
    :goto_0
    return v4

    .line 171
    .end local v4           #result:I
    .restart local v3       #result:I
    :cond_2
    if-ne p1, v5, :cond_4

    .line 172
    if-eqz p2, :cond_3

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 173
    :cond_3
    const/4 v3, 0x5

    .line 175
    const-string v5, "MmClientSdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkSecCert() result -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 175
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 178
    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_0

    .line 182
    .end local v4           #result:I
    .restart local v3       #result:I
    :cond_4
    const/4 v1, 0x0

    .line 184
    .local v1, deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_start_0
    sget-object v5, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->getDevInfo:Lcom/ccit/mmwlan/util/GetDeviceInfo;

    sget-object v6, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    invoke-virtual {v5, v6, p0}, Lcom/ccit/mmwlan/util/GetDeviceInfo;->getDeviceInfo(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 194
    const/4 v0, -0x1

    .line 196
    .local v0, checkRes:I
    :try_start_1
    sget-object v5, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v5, p1, p2, v1}, Lcom/ccit/mmwlan/ClientSDK;->checkSecCertNativeForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)I
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 207
    if-nez v0, :cond_5

    .line 208
    const/4 v3, 0x0

    .line 214
    :goto_1
    const-string v5, "MmClientSdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkSecCert() result -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 217
    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_0

    .line 185
    .end local v0           #checkRes:I
    .end local v4           #result:I
    .restart local v3       #result:I
    :catch_0
    move-exception v2

    .line 186
    .local v2, e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v2}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 187
    const/4 v3, 0x2

    .line 188
    const-string v5, "MmClientSdk"

    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkSecCert() ClientSDKException -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 188
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 190
    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_0

    .line 198
    .end local v2           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    .end local v4           #result:I
    .restart local v0       #checkRes:I
    .restart local v3       #result:I
    :catch_1
    move-exception v2

    .line 199
    .restart local v2       #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v2}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 200
    const/4 v3, 0x6

    .line 201
    const-string v5, "MmClientSdk"

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkSecCertNative() ClientSDKException -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 202
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 201
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 204
    .end local v3           #result:I
    .restart local v4       #result:I
    goto/16 :goto_0

    .line 210
    .end local v2           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    .end local v4           #result:I
    .restart local v3       #result:I
    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static encWithCert(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "data"

    .prologue
    .line 700
    const/4 v2, 0x0

    .line 701
    .local v2, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 703
    :cond_0
    const-string v5, "MmClientSdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "encWithCert() result -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 703
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 723
    .end local v2           #result:Ljava/lang/String;
    .local v3, result:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 709
    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/ccit/mmwlan/util/ReadConfigFile;

    invoke-direct {v1}, Lcom/ccit/mmwlan/util/ReadConfigFile;-><init>()V

    .line 710
    .local v1, readConfigFile:Lcom/ccit/mmwlan/util/ReadConfigFile;
    const-string v5, "uicCert"

    invoke-virtual {v1, v5}, Lcom/ccit/mmwlan/util/ReadConfigFile;->getConfigInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 713
    .local v4, uicCert:Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v5, p0, v4}, Lcom/ccit/mmwlan/ClientSDK;->encWithCertNativeForLogin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 721
    const-string v5, "MmClientSdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "encWithCert() result -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 723
    .end local v2           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    goto :goto_0

    .line 714
    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 715
    .local v0, e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 716
    const-string v5, "MmClientSdk"

    .line 717
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "encWithCert() ClientSDKException -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 716
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 718
    .end local v2           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static encWithPubKey(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "cardSlot"
    .parameter "loginType"
    .parameter "userName"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 919
    const/4 v3, 0x0

    .line 921
    .local v3, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 922
    if-eq p0, v5, :cond_0

    if-ne p0, v4, :cond_1

    .line 923
    :cond_0
    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_2

    .line 925
    :cond_1
    const-string v4, "MmClientSdk"

    .line 926
    const-string v5, "encWithPubKey() error -> parameters error!"

    .line 925
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    .end local v3           #result:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 929
    .restart local v3       #result:Ljava/lang/String;
    :cond_2
    if-ne p1, v4, :cond_4

    .line 930
    if-eqz p2, :cond_3

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 932
    :cond_3
    const-string v4, "MmClientSdk"

    .line 933
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "encWithPubKey() error -> parameters error!"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 932
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 938
    :cond_4
    if-eqz p3, :cond_5

    const-string v4, ""

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 942
    :cond_5
    const-string v4, "MmClientSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "encWithPubKey error --> the fourth parameter error!"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 949
    :cond_6
    const/4 v0, 0x0

    .line 951
    .local v0, deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_start_0
    sget-object v4, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->getDevInfo:Lcom/ccit/mmwlan/util/GetDeviceInfo;

    sget-object v5, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, p0}, Lcom/ccit/mmwlan/util/GetDeviceInfo;->getDeviceInfo(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 958
    const/4 v2, 0x0

    .line 961
    .local v2, encData:Ljava/lang/String;
    :try_start_1
    sget-object v4, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v4, p1, p2, v0, p3}, Lcom/ccit/mmwlan/ClientSDK;->AsymmetricEncryptionForMMLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_1
    move-object v3, v2

    .line 969
    goto :goto_0

    .line 952
    .end local v2           #encData:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 953
    .local v1, e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 954
    const-string v4, "MmClientSdk"

    .line 955
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkSecCert() ClientSDKException -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 954
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 962
    .end local v1           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    .restart local v2       #encData:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 965
    .restart local v1       #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    const-string v4, "MmClientSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "encWithPubKey call AsymmetricEncryptionForMMLogin error --> !"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static genPKIKey(IILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cardSlot"
    .parameter "loginType"
    .parameter "userName"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 232
    const/4 v4, 0x0

    .line 234
    .local v4, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 235
    if-eq p0, v6, :cond_0

    if-ne p0, v5, :cond_1

    .line 236
    :cond_0
    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_2

    .line 238
    :cond_1
    const-string v5, "MmClientSdk"

    .line 239
    const-string v6, "genPKIKey() error -> parameters error!"

    .line 238
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v4           #result:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 242
    .restart local v4       #result:Ljava/lang/String;
    :cond_2
    if-ne p1, v5, :cond_4

    .line 243
    if-eqz p2, :cond_3

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 245
    :cond_3
    const-string v5, "MmClientSdk"

    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "genPKIKey() error -> parameters error!"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 245
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_4
    const/4 v0, 0x0

    .line 254
    .local v0, deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_start_0
    sget-object v5, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->getDevInfo:Lcom/ccit/mmwlan/util/GetDeviceInfo;

    sget-object v6, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    invoke-virtual {v5, v6, p0}, Lcom/ccit/mmwlan/util/GetDeviceInfo;->getDeviceInfo(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 263
    const/4 v2, -0x1

    .line 265
    .local v2, genPkiKeyRes:I
    :try_start_1
    sget-object v5, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v5, p1, p2, v0}, Lcom/ccit/mmwlan/ClientSDK;->genPKIKeyNativeForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)I
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 274
    if-eqz v2, :cond_5

    .line 276
    const-string v5, "MmClientSdk"

    .line 277
    const-string v6, "genPKIKey() error -> generation pki key failed!"

    .line 276
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    .end local v2           #genPkiKeyRes:I
    :catch_0
    move-exception v1

    .line 256
    .local v1, e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 257
    const-string v5, "MmClientSdk"

    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkSecCert() ClientSDKException -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 257
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    .end local v1           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    .restart local v2       #genPkiKeyRes:I
    :catch_1
    move-exception v1

    .line 268
    .restart local v1       #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 269
    const-string v5, "MmClientSdk"

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "genPKIKeyNative() ClientSDKException -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 269
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    .end local v1           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    :cond_5
    const/4 v3, 0x0

    .line 285
    .local v3, pubKey:Ljava/lang/String;
    :try_start_2
    sget-object v5, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v5, p1, p2, v0}, Lcom/ccit/mmwlan/ClientSDK;->getPubKeyForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 294
    const-string v5, "MmClientSdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "genPKIKey() pubKey -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 297
    goto/16 :goto_0

    .line 286
    :catch_2
    move-exception v1

    .line 287
    .restart local v1       #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 288
    const-string v5, "MmClientSdk"

    .line 289
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "genPKIKeyNative() ClientSDKException -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 288
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static genSID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, strResult:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2}, Lcom/ccit/mmwlan/ClientSDK;->genSIDNative()Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "genSID() strResult -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-object v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "genSID() \u751f\u6210SID\u5931\u8d25 -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "digestAlg"
    .parameter "strPlaintText"

    .prologue
    .line 736
    const/4 v1, 0x0

    .line 737
    .local v1, result:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 739
    :cond_0
    const-string v3, "MmClientSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMd5Digest() result -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 739
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 756
    .end local v1           #result:Ljava/lang/String;
    .local v2, result:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 746
    .end local v2           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v3, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v3, p0, p1}, Lcom/ccit/mmwlan/ClientSDK;->getDigestNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 754
    const-string v3, "MmClientSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMd5Digest() result -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 756
    .end local v1           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    goto :goto_0

    .line 747
    .end local v2           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 748
    .local v0, e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 749
    const-string v3, "MmClientSdk"

    .line 750
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getDigestNative() ClientSDKException -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 749
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 751
    .end local v1           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "1.1.6"

    .line 122
    .local v0, strVersion:Ljava/lang/String;
    return-object v0
.end method

.method public static initMmClientSdk(Landroid/content/Context;I)I
    .locals 8
    .parameter "appContext"
    .parameter "cardSlot"

    .prologue
    .line 73
    const/4 v2, -0x1

    .line 74
    .local v2, result:I
    sput-object p0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_start_0
    sget-object v5, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->getDevInfo:Lcom/ccit/mmwlan/util/GetDeviceInfo;

    sget-object v6, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    invoke-virtual {v5, v6, p1}, Lcom/ccit/mmwlan/util/GetDeviceInfo;->getDeviceInfo(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    const/4 v4, -0x1

    .line 90
    .local v4, transRes:I
    :try_start_1
    sget-object v5, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v5, v0}, Lcom/ccit/mmwlan/ClientSDK;->transmitInfoNative(Lcom/ccit/mmwlan/vo/DeviceInfo;)I
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 101
    if-nez v4, :cond_0

    .line 102
    const/4 v2, 0x0

    :goto_0
    move v3, v2

    .line 107
    .end local v2           #result:I
    .end local v4           #transRes:I
    .local v3, result:I
    :goto_1
    return v3

    .line 80
    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 82
    const/4 v2, 0x2

    .line 83
    const-string v5, "MmClientSdk"

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initMmClientSdk() ClientSDKException -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 85
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_1

    .line 91
    .end local v1           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    .end local v3           #result:I
    .restart local v2       #result:I
    .restart local v4       #transRes:I
    :catch_1
    move-exception v1

    .line 92
    .restart local v1       #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 93
    const/4 v2, 0x1

    .line 95
    const-string v5, "MmClientSdk"

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initMmClientSdk() ClientSDKException -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 98
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_1

    .line 104
    .end local v1           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static saveCert(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "cardSlot"
    .parameter "loginType"
    .parameter "userName"
    .parameter "appid"
    .parameter "cert"
    .parameter "encData"

    .prologue
    .line 778
    const/4 v9, -0x1

    .line 780
    .local v9, result:I
    if-eqz p0, :cond_0

    .line 781
    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 782
    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 783
    :cond_1
    if-eqz p4, :cond_2

    const-string v1, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 784
    if-eqz p3, :cond_2

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 785
    if-eqz p5, :cond_2

    const-string v1, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 786
    :cond_2
    const/4 v9, 0x1

    .line 788
    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveCert() parameter invalid -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 831
    .end local v9           #result:I
    .local v10, result:I
    :goto_0
    return v10

    .line 791
    .end local v10           #result:I
    .restart local v9       #result:I
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 792
    if-eqz p2, :cond_4

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 793
    :cond_4
    const/4 v9, 0x1

    .line 795
    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveCert() the third parameter invalid -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 797
    .end local v9           #result:I
    .restart local v10       #result:I
    goto :goto_0

    .line 801
    .end local v10           #result:I
    .restart local v9       #result:I
    :cond_5
    const/4 v6, 0x0

    .line 803
    .local v6, deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_start_0
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->getDevInfo:Lcom/ccit/mmwlan/util/GetDeviceInfo;

    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, p0}, Lcom/ccit/mmwlan/util/GetDeviceInfo;->getDeviceInfo(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 812
    const/4 v11, -0x1

    .line 814
    .local v11, saveRes:I
    :try_start_1
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/ccit/mmwlan/ClientSDK;->saveSecCertNativeForLogin(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 823
    if-nez v11, :cond_6

    .line 824
    const/4 v9, 0x0

    .line 829
    :goto_1
    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveCert() result -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 831
    .end local v9           #result:I
    .restart local v10       #result:I
    goto :goto_0

    .line 804
    .end local v10           #result:I
    .end local v11           #saveRes:I
    .restart local v9       #result:I
    :catch_0
    move-exception v8

    .line 805
    .local v8, e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v8}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 806
    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveCert(...) call getDeviceInfo(...) ClientSDKException -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/4 v9, 0x1

    move v10, v9

    .line 808
    .end local v9           #result:I
    .restart local v10       #result:I
    goto :goto_0

    .line 816
    .end local v8           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    .end local v10           #result:I
    .restart local v9       #result:I
    .restart local v11       #saveRes:I
    :catch_1
    move-exception v8

    .line 817
    .restart local v8       #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v8}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 818
    const/4 v9, 0x1

    .line 819
    const-string v1, "MmClientSdk"

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveCert(...) call saveSecCertNativeForLogin() throw ClientSDKException -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 819
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 821
    .end local v9           #result:I
    .restart local v10       #result:I
    goto/16 :goto_0

    .line 826
    .end local v8           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    .end local v10           #result:I
    .restart local v9       #result:I
    :cond_6
    const/4 v9, 0x1

    goto :goto_1
.end method

.method public static updateRandNum(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "cardSlot"
    .parameter "loginType"
    .parameter "userName"
    .parameter "appid"
    .parameter "strRandNum"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 852
    const/4 v7, -0x1

    .line 855
    .local v7, iResult:I
    if-eqz p0, :cond_0

    .line 856
    if-eq p0, v0, :cond_0

    if-ne p0, v1, :cond_2

    .line 857
    :cond_0
    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_2

    .line 858
    :cond_1
    if-eqz p3, :cond_2

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 859
    if-eqz p4, :cond_2

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 861
    :cond_2
    const/4 v7, 0x1

    .line 862
    const-string v0, "MmClientSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateRandNum() parameter invalid -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 902
    .end local v7           #iResult:I
    .local v8, iResult:I
    :goto_0
    return v8

    .line 865
    .end local v8           #iResult:I
    .restart local v7       #iResult:I
    :cond_3
    if-ne p1, v1, :cond_5

    .line 866
    if-eqz p2, :cond_4

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 868
    :cond_4
    const/4 v7, 0x1

    .line 869
    const-string v0, "MmClientSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateRandNum() the third parameter error -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 871
    .end local v7           #iResult:I
    .restart local v8       #iResult:I
    goto :goto_0

    .line 875
    .end local v8           #iResult:I
    .restart local v7       #iResult:I
    :cond_5
    const/4 v4, 0x0

    .line 877
    .local v4, deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->getDevInfo:Lcom/ccit/mmwlan/util/GetDeviceInfo;

    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/ccit/mmwlan/util/GetDeviceInfo;->getDeviceInfo(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 887
    :try_start_1
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    move-object v1, p4

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ccit/mmwlan/ClientSDK;->UpdateRandNumForLogin(Ljava/lang/String;ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;Ljava/lang/String;)I

    move-result v7

    .line 889
    const-string v0, "MmClientSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateRandNum() call UpdateRandNumForLogin(...) iResult -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 891
    if-eqz v7, :cond_6

    .line 893
    const/4 v7, 0x1

    move v8, v7

    .line 894
    .end local v7           #iResult:I
    .restart local v8       #iResult:I
    goto :goto_0

    .line 878
    .end local v8           #iResult:I
    .restart local v7       #iResult:I
    :catch_0
    move-exception v6

    .line 879
    .local v6, e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v6}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    .line 880
    const-string v0, "MmClientSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateRandNum() call getDeviceInfo(...) ClientSDKException -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v7, 0x1

    move v8, v7

    .line 882
    .end local v7           #iResult:I
    .restart local v8       #iResult:I
    goto :goto_0

    .line 896
    .end local v6           #e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    .end local v8           #iResult:I
    .restart local v7       #iResult:I
    :catch_1
    move-exception v6

    .line 898
    .local v6, e:Ljava/lang/Exception;
    const/4 v7, 0x1

    .line 899
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .end local v6           #e:Ljava/lang/Exception;
    :cond_6
    move v8, v7

    .line 902
    .end local v7           #iResult:I
    .restart local v8       #iResult:I
    goto :goto_0
.end method
