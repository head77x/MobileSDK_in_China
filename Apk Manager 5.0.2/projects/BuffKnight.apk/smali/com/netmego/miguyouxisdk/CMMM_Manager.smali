.class public Lcom/netmego/miguyouxisdk/CMMM_Manager;
.super Lcom/netmego/miguyouxisdk/SDKFactoryBase;
.source "CMMM_Manager.java"


# static fields
.field private static _context:Landroid/app/Activity;

.field private static _singletonSmsPayCMCCMM:Lcom/netmego/miguyouxisdk/CMMM_Manager;


# instance fields
.field MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

.field private _appKey:Ljava/lang/String;

.field private _appid:Ljava/lang/String;

.field private mUIHandler:Landroid/os/Handler;

.field myListener:Lcom/netmego/miguyouxisdk/MMListener;

.field public purchase:Lmm/purchasesdk/Purchase;


# direct methods
.method private constructor <init>(Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "listener"
    .parameter "MM_appid"
    .parameter "MM_appkey"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;-><init>()V

    .line 99
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->mUIHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    .line 46
    iput-object p2, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->_appid:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->_appKey:Ljava/lang/String;

    .line 49
    invoke-static {}, Lmm/purchasesdk/Purchase;->getInstance()Lmm/purchasesdk/Purchase;

    move-result-object v2

    iput-object v2, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->purchase:Lmm/purchasesdk/Purchase;

    .line 51
    new-instance v2, Lcom/netmego/miguyouxisdk/MMListener;

    invoke-direct {v2, p1}, Lcom/netmego/miguyouxisdk/MMListener;-><init>(Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)V

    iput-object v2, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->myListener:Lcom/netmego/miguyouxisdk/MMListener;

    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->purchase:Lmm/purchasesdk/Purchase;

    iget-object v3, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->_appid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->_appKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lmm/purchasesdk/Purchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->purchase:Lmm/purchasesdk/Purchase;

    sget-object v3, Lcom/netmego/miguyouxisdk/CMMM_Manager;->_context:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->myListener:Lcom/netmego/miguyouxisdk/MMListener;

    invoke-virtual {v2, v3, v4}, Lmm/purchasesdk/Purchase;->init(Landroid/content/Context;Lmm/purchasesdk/OnPurchaseListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :goto_1
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v1           #e1:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance()Lcom/netmego/miguyouxisdk/CMMM_Manager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->_singletonSmsPayCMCCMM:Lcom/netmego/miguyouxisdk/CMMM_Manager;

    return-object v0
.end method

.method public static initSingleton(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)Lcom/netmego/miguyouxisdk/CMMM_Manager;
    .locals 1
    .parameter "context"
    .parameter "MM_appid"
    .parameter "MM_appkey"
    .parameter "listener"

    .prologue
    .line 68
    sput-object p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->_context:Landroid/app/Activity;

    .line 69
    sget-object v0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->_singletonSmsPayCMCCMM:Lcom/netmego/miguyouxisdk/CMMM_Manager;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/netmego/miguyouxisdk/CMMM_Manager;

    invoke-direct {v0, p3, p1, p2}, Lcom/netmego/miguyouxisdk/CMMM_Manager;-><init>(Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->_singletonSmsPayCMCCMM:Lcom/netmego/miguyouxisdk/CMMM_Manager;

    .line 72
    :cond_0
    sget-object v0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->_singletonSmsPayCMCCMM:Lcom/netmego/miguyouxisdk/CMMM_Manager;

    return-object v0
.end method


# virtual methods
.method public doScreenShotShare(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 146
    return-void
.end method

.method public exitGame(Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netmego/miguyouxisdk/CMMM_Manager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netmego/miguyouxisdk/CMMM_Manager$1;-><init>(Lcom/netmego/miguyouxisdk/CMMM_Manager;Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public isMusicEnabled()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Z)V
    .locals 9
    .parameter "context"
    .parameter "smsPayItem"
    .parameter "ext_code"
    .parameter "props"
    .parameter "Money"
    .parameter "listener"
    .parameter "isRepeated"

    .prologue
    .line 81
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Brandon : Pay MM start = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->myListener:Lcom/netmego/miguyouxisdk/MMListener;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    const/4 v8, 0x0

    .line 85
    .local v8, metaData:Landroid/os/Bundle;
    :try_start_0
    sget-object v0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->_context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/netmego/miguyouxisdk/CMMM_Manager;->_context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    invoke-virtual {v8, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, Paycode:Ljava/lang/String;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Brandon : Mobile MM Paycode : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->purchase:Lmm/purchasesdk/Purchase;

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->myListener:Lcom/netmego/miguyouxisdk/MMListener;

    move-object v1, p1

    move-object v4, p4

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;

    .line 97
    .end local v2           #Paycode:Ljava/lang/String;
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v7

    .line 87
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 88
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/CMMM_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    const-string v1, "Cannot get Paycode from Androidmanifest.xml"

    invoke-interface {v0, p2, v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public viewMoreGames(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 136
    return-void
.end method
