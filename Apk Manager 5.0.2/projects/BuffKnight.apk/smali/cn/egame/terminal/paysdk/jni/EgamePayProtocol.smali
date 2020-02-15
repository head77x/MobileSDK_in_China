.class public Lcn/egame/terminal/paysdk/jni/EgamePayProtocol;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "egamepay"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native encrypt(JJLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getComment(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native init(Landroid/content/Context;)Lcn/egame/terminal/paysdk/jni/ProtocolMessage;
.end method
