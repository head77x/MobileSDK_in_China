.class public Lcom/estore/lsms/tools/ApConfig;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estore/lsms/tools/ApConfig;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/estore/lsms/tools/ApConfig;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/estore/lsms/tools/ApConfig;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/estore/lsms/tools/ApConfig;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/estore/lsms/tools/ApConfig;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estore/lsms/tools/ApConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getApPhoneNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estore/lsms/tools/ApConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estore/lsms/tools/ApConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getApsecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estore/lsms/tools/ApConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTestFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estore/lsms/tools/ApConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ctestore_apname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/estore/lsms/tools/ApConfig;->d:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ctestore_apsecret"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lcom/estore/lsms/tools/ApConfig;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "ctestore_apphonenum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p2, p0, Lcom/estore/lsms/tools/ApConfig;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "ctestore_testflag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p2, p0, Lcom/estore/lsms/tools/ApConfig;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "ctestore_appname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/estore/lsms/tools/ApConfig;->e:Ljava/lang/String;

    goto :goto_0
.end method
