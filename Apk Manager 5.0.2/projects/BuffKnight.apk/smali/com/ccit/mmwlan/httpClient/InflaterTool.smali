.class public Lcom/ccit/mmwlan/httpClient/InflaterTool;
.super Ljava/lang/Object;
.source "InflaterTool.java"


# instance fields
.field private authFileHandler:Lcom/ccit/mmwlan/httpClient/AuthFileHandler;

.field private authFileInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ccit/mmwlan/vo/AuthFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private certApplyHandler:Lcom/ccit/mmwlan/httpClient/CertApplyHandler;

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

.field private deviceAuthHandler:Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;

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

.field private deviceNameHandler:Lcom/ccit/mmwlan/httpClient/DeviceNameHandler;

.field private deviceNameInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ccit/mmwlan/vo/DeviceName;",
            ">;"
        }
    .end annotation
.end field

.field private passWorldHandler:Lcom/ccit/mmwlan/httpClient/PassWordHandler;

.field private passWorldInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ccit/mmwlan/vo/PassWordInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->certApplyHandler:Lcom/ccit/mmwlan/httpClient/CertApplyHandler;

    .line 21
    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->certApplyInfoList:Ljava/util/ArrayList;

    .line 23
    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->passWorldHandler:Lcom/ccit/mmwlan/httpClient/PassWordHandler;

    .line 24
    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->passWorldInfoList:Ljava/util/ArrayList;

    .line 26
    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->deviceNameHandler:Lcom/ccit/mmwlan/httpClient/DeviceNameHandler;

    .line 27
    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->deviceNameInfoList:Ljava/util/ArrayList;

    .line 29
    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->deviceAuthHandler:Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;

    .line 30
    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->deviceAuthInfoList:Ljava/util/ArrayList;

    .line 32
    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->authFileHandler:Lcom/ccit/mmwlan/httpClient/AuthFileHandler;

    .line 33
    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->authFileInfoList:Ljava/util/ArrayList;

    .line 18
    return-void
.end method


# virtual methods
.method public getAuthFileVerifySign(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "strMessageBody"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ccit/mmwlan/vo/AuthFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 183
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 184
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 186
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/ccit/mmwlan/httpClient/AuthFileHandler;

    invoke-direct {v6}, Lcom/ccit/mmwlan/httpClient/AuthFileHandler;-><init>()V

    iput-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->authFileHandler:Lcom/ccit/mmwlan/httpClient/AuthFileHandler;

    .line 188
    iget-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->authFileHandler:Lcom/ccit/mmwlan/httpClient/AuthFileHandler;

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 189
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 190
    .local v4, sr:Ljava/io/StringReader;
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 191
    .local v2, is:Lorg/xml/sax/InputSource;
    invoke-interface {v5, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 192
    iget-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->authFileHandler:Lcom/ccit/mmwlan/httpClient/AuthFileHandler;

    invoke-virtual {v6}, Lcom/ccit/mmwlan/httpClient/AuthFileHandler;->getDataListSet()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->authFileInfoList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v2           #is:Lorg/xml/sax/InputSource;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #sr:Ljava/io/StringReader;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    iget-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->authFileInfoList:Ljava/util/ArrayList;

    return-object v6

    .line 194
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceAuthServiceInit(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "strMessageBody"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ccit/mmwlan/vo/DeviceAuthInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 150
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 151
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 153
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;

    invoke-direct {v6}, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;-><init>()V

    iput-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->deviceAuthHandler:Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;

    .line 155
    iget-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->deviceAuthHandler:Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 156
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 157
    .local v4, sr:Ljava/io/StringReader;
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 158
    .local v2, is:Lorg/xml/sax/InputSource;
    invoke-interface {v5, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 159
    iget-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->deviceAuthHandler:Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;

    invoke-virtual {v6}, Lcom/ccit/mmwlan/httpClient/DeviceAuthHandler;->getDataListSet()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->deviceAuthInfoList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v2           #is:Lorg/xml/sax/InputSource;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #sr:Ljava/io/StringReader;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    iget-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->deviceAuthInfoList:Ljava/util/ArrayList;

    return-object v6

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceNameServiceInit(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "strMessageBody"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ccit/mmwlan/vo/DeviceName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 116
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 117
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 119
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/ccit/mmwlan/httpClient/DeviceNameHandler;

    invoke-direct {v6}, Lcom/ccit/mmwlan/httpClient/DeviceNameHandler;-><init>()V

    iput-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->deviceNameHandler:Lcom/ccit/mmwlan/httpClient/DeviceNameHandler;

    .line 121
    iget-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->deviceNameHandler:Lcom/ccit/mmwlan/httpClient/DeviceNameHandler;

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 122
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 123
    .local v4, sr:Ljava/io/StringReader;
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 124
    .local v2, is:Lorg/xml/sax/InputSource;
    invoke-interface {v5, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 125
    iget-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->deviceNameHandler:Lcom/ccit/mmwlan/httpClient/DeviceNameHandler;

    invoke-virtual {v6}, Lcom/ccit/mmwlan/httpClient/DeviceNameHandler;->getDataListSet()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->deviceNameInfoList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v2           #is:Lorg/xml/sax/InputSource;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #sr:Ljava/io/StringReader;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    iget-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->deviceNameInfoList:Ljava/util/ArrayList;

    return-object v6

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

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
            "Lcom/ccit/mmwlan/vo/CertApplyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 49
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 50
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 52
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;

    invoke-direct {v6}, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;-><init>()V

    iput-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->certApplyHandler:Lcom/ccit/mmwlan/httpClient/CertApplyHandler;

    .line 54
    iget-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->certApplyHandler:Lcom/ccit/mmwlan/httpClient/CertApplyHandler;

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 55
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 56
    .local v4, sr:Ljava/io/StringReader;
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 57
    .local v2, is:Lorg/xml/sax/InputSource;
    invoke-interface {v5, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 58
    iget-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->certApplyHandler:Lcom/ccit/mmwlan/httpClient/CertApplyHandler;

    invoke-virtual {v6}, Lcom/ccit/mmwlan/httpClient/CertApplyHandler;->getDataListSet()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->certApplyInfoList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v2           #is:Lorg/xml/sax/InputSource;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #sr:Ljava/io/StringReader;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    iget-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->certApplyInfoList:Ljava/util/ArrayList;

    return-object v6

    .line 60
    :catch_0
    move-exception v0

    .line 62
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
            "Lcom/ccit/mmwlan/vo/PassWordInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 83
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 84
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 86
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/ccit/mmwlan/httpClient/PassWordHandler;

    invoke-direct {v6}, Lcom/ccit/mmwlan/httpClient/PassWordHandler;-><init>()V

    iput-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->passWorldHandler:Lcom/ccit/mmwlan/httpClient/PassWordHandler;

    .line 88
    iget-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->passWorldHandler:Lcom/ccit/mmwlan/httpClient/PassWordHandler;

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 89
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 90
    .local v4, sr:Ljava/io/StringReader;
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 91
    .local v2, is:Lorg/xml/sax/InputSource;
    invoke-interface {v5, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 92
    iget-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->passWorldHandler:Lcom/ccit/mmwlan/httpClient/PassWordHandler;

    invoke-virtual {v6}, Lcom/ccit/mmwlan/httpClient/PassWordHandler;->getDataListSet()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->passWorldInfoList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v2           #is:Lorg/xml/sax/InputSource;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #sr:Ljava/io/StringReader;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    iget-object v6, p0, Lcom/ccit/mmwlan/httpClient/InflaterTool;->passWorldInfoList:Ljava/util/ArrayList;

    return-object v6

    .line 94
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
