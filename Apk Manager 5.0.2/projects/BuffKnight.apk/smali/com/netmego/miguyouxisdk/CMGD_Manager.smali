.class public Lcom/netmego/miguyouxisdk/CMGD_Manager;
.super Lcom/netmego/miguyouxisdk/SDKFactoryBase;
.source "CMGD_Manager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netmego/miguyouxisdk/CMGD_Manager$ExitListener;
    }
.end annotation


# static fields
.field private static _singletonSmsPayCMCC:Lcom/netmego/miguyouxisdk/CMGD_Manager;


# instance fields
.field MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

.field final payCallback:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

.field private postHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)V
    .locals 1
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager;->postHandler:Landroid/os/Handler;

    .line 33
    iput-object p2, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    .line 35
    invoke-static {p1}, Lcn/cmgame/billing/api/GameInterface;->initializeApp(Landroid/app/Activity;)V

    .line 37
    new-instance v0, Lcom/netmego/miguyouxisdk/CMGD_Manager$1;

    invoke-direct {v0, p0}, Lcom/netmego/miguyouxisdk/CMGD_Manager$1;-><init>(Lcom/netmego/miguyouxisdk/CMGD_Manager;)V

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager;->payCallback:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    .line 80
    return-void
.end method

.method public static getInstance()Lcom/netmego/miguyouxisdk/CMGD_Manager;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/netmego/miguyouxisdk/CMGD_Manager;->_singletonSmsPayCMCC:Lcom/netmego/miguyouxisdk/CMGD_Manager;

    return-object v0
.end method

.method public static initSingleton(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)Lcom/netmego/miguyouxisdk/CMGD_Manager;
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 84
    sget-object v0, Lcom/netmego/miguyouxisdk/CMGD_Manager;->_singletonSmsPayCMCC:Lcom/netmego/miguyouxisdk/CMGD_Manager;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/netmego/miguyouxisdk/CMGD_Manager;

    invoke-direct {v0, p0, p1}, Lcom/netmego/miguyouxisdk/CMGD_Manager;-><init>(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)V

    sput-object v0, Lcom/netmego/miguyouxisdk/CMGD_Manager;->_singletonSmsPayCMCC:Lcom/netmego/miguyouxisdk/CMGD_Manager;

    .line 88
    :cond_0
    sget-object v0, Lcom/netmego/miguyouxisdk/CMGD_Manager;->_singletonSmsPayCMCC:Lcom/netmego/miguyouxisdk/CMGD_Manager;

    return-object v0
.end method


# virtual methods
.method public doScreenShotShare(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager;->postHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netmego/miguyouxisdk/CMGD_Manager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/netmego/miguyouxisdk/CMGD_Manager$2;-><init>(Lcom/netmego/miguyouxisdk/CMGD_Manager;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method

.method public exitGame(Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 131
    new-instance v0, Lcom/netmego/miguyouxisdk/CMGD_Manager$ExitListener;

    invoke-direct {v0, p0, p2}, Lcom/netmego/miguyouxisdk/CMGD_Manager$ExitListener;-><init>(Lcom/netmego/miguyouxisdk/CMGD_Manager;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V

    invoke-static {p1, v0}, Lcn/cmgame/billing/api/GameInterface;->exit(Landroid/content/Context;Lcn/cmgame/billing/api/GameInterface$GameExitCallback;)V

    .line 132
    return-void
.end method

.method public isMusicEnabled()Z
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcn/cmgame/billing/api/GameInterface;->isMusicEnabled()Z

    move-result v0

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
    .line 123
    iput-object p6, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    .line 125
    const/4 v1, 0x1

    iget-object v5, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager;->payCallback:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    move-object v0, p1

    move v2, p7

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/api/GameInterface;->doBilling(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/api/GameInterface$IPayCallback;)V

    .line 126
    return-void
.end method

.method public viewMoreGames(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 138
    invoke-static {p1}, Lcn/cmgame/billing/api/GameInterface;->viewMoreGames(Landroid/content/Context;)V

    .line 139
    return-void
.end method
