.class final Lcom/anysdk/Util/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anysdk/Util/c;


# direct methods
.method constructor <init>(Lcom/anysdk/Util/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/Util/d;->b:Lcom/anysdk/Util/c;

    iput-object p2, p0, Lcom/anysdk/Util/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/anysdk/Util/c;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anysdk/Util/d;->a:Landroid/content/Context;

    const-string v1, "\u8bf7\u7a0d\u7b49"

    const-string v2, "\u6570\u636e\u901a\u4fe1\u4e2d..."

    invoke-static {v0, v1, v2}, Lcom/anysdk/Util/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/anysdk/Util/c;->a(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method
