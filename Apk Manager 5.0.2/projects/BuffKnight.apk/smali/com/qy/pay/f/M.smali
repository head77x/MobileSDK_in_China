.class public Lcom/qy/pay/f/M;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/qy/pay/b/a;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "paylog"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/qy/pay/b/a;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/qy/pay/b/a;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "paylog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
