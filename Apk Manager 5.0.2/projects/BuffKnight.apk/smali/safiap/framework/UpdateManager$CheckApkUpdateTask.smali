.class Lsafiap/framework/UpdateManager$CheckApkUpdateTask;
.super Lsafiap/framework/sdk/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckApkUpdateTask"
.end annotation


# static fields
.field private static final PARAM_AVP:Ljava/lang/String; = "avp"


# instance fields
.field private mExtraArugment:Ljava/lang/String;

.field private mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

.field private mType:Ljava/lang/String;

.field private synthetic this$0:Lsafiap/framework/UpdateManager;


# direct methods
.method constructor <init>(Lsafiap/framework/UpdateManager;Ljava/lang/String;Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 63
    iput-object p1, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->this$0:Lsafiap/framework/UpdateManager;

    .line 64
    const-string v0, "CheckUpdate"

    invoke-static {p1}, Lsafiap/framework/UpdateManager;->a(Lsafiap/framework/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsafiap/framework/sdk/a/b;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 57
    iput-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .line 58
    sget-object v0, Lsafiap/framework/UpdateManager;->TYPE_PLUGINS:Ljava/lang/String;

    iput-object v0, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mExtraArugment:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .line 67
    return-void
.end method

.method static synthetic a(Lsafiap/framework/UpdateManager$CheckApkUpdateTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mExtraArugment:Ljava/lang/String;

    return-void
.end method

.method private setExtraArgument(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mExtraArugment:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 16
    .parameter

    .prologue
    .line 91
    invoke-static {}, Lsafiap/framework/UpdateManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPostExecute....result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 92
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 96
    :try_start_0
    const-string v1, "["

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->this$0:Lsafiap/framework/UpdateManager;

    invoke-static {v1}, Lsafiap/framework/UpdateManager;->a(Lsafiap/framework/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lsafiap/framework/a/c;->a(Landroid/content/Context;)Lsafiap/framework/a/c;

    move-result-object v1

    .line 98
    new-instance v15, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x0

    move v13, v2

    :goto_0
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v13, v2, :cond_3

    .line 100
    invoke-virtual {v15, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 102
    invoke-static {v2}, Lsafiap/framework/a/b;->a(Lorg/json/JSONObject;)Lsafiap/framework/a/b;

    move-result-object v3

    .line 104
    iget-object v2, v3, Lsafiap/framework/a/b;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v3, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    iget-boolean v2, v3, Lsafiap/framework/a/b;->i:Z

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    :goto_1
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_0

    .line 108
    :cond_1
    const/4 v2, 0x0

    iget-object v3, v3, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Lsafiap/framework/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    :catch_0
    move-exception v1

    .line 114
    invoke-static {}, Lsafiap/framework/UpdateManager;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SAF-A Exception:530001"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    if-eqz v2, :cond_2

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lsafiap/framework/UpdateManager$OnGotUpdateListListener;->onGotUpdateListError(Ljava/lang/String;)V

    .line 120
    :cond_2
    invoke-super/range {p0 .. p1}, Lsafiap/framework/sdk/a/b;->onPostExecute(Ljava/lang/Object;)V

    .line 130
    :goto_2
    return-void

    .line 125
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    if-eqz v1, :cond_4

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    invoke-interface {v1, v2, v14}, Lsafiap/framework/UpdateManager$OnGotUpdateListListener;->onGotUpdateList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 129
    :cond_4
    invoke-super/range {p0 .. p1}, Lsafiap/framework/sdk/a/b;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 75
    invoke-super {p0}, Lsafiap/framework/sdk/a/b;->onPreExecute()V

    .line 76
    invoke-static {}, Lsafiap/framework/UpdateManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CheckApkUpdateTask.onPreExecute, mExtraArgument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mExtraArugment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lsafiap/framework/UpdateManager;->TYPE_PLUGINS:Ljava/lang/String;

    iget-object v1, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->this$0:Lsafiap/framework/UpdateManager;

    invoke-static {v0}, Lsafiap/framework/UpdateManager;->a(Lsafiap/framework/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->this$0:Lsafiap/framework/UpdateManager;

    invoke-static {v1}, Lsafiap/framework/UpdateManager;->a(Lsafiap/framework/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mExtraArugment:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lsafiap/framework/a/b;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {}, Lsafiap/framework/UpdateManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pre exec for all.json:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const-string v1, "avp"

    invoke-virtual {p0, v1, v0}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method
