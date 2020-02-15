.class final Lsafiap/framework/ui/UpdateHintActivity$a;
.super Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/ui/UpdateHintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field private static a:I = 0x1


# instance fields
.field private synthetic b:Lsafiap/framework/ui/UpdateHintActivity;


# direct methods
.method public constructor <init>(Lsafiap/framework/ui/UpdateHintActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lsafiap/framework/ui/UpdateHintActivity$a;->b:Lsafiap/framework/ui/UpdateHintActivity;

    .line 605
    invoke-direct {p0}, Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub;-><init>()V

    .line 607
    return-void
.end method


# virtual methods
.method public final onDownloadProgress(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 637
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 638
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 639
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 640
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 641
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$a;->b:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1}, Lsafiap/framework/ui/UpdateHintActivity;->g(Lsafiap/framework/ui/UpdateHintActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 642
    return-void
.end method

.method public final onFinishDownload(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 612
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFinishDownload...start, result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 614
    const/16 v0, 0xb

    if-ne p2, v0, :cond_2

    .line 615
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$a;->b:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/d;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$a;->b:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/d;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->dismiss()V

    .line 617
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$a;->b:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->g(Lsafiap/framework/ui/UpdateHintActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$a;->b:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    goto :goto_0

    .line 621
    :cond_2
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 622
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$a;->b:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/d;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 623
    invoke-static {p1}, Lsafiap/framework/sdk/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$a;->b:Lsafiap/framework/ui/UpdateHintActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 626
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$a;->b:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1, v0}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0

    .line 628
    :cond_3
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$a;->b:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    goto :goto_0
.end method
