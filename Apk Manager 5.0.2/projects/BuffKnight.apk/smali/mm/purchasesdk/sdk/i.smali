.class public Lmm/purchasesdk/sdk/i;
.super Ljava/lang/Thread;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static l:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private final d:I

.field private final m:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x100101

    sput v0, Lmm/purchasesdk/sdk/i;->a:I

    const v0, 0x100102

    sput v0, Lmm/purchasesdk/sdk/i;->b:I

    const v0, 0x100103

    sput v0, Lmm/purchasesdk/sdk/i;->c:I

    const-string v0, ""

    sput-object v0, Lmm/purchasesdk/sdk/i;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x136

    iput v0, p0, Lmm/purchasesdk/sdk/i;->d:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->a:Ljava/lang/Boolean;

    const-string v0, "mm.purchasesdk.iapservice.PurchaseService"

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->m:Ljava/lang/String;

    const-string v0, "name"

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->n:Ljava/lang/String;

    const-string v0, "service"

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->o:Ljava/lang/String;

    const-string v0, "intent-filter"

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->p:Ljava/lang/String;

    const-string v0, "priority"

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->q:Ljava/lang/String;

    const-string v0, "exported"

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->r:Ljava/lang/String;

    const-string v0, "-1"

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x136

    iput v0, p0, Lmm/purchasesdk/sdk/i;->d:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->a:Ljava/lang/Boolean;

    const-string v0, "mm.purchasesdk.iapservice.PurchaseService"

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->m:Ljava/lang/String;

    const-string v0, "name"

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->n:Ljava/lang/String;

    const-string v0, "service"

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->o:Ljava/lang/String;

    const-string v0, "intent-filter"

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->p:Ljava/lang/String;

    const-string v0, "priority"

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->q:Ljava/lang/String;

    const-string v0, "exported"

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->r:Ljava/lang/String;

    const-string v0, "-1"

    iput-object v0, p0, Lmm/purchasesdk/sdk/i;->s:Ljava/lang/String;

    iput-object p1, p0, Lmm/purchasesdk/sdk/i;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmm/purchasesdk/sdk/i;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private a(Lorg/w3c/dom/Document;)[Ljava/lang/String;
    .locals 14

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "0"

    const-string v0, "service"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v7, :cond_5

    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v1, v0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    const-string v0, "name"

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mm.purchasesdk.iapservice.PurchaseService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v9, :cond_2

    invoke-interface {v8, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v4, v0, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v4, "priority"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "action"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    const/4 v0, 0x0

    move v4, v0

    :goto_2
    if-ge v4, v12, :cond_0

    invoke-interface {v11, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v13, v0, Lorg/w3c/dom/Element;

    if-eqz v13, :cond_1

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v4, "name"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.aspire.purchaseservice.BIND"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aput-object v10, v5, v0

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_2
    const-string v0, "exported"

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v3, "-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "true"

    :goto_3
    aput-object v0, v5, v1

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_4
    const-string v0, "false"

    goto :goto_3

    :cond_5
    return-object v5
.end method


# virtual methods
.method public a([BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public a([BI)Ljava/lang/String;
    .locals 5

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v3, p2, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    aget-byte v3, p1, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public a([BIII)Ljava/lang/String;
    .locals 1

    if-gez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    mul-int/lit8 v0, p4, 0x4

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lmm/purchasesdk/sdk/i;->a([BI)I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, p1, v0}, Lmm/purchasesdk/sdk/i;->a([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/sdk/i;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p0, v1}, Lmm/purchasesdk/sdk/i;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lmm/purchasesdk/sdk/i;->a(Lorg/w3c/dom/Document;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([B)Ljava/lang/String;
    .locals 14

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lmm/purchasesdk/sdk/i;->a([BI)I

    move-result v0

    const/16 v6, 0x24

    mul-int/lit8 v0, v0, 0x4

    add-int v7, v6, v0

    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Lmm/purchasesdk/sdk/i;->a([BI)I

    move-result v1

    move v0, v1

    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x4

    if-ge v0, v3, :cond_6

    invoke-virtual {p0, p1, v0}, Lmm/purchasesdk/sdk/i;->a([BI)I

    move-result v3

    sget v4, Lmm/purchasesdk/sdk/i;->b:I

    if-ne v3, v4, :cond_0

    :goto_1
    move v1, v0

    move v0, v2

    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_5

    invoke-virtual {p0, p1, v1}, Lmm/purchasesdk/sdk/i;->a([BI)I

    move-result v3

    add-int/lit8 v4, v1, 0x8

    invoke-virtual {p0, p1, v4}, Lmm/purchasesdk/sdk/i;->a([BI)I

    add-int/lit8 v4, v1, 0x10

    invoke-virtual {p0, p1, v4}, Lmm/purchasesdk/sdk/i;->a([BI)I

    add-int/lit8 v4, v1, 0x14

    invoke-virtual {p0, p1, v4}, Lmm/purchasesdk/sdk/i;->a([BI)I

    move-result v4

    sget v8, Lmm/purchasesdk/sdk/i;->b:I

    if-ne v3, v8, :cond_3

    add-int/lit8 v3, v1, 0x18

    invoke-virtual {p0, p1, v3}, Lmm/purchasesdk/sdk/i;->a([BI)I

    add-int/lit8 v3, v1, 0x1c

    invoke-virtual {p0, p1, v3}, Lmm/purchasesdk/sdk/i;->a([BI)I

    move-result v8

    add-int/lit8 v1, v1, 0x24

    invoke-virtual {p0, p1, v6, v7, v4}, Lmm/purchasesdk/sdk/i;->a([BIII)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v2

    :goto_3
    if-ge v3, v8, :cond_2

    invoke-virtual {p0, p1, v1}, Lmm/purchasesdk/sdk/i;->a([BI)I

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {p0, p1, v4}, Lmm/purchasesdk/sdk/i;->a([BI)I

    move-result v11

    add-int/lit8 v4, v1, 0x8

    invoke-virtual {p0, p1, v4}, Lmm/purchasesdk/sdk/i;->a([BI)I

    move-result v12

    add-int/lit8 v4, v1, 0xc

    invoke-virtual {p0, p1, v4}, Lmm/purchasesdk/sdk/i;->a([BI)I

    add-int/lit8 v4, v1, 0x10

    invoke-virtual {p0, p1, v4}, Lmm/purchasesdk/sdk/i;->a([BI)I

    move-result v13

    add-int/lit8 v4, v1, 0x14

    invoke-virtual {p0, p1, v6, v7, v11}, Lmm/purchasesdk/sdk/i;->a([BIII)Ljava/lang/String;

    move-result-object v11

    const/4 v1, -0x1

    if-eq v12, v1, :cond_1

    invoke-virtual {p0, p1, v6, v7, v12}, Lmm/purchasesdk/sdk/i;->a([BIII)Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "\""

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_3

    :cond_0
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lmm/purchasesdk/sdk/i;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_3
    sget v8, Lmm/purchasesdk/sdk/i;->c:I

    if-ne v3, v8, :cond_4

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x18

    invoke-virtual {p0, p1, v6, v7, v4}, Lmm/purchasesdk/sdk/i;->a([BIII)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "</"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ">"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "</"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lmm/purchasesdk/sdk/i;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    sget v0, Lmm/purchasesdk/sdk/i;->a:I

    if-ne v3, v0, :cond_5

    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    move v0, v1

    goto/16 :goto_1
.end method

.method public run()V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lmm/purchasesdk/sdk/i;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/sdk/i;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v3

    const-string v2, "310"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v5

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\u5c0a\u656c\u7684\u7528\u6237"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v3

    const-string v3, "310"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\uff0c\u60a8\u7684service\u4e2d\u4f18\u5148\u7ea7\u586b\u5199\u9519\u8bef\uff0c\u8bf7\u4fee\u6539\u4e3a310"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v2, v0, v5

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\uff0c\u60a8\u7684service\u4e2dexported\u586b\u5199\u9519\u8bef\uff0c\u8bf7\u4fee\u6539\u4e3atrue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v2, "\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmm/purchasesdk/sdk/i;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x8

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "Service Priority"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service priority is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service exported is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
