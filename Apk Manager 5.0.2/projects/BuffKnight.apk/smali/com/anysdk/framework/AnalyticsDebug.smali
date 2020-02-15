.class public Lcom/anysdk/framework/AnalyticsDebug;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anysdk/framework/InterfaceAnalytics;


# static fields
.field protected static TAG:Ljava/lang/String;

.field private static isDebug:Z

.field private static mAdapter:Lcom/anysdk/framework/AnalyticsDebug;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/anysdk/framework/AnalyticsDebug;->mContext:Landroid/content/Context;

    const-string v0, "AnalyticsDebug"

    sput-object v0, Lcom/anysdk/framework/AnalyticsDebug;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/anysdk/framework/AnalyticsDebug;->mAdapter:Lcom/anysdk/framework/AnalyticsDebug;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/anysdk/framework/AnalyticsDebug;->isDebug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/anysdk/framework/AnalyticsDebug;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/anysdk/framework/AnalyticsDebug;->mAdapter:Lcom/anysdk/framework/AnalyticsDebug;

    return-void
.end method

.method protected static LogD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/anysdk/framework/AnalyticsDebug;->isDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anysdk/framework/AnalyticsDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget-object v0, Lcom/anysdk/framework/AnalyticsDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

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

.method public logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "logError(String errorId, String message) invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "logEvent(String eventId) invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "logEvent(String eventId, Hashtable<String, String> paramMap) invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public logTimedEventBegin(Ljava/lang/String;)V
    .locals 1

    const-string v0, "logTimedEventBegin(String eventId) invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public logTimedEventEnd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "logTimedEventEnd(String eventId) invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public setCaptureUncaughtException(Z)V
    .locals 1

    const-string v0, "delTags(List<String> tags) invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    sput-boolean p1, Lcom/anysdk/framework/AnalyticsDebug;->isDebug:Z

    return-void
.end method

.method public setSessionContinueMillis(I)V
    .locals 1

    const-string v0, "setSessionContinueMillis invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public startSession()V
    .locals 1

    const-string v0, "startSession invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public stopSession()V
    .locals 1

    const-string v0, "stopSession invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method
