.class public Lcom/qy/pay/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qy/pay/a/d$a;
    }
.end annotation


# static fields
.field public static a:Lcom/qy/pay/a/d;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Landroid/database/sqlite/SQLiteOpenHelper;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/qy/pay/a/d;->a:Lcom/qy/pay/a/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qy/pay/a/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "qy_db_pay"

    iput-object v0, p0, Lcom/qy/pay/a/d;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/qy/pay/a/d;->f:I

    const-string v0, "TABLE_LOG"

    iput-object v0, p0, Lcom/qy/pay/a/d;->g:Ljava/lang/String;

    const-string v0, "log_result"

    iput-object v0, p0, Lcom/qy/pay/a/d;->h:Ljava/lang/String;

    const-string v0, "log_type"

    iput-object v0, p0, Lcom/qy/pay/a/d;->i:Ljava/lang/String;

    const-string v0, "log_sdk_type"

    iput-object v0, p0, Lcom/qy/pay/a/d;->j:Ljava/lang/String;

    const-string v0, "log_pay_type"

    iput-object v0, p0, Lcom/qy/pay/a/d;->k:Ljava/lang/String;

    const-string v0, "log_paycode"

    iput-object v0, p0, Lcom/qy/pay/a/d;->l:Ljava/lang/String;

    const-string v0, "log_pay_id"

    iput-object v0, p0, Lcom/qy/pay/a/d;->m:Ljava/lang/String;

    const-string v0, "log_price"

    iput-object v0, p0, Lcom/qy/pay/a/d;->n:Ljava/lang/String;

    const-string v0, "log_local_time"

    iput-object v0, p0, Lcom/qy/pay/a/d;->o:Ljava/lang/String;

    iput-object p1, p0, Lcom/qy/pay/a/d;->b:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/qy/pay/a/d;
    .locals 2

    const-class v1, Lcom/qy/pay/a/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qy/pay/a/d;->a:Lcom/qy/pay/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qy/pay/a/d;

    invoke-direct {v0, p0}, Lcom/qy/pay/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qy/pay/a/d;->a:Lcom/qy/pay/a/d;

    :cond_0
    sget-object v0, Lcom/qy/pay/a/d;->a:Lcom/qy/pay/a/d;

    invoke-direct {v0}, Lcom/qy/pay/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/qy/pay/a/d;->a:Lcom/qy/pay/a/d;

    invoke-direct {v0}, Lcom/qy/pay/a/d;->b()V

    :cond_1
    sget-object v0, Lcom/qy/pay/a/d;->a:Lcom/qy/pay/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/qy/pay/a/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/a/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/a/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qy/pay/a/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/qy/pay/a/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/a/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/qy/pay/a/d$a;

    iget-object v2, p0, Lcom/qy/pay/a/d;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/qy/pay/a/d;->e:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/qy/pay/a/d;->f:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/qy/pay/a/d$a;-><init>(Lcom/qy/pay/a/d;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/qy/pay/a/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    iget-object v0, p0, Lcom/qy/pay/a/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/qy/pay/a/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/qy/pay/a/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/qy/pay/a/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/a/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/qy/pay/a/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/a/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/qy/pay/a/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/a/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/qy/pay/a/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/a/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/qy/pay/a/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/a/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/qy/pay/a/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/a/d;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/qy/pay/a/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/a/d;->n:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v1, 0x1

    const/4 v5, 0x0

    const-string v10, ""

    iget-object v0, p0, Lcom/qy/pay/a/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-object v10

    :cond_0
    iget-object v0, p0, Lcom/qy/pay/a/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table_cfg"

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "cfg_value"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "cfg_key=\'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "cfg_value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v10, v0

    goto :goto_0

    :cond_1
    move-object v0, v10

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/qy/pay/a/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/qy/pay/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "cfg_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cfg_value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/a/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table_cfg"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/qy/pay/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/qy/pay/a/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "cfg_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cfg_value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/a/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table_cfg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cfg_key=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
