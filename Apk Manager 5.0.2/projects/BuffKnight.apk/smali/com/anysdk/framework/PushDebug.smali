.class public Lcom/anysdk/framework/PushDebug;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anysdk/framework/InterfacePush;


# static fields
.field protected static TAG:Ljava/lang/String;

.field private static isDebug:Z

.field private static mAdapter:Lcom/anysdk/framework/PushDebug;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/anysdk/framework/PushDebug;->mContext:Landroid/content/Context;

    const-string v0, "PushDebug"

    sput-object v0, Lcom/anysdk/framework/PushDebug;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/anysdk/framework/PushDebug;->mAdapter:Lcom/anysdk/framework/PushDebug;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/anysdk/framework/PushDebug;->isDebug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/anysdk/framework/PushDebug;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/anysdk/framework/PushDebug;->mAdapter:Lcom/anysdk/framework/PushDebug;

    return-void
.end method

.method protected static LogD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/anysdk/framework/PushDebug;->isDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anysdk/framework/PushDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget-object v0, Lcom/anysdk/framework/PushDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public closePush()V
    .locals 1

    const-string v0, "closePush() invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/PushDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public delAlias(Ljava/lang/String;)V
    .locals 1

    const-string v0, "delAlias(String alias) invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/PushDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public delTags(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delTags(List<String> tags) invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/PushDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

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

.method public setAlias(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setAlias(String alias) invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/PushDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    sput-boolean p1, Lcom/anysdk/framework/PushDebug;->isDebug:Z

    return-void
.end method

.method public setTags(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setTags(List<String> tags) invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/PushDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public startPush()V
    .locals 1

    const-string v0, "startPush() invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/PushDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method
