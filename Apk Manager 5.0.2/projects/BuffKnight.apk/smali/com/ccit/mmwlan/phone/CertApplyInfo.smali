.class public Lcom/ccit/mmwlan/phone/CertApplyInfo;
.super Ljava/lang/Object;
.source "CertApplyInfo.java"


# instance fields
.field private cert:Ljava/lang/String;

.field private encKey:Ljava/lang/String;

.field private errormsg:Ljava/lang/String;

.field private mobilePhone:Ljava/lang/String;

.field private randNum:Ljava/lang/String;

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
.method public getCert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyInfo;->cert:Ljava/lang/String;

    return-object v0
.end method

.method public getEncKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyInfo;->encKey:Ljava/lang/String;

    return-object v0
.end method

.method public getErrormsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyInfo;->errormsg:Ljava/lang/String;

    return-object v0
.end method

.method public getMobilePhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyInfo;->mobilePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getRandNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyInfo;->randNum:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyInfo;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setCert(Ljava/lang/String;)V
    .locals 0
    .parameter "cert"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ccit/mmwlan/phone/CertApplyInfo;->cert:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setEncKey(Ljava/lang/String;)V
    .locals 0
    .parameter "encKey"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ccit/mmwlan/phone/CertApplyInfo;->encKey:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setErrormsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errormsg"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ccit/mmwlan/phone/CertApplyInfo;->errormsg:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setMobilePhone(Ljava/lang/String;)V
    .locals 0
    .parameter "mobilePhone"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ccit/mmwlan/phone/CertApplyInfo;->mobilePhone:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setRandNum(Ljava/lang/String;)V
    .locals 0
    .parameter "randNum"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ccit/mmwlan/phone/CertApplyInfo;->randNum:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/ccit/mmwlan/phone/CertApplyInfo;->result:Ljava/lang/String;

    .line 18
    return-void
.end method
