.class public Lcom/ccit/mmwlan/vo/DeviceName;
.super Ljava/lang/Object;
.source "DeviceName.java"


# instance fields
.field private deviceName:Ljava/lang/String;

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
.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceName;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrormsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceName;->errormsg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceName;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceName"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/DeviceName;->deviceName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setErrormsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errormsg"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/DeviceName;->errormsg:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/DeviceName;->result:Ljava/lang/String;

    .line 15
    return-void
.end method
