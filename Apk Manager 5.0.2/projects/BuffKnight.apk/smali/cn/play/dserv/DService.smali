.class public Lcn/play/dserv/DService;
.super Landroid/app/Service;


# static fields
.field private static final a:Ljava/lang/String; = "dserv-DService"

.field private static c:Lcn/play/dserv/DServ;

.field private static d:J

.field private static e:Ljava/lang/String;

.field private static f:I


# instance fields
.field private b:Landroid/os/Handler;

.field private final g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/play/dserv/DService;->d:J

    const-string v0, ""

    sput-object v0, Lcn/play/dserv/DService;->e:Ljava/lang/String;

    const/16 v0, 0x4e20

    sput v0, Lcn/play/dserv/DService;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/play/dserv/DService;->h:I

    return-void
.end method

.method private a(Landroid/content/Context;)Lcn/play/dserv/DServ;
    .locals 11

    const/4 v4, -0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/.dserver/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    const-string v7, "egame_ds.dat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcn/play/dserv/CheckTool;->Ch(Landroid/content/Context;)Lcn/play/dserv/DServ;

    move-result-object v0

    invoke-interface {v0}, Lcn/play/dserv/DServ;->getVer()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    iget v3, p0, Lcn/play/dserv/DService;->h:I

    if-lt v2, v3, :cond_0

    iput v2, p0, Lcn/play/dserv/DService;->h:I

    const-string v2, "dserv-DService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dsVer:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcn/play/dserv/DService;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v3

    move v3, v2

    move-object v2, v0

    :goto_1
    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x400

    new-array v7, v7, [B

    :goto_2
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-ne v9, v4, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    invoke-static {p0}, Lcn/play/dserv/CheckTool;->Ch(Landroid/content/Context;)Lcn/play/dserv/DServ;

    move-result-object v0

    invoke-interface {v0}, Lcn/play/dserv/DServ;->getVer()I

    move-result v4

    if-lt v4, v3, :cond_3

    if-lez v3, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_3
    invoke-interface {v0}, Lcn/play/dserv/DServ;->getVer()I

    move-result v2

    iput v2, p0, Lcn/play/dserv/DService;->h:I

    const-string v2, "dserv-DService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ds:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcn/play/dserv/DService;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "dserv-DService"

    const-string v3, "initAss error"

    invoke-static {p1, v2, v3, v0}, Lcn/play/dserv/CheckTool;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v6, v7, v10, v9}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_3

    :cond_5
    move-object v2, v0

    move-object v5, v3

    move v3, v4

    goto :goto_1

    :cond_6
    move v3, v4

    move-object v2, v1

    move-object v5, v1

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "cn_egame_sdk_log"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "channel_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "game_id"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHander()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/play/dserv/DService;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/play/dserv/DService;->b:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcn/play/dserv/DService;->c:Lcn/play/dserv/DServ;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/play/dserv/DService;->c:Lcn/play/dserv/DServ;

    invoke-interface {v0}, Lcn/play/dserv/DServ;->saveStates()V

    sget-object v0, Lcn/play/dserv/DService;->c:Lcn/play/dserv/DServ;

    invoke-interface {v0}, Lcn/play/dserv/DServ;->stop()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12

    const/4 v3, 0x0

    const-string v2, ""

    const-string v1, ""

    const-string v0, ""

    if-eqz p1, :cond_c

    :try_start_0
    const-string v0, "act"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "p"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "v"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "m"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v2

    move-object v2, v1

    :goto_0
    const-string v1, "dserv-DService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onStartCommand:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v1, v5}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x50

    if-ne v3, v1, :cond_0

    sget-object v0, Lcn/play/dserv/DService;->c:Lcn/play/dserv/DServ;

    const/4 v1, 0x1

    const-string v2, "ACT_UPDATE_DS"

    invoke-virtual {p0}, Lcn/play/dserv/DService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0_0_ACT_UPDATE_DS"

    invoke-interface/range {v0 .. v5}, Lcn/play/dserv/DServ;->dsLog(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/play/dserv/DService;->c:Lcn/play/dserv/DServ;

    invoke-interface {v0}, Lcn/play/dserv/DServ;->stop()V

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const/4 v0, 0x0

    sput-object v0, Lcn/play/dserv/DService;->c:Lcn/play/dserv/DServ;

    const/4 v0, 0x2

    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v5, "mounted"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcn/play/dserv/DService;->c:Lcn/play/dserv/DServ;

    const/4 v1, 0x3

    const-string v2, "onStartCommand"

    invoke-virtual {p0}, Lcn/play/dserv/DService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0_0_SD card not found."

    invoke-interface/range {v0 .. v5}, Lcn/play/dserv/DServ;->dsLog(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/play/dserv/DService;->c:Lcn/play/dserv/DServ;

    invoke-interface {v0}, Lcn/play/dserv/DServ;->stop()V

    const/4 v0, 0x2

    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/play/dserv/StringUtil;->isStringWithLen(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "0_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_2
    const-string v0, "cn_egame_sdk_log"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "channel_id"

    const-string v5, "0"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "game_id"

    const-string v6, "0"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    sget-object v0, Lcn/play/dserv/DService;->c:Lcn/play/dserv/DServ;

    if-nez v0, :cond_4

    const-string v0, "dserv-DService"

    const-string v5, "dserv will init..."

    invoke-static {p0, v0, v5}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p0}, Lcn/play/dserv/DService;->a(Landroid/content/Context;)Lcn/play/dserv/DServ;

    move-result-object v0

    sput-object v0, Lcn/play/dserv/DService;->c:Lcn/play/dserv/DServ;

    if-eqz v0, :cond_5

    const-string v0, ""

    const/4 v5, 0x3

    invoke-static {v1, v5}, Lcn/play/dserv/StringUtil;->isStringWithLen(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v5, "dserv-DService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "service gcid:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcn/play/dserv/DService;->c:Lcn/play/dserv/DServ;

    invoke-interface {v5, p0, v0}, Lcn/play/dserv/DServ;->init(Lcn/play/dserv/DService;Ljava/lang/String;)V

    :cond_4
    if-nez v3, :cond_6

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcn/play/dserv/DService;->c:Lcn/play/dserv/DServ;

    const/4 v1, 0x3

    const-string v2, "initAss err"

    invoke-virtual {p0}, Lcn/play/dserv/DService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0_0_initAss failed."

    invoke-interface/range {v0 .. v5}, Lcn/play/dserv/DServ;->dsLog(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto/16 :goto_1

    :cond_6
    const-string v0, "dserv-DService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dservice act:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dserv state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/play/dserv/DService;->c:Lcn/play/dserv/DServ;

    invoke-interface {v6}, Lcn/play/dserv/DServ;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v0, v5}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x15

    if-ne v3, v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v0, 0x1

    if-nez v4, :cond_9

    const/4 v0, 0x0

    :cond_7
    :goto_3
    sput-wide v6, Lcn/play/dserv/DService;->d:J

    sput-object v4, Lcn/play/dserv/DService;->e:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcn/play/dserv/DService;->c:Lcn/play/dserv/DServ;

    invoke-interface {v0, v3, v4, v2, v1}, Lcn/play/dserv/DServ;->receiveMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_4
    const/4 v0, 0x1

    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto/16 :goto_1

    :cond_9
    :try_start_1
    sget-object v5, Lcn/play/dserv/DService;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-wide v8, Lcn/play/dserv/DService;->d:J

    sub-long v8, v6, v8

    sget v5, Lcn/play/dserv/DService;->f:I

    int-to-long v10, v5

    cmp-long v5, v8, v10

    if-gtz v5, :cond_7

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    sget-object v0, Lcn/play/dserv/DService;->c:Lcn/play/dserv/DServ;

    invoke-interface {v0, v3, v4, v2, v1}, Lcn/play/dserv/DServ;->receiveMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "dserv-DService"

    const-string v2, "onStartCommand"

    invoke-static {p0, v1, v2, v0}, Lcn/play/dserv/CheckTool;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    :cond_b
    move-object v1, v0

    goto/16 :goto_2

    :cond_c
    move-object v4, v2

    move-object v2, v1

    goto/16 :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "dserv-DService"

    const-string v1, "onTaskRemoved called."

    invoke-static {p0, v0, v1}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/play/dserv/DsReceiver;->b(Landroid/content/Context;)V

    return-void
.end method
