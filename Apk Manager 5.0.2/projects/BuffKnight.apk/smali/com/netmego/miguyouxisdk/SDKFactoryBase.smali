.class public abstract Lcom/netmego/miguyouxisdk/SDKFactoryBase;
.super Ljava/lang/Object;
.source "SDKFactoryBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doScreenShotShare(Landroid/content/Context;Landroid/net/Uri;)V
.end method

.method public abstract exitGame(Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V
.end method

.method public abstract isMusicEnabled()Z
.end method

.method public abstract pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Z)V
.end method

.method public abstract viewMoreGames(Landroid/content/Context;)V
.end method
