.class public Lcom/ccit/mmwlan/vo/DeviceAuthInfo;
.super Ljava/lang/Object;
.source "DeviceAuthInfo.java"


# instance fields
.field private errormsg:Ljava/lang/String;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrormsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceAuthInfo;->errormsg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceAuthInfo;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setErrormsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errormsg"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/DeviceAuthInfo;->errormsg:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/DeviceAuthInfo;->result:Ljava/lang/String;

    .line 14
    return-void
.end method
