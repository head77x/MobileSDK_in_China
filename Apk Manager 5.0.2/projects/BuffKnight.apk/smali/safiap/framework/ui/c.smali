.class final Lsafiap/framework/ui/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private synthetic e:Lsafiap/framework/ui/UpdateHintActivity;


# direct methods
.method constructor <init>(Lsafiap/framework/ui/UpdateHintActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 560
    iput-object p1, p0, Lsafiap/framework/ui/c;->e:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 561
    iput v0, p0, Lsafiap/framework/ui/c;->a:I

    .line 562
    iput v0, p0, Lsafiap/framework/ui/c;->b:I

    .line 563
    iput v0, p0, Lsafiap/framework/ui/c;->c:I

    .line 564
    iput v0, p0, Lsafiap/framework/ui/c;->d:I

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 568
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 582
    :cond_0
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2710

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x4e20

    if-eq v0, v1, :cond_1

    .line 587
    iget v0, p0, Lsafiap/framework/ui/c;->d:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lsafiap/framework/ui/c;->c:I

    div-int/2addr v0, v1

    iput v0, p0, Lsafiap/framework/ui/c;->a:I

    .line 589
    iget-object v0, p0, Lsafiap/framework/ui/c;->e:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 590
    iget v0, p0, Lsafiap/framework/ui/c;->b:I

    iget v1, p0, Lsafiap/framework/ui/c;->a:I

    if-ge v0, v1, :cond_1

    .line 591
    iget-object v0, p0, Lsafiap/framework/ui/c;->e:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/d;

    move-result-object v0

    iget v1, p0, Lsafiap/framework/ui/c;->a:I

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/d;->a(I)V

    .line 592
    iget v0, p0, Lsafiap/framework/ui/c;->a:I

    iput v0, p0, Lsafiap/framework/ui/c;->b:I

    .line 597
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 598
    return-void

    .line 570
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lsafiap/framework/ui/c;->d:I

    .line 571
    iget v0, p0, Lsafiap/framework/ui/c;->c:I

    if-nez v0, :cond_0

    .line 572
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Lsafiap/framework/ui/c;->c:I

    goto :goto_0

    .line 576
    :sswitch_1
    iget-object v0, p0, Lsafiap/framework/ui/c;->e:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v0}, Lsafiap/framework/ui/UpdateHintActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 577
    iget-object v1, p0, Lsafiap/framework/ui/c;->e:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v1}, Lsafiap/framework/ui/UpdateHintActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lsafiap/framework/util/Constants;->ACTION_NETWORK_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    iget-object v1, p0, Lsafiap/framework/ui/c;->e:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1, v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 581
    :sswitch_2
    iget-object v0, p0, Lsafiap/framework/ui/c;->e:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    goto :goto_0

    .line 568
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2710 -> :sswitch_1
        0x4e20 -> :sswitch_2
    .end sparse-switch
.end method
