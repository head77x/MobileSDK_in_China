.class public final Lsafiap/framework/ui/res/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x320

.field private static final b:I = 0x1e0

.field private static c:Lsafiap/framework/util/MyLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "SafRes"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/WindowManager;ILandroid/content/res/Configuration;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    .line 40
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 41
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 42
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 43
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0x320

    .line 47
    :goto_0
    return v0

    .line 44
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 45
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0x1e0

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a([[I[I)Landroid/graphics/drawable/StateListDrawable;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 25
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 30
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 31
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    aget v3, p1, v0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 32
    aget-object v3, p0, v0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 34
    goto :goto_0
.end method
