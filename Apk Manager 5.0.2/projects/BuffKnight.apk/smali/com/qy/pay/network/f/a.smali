.class public Lcom/qy/pay/network/f/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/qy/pay/f/c;->f()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qy/pay/network/f/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/qy/pay/f/c;->g()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qy/pay/network/f/a;->b:Ljava/lang/String;

    return-void
.end method

.method private static a([BB)[B
    .locals 3

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    invoke-static {p0, v1}, Lcom/qy/pay/f/a;->a([B[B)[B

    move-result-object v0

    return-object v0

    :cond_0
    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/qy/pay/network/f/a;->a([BB)[B

    move-result-object v0

    sget-object v1, Lcom/qy/pay/network/f/a;->a:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    sget-object v2, Lcom/qy/pay/network/f/a;->b:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    sget-object v1, Lcom/qy/pay/network/f/a;->a:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    sget-object v1, Lcom/qy/pay/network/f/a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
