.class public Lsafiap/framework/SafFrameworkManager;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/SafFrameworkManager$1;,
        Lsafiap/framework/SafFrameworkManager$f;,
        Lsafiap/framework/SafFrameworkManager$c;,
        Lsafiap/framework/SafFrameworkManager$a;,
        Lsafiap/framework/SafFrameworkManager$e;,
        Lsafiap/framework/SafFrameworkManager$d;,
        Lsafiap/framework/SafFrameworkManager$b;,
        Lsafiap/framework/SafFrameworkManager$g;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field private static e:Lsafiap/framework/util/MyLogger; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = "safiap.framework.ACTION_CHECK_UPDATE"

.field private static h:Ljava/lang/String; = "safiap.framework.ACTION_FOREGROUND"

.field private static i:Ljava/lang/String; = "safiap.framework.KEY_FOREGROUND"

.field private static j:Z = false

.field private static k:Ljava/text/SimpleDateFormat; = null

.field private static l:I = 0x0

.field private static m:I = 0x0

.field private static n:I = 0x0

.field private static o:I = 0xc8

.field private static p:I = 0xc9

.field private static q:Z = false

.field private static r:Z = true

.field private static final s:I = 0x2

.field private static final t:I = 0x3

.field private static final u:I = 0x4

.field private static final v:I = 0x5

.field private static final w:Ljava/lang/String; = "action_name"

.field private static final x:Ljava/lang/String; = "file_name"


# instance fields
.field private A:Lsafiap/framework/b$a;

.field private B:Landroid/os/Handler;

.field private final C:Lsafiap/framework/sdk/ISAFFramework$Stub;

.field private D:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

.field private E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsafiap/framework/SafFrameworkManager$f;",
            ">;"
        }
    .end annotation
.end field

.field b:Lsafiap/framework/b;

.field private c:Landroid/content/Context;

.field private d:Lsafiap/framework/a/c;

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsafiap/framework/SafFrameworkManager$c;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string v0, "SafFrameworkManager"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    .line 62
    const-string v0, "SafFrameworkManager"

    sput-object v0, Lsafiap/framework/SafFrameworkManager;->f:Ljava/lang/String;

    .line 70
    sput-boolean v2, Lsafiap/framework/SafFrameworkManager;->j:Z

    .line 71
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsafiap/framework/SafFrameworkManager;->k:Ljava/text/SimpleDateFormat;

    .line 76
    const/16 v0, 0x3e9

    sput v0, Lsafiap/framework/SafFrameworkManager;->l:I

    .line 77
    const/16 v0, 0x3eb

    sput v0, Lsafiap/framework/SafFrameworkManager;->m:I

    .line 78
    const/16 v0, 0x3f0

    sput v0, Lsafiap/framework/SafFrameworkManager;->n:I

    .line 79
    const/16 v0, 0x3f1

    sput v0, Lsafiap/framework/SafFrameworkManager;->a:I

    .line 85
    sput-boolean v2, Lsafiap/framework/SafFrameworkManager;->q:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    .line 59
    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    .line 98
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->z:Ljava/util/Map;

    .line 100
    new-instance v0, Lsafiap/framework/b$a;

    invoke-direct {v0, p0, v1}, Lsafiap/framework/b$a;-><init>(Lsafiap/framework/SafFrameworkManager;B)V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->A:Lsafiap/framework/b$a;

    .line 101
    new-instance v0, Lsafiap/framework/SafFrameworkManager$g;

    invoke-direct {v0, p0, v1}, Lsafiap/framework/SafFrameworkManager$g;-><init>(Lsafiap/framework/SafFrameworkManager;B)V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->B:Landroid/os/Handler;

    .line 952
    new-instance v0, Lsafiap/framework/d;

    invoke-direct {v0, p0}, Lsafiap/framework/d;-><init>(Lsafiap/framework/SafFrameworkManager;)V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->C:Lsafiap/framework/sdk/ISAFFramework$Stub;

    .line 1281
    new-instance v0, Lsafiap/framework/f;

    invoke-direct {v0, p0}, Lsafiap/framework/f;-><init>(Lsafiap/framework/SafFrameworkManager;)V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->D:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .line 1603
    new-instance v0, Lsafiap/framework/b;

    invoke-direct {v0, p0}, Lsafiap/framework/b;-><init>(Lsafiap/framework/SafFrameworkManager;)V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->b:Lsafiap/framework/b;

    .line 1636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->E:Ljava/util/Map;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0xc9

    const/16 v0, 0xc8

    .line 1316
    if-gtz p2, :cond_2

    .line 1317
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1326
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1320
    goto :goto_0

    .line 1323
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1326
    goto :goto_0
