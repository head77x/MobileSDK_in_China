.class public interface abstract Lcom/anysdk/framework/InterfaceUser;
.super Ljava/lang/Object;


# static fields
.field public static final PluginType:I = 0x5


# virtual methods
.method public abstract getPluginId()Ljava/lang/String;
.end method

.method public abstract getPluginVersion()Ljava/lang/String;
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
.end method

.method public abstract getUserID()Ljava/lang/String;
.end method

.method public abstract isLogined()Z
.end method

.method public abstract isSupportFunction(Ljava/lang/String;)Z
.end method

.method public abstract login()V
.end method

.method public abstract setDebugMode(Z)V
.end method
