.class public Lcom/anysdk/framework/java/AnySDKIAP;
.super Ljava/lang/Object;
.source "AnySDKIAP.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnySDKIAP"

.field private static _instance:Lcom/anysdk/framework/java/AnySDKIAP;

.field private static _listener:Lcom/anysdk/framework/java/AnySDKListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/anysdk/framework/java/AnySDKIAP;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/anysdk/framework/java/AnySDKIAP;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/anysdk/framework/java/AnySDKIAP;->_instance:Lcom/anysdk/framework/java/AnySDKIAP;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/anysdk/framework/java/AnySDKIAP;

    invoke-direct {v0}, Lcom/anysdk/framework/java/AnySDKIAP;-><init>()V

    sput-object v0, Lcom/anysdk/framework/java/AnySDKIAP;->_instance:Lcom/anysdk/framework/java/AnySDKIAP;

    .line 26
    :cond_0
    sget-object v0, Lcom/anysdk/framework/java/AnySDKIAP;->_instance:Lcom/anysdk/framework/java/AnySDKIAP;

    return-object v0
.end method

.method private static native nativeCallBoolFunction(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeCallBoolFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/anysdk/framework/java/AnySDKParam;",
            ">;)Z"
        }
    .end annotation
.end method

.method private static native nativeCallFloatFunction(Ljava/lang/String;Ljava/lang/String;)F
.end method

.method private static native nativeCallFloatFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/anysdk/framework/java/AnySDKParam;",
            ">;)F"
        }
    .end annotation
.end method

.method private static native nativeCallFunction(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeCallFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/anysdk/framework/java/AnySDKParam;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeCallIntFunction(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeCallIntFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/anysdk/framework/java/AnySDKParam;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native nativeCallStringFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeCallStringFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/anysdk/framework/java/AnySDKParam;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method private static native nativeGetOrderId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetPluginId()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeGetPluginName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetPluginVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetSDKVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativePayForProduct(Ljava/lang/String;Ljava/util/Map;)V
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

.method private static native nativeResetPayState()V
.end method

.method private static native nativeSetDebugMode(Z)V
.end method

.method private static onCallBack(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 259
    sget-object v0, Lcom/anysdk/framework/java/AnySDKIAP;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    invoke-interface {v0, p0, p1}, Lcom/anysdk/framework/java/AnySDKListener;->onCallBack(ILjava/lang/String;)V

    .line 260
    return-void
.end method


# virtual methods
.method public callBoolFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pluginID"
    .parameter "functionName"

    .prologue
    .line 144
    invoke-static {p1, p2}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeCallBoolFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs callBoolFunction(Ljava/lang/String;Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)Z
    .locals 4
    .parameter "pluginID"
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 158
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 159
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 163
    invoke-static {p1, p2, v1}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeCallBoolFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Z

    move-result v2

    return v2

    .line 159
    :cond_0
    aget-object v0, p3, v2

    .line 161
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callFloatFunction(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .parameter "pluginID"
    .parameter "functionName"

    .prologue
    .line 207
    invoke-static {p1, p2}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeCallFloatFunction(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public varargs callFloatFunction(Ljava/lang/String;Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)F
    .locals 4
    .parameter "pluginID"
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 220
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 221
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 225
    invoke-static {p1, p2, v1}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeCallFloatFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)F

    move-result v2

    return v2

    .line 221
    :cond_0
    aget-object v0, p3, v2

    .line 223
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callFunction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "pluginID"
    .parameter "functionName"

    .prologue
    .line 114
    invoke-static {p1, p2}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeCallFunction(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public varargs callFunction(Ljava/lang/String;Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)V
    .locals 4
    .parameter "pluginID"
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 127
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 128
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 132
    invoke-static {p1, p2, v1}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeCallFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    .line 133
    return-void

    .line 128
    :cond_0
    aget-object v0, p3, v2

    .line 130
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callIntFunction(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "pluginID"
    .parameter "functionName"

    .prologue
    .line 176
    invoke-static {p1, p2}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeCallIntFunction(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs callIntFunction(Ljava/lang/String;Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)I
    .locals 4
    .parameter "pluginID"
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 189
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 190
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 194
    invoke-static {p1, p2, v1}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeCallIntFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v2

    return v2

    .line 190
    :cond_0
    aget-object v0, p3, v2

    .line 192
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callStringFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "pluginID"
    .parameter "functionName"

    .prologue
    .line 238
    invoke-static {p1, p2}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeCallStringFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs callStringFunction(Ljava/lang/String;Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)Ljava/lang/String;
    .locals 4
    .parameter "pluginID"
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 251
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 252
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 256
    invoke-static {p1, p2, v1}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeCallStringFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 252
    :cond_0
    aget-object v0, p3, v2

    .line 254
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getOrderId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "pluginID"

    .prologue
    .line 39
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeGetOrderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeGetPluginId()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPluginName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "pluginID"

    .prologue
    .line 78
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeGetPluginName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "pluginID"

    .prologue
    .line 87
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeGetPluginVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "pluginID"

    .prologue
    .line 96
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeGetSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public payForProduct(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "pluginID"
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
    .line 48
    .local p2, orders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/anysdk/framework/java/AnySDKIAP;->nativePayForProduct(Ljava/lang/String;Ljava/util/Map;)V

    .line 49
    return-void
.end method

.method public resetPayState()V
    .locals 0

    .prologue
    .line 61
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeResetPayState()V

    .line 62
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0
    .parameter "bDebug"

    .prologue
    .line 105
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKIAP;->nativeSetDebugMode(Z)V

    .line 106
    return-void
.end method

.method public setListener(Lcom/anysdk/framework/java/AnySDKListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 30
    sput-object p1, Lcom/anysdk/framework/java/AnySDKIAP;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    .line 31
    return-void
.end method
