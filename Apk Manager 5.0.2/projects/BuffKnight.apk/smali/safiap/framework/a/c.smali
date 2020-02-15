.class public final Lsafiap/framework/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/a/c$a;
    }
.end annotation


# static fields
.field private static A:I = 0x0

.field private static B:I = 0x2

.field private static C:I = 0x1

.field private static D:I = 0x0

.field private static a:Lsafiap/framework/util/MyLogger; = null

.field private static final b:Ljava/lang/String; = "SafFrameworkDB"

.field private static d:Lsafiap/framework/a/c; = null

.field private static e:Lsafiap/framework/a/c$a; = null

.field private static final f:Ljava/lang/String; = "PluginInfo"

.field private static g:Ljava/lang/String; = "_id"

.field private static h:Ljava/lang/String; = "cnname"

.field private static i:Ljava/lang/String; = "action_name"

.field private static j:Ljava/lang/String; = "package_name"

.field private static k:Ljava/lang/String; = "version"

.field private static l:Ljava/lang/String; = "version_latest"

.field private static m:Ljava/lang/String; = "update_option"

.field private static n:Ljava/lang/String; = "needsafe"

.field private static o:Ljava/lang/String; = "lastupdateVERSION"

.field private static p:Ljava/lang/String; = "isdownloading"

.field private static q:Ljava/lang/String; = "description"

.field private static r:Ljava/lang/String; = "UpdateURL"

.field private static s:Ljava/lang/String; = "isinstalling"

.field private static t:Ljava/lang/String; = "downloadedfile_name"

.field private static u:Ljava/lang/String; = "downloadedfile_version"

.field private static v:Ljava/lang/String; = "digest"

.field private static w:Ljava/lang/String; = "app_size"

.field private static x:Ljava/lang/String; = "app_update_type"

.field private static y:I = -0x1

