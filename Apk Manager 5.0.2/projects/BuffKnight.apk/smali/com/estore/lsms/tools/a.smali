.class final Lcom/estore/lsms/tools/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/estore/lsms/tools/MyDialog;


# direct methods
.method constructor <init>(Lcom/estore/lsms/tools/MyDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/estore/lsms/tools/a;->a:Lcom/estore/lsms/tools/MyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/estore/lsms/tools/a;->a:Lcom/estore/lsms/tools/MyDialog;

    iget-object v1, p0, Lcom/estore/lsms/tools/a;->a:Lcom/estore/lsms/tools/MyDialog;

    invoke-static {v1}, Lcom/estore/lsms/tools/MyDialog;->a(Lcom/estore/lsms/tools/MyDialog;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lcom/estore/lsms/tools/MyDialog;->a(Lcom/estore/lsms/tools/MyDialog;Landroid/os/Handler;Ljava/lang/String;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
