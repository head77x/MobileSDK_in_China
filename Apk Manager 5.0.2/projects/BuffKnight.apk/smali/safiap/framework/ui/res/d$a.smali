.class public Lsafiap/framework/ui/res/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/ui/res/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lsafiap/framework/ui/UpdateHintActivity;


# direct methods
.method public constructor <init>(Lsafiap/framework/ui/UpdateHintActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lsafiap/framework/ui/res/d$a;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 503
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 504
    iget-object v0, p0, Lsafiap/framework/ui/res/d$a;->a:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    .line 506
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
