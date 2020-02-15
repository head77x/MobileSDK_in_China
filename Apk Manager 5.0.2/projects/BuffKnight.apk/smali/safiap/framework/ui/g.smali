.class final Lsafiap/framework/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsafiap/framework/ui/res/LayoutDialog$a;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lsafiap/framework/ui/UpdateHintActivity;


# direct methods
.method constructor <init>(Lsafiap/framework/ui/UpdateHintActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lsafiap/framework/ui/g;->b:Lsafiap/framework/ui/UpdateHintActivity;

    iput-object p2, p0, Lsafiap/framework/ui/g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lsafiap/framework/ui/g;->a:Ljava/lang/String;

    sget-object v1, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lsafiap/framework/ui/g;->b:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->d(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lsafiap/framework/ui/g;->b:Lsafiap/framework/ui/UpdateHintActivity;

    iget-object v1, p0, Lsafiap/framework/ui/g;->b:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1}, Lsafiap/framework/ui/UpdateHintActivity;->d(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 428
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IAPFilepath .... url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    const-string v2, "SAFFramework UI file exits ...."

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lsafiap/framework/ui/g;->b:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1, v0}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/io/File;)V

    .line 436
    :cond_0
    iget-object v0, p0, Lsafiap/framework/ui/g;->b:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/d;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->dismiss()V

    .line 437
    iget-object v0, p0, Lsafiap/framework/ui/g;->b:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    .line 439
    :cond_1
    return-void
.end method
