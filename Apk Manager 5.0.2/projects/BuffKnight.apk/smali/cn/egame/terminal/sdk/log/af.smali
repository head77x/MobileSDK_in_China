.class public Lcn/egame/terminal/sdk/log/af;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Lcn/egame/terminal/sdk/log/b;

.field private static c:Ljava/util/HashMap;

.field private static d:Lcn/egame/terminal/sdk/log/l;

.field private static e:Lcn/egame/terminal/sdk/log/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x2710

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcn/egame/terminal/sdk/log/af;->b:Lcn/egame/terminal/sdk/log/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/egame/terminal/sdk/log/af;->c:Ljava/util/HashMap;

    new-instance v0, Lcn/egame/terminal/sdk/log/m;

    invoke-direct {v0}, Lcn/egame/terminal/sdk/log/m;-><init>()V

    invoke-virtual {v0, v1}, Lcn/egame/terminal/sdk/log/m;->c(I)Lcn/egame/terminal/sdk/log/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/egame/terminal/sdk/log/m;->b(I)Lcn/egame/terminal/sdk/log/m;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/egame/terminal/sdk/log/m;->a(I)Lcn/egame/terminal/sdk/log/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/egame/terminal/sdk/log/m;->a()Lcn/egame/terminal/sdk/log/l;

    move-result-object v0

    sput-object v0, Lcn/egame/terminal/sdk/log/af;->d:Lcn/egame/terminal/sdk/log/l;

    new-instance v0, Lcn/egame/terminal/sdk/log/m;

    invoke-direct {v0}, Lcn/egame/terminal/sdk/log/m;-><init>()V

    invoke-virtual {v0, v2}, Lcn/egame/terminal/sdk/log/m;->c(I)Lcn/egame/terminal/sdk/log/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/egame/terminal/sdk/log/m;->b(I)Lcn/egame/terminal/sdk/log/m;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/egame/terminal/sdk/log/m;->a(I)Lcn/egame/terminal/sdk/log/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/egame/terminal/sdk/log/m;->a()Lcn/egame/terminal/sdk/log/l;

    move-result-object v0

    sput-object v0, Lcn/egame/terminal/sdk/log/af;->e:Lcn/egame/terminal/sdk/log/l;

    sput-boolean v2, Lcn/egame/terminal/sdk/log/af;->a:Z

    return-void
.end method

.method public static a()Lcn/egame/terminal/sdk/log/b;
    .locals 3

    sget-object v0, Lcn/egame/terminal/sdk/log/af;->b:Lcn/egame/terminal/sdk/log/b;

    if-nez v0, :cond_0

    new-instance v0, Lcn/egame/terminal/sdk/log/b;

    invoke-direct {v0}, Lcn/egame/terminal/sdk/log/b;-><init>()V

    sput-object v0, Lcn/egame/terminal/sdk/log/af;->b:Lcn/egame/terminal/sdk/log/b;

    sget-object v0, Lcn/egame/terminal/sdk/log/af;->b:Lcn/egame/terminal/sdk/log/b;

    new-instance v1, Lcn/egame/terminal/sdk/log/k;

    invoke-direct {v1}, Lcn/egame/terminal/sdk/log/k;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/egame/terminal/sdk/log/k;->a(Z)Lcn/egame/terminal/sdk/log/k;

    move-result-object v1

    sget-object v2, Lcn/egame/terminal/sdk/log/af;->d:Lcn/egame/terminal/sdk/log/l;

    invoke-virtual {v1, v2}, Lcn/egame/terminal/sdk/log/k;->a(Lcn/egame/terminal/sdk/log/l;)Lcn/egame/terminal/sdk/log/k;

    move-result-object v1

    sget-object v2, Lcn/egame/terminal/sdk/log/af;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcn/egame/terminal/sdk/log/k;->a(Ljava/util/HashMap;)Lcn/egame/terminal/sdk/log/k;

    move-result-object v1

    invoke-virtual {v1}, Lcn/egame/terminal/sdk/log/k;->a()Lcn/egame/terminal/sdk/log/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/egame/terminal/sdk/log/b;->a(Lcn/egame/terminal/sdk/log/j;)V

    :cond_0
    sget-object v0, Lcn/egame/terminal/sdk/log/af;->b:Lcn/egame/terminal/sdk/log/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcn/egame/terminal/sdk/log/af;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/egame/terminal/sdk/log/af;->a()Lcn/egame/terminal/sdk/log/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/egame/terminal/sdk/log/b;->a(Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/egame/terminal/sdk/log/a;->a()Lcn/egame/terminal/sdk/log/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/egame/terminal/sdk/log/a;->a(Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcn/egame/terminal/sdk/log/af;->a(Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
