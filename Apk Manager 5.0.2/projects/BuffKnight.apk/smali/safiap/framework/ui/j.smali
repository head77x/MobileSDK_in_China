.class final Lsafiap/framework/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsafiap/framework/ui/res/LayoutDialog$a;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lsafiap/framework/ui/UpdateHintActivity;


# direct methods
.method constructor <init>(Lsafiap/framework/ui/UpdateHintActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lsafiap/framework/ui/j;->b:Lsafiap/framework/ui/UpdateHintActivity;

    iput-boolean p2, p0, Lsafiap/framework/ui/j;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lsafiap/framework/ui/j;->b:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/d;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->dismiss()V

    .line 485
    iget-boolean v0, p0, Lsafiap/framework/ui/j;->a:Z

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lsafiap/framework/ui/j;->b:Lsafiap/framework/ui/UpdateHintActivity;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u60a8\u9700\u8981\u5347\u7ea7\u540e\u624d\u80fd\u7ee7\u7eed\u652f\u4ed8"

    invoke-static {v0, v1}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lsafiap/framework/ui/j;->b:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    goto :goto_0
.end method
