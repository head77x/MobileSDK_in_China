.class public Lcom/ccit/mmwlan/util/GetDeviceInfo;
.super Ljava/lang/Object;
.source "GetDeviceInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSubscriberId(Z)Ljava/lang/String;
    .locals 11
    .parameter "secondSIMCard"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 142
    const-string v4, "android.os.ServiceManager"

    const-string v5, "getService"

    .line 143
    new-array v6, v9, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v6, v8

    .line 144
    new-array v7, v9, [Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v3, "iphonesubinfo2"

    .line 145
    :goto_0
    aput-object v3, v7, v8

    .line 141
    invoke-static {v4, v5, v6, v7}, Lcom/ccit/mmwlan/util/ReflectHelper;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, phoneSubObj:Ljava/lang/Object;
    if-nez p0, :cond_0

    if-nez v0, :cond_0

    .line 150
    const-string v3, "android.os.ServiceManager"

    const-string v4, "getService"

    .line 151
    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    .line 152
    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "iphonesubinfo"

    aput-object v7, v6, v8

    .line 149
    invoke-static {v3, v4, v5, v6}, Lcom/ccit/mmwlan/util/ReflectHelper;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    :cond_0
    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    .line 155
    invoke-static {v8}, Lcom/ccit/mmwlan/util/GetDeviceInfo;->getSubscriberId(Z)Ljava/lang/String;

    move-result-object v2

    .line 175
    :goto_1
    return-object v2

    .line 145
    .end local v0           #phoneSubObj:Ljava/lang/Object;
    :cond_1
    const-string v3, "iphonesubinfo1"

    goto :goto_0

    .line 157
    .restart local v0       #phoneSubObj:Ljava/lang/Object;
    :cond_2
    if-nez v0, :cond_3

    .line 158
    const-string v2, ""

    goto :goto_1

    .line 160
    :cond_3
    const-string v3, "com.android.internal.telephony.IPhoneSubInfo$Stub"

    .line 161
    const-string v4, "asInterface"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v8

    .line 162
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v8

    .line 159
    invoke-static {v3, v4, v5, v6}, Lcom/ccit/mmwlan/util/ReflectHelper;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 163
    .local v1, subinfoObj:Ljava/lang/Object;
    if-nez v1, :cond_4

    .line 164
    const-string v2, ""

    goto :goto_1

    .line 166
    :cond_4
    const-string v3, "getSubscriberId"

    .line 165
    invoke-static {v1, v3, v10, v10}, Lcom/ccit/mmwlan/util/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    .local v2, val:Ljava/lang/String;
    if-eqz v2, :cond_5

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 171
    :cond_5
    const-string v3, "getSubscriberIdExt"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    .line 172
    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 170
    invoke-static {v1, v3, v4, v5}, Lcom/ccit/mmwlan/util/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #val:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 174
    .restart local v2       #val:Ljava/lang/String;
    :cond_6
    const-string v3, "MmClientSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSubscriberId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getDeviceInfo(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    .locals 16
    .parameter "context"
    .parameter "cardSlot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v3, Lcom/ccit/mmwlan/vo/DeviceInfo;

    invoke-direct {v3}, Lcom/ccit/mmwlan/vo/DeviceInfo;-><init>()V

    .line 49
    .local v3, deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;
    const/4 v6, 0x0

    .line 50
    .local v6, imsi:Ljava/lang/String;
    const/4 v5, 0x0

    .line 51
    .local v5, imei:Ljava/lang/String;
    const/4 v8, 0x0

    .line 52
    .local v8, mac:Ljava/lang/String;
    const/4 v2, 0x0

    .line 54
    .local v2, certFilePath:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 55
    if-eqz p2, :cond_1

    .line 56
    const/4 v14, 0x1

    move/from16 v0, p2

    if-eq v0, v14, :cond_1

    const/4 v14, 0x2

    move/from16 v0, p2

    if-eq v0, v14, :cond_1

    .line 57
    :cond_0
    new-instance v14, Lcom/ccit/mmwlan/exception/ClientSDKException;

    const-string v15, "\u53c2\u6570\u9519\u8bef!"

    invoke-direct {v14, v15}, Lcom/ccit/mmwlan/exception/ClientSDKException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 61
    :cond_1
    const-string v14, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 60
    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 63
    .local v7, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    if-nez p2, :cond_6

    .line 65
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/ccit/mmwlan/util/GetDeviceInfo;->getSubscriberId(Z)Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 68
    if-eqz v5, :cond_2

    const-string v14, ""

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 69
    :cond_2
    const-string v5, "000000000000000"

    .line 72
    :cond_3
    if-eqz v6, :cond_4

    const-string v14, ""

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 73
    :cond_4
    new-instance v14, Lcom/ccit/mmwlan/exception/ClientSDKException;

    const-string v15, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606fimsi\u6216imei\u5931\u8d25!"

    invoke-direct {v14, v15}, Lcom/ccit/mmwlan/exception/ClientSDKException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 76
    :cond_5
    invoke-virtual {v3, v6}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImsi(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3, v5}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImei(Ljava/lang/String;)V

    .line 80
    :cond_6
    const/4 v14, 0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_b

    .line 82
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/ccit/mmwlan/util/GetDeviceInfo;->getSubscriberId(Z)Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 85
    if-eqz v5, :cond_7

    const-string v14, ""

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 86
    :cond_7
    const-string v5, "000000000000000"

    .line 89
    :cond_8
    if-eqz v6, :cond_9

    const-string v14, ""

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 90
    :cond_9
    new-instance v14, Lcom/ccit/mmwlan/exception/ClientSDKException;

    const-string v15, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606fimsi\u6216imei\u5931\u8d25!"

    invoke-direct {v14, v15}, Lcom/ccit/mmwlan/exception/ClientSDKException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 93
    :cond_a
    invoke-virtual {v3, v6}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImsi(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3, v5}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImei(Ljava/lang/String;)V

    .line 97
    :cond_b
    const/4 v14, 0x2

    move/from16 v0, p2

    if-ne v0, v14, :cond_e

    .line 99
    const-string v14, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 98
    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 100
    .local v12, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    .line 101
    .local v13, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, macInfo:Ljava/lang/String;
    if-eqz v10, :cond_c

    const-string v14, ""

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 104
    :cond_c
    new-instance v14, Lcom/ccit/mmwlan/exception/ClientSDKException;

    const-string v15, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606fmac\u5931\u8d25!"

    invoke-direct {v14, v15}, Lcom/ccit/mmwlan/exception/ClientSDKException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 107
    :cond_d
    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, macArr:[Ljava/lang/String;
    const-string v11, ""

    .line 109
    .local v11, macStr:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v14, v9

    if-lt v4, v14, :cond_10

    .line 112
    move-object v8, v11

    .line 114
    invoke-virtual {v3, v8}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrMac(Ljava/lang/String;)V

    .line 118
    .end local v4           #i:I
    .end local v9           #macArr:[Ljava/lang/String;
    .end local v10           #macInfo:Ljava/lang/String;
    .end local v11           #macStr:Ljava/lang/String;
    .end local v12           #wifi:Landroid/net/wifi/WifiManager;
    .end local v13           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 119
    .local v1, certFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_f

    const-string v14, ""

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 122
    :cond_f
    new-instance v14, Lcom/ccit/mmwlan/exception/ClientSDKException;

    const-string v15, "\u83b7\u53d6\u5e94\u7528\u79c1\u6709\u8def\u5f84\u5931\u8d25!"

    invoke-direct {v14, v15}, Lcom/ccit/mmwlan/exception/ClientSDKException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 110
    .end local v1           #certFile:Ljava/io/File;
    .restart local v4       #i:I
    .restart local v9       #macArr:[Ljava/lang/String;
    .restart local v10       #macInfo:Ljava/lang/String;
    .restart local v11       #macStr:Ljava/lang/String;
    .restart local v12       #wifi:Landroid/net/wifi/WifiManager;
    .restart local v13       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_10
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v15, v9, v4

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 109
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    .end local v4           #i:I
    .end local v9           #macArr:[Ljava/lang/String;
    .end local v10           #macInfo:Ljava/lang/String;
    .end local v11           #macStr:Ljava/lang/String;
    .end local v12           #wifi:Landroid/net/wifi/WifiManager;
    .end local v13           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .restart local v1       #certFile:Ljava/io/File;
    :cond_11
    invoke-virtual {v3, v2}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setFilePath(Ljava/lang/String;)V

    .line 128
    const-string v14, "MmClientSdk"

    invoke-virtual {v3}, Lcom/ccit/mmwlan/vo/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object v3
.end method

.method public getSubscriberId_old(Z)Ljava/lang/String;
    .locals 11
    .parameter "secondSIMCard"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 189
    const-string v4, "android.os.ServiceManager"

    const-string v5, "getService"

    .line 190
    new-array v6, v9, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v6, v8

    .line 191
    new-array v7, v9, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v3, "iphonesubinfo2"

    .line 192
    :goto_0
    aput-object v3, v7, v8

    .line 188
    invoke-static {v4, v5, v6, v7}, Lcom/ccit/mmwlan/util/ReflectHelper;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, phoneSubObj:Ljava/lang/Object;
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 195
    invoke-static {v8}, Lcom/ccit/mmwlan/util/GetDeviceInfo;->getSubscriberId(Z)Ljava/lang/String;

    move-result-object v2

    .line 215
    :goto_1
    return-object v2

    .line 192
    .end local v0           #phoneSubObj:Ljava/lang/Object;
    :cond_0
    const-string v3, "iphonesubinfo"

    goto :goto_0

    .line 198
    .restart local v0       #phoneSubObj:Ljava/lang/Object;
    :cond_1
    if-nez v0, :cond_2

    .line 199
    const-string v2, ""

    goto :goto_1

    .line 203
    :cond_2
    const-string v3, "com.android.internal.telephony.IPhoneSubInfo$Stub"

    .line 204
    const-string v4, "asInterface"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v8

    .line 205
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v8

    .line 202
    invoke-static {v3, v4, v5, v6}, Lcom/ccit/mmwlan/util/ReflectHelper;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 206
    .local v1, subinfoObj:Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 207
    const-string v2, ""

    goto :goto_1

    .line 211
    :cond_3
    const-string v3, "getSubscriberId"

    .line 210
    invoke-static {v1, v3, v10, v10}, Lcom/ccit/mmwlan/util/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    .local v2, val:Ljava/lang/String;
    const-string v3, "MmClientSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSubscriberId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
