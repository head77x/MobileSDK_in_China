.class Lsafiap/framework/sdk/SAFFramework$3;
.super Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub;
.source "SourceFile"


# instance fields
.field private synthetic a:Lsafiap/framework/sdk/SAFFramework;


# direct methods
.method constructor <init>(Lsafiap/framework/sdk/SAFFramework;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework$3;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-direct {p0}, Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->c(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->c(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lsafiap/framework/sdk/PluginInstallListener;->onDownloadProgress(Ljava/lang/String;II)V

    .line 171
    :cond_0
    return-void
.end method

.method public onFinishDownload(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->c(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->c(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lsafiap/framework/sdk/PluginInstallListener;->onFinishDownload(Ljava/lang/String;I)V

    .line 163
    :cond_0
    return-void
.end method
