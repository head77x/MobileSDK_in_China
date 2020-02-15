.class final Lcn/play/dserv/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/play/dserv/PLTask;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private synthetic c:Lcn/play/dserv/SdkServ;


# direct methods
.method constructor <init>(Lcn/play/dserv/SdkServ;)V
    .locals 1

    iput-object p1, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/play/dserv/d;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/play/dserv/d;->a:Ljava/lang/String;

    return-void
.end method

.method public final getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcn/play/dserv/d;->b:I

    return v0
.end method

.method public final init()V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    iget-object v1, v1, Lcn/play/dserv/SdkServ;->a:Lcn/play/dserv/DService;

    invoke-static {v1}, Lcn/play/dserv/CheckTool;->isNetOk(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcn/play/dserv/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/play/dserv/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_0
    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/play/dserv/d;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    iget-object v1, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    iget-object v1, v1, Lcn/play/dserv/SdkServ;->p:Ljava/lang/String;

    iget-object v2, p0, Lcn/play/dserv/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/play/dserv/SdkServ;->zip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    iget-object v1, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    iget-object v1, v1, Lcn/play/dserv/SdkServ;->p:Ljava/lang/String;

    iget-object v2, p0, Lcn/play/dserv/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/play/dserv/SdkServ;->zip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    iget-object v1, p0, Lcn/play/dserv/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    const-string v3, "upLogUrl"

    iget-object v4, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    invoke-static {v4}, Lcn/play/dserv/SdkServ;->e(Lcn/play/dserv/SdkServ;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/play/dserv/SdkServ;->getPropString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/play/dserv/SdkServ;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    iget-object v1, v1, Lcn/play/dserv/SdkServ;->a:Lcn/play/dserv/DService;

    const-string v2, "dserv-DServ"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "upLog failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/play/dserv/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcn/play/dserv/CheckTool;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    const/4 v1, 0x3

    iput v1, p0, Lcn/play/dserv/d;->b:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/play/dserv/SdkServ;->d:J

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    iget-object v0, v0, Lcn/play/dserv/SdkServ;->p:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    invoke-static {v0}, Lcn/play/dserv/SdkServ;->c(Lcn/play/dserv/SdkServ;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    iget-object v0, v0, Lcn/play/dserv/SdkServ;->a:Lcn/play/dserv/DService;

    const-string v1, "dserv-DServ"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UploadLogtask done:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    iget-wide v4, v3, Lcn/play/dserv/SdkServ;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/play/dserv/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :cond_3
    :try_start_4
    iget-object v1, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    iget-object v1, v1, Lcn/play/dserv/SdkServ;->a:Lcn/play/dserv/DService;

    const-string v2, "dserv-DServ"

    const-string v3, "upload log OK"

    invoke-static {v1, v2, v3}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    const/16 v2, 0x2c9

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    iget-object v4, v4, Lcn/play/dserv/SdkServ;->a:Lcn/play/dserv/DService;

    invoke-virtual {v4}, Lcn/play/dserv/DService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0_0_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcn/play/dserv/SdkServ;->e(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/play/dserv/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/play/dserv/d;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0

    :cond_4
    :try_start_7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/play/dserv/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_5
    iget-object v0, p0, Lcn/play/dserv/d;->c:Lcn/play/dserv/SdkServ;

    invoke-static {v0}, Lcn/play/dserv/SdkServ;->c(Lcn/play/dserv/SdkServ;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/play/dserv/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_0
.end method

.method public final setDService(Lcn/play/dserv/DServ;)V
    .locals 0

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcn/play/dserv/d;->b:I

    return-void
.end method
