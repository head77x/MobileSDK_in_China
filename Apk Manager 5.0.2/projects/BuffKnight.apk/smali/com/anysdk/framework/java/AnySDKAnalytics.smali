.class public Lcom/anysdk/framework/java/AnySDKAnalytics;
.super Ljava/lang/Object;
.source "AnySDKAnalytics.java"


# static fields
.field private static instance:Lcom/anysdk/framework/java/AnySDKAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/anysdk/framework/java/AnySDKAnalytics;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/anysdk/framework/java/AnySDKAnalytics;->instance:Lcom/anysdk/framework/java/AnySDKAnalytics;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/anysdk/framework/java/AnySDKAnalytics;

    invoke-direct {v0}, Lcom/anysdk/framework/java/AnySDKAnalytics;-><init>()V

    sput-object v0, Lcom/anysdk/framework/java/AnySDKAnalytics;->instance:Lcom/anysdk/framework/java/AnySDKAnalytics;

    .line 24
    :cond_0
    sget-object v0, Lcom/anysdk/framework/java/AnySDKAnalytics;->instance:Lcom/anysdk/framework/java/AnySDKAnalytics;

    return-object v0
.end method

.method private static native nativeCallBoolFunction(Ljava/lang/String;)Z
.end method

.method private static native nativeCallBoolFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/anysdk/framework/java/AnySDKParam;",
            ">;)Z"
        }
    .end annotation
.end method

.method private static native nativeCallFloatFunction(Ljava/lang/String;)F
.end method

.method private static native nativeCallFloatFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/anysdk/framework/java/AnySDKParam;",
            ">;)F"
        }
    .end annotation
.end method

.method private static native nativeCallFunction(Ljava/lang/String;)V
.end method

.method private static native nativeCallFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/anysdk/framework/java/AnySDKParam;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeCallIntFunction(Ljava/lang/String;)I
.end method

.method private static native nativeCallIntFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/anysdk/framework/java/AnySDKParam;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native nativeCallStringFunction(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeCallStringFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/anysdk/framework/java/AnySDKParam;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method private static native nativeGetPluginName()Ljava/lang/String;
.end method

.method private static native nativeGetPluginVersion()Ljava/lang/String;
.end method

.method private static native nativeGetSDKVersion()Ljava/lang/String;
.end method

.method private static native nativeLogError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeLogEvent(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeLogTimedEventBegin(Ljava/lang/String;)V
.end method

.method private static native nativeLogTimedEventEnd(Ljava/lang/String;)V
.end method

.method private static native nativeSetCaptureUncaughtException(Z)V
.end method

.method private static native nativeSetDebugMode(Z)V
.end method

.method private static native nativeSetSessionContinueMillis(J)V
.end method

.method private static native nativeStartSession()V
.end method

.method private static native nativeStopSession()V
.end method


# virtual methods
.method public callBoolFunction(Ljava/lang/String;)Z
    .locals 1
    .parameter "functionName"

    .prologue
    .line 65
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeCallBoolFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs callBoolFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)Z
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 79
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 80
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 84
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeCallBoolFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)Z

    move-result v2

    return v2

    .line 80
    :cond_0
    aget-object v0, p2, v2

    .line 82
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callFloatFunction(Ljava/lang/String;)F
    .locals 1
    .parameter "functionName"

    .prologue
    .line 128
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeCallFloatFunction(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public varargs callFloatFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)F
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 141
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 142
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 146
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeCallFloatFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)F

    move-result v2

    return v2

    .line 142
    :cond_0
    aget-object v0, p2, v2

    .line 144
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callFunction(Ljava/lang/String;)V
    .locals 0
    .parameter "functionName"

    .prologue
    .line 44
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeCallFunction(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public varargs callFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)V
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 48
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 49
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 53
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeCallFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)V

    .line 54
    return-void

    .line 49
    :cond_0
    aget-object v0, p2, v2

    .line 51
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callIntFunction(Ljava/lang/String;)I
    .locals 1
    .parameter "functionName"

    .prologue
    .line 97
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeCallIntFunction(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs callIntFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)I
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 110
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 111
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 115
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeCallIntFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v2

    return v2

    .line 111
    :cond_0
    aget-object v0, p2, v2

    .line 113
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callStringFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "functionName"

    .prologue
    .line 159
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeCallStringFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs callStringFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)Ljava/lang/String;
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 172
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 173
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 177
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeCallStringFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 173
    :cond_0
    aget-object v0, p2, v2

    .line 175
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeGetPluginName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeGetPluginVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeGetSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "errorId"
    .parameter "message"

    .prologue
    .line 193
    invoke-static {p1, p2}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "eventId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p2, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeLogEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 198
    return-void
.end method

.method public logTimedEventBegin(Ljava/lang/String;)V
    .locals 0
    .parameter "eventId"

    .prologue
    .line 201
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeLogTimedEventBegin(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public logTimedEventEnd(Ljava/lang/String;)V
    .locals 0
    .parameter "eventId"

    .prologue
    .line 205
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeLogTimedEventEnd(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public setCaptureUncaughtException(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 209
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeSetCaptureUncaughtException(Z)V

    .line 210
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0
    .parameter "bDebug"

    .prologue
    .line 40
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeSetDebugMode(Z)V

    .line 41
    return-void
.end method

.method public setSessionContinueMillis(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 189
    invoke-static {p1, p2}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeSetSessionContinueMillis(J)V

    .line 190
    return-void
.end method

.method public startSession()V
    .locals 0

    .prologue
    .line 181
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeStartSession()V

    .line 182
    return-void
.end method

.method public stopSession()V
    .locals 0

    .prologue
    .line 185
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAnalytics;->nativeStopSession()V

    .line 186
    return-void
.end method
