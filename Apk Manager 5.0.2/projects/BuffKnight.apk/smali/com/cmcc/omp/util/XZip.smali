.class public Lcom/cmcc/omp/util/XZip;
.super Ljava/lang/Object;
.source "XZip.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UnZipAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "zipFileString"
    .parameter "outPathString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/cmcc_omp_safetybin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v2, tempFile1:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/help.data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v3, tempFile2:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 34
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/readme.data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v4, tempFile3:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 41
    const-string v1, ""

    .line 43
    .local v1, szName:Ljava/lang/String;
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    .local v0, inZip:Ljava/util/zip/ZipInputStream;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    .local v5, zipEntry:Ljava/util/zip/ZipEntry;
    if-nez v5, :cond_3

    .line 65
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 52
    const-string v6, "assets/cmcc_omp_safetybin"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 54
    const-string v6, "cmcc_omp_safetybin"

    invoke-static {v0, p1, v6}, Lcom/cmcc/omp/util/XZip;->unzip(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 56
    :cond_4
    const-string v6, "assets/help.data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 58
    const-string v6, "help.data"

    invoke-static {v0, p1, v6}, Lcom/cmcc/omp/util/XZip;->unzip(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_5
    const-string v6, "assets/readme.data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 62
    const-string v6, "readme.data"

    invoke-static {v0, p1, v6}, Lcom/cmcc/omp/util/XZip;->unzip(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static unzip(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "inZip"
    .parameter "outPathString"
    .parameter "zipPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    const/4 v4, 0x0

    .line 80
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    .end local v4           #out:Ljava/io/FileOutputStream;
    .local v5, out:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    :try_start_2
    new-array v0, v6, [B

    .line 83
    .local v0, buffer:[B
    :goto_1
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    .local v3, len:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 88
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    if-eqz v5, :cond_0

    .line 91
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 94
    :cond_0
    return-void

    .line 73
    .end local v0           #buffer:[B
    .end local v3           #len:I
    .end local v5           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #buffer:[B
    .restart local v3       #len:I
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :cond_1
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v5, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 86
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 89
    .end local v0           #buffer:[B
    .end local v3           #len:I
    :catchall_0
    move-exception v6

    move-object v4, v5

    .line 90
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v4, :cond_2

    .line 91
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 93
    :cond_2
    throw v6

    .line 89
    :catchall_1
    move-exception v6

    goto :goto_2
.end method
