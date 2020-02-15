.class public Lcom/netmego/miguyouxisdk/MiguSDKFactory;
.super Ljava/lang/Object;
.source "MiguSDKFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;,
        Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;,
        Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector:[I = null

.field private static _bInited:Z = false

.field private static _bIniting:Z = false

.field private static _context:Landroid/app/Activity; = null

.field private static _singleton:Lcom/netmego/miguyouxisdk/MiguSDKFactory; = null

.field private static final opANYSDK:I = 0x10

.field private static final opCMCC_GC:I = 0x1

.field private static final opCMCC_MM:I = 0x8

.field private static final opMISMATCHES:I = 0x0

.field private static final opSP:I = 0x20

.field private static final opTELECOM:I = 0x4

.field private static final opUNICOM:I = 0x2


# instance fields
.field private _smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;


# direct methods
.method static synthetic $SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->$SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->values()[Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMGD:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMMM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_DIANXIN:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_OTHER:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_SP:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_UNICOM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_UNKNOWN:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->$SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_bIniting:Z

    .line 57
    sput-boolean v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_bInited:Z

    .line 71
    return-void
.end method

.method private constructor <init>(Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "MainListener"
    .parameter "AnySDK_AppKey"
    .parameter "AnySDK_AppSecret"
    .parameter "AnySDK_privateKey"
    .parameter "AnySDK_oauthLoginServer"
    .parameter "MM_appid"
    .parameter "MM_appkey"
    .parameter "Company"
    .parameter "Telephone"
    .parameter "appName"

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    sget-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_context:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netmego/miguyouxisdk/CMGD_Manager;->initSingleton(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)Lcom/netmego/miguyouxisdk/CMGD_Manager;

    .line 189
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->$SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector()[I

    move-result-object v0

    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getMobileOperator()Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 207
    sget-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_context:Landroid/app/Activity;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->initSingleton(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    .line 211
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_bInited:Z

    .line 212
    return-void

    .line 192
    :pswitch_0
    sget-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_context:Landroid/app/Activity;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->initSingleton(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    goto :goto_0

    .line 195
    :pswitch_1
    sget-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_context:Landroid/app/Activity;

    invoke-static {v0, p6, p7, p1}, Lcom/netmego/miguyouxisdk/CMMM_Manager;->initSingleton(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)Lcom/netmego/miguyouxisdk/CMMM_Manager;

    goto :goto_0

    .line 198
    :pswitch_2
    sget-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_context:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netmego/miguyouxisdk/Unicom_Manager;->initSingleton(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)Lcom/netmego/miguyouxisdk/Unicom_Manager;

    goto :goto_0

    .line 201
    :pswitch_3
    sget-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_context:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netmego/miguyouxisdk/Telecom_Manager;->initSingleton(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)Lcom/netmego/miguyouxisdk/Telecom_Manager;

    goto :goto_0

    .line 204
    :pswitch_4
    sget-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_context:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netmego/miguyouxisdk/SP_Manager;->initSingleton(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)Lcom/netmego/miguyouxisdk/SP_Manager;

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;
    .locals 2

    .prologue
    .line 221
    const-class v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_singleton:Lcom/netmego/miguyouxisdk/MiguSDKFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getMobileOperator()Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;
    .locals 8

    .prologue
    .line 75
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_context:Landroid/app/Activity;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 76
    .local v4, telManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, operator:Ljava/lang/String;
    const/4 v2, 0x0

    .line 81
    .local v2, metaData:Landroid/os/Bundle;
    :try_start_0
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_context:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sget-object v6, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_context:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    const-string v5, "BTypeValue"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 91
    .local v0, BillType:I
    const-string v5, "BTypeValue: "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 94
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMGD:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    .line 154
    :goto_1
    return-object v5

    .line 83
    .end local v0           #BillType:I
    :catch_0
    move-exception v1

    .line 85
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #BillType:I
    :cond_0
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    .line 96
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_UNICOM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 97
    :cond_1
    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    .line 98
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_DIANXIN:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 99
    :cond_2
    const/16 v5, 0x8

    if-ne v0, v5, :cond_3

    .line 100
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMMM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 101
    :cond_3
    const/16 v5, 0x10

    if-ne v0, v5, :cond_4

    .line 102
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_OTHER:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 103
    :cond_4
    const/16 v5, 0x20

    if-ne v0, v5, :cond_5

    .line 104
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_SP:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 109
    :cond_5
    if-eqz v3, :cond_d

    .line 111
    const-string v5, "46000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "46002"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 113
    :cond_6
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_7

    .line 115
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Brandon : CMCC_MM!!!! :"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMMM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 118
    :cond_7
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_8

    .line 120
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Brandon : CMCC_GC!!!! :"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMGD:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 124
    :cond_8
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMGD:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 127
    :cond_9
    const-string v5, "46001"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_a

    .line 129
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Brandon : UNICOM!!!! :"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_UNICOM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 134
    :cond_a
    const-string v5, "46003"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_b

    .line 136
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Brandon : CTE!!!! :"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_DIANXIN:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto/16 :goto_1

    .line 141
    :cond_b
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_c

    .line 143
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Brandon : SP!!!! :"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_SP:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto/16 :goto_1

    .line 149
    :cond_c
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Brandon : Cannot check !! :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    :goto_2
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_OTHER:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto/16 :goto_1

    .line 152
    :cond_d
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Brandon : operator null !!"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static init(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "MainListener"
    .parameter "AnySDK_AppKey"
    .parameter "AnySDK_AppSecret"
    .parameter "AnySDK_privateKey"
    .parameter "AnySDK_oauthLoginServer"
    .parameter "MM_appID"
    .parameter "MM_appkey"
    .parameter "Company"
    .parameter "Telephone"
    .parameter "appName"

    .prologue
    .line 165
    sget-boolean v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_bIniting:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_bInited:Z

    if-nez v0, :cond_1

    .line 167
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_bIniting:Z

    .line 168
    sput-object p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_context:Landroid/app/Activity;

    .line 169
    sget-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_singleton:Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;-><init>(Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_singleton:Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    .line 176
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_bIniting:Z

    .line 178
    :cond_1
    return-void
.end method


# virtual methods
.method public Destroy(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 487
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->Initialized:Z

    if-eqz v0, :cond_0

    .line 491
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKUser;->getInstance()Lcom/anysdk/framework/java/AnySDKUser;

    move-result-object v0

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Lcom/anysdk/framework/java/AnySDKUser;->callFunction(Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lcom/anysdk/framework/java/AnySDK;->getInstance()Lcom/anysdk/framework/java/AnySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anysdk/framework/java/AnySDK;->release()V

    .line 494
    :cond_0
    return-void
.end method

.method public Pause(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 399
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onPause"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->$SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector()[I

    move-result-object v0

    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getMobileOperator()Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 404
    :pswitch_0
    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->Initialized:Z

    if-eqz v0, :cond_0

    .line 406
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAnalytics;->getInstance()Lcom/anysdk/framework/java/AnySDKAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anysdk/framework/java/AnySDKAnalytics;->stopSession()V

    goto :goto_0

    .line 410
    :pswitch_1
    invoke-static {}, Lcom/netmego/miguyouxisdk/CMMM_Manager;->getInstance()Lcom/netmego/miguyouxisdk/CMMM_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_0

    .line 413
    :pswitch_2
    invoke-static {}, Lcom/netmego/miguyouxisdk/CMGD_Manager;->getInstance()Lcom/netmego/miguyouxisdk/CMGD_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_0

    .line 416
    :pswitch_3
    invoke-static {}, Lcom/netmego/miguyouxisdk/Unicom_Manager;->getInstance()Lcom/netmego/miguyouxisdk/Unicom_Manager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unicom/dcLoader/Utils;->onPause(Landroid/content/Context;)V

    goto :goto_0

    .line 420
    :pswitch_4
    invoke-static {p1}, Lcn/egame/terminal/sdk/log/EgameAgent;->onPause(Landroid/content/Context;)V

    goto :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public Resume(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "appforeground"

    .prologue
    .line 429
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->$SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector()[I

    move-result-object v0

    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getMobileOperator()Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 434
    :pswitch_0
    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->Initialized:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAnalytics;->getInstance()Lcom/anysdk/framework/java/AnySDKAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anysdk/framework/java/AnySDKAnalytics;->startSession()V

    .line 437
    if-nez p2, :cond_0

    .line 438
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKUser;->getInstance()Lcom/anysdk/framework/java/AnySDKUser;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/anysdk/framework/java/AnySDKUser;->callFunction(Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :pswitch_1
    invoke-static {}, Lcom/netmego/miguyouxisdk/CMMM_Manager;->getInstance()Lcom/netmego/miguyouxisdk/CMMM_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_0

    .line 445
    :pswitch_2
    invoke-static {}, Lcom/netmego/miguyouxisdk/CMGD_Manager;->getInstance()Lcom/netmego/miguyouxisdk/CMGD_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_0

    .line 448
    :pswitch_3
    invoke-static {}, Lcom/netmego/miguyouxisdk/Unicom_Manager;->getInstance()Lcom/netmego/miguyouxisdk/Unicom_Manager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unicom/dcLoader/Utils;->onResume(Landroid/content/Context;)V

    goto :goto_0

    .line 452
    :pswitch_4
    invoke-static {p1}, Lcn/egame/terminal/sdk/log/EgameAgent;->onResume(Landroid/content/Context;)V

    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public Stop(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 461
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onStop"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->$SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector()[I

    move-result-object v0

    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getMobileOperator()Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 483
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 466
    :pswitch_1
    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->Initialized:Z

    if-eqz v0, :cond_0

    .line 468
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAnalytics;->getInstance()Lcom/anysdk/framework/java/AnySDKAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anysdk/framework/java/AnySDKAnalytics;->stopSession()V

    goto :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public doScreenShotShare(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 373
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->$SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector()[I

    move-result-object v0

    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getMobileOperator()Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 395
    :goto_0
    return-void

    .line 376
    :pswitch_0
    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    .line 394
    :goto_1
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    invoke-virtual {v0, p1, p2}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;->doScreenShotShare(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 379
    :pswitch_1
    invoke-static {}, Lcom/netmego/miguyouxisdk/CMMM_Manager;->getInstance()Lcom/netmego/miguyouxisdk/CMMM_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 382
    :pswitch_2
    invoke-static {}, Lcom/netmego/miguyouxisdk/CMGD_Manager;->getInstance()Lcom/netmego/miguyouxisdk/CMGD_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 385
    :pswitch_3
    invoke-static {}, Lcom/netmego/miguyouxisdk/Unicom_Manager;->getInstance()Lcom/netmego/miguyouxisdk/Unicom_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 388
    :pswitch_4
    invoke-static {}, Lcom/netmego/miguyouxisdk/Telecom_Manager;->getInstance()Lcom/netmego/miguyouxisdk/Telecom_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 373
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public exitGame(Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 292
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->$SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector()[I

    move-result-object v0

    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getMobileOperator()Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 310
    invoke-interface {p2}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;->onExitGameConfirmExit()V

    .line 317
    :goto_0
    return-void

    .line 295
    :pswitch_0
    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    .line 314
    :goto_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Brandon : ask exit!!!! :"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    invoke-virtual {v0, p1, p2}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;->exitGame(Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V

    goto :goto_0

    .line 298
    :pswitch_1
    invoke-static {}, Lcom/netmego/miguyouxisdk/CMMM_Manager;->getInstance()Lcom/netmego/miguyouxisdk/CMMM_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 301
    :pswitch_2
    invoke-static {}, Lcom/netmego/miguyouxisdk/CMGD_Manager;->getInstance()Lcom/netmego/miguyouxisdk/CMGD_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 304
    :pswitch_3
    invoke-static {}, Lcom/netmego/miguyouxisdk/Unicom_Manager;->getInstance()Lcom/netmego/miguyouxisdk/Unicom_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 307
    :pswitch_4
    invoke-static {}, Lcom/netmego/miguyouxisdk/Telecom_Manager;->getInstance()Lcom/netmego/miguyouxisdk/Telecom_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 292
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public getContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_context:Landroid/app/Activity;

    return-object v0
.end method

.method public getMobileOperatorType()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getMobileOperator()Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    move-result-object v0

    .line 232
    .local v0, whattype:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;
    sget-object v2, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMGD:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    if-ne v0, v2, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v1

    .line 235
    :cond_1
    sget-object v2, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_UNICOM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    if-ne v0, v2, :cond_2

    .line 236
    const/4 v1, 0x1

    goto :goto_0

    .line 238
    :cond_2
    sget-object v2, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_DIANXIN:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    if-ne v0, v2, :cond_3

    .line 239
    const/4 v1, 0x2

    goto :goto_0

    .line 241
    :cond_3
    sget-object v2, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMMM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    if-ne v0, v2, :cond_0

    .line 242
    const/4 v1, 0x3

    goto :goto_0
.end method

.method protected initFinished()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_bInited:Z

    .line 226
    return-void
.end method

.method public isMusicEnabled()Z
    .locals 2

    .prologue
    .line 347
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->$SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector()[I

    move-result-object v0

    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getMobileOperator()Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 365
    const/4 v0, 0x1

    .line 368
    :goto_0
    return v0

    .line 350
    :pswitch_0
    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    .line 368
    :goto_1
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    invoke-virtual {v0}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;->isMusicEnabled()Z

    move-result v0

    goto :goto_0

    .line 353
    :pswitch_1
    invoke-static {}, Lcom/netmego/miguyouxisdk/CMMM_Manager;->getInstance()Lcom/netmego/miguyouxisdk/CMMM_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 356
    :pswitch_2
    invoke-static {}, Lcom/netmego/miguyouxisdk/CMGD_Manager;->getInstance()Lcom/netmego/miguyouxisdk/CMGD_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 359
    :pswitch_3
    invoke-static {}, Lcom/netmego/miguyouxisdk/Unicom_Manager;->getInstance()Lcom/netmego/miguyouxisdk/Unicom_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 362
    :pswitch_4
    invoke-static {}, Lcom/netmego/miguyouxisdk/Telecom_Manager;->getInstance()Lcom/netmego/miguyouxisdk/Telecom_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 347
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Z)V
    .locals 8
    .parameter "context"
    .parameter "smsPayItem"
    .parameter "paycode_3rd"
    .parameter "props"
    .parameter "Money"
    .parameter "listener"
    .parameter "isRepeated"

    .prologue
    .line 250
    sget-boolean v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_bInited:Z

    if-nez v0, :cond_0

    .line 252
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Brandon : not yet init !!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->$SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector()[I

    move-result-object v0

    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getMobileOperator()Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 283
    const-string v0, "no singleton!!!!"

    invoke-interface {p6, p2, v0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :pswitch_0
    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    .line 260
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Z)V

    goto :goto_0

    .line 263
    :pswitch_1
    invoke-static {}, Lcom/netmego/miguyouxisdk/CMMM_Manager;->getInstance()Lcom/netmego/miguyouxisdk/CMMM_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    .line 264
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Z)V

    goto :goto_0

    .line 267
    :pswitch_2
    invoke-static {}, Lcom/netmego/miguyouxisdk/CMGD_Manager;->getInstance()Lcom/netmego/miguyouxisdk/CMGD_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    .line 268
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Z)V

    goto :goto_0

    .line 271
    :pswitch_3
    invoke-static {}, Lcom/netmego/miguyouxisdk/Unicom_Manager;->getInstance()Lcom/netmego/miguyouxisdk/Unicom_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    .line 272
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Z)V

    goto :goto_0

    .line 275
    :pswitch_4
    invoke-static {}, Lcom/netmego/miguyouxisdk/Telecom_Manager;->getInstance()Lcom/netmego/miguyouxisdk/Telecom_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    .line 276
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Z)V

    goto :goto_0

    .line 279
    :pswitch_5
    invoke-static {}, Lcom/netmego/miguyouxisdk/SP_Manager;->getInstance()Lcom/netmego/miguyouxisdk/SP_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    .line 280
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Z)V

    goto/16 :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public viewMoreGames(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 321
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->$SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector()[I

    move-result-object v0

    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getMobileOperator()Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 343
    :goto_0
    return-void

    .line 324
    :pswitch_0
    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    .line 342
    :goto_1
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    invoke-virtual {v0, p1}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;->viewMoreGames(Landroid/content/Context;)V

    goto :goto_0

    .line 327
    :pswitch_1
    invoke-static {}, Lcom/netmego/miguyouxisdk/CMMM_Manager;->getInstance()Lcom/netmego/miguyouxisdk/CMMM_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 330
    :pswitch_2
    invoke-static {}, Lcom/netmego/miguyouxisdk/CMGD_Manager;->getInstance()Lcom/netmego/miguyouxisdk/CMGD_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 333
    :pswitch_3
    invoke-static {}, Lcom/netmego/miguyouxisdk/Unicom_Manager;->getInstance()Lcom/netmego/miguyouxisdk/Unicom_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 336
    :pswitch_4
    invoke-static {}, Lcom/netmego/miguyouxisdk/Telecom_Manager;->getInstance()Lcom/netmego/miguyouxisdk/Telecom_Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->_smsPayer:Lcom/netmego/miguyouxisdk/SDKFactoryBase;

    goto :goto_1

    .line 321
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
