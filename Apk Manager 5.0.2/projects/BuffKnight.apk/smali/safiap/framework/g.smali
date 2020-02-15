.class public final Lsafiap/framework/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private synthetic a:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method public constructor <init>(Lsafiap/framework/SafFrameworkManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1608
    iput-object p1, p0, Lsafiap/framework/b;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 1

    .prologue
    .line 1625
    const/4 v0, 0x0

    return v0
.end method

.method private static b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1632
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1613
    const/4 v0, 0x0

    .line 1614
    invoke-static {p1}, Lsafiap/framework/sdk/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1615
    iget-object v2, p0, Lsafiap/framework/b;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v2}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 1616
    if-eqz v1, :cond_0

    .line 1617
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1619
    :cond_0
    return v0
.end method
