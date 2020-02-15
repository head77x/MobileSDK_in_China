.class public Lsafiap/framework/UpdateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/UpdateManager$CheckApkUpdateTask;,
        Lsafiap/framework/UpdateManager$OnGotUpdateListListener;
    }
.end annotation


# static fields
.field private static FLAG_INSTALL_FAILED:I = 0x7d1

.field private static FLAG_INSTALL_SUCCESSFUL:I = 0x7d0

.field private static MAX_INSTALL_TIME_MILLIS:J = 0xea60L

.field public static final MSG_FINISH_DOWNLOAD:I = 0x3ea

.field public static final MSG_START_DOWNLOAD:I = 0x3e9

.field public static final MSG_UPDATE_PROGRESS:I = 0x3ee

.field private static TAG:Ljava/lang/String;

.field public static TYPE_PLUGINS:Ljava/lang/String;

.field private static logger:Lsafiap/framework/util/MyLogger;


# instance fields
.field private mAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "UpdateManager"

    sput-object v0, Lsafiap/framework/UpdateManager;->TAG:Ljava/lang/String;

    .line 48
    const-string v0, "plugins"

    sput-object v0, Lsafiap/framework/UpdateManager;->TYPE_PLUGINS:Ljava/lang/String;

    .line 160
    const-class v0, Lsafiap/framework/UpdateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "UpdateManager() ----------------"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lsafiap/framework/UpdateManager;->mAppContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static synthetic a(Lsafiap/framework/UpdateManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lsafiap/framework/UpdateManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Lsafiap/framework/util/MyLogger;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lsafiap/framework/UpdateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static pickPluginUpdateItems(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 18
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
            "Lsafiap/framework/a/b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/a/b;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-static/range {p0 .. p0}, Lsafiap/framework/a/c;->a(Landroid/content/Context;)Lsafiap/framework/a/c;

    move-result-object v2

    .line 137
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lsafiap/framework/a/b;

    .line 139
    iget-boolean v3, v14, Lsafiap/framework/a/b;->i:Z

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, v14, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lsafiap/framework/a/b;

    .line 143
    if-eqz v15, :cond_0

    .line 144
    iget v3, v14, Lsafiap/framework/a/b;->d:I

    iget v4, v15, Lsafiap/framework/a/b;->d:I

    if-le v3, v4, :cond_0

    .line 146
    iget-object v3, v14, Lsafiap/framework/a/b;->a:Ljava/lang/String;

    iget-object v4, v14, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    iget-object v5, v14, Lsafiap/framework/a/b;->b:Ljava/lang/String;

    iget v6, v15, Lsafiap/framework/a/b;->d:I

    iget v7, v14, Lsafiap/framework/a/b;->d:I

    iget-boolean v8, v14, Lsafiap/framework/a/b;->h:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    iget-object v9, v14, Lsafiap/framework/a/b;->k:Ljava/lang/String;

    iget-object v10, v14, Lsafiap/framework/a/b;->f:Ljava/lang/String;

    iget-object v11, v14, Lsafiap/framework/a/b;->g:Ljava/lang/String;

    iget-object v12, v14, Lsafiap/framework/a/b;->m:Ljava/lang/String;

    iget-object v13, v14, Lsafiap/framework/a/b;->l:Ljava/lang/String;

    invoke-virtual/range {v2 .. v13}, Lsafiap/framework/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 150
    sget-object v3, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "after update database, affected rows:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",ActionName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 157
    :cond_2
    return-object v16
.end method


# virtual methods
.method public startQueryUpdateTask(Lsafiap/framework/UpdateManager$OnGotUpdateListListener;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 31
    sget-object v0, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startQueryAllUpdateTask...start, extraArgu: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 32
    new-instance v0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;

    sget-object v1, Lsafiap/framework/UpdateManager;->TYPE_PLUGINS:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;-><init>(Lsafiap/framework/UpdateManager;Ljava/lang/String;Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V

    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-static {v0, p2}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->a(Lsafiap/framework/UpdateManager$CheckApkUpdateTask;Ljava/lang/String;)V

    .line 36
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lsafiap/framework/util/Constants;->URL_CHECK_UPDATE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    return-void
.end method
