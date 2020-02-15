.class public Lcom/ccit/mmwlan/vo/AuthFileInfo;
.super Ljava/lang/Object;
.source "AuthFileInfo.java"


# instance fields
.field private strDigestAlg:Ljava/lang/String;

.field private strPlaintText:Ljava/lang/String;

.field private strPlaintTextDigestValue:Ljava/lang/String;

.field private strSignatureValue:Ljava/lang/String;

.field private strTimeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStrDigestAlg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/AuthFileInfo;->strDigestAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getStrPlaintText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/AuthFileInfo;->strPlaintText:Ljava/lang/String;

    return-object v0
.end method

.method public getStrPlaintTextDigestValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/AuthFileInfo;->strPlaintTextDigestValue:Ljava/lang/String;

    return-object v0
.end method

.method public getStrSignatureValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/AuthFileInfo;->strSignatureValue:Ljava/lang/String;

    return-object v0
.end method

.method public getStrTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/AuthFileInfo;->strTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public setStrDigestAlg(Ljava/lang/String;)V
    .locals 0
    .parameter "strDigestAlg"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/AuthFileInfo;->strDigestAlg:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setStrPlaintText(Ljava/lang/String;)V
    .locals 0
    .parameter "strPlaintText"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/AuthFileInfo;->strPlaintText:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setStrPlaintTextDigestValue(Ljava/lang/String;)V
    .locals 0
    .parameter "strPlaintTextDigestValue"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/AuthFileInfo;->strPlaintTextDigestValue:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setStrSignatureValue(Ljava/lang/String;)V
    .locals 0
    .parameter "strSignatureValue"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/AuthFileInfo;->strSignatureValue:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setStrTimeStamp(Ljava/lang/String;)V
    .locals 0
    .parameter "strTimeStamp"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/AuthFileInfo;->strTimeStamp:Ljava/lang/String;

    .line 41
    return-void
.end method
