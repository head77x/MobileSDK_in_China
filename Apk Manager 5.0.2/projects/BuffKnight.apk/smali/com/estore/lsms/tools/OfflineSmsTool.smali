.class public Lcom/estore/lsms/tools/OfflineSmsTool;
.super Ljava/lang/Object;


# static fields
.field private static synthetic a:Z = false

.field public static final baseAscII:Ljava/lang/String; = " !\"#$%\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"

.field public static final baseNum:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/estore/lsms/tools/OfflineSmsTool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/estore/lsms/tools/OfflineSmsTool;->a:Z

    const/16 v0, 0x5e

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/estore/lsms/tools/OfflineSmsTool;->baseNum:Ljava/math/BigInteger;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBase94(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 6

    sget-boolean v0, Lcom/estore/lsms/tools/OfflineSmsTool;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "\u4e0d\u662f\u4e00\u4e2a\u6709\u6548\u7684Base94\u5b57\u7b26\u4e32: null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    return-object v1

    :cond_1
    aget-char v4, v2, v0

    const-string v5, " !\"#$%\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    sget-boolean v5, Lcom/estore/lsms/tools/OfflineSmsTool;->a:Z

    if-nez v5, :cond_2

    if-gez v4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0d\u662f\u4e00\u4e2a\u6709\u6548\u7684Base94\u5b57\u7b26\u4e32:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    sget-object v5, Lcom/estore/lsms/tools/OfflineSmsTool;->baseNum:Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCurTime()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/OfflineSmsTool;->toBase94(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-boolean v0, Lcom/estore/lsms/tools/OfflineSmsTool;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "\u7b7e\u540d\u6570\u636e\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/estore/lsms/tools/OfflineSmsTool;->a:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "apSecert\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v0, 0x5

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_2

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-static {v0}, Lcom/estore/lsms/tools/OfflineSmsTool;->toBase94(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    rem-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-byte v4, v2, v3

    aget-byte v5, v1, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toBase94(J)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/estore/lsms/tools/OfflineSmsTool;->toBase94(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toBase94(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 4

    sget-boolean v0, Lcom/estore/lsms/tools/OfflineSmsTool;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "toBase94 \u503c\u5fc5\u987b\u5927\u4e8e\u7b49\u4e8e0"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v1, Lcom/estore/lsms/tools/OfflineSmsTool;->baseNum:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, " !\"#$%\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object p0, v1, v2

    goto :goto_0
.end method
