.class final Lcn/play/dserv/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/play/dserv/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/play/dserv/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/play/dserv/a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcn/play/dserv/a;->a:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "checktool_gid"

    aput-object v2, v1, v5

    const-string v2, "checktool_cid"

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcn/play/dserv/a;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcn/play/dserv/a;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcn/play/dserv/CheckTool;->a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcn/play/dserv/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/play/dserv/CheckTool;->a(Landroid/content/Context;)Lcn/play/dserv/CheckTool;

    move-result-object v0

    iget-object v1, p0, Lcn/play/dserv/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/play/dserv/CheckTool;->a(Lcn/play/dserv/CheckTool;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/play/dserv/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/play/dserv/CheckTool;->b(Lcn/play/dserv/CheckTool;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/play/dserv/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/play/dserv/CheckTool;->a(Lcn/play/dserv/CheckTool;Landroid/content/Context;)V

    invoke-static {v0, v4}, Lcn/play/dserv/CheckTool;->a(Lcn/play/dserv/CheckTool;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/play/dserv/a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/play/dserv/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/play/dserv/a;->a:Landroid/content/Context;

    const-string v2, "dserv-init"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "m:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gcid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/play/dserv/a;->a:Landroid/content/Context;

    invoke-static {v4}, Lcn/play/dserv/CheckTool;->a(Landroid/content/Context;)Lcn/play/dserv/CheckTool;

    move-result-object v4

    invoke-virtual {v4}, Lcn/play/dserv/CheckTool;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/play/dserv/a;->a:Landroid/content/Context;

    const/16 v2, 0x15

    iget-object v3, p0, Lcn/play/dserv/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/play/dserv/CheckTool;->Cd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcn/play/dserv/CheckTool;->Cb(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
