.class public Lcom/ccit/mmwlan/phone/PassWorldHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PassWorldHandler.java"


# instance fields
.field private isCurrent:Z

.field private passWorldInfo:Lcom/ccit/mmwlan/phone/PassWorldInfo;

.field private passWorldInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ccit/mmwlan/phone/PassWorldInfo;",
            ">;"
        }
    .end annotation
.end field

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
    iput-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->passWorldInfoList:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->sb:Ljava/lang/StringBuilder;

    .line 14
    iput-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->strRet:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->isCurrent:Z

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
    iget-boolean v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->isCurrent:Z

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 30
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 32
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 33
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
    .line 38
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 39
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

    .line 45
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "dynKeyResp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iput-boolean v2, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->isCurrent:Z

    .line 49
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->passWorldInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->passWorldInfo:Lcom/ccit/mmwlan/phone/PassWorldInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v0, "result"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->passWorldInfo:Lcom/ccit/mmwlan/phone/PassWorldInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/phone/PassWorldInfo;->setResult(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->strRet:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 57
    :cond_2
    const-string v0, "errormsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->passWorldInfo:Lcom/ccit/mmwlan/phone/PassWorldInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/phone/PassWorldInfo;->setErrormsg(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 62
    :cond_3
    const-string v0, "encDynKey"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "0"

    iget-object v1, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->strRet:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->passWorldInfo:Lcom/ccit/mmwlan/phone/PassWorldInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/phone/PassWorldInfo;->setEncDynKey(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method

.method public getDataListSet()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ccit/mmwlan/phone/PassWorldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->passWorldInfoList:Ljava/util/ArrayList;

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
    .line 77
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->passWorldInfoList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->sb:Ljava/lang/StringBuilder;

    .line 81
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
    .line 87
    const-string v0, "dynKeyResp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->isCurrent:Z

    .line 89
    new-instance v0, Lcom/ccit/mmwlan/phone/PassWorldInfo;

    invoke-direct {v0}, Lcom/ccit/mmwlan/phone/PassWorldInfo;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/phone/PassWorldHandler;->passWorldInfo:Lcom/ccit/mmwlan/phone/PassWorldInfo;

    .line 92
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 93
    return-void
.end method
