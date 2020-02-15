.class Lsafiap/framework/sdk/SAFFramework$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lsafiap/framework/sdk/SAFFramework;


# direct methods
.method constructor <init>(Lsafiap/framework/sdk/SAFFramework;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework$1;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->a(Lsafiap/framework/sdk/SAFFramework;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {p2}, Lsafiap/framework/sdk/ISAFFramework$Stub;->asInterface(Landroid/os/IBinder;)Lsafiap/framework/sdk/ISAFFramework;

    move-result-object v2

    invoke-static {v0, v2}, Lsafiap/framework/sdk/SAFFramework;->a(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/ISAFFramework;)Lsafiap/framework/sdk/ISAFFramework;

    .line 109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->b(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->b(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;->onInit(I)V

    .line 114
    :cond_0
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->a(Lsafiap/framework/sdk/SAFFramework;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->a:Lsafiap/framework/sdk/SAFFramework;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lsafiap/framework/sdk/SAFFramework;->a(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/ISAFFramework;)Lsafiap/framework/sdk/ISAFFramework;

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->b(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->b(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    move-result-object v0

    invoke-interface {v0}, Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;->onExit()V

    .line 123
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0, v3}, Lsafiap/framework/sdk/SAFFramework;->a(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;)Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    .line 125
    :cond_0
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
