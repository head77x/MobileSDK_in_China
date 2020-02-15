.class final Lsafiap/framework/SafFrameworkManager$g;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/SafFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field private synthetic a:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method private constructor <init>(Lsafiap/framework/SafFrameworkManager;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$g;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsafiap/framework/SafFrameworkManager;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lsafiap/framework/SafFrameworkManager$g;-><init>(Lsafiap/framework/SafFrameworkManager;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$g;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$c;

    .line 108
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 109
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 121
    return-void

    .line 111
    :pswitch_0
    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$c;->d:Lsafiap/framework/SafFrameworkManager$b;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lsafiap/framework/SafFrameworkManager$b;->a()Lsafiap/framework/a/b;

    move-result-object v1

    iget-object v1, v1, Lsafiap/framework/a/b;->f:Ljava/lang/String;

    .line 114
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lsafiap/framework/SafFrameworkManager$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
