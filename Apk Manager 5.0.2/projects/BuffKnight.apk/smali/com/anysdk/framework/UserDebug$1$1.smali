.class Lcom/anysdk/framework/UserDebug$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/anysdk/framework/UserDebug$1;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/UserDebug$1;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/UserDebug$1$1;->this$1:Lcom/anysdk/framework/UserDebug$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/anysdk/framework/UserDebug;->access$002(Z)Z

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "server_url"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/anysdk/framework/UserDebug;->access$102(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "uapi_key"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/anysdk/framework/UserDebug;->access$202(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "uapi_secret"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/anysdk/framework/UserDebug;->access$302(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$100()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$200()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$300()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "private_key"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$400()Lcom/anysdk/framework/UserDebug;

    move-result-object v0

    const-string v1, "fail to  call init of AgentManager"

    invoke-static {v0, v2, v1}, Lcom/anysdk/framework/UserWrapper;->onActionResult(Lcom/anysdk/framework/InterfaceUser;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$400()Lcom/anysdk/framework/UserDebug;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/anysdk/framework/UserWrapper;->onActionResult(Lcom/anysdk/framework/InterfaceUser;ILjava/lang/String;)V

    goto :goto_0
.end method
