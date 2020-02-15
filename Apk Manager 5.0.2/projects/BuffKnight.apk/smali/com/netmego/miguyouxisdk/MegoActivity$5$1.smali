.class Lcom/netmego/miguyouxisdk/MegoActivity$5$1;
.super Ljava/lang/Object;
.source "MegoActivity.java"

# interfaces
.implements Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/MegoActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netmego/miguyouxisdk/MegoActivity$5;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/MegoActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/MegoActivity$5$1;->this$1:Lcom/netmego/miguyouxisdk/MegoActivity$5;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitGameCancelExit()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public onExitGameConfirmExit()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 254
    return-void
.end method

.method public onExitGameInGame()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method
