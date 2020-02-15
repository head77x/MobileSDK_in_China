.class final Lsafiap/framework/a/c$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "SafFramework.db"

.field private static final c:I = 0x9


# instance fields
.field private final a:Ljava/lang/Object;

.field private synthetic d:Lsafiap/framework/a/c;


# direct methods
.method public constructor <init>(Lsafiap/framework/a/c;)V
    .locals 4
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lsafiap/framework/a/c$a;->d:Lsafiap/framework/a/c;

    .line 755
    invoke-static {p1}, Lsafiap/framework/a/c;->a(Lsafiap/framework/a/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "SafFramework.db"

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 728
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsafiap/framework/a/c$a;->a:Ljava/lang/Object;

    .line 757
    invoke-static {}, Lsafiap/framework/a/c;->b()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    const-string v1, "get writable database"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lsafiap/framework/a/c$a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 759
    :try_start_0
    invoke-virtual {p0}, Lsafiap/framework/a/c$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 760
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 903
    invoke-static {}, Lsafiap/framework/a/c;->b()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update...where: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 904
    iget-object v2, p0, Lsafiap/framework/a/c$a;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 905
    :try_start_0
    invoke-virtual {p0}, Lsafiap/framework/a/c$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 906
    const-wide/16 v0, -0x1

    .line 907
    if-eqz v3, :cond_0

    .line 908
    invoke-static {}, Lsafiap/framework/a/c;->b()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    const-string v1, "exec update"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 911
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 912
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 871
    invoke-static {}, Lsafiap/framework/a/c;->b()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert....table: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 872
    iget-object v2, p0, Lsafiap/framework/a/c$a;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 873
    :try_start_0
    invoke-virtual {p0}, Lsafiap/framework/a/c$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 874
    const-wide/16 v0, -0x1

    .line 875
    if-eqz v3, :cond_0

    .line 876
    invoke-static {}, Lsafiap/framework/a/c;->b()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    const-string v1, "exec insert"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v3, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 879
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 934
    invoke-static {}, Lsafiap/framework/a/c;->b()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete...where: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 935
    iget-object v2, p0, Lsafiap/framework/a/c$a;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 936
    :try_start_0
    invoke-virtual {p0}, Lsafiap/framework/a/c$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 937
    const-wide/16 v0, -0x1

    .line 938
    if-eqz v3, :cond_0

    .line 939
    invoke-static {}, Lsafiap/framework/a/c;->b()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    const-string v1, "exec delete"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v3, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 942
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic a(Lsafiap/framework/a/c$a;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 727
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsafiap/framework/a/c$a;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lsafiap/framework/a/c$a;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 727
    invoke-direct {p0, p1, p2, p3}, Lsafiap/framework/a/c$a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lsafiap/framework/a/c$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 727
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsafiap/framework/a/c$a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 985
    invoke-static {}, Lsafiap/framework/a/c;->b()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query...where: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 986
    iget-object v8, p0, Lsafiap/framework/a/c$a;->a:Ljava/lang/Object;

    monitor-enter v8

    .line 987
    :try_start_0
    invoke-virtual {p0}, Lsafiap/framework/a/c$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 988
    const/4 v1, 0x0

    .line 989
    if-eqz v0, :cond_1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 990
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 992
    invoke-static {}, Lsafiap/framework/a/c;->b()Lsafiap/framework/util/MyLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "query().exec.count:"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 995
    :goto_1
    monitor-exit v8

    return-object v0

    .line 992
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    goto :goto_0

    .line 996
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lsafiap/framework/a/c$a;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 727
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lsafiap/framework/a/c$a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter

    .prologue
    .line 791
    invoke-static {}, Lsafiap/framework/a/c;->b()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    const-string v1, "create table = PluginInfo"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 793
    :try_start_0
    iget-object v1, p0, Lsafiap/framework/a/c$a;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    if-eqz p1, :cond_0

    .line 812
    :try_start_1
    const-string v0, "CREATE table PluginInfo (cnname text,action_name text primary key,package_name text,version INTEGER,description text,needsafe INTEGER,version_latest INTEGER default -1,update_option INTEGER,isdownloading INTEGER,lastupdateVERSION text,UpdateURL text,downloadedfile_name text,downloadedfile_version INTEGER,digest text,app_size text,app_update_type text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 814
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 816
    :try_start_2
    invoke-static {}, Lsafiap/framework/a/c;->b()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    const-string v1, "create Table Success!"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 819
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 821
    iget-object v0, p0, Lsafiap/framework/a/c$a;->d:Lsafiap/framework/a/c;

    invoke-static {v0}, Lsafiap/framework/a/c;->a(Lsafiap/framework/a/c;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {v0, v1}, Lsafiap/framework/sdk/b/d;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 822
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 823
    const-string v1, "cnname"

    const-string v3, "SAF\u80fd\u529b\u7ba1\u7406\u6846\u67b6"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v1, "action_name"

    sget-object v3, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v1, "package_name"

    const-string v3, "safiap.framework"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v1, "version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    const-string v1, "description"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New version for Create Table and version is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v1, "version_latest"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    const-string v0, "update_option"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 832
    const-string v0, "isdownloading"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 835
    const-wide/16 v0, -0x1

    .line 836
    iget-object v3, p0, Lsafiap/framework/a/c$a;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 837
    if-eqz p1, :cond_1

    .line 838
    :try_start_3
    const-string v0, "PluginInfo"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 840
    :cond_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 841
    :try_start_4
    invoke-static {}, Lsafiap/framework/a/c;->b()Lsafiap/framework/util/MyLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insert framework info result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 846
    :goto_0
    return-void

    .line 814
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 842
    :catch_0
    move-exception v0

    .line 843
    const-string v1, "SafFrameworkDB"

    const-string v2, "SAF-A Exception:550001"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 840
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 768
    invoke-direct {p0, p1}, Lsafiap/framework/a/c$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 769
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 773
    iget-object v1, p0, Lsafiap/framework/a/c$a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 776
    if-eqz p1, :cond_0

    .line 777
    :try_start_0
    const-string v0, "drop table if exists PluginInfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 779
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    invoke-static {}, Lsafiap/framework/a/c;->b()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    const-string v1, "onUpgrade()"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 782
    invoke-direct {p0, p1}, Lsafiap/framework/a/c$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 783
    return-void

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
