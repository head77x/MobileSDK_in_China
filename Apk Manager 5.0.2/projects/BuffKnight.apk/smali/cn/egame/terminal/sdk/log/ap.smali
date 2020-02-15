.class public Lcn/egame/terminal/sdk/log/ap;
.super Lcn/egame/terminal/sdk/log/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/egame/terminal/sdk/log/v;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/egame/terminal/sdk/log/v;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "&"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "&"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-super {p0, p1, p2}, Lcn/egame/terminal/sdk/log/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    move-result-object v0

    return-object v0
.end method
