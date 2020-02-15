.class final Lcom/anysdk/Util/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/anysdk/Util/c;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anysdk/Util/c;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/anysdk/Util/c;->a(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