.end method

.method static synthetic a(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lsafiap/framework/SafFrameworkManager;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsafiap/framework/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1337
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1338
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    const-string v1, "getAllPluginInfoMap -------------- "

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1341
    invoke-static {p0}, Lsafiap/framework/a/c;->a(Landroid/content/Context;)Lsafiap/framework/a/c;

    move-result-object v0

    .line 1342
    invoke-virtual {v0}, Lsafiap/framework/a/c;->a()Landroid/database/Cursor;

    move-result-object v13

    .line 1344
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1346
    :cond_0
    const-string v1, "action_name"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1347
    const-string v1, "package_name"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1348
    const-string v3, "version"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1349
    const-string v4, "version_latest"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1350
    const-string v5, "isdownloading"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1352
    new-instance v14, Lsafiap/framework/a/b;

    invoke-direct {v14}, Lsafiap/framework/a/b;-><init>()V

    .line 1353
    iput-object v2, v14, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    .line 1354
    iput-object v1, v14, Lsafiap/framework/a/b;->b:Ljava/lang/String;

    .line 1355
    iput v3, v14, Lsafiap/framework/a/b;->d:I

    .line 1356
    iput v4, v14, Lsafiap/framework/a/b;->e:I

    .line 1357
    const/4 v1, 0x1

    if-ne v5, v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v14, Lsafiap/framework/a/b;->j:Z

    .line 1360
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v2, v1}, Lsafiap/framework/SafFrameworkManager;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1361
    sget-object v3, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAllPluginInfoMap().actionName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1363
    const/16 v3, 0xc9

    if-ne v3, v1, :cond_4

    sget-object v1, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1365
    invoke-virtual {v0, v2}, Lsafiap/framework/a/c;->h(Ljava/lang/String;)J

    .line 1379
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1382
    :cond_1
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1383
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1385
    :cond_2
    return-object v12

    .line 1357
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1369
    :cond_4
    iget-object v1, v14, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    invoke-static {p0, v1}, Lsafiap/framework/sdk/b/d;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 1370
    iput v4, v14, Lsafiap/framework/a/b;->d:I

    .line 1371
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllPluginInfoMap().installedVersion:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1374
    const/4 v1, 0x0

    iget-object v2, v14, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    iget-object v3, v14, Lsafiap/framework/a/b;->b:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v0 .. v11}, Lsafiap/framework/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 1377
    iget-object v1, v14, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    invoke-interface {v12, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static synthetic a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/a/c;)Lsafiap/framework/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    return-object p1
.end method

.method static synthetic a()Lsafiap/framework/util/MyLogger;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    return-object v0
.end method

