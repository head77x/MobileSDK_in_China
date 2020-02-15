.class final Lsafiap/framework/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsafiap/framework/ui/res/LayoutDialog$a;


# instance fields
.field private synthetic a:Lsafiap/framework/ui/UpdateHintActivity;


# direct methods
.method constructor <init>(Lsafiap/framework/ui/UpdateHintActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lsafiap/framework/ui/d;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lsafiap/framework/ui/d;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->b(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/sdk/ISAFFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    iget-object v0, p0, Lsafiap/framework/ui/d;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->b(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/sdk/ISAFFramework;

    move-result-object v0

    invoke-interface {v0}, Lsafiap/framework/sdk/ISAFFramework;->cancelAll()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :cond_0
    :goto_0
    iget-object v0, p0, Lsafiap/framework/ui/d;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/d;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->dismiss()V

    .line 316
    iget-object v0, p0, Lsafiap/framework/ui/d;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    .line 317
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
