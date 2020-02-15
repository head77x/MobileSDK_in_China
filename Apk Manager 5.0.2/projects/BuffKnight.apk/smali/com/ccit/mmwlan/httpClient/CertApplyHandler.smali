.class public Lcom/ccit/mmwlan/httpClient/CertApplyHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "CertApplyHandler.java"


# instance fields
.field private certApplyInfo:Lcom/ccit/mmwlan/vo/CertApplyInfo;

.field private certApplyInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ccit/mmwlan/vo/CertApplyInfo;",
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

    .line 11
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->certApplyInfoList:Ljava/util/ArrayList;

    .line 15
    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    .line 16
    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->strRet:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->isCurrent:Z

    .line 11
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
    .line 29
    iget-boolean v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->isCurrent:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 31
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 33
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 34
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
    .line 39
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 40
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

    .line 50
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "resp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "response"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    :cond_0
    iput-boolean v2, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->isCurrent:Z

    .line 54
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->certApplyInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->certApplyInfo:Lcom/ccit/mmwlan/vo/CertApplyInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    const-string v0, "result"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->certApplyInfo:Lcom/ccit/mmwlan/vo/CertApplyInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/CertApplyInfo;->setResult(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->strRet:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 62
    :cond_3
    const-string v0, "errormsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->certApplyInfo:Lcom/ccit/mmwlan/vo/CertApplyInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/CertApplyInfo;->setErrormsg(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 67
    :cond_4
    const-string v0, "cert"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    const-string v0, "1"

    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->strRet:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->certApplyInfo:Lcom/ccit/mmwlan/vo/CertApplyInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/CertApplyInfo;->setCert(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 75
    :cond_5
    const-string v0, "randNum"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 77
    const-string v0, "1"

    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->strRet:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->certApplyInfo:Lcom/ccit/mmwlan/vo/CertApplyInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/CertApplyInfo;->setRandNum(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 83
    :cond_6
    const-string v0, "encData"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "1"

    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->strRet:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->certApplyInfo:Lcom/ccit/mmwlan/vo/CertApplyInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/CertApplyInfo;->setEncData(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

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
            "Lcom/ccit/mmwlan/vo/CertApplyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->certApplyInfoList:Ljava/util/ArrayList;

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
    .line 97
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->certApplyInfoList:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->sb:Ljava/lang/StringBuilder;

    .line 101
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
    .line 107
    const-string v0, "resp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "response"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->isCurrent:Z

    .line 109
    new-instance v0, Lcom/ccit/mmwlan/vo/CertApplyInfo;

    invoke-direct {v0}, Lcom/ccit/mmwlan/vo/CertApplyInfo;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->certApplyInfo:Lcom/ccit/mmwlan/vo/CertApplyInfo;

    .line 112
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 113
    return-void
.end method
