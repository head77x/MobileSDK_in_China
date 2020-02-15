.class public Lcom/anysdk/framework/java/AnySDKAds;
.super Ljava/lang/Object;
.source "AnySDKAds.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnySDKAds"

.field private static _instance:Lcom/anysdk/framework/java/AnySDKAds;

.field private static _listener:Lcom/anysdk/framework/java/AnySDKListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/anysdk/framework/java/AnySDKAds;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/anysdk/framework/java/AnySDKAds;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/anysdk/framework/java/AnySDKAds;->_instance:Lcom/anysdk/framework/java/AnySDKAds;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/anysdk/framework/java/AnySDKAds;

    invoke-direct {v0}, Lcom/anysdk/framework/java/AnySDKAds;-><init>()V

    sput-object v0, Lcom/anysdk/framework/java/AnySDKAds;->_instance:Lcom/anysdk/framework/java/AnySDKAds;

    .line 25
    :cond_0
    sget-object v0, Lcom/anysdk/framework/java/AnySDKAds;->_instance:Lcom/anysdk/framework/java/AnySDKAds;

    return-object v0
.end method

.method public static isSupportFunction(Ljava/lang/String;)Z
    .locals 1
    .parameter "functionName"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/anysdk/framework/java/AnySDKAds;->nativedoesSupportFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
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

.method private static native nativeHideAds(I)V
.end method

.method private static native nativeQueryPoints()F
.end method

.method private static native nativeSetDebugMode(Z)V
.end method

.method private static native nativeShowAds(I)V
.end method

.method private static native nativeSpendPoints(I)V
.end method

.method private static native nativedoesSupportFunction(Ljava/lang/String;)Z
.end method

.method private static onCallBack(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 242
    sget-object v0, Lcom/anysdk/framework/java/AnySDKAds;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    invoke-interface {v0, p0, p1}, Lcom/anysdk/framework/java/AnySDKListener;->onCallBack(ILjava/lang/String;)V

    .line 243
    return-void
.end method


# virtual methods
.method public callBoolFunction(Ljava/lang/String;)Z
    .locals 1
    .parameter "functionName"

    .prologue
    .line 126
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAds;->nativeCallBoolFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs callBoolFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)Z
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 140
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 141
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 145
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKAds;->nativeCallBoolFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)Z

    move-result v2

    return v2

    .line 141
    :cond_0
    aget-object v0, p2, v2

    .line 143
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callFloatFunction(Ljava/lang/String;)F
    .locals 1
    .parameter "functionName"

    .prologue
    .line 189
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAds;->nativeCallFloatFunction(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public varargs callFloatFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)F
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 202
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 203
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 207
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKAds;->nativeCallFloatFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)F

    move-result v2

    return v2

    .line 203
    :cond_0
    aget-object v0, p2, v2

    .line 205
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callFunction(Ljava/lang/String;)V
    .locals 0
    .parameter "functionName"

    .prologue
    .line 97
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAds;->nativeCallFunction(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public varargs callFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)V
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 109
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 110
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 114
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKAds;->nativeCallFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)V

    .line 115
    return-void

    .line 110
    :cond_0
    aget-object v0, p2, v2

    .line 112
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callIntFunction(Ljava/lang/String;)I
    .locals 1
    .parameter "functionName"

    .prologue
    .line 158
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAds;->nativeCallIntFunction(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs callIntFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)I
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 171
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 172
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 176
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKAds;->nativeCallIntFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v2

    return v2

    .line 172
    :cond_0
    aget-object v0, p2, v2

    .line 174
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callStringFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "functionName"

    .prologue
    .line 220
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAds;->nativeCallStringFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs callStringFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)Ljava/lang/String;
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 233
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 234
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 238
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKAds;->nativeCallStringFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 234
    :cond_0
    aget-object v0, p2, v2

    .line 236
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAds;->nativeGetPluginName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAds;->nativeGetPluginVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAds;->nativeGetSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideAds(I)V
    .locals 0
    .parameter "adsType"

    .prologue
    .line 40
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAds;->nativeHideAds(I)V

    .line 41
    return-void
.end method

.method public queryPoints()F
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAds;->nativeQueryPoints()F

    move-result v0

    return v0
.end method

.method public setDebugMode(Z)V
    .locals 0
    .parameter "bDebug"

    .prologue
    .line 88
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAds;->nativeSetDebugMode(Z)V

    .line 89
    return-void
.end method

.method public setListener(Lcom/anysdk/framework/java/AnySDKListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 32
    sput-object p1, Lcom/anysdk/framework/java/AnySDKAds;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    .line 33
    return-void
.end method

.method public showAds(I)V
    .locals 0
    .parameter "adsType"

    .prologue
    .line 36
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKAds;->nativeShowAds(I)V

    .line 37
    return-void
.end method

.method public spendPoints(I)V
    .locals 0
    .parameter "points"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/anysdk/framework/java/AnySDKAds;->spendPoints(I)V

    .line 49
    return-void
.end method
