.class public Lcom/ccit/mmwlan/vo/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field private filePath:Ljava/lang/String;

.field private strImei:Ljava/lang/String;

.field private strImsi:Ljava/lang/String;

.field private strMac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImei:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImsi:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strMac:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->filePath:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getStrImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImei:Ljava/lang/String;

    return-object v0
.end method

.method public getStrImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getStrMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strMac:Ljava/lang/String;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->filePath:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setStrImei(Ljava/lang/String;)V
    .locals 0
    .parameter "strImei"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImei:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setStrImsi(Ljava/lang/String;)V
    .locals 0
    .parameter "strImsi"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImsi:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setStrMac(Ljava/lang/String;)V
    .locals 0
    .parameter "strMac"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strMac:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    const-string v0, "    "

    .line 51
    .local v0, TAB:Ljava/lang/String;
    const-string v1, ""

    .line 53
    .local v1, retValue:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeviceInfo ( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "strImei = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "strImsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 55
    const-string v3, "strMac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->strMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "filePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
    iget-object v3, p0, Lcom/ccit/mmwlan/vo/DeviceInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    return-object v1
.end method
