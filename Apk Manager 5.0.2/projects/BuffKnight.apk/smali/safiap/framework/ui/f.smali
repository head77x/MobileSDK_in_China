.class final Lsafiap/framework/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsafiap/framework/ui/res/LayoutDialog$a;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Lsafiap/framework/ui/UpdateHintActivity;


# direct methods
.method constructor <init>(Lsafiap/framework/ui/UpdateHintActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lsafiap/framework/ui/f;->c:Lsafiap/framework/ui/UpdateHintActivity;

    iput p2, p0, Lsafiap/framework/ui/f;->a:I

    iput p3, p0, Lsafiap/framework/ui/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 381
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canceled ... , isChecked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsafiap/framework/ui/f;->c:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v2}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/d;

    move-result-object v2

    invoke-virtual {v2}, Lsafiap/framework/ui/res/d;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lsafiap/framework/ui/f;->c:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/d;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget v0, p0, Lsafiap/framework/ui/f;->a:I

    const/16 v1, 0x7532

    if-ne v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lsafiap/framework/ui/f;->c:Lsafiap/framework/ui/UpdateHintActivity;

    sget-object v1, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    iget v2, p0, Lsafiap/framework/ui/f;->b:I

    invoke-static {v0, v1, v2}, Lsafiap/framework/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 387
    :cond_0
    iget-object v0, p0, Lsafiap/framework/ui/f;->c:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/d;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->dismiss()V

    .line 388
    iget-object v0, p0, Lsafiap/framework/ui/f;->c:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->c(Lsafiap/framework/ui/UpdateHintActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lsafiap/framework/ui/f;->c:Lsafiap/framework/ui/UpdateHintActivity;

    const-string v1, "\u60a8\u9700\u8981\u5347\u7ea7\u540e\u624d\u80fd\u7ee7\u7eed\u652f\u4ed8"

    invoke-static {v0, v1}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;Ljava/lang/String;)V

    .line 395
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v0, p0, Lsafiap/framework/ui/f;->c:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    goto :goto_0
.end method
