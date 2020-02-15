.class public Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;
.super Ljava/lang/Object;
.source "HTTPConnectionToolForLogin.java"


# static fields
.field private static final APPIDDATA_END:Ljava/lang/String; = "</appid>"

.field private static final APPIDDATA_START:Ljava/lang/String; = "<appid>"

#the value of this static final field might be set in the static constructor
.field private static final CONN_TIME_OUT:I = 0x0

.field private static final DEVICEIDDATA_END:Ljava/lang/String; = "</deviceid>"

.field private static final DEVICEIDDATA_START:Ljava/lang/String; = "<deviceid>"

.field private static final IDMODEDATA_END:Ljava/lang/String; = "</id_mode>"

.field private static final IDMODEDATA_START:Ljava/lang/String; = "<id_mode>"

.field private static final IMSIDATA_END:Ljava/lang/String; = "</imsi>"

.field private static final IMSIDATA_START:Ljava/lang/String; = "<imsi>"

.field private static final LOGINTYPEDATA_END:Ljava/lang/String; = "</loginType>"

.field private static final LOGINTYPEDATA_START:Ljava/lang/String; = "<loginType>"

.field private static final PASSCODEDATA_END:Ljava/lang/String; = "</passCode>"

.field private static final PASSCODEDATA_START:Ljava/lang/String; = "<passCode>"

.field private static final PUBKEYDATA_END:Ljava/lang/String; = "</pubkey>"

.field private static final PUBKEYDATA_START:Ljava/lang/String; = "<pubkey>"

#the value of this static final field might be set in the static constructor
.field private static final READ_TIME_OUT:I = 0x0

.field private static final SERVLET_POST:Ljava/lang/String; = "POST"

.field private static final SIDDATA_END:Ljava/lang/String; = "</sid>"

.field private static final SIDDATA_START:Ljava/lang/String; = "<sid>"

.field private static final USERNAMEDATA_END:Ljava/lang/String; = "</userName>"

.field private static final USERNAMEDATA_START:Ljava/lang/String; = "<userName>"

.field private static final XMLLABLE_END:Ljava/lang/String; = "</request>"

.field private static final XMLLABLE_START:Ljava/lang/String; = "<request>"

.field private static final XMLTitle:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

.field private static connectTimeout:Ljava/lang/String;

.field private static readConfigFile:Lcom/ccit/mmwlan/util/ReadConfigFile;

.field private static readTimeout:Ljava/lang/String;


# instance fields
.field private strBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/ccit/mmwlan/util/ReadConfigFile;

    invoke-direct {v0}, Lcom/ccit/mmwlan/util/ReadConfigFile;-><init>()V

    sput-object v0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->readConfigFile:Lcom/ccit/mmwlan/util/ReadConfigFile;

    .line 92
    sget-object v0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->readConfigFile:Lcom/ccit/mmwlan/util/ReadConfigFile;

    .line 93
    const-string v1, "connectTimeout"

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/util/ReadConfigFile;->getConfigInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    sput-object v0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->connectTimeout:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->readConfigFile:Lcom/ccit/mmwlan/util/ReadConfigFile;

    .line 95
    const-string v1, "readTimeout"

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/util/ReadConfigFile;->getConfigInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    sput-object v0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->readTimeout:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->connectTimeout:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->CONN_TIME_OUT:I

    .line 98
    sget-object v0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->readTimeout:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->READ_TIME_OUT:I

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyCertRequestXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "appid"
    .parameter "sid"
    .parameter "pubkey"
    .parameter "deviceid"
    .parameter "loginType"

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    .line 162
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<request>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<sid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</sid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<pubkey>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    const-string v2, "</pubkey>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<imsi>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</imsi>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<id_mode>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    const-string v2, "</id_mode>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<appid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</appid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "</request>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    return-object v0
.end method

