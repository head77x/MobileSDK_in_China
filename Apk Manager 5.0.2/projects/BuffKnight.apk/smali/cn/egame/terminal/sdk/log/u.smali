.class public Lcn/egame/terminal/sdk/log/u;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/egame/terminal/sdk/log/u;->a:Landroid/os/Handler;

    const/4 v0, -0x1

    sput v0, Lcn/egame/terminal/sdk/log/u;->b:I

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcn/egame/terminal/sdk/log/u;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x1

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    sget v2, Lcn/egame/terminal/sdk/log/u;->b:I

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcn/egame/terminal/sdk/log/u;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_0
    const v1, -0x777778

    const-string v0, "V"

    goto :goto_1

    :pswitch_1
    const v1, -0xff01

    const-string v0, "D"

    goto :goto_1

    :pswitch_2
    const v1, -0xff8100

    const-string v0, "I"

    goto :goto_1

    :pswitch_3
    const v1, -0x8100

    const-string v0, "W"

    goto :goto_1

    :pswitch_4
    const/high16 v1, -0x1

    const-string v0, "E"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LAZY"

    invoke-static {v0, p0}, Lcn/egame/terminal/sdk/log/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcn/egame/terminal/sdk/log/u;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcn/egame/terminal/sdk/log/u;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
