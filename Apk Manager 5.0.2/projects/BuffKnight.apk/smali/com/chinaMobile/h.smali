.class public final Lcom/chinaMobile/h;
.super Ljava/lang/Object;


# static fields
.field private static final b:[C


# instance fields
.field private a:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/chinaMobile/h;->b:[C

    return-void

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;[B)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    array-length v0, p1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5

    const/16 v4, 0x39

    new-array v1, v4, [B

    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/chinaMobile/h;->a:Ljava/io/PrintStream;

    :goto_0
    invoke-static {p1, v1}, Lcom/chinaMobile/h;->a(Ljava/io/InputStream;[B)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_0

    if-lt v2, v4, :cond_2

    iget-object v0, p0, Lcom/chinaMobile/h;->a:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, 0x3

    if-gt v3, v2, :cond_1

    const/4 v3, 0x3

    invoke-static {p2, v1, v0, v3}, Lcom/chinaMobile/h;->a(Ljava/io/OutputStream;[BII)V

    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_1
    sub-int v3, v2, v0

    invoke-static {p2, v1, v0, v3}, Lcom/chinaMobile/h;->a(Ljava/io/OutputStream;[BII)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private static a(Ljava/io/OutputStream;[BII)V
    .locals 5

    const/16 v4, 0x3d

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    aget-byte v0, p1, p2

    sget-object v1, Lcom/chinaMobile/h;->b:[C

    ushr-int/lit8 v2, v0, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    sget-object v1, Lcom/chinaMobile/h;->b:[C

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    aget-char v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    sget-object v2, Lcom/chinaMobile/h;->b:[C

    ushr-int/lit8 v3, v0, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/chinaMobile/h;->b:[C

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    add-int/2addr v0, v3

    aget-char v0, v2, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    sget-object v0, Lcom/chinaMobile/h;->b:[C

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3c

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_1
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    sget-object v3, Lcom/chinaMobile/h;->b:[C

    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v3, Lcom/chinaMobile/h;->b:[C

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    ushr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    add-int/2addr v0, v4

    aget-char v0, v3, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    sget-object v0, Lcom/chinaMobile/h;->b:[C

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3c

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    sget-object v0, Lcom/chinaMobile/h;->b:[C

    and-int/lit8 v1, v2, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/chinaMobile/h;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const-string v1, "8859_1"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "CharacterEncoder.encode internal error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
