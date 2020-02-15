.class Lcom/netmego/miguyouxisdk/Telecom_Manager$2;
.super Ljava/lang/Object;
.source "Telecom_Manager.java"

# interfaces
.implements Lcn/play/dserv/ExitCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/Telecom_Manager;->exitGame(Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netmego/miguyouxisdk/Telecom_Manager;

.field private final synthetic val$listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/Telecom_Manager;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/Telecom_Manager;

    iput-object p2, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$2;->val$listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$2;->val$listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;

    invoke-interface {v0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;->onExitGameCancelExit()V

    .line 131
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$2;->val$listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;

    invoke-interface {v0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;->onExitGameConfirmExit()V

    .line 125
    return-void
.end method
