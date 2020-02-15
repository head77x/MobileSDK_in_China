.class public Lcom/netmego/miguyouxisdk/CMGD_Manager$ExitListener;
.super Ljava/lang/Object;
.source "CMGD_Manager.java"

# interfaces
.implements Lcn/cmgame/billing/api/GameInterface$GameExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netmego/miguyouxisdk/CMGD_Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExitListener"
.end annotation


# instance fields
.field private _listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;

.field final synthetic this$0:Lcom/netmego/miguyouxisdk/CMGD_Manager;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/CMGD_Manager;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager$ExitListener;->this$0:Lcom/netmego/miguyouxisdk/CMGD_Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager$ExitListener;->_listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;

    .line 102
    return-void
.end method


# virtual methods
.method public forceExitingGame()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager$ExitListener;->_listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;

    invoke-interface {v0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;->onExitGameInGame()V

    .line 106
    return-void
.end method

.method public onCancelExit()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager$ExitListener;->_listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;

    invoke-interface {v0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;->onExitGameCancelExit()V

    .line 111
    return-void
.end method

.method public onConfirmExit()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager$ExitListener;->_listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;

    invoke-interface {v0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;->onExitGameConfirmExit()V

    .line 116
    return-void
.end method
