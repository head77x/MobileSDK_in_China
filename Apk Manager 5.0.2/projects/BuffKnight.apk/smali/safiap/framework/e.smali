.class final Lsafiap/framework/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method constructor <init>(Lsafiap/framework/SafFrameworkManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1253
    iput-object p1, p0, Lsafiap/framework/e;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 1256
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1257
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handle message: msg.what: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1258
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1263
    :goto_0
    return-void

    .line 1260
    :pswitch_0
    new-instance v0, Lsafiap/framework/UpdateManager;

    iget-object v1, p0, Lsafiap/framework/e;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-direct {v0, v1}, Lsafiap/framework/UpdateManager;-><init>(Landroid/content/Context;)V

    .line 1261
    iget-object v1, p0, Lsafiap/framework/e;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->h(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    move-result-object v1

    iget-object v2, p0, Lsafiap/framework/e;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v2}, Lsafiap/framework/SafFrameworkManager;->i(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lsafiap/framework/SafFrameworkManager$f;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsafiap/framework/UpdateManager;->startQueryUpdateTask(Lsafiap/framework/UpdateManager$OnGotUpdateListListener;Ljava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lsafiap/framework/e;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->i(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 1258
    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
    .end packed-switch
.end method