.method static a(Landroid/content/Context;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 1502
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setdownloadNotification download type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7532

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1503
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1505
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1506
    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1508
    sget-object v2, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    const-string v3, "set download notification........"

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1510
    const-string v2, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u4e0b\u8f7d\u4e2d..."

    .line 1511
    new-instance v3, Landroid/app/Notification;

    const v4, 0x1080081

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v4, v2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1512
    const-string v4, "\u5347\u7ea7\u63d0\u793a"

    invoke-virtual {v3, p0, v4, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1513
    sget v1, Lsafiap/framework/SafFrameworkManager;->a:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1514
    sget v1, Lsafiap/framework/SafFrameworkManager;->a:I

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1515
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/high16 v8, 0x1000

    const v4, 0x108000a

    .line 1439
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setIntallNotification().actionNames\'s key are: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", values are: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1440
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mForeground: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lsafiap/framework/SafFrameworkManager;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1442
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1491
    :cond_0
    :goto_0
    return-void

    .line 1454
    :cond_1
    sget-object v0, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {p0, v0, v3}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1456
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1457
    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1459
    sget-object v0, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1460
    sget-object v0, Lsafiap/framework/util/Constants;->ACTION_TO_INSTALL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1461
    sget-object v0, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1462
    sget-object v5, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    .line 1467
    const-string v6, "actionName"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1470
    if-nez v1, :cond_2

    .line 1471
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "sendIntallNotification ... fileName:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1472
    const-string v1, "iapFileName"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1473
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v4, p2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1474
    const/4 v0, 0x0

    invoke-static {p0, v0, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1475
    const-string v2, "\u5347\u7ea7\u63d0\u793a"

    invoke-virtual {v1, p0, v2, p2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1476
    const/16 v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1477
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1480
    sget v2, Lsafiap/framework/SafFrameworkManager;->a:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1481
    sget v2, Lsafiap/framework/SafFrameworkManager;->m:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1483
    sget-boolean v2, Lsafiap/framework/SafFrameworkManager;->j:Z

    if-nez v2, :cond_0

    .line 1484
    sget v2, Lsafiap/framework/SafFrameworkManager;->m:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1487
    :cond_2
    sget v1, Lsafiap/framework/SafFrameworkManager;->a:I

    sget v2, Lsafiap/framework/SafFrameworkManager;->m:I

    const-string v5, "\u5347\u7ea7\u63d0\u793a"

    const-string v6, "\u5347\u7ea7\u63d0\u793a"

    const-string v7, "\u66f4\u65b0\u4e0b\u8f7d\u5b8c\u6bd5\uff0c\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u5f53\u524d\u6b63\u5728\u8fd0\u884c\u4e2d\uff0c\u5c06\u5728\u4e0b\u4e00\u6b21\u542f\u52a8\u65f6\u5b89\u88c5\u3002"

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;IILandroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 613
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateDBDownloadinfo().action Name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",filePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lsafiap/framework/a/c;->a(Landroid/content/Context;)Lsafiap/framework/a/c;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    .line 617
    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lsafiap/framework/a/c;->a(Ljava/lang/String;Ljava/lang/String;I)J

    .line 618
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 599
    if-eqz p0, :cond_0

    .line 601
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/sdk/ISAFFrameworkCallback;

    .line 602
    invoke-interface {v0, p1, p2}, Lsafiap/framework/sdk/ISAFFrameworkCallback;->onFinishDownload(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->f:Ljava/lang/String;

    const-string v2, "SAF-A Exception:520003"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 609
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 582
    if-eqz p0, :cond_0

    .line 584
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/sdk/ISAFFrameworkCallback;

    .line 585
    invoke-interface {v0, p1, p2, p3}, Lsafiap/framework/sdk/ISAFFrameworkCallback;->onDownloadProgress(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->f:Ljava/lang/String;

    const-string v2, "SAF-A Exception:520002"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 592
    :cond_0
    return-void
.end method

.method static synthetic a(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateDBDownloadinfo().action Name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",filePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lsafiap/framework/a/c;->a(Landroid/content/Context;)Lsafiap/framework/a/c;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lsafiap/framework/a/c;->a(Ljava/lang/String;Ljava/lang/String;I)J

    return-void
.end method

.method static synthetic a(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/sdk/ISAFFrameworkCallback;

    invoke-interface {v0, p2, p3}, Lsafiap/framework/sdk/ISAFFrameworkCallback;->onFinishDownload(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsafiap/framework/SafFrameworkManager;->f:Ljava/lang/String;

    const-string v2, "SAF-A Exception:520003"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/sdk/ISAFFrameworkCallback;

    invoke-interface {v0, p2, p3, p4}, Lsafiap/framework/sdk/ISAFFrameworkCallback;->onDownloadProgress(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsafiap/framework/SafFrameworkManager;->f:Ljava/lang/String;

    const-string v2, "SAF-A Exception:520002"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;IZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 56
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "startDownload ... name:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",and change isDownloadStatus..., isDownloading:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    if-eqz p5, :cond_1

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    const-string v1, "isDownloading mTaskPool.putAction..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    new-instance v0, Lsafiap/framework/SafFrameworkManager$c;

    const/16 v1, 0x66

    invoke-direct {v0, p0, p2, v1}, Lsafiap/framework/SafFrameworkManager$c;-><init>(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;I)V

    sget-object v1, Lsafiap/framework/SafFrameworkManager$a;->c:Lsafiap/framework/SafFrameworkManager$a;

    iput-object v1, v0, Lsafiap/framework/SafFrameworkManager$c;->f:Lsafiap/framework/SafFrameworkManager$a;

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager;->B:Landroid/os/Handler;

    new-instance v0, Lsafiap/framework/c;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lsafiap/framework/c;-><init>(Lsafiap/framework/SafFrameworkManager;ZLjava/lang/String;Lsafiap/framework/sdk/ISAFFrameworkCallback;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    const-string v1, "TaskPool is not null, and just add callback..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$c;

    invoke-virtual {v0, p1}, Lsafiap/framework/SafFrameworkManager$c;->a(Lsafiap/framework/sdk/ISAFFrameworkCallback;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    invoke-static {v0, p2, v2}, Lsafiap/framework/sdk/b/d;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    new-instance v1, Lsafiap/framework/SafFrameworkManager$c;

    const/16 v3, 0x65

    invoke-direct {v1, p0, p2, v3}, Lsafiap/framework/SafFrameworkManager$c;-><init>(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;I)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "New task! mTaskPool.put(name, new PluginDownloader("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")); ...mTaskPool"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",mBinder: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager;->C:Lsafiap/framework/sdk/ISAFFramework$Stub;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsafiap/framework/SafFrameworkManager;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_0
.end method

.method private a(Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;ZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 632
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "startDownload ... name:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",and change isDownloadStatus..., isDownloading:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 635
    if-eqz p4, :cond_1

    .line 638
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    const-string v1, "isDownloading mTaskPool.putAction..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 640
    new-instance v0, Lsafiap/framework/SafFrameworkManager$c;

    const/16 v1, 0x66

    invoke-direct {v0, p0, p2, v1}, Lsafiap/framework/SafFrameworkManager$c;-><init>(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;I)V

    .line 642
    sget-object v1, Lsafiap/framework/SafFrameworkManager$a;->c:Lsafiap/framework/SafFrameworkManager$a;

    iput-object v1, v0, Lsafiap/framework/SafFrameworkManager$c;->f:Lsafiap/framework/SafFrameworkManager$a;

    .line 644
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    :goto_0
    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager;->B:Landroid/os/Handler;

    new-instance v0, Lsafiap/framework/c;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lsafiap/framework/c;-><init>(Lsafiap/framework/SafFrameworkManager;ZLjava/lang/String;Lsafiap/framework/sdk/ISAFFrameworkCallback;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 731
    :goto_1
    return-void

    .line 647
    :cond_0
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    const-string v1, "TaskPool is not null, and just add callback..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$c;

    .line 649
    invoke-virtual {v0, p1}, Lsafiap/framework/SafFrameworkManager$c;->a(Lsafiap/framework/sdk/ISAFFrameworkCallback;)Z

    goto :goto_1

    .line 654
    :cond_1
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    invoke-static {v0, p2, v2}, Lsafiap/framework/sdk/b/d;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    .line 655
    const/4 v0, 0x0

    .line 656
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 657
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    new-instance v1, Lsafiap/framework/SafFrameworkManager$c;

    const/16 v3, 0x65

    invoke-direct {v1, p0, p2, v3}, Lsafiap/framework/SafFrameworkManager$c;-><init>(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;I)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "New task! mTaskPool.put(name, new PluginDownloader("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")); ...mTaskPool"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",mBinder: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager;->C:Lsafiap/framework/sdk/ISAFFramework$Stub;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsafiap/framework/SafFrameworkManager;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 734
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->z:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 738
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$c;

    .line 739
    if-eqz v0, :cond_3

    .line 740
    iget-object v2, v0, Lsafiap/framework/SafFrameworkManager$c;->c:Lsafiap/framework/SafFrameworkManager$e;

    .line 741
    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lsafiap/framework/SafFrameworkManager$e;->cancel(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 742
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query task for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cancelled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    move v0, v1

    .line 754
    :goto_0
    return v0

    .line 745
    :cond_1
    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$c;->d:Lsafiap/framework/SafFrameworkManager$b;

    .line 746
    if-eqz v0, :cond_3

    .line 747
    invoke-virtual {v0, v1}, Lsafiap/framework/SafFrameworkManager$b;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 748
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download task for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cancelled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 750
    goto :goto_0

    .line 754
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 862
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    if-nez v0, :cond_0

    .line 863
    invoke-static {p0}, Lsafiap/framework/a/c;->a(Landroid/content/Context;)Lsafiap/framework/a/c;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    .line 865
    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    invoke-virtual {v0, p1}, Lsafiap/framework/a/c;->h(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->f:Ljava/lang/String;

    return-object v0
.end method

.method static b(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1394
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1396
    invoke-static {p0}, Lsafiap/framework/a/c;->a(Landroid/content/Context;)Lsafiap/framework/a/c;

    move-result-object v0

    .line 1397
    invoke-virtual {v0}, Lsafiap/framework/a/c;->a()Landroid/database/Cursor;

    move-result-object v3

    .line 1399
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1401
    :cond_0
    const-string v0, "cnname"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1402
    const-string v4, "package_name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1403
    const-string v5, "action_name"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1404
    const-string v6, "version"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1405
    const-string v7, "version_latest"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1406
    const-string v8, "isdownloading"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1408
    new-instance v9, Lsafiap/framework/a/b;

    invoke-direct {v9}, Lsafiap/framework/a/b;-><init>()V

    .line 1410
    iput-object v0, v9, Lsafiap/framework/a/b;->a:Ljava/lang/String;

    .line 1411
    iput-object v5, v9, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    .line 1412
    iput-object v4, v9, Lsafiap/framework/a/b;->b:Ljava/lang/String;

    .line 1413
    iput v6, v9, Lsafiap/framework/a/b;->d:I

    .line 1414
    iput v7, v9, Lsafiap/framework/a/b;->e:I

    .line 1415
    if-ne v8, v1, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, v9, Lsafiap/framework/a/b;->j:Z

    .line 1418
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v5, v0}, Lsafiap/framework/SafFrameworkManager;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1419
    const/16 v4, 0xc9

    if-ne v4, v0, :cond_1

    sget-object v0, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1422
    :cond_1
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1427
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1430
    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1431
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1434
    :cond_4
    return-object v2

    .line 1415
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->z:Ljava/util/Map;

    return-object v0
.end method

.method static b(Landroid/content/Context;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x1000

    const/16 v3, 0x7532

    .line 1523
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDisconnectNotification download type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1525
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1528
    sget-object v1, Lsafiap/framework/util/Constants;->ACTION_NETWORK_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1530
    const-string v1, "isMandatoryUpdate"

    sget-boolean v2, Lsafiap/framework/SafFrameworkManager;->q:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1531
    const-string v1, "UpdateType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1533
    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u5e76\u70b9\u51fb\u91cd\u8bd5"

    .line 1534
    new-instance v2, Landroid/app/Notification;

    const v3, 0x1080027

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1535
    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1536
    const-string v3, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u4e0b\u8f7d\u51fa\u9519\u63d0\u793a"

    invoke-virtual {v2, p0, v3, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1537
    const/16 v0, 0x10

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 1538
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1540
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    const-string v3, "IAP is not complete downloading!"

    invoke-virtual {v1, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1542
    sget v1, Lsafiap/framework/SafFrameworkManager;->a:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1544
    sget-boolean v1, Lsafiap/framework/SafFrameworkManager;->j:Z

    if-nez v1, :cond_0

    .line 1545
    sget v1, Lsafiap/framework/SafFrameworkManager;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1548
    :cond_0
    return-void
.end method

.method static synthetic b(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 56
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->z:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$c;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lsafiap/framework/SafFrameworkManager$c;->c:Lsafiap/framework/SafFrameworkManager$e;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lsafiap/framework/SafFrameworkManager$e;->cancel(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query task for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cancelled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$c;->d:Lsafiap/framework/SafFrameworkManager$b;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lsafiap/framework/SafFrameworkManager$b;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download task for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cancelled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 56
    sput-boolean p0, Lsafiap/framework/SafFrameworkManager;->q:Z

    return p0
.end method

.method private c(Ljava/lang/String;)I
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x4e20

    const/16 v7, 0x2710

    const/4 v5, 0x0

    .line 1207
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    const-string v1, "getPluginInfo.syncVersionInfo() @ Framework service ..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1211
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    .line 1213
    if-nez v0, :cond_1

    .line 1214
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    if-nez v0, :cond_0

    invoke-static {p0}, Lsafiap/framework/a/c;->a(Landroid/content/Context;)Lsafiap/framework/a/c;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    invoke-virtual {v0, p1}, Lsafiap/framework/a/c;->h(Ljava/lang/String;)J

    .line 1217
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")install failed ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1218
    const/4 v5, -0x1

    .line 1241
    :goto_0
    return v5

    .line 1220
    :cond_1
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    if-nez v0, :cond_2

    .line 1221
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lsafiap/framework/a/c;->a(Landroid/content/Context;)Lsafiap/framework/a/c;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    .line 1225
    :cond_2
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lsafiap/framework/sdk/b/d;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 1226
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1227
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->k:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1230
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    invoke-static {v0, p1, v8}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1231
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    invoke-static {v0, p1, v7}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1232
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lsafiap/framework/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)J

    .line 1233
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    sget-object v1, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {v0, v1}, Lsafiap/framework/sdk/b/d;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 1237
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    sget-object v1, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {v0, v1, v8}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1238
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    sget-object v2, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {v0, v2, v7}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1239
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    sget-object v2, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lsafiap/framework/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)J

    goto :goto_0
.end method

.method static synthetic c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    return-object v0
.end method

.method static c(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 1497
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1498
    sget v1, Lsafiap/framework/SafFrameworkManager;->l:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1499
    return-void
.end method

.method static synthetic c(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lsafiap/framework/SafFrameworkManager;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lsafiap/framework/SafFrameworkManager;->q:Z

    return v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1252
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    const-string v1, "Start to check update"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1253
    new-instance v0, Lsafiap/framework/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lsafiap/framework/e;-><init>(Lsafiap/framework/SafFrameworkManager;Landroid/os/Looper;)V

    .line 1270
    if-nez p1, :cond_0

    .line 1271
    sget-object p1, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    .line 1273
    :cond_0
    invoke-direct {p0, p1}, Lsafiap/framework/SafFrameworkManager;->c(Ljava/lang/String;)I

    .line 1274
    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1275
    return-void
.end method

.method private d()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 758
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    const-string v2, "cancelAllTask...start"

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->z:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 762
    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 765
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 766
    sget v2, Lsafiap/framework/SafFrameworkManager;->a:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 768
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 769
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 770
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$c;

    .line 771
    iget-object v3, v0, Lsafiap/framework/SafFrameworkManager$c;->c:Lsafiap/framework/SafFrameworkManager$e;

    .line 772
    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Lsafiap/framework/SafFrameworkManager$e;->cancel(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 773
    sget-object v3, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    const-string v4, "query cancelled successfully!"

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 775
    :cond_2
    iget-object v3, v0, Lsafiap/framework/SafFrameworkManager$c;->d:Lsafiap/framework/SafFrameworkManager$b;

    .line 776
    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lsafiap/framework/SafFrameworkManager$b;->cancel(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 777
    sget-object v4, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "download task: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lsafiap/framework/SafFrameworkManager$b;->a()Lsafiap/framework/a/b;

    move-result-object v3

    iget-object v3, v3, Lsafiap/framework/a/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " cancelled successfully!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 780
    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$c;->b:Ljava/lang/String;

    invoke-static {v0}, Lsafiap/framework/sdk/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lsafiap/framework/sdk/b/d;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 783
    :cond_3
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    move v0, v1

    .line 786
    :goto_1
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic d(Lsafiap/framework/SafFrameworkManager;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 56
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    const-string v2, "cancelAllTask...start"

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->z:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget v2, Lsafiap/framework/SafFrameworkManager;->a:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$c;

    iget-object v3, v0, Lsafiap/framework/SafFrameworkManager$c;->c:Lsafiap/framework/SafFrameworkManager$e;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Lsafiap/framework/SafFrameworkManager$e;->cancel(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    const-string v4, "query cancelled successfully!"

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    :cond_2
    iget-object v3, v0, Lsafiap/framework/SafFrameworkManager$c;->d:Lsafiap/framework/SafFrameworkManager$b;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lsafiap/framework/SafFrameworkManager$b;->cancel(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "download task: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lsafiap/framework/SafFrameworkManager$b;->a()Lsafiap/framework/a/b;

    move-result-object v3

    iget-object v3, v3, Lsafiap/framework/a/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " cancelled successfully!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$c;->b:Ljava/lang/String;

    invoke-static {v0}, Lsafiap/framework/sdk/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lsafiap/framework/sdk/b/d;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    move v0, v1

    :goto_1
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic e(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/b$a;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->A:Lsafiap/framework/b$a;

    return-object v0
.end method

.method static synthetic f(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/a/c;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    return-object v0
.end method

.method static synthetic g(Lsafiap/framework/SafFrameworkManager;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->B:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/UpdateManager$OnGotUpdateListListener;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->D:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    return-object v0
.end method

.method static synthetic i(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->E:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 875
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startInstallDialog().IAPPluginHasinstall:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 876
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    const-class v2, Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 877
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 879
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    if-nez v1, :cond_0

    .line 880
    invoke-static {p0}, Lsafiap/framework/a/c;->a(Landroid/content/Context;)Lsafiap/framework/a/c;

    move-result-object v1

    iput-object v1, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    .line 883
    :cond_0
    if-eqz p1, :cond_1

    .line 884
    :try_start_0
    sget-object v1, Lsafiap/framework/util/Constants;->ACTION_TO_INSTALL_IAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    const-string v1, "actionName"

    sget-object v2, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 886
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    sget-object v2, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lsafiap/framework/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 887
    if-eqz v1, :cond_2

    .line 888
    const-string v2, "iapFileName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :cond_1
    invoke-virtual {p0, v0}, Lsafiap/framework/SafFrameworkManager;->startActivity(Landroid/content/Intent;)V

    .line 898
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lsafiap/framework/SafFrameworkManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 900
    sget v1, Lsafiap/framework/SafFrameworkManager;->m:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 901
    :cond_2
    :goto_0
    return-void

    .line 893
    :catch_0
    move-exception v0

    .line 894
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 910
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "starUpdateDialog().IAPPluginHasUpdate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isMandatoryUpdate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 911
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lsafiap/framework/SafFrameworkManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 912
    const/4 v1, 0x0

    .line 913
    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager;->b:Lsafiap/framework/b;

    if-eqz v2, :cond_0

    .line 914
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager;->b:Lsafiap/framework/b;

    sget-object v2, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lsafiap/framework/b;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 918
    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    const-class v4, Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 919
    const/high16 v2, 0x1000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 920
    sget-object v2, Lsafiap/framework/util/Constants;->ACTION_TO_UPDATE:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    if-eqz p1, :cond_1

    .line 926
    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    sget-object v4, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lsafiap/framework/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 927
    sget-object v4, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "iapUpdateType is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 928
    const-string v4, "apk"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 929
    const-string v2, "apk"

    .line 935
    :goto_0
    sget-object v4, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startUpdateDialog().appUpdateType is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 936
    const-string v4, "appUpdateType"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    const-string v2, "isMandatoryUpdate"

    invoke-virtual {v3, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 938
    const-string v2, "UpdateType"

    const/16 v4, 0x7532

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 939
    const-string v2, "iapIsDownloading"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 940
    const-string v1, "iapApkSize"

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    sget-object v4, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lsafiap/framework/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    const-string v1, "iapApkVersion"

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    sget-object v4, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lsafiap/framework/a/c;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 943
    sget v1, Lsafiap/framework/SafFrameworkManager;->n:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 945
    invoke-virtual {p0, v3}, Lsafiap/framework/SafFrameworkManager;->startActivity(Landroid/content/Intent;)V

    .line 948
    :cond_1
    return-void

    .line 930
    :cond_2
    const-string v4, "patch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 931
    const-string v2, "patch"

    goto :goto_0

    .line 933
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter

    .prologue
    .line 824
    invoke-static {p0}, Lsafiap/framework/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    invoke-static {p0}, Lsafiap/framework/util/a;->c(Landroid/content/Context;)V

    .line 828
    :cond_0
    sget-object v0, Lsafiap/framework/util/Constants;->ACTION_CALLER_PKG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBind().Intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBinder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager;->C:Lsafiap/framework/sdk/ISAFFramework$Stub;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller_package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 831
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 832
    new-instance v1, Lsafiap/framework/SafFrameworkManager$f;

    invoke-direct {v1, p0, v0}, Lsafiap/framework/SafFrameworkManager$f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 833
    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager;->E:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    :cond_1
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->C:Lsafiap/framework/sdk/ISAFFramework$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 791
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 792
    iput-object p0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    .line 793
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAF-IAP main service onCreate(), it\'s version is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    invoke-static {v2}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lsafiap/framework/a/c;->a(Landroid/content/Context;)Lsafiap/framework/a/c;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->d:Lsafiap/framework/a/c;

    .line 797
    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 798
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    const-string v1, "mTaskPool == null"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 799
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->y:Ljava/util/Map;

    .line 801
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 856
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 857
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 805
    if-eqz p1, :cond_0

    .line 806
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new intent at onStartCommand ... action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_0

    .line 809
    const-string v1, "safiap.framework.ACTION_CHECK_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 810
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    const-string v1, "action check update"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 811
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsafiap/framework/SafFrameworkManager;->d(Ljava/lang/String;)V

    .line 818
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 812
    :cond_1
    const-string v1, "safiap.framework.ACTION_FOREGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    const-string v0, "safiap.framework.KEY_FOREGROUND"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lsafiap/framework/SafFrameworkManager;->j:Z

    .line 814
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reset foreground: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lsafiap/framework/SafFrameworkManager;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    .line 845
    sget-object v0, Lsafiap/framework/util/Constants;->ACTION_CALLER_PKG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 846
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->e:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBind().Intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBinder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager;->C:Lsafiap/framework/sdk/ISAFFramework$Stub;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller_package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 848
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 849
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager;->E:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
