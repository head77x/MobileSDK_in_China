.class public final Lcom/ccit/mmwlan/exception/ClientSDKException;
.super Ljava/lang/Exception;
.source "ClientSDKException.java"


# static fields
.field private static final serialVersionUID:J = 0x571fd2c5ade42cfdL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method
