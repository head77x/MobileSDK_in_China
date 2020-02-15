.class public Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;
.super Ljava/lang/Object;
.source "MoServerHttpPostResponse.java"


# static fields
.field public static PROTOCALVERSION:I

.field public static RETUENCODE:I

.field public static TRANSACTIONID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const v0, -0x1020305

    sput v0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->PROTOCALVERSION:I

    .line 24
    const/16 v0, 0x6f

    sput v0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->TRANSACTIONID:I

    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->RETUENCODE:I

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2ToShort([BI)S
    .locals 2
    .parameter "mybytes"
    .parameter "nOff"

    .prologue
    .line 149
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
    .line 153
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 154
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 153
    or-int/2addr v0, v1

    .line 155
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 153
    or-int/2addr v0, v1

    .line 155
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 153
    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public inflaterHttpPostResponse([B)Ljava/lang/String;
    .locals 24
    .parameter "byResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    const/16 v18, 0x0

    .line 33
    .local v18, strMessageBody:Ljava/lang/String;
    const/4 v6, 0x4

    .line 35
    .local v6, intValue:I
    new-array v12, v6, [B

    .line 38
    .local v12, messageHead:[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 41
    .local v2, bais:Ljava/io/ByteArrayInputStream;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 42
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 45
    const/16 v21, 0x0

    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v12, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 46
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 47
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v12, v0}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->bytes4ToInt([BI)I

    move-result v15

    .line 50
    .local v15, protocolVersion:I
    sget v21, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->PROTOCALVERSION:I

    move/from16 v0, v21

    if-eq v15, v0, :cond_0

    .line 52
    new-instance v21, Ljava/lang/Exception;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Protocol Version error! protocolVersion="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 52
    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .line 57
    :cond_0
    const/16 v21, 0x0

    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v12, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 58
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 59
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v12, v0}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->bytes4ToInt([BI)I

    move-result v13

    .line 64
    .local v13, messageLength:I
    const/16 v21, 0x0

    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v12, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 65
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 66
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v12, v0}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->bytes4ToInt([BI)I

    move-result v14

    .line 67
    .local v14, messageType:I
    const-string v21, "MmClientSdk"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "MoServerHttpPostResponse() messageType -> "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/16 v21, 0x0

    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v12, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 78
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 79
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v12, v0}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->bytes4ToInt([BI)I

    move-result v20

    .line 82
    .local v20, transactionID:I
    sget v21, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->TRANSACTIONID:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 84
    new-instance v21, Ljava/lang/Exception;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "TransactionID error! TransactionID="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 84
    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .line 89
    :cond_1
    const/16 v17, 0x2

    .line 91
    .local v17, shortValue:I
    move/from16 v0, v17

    new-array v10, v0, [B

    .line 93
    .local v10, messageBodyHead:[B
    const/16 v21, 0x0

    array-length v0, v10

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v10, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 94
    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 95
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v10, v0}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->byte2ToShort([BI)S

    move-result v16

    .line 97
    .local v16, returnCode:S
    sget v21, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->RETUENCODE:I

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 99
    new-instance v21, Ljava/lang/Exception;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ReturnCode error! returnCode="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .line 104
    :cond_2
    const/16 v21, 0x0

    array-length v0, v10

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v10, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 105
    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 106
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v10, v0}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->byte2ToShort([BI)S

    move-result v8

    .line 109
    .local v8, itemNumber:S
    const/4 v5, 0x0

    .local v5, i:I
    move-object/from16 v19, v18

    .end local v18           #strMessageBody:Ljava/lang/String;
    .local v19, strMessageBody:Ljava/lang/String;
    :goto_0
    if-lt v5, v8, :cond_3

    .line 145
    return-object v19

    .line 112
    :cond_3
    const/16 v21, 0x0

    array-length v0, v10

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v10, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 113
    const/16 v21, 0x7

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 114
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v10, v0}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->byte2ToShort([BI)S

    move-result v7

    .line 118
    .local v7, itemID:S
    const/16 v21, 0x0

    array-length v0, v10

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v10, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 119
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 120
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v10, v0}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->byte2ToShort([BI)S

    move-result v9

    .line 124
    .local v9, itemType:S
    const/16 v21, 0x0

    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v12, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 125
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 126
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v12, v0}, Lcom/ccit/mmwlan/httpClient/MoServerHttpPostResponse;->bytes4ToInt([BI)I

    move-result v3

    .line 130
    .local v3, bodyLength:I
    move v11, v3

    .line 131
    .local v11, messageBodyLength:I
    new-array v12, v11, [B

    .line 132
    const/16 v21, 0x0

    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v12, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 133
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 135
    :try_start_0
    new-instance v18, Ljava/lang/String;

    const-string v21, "utf-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v19           #strMessageBody:Ljava/lang/String;
    .restart local v18       #strMessageBody:Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v19, v18

    .end local v18           #strMessageBody:Ljava/lang/String;
    .restart local v19       #strMessageBody:Ljava/lang/String;
    goto :goto_0

    .line 138
    :catch_0
    move-exception v4

    .line 140
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object/from16 v18, v19

    .end local v19           #strMessageBody:Ljava/lang/String;
    .restart local v18       #strMessageBody:Ljava/lang/String;
    goto :goto_1
.end method
