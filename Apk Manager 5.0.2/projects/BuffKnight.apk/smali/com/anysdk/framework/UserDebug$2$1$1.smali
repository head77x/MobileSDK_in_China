.class Lcom/anysdk/framework/UserDebug$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anysdk/framework/ILoginCallback;


# instance fields
.field final synthetic this$2:Lcom/anysdk/framework/UserDebug$2$1;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/UserDebug$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/UserDebug$2$1$1;->this$2:Lcom/anysdk/framework/UserDebug$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/anysdk/framework/UserDebug;->access$502(Z)Z

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$400()Lcom/anysdk/framework/UserDebug;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1, p2}, Lcom/anysdk/framework/UserWrapper;->onActionResult(Lcom/anysdk/framework/InterfaceUser;ILjava/lang/String;)V

    return-void
.end method

.method public onSuccessed(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/anysdk/framework/UserDebug;->access$502(Z)Z

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$400()Lcom/anysdk/framework/UserDebug;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, p2}, Lcom/anysdk/framework/UserWrapper;->onActionResult(Lcom/anysdk/framework/InterfaceUser;ILjava/lang/String;)V

    return-void
.end method
