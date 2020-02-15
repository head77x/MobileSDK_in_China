.class Lsafiap/framework/sdk/SAFFramework$2;
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
    .line 128
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework$2;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$2;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {p2}, Lsafiap/framework/sdk/ISAFFramework$Stub;->asInterface(Landroid/os/IBinder;)Lsafiap/framework/sdk/ISAFFramework;

    move-result-object v1

    invoke-static {v0, v1}, Lsafiap/framework/sdk/SAFFramework;->b(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/ISAFFramework;)Lsafiap/framework/sdk/ISAFFramework;

    .line 133
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$2;->a:Lsafiap/framework/sdk/SAFFramework;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsafiap/framework/sdk/SAFFramework;->a(Lsafiap/framework/sdk/SAFFramework;Z)Z

    .line 134
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$2;->a:Lsafiap/framework/sdk/SAFFramework;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsafiap/framework/sdk/SAFFramework;->b(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/ISAFFramework;)Lsafiap/framework/sdk/ISAFFramework;

    .line 139
    return-void
.end method
