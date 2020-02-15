.class public Lsafiap/framework/ui/res/LayoutUpdateHintActivity;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 15
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18
    invoke-virtual {p0, v0}, Lsafiap/framework/ui/res/LayoutUpdateHintActivity;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-virtual {p0, v1}, Lsafiap/framework/ui/res/LayoutUpdateHintActivity;->setBackgroundColor(I)V

    .line 21
    return-void
.end method
