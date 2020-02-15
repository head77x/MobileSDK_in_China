.class public Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;
.super Ljava/lang/Object;
.source "MoServerHttpPostRequest.java"


# static fields
.field public static final ITEMTYPE_BINARYDATA:S = 0x6s

.field public static final ITEMTYPE_Client_Action_Schema:S = 0x7s

.field public static final ITEMTYPE_ContentDescription:S = 0x9s

.field public static final ITEMTYPE_IMAGE:S = 0x3s

.field public static final ITEMTYPE_IP:S = 0x4s

.field public static final ITEMTYPE_SESSIONID:S = 0x1s

.field public static final ITEMTYPE_SMSPORT:S = 0x5s

.field public static final ITEMTYPE_Server_Action_Schema:S = 0x8s

.field public static final ITEMTYPE_XML:S = 0x2s

.field public static POSTUTIL_TAG:Ljava/lang/String;

.field public static PROTOCALVERSION:I

.field public static SESSIONID:I

.field public static TRANSACTIONID:I


# instance fields
.field private itemBodys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private itemNum:S

.field private itemTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "Default"

    sput-object v0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->POSTUTIL_TAG:Ljava/lang/String;

    .line 30
    const v0, -0x1020305

    sput v0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->PROTOCALVERSION:I

    .line 31
    const/16 v0, 0x6f

    sput v0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->TRANSACTIONID:I

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->SESSIONID:I

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->itemNum:S

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->itemTypes:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->itemBodys:Ljava/util/ArrayList;

    .line 12
    return-void
.end method

.method private addItemBody([BS)V
    .locals 2
    .parameter "data"
    .parameter "itemType"

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->itemTypes:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->itemBodys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-short v0, p0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->itemNum:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->itemNum:S

    goto :goto_0
.end method

.method private addXmlBody(Ljava/lang/String;)V
    .locals 3
    .parameter "requestBody"

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 47
    .local v0, data:[B
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->addItemBody([BS)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    .end local v0           #data:[B
    :catch_0
    move-exception v1

    .line 49
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static byte2ToShort([BI)S
    .locals 2
    .parameter "mybytes"
    .parameter "nOff"

    .prologue
    .line 129
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static bytes4ToInt([BI)I
    .locals 2
    .parameter "mybytes"
    .parameter "nOff"

    .prologue
    .line 142
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 143
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 142
    or-int/2addr v0, v1

    .line 144
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 142
    or-int/2addr v0, v1

    .line 144
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 142
    or-int/2addr v0, v1

    return v0
.end method

.method private getItemBodyData()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-short v4, p0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->itemNum:S

    if-nez v4, :cond_0

    .line 70
    const/4 v4, 0x0

    .line 89
    :goto_0
    return-object v4

    .line 73
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    iget-short v4, p0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->itemNum:S

    invoke-static {v4}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->shortToBytes2(S)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 77
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-short v4, p0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->itemNum:S

    if-lt v2, v4, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 78
    :cond_1
    add-int/lit8 v4, v2, 0x1

    int-to-short v4, v4

    invoke-static {v4}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->shortToBytes2(S)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 79
    iget-object v4, p0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->itemTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    .line 80
    .local v3, itemType:S
    invoke-static {v3}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->shortToBytes2(S)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 81
    iget-object v4, p0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->itemBodys:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 82
    .local v1, data:[B
    array-length v4, v1

    invoke-static {v4}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->intToBytes4(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 83
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 84
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 85
    sget-object v4, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->POSTUTIL_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "request message body :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static intToBytes4(I)[B
    .locals 6
    .parameter "i"

    .prologue
    .line 133
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 134
    .local v0, mybytes:[B
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 135
    const/4 v1, 0x2

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 136
    const/4 v1, 0x1

    const/high16 v2, 0xff

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    const/4 v1, 0x0

    const-wide/32 v2, -0x1000000

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 138
    return-object v0
.end method

.method public static shortToBytes2(S)[B
    .locals 3
    .parameter "s"

    .prologue
    .line 121
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 122
    .local v0, mybytes:[B
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 123
    const/4 v1, 0x0

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 125
    return-object v0
.end method


# virtual methods
.method public getFinalData(Ljava/lang/String;I)[B
    .locals 4
    .parameter "requestBody"
    .parameter "msgType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->addXmlBody(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->getItemBodyData()[B

    move-result-object v0

    .line 103
    .local v0, contentdata:[B
    array-length v3, v0

    add-int/lit8 v1, v3, 0x14

    .line 104
    .local v1, nLength:I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    sget v3, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->PROTOCALVERSION:I

    invoke-static {v3}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->intToBytes4(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 107
    invoke-static {v1}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->intToBytes4(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 108
    invoke-static {p2}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->intToBytes4(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 109
    sget v3, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->TRANSACTIONID:I

    invoke-static {v3}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->intToBytes4(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 110
    sget v3, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->SESSIONID:I

    invoke-static {v3}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostRequest;->intToBytes4(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 111
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 117
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method
