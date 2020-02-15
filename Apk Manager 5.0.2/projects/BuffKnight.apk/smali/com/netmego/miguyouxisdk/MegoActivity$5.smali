.class Lcom/netmego/miguyouxisdk/MegoActivity$5;
.super Ljava/lang/Object;
.source "MegoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/MegoActivity;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netmego/miguyouxisdk/MegoActivity;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/MegoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/MegoActivity$5;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 248
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/netmego/miguyouxisdk/MegoActivity$5;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    new-instance v2, Lcom/netmego/miguyouxisdk/MegoActivity$5$1;

    invoke-direct {v2, p0}, Lcom/netmego/miguyouxisdk/MegoActivity$5$1;-><init>(Lcom/netmego/miguyouxisdk/MegoActivity$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->exitGame(Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V

    .line 266
    return-void
.end method
