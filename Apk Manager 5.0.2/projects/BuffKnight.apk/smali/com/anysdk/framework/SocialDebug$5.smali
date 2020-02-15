.class Lcom/anysdk/framework/SocialDebug$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/anysdk/framework/SocialDebug;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/SocialDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/SocialDebug$5;->this$0:Lcom/anysdk/framework/SocialDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/anysdk/framework/SocialDebug$5;->this$0:Lcom/anysdk/framework/SocialDebug;

    invoke-virtual {v0}, Lcom/anysdk/framework/SocialDebug;->isLogined()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anysdk/framework/SocialDebug;->access$700()Lcom/anysdk/framework/SocialDebug;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "not need logout"

    invoke-static {v0, v1, v2}, Lcom/anysdk/framework/SocialWrapper;->onSocialResult(Lcom/anysdk/framework/InterfaceSocial;ILjava/lang/String;)V

    const-string v0, "User not logined!"

    invoke-static {v0}, Lcom/anysdk/framework/SocialDebug;->LogD(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/anysdk/framework/SocialDebug$5;->this$0:Lcom/anysdk/framework/SocialDebug;

    #calls: Lcom/anysdk/framework/SocialDebug;->userLogout()V
    invoke-static {v0}, Lcom/anysdk/framework/SocialDebug;->access$900(Lcom/anysdk/framework/SocialDebug;)V

    goto :goto_0
.end method
