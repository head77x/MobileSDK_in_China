.class public Lcom/ccit/mmwlan/vo/CertApplyInfo;
.super Ljava/lang/Object;
.source "CertApplyInfo.java"


# instance fields
.field private cert:Ljava/lang/String;

.field private encData:Ljava/lang/String;

.field private errormsg:Ljava/lang/String;

.field private randNum:Ljava/lang/String;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/CertApplyInfo;->cert:Ljava/lang/String;

    return-object v0
.end method

.method public getEncData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/CertApplyInfo;->encData:Ljava/lang/String;

    return-object v0
.end method

.method public getErrormsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/CertApplyInfo;->errormsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRandNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/CertApplyInfo;->randNum:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/CertApplyInfo;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setCert(Ljava/lang/String;)V
    .locals 0
    .parameter "cert"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/CertApplyInfo;->cert:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setEncData(Ljava/lang/String;)V
    .locals 0
    .parameter "encData"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/CertApplyInfo;->encData:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setErrormsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errormsg"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/CertApplyInfo;->errormsg:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setRandNum(Ljava/lang/String;)V
    .locals 0
    .parameter "randNum"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/CertApplyInfo;->randNum:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/CertApplyInfo;->result:Ljava/lang/String;

    .line 21
    return-void
.end method
