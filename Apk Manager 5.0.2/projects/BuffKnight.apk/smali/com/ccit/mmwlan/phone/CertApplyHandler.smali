.class public Lcom/ccit/mmwlan/phone/CertApplyHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "CertApplyHandler.java"


# instance fields
.field private certApplyInfo:Lcom/ccit/mmwlan/phone/CertApplyInfo;

.field private certApplyInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ccit/mmwlan/phone/CertApplyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isCurrent:Z

.field private sb:Ljava/lang/StringBuilder;

.field private strRet:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->certApplyInfoList:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    .line 14
    iput-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->strRet:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->isCurrent:Z

    .line 9
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->isCurrent:Z

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 29
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 31
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 32
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 38
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "response"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iput-boolean v2, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->isCurrent:Z

    .line 48
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->certApplyInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->certApplyInfo:Lcom/ccit/mmwlan/phone/CertApplyInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v0, "result"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->certApplyInfo:Lcom/ccit/mmwlan/phone/CertApplyInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/phone/CertApplyInfo;->setResult(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->strRet:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 56
    :cond_2
    const-string v0, "errormsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->certApplyInfo:Lcom/ccit/mmwlan/phone/CertApplyInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/phone/CertApplyInfo;->setErrormsg(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 61
    :cond_3
    const-string v0, "cert"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    const-string v0, "1"

    iget-object v1, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->strRet:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->certApplyInfo:Lcom/ccit/mmwlan/phone/CertApplyInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/phone/CertApplyInfo;->setCert(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 70
    :cond_4
    const-string v0, "mobilePhone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->certApplyInfo:Lcom/ccit/mmwlan/phone/CertApplyInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/phone/CertApplyInfo;->setMobilePhone(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 75
    :cond_5
    const-string v0, "encKey"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 77
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->certApplyInfo:Lcom/ccit/mmwlan/phone/CertApplyInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/phone/CertApplyInfo;->setEncKey(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 80
    :cond_6
    const-string v0, "randNum"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->certApplyInfo:Lcom/ccit/mmwlan/phone/CertApplyInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/phone/CertApplyInfo;->setRandNum(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0
.end method

.method public getDataListSet()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ccit/mmwlan/phone/CertApplyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->certApplyInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->certApplyInfoList:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    .line 96
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 102
    const-string v0, "response"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->isCurrent:Z

    .line 104
    new-instance v0, Lcom/ccit/mmwlan/phone/CertApplyInfo;

    invoke-direct {v0}, Lcom/ccit/mmwlan/phone/CertApplyInfo;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/phone/CertApplyHandler;->certApplyInfo:Lcom/ccit/mmwlan/phone/CertApplyInfo;

    .line 107
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 108
    return-void
.end method
