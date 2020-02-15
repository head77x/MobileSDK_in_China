.class Lcom/netmego/miguyouxisdk/MegoActivity$4;
.super Ljava/lang/Object;
.source "MegoActivity.java"

# interfaces
.implements Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/MegoActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
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
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/MegoActivity$4;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitGameCancelExit()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public onExitGameConfirmExit()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity$4;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    invoke-virtual {v0}, Lcom/netmego/miguyouxisdk/MegoActivity;->exit()V

    .line 218
    return-void
.end method

.method public onExitGameInGame()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity$4;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netmego/miguyouxisdk/MegoActivity;->PromptExitInGame:Z

    .line 229
    return-void
.end method
