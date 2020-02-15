.class public Lcom/anysdk/framework/java/AnySDKShare;
.super Ljava/lang/Object;
.source "AnySDKShare.java"


# static fields
.field private static _instance:Lcom/anysdk/framework/java/AnySDKShare;

.field private static _listener:Lcom/anysdk/framework/java/AnySDKListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/anysdk/framework/java/AnySDKShare;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/anysdk/framework/java/AnySDKShare;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/anysdk/framework/java/AnySDKShare;->_instance:Lcom/anysdk/framework/java/AnySDKShare;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/anysdk/framework/java/AnySDKShare;

    invoke-direct {v0}, Lcom/anysdk/framework/java/AnySDKShare;-><init>()V

    sput-object v0, Lcom/anysdk/framework/java/AnySDKShare;->_instance:Lcom/anysdk/framework/java/AnySDKShare;

    .line 25
    :cond_0
    sget-object v0, Lcom/anysdk/framework/java/AnySDKShare;->_instance:Lcom/anysdk/framework/java/AnySDKShare;

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

.method private static native nativeSetDebugMode(Z)V
.end method

.method private static native nativeShare(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static onCallBack(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 225
    sget-object v0, Lcom/anysdk/framework/java/AnySDKShare;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    invoke-interface {v0, p0, p1}, Lcom/anysdk/framework/java/AnySDKListener;->onCallBack(ILjava/lang/String;)V

    .line 226
    return-void
.end method

.method public static share(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, datas:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/anysdk/framework/java/AnySDKShare;->nativeShare(Ljava/util/Map;)V

    .line 37
    return-void
.end method


# virtual methods
.method public callBoolFunction(Ljava/lang/String;)Z
    .locals 1
    .parameter "functionName"

    .prologue
    .line 110
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKShare;->nativeCallBoolFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs callBoolFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)Z
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 124
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 125
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 129
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKShare;->nativeCallBoolFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)Z

    move-result v2

    return v2

    .line 125
    :cond_0
    aget-object v0, p2, v2

    .line 127
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callFloatFunction(Ljava/lang/String;)F
    .locals 1
    .parameter "functionName"

    .prologue
    .line 173
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKShare;->nativeCallFloatFunction(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public varargs callFloatFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)F
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 186
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 187
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 191
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKShare;->nativeCallFloatFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)F

    move-result v2

    return v2

    .line 187
    :cond_0
    aget-object v0, p2, v2

    .line 189
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callFunction(Ljava/lang/String;)V
    .locals 0
    .parameter "functionName"

    .prologue
    .line 81
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKShare;->nativeCallFunction(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public varargs callFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)V
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 93
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 94
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 98
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKShare;->nativeCallFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)V

    .line 99
    return-void

    .line 94
    :cond_0
    aget-object v0, p2, v2

    .line 96
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callIntFunction(Ljava/lang/String;)I
    .locals 1
    .parameter "functionName"

    .prologue
    .line 142
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKShare;->nativeCallIntFunction(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs callIntFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)I
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 155
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 156
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 160
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKShare;->nativeCallIntFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v2

    return v2

    .line 156
    :cond_0
    aget-object v0, p2, v2

    .line 158
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callStringFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "functionName"

    .prologue
    .line 204
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKShare;->nativeCallStringFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs callStringFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)Ljava/lang/String;
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 217
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 218
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 222
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKShare;->nativeCallStringFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 218
    :cond_0
    aget-object v0, p2, v2

    .line 220
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKShare;->nativeGetPluginName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKShare;->nativeGetPluginVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKShare;->nativeGetSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDebugMode(Z)V
    .locals 0
    .parameter "bDebug"

    .prologue
    .line 72
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKShare;->nativeSetDebugMode(Z)V

    .line 73
    return-void
.end method

.method public setListener(Lcom/anysdk/framework/java/AnySDKListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 32
    sput-object p1, Lcom/anysdk/framework/java/AnySDKShare;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    .line 33
    return-void
.end method
