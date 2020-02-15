.class public Lcom/anysdk/framework/java/AnySDKUser;
.super Ljava/lang/Object;
.source "AnySDKUser.java"


# static fields
.field private static _instance:Lcom/anysdk/framework/java/AnySDKUser;

.field private static _listener:Lcom/anysdk/framework/java/AnySDKListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/anysdk/framework/java/AnySDKUser;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/anysdk/framework/java/AnySDKUser;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/anysdk/framework/java/AnySDKUser;->_instance:Lcom/anysdk/framework/java/AnySDKUser;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/anysdk/framework/java/AnySDKUser;

    invoke-direct {v0}, Lcom/anysdk/framework/java/AnySDKUser;-><init>()V

    sput-object v0, Lcom/anysdk/framework/java/AnySDKUser;->_instance:Lcom/anysdk/framework/java/AnySDKUser;

    .line 26
    :cond_0
    sget-object v0, Lcom/anysdk/framework/java/AnySDKUser;->_instance:Lcom/anysdk/framework/java/AnySDKUser;

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

.method private static native nativeGetPluginId()Ljava/lang/String;
.end method

.method private static native nativeGetPluginName()Ljava/lang/String;
.end method

.method private static native nativeGetPluginVersion()Ljava/lang/String;
.end method

.method private static native nativeGetSDKVersion()Ljava/lang/String;
.end method

.method private static native nativeGetUserID()Ljava/lang/String;
.end method

.method private static native nativeIsSupportFunction(Ljava/lang/String;)Z
.end method

.method private static native nativeLogin()V
.end method

.method private static native nativeLoginParam(Ljava/lang/String;)V
.end method

.method private static native nativeSetDebugMode(Z)V
.end method

.method private static onCallBack(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 263
    sget-object v0, Lcom/anysdk/framework/java/AnySDKUser;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    invoke-interface {v0, p0, p1}, Lcom/anysdk/framework/java/AnySDKListener;->onCallBack(ILjava/lang/String;)V

    .line 264
    return-void
.end method


# virtual methods
.method public callBoolFunction(Ljava/lang/String;)Z
    .locals 1
    .parameter "functionName"

    .prologue
    .line 147
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKUser;->nativeCallBoolFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs callBoolFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)Z
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 161
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 162
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 166
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKUser;->nativeCallBoolFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)Z

    move-result v2

    return v2

    .line 162
    :cond_0
    aget-object v0, p2, v2

    .line 164
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callFloatFunction(Ljava/lang/String;)F
    .locals 1
    .parameter "functionName"

    .prologue
    .line 210
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKUser;->nativeCallFloatFunction(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public varargs callFloatFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)F
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 223
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 224
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 228
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKUser;->nativeCallFloatFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)F

    move-result v2

    return v2

    .line 224
    :cond_0
    aget-object v0, p2, v2

    .line 226
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callFunction(Ljava/lang/String;)V
    .locals 0
    .parameter "functionName"

    .prologue
    .line 118
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKUser;->nativeCallFunction(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public varargs callFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)V
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 130
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 131
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 135
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKUser;->nativeCallFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)V

    .line 136
    return-void

    .line 131
    :cond_0
    aget-object v0, p2, v2

    .line 133
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callIntFunction(Ljava/lang/String;)I
    .locals 1
    .parameter "functionName"

    .prologue
    .line 179
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKUser;->nativeCallIntFunction(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs callIntFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)I
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 192
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 193
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 197
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKUser;->nativeCallIntFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v2

    return v2

    .line 193
    :cond_0
    aget-object v0, p2, v2

    .line 195
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callStringFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "functionName"

    .prologue
    .line 241
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKUser;->nativeCallStringFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs callStringFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)Ljava/lang/String;
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 254
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 255
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 259
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKUser;->nativeCallStringFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 255
    :cond_0
    aget-object v0, p2, v2

    .line 257
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPluginId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKUser;->nativeGetPluginId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKUser;->nativeGetPluginName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKUser;->nativeGetPluginVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKUser;->nativeGetSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKUser;->nativeGetUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupportFunction(Ljava/lang/String;)Z
    .locals 1
    .parameter "functionName"

    .prologue
    .line 109
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKUser;->nativeIsSupportFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public login()V
    .locals 0

    .prologue
    .line 33
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKUser;->nativeLogin()V

    .line 34
    return-void
.end method

.method public login(Ljava/lang/String;)V
    .locals 0
    .parameter "serverId"

    .prologue
    .line 40
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKUser;->nativeLoginParam(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0
    .parameter "bDebug"

    .prologue
    .line 99
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKUser;->nativeSetDebugMode(Z)V

    .line 100
    return-void
.end method

.method public setListener(Lcom/anysdk/framework/java/AnySDKListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 46
    sput-object p1, Lcom/anysdk/framework/java/AnySDKUser;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    .line 47
    return-void
.end method
