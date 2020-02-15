.class public Lcom/qy/pay/network/connect/APNManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/net/Uri;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/qy/pay/network/connect/APNManager;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/qy/pay/network/connect/APNManager;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/qy/pay/network/connect/APNManager;->a:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "apn"

    aput-object v4, v2, v7

    const-string v4, "proxy"

    aput-object v4, v2, v6

    const/4 v4, 0x2

    const-string v5, "port"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "apn"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qy/pay/network/connect/APNManager;->b:Ljava/lang/String;

    const-string v1, "proxy"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qy/pay/network/connect/APNManager;->d:Ljava/lang/String;

    const-string v1, "port"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qy/pay/network/connect/APNManager;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/qy/pay/network/connect/APNManager;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qy/pay/network/connect/APNManager;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/qy/pay/network/connect/APNManager;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMWAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "UNIWAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "3GWAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iput-boolean v6, p0, Lcom/qy/pay/network/connect/APNManager;->e:Z

    const-string v1, "10.0.0.172"

    iput-object v1, p0, Lcom/qy/pay/network/connect/APNManager;->d:Ljava/lang/String;

    const-string v1, "80"

    iput-object v1, p0, Lcom/qy/pay/network/connect/APNManager;->c:Ljava/lang/String;

    :cond_2
    :goto_0
    iput-boolean v7, p0, Lcom/qy/pay/network/connect/APNManager;->e:Z

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :cond_3
    const-string v2, "CTWAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v6, p0, Lcom/qy/pay/network/connect/APNManager;->e:Z

    const-string v1, "10.0.0.200"

    iput-object v1, p0, Lcom/qy/pay/network/connect/APNManager;->d:Ljava/lang/String;

    const-string v1, "80"

    iput-object v1, p0, Lcom/qy/pay/network/connect/APNManager;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v1, "80"

    iput-object v1, p0, Lcom/qy/pay/network/connect/APNManager;->c:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/qy/pay/network/connect/APNManager;->e:Z

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/qy/pay/network/connect/APNManager;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qy/pay/network/connect/APNManager;->e:Z

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/network/connect/APNManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/network/connect/APNManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qy/pay/network/connect/APNManager;->e:Z

    return v0
.end method
