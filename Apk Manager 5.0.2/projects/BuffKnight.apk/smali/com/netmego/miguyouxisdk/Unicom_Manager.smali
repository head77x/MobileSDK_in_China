.class public Lcom/netmego/miguyouxisdk/Unicom_Manager;
.super Lcom/netmego/miguyouxisdk/SDKFactoryBase;
.source "Unicom_Manager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;
    }
.end annotation


# static fields
.field private static _context:Landroid/app/Activity;

.field private static _singletonSmsPayUnicom:Lcom/netmego/miguyouxisdk/Unicom_Manager;


# instance fields
.field MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

.field private mUIHandler:Landroid/os/Handler;

.field myListener:Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;

.field process_payitem:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;-><init>()V

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager;->mUIHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;

    invoke-direct {v0, p0}, Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;-><init>(Lcom/netmego/miguyouxisdk/Unicom_Manager;)V

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager;->myListener:Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;

    .line 32
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    .line 34
    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    sget-object v1, Lcom/netmego/miguyouxisdk/Unicom_Manager;->_context:Landroid/app/Activity;

    new-instance v2, Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;

    invoke-direct {v2, p0}, Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;-><init>(Lcom/netmego/miguyouxisdk/Unicom_Manager;)V

    invoke-virtual {v0, v1, v2}, Lcom/unicom/dcLoader/Utils;->initSDK(Landroid/content/Context;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/netmego/miguyouxisdk/Unicom_Manager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/netmego/miguyouxisdk/Unicom_Manager;->_singletonSmsPayUnicom:Lcom/netmego/miguyouxisdk/Unicom_Manager;

    return-object v0
.end method

.method public static initSingleton(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)Lcom/netmego/miguyouxisdk/Unicom_Manager;
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 45
    sput-object p0, Lcom/netmego/miguyouxisdk/Unicom_Manager;->_context:Landroid/app/Activity;

    .line 46
    sget-object v0, Lcom/netmego/miguyouxisdk/Unicom_Manager;->_singletonSmsPayUnicom:Lcom/netmego/miguyouxisdk/Unicom_Manager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/netmego/miguyouxisdk/Unicom_Manager;

    invoke-direct {v0, p1}, Lcom/netmego/miguyouxisdk/Unicom_Manager;-><init>(Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)V

    sput-object v0, Lcom/netmego/miguyouxisdk/Unicom_Manager;->_singletonSmsPayUnicom:Lcom/netmego/miguyouxisdk/Unicom_Manager;

    .line 50
    :cond_0
    sget-object v0, Lcom/netmego/miguyouxisdk/Unicom_Manager;->_singletonSmsPayUnicom:Lcom/netmego/miguyouxisdk/Unicom_Manager;

    return-object v0
.end method


# virtual methods
.method public doScreenShotShare(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 140
    return-void
.end method

.method public exitGame(Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netmego/miguyouxisdk/Unicom_Manager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netmego/miguyouxisdk/Unicom_Manager$1;-><init>(Lcom/netmego/miguyouxisdk/Unicom_Manager;Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public isMusicEnabled()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Z)V
    .locals 2
    .parameter "context"
    .parameter "smsPayItem"
    .parameter "ext_code"
    .parameter "props"
    .parameter "Money"
    .parameter "listener"
    .parameter "isRepeated"

    .prologue
    .line 84
    iput-object p2, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager;->process_payitem:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    iget-object v1, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager;->myListener:Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/unicom/dcLoader/Utils;->pay(Landroid/content/Context;Ljava/lang/String;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V

    .line 89
    return-void
.end method

.method public viewMoreGames(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 128
    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unicom/dcLoader/Utils;->MoreGame(Landroid/content/Context;)V

    .line 130
    return-void
.end method