.field private static z:I = 0x1


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lsafiap/framework/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lsafiap/framework/a/c;->d:Lsafiap/framework/a/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    const-string v1, "Get in SafFrameworkDB..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lsafiap/framework/a/c;->c:Landroid/content/Context;

    .line 56
    if-eqz p1, :cond_0

    .line 57
    new-instance v0, Lsafiap/framework/a/c$a;

    invoke-direct {v0, p0}, Lsafiap/framework/a/c$a;-><init>(Lsafiap/framework/a/c;)V

    sput-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic a(Lsafiap/framework/a/c;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lsafiap/framework/a/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lsafiap/framework/a/c;
    .locals 4
    .parameter

    .prologue
    .line 33
    const-class v1, Lsafiap/framework/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get in SafFrameworkDB instance ...mSafFrameworkDB: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lsafiap/framework/a/c;->d:Lsafiap/framework/a/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 44
    :goto_0
    monitor-exit v1

    return-object v0

    .line 40
    :cond_0
    :try_start_1
    sget-object v0, Lsafiap/framework/a/c;->d:Lsafiap/framework/a/c;

    if-nez v0, :cond_1

    .line 41
    sget-object v0, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    const-string v2, "make a new SafFrameworkDB object..."

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lsafiap/framework/a/c;

    invoke-direct {v0, p0}, Lsafiap/framework/a/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsafiap/framework/a/c;->d:Lsafiap/framework/a/c;

    .line 44
    :cond_1
    sget-object v0, Lsafiap/framework/a/c;->d:Lsafiap/framework/a/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()Lsafiap/framework/util/MyLogger;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 231
    :goto_0
    return v0

    .line 157
    :cond_0
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Lsafiap/framework/a/c$a;

    invoke-direct {v0, p0}, Lsafiap/framework/a/c$a;-><init>(Lsafiap/framework/a/c;)V

    sput-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    .line 162
    :cond_1
    :try_start_0
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v1, "PluginInfo"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 165
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    const-string v0, "downloadedfile_name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    const-string v0, "version"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 170
    const-string v0, "version_latest"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 172
    const-string v0, "downloadedfile_version"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 175
    iget-object v1, p0, Lsafiap/framework/a/c;->c:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v1, v3, v6}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 177
    if-lez v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v9

    .line 179
    :goto_1
    sget-object v6, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "checkDownloadedApk().actionName:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",downlowdedFileName:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 183
    sget-object v3, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "version:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",latestVersion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",downloadedFileVersion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isReady:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 186
    if-le v5, v0, :cond_2

    .line 188
    sget-object v3, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    const-string v6, "checkDownloadedApk(1).clear downloadFileVersion & downlaodFileName info"

    invoke-virtual {v3, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 190
    invoke-static {p1}, Lsafiap/framework/sdk/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    iget-object v6, p0, Lsafiap/framework/a/c;->c:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v3, v7}, Lsafiap/framework/sdk/b/d;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 193
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 194
    const-string v6, "downloadedfile_name"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v6, "downloadedfile_version"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "action_name =\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 198
    sget-object v7, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v9, "PluginInfo"

    const/4 v10, 0x0

    invoke-static {v7, v9, v3, v6, v10}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 202
    :cond_2
    if-ne v5, v0, :cond_6

    if-le v0, v4, :cond_6

    .line 204
    if-eqz v1, :cond_5

    .line 221
    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 222
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_3
    sget-object v1, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkDownloadedApk().return:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const-string v1, "SafFrameworkDB"

    const-string v2, "SAF-A Exception:550013"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v8

    .line 231
    goto/16 :goto_0

    .line 177
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 208
    :cond_5
    :try_start_1
    sget-object v0, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    const-string v1, "checkDownloadedApk(2).clear downloadFileVersion & downlaodFileName info"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 210
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 211
    const-string v1, "downloadedfile_name"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "downloadedfile_version"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "action_name =\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    sget-object v3, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v4, "PluginInfo"

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v1, v5}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v8

    .line 216
    goto :goto_2

    :cond_6
    move v0, v8

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    :goto_0
    return-wide v0

    .line 106
    :cond_0
    sget-object v2, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    if-nez v2, :cond_1

    .line 107
    new-instance v2, Lsafiap/framework/a/c$a;

    invoke-direct {v2, p0}, Lsafiap/framework/a/c$a;-><init>(Lsafiap/framework/a/c;)V

    sput-object v2, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    .line 111
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 113
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 114
    const-string v3, "downloadedfile_name"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_2
    if-lez p3, :cond_3

    .line 118
    const-string v3, "downloadedfile_version"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name =\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    sget-object v4, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v5, "PluginInfo"

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v3, v6}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 124
    sget-object v4, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateDownloadFileInfo().actionName:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",fileName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",fileversion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 127
    goto :goto_0

    .line 128
    :catch_0
    move-exception v2

    .line 129
    const-string v3, "SafFrameworkDB"

    const-string v4, "SAF-A Exception:550003"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    sget-object v2, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    if-nez v2, :cond_0

    .line 386
    new-instance v2, Lsafiap/framework/a/c$a;

    invoke-direct {v2, p0}, Lsafiap/framework/a/c$a;-><init>(Lsafiap/framework/a/c;)V

    sput-object v2, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    .line 389
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 392
    const-string v3, "cnname"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 396
    const-string v3, "package_name"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_2
    if-ltz p4, :cond_3

    .line 400
    const-string v3, "version"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    :cond_3
    if-ltz p5, :cond_4

    .line 404
    const-string v3, "version_latest"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    :cond_4
    if-ltz p6, :cond_5

    .line 408
    const-string v3, "update_option"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    :cond_5
    if-eqz p7, :cond_6

    .line 415
    const-string v3, "description"

    invoke-virtual {v2, v3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_6
    if-eqz p10, :cond_7

    .line 419
    const-string v3, "app_size"

    move-object/from16 v0, p10

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_7
    if-eqz p11, :cond_8

    .line 423
    const-string v3, "app_update_type"

    move-object/from16 v0, p11

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_8
    if-eqz p8, :cond_9

    .line 427
    const-string v3, "UpdateURL"

    invoke-virtual {v2, v3, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_9
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 431
    const-string v3, "digest"

    move-object/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 436
    sget-object v4, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v5, "PluginInfo"

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v3, v6}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 443
    :goto_0
    return-wide v2

    .line 439
    :catch_0
    move-exception v2

    .line 440
    const-string v3, "SafFrameworkDB"

    const-string v4, "SAF-A Exception:550004"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)J
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Lsafiap/framework/a/c$a;

    invoke-direct {v0, p0}, Lsafiap/framework/a/c$a;-><init>(Lsafiap/framework/a/c;)V

    sput-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    .line 293
    :cond_0
    :try_start_0
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v1, "PluginInfo"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 297
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 299
    sget-object v0, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertPluginInfo().update plugin:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". and return..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 301
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 306
    const-string v2, "version"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v2, p4, :cond_1

    .line 308
    const-string v2, "version"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    :cond_1
    invoke-static {p2}, Lsafiap/framework/sdk/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    const-string v3, "version_latest"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 314
    const-string v4, "downloadedfile_version"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 316
    invoke-static {v2}, Lsafiap/framework/sdk/b/d;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 318
    if-ge v4, v3, :cond_2

    .line 320
    iget-object v3, p0, Lsafiap/framework/a/c;->c:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lsafiap/framework/sdk/b/d;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 324
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action_name=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 327
    :try_start_1
    sget-object v3, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v4, "PluginInfo"

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v2, v5}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 333
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 334
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_4
    const-wide/16 v0, 0x0

    .line 361
    :goto_1
    return-wide v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 358
    :catch_1
    move-exception v0

    .line 359
    const-string v1, "SafFrameworkDB"

    const-string v2, "SAF-A Exception:550002"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 339
    :cond_5
    if-eqz v1, :cond_6

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 340
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_6
    sget-object v0, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    const-string v1, "insertPluginInfo().check name and inseart ..FOR framework..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 346
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 348
    const-string v1, "cnname"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v1, "action_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v1, "version"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string v1, "needsafe"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    const-string v1, "lastupdateVERSION"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v1, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v2, "PluginInfo"

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v0

    goto :goto_1
