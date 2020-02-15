.class final Lsafiap/framework/ui/res/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lsafiap/framework/ui/res/LayoutDialog;


# direct methods
.method constructor <init>(Lsafiap/framework/ui/res/LayoutDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lsafiap/framework/ui/res/b;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lsafiap/framework/ui/res/b;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-static {v0}, Lsafiap/framework/ui/res/LayoutDialog;->a(Lsafiap/framework/ui/res/LayoutDialog;)Lsafiap/framework/ui/res/LayoutDialog$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lsafiap/framework/ui/res/b;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-static {v0}, Lsafiap/framework/ui/res/LayoutDialog;->a(Lsafiap/framework/ui/res/LayoutDialog;)Lsafiap/framework/ui/res/LayoutDialog$a;

    move-result-object v0

    invoke-interface {v0}, Lsafiap/framework/ui/res/LayoutDialog$a;->a()V

    .line 343
    :cond_0
    return-void
.end method
