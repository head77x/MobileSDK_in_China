.class public Lsafiap/framework/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lsafiap/framework/SafFrameworkManager;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lsafiap/framework/b$a;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsafiap/framework/SafFrameworkManager;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lsafiap/framework/b$a;-><init>(Lsafiap/framework/SafFrameworkManager;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x7532

    .line 128
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NotifyHandler....msg.what:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actionName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 131
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-object v1, p0, Lsafiap/framework/b$a;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->b(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lsafiap/framework/b$a;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->b(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "default"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :goto_1
    iget-object v0, p0, Lsafiap/framework/b$a;->a:Lsafiap/framework/SafFrameworkManager;

    iget-object v0, p0, Lsafiap/framework/b$a;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lsafiap/framework/SafFrameworkManager;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v1, p0, Lsafiap/framework/b$a;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->b(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lsafiap/framework/b$a;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->b(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "default"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 147
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "file_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lsafiap/framework/b$a;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v2}, Lsafiap/framework/SafFrameworkManager;->b(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lsafiap/framework/b$a;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/b$a;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->b(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "\u60a8\u624b\u673a\u4e0a\u7684\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u65b0\u7248\u672c\u5df2\u7ecf\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u5b89\u88c5\uff1f"

    invoke-static {v0, v1, v2}, Lsafiap/framework/SafFrameworkManager;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lsafiap/framework/b$a;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->b(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v1, p0, Lsafiap/framework/b$a;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->b(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    sget-object v1, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lsafiap/framework/b$a;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lsafiap/framework/SafFrameworkManager;->b(Landroid/content/Context;I)V

    .line 164
    :cond_2
    iget-object v0, p0, Lsafiap/framework/b$a;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->d(Lsafiap/framework/SafFrameworkManager;)Z

    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 173
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 174
    const-string v2, "action_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    packed-switch p3, :pswitch_data_0

    .line 187
    const/4 v2, -0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 190
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0, v0}, Lsafiap/framework/b$a;->a(Landroid/os/Message;)V

    .line 192
    return-void

    .line 177
    :pswitch_0
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 180
    :pswitch_1
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 183
    :pswitch_2
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 184
    const-string v2, "file_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
