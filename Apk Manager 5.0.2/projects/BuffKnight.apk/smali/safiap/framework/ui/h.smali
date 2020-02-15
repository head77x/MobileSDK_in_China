.class final Lsafiap/framework/ui/h;
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
    .line 444
    iput-object p1, p0, Lsafiap/framework/ui/h;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lsafiap/framework/ui/h;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/d;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->dismiss()V

    .line 450
    iget-object v0, p0, Lsafiap/framework/ui/h;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    .line 451
    return-void
.end method
