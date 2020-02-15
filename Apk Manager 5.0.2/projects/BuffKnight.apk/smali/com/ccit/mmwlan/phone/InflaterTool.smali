.class public Lcom/ccit/mmwlan/phone/InflaterTool;
.super Ljava/lang/Object;
.source "InflaterTool.java"


# instance fields
.field private certApplyHandler:Lcom/ccit/mmwlan/phone/CertApplyHandler;

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

.field private passWorldHandler:Lcom/ccit/mmwlan/phone/PassWorldHandler;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/ccit/mmwlan/phone/InflaterTool;->certApplyHandler:Lcom/ccit/mmwlan/phone/CertApplyHandler;

    .line 15
    iput-object v0, p0, Lcom/ccit/mmwlan/phone/InflaterTool;->certApplyInfoList:Ljava/util/ArrayList;

    .line 17
    iput-object v0, p0, Lcom/ccit/mmwlan/phone/InflaterTool;->passWorldHandler:Lcom/ccit/mmwlan/phone/PassWorldHandler;

    .line 18
    iput-object v0, p0, Lcom/ccit/mmwlan/phone/InflaterTool;->passWorldInfoList:Ljava/util/ArrayList;

    .line 12
    return-void
.end method


# virtual methods
.method public getServiceInit(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "strMessageBody"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ccit/mmwlan/phone/CertApplyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 34
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 35
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 37
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/ccit/mmwlan/phone/CertApplyHandler;

    invoke-direct {v6}, Lcom/ccit/mmwlan/phone/CertApplyHandler;-><init>()V

    iput-object v6, p0, Lcom/ccit/mmwlan/phone/InflaterTool;->certApplyHandler:Lcom/ccit/mmwlan/phone/CertApplyHandler;

    .line 39
    iget-object v6, p0, Lcom/ccit/mmwlan/phone/InflaterTool;->certApplyHandler:Lcom/ccit/mmwlan/phone/CertApplyHandler;

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 40
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 41
    .local v4, sr:Ljava/io/StringReader;
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 42
    .local v2, is:Lorg/xml/sax/InputSource;
    invoke-interface {v5, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 43
    iget-object v6, p0, Lcom/ccit/mmwlan/phone/InflaterTool;->certApplyHandler:Lcom/ccit/mmwlan/phone/CertApplyHandler;

    invoke-virtual {v6}, Lcom/ccit/mmwlan/phone/CertApplyHandler;->getDataListSet()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/ccit/mmwlan/phone/InflaterTool;->certApplyInfoList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v2           #is:Lorg/xml/sax/InputSource;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #sr:Ljava/io/StringReader;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    iget-object v6, p0, Lcom/ccit/mmwlan/phone/InflaterTool;->certApplyInfoList:Ljava/util/ArrayList;

    return-object v6

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getTempPassworldServiceInit(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "strMessageBody"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ccit/mmwlan/phone/PassWorldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 68
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 69
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 71
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/ccit/mmwlan/phone/PassWorldHandler;

    invoke-direct {v6}, Lcom/ccit/mmwlan/phone/PassWorldHandler;-><init>()V

    iput-object v6, p0, Lcom/ccit/mmwlan/phone/InflaterTool;->passWorldHandler:Lcom/ccit/mmwlan/phone/PassWorldHandler;

    .line 73
    iget-object v6, p0, Lcom/ccit/mmwlan/phone/InflaterTool;->passWorldHandler:Lcom/ccit/mmwlan/phone/PassWorldHandler;

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 74
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 75
    .local v4, sr:Ljava/io/StringReader;
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 76
    .local v2, is:Lorg/xml/sax/InputSource;
    invoke-interface {v5, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 77
    iget-object v6, p0, Lcom/ccit/mmwlan/phone/InflaterTool;->passWorldHandler:Lcom/ccit/mmwlan/phone/PassWorldHandler;

    invoke-virtual {v6}, Lcom/ccit/mmwlan/phone/PassWorldHandler;->getDataListSet()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/ccit/mmwlan/phone/InflaterTool;->passWorldInfoList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v2           #is:Lorg/xml/sax/InputSource;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #sr:Ljava/io/StringReader;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    iget-object v6, p0, Lcom/ccit/mmwlan/phone/InflaterTool;->passWorldInfoList:Ljava/util/ArrayList;

    return-object v6

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
