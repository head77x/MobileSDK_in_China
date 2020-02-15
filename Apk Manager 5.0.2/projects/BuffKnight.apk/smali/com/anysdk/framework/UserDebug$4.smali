.class Lcom/anysdk/framework/UserDebug$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/anysdk/framework/UserDebug;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/UserDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/UserDebug$4;->this$0:Lcom/anysdk/framework/UserDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/anysdk/framework/UserDebug$4;->this$0:Lcom/anysdk/framework/UserDebug;

    invoke-virtual {v0}, Lcom/anysdk/framework/UserDebug;->isLogined()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$400()Lcom/anysdk/framework/UserDebug;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "not need logout"

    invoke-static {v0, v1, v2}, Lcom/anysdk/framework/UserWrapper;->onActionResult(Lcom/anysdk/framework/InterfaceUser;ILjava/lang/String;)V

    const-string v0, "User not logined!"

    invoke-static {v0}, Lcom/anysdk/framework/UserDebug;->LogD(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/anysdk/framework/UserDebug$4;->this$0:Lcom/anysdk/framework/UserDebug;

    #calls: Lcom/anysdk/framework/UserDebug;->userLogout()V
    invoke-static {v0}, Lcom/anysdk/framework/UserDebug;->access$1000(Lcom/anysdk/framework/UserDebug;)V

    goto :goto_0
.end method
