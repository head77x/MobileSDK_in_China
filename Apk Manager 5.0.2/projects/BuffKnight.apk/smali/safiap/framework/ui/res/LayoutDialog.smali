.class public Lsafiap/framework/ui/res/LayoutDialog;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/ui/res/LayoutDialog$a;
    }
.end annotation


# static fields
.field private static l:I = 0x1

.field private static m:I = 0x2


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private n:[I

.field private o:Landroid/content/res/Configuration;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/CheckBox;

.field private u:Z

.field private v:Landroid/widget/ProgressBar;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Lsafiap/framework/ui/res/LayoutDialog$a;

.field private z:Lsafiap/framework/ui/res/LayoutDialog$a;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/Context;[I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    .line 25
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->c:Landroid/widget/RelativeLayout;

    .line 27
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->d:Landroid/widget/TextView;

    .line 28
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->e:Landroid/widget/ImageView;

    .line 29
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->f:Landroid/widget/RelativeLayout;

    .line 30
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->g:Landroid/widget/TextView;

    .line 32
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->h:Landroid/widget/RelativeLayout;

    .line 33
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->i:Landroid/widget/LinearLayout;

    .line 34
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    .line 35
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    .line 43
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    .line 44
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    .line 46
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->r:Landroid/widget/TextView;

    .line 47
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    .line 48
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->u:Z

    .line 51
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    .line 52
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->w:Landroid/widget/TextView;

    .line 53
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->x:Landroid/widget/TextView;

    .line 404
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->y:Lsafiap/framework/ui/res/LayoutDialog$a;

    .line 405
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->z:Lsafiap/framework/ui/res/LayoutDialog$a;

    .line 57
    iput-object p1, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    .line 58
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    .line 60
    invoke-direct {p0, p3}, Lsafiap/framework/ui/res/LayoutDialog;->a([I)V

    .line 61
    return-void
.end method

.method static synthetic a(Lsafiap/framework/ui/res/LayoutDialog;)Lsafiap/framework/ui/res/LayoutDialog$a;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->y:Lsafiap/framework/ui/res/LayoutDialog$a;

    return-object v0
.end method

.method private a([I)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x2

    const/16 v11, 0xa

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 64
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 65
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v3, p1, v0

    aput v3, v2, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 69
    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 72
    invoke-virtual {p0, v0}, Lsafiap/framework/ui/res/LayoutDialog;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lsafiap/framework/ui/res/LayoutDialog;->setBackgroundColor(I)V

    .line 75
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v2, v2, v1

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v0, v2, v3}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v0

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v3, v3, v10

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v2, v3, v4}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v2

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v4, v4, v1

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v3, v4, v5}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3, v1}, Lsafiap/framework/ui/res/LayoutDialog;->setPadding(IIII)V

    .line 81
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->c:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->c:Landroid/widget/RelativeLayout;

    const v2, -0xfea355

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v3, v3, v12

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v0, v3, v4}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v2, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->d:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, -0x2

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v3, -0x2

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v3, v4, v5}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v3

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v4, v5, v6}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v4

    invoke-virtual {v0, v3, v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->d:Landroid/widget/TextView;

    const-string v4, "\u4e0b\u8f7d\u51fa\u9519"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->d:Landroid/widget/TextView;

    const/high16 v4, 0x41d0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->c:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->e:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v0, v4, v5}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v0, v4, v5}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v0, v4, v5}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v0

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0xb

    invoke-virtual {v3, v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :try_start_0
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "mmiap/image/vertical/logo1.png"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->c:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lsafiap/framework/ui/res/LayoutDialog;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->f:Landroid/widget/RelativeLayout;

    const v2, -0x242425

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v2, v3, v4}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    const v3, -0x242425

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->f:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->g:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v3, 0x41c8

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->g:Landroid/widget/TextView;

    const/high16 v4, 0x4180

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->g:Landroid/widget/TextView;

    const v4, -0xcdcdce

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v5, v5, v11

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v4, v5, v6}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v4

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v5, v6, v7}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v5

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v7, v7, v11

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v6, v7, v8}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v6

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v7, v1, v8}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->r:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v3, 0x41c8

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->r:Landroid/widget/TextView;

    const-string v4, "\u5347\u7ea7\u65b0\u7248\u672c\uff0c\u66f4\u4fbf\u6377\uff0c\u66f4\u5b89\u5168\u5730\u4f7f\u7528\u8bdd\u8d39\u8fdb\u884c\u5feb\u6377\u652f\u4ed8\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->r:Landroid/widget/TextView;

    const/high16 v4, 0x4180

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->r:Landroid/widget/TextView;

    const v4, -0xcdcdce

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->r:Landroid/widget/TextView;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v5, v5, v11

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v4, v5, v6}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v4

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v5, v6, v7}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v5

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v7, v7, v11

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v6, v7, v8}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v6

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v7, v1, v8}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->r:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v3, 0x420c

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v4, v5, v6}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v4

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v5, v6, v7}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {v3, v4, v1, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->w:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v3, 0x41f0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->w:Landroid/widget/TextView;

    const-string v4, "\u4e0b\u8f7d\u8fdb\u5ea6"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->w:Landroid/widget/TextView;

    const/high16 v4, 0x4180

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->w:Landroid/widget/TextView;

    const v4, -0xcdcdce

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->w:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x1010078

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v3, 0x41a0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v4, v11, v5}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v4

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v5, v11, v6}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v5

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v6, v11, v7}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v6

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v7, v11, v8}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->x:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v3, 0x41a0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->x:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v3, v4, v5}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v3, 0x41b0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    const/high16 v4, 0x4180

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTextSize(F)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    const v4, -0xfea353

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    const-string v4, "\u4e0d\u518d\u63d0\u9192"

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v4, v5, v6}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v4

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v5, v6, v7}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v1, v1}, Landroid/widget/CheckBox;->setPadding(IIII)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    new-instance v4, Lsafiap/framework/ui/res/a;

    invoke-direct {v4, p0}, Lsafiap/framework/ui/res/a;-><init>(Lsafiap/framework/ui/res/LayoutDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v3, 0x41b0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    const-string v4, "\u60a8\u9700\u8981\u5347\u7ea7\u6b64\u7248\u672c\u624d\u80fd\u4f7f\u7528\u652f\u4ed8\u670d\u52a1"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    const/high16 v4, 0x4180

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    const v4, -0xfea353

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v5, v5, v11

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v4, v5, v6}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v4

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v5, v6, v7}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v5

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v7, v7, v11

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v6, v7, v8}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v6

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v7, v1, v8}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, v0}, Lsafiap/framework/ui/res/LayoutDialog;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->h:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v2, v3, v4}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->i:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->i:Landroid/widget/LinearLayout;

    const v3, -0x3c3c3d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->h:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setClickable(Z)V

    new-array v2, v12, [[I

    new-array v3, v10, [I

    const v4, 0x10100a7

    aput v4, v3, v1

    aput-object v3, v2, v1

    new-array v3, v10, [I

    const v4, 0x101009e

    aput v4, v3, v1

    aput-object v3, v2, v10

    new-array v3, v12, [I

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Lsafiap/framework/ui/res/h;->a([[I[I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    new-instance v3, Lsafiap/framework/ui/res/b;

    invoke-direct {v3, p0}, Lsafiap/framework/ui/res/b;-><init>(Lsafiap/framework/ui/res/LayoutDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    const-string v4, "\u7acb\u5373\u5347\u7ea7"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    const/high16 v4, 0x41a0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->i:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setClickable(Z)V

    new-array v2, v12, [[I

    new-array v3, v10, [I

    const v4, 0x10100a7

    aput v4, v3, v1

    aput-object v3, v2, v1

    new-array v3, v10, [I

    const v4, 0x101009e

    aput v4, v3, v1

    aput-object v3, v2, v10

    new-array v3, v12, [I

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Lsafiap/framework/ui/res/h;->a([[I[I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    new-instance v3, Lsafiap/framework/ui/res/c;

    invoke-direct {v3, p0}, Lsafiap/framework/ui/res/c;-><init>(Lsafiap/framework/ui/res/LayoutDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v1, 0x3f80

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    const/high16 v3, 0x41a0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->i:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lsafiap/framework/ui/res/LayoutDialog;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void

    .line 81
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 85
    nop

    :array_0
    .array-data 0x4
        0x88t 0x88t 0x8at 0xfft
        0x6dt 0x6ct 0x6et 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x88t 0x88t 0x8at 0xfft
        0x6dt 0x6ct 0x6et 0xfft
    .end array-data
.end method

.method static synthetic a(Lsafiap/framework/ui/res/LayoutDialog;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lsafiap/framework/ui/res/LayoutDialog;->u:Z

    return p1
.end method

.method static synthetic b(Lsafiap/framework/ui/res/LayoutDialog;)Lsafiap/framework/ui/res/LayoutDialog$a;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->z:Lsafiap/framework/ui/res/LayoutDialog$a;

    return-object v0
.end method

.method private k()V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v4, -0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 89
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->c:Landroid/widget/RelativeLayout;

    .line 90
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 91
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->c:Landroid/widget/RelativeLayout;

    const v1, -0xfea355

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 92
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v0, v2, v3}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 95
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 96
    const/16 v0, 0xa

    invoke-virtual {v1, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 98
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->d:Landroid/widget/TextView;

    .line 100
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 101
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 102
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 103
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v2, v3, v4}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v2

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v3, v4, v5}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v3

    invoke-virtual {v0, v2, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 107
    invoke-virtual {v0, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 109
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->d:Landroid/widget/TextView;

    const-string v3, "\u4e0b\u8f7d\u51fa\u9519"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->d:Landroid/widget/TextView;

    const/high16 v3, 0x41d0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 111
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->c:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->e:Landroid/widget/ImageView;

    .line 116
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v0, v3, v4}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 118
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v3, v3, v8

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v0, v3, v4}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 119
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v0, v3, v4}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v0

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 123
    const/16 v0, 0xb

    invoke-virtual {v2, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 126
    :try_start_0
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "mmiap/image/vertical/logo1.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->c:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lsafiap/framework/ui/res/LayoutDialog;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private l()V
    .locals 13

    .prologue
    const v12, -0xcdcdce

    const/high16 v11, 0x4180

    const/16 v10, 0xa

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 139
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->f:Landroid/widget/RelativeLayout;

    .line 140
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 141
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->f:Landroid/widget/RelativeLayout;

    const v1, -0x242425

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 142
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v1, v2, v3}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 145
    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 146
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 148
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    .line 149
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    const v2, -0x242425

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 150
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 153
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 154
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->f:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->g:Landroid/widget/TextView;

    .line 158
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 160
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 161
    const/high16 v2, 0x41c8

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 163
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 164
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v4, v4, v10

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v3, v4, v5}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v3

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v4, v5, v6}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v4

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v6, v6, v10

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v5, v6, v7}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v5

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v6, v8, v7}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 170
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->r:Landroid/widget/TextView;

    .line 176
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 178
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 179
    const/high16 v2, 0x41c8

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 181
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->r:Landroid/widget/TextView;

    const-string v3, "\u5347\u7ea7\u65b0\u7248\u672c\uff0c\u66f4\u4fbf\u6377\uff0c\u66f4\u5b89\u5168\u5730\u4f7f\u7528\u8bdd\u8d39\u8fdb\u884c\u5feb\u6377\u652f\u4ed8\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 183
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->r:Landroid/widget/TextView;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v4, v4, v10

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v3, v4, v5}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v3

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v4, v5, v6}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v4

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v6, v6, v10

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v5, v6, v7}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v5

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v6, v8, v7}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 189
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    .line 197
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 198
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 199
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 200
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 201
    const/high16 v2, 0x420c

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 202
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v3, v4, v5}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v3

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v4, v5, v6}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v4

    invoke-virtual {v2, v3, v8, v4, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 206
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->w:Landroid/widget/TextView;

    .line 209
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 210
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 211
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 212
    const/high16 v2, 0x41f0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 213
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->w:Landroid/widget/TextView;

    const-string v3, "\u4e0b\u8f7d\u8fdb\u5ea6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 215
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    .line 219
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 220
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 221
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 223
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 225
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 226
    const/high16 v2, 0x41a0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 227
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v3, v10, v4}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v3

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v4, v10, v5}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v4

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v5, v10, v6}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v5

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v6, v10, v7}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 232
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->x:Landroid/widget/TextView;

    .line 235
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 236
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 237
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 238
    const/high16 v2, 0x41a0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 239
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->x:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    new-instance v1, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    .line 253
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 254
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 255
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v2, v3, v4}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 256
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 257
    const/high16 v2, 0x41b0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 261
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 262
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    const v3, -0xfea353

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 263
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    const-string v3, "\u4e0d\u518d\u63d0\u9192"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 265
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v3, v4, v5}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v3

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v6, 0xd

    aget v5, v5, v6

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v4, v5, v6}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v8, v8}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 269
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    new-instance v3, Lsafiap/framework/ui/res/a;

    invoke-direct {v3, p0}, Lsafiap/framework/ui/res/a;-><init>(Lsafiap/framework/ui/res/LayoutDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 278
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    .line 284
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 285
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 286
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 287
    const/high16 v2, 0x41b0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 289
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    const-string v3, "\u60a8\u9700\u8981\u5347\u7ea7\u6b64\u7248\u672c\u624d\u80fd\u4f7f\u7528\u652f\u4ed8\u670d\u52a1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 291
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    const v3, -0xfea353

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v4, v4, v10

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v3, v4, v5}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v3

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v6, 0xd

    aget v5, v5, v6

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v4, v5, v6}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v4

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    aget v6, v6, v10

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v5, v6, v7}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v5

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v6, v8, v7}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 296
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->p:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lsafiap/framework/ui/res/LayoutDialog;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    return-void
.end method

