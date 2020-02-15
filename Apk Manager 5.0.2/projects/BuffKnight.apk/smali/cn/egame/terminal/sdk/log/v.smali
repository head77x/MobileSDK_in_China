.class public Lcn/egame/terminal/sdk/log/v;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/egame/terminal/sdk/log/v;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/v;->a:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/egame/terminal/sdk/log/v;->b:Z

    iput-boolean p1, p0, Lcn/egame/terminal/sdk/log/v;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcn/egame/terminal/sdk/log/v;
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/egame/terminal/sdk/log/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;J)Lcn/egame/terminal/sdk/log/v;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/egame/terminal/sdk/log/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcn/egame/terminal/sdk/log/v;->b(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    move-result-object p0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;
    .locals 3

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/v;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/v;->a:Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v0, p0, Lcn/egame/terminal/sdk/log/v;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/v;->a:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcn/egame/terminal/sdk/log/v;->a:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/v;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
