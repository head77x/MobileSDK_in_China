.class public Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;
.super Ljava/lang/Object;
.source "HTTPConnectionToolForBilling.java"


# static fields
.field private static final APPIDDATA_END:Ljava/lang/String; = "</appid>"

.field private static final APPIDDATA_START:Ljava/lang/String; = "<appid>"

.field private static final DEVICEAUTHDATA_END:Ljava/lang/String; = "</deviceAuthorizationCode>"

.field private static final DEVICEAUTHDATA_START:Ljava/lang/String; = "<deviceAuthorizationCode>"

.field private static final DEVICENAMEDATA_END:Ljava/lang/String; = "</deviceName>"

.field private static final DEVICENAMEDATA_START:Ljava/lang/String; = "<deviceName>"

.field private static final HTTPCONNTOOL:Ljava/lang/String; = "HTTPConnectionTool"

.field private static final IMSIDATA_END:Ljava/lang/String; = "</DeviceId>"

.field private static final IMSIDATA_END1:Ljava/lang/String; = "</deviceID>"

.field private static final IMSIDATA_END2:Ljava/lang/String; = "</imsi>"

.field private static final IMSIDATA_START:Ljava/lang/String; = "<DeviceId>"

.field private static final IMSIDATA_START1:Ljava/lang/String; = "<deviceID>"

.field private static final IMSIDATA_START2:Ljava/lang/String; = "<imsi>"

.field private static final MACDATA_END:Ljava/lang/String; = "</mac>"

.field private static final MACDATA_START:Ljava/lang/String; = "<mac>"

.field private static final MOBILEPHONEDATA_END:Ljava/lang/String; = "</mobilePhone>"

.field private static final MOBILEPHONEDATA_START:Ljava/lang/String; = "<mobilePhone>"

.field private static final MODELDATA_END:Ljava/lang/String; = "</MODEL>"

.field private static final MODELDATA_START:Ljava/lang/String; = "<MODEL>"

.field private static final PUBKEYDATA_END:Ljava/lang/String; = "</pubkey>"

.field private static final PUBKEYDATA_START:Ljava/lang/String; = "<pubkey>"

.field private static final SERVLET_POST:Ljava/lang/String; = "POST"

.field private static final SIDDATA_END:Ljava/lang/String; = "</sid>"

.field private static final SIDDATA_START:Ljava/lang/String; = "<sid>"

.field private static final TEMPPUBKEYDATA_END:Ljava/lang/String; = "</tempPubkey>"

.field private static final TEMPPUBKEYDATA_START:Ljava/lang/String; = "<tempPubkey>"

.field private static final VERSIONDATA_END:Ljava/lang/String; = "</VERSION>"

.field private static final VERSIONDATA_START:Ljava/lang/String; = "<VERSION>"

.field private static final XMLLABLE_END:Ljava/lang/String; = "</request>"

.field private static final XMLLABLE_START:Ljava/lang/String; = "<request>"

.field private static final XMLTEMPPUBKEY_END:Ljava/lang/String; = "</dynKeyReq>"

.field private static final XMLTEMPPUBKEY_START:Ljava/lang/String; = "<dynKeyReq>"

.field private static final XMLTitle:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"


# instance fields
.field private strBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ConbinCertApply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "strAppid"
    .parameter "strImei"
    .parameter "strSid"
    .parameter "strPubKey"
    .parameter "strDeviceAuthCode"

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, result:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    .line 196
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<request>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<appid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    const-string v2, "</appid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<DeviceId>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</DeviceId>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<sid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</sid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<pubkey>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    const-string v2, "</pubkey>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    if-nez p5, :cond_0

    .line 207
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<deviceAuthorizationCode>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</deviceAuthorizationCode>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :goto_0
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "</request>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    return-object v0

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<deviceAuthorizationCode>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    const-string v2, "</deviceAuthorizationCode>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public conbinDynPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "strImei"
    .parameter "strAppid"
    .parameter "tempPubKey"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, strResult:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<dynKeyReq>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<imsi>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    const-string v2, "</imsi>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<appid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    const-string v2, "</appid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<tempPubkey>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 173
    const-string v2, "</tempPubkey>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "</dynKeyReq>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    return-object v0
.end method

.method public conbinGetDeviceAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "appid"
    .parameter "mobilePhone"
    .parameter "deviceID"
    .parameter "mac"
    .parameter "deviceName"
    .parameter "model"
    .parameter "version"

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, strResult:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<request>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<appid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</appid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<mobilePhone>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    const-string v2, "</mobilePhone>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<deviceID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    const-string v2, "</deviceID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    if-nez p4, :cond_0

    .line 97
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<mac>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</mac>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<deviceName>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    const-string v2, "</deviceName>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    if-nez p6, :cond_1

    .line 106
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<MODEL>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</MODEL>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :goto_1
    if-nez p7, :cond_2

    .line 114
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<VERSION>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</VERSION>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :goto_2
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "</request>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    return-object v0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<mac>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</mac>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<MODEL>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    const-string v2, "</MODEL>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<VERSION>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    const-string v2, "</VERSION>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public conbinGetDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "strImei"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, strResult:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<request>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<deviceID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    const-string v2, "</deviceID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "</request>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lcom/ccit/mmwlan/httpClient/HTTPConnectionToolForBilling;->strBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    return-object v0
.end method

.method public doPost(Ljava/lang/String;[B)[B
    .locals 13
    .parameter "urlStr"
    .parameter "byteRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 231
    array-length v5, p2

    .line 232
    .local v5, messageBodyLen:I
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 235
    .local v9, url:Ljava/net/URL;
    const-string v10, "HTTPConnectionTool"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "doPost() url -> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 241
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    const-string v10, "POST"

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 242
    const-string v10, "Connection"

    const-string v11, "close"

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v10, "Charset"

    const-string v11, "UTF-8"

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v10, "Content-Type"

    const-string v11, "text/xml"

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v10, "Content-length"

    .line 246
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 245
    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/16 v10, 0x1f40

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 248
    const/16 v10, 0x1f40

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 250
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 251
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 252
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 253
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 255
    .local v6, os:Ljava/io/OutputStream;
    invoke-virtual {v6, p2}, Ljava/io/OutputStream;->write([B)V

    .line 256
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 257
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 259
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 260
    .local v3, input:Ljava/io/DataInputStream;
    const/4 v8, 0x0

    check-cast v8, [B

    .line 261
    .local v8, rResult:[B
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 262
    .local v7, out:Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x1770

    new-array v0, v10, [B

    .line 263
    .local v0, bufferByte:[B
    const/4 v4, -0x1

    .line 264
    .local v4, l:I
    const/4 v2, 0x0

    .line 265
    .local v2, downloadSize:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v4

    const/4 v10, -0x1

    if-gt v4, v10, :cond_0

    .line 270
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 272
    return-object v8

    .line 266
    :cond_0
    add-int/2addr v2, v4

    .line 267
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 268
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0
.end method