.method private m()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 309
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->h:Landroid/widget/RelativeLayout;

    .line 310
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 311
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 313
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->a:Landroid/view/WindowManager;

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->n:[I

    const/16 v3, 0x8

    aget v2, v2, v3

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->o:Landroid/content/res/Configuration;

    invoke-static {v1, v2, v3}, Lsafiap/framework/ui/res/h;->a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 314
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 315
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 318
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->i:Landroid/widget/LinearLayout;

    .line 319
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->i:Landroid/widget/LinearLayout;

    const v2, -0x3c3c3d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 320
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 321
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 322
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 323
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 324
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->h:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    .line 328
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 329
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 331
    new-array v1, v7, [[I

    new-array v2, v6, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v6, [I

    const v3, 0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v6

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lsafiap/framework/ui/res/h;->a([[I[I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    .line 335
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    new-instance v2, Lsafiap/framework/ui/res/b;

    invoke-direct {v2, p0}, Lsafiap/framework/ui/res/b;-><init>(Lsafiap/framework/ui/res/LayoutDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 348
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 349
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 350
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 352
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    const-string v3, "\u7acb\u5373\u5347\u7ea7"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 354
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->i:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 360
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 361
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 363
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 364
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 365
    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    .line 370
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 371
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 373
    new-array v1, v7, [[I

    new-array v2, v6, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v6, [I

    const v3, 0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v6

    new-array v2, v7, [I

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Lsafiap/framework/ui/res/h;->a([[I[I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    .line 377
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    new-instance v2, Lsafiap/framework/ui/res/c;

    invoke-direct {v2, p0}, Lsafiap/framework/ui/res/c;-><init>(Lsafiap/framework/ui/res/LayoutDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 391
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 392
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 393
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 395
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 397
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialog;->i:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    iget-object v1, p0, Lsafiap/framework/ui/res/LayoutDialog;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lsafiap/framework/ui/res/LayoutDialog;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    return-void

    .line 331
    nop

    :array_0
    .array-data 0x4
        0x88t 0x88t 0x8at 0xfft
        0x6dt 0x6ct 0x6et 0xfft
    .end array-data

    .line 373
    :array_1
    .array-data 0x4
        0x88t 0x88t 0x8at 0xfft
        0x6dt 0x6ct 0x6et 0xfft
    .end array-data
.end method

.method private n()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->k:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method public final c()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public final d()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method public final e()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->t:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public final f()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->u:Z

    return v0
.end method

.method public final h()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public final i()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->q:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final j()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public setOnDialogCancelListener(Lsafiap/framework/ui/res/LayoutDialog$a;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lsafiap/framework/ui/res/LayoutDialog;->z:Lsafiap/framework/ui/res/LayoutDialog$a;

    .line 417
    return-void
.end method

.method public setOnDialogConfirmListener(Lsafiap/framework/ui/res/LayoutDialog$a;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lsafiap/framework/ui/res/LayoutDialog;->y:Lsafiap/framework/ui/res/LayoutDialog$a;

    .line 413
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialog;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 444
    :cond_0
    return-void
.end method
