.class public Lcom/anysdk/framework/java/AnySDKPush;
.super Ljava/lang/Object;
.source "AnySDKPush.java"


# static fields
.field private static _instance:Lcom/anysdk/framework/java/AnySDKPush;

.field private static _listener:Lcom/anysdk/framework/java/AnySDKListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/anysdk/framework/java/AnySDKPush;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callFunction(Ljava/lang/String;)V
    .locals 0
    .parameter "functionName"

    .prologue
    .line 152
    invoke-static {p0}, Lcom/anysdk/framework/java/AnySDKPush;->nativeCallFunction(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public static getInstance()Lcom/anysdk/framework/java/AnySDKPush;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/anysdk/framework/java/AnySDKPush;->_instance:Lcom/anysdk/framework/java/AnySDKPush;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/anysdk/framework/java/AnySDKPush;

    invoke-direct {v0}, Lcom/anysdk/framework/java/AnySDKPush;-><init>()V

    sput-object v0, Lcom/anysdk/framework/java/AnySDKPush;->_instance:Lcom/anysdk/framework/java/AnySDKPush;

    .line 28
    :cond_0
    sget-object v0, Lcom/anysdk/framework/java/AnySDKPush;->_instance:Lcom/anysdk/framework/java/AnySDKPush;

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

.method private static native nativeClosePush()V
.end method

.method private static native nativeDelAlias(Ljava/lang/String;)V
.end method

.method private static native nativeDelTags(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeGetPluginName()Ljava/lang/String;
.end method

.method private static native nativeGetPluginVersion()Ljava/lang/String;
.end method

.method private static native nativeGetSDKVersion()Ljava/lang/String;
.end method

.method private static native nativeSetAlias(Ljava/lang/String;)V
.end method

.method private static native nativeSetDebugMode(Z)V
.end method

.method private static native nativeSetTags(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeStartPush()V
.end method

.method private static onCallBack(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 297
    sget-object v0, Lcom/anysdk/framework/java/AnySDKPush;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    invoke-interface {v0, p0, p1}, Lcom/anysdk/framework/java/AnySDKListener;->onCallBack(ILjava/lang/String;)V

    .line 298
    return-void
.end method

.method public static setAlias(Ljava/lang/String;)V
    .locals 0
    .parameter "alias"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/anysdk/framework/java/AnySDKPush;->nativeSetAlias(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static startPush()V
    .locals 0

    .prologue
    .line 47
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKPush;->nativeStartPush()V

    .line 48
    return-void
.end method


# virtual methods
.method public callBoolFunction(Ljava/lang/String;)Z
    .locals 1
    .parameter "functionName"

    .prologue
    .line 181
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKPush;->nativeCallBoolFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs callBoolFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)Z
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 195
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 196
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 200
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKPush;->nativeCallBoolFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)Z

    move-result v2

    return v2

    .line 196
    :cond_0
    aget-object v0, p2, v2

    .line 198
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callFloatFunction(Ljava/lang/String;)F
    .locals 1
    .parameter "functionName"

    .prologue
    .line 244
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKPush;->nativeCallFloatFunction(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public varargs callFloatFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)F
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 257
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 258
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 262
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKPush;->nativeCallFloatFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)F

    move-result v2

    return v2

    .line 258
    :cond_0
    aget-object v0, p2, v2

    .line 260
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public varargs callFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)V
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 164
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 165
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 169
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKPush;->nativeCallFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)V

    .line 170
    return-void

    .line 165
    :cond_0
    aget-object v0, p2, v2

    .line 167
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callIntFunction(Ljava/lang/String;)I
    .locals 1
    .parameter "functionName"

    .prologue
    .line 213
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKPush;->nativeCallIntFunction(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs callIntFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)I
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 226
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 227
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 231
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKPush;->nativeCallIntFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v2

    return v2

    .line 227
    :cond_0
    aget-object v0, p2, v2

    .line 229
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callStringFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "functionName"

    .prologue
    .line 275
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKPush;->nativeCallStringFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs callStringFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)Ljava/lang/String;
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 288
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 289
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 293
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKPush;->nativeCallStringFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 289
    :cond_0
    aget-object v0, p2, v2

    .line 291
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public closePush()V
    .locals 0

    .prologue
    .line 59
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKPush;->nativeClosePush()V

    .line 60
    return-void
.end method

.method public delAlias(Ljava/lang/String;)V
    .locals 0
    .parameter "alias"

    .prologue
    .line 83
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKPush;->nativeDelAlias(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public delTags(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKPush;->nativeDelTags(Ljava/util/ArrayList;)V

    .line 108
    return-void
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKPush;->nativeGetPluginName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKPush;->nativeGetPluginVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKPush;->nativeGetSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDebugMode(Z)V
    .locals 0
    .parameter "bDebug"

    .prologue
    .line 143
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKPush;->nativeSetDebugMode(Z)V

    .line 144
    return-void
.end method

.method public setListener(Lcom/anysdk/framework/java/AnySDKListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 35
    sput-object p1, Lcom/anysdk/framework/java/AnySDKPush;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    .line 36
    return-void
.end method

.method public setTags(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKPush;->nativeSetTags(Ljava/util/ArrayList;)V

    .line 96
    return-void
.end method
