.class public Lsafiap/framework/sdk/a/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lsafiap/framework/util/MyLogger; = null

.field private static final c:Ljava/lang/String; = "ApkDownloadTask"

.field private static final d:Ljava/lang/String; = "X-SAF-UID"

.field private static final e:Ljava/lang/String; = "X-SAF-MAC"

.field private static final f:Ljava/lang/String; = "X-SAF-IMEI"

.field private static final g:Ljava/lang/String; = "X-SAF-IMSI"

.field private static final h:Ljava/lang/String; = "X-SAF-Action"

.field private static final i:Ljava/lang/String; = "X-SAF-Version"

.field private static final j:Ljava/lang/String; = "X-SAF-System"

.field private static final k:Ljava/lang/String; = "X-SAF-Phone"

.field private static final l:I = 0x2000


# instance fields
.field protected a:Ljava/lang/String;

.field private m:Landroid/content/Context;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Lsafiap/framework/sdk/b/c;

.field private q:Z

.field private r:Z

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "ApkDownloadTask"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 55
    iput-object v0, p0, Lsafiap/framework/sdk/a/a;->m:Landroid/content/Context;

    .line 59
    iput-object v0, p0, Lsafiap/framework/sdk/a/a;->p:Lsafiap/framework/sdk/b/c;

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsafiap/framework/sdk/a/a;->s:J

    .line 73
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iput-object p2, p0, Lsafiap/framework/sdk/a/a;->a:Ljava/lang/String;

    .line 78
    :goto_0
    if-gez p3, :cond_2

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lsafiap/framework/sdk/a/a;->n:I

    .line 84
    :goto_1
    iput-boolean p4, p0, Lsafiap/framework/sdk/a/a;->q:Z

    .line 85
    iput-object p5, p0, Lsafiap/framework/sdk/a/a;->o:Ljava/lang/String;

    .line 86
    if-eqz p1, :cond_0

    .line 87
    iput-object p1, p0, Lsafiap/framework/sdk/a/a;->m:Landroid/content/Context;

    .line 88
    new-instance v0, Lsafiap/framework/sdk/b/c;

    iget-object v1, p0, Lsafiap/framework/sdk/a/a;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsafiap/framework/sdk/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/sdk/a/a;->p:Lsafiap/framework/sdk/b/c;

    .line 90
    :cond_0
    return-void

    .line 76
    :cond_1
    const-string v0, "Saf.Default.Action"

    iput-object v0, p0, Lsafiap/framework/sdk/a/a;->a:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_2
    iput p3, p0, Lsafiap/framework/sdk/a/a;->n:I

    goto :goto_1
.end method

