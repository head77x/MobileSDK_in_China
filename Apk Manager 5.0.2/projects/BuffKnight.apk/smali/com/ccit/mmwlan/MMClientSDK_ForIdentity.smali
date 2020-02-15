.class public final Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;
.super Ljava/lang/Object;
.source "MMClientSDK_ForIdentity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private clientsdk:Lcom/ccit/mmwlan/MMClientSDK_ForLogin;

.field private context:Landroid/content/Context;

.field private deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;

.field private userProfile:Lcom/ccit/mmwlan/UserProfile;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "IdentitySDK"

    iput-object v0, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->TAG:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->clientsdk:Lcom/ccit/mmwlan/MMClientSDK_ForLogin;

    .line 16
    iput-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->context:Landroid/content/Context;

    .line 17
    iput-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    .line 18
    iput-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;

    .line 13
    return-void
.end method


# virtual methods
.method public applyCert()I
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 89
    const/4 v10, 0x0

    .line 90
    .local v10, result:I
    iget-object v0, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget v0, v0, Lcom/ccit/mmwlan/UserProfile;->cardSlot:I

    iget-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget v1, v1, Lcom/ccit/mmwlan/UserProfile;->loginType:I

    iget-object v2, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v2, v2, Lcom/ccit/mmwlan/UserProfile;->userName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->checkSecCert(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->getSessionID()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, sessionID:Ljava/lang/String;
    iget-object v0, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v3, v0, Lcom/ccit/mmwlan/UserProfile;->password:Ljava/lang/String;

    .line 95
    .local v3, passCode:Ljava/lang/String;
    iget-object v0, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget v0, v0, Lcom/ccit/mmwlan/UserProfile;->cardSlot:I

    iget-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget v1, v1, Lcom/ccit/mmwlan/UserProfile;->loginType:I

    iget-object v2, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v2, v2, Lcom/ccit/mmwlan/UserProfile;->userName:Ljava/lang/String;

    iget-object v5, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v5, v5, Lcom/ccit/mmwlan/UserProfile;->appID:Ljava/lang/String;

    iget-object v7, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v7, v7, Lcom/ccit/mmwlan/UserProfile;->moServerHost:Lorg/apache/http/HttpHost;

    const/4 v9, 0x0

    move-object v8, v4

    invoke-static/range {v0 .. v9}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->applySecCert(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;I)I

    move-result v10

    .line 98
    .end local v3           #passCode:Ljava/lang/String;
    .end local v6           #sessionID:Ljava/lang/String;
    :cond_0
    return v10
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, deviceID:Ljava/lang/String;
    iget-object v3, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;

    if-nez v3, :cond_0

    .line 51
    new-instance v2, Lcom/ccit/mmwlan/util/GetDeviceInfo;

    invoke-direct {v2}, Lcom/ccit/mmwlan/util/GetDeviceInfo;-><init>()V

    .line 53
    .local v2, getDevInfo:Lcom/ccit/mmwlan/util/GetDeviceInfo;
    :try_start_0
    iget-object v3, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget v4, v4, Lcom/ccit/mmwlan/UserProfile;->cardSlot:I

    invoke-virtual {v2, v3, v4}, Lcom/ccit/mmwlan/util/GetDeviceInfo;->getDeviceInfo(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v2           #getDevInfo:Lcom/ccit/mmwlan/util/GetDeviceInfo;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;

    if-eqz v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;

    invoke-virtual {v3}, Lcom/ccit/mmwlan/vo/DeviceInfo;->getStrImei()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_1
    return-object v0

    .line 54
    .restart local v2       #getDevInfo:Lcom/ccit/mmwlan/util/GetDeviceInfo;
    :catch_0
    move-exception v1

    .line 56
    .local v1, e:Lcom/ccit/mmwlan/exception/ClientSDKException;
    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 21

    .prologue
    .line 107
    const/4 v9, 0x0

    .line 108
    .local v9, identity:Ljava/lang/String;
    const/4 v15, 0x0

    .line 110
    .local v15, signature:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->getSessionID()Ljava/lang/String;

    move-result-object v14

    .line 111
    .local v14, sessionID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/ccit/mmwlan/UserProfile;->cardSlot:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/ccit/mmwlan/UserProfile;->loginType:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/ccit/mmwlan/UserProfile;->userName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/ccit/mmwlan/UserProfile;->appID:Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v14, v3}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->SIDSign(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 113
    const-string v17, "<req><sidSignature>%s</sidSignature></req>"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 114
    .local v12, reqMsg:Ljava/lang/String;
    new-instance v8, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;

    invoke-direct {v8}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;-><init>()V

    .line 115
    .local v8, httpTool:Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;
    new-instance v11, Lcom/ccit/mmwlan/util/ReadConfigFile;

    invoke-direct {v11}, Lcom/ccit/mmwlan/util/ReadConfigFile;-><init>()V

    .line 116
    .local v11, readConfigFile:Lcom/ccit/mmwlan/util/ReadConfigFile;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "http://"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ccit/mmwlan/UserProfile;->moServerHost:Lorg/apache/http/HttpHost;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ccit/mmwlan/UserProfile;->moServerHost:Lorg/apache/http/HttpHost;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 118
    const-string v18, "applyIdentUrl"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/ccit/mmwlan/util/ReadConfigFile;->getConfigInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 116
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, applyIdentUrl:Ljava/lang/String;
    const/4 v13, 0x0

    check-cast v13, [B

    .line 121
    .local v13, respContent:[B
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v4, v0, v1}, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->doPostByHttpClient(Ljava/lang/String;[BLorg/apache/http/HttpHost;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 127
    :goto_0
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([B)V

    .line 128
    .local v16, xml:Ljava/lang/String;
    const-string v17, "result"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 129
    .local v7, firstIndex:I
    const-string v17, "result"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 130
    .local v10, lastIndex:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_0

    add-int/lit8 v17, v7, 0x7

    add-int/lit8 v18, v10, -0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    .line 132
    add-int/lit8 v17, v10, -0x3

    add-int/lit8 v18, v7, 0x7

    sub-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 133
    .local v5, buffer:[C
    add-int/lit8 v17, v7, 0x7

    add-int/lit8 v18, v10, -0x3

    add-int/lit8 v18, v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 134
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_0

    .line 136
    const-string v17, "mobilephone"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 137
    const-string v17, "mobilephone"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 138
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_0

    add-int/lit8 v17, v7, 0xc

    add-int/lit8 v18, v10, -0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    .line 140
    add-int/lit8 v17, v10, -0x3

    add-int/lit8 v18, v7, 0xc

    sub-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 141
    add-int/lit8 v17, v7, 0xc

    add-int/lit8 v18, v10, -0x3

    add-int/lit8 v18, v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 142
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v17

    const-string v18, "13900000000"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 144
    new-instance v9, Ljava/lang/String;

    .end local v9           #identity:Ljava/lang/String;
    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    .line 150
    .end local v5           #buffer:[C
    .restart local v9       #identity:Ljava/lang/String;
    :cond_0
    return-object v9

    .line 123
    .end local v7           #firstIndex:I
    .end local v10           #lastIndex:I
    .end local v16           #xml:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 125
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, sessionID:Ljava/lang/String;
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->genSID()Ljava/lang/String;

    move-result-object v0

    .line 76
    return-object v0
.end method

.method public initContext(Landroid/content/Context;Lcom/ccit/mmwlan/UserProfile;)I
    .locals 2
    .parameter "appContext"
    .parameter "userProfile"

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, result:I
    iget-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->clientsdk:Lcom/ccit/mmwlan/MMClientSDK_ForLogin;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;

    invoke-direct {v1}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;-><init>()V

    iput-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->clientsdk:Lcom/ccit/mmwlan/MMClientSDK_ForLogin;

    .line 34
    :cond_0
    iget v1, p2, Lcom/ccit/mmwlan/UserProfile;->cardSlot:I

    invoke-static {p1, v1}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->initMmClientSdk(Landroid/content/Context;I)I

    move-result v0

    .line 35
    iput-object p1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    .line 38
    return v0
.end method

.method public registerIdentity()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 159
    const/4 v7, 0x0

    .line 162
    .local v7, instruction:Ljava/lang/String;
    const/4 v3, 0x0

    .line 163
    .local v3, msg:Ljava/lang/String;
    const-string v4, "md5"

    iget-object v5, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;

    invoke-virtual {v5}, Lcom/ccit/mmwlan/vo/DeviceInfo;->getStrImsi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, imsi:Ljava/lang/String;
    const-string v4, "GDWLANIDP#%s#%s:%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v5, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->getSessionID()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v9, v9, Lcom/ccit/mmwlan/UserProfile;->appID:Ljava/lang/String;

    aput-object v9, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 167
    .local v0, smsManager:Landroid/telephony/SmsManager;
    const-string v1, "10658682803"

    .local v1, SMSNumber:Ljava/lang/String;
    move-object v4, v2

    move-object v5, v2

    .line 168
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 169
    iget-object v2, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send sms:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object v7, v3

    .line 172
    return-object v7
.end method
