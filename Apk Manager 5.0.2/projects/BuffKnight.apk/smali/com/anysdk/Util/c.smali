.class public final Lcom/anysdk/Util/c;
.super Ljava/lang/Object;


# static fields
.field private static f:Landroid/app/ProgressDialog;


# instance fields
.field private a:Lcom/anysdk/Util/SdkHttpListener;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/anysdk/Util/c;->f:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anysdk/Util/c;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    sput-object p0, Lcom/anysdk/Util/c;->f:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-object v0
.end method

.method static synthetic a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/anysdk/Util/c;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 1

    new-instance v0, Lcom/anysdk/Util/f;

    invoke-direct {v0}, Lcom/anysdk/Util/f;-><init>()V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/anysdk/Util/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/anysdk/Util/c;->c:Z

    return v0
.end method

.method static synthetic b()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/anysdk/Util/c;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic b(Lcom/anysdk/Util/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/anysdk/Util/c;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/anysdk/Util/c;)I
    .locals 1

    iget v0, p0, Lcom/anysdk/Util/c;->e:I

    return v0
.end method

.method static synthetic d(Lcom/anysdk/Util/c;)Lcom/anysdk/Util/SdkHttpListener;
    .locals 1

    iget-object v0, p0, Lcom/anysdk/Util/c;->a:Lcom/anysdk/Util/SdkHttpListener;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/anysdk/Util/SdkHttpListener;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anysdk/Util/SdkHttpListener;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anysdk/Util/c;->a:Lcom/anysdk/Util/SdkHttpListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anysdk/Util/c;->c:Z

    iput-object p2, p0, Lcom/anysdk/Util/c;->b:Ljava/util/List;

    const v0, 0xea60

    iput v0, p0, Lcom/anysdk/Util/c;->e:I

    iget-object v0, p0, Lcom/anysdk/Util/c;->d:Landroid/content/Context;

    new-instance v1, Lcom/anysdk/Util/d;

    invoke-direct {v1, p0, v0}, Lcom/anysdk/Util/d;-><init>(Lcom/anysdk/Util/c;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/anysdk/Util/e;

    invoke-direct {v1, p0, v0, p3}, Lcom/anysdk/Util/e;-><init>(Lcom/anysdk/Util/c;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/anysdk/Util/e;->start()V

    return-void
.end method
