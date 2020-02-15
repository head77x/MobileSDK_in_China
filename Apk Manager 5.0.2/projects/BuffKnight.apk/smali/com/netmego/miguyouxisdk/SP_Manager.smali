.class public Lcom/netmego/miguyouxisdk/SP_Manager;
.super Lcom/netmego/miguyouxisdk/SDKFactoryBase;
.source "SP_Manager.java"


# static fields
.field private static _context:Landroid/app/Activity;

.field private static _singletonSP:Lcom/netmego/miguyouxisdk/SP_Manager;


# instance fields
.field public Initialized:Z

.field private MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

.field PayCallback:Landroid/os/Handler;

.field private TryToPay:Z

.field private TryToPayItem:Ljava/lang/String;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/SP_Manager;->mUIHandler:Landroid/os/Handler;

    .line 34
    iput-boolean v1, p0, Lcom/netmego/miguyouxisdk/SP_Manager;->Initialized:Z

    .line 82
    iput-boolean v1, p0, Lcom/netmego/miguyouxisdk/SP_Manager;->TryToPay:Z

    .line 40
    iput-object p2, p0, Lcom/netmego/miguyouxisdk/SP_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    .line 42
    invoke-static {p1}, Lcom/qy/pay/listener/PayAgent;->init(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/netmego/miguyouxisdk/SP_Manager$1;

    invoke-direct {v0, p0}, Lcom/netmego/miguyouxisdk/SP_Manager$1;-><init>(Lcom/netmego/miguyouxisdk/SP_Manager;)V

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/SP_Manager;->PayCallback:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/netmego/miguyouxisdk/SP_Manager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/netmego/miguyouxisdk/SP_Manager;->TryToPay:Z

    return-void
.end method

.method static synthetic access$1(Lcom/netmego/miguyouxisdk/SP_Manager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/SP_Manager;->TryToPayItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/netmego/miguyouxisdk/SP_Manager;)Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/SP_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    return-object v0
.end method

.method public static getInstance()Lcom/netmego/miguyouxisdk/SP_Manager;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/netmego/miguyouxisdk/SP_Manager;->_singletonSP:Lcom/netmego/miguyouxisdk/SP_Manager;

    return-object v0
.end method

.method public static initSingleton(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)Lcom/netmego/miguyouxisdk/SP_Manager;
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 75
    sget-object v0, Lcom/netmego/miguyouxisdk/SP_Manager;->_singletonSP:Lcom/netmego/miguyouxisdk/SP_Manager;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/netmego/miguyouxisdk/SP_Manager;

    invoke-direct {v0, p0, p1}, Lcom/netmego/miguyouxisdk/SP_Manager;-><init>(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)V

    sput-object v0, Lcom/netmego/miguyouxisdk/SP_Manager;->_singletonSP:Lcom/netmego/miguyouxisdk/SP_Manager;

    .line 79
    :cond_0
    sget-object v0, Lcom/netmego/miguyouxisdk/SP_Manager;->_singletonSP:Lcom/netmego/miguyouxisdk/SP_Manager;

    return-object v0
.end method


# virtual methods
.method public doScreenShotShare(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 135
    return-void
.end method

.method public exitGame(Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V
    .locals 0
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 120
    return-void
.end method

.method public isMusicEnabled()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Z)V
    .locals 6
    .parameter "context"
    .parameter "smsPayItem"
    .parameter "ext_code"
    .parameter "props"
    .parameter "Money"
    .parameter "listener"
    .parameter "isRepeated"

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 90
    .local v2, metaData:Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SP"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, Paycode:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Brandon : sp pay request :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    iget-boolean v3, p0, Lcom/netmego/miguyouxisdk/SP_Manager;->TryToPay:Z

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/netmego/miguyouxisdk/SP_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    const-string v4, "Already payment process..."

    invoke-interface {v3, p2, v4}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseCanceld(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .end local v0           #Paycode:Ljava/lang/String;
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 93
    iget-object v3, p0, Lcom/netmego/miguyouxisdk/SP_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    const-string v4, "Cannot get SP Paycode from Androidmanifest.xml"

    invoke-interface {v3, p2, v4}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #Paycode:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/netmego/miguyouxisdk/SP_Manager;->TryToPay:Z

    .line 109
    iput-object p2, p0, Lcom/netmego/miguyouxisdk/SP_Manager;->TryToPayItem:Ljava/lang/String;

    .line 111
    iput-object p6, p0, Lcom/netmego/miguyouxisdk/SP_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    .line 113
    sget-object v3, Lcom/netmego/miguyouxisdk/SP_Manager;->_context:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netmego/miguyouxisdk/SP_Manager;->PayCallback:Landroid/os/Handler;

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v0, v5}, Lcom/qy/pay/listener/PayAgent;->pay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public viewMoreGames(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 125
    return-void
.end method