.method private a()I
    .locals 3

    .prologue
    const/16 v2, 0x2000

    .line 296
    iget-object v0, p0, Lsafiap/framework/sdk/a/a;->m:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    const-string v1, "Context is null! Use default cache size."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 301
    :cond_0
    return v2
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .parameter

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/sdk/a/a;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    :cond_0
    const/4 v4, 0x0

    .line 282
    :goto_0
    return-object v4

    .line 97
    :cond_1
    sget-object v2, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ApkDownloadTask.doInBackgroud().Task:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lsafiap/framework/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 98
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lsafiap/framework/sdk/a/a;->q:Z

    if-eqz v2, :cond_2

    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lsafiap/framework/sdk/a/a;->r:Z

    .line 102
    const-string v2, "patch"

    move-object/from16 v0, p0

    iget-object v3, v0, Lsafiap/framework/sdk/a/a;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/sdk/a/a;->a:Ljava/lang/String;

    invoke-static {v2}, Lsafiap/framework/sdk/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 107
    :goto_2
    sget-object v2, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "target file: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 108
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    const/4 v4, 0x0

    goto :goto_0

    .line 98
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 105
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/sdk/a/a;->a:Ljava/lang/String;

    invoke-static {v2}, Lsafiap/framework/sdk/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_2

    .line 112
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/sdk/a/a;->m:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsafiap/framework/sdk/a/a;->q:Z

    invoke-static {v2, v4, v3}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v10

    .line 113
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 114
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 117
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/sdk/a/a;->a:Ljava/lang/String;

    invoke-static {v2}, Lsafiap/framework/sdk/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    sget-object v2, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "temp file: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/sdk/a/a;->m:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsafiap/framework/sdk/a/a;->q:Z

    invoke-static {v2, v5, v3}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v11

    .line 120
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 121
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 124
    :cond_6
    new-instance v12, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 125
    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 126
    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 128
    new-instance v13, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v13}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 130
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v14, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/sdk/a/a;->p:Lsafiap/framework/sdk/b/c;

    invoke-virtual {v2}, Lsafiap/framework/sdk/b/c;->d()Ljava/lang/String;

    move-result-object v2

    .line 133
    if-eqz v2, :cond_7

    const-string v3, ""

    if-ne v2, v3, :cond_8

    .line 134
    :cond_7
    const-string v2, "Saf-Uid-Unknown"

    .line 136
    :cond_8
    const-string v3, "X-SAF-UID"

    invoke-virtual {v14, v3, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/sdk/a/a;->p:Lsafiap/framework/sdk/b/c;

    invoke-virtual {v2}, Lsafiap/framework/sdk/b/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 139
    if-eqz v2, :cond_9

    const-string v3, ""

    if-ne v2, v3, :cond_a

    .line 140
    :cond_9
    const-string v2, "Android-Saf-MAC"

    .line 142
    :cond_a
    const-string v3, "X-SAF-MAC"

    invoke-virtual {v14, v3, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/sdk/a/a;->p:Lsafiap/framework/sdk/b/c;

    invoke-virtual {v2}, Lsafiap/framework/sdk/b/c;->a()Ljava/lang/String;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_b

    const-string v3, ""

    if-ne v2, v3, :cond_c

    .line 146
    :cond_b
    const-string v2, "Android-Saf-IMEI"

    .line 148
    :cond_c
    const-string v3, "X-SAF-IMEI"

    invoke-virtual {v14, v3, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/sdk/a/a;->p:Lsafiap/framework/sdk/b/c;

    invoke-virtual {v2}, Lsafiap/framework/sdk/b/c;->b()Ljava/lang/String;

    move-result-object v2

    .line 151
    if-eqz v2, :cond_d

    const-string v3, ""

    if-ne v2, v3, :cond_e

    .line 152
    :cond_d
    const-string v2, "Android-Saf-IMSI"

    .line 154
    :cond_e
    const-string v3, "X-SAF-IMSI"

    invoke-virtual {v14, v3, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lsafiap/framework/sdk/b/c;->g()Ljava/lang/String;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_f

    const-string v3, ""

    if-ne v2, v3, :cond_14

    .line 158
    :cond_f
    const-string v2, "Android:0"

    .line 162
    :goto_3
    const-string v3, "X-SAF-System"

    invoke-virtual {v14, v3, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsafiap/framework/sdk/b/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lsafiap/framework/sdk/b/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    const-string v3, " "

    if-eq v2, v3, :cond_10

    invoke-static {}, Lsafiap/framework/sdk/b/c;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-static {}, Lsafiap/framework/sdk/b/c;->e()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    .line 166
    :cond_10
    const-string v2, "Android-Saf-Phone"

    .line 168
    :cond_11
    const-string v3, "X-SAF-Phone"

    invoke-virtual {v14, v3, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v2, "X-SAF-Action"

    move-object/from16 v0, p0

    iget-object v3, v0, Lsafiap/framework/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v14, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v2, "X-SAF-Version"

    move-object/from16 v0, p0

    iget v3, v0, Lsafiap/framework/sdk/a/a;->n:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v2, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "uid: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lsafiap/framework/sdk/a/a;->p:Lsafiap/framework/sdk/b/c;

    invoke-virtual {v6}, Lsafiap/framework/sdk/b/c;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", package: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lsafiap/framework/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " version: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lsafiap/framework/sdk/a/a;->n:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 174
    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_12

    .line 175
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "bytes="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_12
    const/4 v2, 0x4

    move v7, v2

    .line 181
    :goto_4
    if-lez v7, :cond_25

    .line 182
    sget-object v2, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "retry id: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v6, v7, 0x5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 184
    :try_start_0
    invoke-interface {v12, v14, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 186
    const-string v2, "http.target_host"

    invoke-interface {v13, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpHost;

    .line 187
    const-string v3, "http.request"

    invoke-interface {v13, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 188
    sget-object v8, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "Catch targetHost: "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 189
    sget-object v2, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Catch realRequest: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 191
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 192
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 193
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    .line 194
    sget-object v8, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "Catch Task: "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, " get respond code: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, " get reason: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 195
    const/16 v2, 0xc8

    if-eq v3, v2, :cond_15

    const/16 v2, 0xce

    if-eq v3, v2, :cond_15

    .line 196
    sget-object v2, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Download failed, response code: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 197
    const/16 v2, 0x1a0

    if-ne v3, v2, :cond_13

    .line 198
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 200
    :cond_13
    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 160
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Android:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 203
    :cond_15
    :try_start_1
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 204
    if-eqz v2, :cond_23

    .line 205
    sget-object v3, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    const-string v6, "entity is not null"

    invoke-virtual {v3, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 206
    const/4 v6, 0x0

    .line 207
    const/4 v3, 0x0

    .line 211
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 212
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    const-wide/16 v16, 0x0

    add-long v16, v16, v8

    .line 213
    sget-object v2, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "filename="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " filelength="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 214
    const-wide/16 v8, 0x0

    .line 216
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lsafiap/framework/sdk/a/a;->r:Z

    if-eqz v2, :cond_17

    .line 217
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v15, Ljava/io/FileOutputStream;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v15, v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v2

    .line 221
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/sdk/a/a;->m:Landroid/content/Context;

    if-nez v2, :cond_16

    sget-object v2, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    const-string v15, "Context is null! Use default cache size."

    invoke-virtual {v2, v15}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 222
    :cond_16
    const/16 v2, 0x2000

    new-array v15, v2, [B

    .line 223
    const/4 v2, 0x0

    :goto_6
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v2, v0, :cond_18

    invoke-virtual/range {p0 .. p0}, Lsafiap/framework/sdk/a/a;->isCancelled()Z

    move-result v18

    if-nez v18, :cond_18

    .line 224
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v15, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 225
    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v8, v8, v18

    .line 226
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/16 v18, 0x0

    long-to-int v0, v8

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v2, v18

    const/16 v18, 0x1

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v2, v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lsafiap/framework/sdk/a/a;->publishProgress([Ljava/lang/Object;)V

    .line 223
    invoke-virtual {v6, v15}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_6

    .line 219
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/sdk/a/a;->m:Landroid/content/Context;

    const v15, 0x8001

    invoke-virtual {v2, v5, v15}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    goto :goto_5

    .line 228
    :cond_18
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 234
    if-eqz v3, :cond_19

    .line 235
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 237
    :cond_19
    if-eqz v6, :cond_1a

    .line 238
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 242
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lsafiap/framework/sdk/a/a;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 243
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    move-wide/from16 v0, v16

    long-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    move-wide/from16 v0, v16

    long-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lsafiap/framework/sdk/a/a;->publishProgress([Ljava/lang/Object;)V

    .line 248
    :goto_7
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v16

    if-nez v2, :cond_22

    .line 250
    invoke-virtual {v11, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 251
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 252
    if-eqz v2, :cond_21

    .line 278
    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_0

    .line 229
    :catch_0
    move-exception v2

    .line 230
    :try_start_4
    const-string v8, "ApkDownloadTask"

    const-string v9, "SAF-A Exception:500001"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 232
    if-eqz v3, :cond_1b

    .line 235
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 237
    :cond_1b
    if-eqz v6, :cond_1c

    .line 238
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 278
    :cond_1c
    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 234
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_1d

    .line 235
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 237
    :cond_1d
    if-eqz v6, :cond_1e

    .line 238
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_1e
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 264
    :catch_1
    move-exception v2

    .line 265
    :try_start_7
    const-string v3, "ApkDownloadTask"

    const-string v6, "SAF-A Exception:500002"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 267
    add-int/lit8 v2, v7, -0x1

    .line 278
    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move v7, v2

    .line 279
    goto/16 :goto_4

    .line 245
    :cond_1f
    const/4 v2, 0x2

    :try_start_8
    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    move-wide/from16 v0, v16

    long-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lsafiap/framework/sdk/a/a;->publishProgress([Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_7

    .line 268
    :catch_2
    move-exception v2

    .line 269
    :try_start_9
    const-string v3, "ApkDownloadTask"

    const-string v6, "SAF-A Exception:500003"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-nez v3, :cond_20

    instance-of v3, v2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v3, :cond_20

    instance-of v3, v2, Lorg/apache/http/NoHttpResponseException;

    if-nez v3, :cond_20

    instance-of v2, v2, Ljava/net/SocketException;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v2, :cond_24

    .line 273
    :cond_20
    add-int/lit8 v2, v7, -0x1

    .line 278
    :goto_8
    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move v7, v2

    .line 279
    goto/16 :goto_4

    .line 255
    :cond_21
    :try_start_a
    sget-object v2, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    const-string v3, "Apk cannot be saved! Check for permission."

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 256
    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 278
    :cond_22
    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v4, v5

    goto/16 :goto_0

    .line 262
    :cond_23
    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 275
    :cond_24
    const/4 v2, 0x0

    goto :goto_8

    .line 278
    :catchall_1
    move-exception v2

    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v2

    .line 282
    :cond_25
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsafiap/framework/sdk/a/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .locals 3

    .prologue
    .line 287
    sget-object v0, Lsafiap/framework/sdk/a/a;->b:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Task: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsafiap/framework/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is cancelled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lsafiap/framework/sdk/a/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lsafiap/framework/sdk/a/a;->m:Landroid/content/Context;

    iget-object v1, p0, Lsafiap/framework/sdk/a/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lsafiap/framework/sdk/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lsafiap/framework/sdk/a/a;->r:Z

    invoke-static {v0, v1, v2}, Lsafiap/framework/sdk/b/d;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 292
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 293
    return-void
.end method
