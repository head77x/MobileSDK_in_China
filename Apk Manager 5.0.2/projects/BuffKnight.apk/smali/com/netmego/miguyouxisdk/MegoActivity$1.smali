.class Lcom/netmego/miguyouxisdk/MegoActivity$1;
.super Ljava/lang/Object;
.source "MegoActivity.java"

# interfaces
.implements Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/MegoActivity;->OnInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/MegoActivity$1;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchaseCanceld(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "item"
    .parameter "msg"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity$1;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    iget-object v0, v0, Lcom/netmego/miguyouxisdk/MegoActivity;->_callbackGameObject:Ljava/lang/String;

    iget-object v1, p0, Lcom/netmego/miguyouxisdk/MegoActivity$1;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    iget-object v1, v1, Lcom/netmego/miguyouxisdk/MegoActivity;->_callbackFunc:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|canceled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public onPurchaseFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "item"
    .parameter "msg"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity$1;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    iget-object v0, v0, Lcom/netmego/miguyouxisdk/MegoActivity;->_callbackGameObject:Ljava/lang/String;

    iget-object v1, p0, Lcom/netmego/miguyouxisdk/MegoActivity$1;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    iget-object v1, v1, Lcom/netmego/miguyouxisdk/MegoActivity;->_callbackFunc:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public onPurchaseInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "item"
    .parameter "msg"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity$1;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    iget-object v0, v0, Lcom/netmego/miguyouxisdk/MegoActivity;->_callbackGameObject:Ljava/lang/String;

    iget-object v1, p0, Lcom/netmego/miguyouxisdk/MegoActivity$1;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    iget-object v1, v1, Lcom/netmego/miguyouxisdk/MegoActivity;->_callbackFunc:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-1|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onPurchaseSucceed(Ljava/lang/String;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity$1;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    iget-object v0, v0, Lcom/netmego/miguyouxisdk/MegoActivity;->_callbackGameObject:Ljava/lang/String;

    iget-object v1, p0, Lcom/netmego/miguyouxisdk/MegoActivity$1;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    iget-object v1, v1, Lcom/netmego/miguyouxisdk/MegoActivity;->_callbackFunc:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "1|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method
