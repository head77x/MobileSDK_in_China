.class public final Lsafiap/framework/ui/res/d;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/ui/res/d$a;
    }
.end annotation


# instance fields
.field private a:Lsafiap/framework/ui/res/LayoutDialog;

.field private b:Lsafiap/framework/ui/res/LayoutDialog$a;

.field private c:Lsafiap/framework/ui/res/LayoutDialog$a;

.field private d:[I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private k:[I

.field private l:[I

.field private m:[I

.field private n:[I

.field private o:[I

.field private p:[I

.field private q:[I

.field private r:[I

.field private s:Landroid/app/Activity;

.field private t:Lsafiap/framework/ui/res/d$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x10

    .line 159
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 10
    iput-object v2, p0, Lsafiap/framework/ui/res/d;->b:Lsafiap/framework/ui/res/LayoutDialog$a;

    .line 11
    iput-object v2, p0, Lsafiap/framework/ui/res/d;->c:Lsafiap/framework/ui/res/LayoutDialog$a;

    .line 12
    new-array v0, v1, [I

    iput-object v0, p0, Lsafiap/framework/ui/res/d;->d:[I

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lsafiap/framework/ui/res/d;->k:[I

    .line 37
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lsafiap/framework/ui/res/d;->l:[I

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lsafiap/framework/ui/res/d;->m:[I

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lsafiap/framework/ui/res/d;->n:[I

    .line 88
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lsafiap/framework/ui/res/d;->o:[I

    .line 105
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lsafiap/framework/ui/res/d;->p:[I

    .line 122
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lsafiap/framework/ui/res/d;->q:[I

    .line 139
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lsafiap/framework/ui/res/d;->r:[I

    .line 156
    iput-object v2, p0, Lsafiap/framework/ui/res/d;->s:Landroid/app/Activity;

    .line 175
    iput-object v2, p0, Lsafiap/framework/ui/res/d;->t:Lsafiap/framework/ui/res/d$a;

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsafiap/framework/ui/res/d;->setCancelable(Z)V

    .line 161
    invoke-virtual {p0, v2}, Lsafiap/framework/ui/res/d;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 163
    iput-object p1, p0, Lsafiap/framework/ui/res/d;->s:Landroid/app/Activity;

    .line 164
    invoke-virtual {p0, p3, p4}, Lsafiap/framework/ui/res/d;->a(II)V

    .line 165
    return-void

    .line 14
    :array_0
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 37
    :array_1
    .array-data 0x4
        0x84t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 54
    :array_2
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 71
    :array_3
    .array-data 0x4
        0x84t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 88
    :array_4
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 105
    :array_5
    .array-data 0x4
        0x84t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 122
    :array_6
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0xdct 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 139
    :array_7
    .array-data 0x4
        0x84t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0xbbt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Lsafiap/framework/ui/res/d;)Lsafiap/framework/ui/res/LayoutDialog$a;
    .locals 1
    .parameter

    .prologue
    .line 8
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->c:Lsafiap/framework/ui/res/LayoutDialog$a;

    return-object v0
.end method

.method static synthetic b(Lsafiap/framework/ui/res/d;)Lsafiap/framework/ui/res/LayoutDialog$a;
    .locals 1
    .parameter

    .prologue
    .line 8
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->b:Lsafiap/framework/ui/res/LayoutDialog$a;

    return-object v0
.end method

.method private b(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 273
    new-instance v0, Lsafiap/framework/ui/res/LayoutDialog;

    iget-object v1, p0, Lsafiap/framework/ui/res/d;->s:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lsafiap/framework/ui/res/d;->s:Landroid/app/Activity;

    iget-object v3, p0, Lsafiap/framework/ui/res/d;->d:[I

    invoke-direct {v0, v1, v2, v3}, Lsafiap/framework/ui/res/LayoutDialog;-><init>(Landroid/view/WindowManager;Landroid/content/Context;[I)V

    iput-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    .line 275
    packed-switch p1, :pswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 278
    :pswitch_0
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->i()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    :goto_1
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {p0, v0}, Lsafiap/framework/ui/res/d;->setContentView(Landroid/view/View;)V

    .line 317
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    new-instance v1, Lsafiap/framework/ui/res/e;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/res/e;-><init>(Lsafiap/framework/ui/res/d;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/LayoutDialog;->setOnDialogCancelListener(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    .line 328
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    new-instance v1, Lsafiap/framework/ui/res/f;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/res/f;-><init>(Lsafiap/framework/ui/res/d;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/LayoutDialog;->setOnDialogConfirmListener(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    goto :goto_0

    .line 282
    :pswitch_1
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->a()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u51fa\u9519"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->h()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u4e0b\u8f7d\u51fa\u9519\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5\u3002"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->b()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->i()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->e()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 292
    :pswitch_2
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->a()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u65b0\u7248\u672c\u53ef\u7528"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->h()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u65b0\u7248\u672c\u5df2\u7ecf\u4e0b\u8f7d\u5b8c\u6bd5\uff0c\u662f\u5426\u5b89\u88c5\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->b()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->i()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->e()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 302
    :pswitch_3
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->a()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u65b0\u7248\u672c\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->h()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u65b0\u7248\u672c\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u5019\u3002"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->b()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u540e\u53f0\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->e()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->i()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->c()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a()Lsafiap/framework/ui/res/LayoutDialog;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    return-object v0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0, p1}, Lsafiap/framework/ui/res/LayoutDialog;->setProgress(I)V

    .line 345
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x22

    const/16 v0, 0x21

    const/4 v1, 0x0

    const/16 v5, 0x8

    .line 205
    packed-switch p1, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 208
    :pswitch_0
    if-ne p2, v0, :cond_1

    move v0, v1

    .line 209
    :goto_1
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->k:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 210
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->d:[I

    iget-object v3, p0, Lsafiap/framework/ui/res/d;->k:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    :cond_1
    if-ne p2, v2, :cond_0

    move v0, v1

    .line 213
    :goto_2
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->l:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 214
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->d:[I

    iget-object v3, p0, Lsafiap/framework/ui/res/d;->l:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 222
    :pswitch_1
    if-ne p2, v0, :cond_2

    move v0, v1

    .line 223
    :goto_3
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->m:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 224
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->d:[I

    iget-object v3, p0, Lsafiap/framework/ui/res/d;->m:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 226
    :cond_2
    if-ne p2, v2, :cond_0

    move v0, v1

    .line 227
    :goto_4
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->n:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 228
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->d:[I

    iget-object v3, p0, Lsafiap/framework/ui/res/d;->n:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 237
    :pswitch_2
    if-ne p2, v0, :cond_3

    move v0, v1

    .line 238
    :goto_5
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->o:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 239
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->d:[I

    iget-object v3, p0, Lsafiap/framework/ui/res/d;->o:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 241
    :cond_3
    if-ne p2, v2, :cond_0

    move v0, v1

    .line 242
    :goto_6
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->p:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 243
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->d:[I

    iget-object v3, p0, Lsafiap/framework/ui/res/d;->p:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 252
    :pswitch_3
    if-ne p2, v0, :cond_4

    move v0, v1

    .line 253
    :goto_7
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->q:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 254
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->d:[I

    iget-object v3, p0, Lsafiap/framework/ui/res/d;->q:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 256
    :cond_4
    if-ne p2, v2, :cond_0

    move v0, v1

    .line 257
    :goto_8
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->r:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 258
    iget-object v2, p0, Lsafiap/framework/ui/res/d;->d:[I

    iget-object v3, p0, Lsafiap/framework/ui/res/d;->r:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 269
    :cond_5
    new-instance v0, Lsafiap/framework/ui/res/LayoutDialog;

    iget-object v2, p0, Lsafiap/framework/ui/res/d;->s:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lsafiap/framework/ui/res/d;->s:Landroid/app/Activity;

    iget-object v4, p0, Lsafiap/framework/ui/res/d;->d:[I

    invoke-direct {v0, v2, v3, v4}, Lsafiap/framework/ui/res/LayoutDialog;-><init>(Landroid/view/WindowManager;Landroid/content/Context;[I)V

    iput-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->i()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_9
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {p0, v0}, Lsafiap/framework/ui/res/d;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    new-instance v1, Lsafiap/framework/ui/res/e;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/res/e;-><init>(Lsafiap/framework/ui/res/d;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/LayoutDialog;->setOnDialogCancelListener(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    new-instance v1, Lsafiap/framework/ui/res/f;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/res/f;-><init>(Lsafiap/framework/ui/res/d;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/LayoutDialog;->setOnDialogConfirmListener(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->a()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u51fa\u9519"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->h()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u4e0b\u8f7d\u51fa\u9519\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5\u3002"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->b()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->i()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->e()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    :pswitch_6
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->a()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u65b0\u7248\u672c\u53ef\u7528"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->h()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u65b0\u7248\u672c\u5df2\u7ecf\u4e0b\u8f7d\u5b8c\u6bd5\uff0c\u662f\u5426\u5b89\u88c5\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->b()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->i()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->e()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    :pswitch_7
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->a()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "\u65b0\u7248\u672c\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->h()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u65b0\u7248\u672c\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u5019\u3002"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->b()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "\u540e\u53f0\u4e0b\u8f7d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->e()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->i()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->c()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 269
    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final a(Lsafiap/framework/ui/res/LayoutDialog$a;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lsafiap/framework/ui/res/d;->b:Lsafiap/framework/ui/res/LayoutDialog$a;

    .line 195
    return-void
.end method

.method public final a(Lsafiap/framework/ui/res/d$a;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lsafiap/framework/ui/res/d;->t:Lsafiap/framework/ui/res/d$a;

    .line 187
    return-void
.end method

.method public final b(Lsafiap/framework/ui/res/LayoutDialog$a;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lsafiap/framework/ui/res/d;->c:Lsafiap/framework/ui/res/LayoutDialog$a;

    .line 198
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->a:Lsafiap/framework/ui/res/LayoutDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->g()Z

    move-result v0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->t:Lsafiap/framework/ui/res/d$a;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lsafiap/framework/ui/res/d;->t:Lsafiap/framework/ui/res/d$a;

    invoke-virtual {v0, p1}, Lsafiap/framework/ui/res/d$a;->b(I)Z

    .line 182
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
