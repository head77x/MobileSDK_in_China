.class final Lsafiap/framework/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lsafiap/framework/ui/UpdateHintActivity;


# direct methods
.method constructor <init>(Lsafiap/framework/ui/UpdateHintActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lsafiap/framework/ui/b;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 535
    iget-object v0, p0, Lsafiap/framework/ui/b;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->e(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    .line 536
    :try_start_0
    iget-object v0, p0, Lsafiap/framework/ui/b;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {p2}, Lsafiap/framework/sdk/ISAFFramework$Stub;->asInterface(Landroid/os/IBinder;)Lsafiap/framework/sdk/ISAFFramework;

    move-result-object v2

    invoke-static {v0, v2}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;Lsafiap/framework/sdk/ISAFFramework;)Lsafiap/framework/sdk/ISAFFramework;

    .line 537
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    const-string v2, "UpdateHintActivity onServiceConnected"

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 539
    :goto_0
    iget-object v0, p0, Lsafiap/framework/ui/b;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->f(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lsafiap/framework/ui/b;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->f(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 541
    iget-object v2, p0, Lsafiap/framework/ui/b;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v2, v0}, Lsafiap/framework/ui/UpdateHintActivity;->b(Lsafiap/framework/ui/UpdateHintActivity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 548
    iget-object v0, p0, Lsafiap/framework/ui/b;->a:Lsafiap/framework/ui/UpdateHintActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;Lsafiap/framework/sdk/ISAFFramework;)Lsafiap/framework/sdk/ISAFFramework;

    .line 549
    return-void
.end method
