.class public Lcom/ccit/mmwlan/util/ReadConfigFile;
.super Ljava/lang/Object;
.source "ReadConfigFile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 60
    return-void
.end method


# virtual methods
.method public getConfigInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "key"

    .prologue
    .line 39
    const/4 v3, 0x0

    .line 41
    .local v3, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 42
    const-string v5, "config.properties"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 43
    .local v1, inputStream:Ljava/io/InputStream;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 44
    .local v2, pro:Ljava/util/Properties;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 45
    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v4, v3

    .line 51
    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v2           #pro:Ljava/util/Properties;
    :goto_0
    return-object v4

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 48
    const-string v4, "ReadConfigFile"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v4, 0x0

    goto :goto_0
.end method
