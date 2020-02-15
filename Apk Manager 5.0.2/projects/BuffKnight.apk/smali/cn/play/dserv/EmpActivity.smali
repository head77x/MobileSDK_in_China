.class public Lcn/play/dserv/EmpActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String; = "dserv-EmpActivity"


# instance fields
.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const-string v0, "dserv-EmpActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "emvPath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " emvClass:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "dserv-EmpActivity"

    const-string v1, "EMV is loading..."

    invoke-static {p0, v0, v1}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcn/play/dserv/CheckTool;->Cm(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/play/dserv/EmView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcn/play/dserv/EmView;->init(Landroid/content/Context;)V

    invoke-interface {v0}, Lcn/play/dserv/EmView;->getView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "dserv-EmpActivity"

    const-string v1, "EMV is null"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/play/dserv/CheckTool;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "dserv-EmpActivity"

    const-string v2, "loadView error."

    invoke-static {p0, v1, v2, v0}, Lcn/play/dserv/CheckTool;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public getUid()J
    .locals 2

    iget-wide v0, p0, Lcn/play/dserv/EmpActivity;->b:J

    return-wide v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/play/dserv/EmpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "emvPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/play/dserv/EmpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "emvClass"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/play/dserv/EmpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "uid"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/play/dserv/EmpActivity;->b:J

    invoke-virtual {p0}, Lcn/play/dserv/EmpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "no"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcn/play/dserv/EmpActivity;->requestWindowFeature(I)Z

    invoke-static {v1, v6}, Lcn/play/dserv/StringUtil;->isStringWithLen(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, v6}, Lcn/play/dserv/StringUtil;->isStringWithLen(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, v0}, Lcn/play/dserv/EmpActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Lcn/play/dserv/EmpActivity;->setContentView(Landroid/view/View;)V

    invoke-static {v2, v6}, Lcn/play/dserv/StringUtil;->isStringWithLen(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    invoke-static {p0, v0, v2}, Lcn/play/dserv/CheckTool;->sLog(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "dserv-EmpActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadView failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v2, v0, v1}, Lcn/play/dserv/CheckTool;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcn/play/dserv/EmpActivity;->finish()V

    goto :goto_0
.end method
