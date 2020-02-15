.class Lcom/unicom/dcLoader/Utils$7;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/dcLoader/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/dcLoader/Utils;


# direct methods
.method constructor <init>(Lcom/unicom/dcLoader/Utils;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v4, -0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    const-string v0, ""

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v0, "[paycode="

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v3, "[paycode="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    const v3, 0x186b5

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v0, v4}, Lcom/unicom/dcLoader/Utils;->a(Lcom/unicom/dcLoader/Utils;I)I

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v1}, Lcom/unicom/dcLoader/Utils;->a(Lcom/unicom/dcLoader/Utils;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->a()Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unicom/dcLoader/Utils;->initSDK(Landroid/content/Context;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V

    :goto_0
    return-void

    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    const v3, 0x186b6

    if-ne v2, v3, :cond_3

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v0, v4}, Lcom/unicom/dcLoader/Utils;->a(Lcom/unicom/dcLoader/Utils;I)I

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v1}, Lcom/unicom/dcLoader/Utils;->a(Lcom/unicom/dcLoader/Utils;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->a()Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unicom/dcLoader/Utils;->initSDK(Landroid/content/Context;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v1}, Lcom/unicom/dcLoader/Utils;->a(Lcom/unicom/dcLoader/Utils;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v2}, Lcom/unicom/dcLoader/Utils;->g(Lcom/unicom/dcLoader/Utils;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v3}, Lcom/unicom/dcLoader/Utils;->h(Lcom/unicom/dcLoader/Utils;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->a()Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unicom/dcLoader/Utils;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v1}, Lcom/unicom/dcLoader/Utils;->a(Lcom/unicom/dcLoader/Utils;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v2}, Lcom/unicom/dcLoader/Utils;->g(Lcom/unicom/dcLoader/Utils;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v3}, Lcom/unicom/dcLoader/Utils;->i(Lcom/unicom/dcLoader/Utils;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v4}, Lcom/unicom/dcLoader/Utils;->h(Lcom/unicom/dcLoader/Utils;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->a()Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/unicom/dcLoader/Utils;->payOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V

    goto :goto_0

    :cond_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    const v3, 0x186b7

    if-ne v2, v3, :cond_5

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v1}, Lcom/unicom/dcLoader/Utils;->a(Lcom/unicom/dcLoader/Utils;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v2}, Lcom/unicom/dcLoader/Utils;->g(Lcom/unicom/dcLoader/Utils;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v3}, Lcom/unicom/dcLoader/Utils;->h(Lcom/unicom/dcLoader/Utils;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->a()Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unicom/dcLoader/Utils;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v1}, Lcom/unicom/dcLoader/Utils;->a(Lcom/unicom/dcLoader/Utils;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v2}, Lcom/unicom/dcLoader/Utils;->g(Lcom/unicom/dcLoader/Utils;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v3}, Lcom/unicom/dcLoader/Utils;->i(Lcom/unicom/dcLoader/Utils;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unicom/dcLoader/Utils$7;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v4}, Lcom/unicom/dcLoader/Utils;->h(Lcom/unicom/dcLoader/Utils;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->a()Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/unicom/dcLoader/Utils;->payOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/unicom/dcLoader/Utils;->a()Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v0, v3, v4, v1}, Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;->PayResult(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_0
.end method
