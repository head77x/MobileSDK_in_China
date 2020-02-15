.class public final Lsafiap/framework/sdk/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lsafiap/framework/util/MyLogger; = null

.field private static final b:Ljava/lang/String; = "AuthUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "AuthUtil"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/sdk/b/a;->a:Lsafiap/framework/util/MyLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 32
    if-nez p0, :cond_0

    .line 33
    sget-object v1, Lsafiap/framework/sdk/b/a;->a:Lsafiap/framework/util/MyLogger;

    const-string v2, "Input string for Base64MD5 is null!"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 41
    :goto_0
    return-object v0

    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lsafiap/framework/sdk/b/a;->a([B)[B

    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    sget-object v1, Lsafiap/framework/sdk/b/a;->a:Lsafiap/framework/util/MyLogger;

    const-string v2, "Error occurred while calculating the digest!"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v1}, Lsafiap/framework/sdk/b/b;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([B)[B
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 50
    if-nez p0, :cond_0

    .line 51
    sget-object v1, Lsafiap/framework/sdk/b/a;->a:Lsafiap/framework/util/MyLogger;

    const-string v2, "Input byte array for MD5 is null!"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 61
    :goto_0
    return-object v0

    .line 55
    :cond_0
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 57
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    const-string v2, "AuthUtil"

    const-string v3, "SAF-A Exception:514001"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method
