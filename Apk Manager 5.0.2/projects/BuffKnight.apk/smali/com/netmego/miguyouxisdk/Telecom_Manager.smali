.class public Lcom/netmego/miguyouxisdk/Telecom_Manager;
.super Lcom/netmego/miguyouxisdk/SDKFactoryBase;
.source "Telecom_Manager.java"


# static fields
.field private static _singletonSmsPayTelecom:Lcom/netmego/miguyouxisdk/Telecom_Manager;


# instance fields
.field MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

.field private _channelID:Ljava/lang/String;

.field final payCallback:Lcn/egame/terminal/paysdk/EgamePayListener;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    .line 36
    invoke-static {p1}, Lcn/egame/terminal/paysdk/EgamePay;->init(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/netmego/miguyouxisdk/Telecom_Manager$1;

    invoke-direct {v0, p0}, Lcom/netmego/miguyouxisdk/Telecom_Manager$1;-><init>(Lcom/netmego/miguyouxisdk/Telecom_Manager;)V

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager;->payCallback:Lcn/egame/terminal/paysdk/EgamePayListener;

    .line 72
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Brandon : dian xin Init :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager;->_channelID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static getInstance()Lcom/netmego/miguyouxisdk/Telecom_Manager;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/netmego/miguyouxisdk/Telecom_Manager;->_singletonSmsPayTelecom:Lcom/netmego/miguyouxisdk/Telecom_Manager;

    return-object v0
.end method

.method public static initSingleton(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)Lcom/netmego/miguyouxisdk/Telecom_Manager;
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 83
    sget-object v0, Lcom/netmego/miguyouxisdk/Telecom_Manager;->_singletonSmsPayTelecom:Lcom/netmego/miguyouxisdk/Telecom_Manager;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/netmego/miguyouxisdk/Telecom_Manager;

    invoke-direct {v0, p0, p1}, Lcom/netmego/miguyouxisdk/Telecom_Manager;-><init>(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)V

    sput-object v0, Lcom/netmego/miguyouxisdk/Telecom_Manager;->_singletonSmsPayTelecom:Lcom/netmego/miguyouxisdk/Telecom_Manager;

    .line 87
    :cond_0
    sget-object v0, Lcom/netmego/miguyouxisdk/Telecom_Manager;->_singletonSmsPayTelecom:Lcom/netmego/miguyouxisdk/Telecom_Manager;

    return-object v0
.end method


# virtual methods
.method public doScreenShotShare(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 148
    return-void
.end method

.method public exitGame(Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 118
    new-instance v0, Lcom/netmego/miguyouxisdk/Telecom_Manager$2;

    invoke-direct {v0, p0, p2}, Lcom/netmego/miguyouxisdk/Telecom_Manager$2;-><init>(Lcom/netmego/miguyouxisdk/Telecom_Manager;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V

    invoke-static {p1, v0}, Lcn/play/dserv/CheckTool;->exit(Landroid/content/Context;Lcn/play/dserv/ExitCallBack;)V

    .line 132
    return-void
.end method

.method public isMusicEnabled()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Z)V
    .locals 7
    .parameter "context"
    .parameter "smsPayItem"
    .parameter "ext_code"
    .parameter "props"
    .parameter "Money"
    .parameter "listener"
    .parameter "isRepeated"

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, metaData:Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DX"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, Paycode:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Brandon : dian xin pay request :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v3, payParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "toolsAlias"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v4, "toolsDesc"

    invoke-virtual {v3, v4, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v4, "cpParams"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v4, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager;->payCallback:Lcn/egame/terminal/paysdk/EgamePayListener;

    invoke-static {p1, v3, v4}, Lcn/egame/terminal/paysdk/EgamePay;->pay(Landroid/content/Context;Ljava/util/Map;Lcn/egame/terminal/paysdk/EgamePayListener;)V

    .line 111
    .end local v0           #Paycode:Ljava/lang/String;
    .end local v3           #payParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 98
    iget-object v4, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    const-string v5, "Cannot get DX Paycode from Androidmanifest.xml"

    invoke-interface {v4, p2, v5}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public viewMoreGames(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 137
    invoke-static {p1}, Lcn/play/dserv/CheckTool;->more(Landroid/content/Context;)V

    .line 138
    return-void
.end method
