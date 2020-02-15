.class Lcom/anysdk/framework/IAPDebug$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/anysdk/framework/IAPDebug;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/IAPDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/IAPDebug$1;->this$0:Lcom/anysdk/framework/IAPDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/anysdk/framework/IAPDebug;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/anysdk/framework/IAPDebug;->access$002(Z)Z

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "server_url"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/anysdk/framework/IAPDebug;->access$102(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "uapi_key"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/anysdk/framework/IAPDebug;->access$202(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "uapi_secret"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/anysdk/framework/IAPDebug;->access$302(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/anysdk/framework/IAPDebug;->access$100()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/anysdk/framework/IAPDebug;->access$200()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/anysdk/framework/IAPDebug;->access$300()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "private_key"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    const-string v1, "fail to  call init of AgentManager"

    #calls: Lcom/anysdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V
    invoke-static {v0, v1}, Lcom/anysdk/framework/IAPDebug;->access$400(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x0

    #calls: Lcom/anysdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V
    invoke-static {v0, v1}, Lcom/anysdk/framework/IAPDebug;->access$400(ILjava/lang/String;)V

    goto :goto_0
.end method
