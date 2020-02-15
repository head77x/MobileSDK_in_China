.class final Lsafiap/framework/ui/e;
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
    .line 365
    iput-object p1, p0, Lsafiap/framework/ui/e;->c:Lsafiap/framework/ui/UpdateHintActivity;

    iput p2, p0, Lsafiap/framework/ui/e;->a:I

    iput p3, p0, Lsafiap/framework/ui/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lsafiap/framework/ui/e;->c:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/d;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->dismiss()V

    .line 371
    iget-object v0, p0, Lsafiap/framework/ui/e;->c:Lsafiap/framework/ui/UpdateHintActivity;

    iget v1, p0, Lsafiap/framework/ui/e;->a:I

    iget v2, p0, Lsafiap/framework/ui/e;->b:I

    invoke-static {v0, v1, v2}, Lsafiap/framework/ui/UpdateHintActivity;->a(Lsafiap/framework/ui/UpdateHintActivity;II)V

    .line 373
    return-void
.end method