.method public applyCertRequest_N_XML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "appid"
    .parameter "sid"
    .parameter "pubkey"
    .parameter "deviceid"
    .parameter "loginType"
    .parameter "userName"
    .parameter "passCode"

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<request>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<sid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</sid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<pubkey>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    const-string v2, "</pubkey>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<deviceid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    const-string v2, "</deviceid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<loginType>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    const-string v2, "</loginType>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<userName>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    const-string v2, "</userName>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<passCode>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    const-string v2, "</passCode>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<appid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</appid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "</request>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->strBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method public doPost(Ljava/lang/String;[BLorg/apache/http/HttpHost;)[B
    .locals 16
    .parameter "urlStr"
    .parameter "byteRequest"
    .parameter "wapHost"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    const-string v13, "MmClientSdk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "doPost() url -> "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v10, Ljava/lang/String;

    const-string v13, "UTF-8"

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 195
    .local v10, requestStr:Ljava/lang/String;
    const-string v13, "MmClientSdk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "doPost() request -> "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    move-object/from16 v0, p2

    array-length v5, v0

    .line 198
    .local v5, messageBodyLen:I
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 200
    .local v12, url:Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 202
    .local v2, conn:Ljava/net/HttpURLConnection;
    if-eqz p3, :cond_0

    .line 203
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v13

    .line 204
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v14

    .line 203
    invoke-direct {v8, v13, v14}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 205
    .local v8, proxy:Ljava/net/SocketAddress;
    new-instance v13, Ljava/net/Proxy;

    .line 206
    sget-object v14, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v13, v14, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 205
    invoke-virtual {v12, v13}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    .end local v2           #conn:Ljava/net/HttpURLConnection;
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 207
    .restart local v2       #conn:Ljava/net/HttpURLConnection;
    const-string v13, "MmClientSdk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "doPost()  used wapHost -> "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 207
    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v8           #proxy:Ljava/net/SocketAddress;
    :goto_0
    sget v13, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->CONN_TIME_OUT:I

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 214
    sget v13, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->READ_TIME_OUT:I

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 215
    const-string v13, "POST"

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 216
    const-string v13, "Connection"

    const-string v14, "close"

    invoke-virtual {v2, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v13, "Charset"

    const-string v14, "UTF-8"

    invoke-virtual {v2, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v13, "Content-Type"

    const-string v14, "text/xml"

    invoke-virtual {v2, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v13, "Content-length"

    .line 220
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 219
    invoke-virtual {v2, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 223
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 224
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 225
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 227
    .local v6, os:Ljava/io/OutputStream;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 228
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 229
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 231
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 232
    .local v3, input:Ljava/io/DataInputStream;
    const/4 v9, 0x0

    check-cast v9, [B

    .line 233
    .local v9, rResult:[B
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 234
    .local v7, out:Ljava/io/ByteArrayOutputStream;
    const/16 v13, 0x1000

    new-array v1, v13, [B

    .line 235
    .local v1, bufferByte:[B
    const/4 v4, -0x1

    .line 236
    .local v4, l:I
    :goto_1
    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v4

    const/4 v13, -0x1

    if-gt v4, v13, :cond_1

    .line 240
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 241
    new-instance v11, Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-direct {v11, v9, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 242
    .local v11, responseStr:Ljava/lang/String;
    const-string v13, "MmClientSdk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "doPost() response -> "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-object v9

    .line 210
    .end local v1           #bufferByte:[B
    .end local v3           #input:Ljava/io/DataInputStream;
    .end local v4           #l:I
    .end local v6           #os:Ljava/io/OutputStream;
    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    .end local v9           #rResult:[B
    .end local v11           #responseStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .end local v2           #conn:Ljava/net/HttpURLConnection;
    check-cast v2, Ljava/net/HttpURLConnection;

    .restart local v2       #conn:Ljava/net/HttpURLConnection;
    goto/16 :goto_0

    .line 237
    .restart local v1       #bufferByte:[B
    .restart local v3       #input:Ljava/io/DataInputStream;
    .restart local v4       #l:I
    .restart local v6       #os:Ljava/io/OutputStream;
    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #rResult:[B
    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v7, v1, v13, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 238
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_1
.end method

.method public doPostByHttpClient(Ljava/lang/String;[BLorg/apache/http/HttpHost;)[B
    .locals 16
    .parameter "requestUrl"
    .parameter "byteRequest"
    .parameter "wapProxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    const-string v13, "MmClientSdk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "doPostByHttpClient() url -> "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 260
    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v10, Ljava/lang/String;

    const-string v13, "UTF-8"

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 263
    .local v10, requestStr:Ljava/lang/String;
    const-string v13, "MmClientSdk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "doPostByHttpClient() request -> "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 263
    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 275
    .local v3, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    .line 276
    .local v8, params:Lorg/apache/http/params/HttpParams;
    sget v13, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->CONN_TIME_OUT:I

    invoke-static {v8, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 277
    sget v13, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForLogin;->READ_TIME_OUT:I

    invoke-static {v8, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 280
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 281
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 283
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    const-string v14, "http.route.default-proxy"

    move-object/from16 v0, p3

    invoke-interface {v13, v14, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 285
    const-string v13, "MmClientSdk"

    .line 286
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "doPostByHttpClient()  used wapHost -> "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 286
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 285
    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 291
    .local v6, hp:Lorg/apache/http/client/methods/HttpPost;
    const-string v13, "Charset"

    const-string v14, "UTF-8"

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v13, "Content-Type"

    const-string v14, "text/xml"

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 296
    .local v5, entity:Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v6, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 298
    const/4 v11, 0x0

    .line 299
    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 302
    new-instance v4, Ljava/io/DataInputStream;

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 303
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 302
    invoke-direct {v4, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 304
    .local v4, dis:Ljava/io/DataInputStream;
    const/4 v9, 0x0

    check-cast v9, [B

    .line 305
    .local v9, rResult:[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 306
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v13, 0x1000

    new-array v2, v13, [B

    .line 307
    .local v2, bufferByte:[B
    const/4 v7, -0x1

    .line 308
    .local v7, l:I
    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    const/4 v13, -0x1

    if-gt v7, v13, :cond_1

    .line 315
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 317
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 318
    new-instance v12, Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-direct {v12, v9, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 319
    .local v12, responseStr:Ljava/lang/String;
    const-string v13, "MmClientSdk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "doPost() response -> "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-object v9

    .line 309
    .end local v12           #responseStr:Ljava/lang/String;
    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v1, v2, v13, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 310
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0
.end method
