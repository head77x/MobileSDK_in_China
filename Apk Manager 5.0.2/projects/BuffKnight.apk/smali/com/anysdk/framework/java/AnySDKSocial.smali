.class public Lcom/anysdk/framework/java/AnySDKSocial;
.super Ljava/lang/Object;
.source "AnySDKSocial.java"


# static fields
.field private static _instance:Lcom/anysdk/framework/java/AnySDKSocial;

.field private static _listener:Lcom/anysdk/framework/java/AnySDKListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/anysdk/framework/java/AnySDKSocial;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/anysdk/framework/java/AnySDKSocial;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/anysdk/framework/java/AnySDKSocial;->_instance:Lcom/anysdk/framework/java/AnySDKSocial;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/anysdk/framework/java/AnySDKSocial;

    invoke-direct {v0}, Lcom/anysdk/framework/java/AnySDKSocial;-><init>()V

    sput-object v0, Lcom/anysdk/framework/java/AnySDKSocial;->_instance:Lcom/anysdk/framework/java/AnySDKSocial;

    .line 25
    :cond_0
    sget-object v0, Lcom/anysdk/framework/java/AnySDKSocial;->_instance:Lcom/anysdk/framework/java/AnySDKSocial;

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeGetSDKVersion()Ljava/lang/String;

    move-result-object v0

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

.method private static native nativeShowAchievements()V
.end method

.method private static native nativeShowLeaderboard(Ljava/lang/String;)V
.end method

.method private static native nativeSubmitScore(Ljava/lang/String;J)V
.end method

.method private static native nativeUnlockAchievement(Ljava/util/Map;)V
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
    .line 251
    sget-object v0, Lcom/anysdk/framework/java/AnySDKSocial;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    invoke-interface {v0, p0, p1}, Lcom/anysdk/framework/java/AnySDKListener;->onCallBack(ILjava/lang/String;)V

    .line 252
    return-void
.end method


# virtual methods
.method public callBoolFunction(Ljava/lang/String;)Z
    .locals 1
    .parameter "functionName"

    .prologue
    .line 135
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeCallBoolFunction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs callBoolFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)Z
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 149
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 150
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 154
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeCallBoolFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)Z

    move-result v2

    return v2

    .line 150
    :cond_0
    aget-object v0, p2, v2

    .line 152
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callFloatFunction(Ljava/lang/String;)F
    .locals 1
    .parameter "functionName"

    .prologue
    .line 198
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeCallFloatFunction(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public varargs callFloatFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)F
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 211
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 212
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 216
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeCallFloatFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)F

    move-result v2

    return v2

    .line 212
    :cond_0
    aget-object v0, p2, v2

    .line 214
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callFunction(Ljava/lang/String;)V
    .locals 0
    .parameter "functionName"

    .prologue
    .line 107
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeCallFunction(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public varargs callFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)V
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 119
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 120
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 124
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeCallFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)V

    .line 125
    return-void

    .line 120
    :cond_0
    aget-object v0, p2, v2

    .line 122
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callIntFunction(Ljava/lang/String;)I
    .locals 1
    .parameter "functionName"

    .prologue
    .line 167
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeCallIntFunction(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs callIntFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)I
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 180
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 181
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 185
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeCallIntFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v2

    return v2

    .line 181
    :cond_0
    aget-object v0, p2, v2

    .line 183
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callStringFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "functionName"

    .prologue
    .line 229
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeCallStringFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs callStringFunction(Ljava/lang/String;[Lcom/anysdk/framework/java/AnySDKParam;)Ljava/lang/String;
    .locals 4
    .parameter "functionName"
    .parameter "params"

    .prologue
    .line 242
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 243
    .local v1, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/anysdk/framework/java/AnySDKParam;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 247
    invoke-static {p1, v1}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeCallStringFunctionWithParam(Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 243
    :cond_0
    aget-object v0, p2, v2

    .line 245
    .local v0, object:Lcom/anysdk/framework/java/AnySDKParam;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeGetPluginName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeGetPluginVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDebugMode(Z)V
    .locals 0
    .parameter "bDebug"

    .prologue
    .line 98
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeSetDebugMode(Z)V

    .line 99
    return-void
.end method

.method public setListener(Lcom/anysdk/framework/java/AnySDKListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 32
    sput-object p1, Lcom/anysdk/framework/java/AnySDKSocial;->_listener:Lcom/anysdk/framework/java/AnySDKListener;

    .line 33
    return-void
.end method

.method public showAchievements()V
    .locals 0

    .prologue
    .line 62
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeShowAchievements()V

    .line 63
    return-void
.end method

.method public showLeaderboard(Ljava/lang/String;)V
    .locals 0
    .parameter "leadboardId"

    .prologue
    .line 51
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeShowLeaderboard(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public submitScore(Ljava/lang/String;J)V
    .locals 0
    .parameter "leadboardId"
    .parameter "score"

    .prologue
    .line 42
    invoke-static {p1, p2, p3}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeSubmitScore(Ljava/lang/String;J)V

    .line 43
    return-void
.end method

.method public unlockAchievement(Ljava/util/Map;)V
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
    .line 55
    .local p1, achInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/anysdk/framework/java/AnySDKSocial;->nativeUnlockAchievement(Ljava/util/Map;)V

    .line 56
    return-void
.end method
