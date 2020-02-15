.class final Lsafiap/framework/SafFrameworkManager$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/SafFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1560
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$f;->a:Ljava/lang/String;

    .line 1561
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$f;->b:Ljava/lang/String;

    .line 1562
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$f;->c:Ljava/lang/String;

    .line 1563
    const/4 v0, -0x1

    iput v0, p0, Lsafiap/framework/SafFrameworkManager$f;->d:I

    .line 1569
    iput-object p2, p0, Lsafiap/framework/SafFrameworkManager$f;->a:Ljava/lang/String;

    .line 1570
    invoke-static {p1, p2}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$f;->b:Ljava/lang/String;

    .line 1571
    invoke-static {p1, p2}, Lsafiap/framework/sdk/b/d;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$f;->c:Ljava/lang/String;

    .line 1572
    invoke-static {p1, p2}, Lsafiap/framework/sdk/b/d;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lsafiap/framework/SafFrameworkManager$f;->d:I

    .line 1573
    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsafiap/framework/SafFrameworkManager$f;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1593
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1594
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1595
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$f;

    .line 1596
    invoke-direct {v0}, Lsafiap/framework/SafFrameworkManager$f;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 1597
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1599
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1576
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1579
    :try_start_0
    const-string v0, "gamename"

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$f;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1580
    const-string v0, "gameversioncode"

    iget v2, p0, Lsafiap/framework/SafFrameworkManager$f;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1581
    const-string v0, "gameversion"

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$f;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1582
    const-string v0, "gamepkg"

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$f;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    :goto_0
    return-object v1

    .line 1583
    :catch_0
    move-exception v0

    .line 1584
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
