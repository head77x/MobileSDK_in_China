.class public final Lcom/anysdk/framework/java/AnySDK;
.super Ljava/lang/Object;
.source "AnySDK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnySDK"

.field private static _instance:Lcom/anysdk/framework/java/AnySDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "anysdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private _initPluginSystem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "appKey"
    .parameter "appSecret"
    .parameter "privateKey"
    .parameter "authLoginServer"

    .prologue
    .line 87
    const-string v0, "AnySDK"

    const-string v1, "initPluginSystem..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {p1}, Lcom/anysdk/framework/PluginWrapper;->init(Landroid/content/Context;)V

    .line 89
    invoke-static {p2, p3, p4, p5}, Lcom/anysdk/framework/java/AnySDK;->nativeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/anysdk/framework/java/AnySDK;->nativeLoadPlugins()V

    .line 91
    return-void
.end method

.method private _release()V
    .locals 0

    .prologue
    .line 94
    invoke-static {}, Lcom/anysdk/framework/java/AnySDK;->nativeUnLoadPlugins()V

    .line 95
    return-void
.end method

.method public static getInstance()Lcom/anysdk/framework/java/AnySDK;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/anysdk/framework/java/AnySDK;->_instance:Lcom/anysdk/framework/java/AnySDK;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/anysdk/framework/java/AnySDK;

    invoke-direct {v0}, Lcom/anysdk/framework/java/AnySDK;-><init>()V

    sput-object v0, Lcom/anysdk/framework/java/AnySDK;->_instance:Lcom/anysdk/framework/java/AnySDK;

    .line 39
    :cond_0
    sget-object v0, Lcom/anysdk/framework/java/AnySDK;->_instance:Lcom/anysdk/framework/java/AnySDK;

    return-object v0
.end method

.method private static native nativeGetChannelId()Ljava/lang/String;
.end method

.method private static native nativeGetCustomParam()Ljava/lang/String;
.end method

.method private static native nativeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeLoadPlugins()V
.end method

.method private static native nativeUnLoadPlugins()V
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/anysdk/framework/java/AnySDK;->nativeGetChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/anysdk/framework/java/AnySDK;->nativeGetCustomParam()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initPluginSystem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "ctx"
    .parameter "appKey"
    .parameter "appSecret"
    .parameter "privateKey"
    .parameter "authLoginServer"

    .prologue
    .line 53
    invoke-static {}, Lcom/anysdk/framework/java/AnySDK;->getInstance()Lcom/anysdk/framework/java/AnySDK;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/anysdk/framework/java/AnySDK;->_initPluginSystem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/anysdk/framework/java/AnySDK;->getInstance()Lcom/anysdk/framework/java/AnySDK;

    move-result-object v0

    invoke-direct {v0}, Lcom/anysdk/framework/java/AnySDK;->_release()V

    .line 67
    return-void
.end method
