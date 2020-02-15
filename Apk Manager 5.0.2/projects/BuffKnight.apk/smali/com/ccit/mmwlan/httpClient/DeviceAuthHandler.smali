.class public Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DeviceAuthHandler.java"


# instance fields
.field private deviceAuthInfo:Lcom/ccit/mmwlan/vo/DeviceAuthInfo;

.field private deviceAuthInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ccit/mmwlan/vo/DeviceAuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isCurrent:Z

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->deviceAuthInfoList:Ljava/util/ArrayList;

    .line 15
    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->sb:Ljava/lang/StringBuilder;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->isCurrent:Z

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
    .line 28
    iget-boolean v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->isCurrent:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 31
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->sb:Ljava/lang/StringBuilder;

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

    .line 46
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "response"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iput-boolean v2, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->isCurrent:Z

    .line 50
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->deviceAuthInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->deviceAuthInfo:Lcom/ccit/mmwlan/vo/DeviceAuthInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v0, "result"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->deviceAuthInfo:Lcom/ccit/mmwlan/vo/DeviceAuthInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/DeviceAuthInfo;->setResult(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 57
    :cond_2
    const-string v0, "errormsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->deviceAuthInfo:Lcom/ccit/mmwlan/vo/DeviceAuthInfo;

    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/DeviceAuthInfo;->setErrormsg(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->sb:Ljava/lang/StringBuilder;

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
            "Lcom/ccit/mmwlan/vo/DeviceAuthInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->deviceAuthInfoList:Ljava/util/ArrayList;

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
    .line 69
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->deviceAuthInfoList:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->sb:Ljava/lang/StringBuilder;

    .line 73
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
    .line 79
    const-string v0, "response"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->isCurrent:Z

    .line 81
    new-instance v0, Lcom/ccit/mmwlan/vo/DeviceAuthInfo;

    invoke-direct {v0}, Lcom/ccit/mmwlan/vo/DeviceAuthInfo;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->deviceAuthInfo:Lcom/ccit/mmwlan/vo/DeviceAuthInfo;

    .line 84
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 85
    return-void
.end method
