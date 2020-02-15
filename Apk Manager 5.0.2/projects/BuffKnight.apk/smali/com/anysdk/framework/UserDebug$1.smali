.class Lcom/anysdk/framework/UserDebug$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/anysdk/framework/UserDebug;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/UserDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/UserDebug$1;->this$0:Lcom/anysdk/framework/UserDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/anysdk/framework/UserDebug$1$1;

    invoke-direct {v1, p0}, Lcom/anysdk/framework/UserDebug$1$1;-><init>(Lcom/anysdk/framework/UserDebug$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
