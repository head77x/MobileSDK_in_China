.class public Lcom/anysdk/framework/AdsDebug;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anysdk/framework/InterfaceAds;


# static fields
.field protected static TAG:Ljava/lang/String;

.field private static isDebug:Z

.field private static mAdapter:Lcom/anysdk/framework/AdsDebug;

.field private static mContext:Landroid/content/Context;

.field private static popupWindow:Landroid/widget/PopupWindow;


# instance fields
.field private imageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/anysdk/framework/AdsDebug;->mContext:Landroid/content/Context;

    const-string v0, "AdsDebug"

    sput-object v0, Lcom/anysdk/framework/AdsDebug;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/anysdk/framework/AdsDebug;->mAdapter:Lcom/anysdk/framework/AdsDebug;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/anysdk/framework/AdsDebug;->isDebug:Z

    sput-object v1, Lcom/anysdk/framework/AdsDebug;->popupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anysdk/framework/AdsDebug;->imageView:Landroid/widget/ImageView;

    sput-object p1, Lcom/anysdk/framework/AdsDebug;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/anysdk/framework/AdsDebug;->mAdapter:Lcom/anysdk/framework/AdsDebug;

    return-void
.end method

.method protected static LogD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/anysdk/framework/AdsDebug;->isDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anysdk/framework/AdsDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget-object v0, Lcom/anysdk/framework/AdsDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/AdsDebug;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/PopupWindow;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/AdsDebug;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    sput-object p0, Lcom/anysdk/framework/AdsDebug;->popupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/anysdk/framework/AdsDebug;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/anysdk/framework/AdsDebug;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/AdsDebug$1;

    invoke-direct {v0, p0, p1}, Lcom/anysdk/framework/AdsDebug$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.3"

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.3"

    return-object v0
.end method

.method public hideAds(I)V
    .locals 1

    const-string v0, "hideAds invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/AdsDebug;->LogD(Ljava/lang/String;)V

    new-instance v0, Lcom/anysdk/framework/AdsDebug$3;

    invoke-direct {v0, p0}, Lcom/anysdk/framework/AdsDebug$3;-><init>(Lcom/anysdk/framework/AdsDebug;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isSupportFunction(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public queryPoints()D
    .locals 2

    const-string v0, "debug not support query points"

    invoke-static {v0}, Lcom/anysdk/framework/AdsDebug;->LogD(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setDebugMode(Z)V
    .locals 0

    sput-boolean p1, Lcom/anysdk/framework/AdsDebug;->isDebug:Z

    return-void
.end method

.method public showAds(I)V
    .locals 1

    const-string v0, "showAds invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/AdsDebug;->LogD(Ljava/lang/String;)V

    new-instance v0, Lcom/anysdk/framework/AdsDebug$2;

    invoke-direct {v0, p0}, Lcom/anysdk/framework/AdsDebug$2;-><init>(Lcom/anysdk/framework/AdsDebug;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public spendPoints(I)V
    .locals 1

    const-string v0, "debug not support spend points"

    invoke-static {v0}, Lcom/anysdk/framework/AdsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method