.end method

.method public final a()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 597
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    if-nez v0, :cond_0

    .line 598
    new-instance v0, Lsafiap/framework/a/c$a;

    invoke-direct {v0, p0}, Lsafiap/framework/a/c$a;-><init>(Lsafiap/framework/a/c;)V

    sput-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    .line 601
    :cond_0
    :try_start_0
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v1, "PluginInfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 603
    sget-object v2, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "selectAll().cursor counts:"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 609
    :goto_1
    return-object v0

    .line 603
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    const-string v1, "SafFrameworkDB"

    const-string v2, "SAF-A Exception:550010"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v8

    .line 609
    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 242
    sget-object v0, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get downloaded apk file path for actionName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v8

    .line 273
    :goto_0
    return-object v0

    .line 247
    :cond_0
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Lsafiap/framework/a/c$a;

    invoke-direct {v0, p0}, Lsafiap/framework/a/c$a;-><init>(Lsafiap/framework/a/c;)V

    sput-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    .line 252
    :cond_1
    :try_start_0
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v1, "PluginInfo"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    sget-object v0, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDownloadAPKname().("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and fileName is:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "downloadedfile_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 262
    const-string v0, "downloadedfile_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v0, v8

    .line 265
    :goto_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 266
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :cond_2
    :goto_2
    sget-object v1, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDownloadAPKname().result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    .line 269
    :goto_3
    const-string v2, "SafFrameworkDB"

    const-string v3, "SAF-A Exception:550013"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 268
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_3
    move-object v0, v8

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 482
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Lsafiap/framework/a/c$a;

    invoke-direct {v0, p0}, Lsafiap/framework/a/c$a;-><init>(Lsafiap/framework/a/c;)V

    sput-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    .line 486
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action_name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 489
    :try_start_0
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v1, "PluginInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "app_size"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 493
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    const-string v0, "app_size"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 501
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_1
    :goto_1
    return-object v0

    .line 496
    :cond_2
    const-string v0, "SafFrameworkDB"

    const-string v2, "SAF-A Exception:550007(query)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    const-string v1, "SafFrameworkDB"

    const-string v2, "SAF-A Exception:550007(query)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v8

    .line 509
    goto :goto_1
.end method

.method public final d(Ljava/lang/String;)I
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x1

    .line 520
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Lsafiap/framework/a/c$a;

    invoke-direct {v0, p0}, Lsafiap/framework/a/c$a;-><init>(Lsafiap/framework/a/c;)V

    sput-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    .line 524
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action_name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 527
    :try_start_0
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v1, "PluginInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "version_latest"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 531
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    const-string v0, "version_latest"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 538
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 539
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_1
    :goto_1
    return v0

    .line 534
    :cond_2
    const-string v0, "SafFrameworkDB"

    const-string v2, "SAF-A Exception:550007(query)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    const-string v1, "SafFrameworkDB"

    const-string v2, "SAF-A Exception:550007(query)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v8

    .line 547
    goto :goto_1
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 558
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Lsafiap/framework/a/c$a;

    invoke-direct {v0, p0}, Lsafiap/framework/a/c$a;-><init>(Lsafiap/framework/a/c;)V

    sput-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    .line 561
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action_name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 564
    :try_start_0
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v1, "PluginInfo"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 568
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    const-string v0, "app_update_type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 577
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 578
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_1
    :goto_1
    return-object v0

    .line 572
    :cond_2
    const-string v0, "SafFrameworkDB"

    const-string v2, "SAF-A Exception:550007(query)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    const-string v1, "SafFrameworkDB"

    const-string v2, "SAF-A Exception:550007(query)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v8

    .line 587
    goto :goto_1
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 620
    .line 622
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Lsafiap/framework/a/c$a;

    invoke-direct {v0, p0}, Lsafiap/framework/a/c$a;-><init>(Lsafiap/framework/a/c;)V

    sput-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    .line 627
    :cond_0
    :try_start_0
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v1, "PluginInfo"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 630
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    sget-object v0, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isHasUpdate().name:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 633
    const-string v0, "version_latest"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 634
    const-string v2, "version"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 635
    sget-object v3, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "versionLatest is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",version is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 637
    if-le v0, v2, :cond_2

    iget-object v2, p0, Lsafiap/framework/a/c;->c:Landroid/content/Context;

    invoke-static {v2, p1, v0}, Lsafiap/framework/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 638
    const/4 v0, 0x1

    .line 642
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 643
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :cond_1
    :goto_1
    return v0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    const-string v1, "SafFrameworkDB"

    const-string v2, "SAF-A Exception:550013"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v8

    .line 649
    goto :goto_1

    :cond_2
    move v0, v8

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 654
    .line 656
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    if-nez v0, :cond_0

    .line 657
    new-instance v0, Lsafiap/framework/a/c$a;

    invoke-direct {v0, p0}, Lsafiap/framework/a/c$a;-><init>(Lsafiap/framework/a/c;)V

    sput-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    .line 661
    :cond_0
    :try_start_0
    sget-object v0, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v1, "PluginInfo"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 664
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    sget-object v0, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isHasUpdate().name:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 667
    const-string v0, "version_latest"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 668
    const-string v2, "version"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 669
    sget-object v3, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "versionLatest is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",version is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 672
    const-string v3, "update_option"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 674
    sget-object v4, Lsafiap/framework/a/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PluginMandatoryUpdateCheck(). result :("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 675
    if-le v0, v2, :cond_2

    if-ne v3, v9, :cond_2

    move v0, v9

    .line 680
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 681
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :cond_1
    :goto_1
    return v0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    const-string v1, "SafFrameworkDB"

    const-string v2, "SAF-A Exception:550013"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v8

    .line 687
    goto :goto_1

    :cond_2
    move v0, v8

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)J
    .locals 6
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 698
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-wide v0

    .line 702
    :cond_1
    sget-object v2, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    if-nez v2, :cond_2

    .line 703
    new-instance v2, Lsafiap/framework/a/c$a;

    invoke-direct {v2, p0}, Lsafiap/framework/a/c$a;-><init>(Lsafiap/framework/a/c;)V

    sput-object v2, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    .line 706
    :cond_2
    sget-object v2, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 711
    :try_start_0
    sget-object v2, Lsafiap/framework/a/c;->e:Lsafiap/framework/a/c$a;

    const-string v3, "PluginInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action_name=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lsafiap/framework/a/c$a;->a(Lsafiap/framework/a/c$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v2

    .line 715
    const-string v3, "SafFrameworkDB"

    const-string v4, "SAF-A Exception:550017"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
