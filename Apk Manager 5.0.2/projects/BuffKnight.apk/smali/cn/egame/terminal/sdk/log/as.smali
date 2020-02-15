.class public final enum Lcn/egame/terminal/sdk/log/as;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/egame/terminal/sdk/log/as;

.field public static final enum b:Lcn/egame/terminal/sdk/log/as;

.field public static final enum c:Lcn/egame/terminal/sdk/log/as;

.field public static final enum d:Lcn/egame/terminal/sdk/log/as;

.field private static final synthetic h:[Lcn/egame/terminal/sdk/log/as;


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v11, 0x4

    const/4 v14, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/egame/terminal/sdk/log/as;

    const-string v1, "CHINA_TELECOM"

    const-string v4, "\u4e2d\u56fd\u7535\u4fe1"

    new-array v5, v14, [Ljava/lang/String;

    const-string v6, "46003"

    aput-object v6, v5, v2

    const-string v6, "46005"

    aput-object v6, v5, v3

    const-string v6, "46011"

    aput-object v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lcn/egame/terminal/sdk/log/as;-><init>(Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcn/egame/terminal/sdk/log/as;->a:Lcn/egame/terminal/sdk/log/as;

    new-instance v4, Lcn/egame/terminal/sdk/log/as;

    const-string v5, "CHINA_MOBILE"

    const-string v8, "\u4e2d\u56fd\u79fb\u52a8"

    new-array v9, v11, [Ljava/lang/String;

    const-string v0, "46020"

    aput-object v0, v9, v2

    const-string v0, "46000"

    aput-object v0, v9, v3

    const-string v0, "46002"

    aput-object v0, v9, v7

    const-string v0, "46007"

    aput-object v0, v9, v14

    move v6, v3

    invoke-direct/range {v4 .. v9}, Lcn/egame/terminal/sdk/log/as;-><init>(Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v4, Lcn/egame/terminal/sdk/log/as;->b:Lcn/egame/terminal/sdk/log/as;

    new-instance v5, Lcn/egame/terminal/sdk/log/as;

    const-string v6, "CHINA_UNICOM"

    const-string v9, "\u4e2d\u56fd\u8054\u901a"

    new-array v10, v7, [Ljava/lang/String;

    const-string v0, "46001"

    aput-object v0, v10, v2

    const-string v0, "46006"

    aput-object v0, v10, v3

    move v8, v14

    invoke-direct/range {v5 .. v10}, Lcn/egame/terminal/sdk/log/as;-><init>(Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lcn/egame/terminal/sdk/log/as;->c:Lcn/egame/terminal/sdk/log/as;

    new-instance v8, Lcn/egame/terminal/sdk/log/as;

    const-string v9, "NOT_DEFINE"

    const-string v12, "\u672a\u5b9a\u4e49"

    new-array v13, v2, [Ljava/lang/String;

    move v10, v14

    invoke-direct/range {v8 .. v13}, Lcn/egame/terminal/sdk/log/as;-><init>(Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v8, Lcn/egame/terminal/sdk/log/as;->d:Lcn/egame/terminal/sdk/log/as;

    new-array v0, v11, [Lcn/egame/terminal/sdk/log/as;

    sget-object v1, Lcn/egame/terminal/sdk/log/as;->a:Lcn/egame/terminal/sdk/log/as;

    aput-object v1, v0, v2

    sget-object v1, Lcn/egame/terminal/sdk/log/as;->b:Lcn/egame/terminal/sdk/log/as;

    aput-object v1, v0, v3

    sget-object v1, Lcn/egame/terminal/sdk/log/as;->c:Lcn/egame/terminal/sdk/log/as;

    aput-object v1, v0, v7

    sget-object v1, Lcn/egame/terminal/sdk/log/as;->d:Lcn/egame/terminal/sdk/log/as;

    aput-object v1, v0, v14

    sput-object v0, Lcn/egame/terminal/sdk/log/as;->h:[Lcn/egame/terminal/sdk/log/as;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcn/egame/terminal/sdk/log/as;->e:I

    iput-object p4, p0, Lcn/egame/terminal/sdk/log/as;->f:Ljava/lang/String;

    array-length v0, p5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/as;->g:[Ljava/lang/String;

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/as;->g:[Ljava/lang/String;

    array-length v1, p5

    invoke-static {p5, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcn/egame/terminal/sdk/log/as;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcn/egame/terminal/sdk/log/as;->d:Lcn/egame/terminal/sdk/log/as;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcn/egame/terminal/sdk/log/as;->a:Lcn/egame/terminal/sdk/log/as;

    iget-object v2, v1, Lcn/egame/terminal/sdk/log/as;->g:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_1

    sget-object v1, Lcn/egame/terminal/sdk/log/as;->b:Lcn/egame/terminal/sdk/log/as;

    iget-object v2, v1, Lcn/egame/terminal/sdk/log/as;->g:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_2
    if-lt v1, v3, :cond_4

    sget-object v1, Lcn/egame/terminal/sdk/log/as;->c:Lcn/egame/terminal/sdk/log/as;

    iget-object v1, v1, Lcn/egame/terminal/sdk/log/as;->g:[Ljava/lang/String;

    array-length v2, v1

    :goto_3
    if-lt v0, v2, :cond_7

    sget-object v0, Lcn/egame/terminal/sdk/log/as;->d:Lcn/egame/terminal/sdk/log/as;

    goto :goto_0

    :cond_1
    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    sget-object v0, Lcn/egame/terminal/sdk/log/as;->a:Lcn/egame/terminal/sdk/log/as;

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    sget-object v0, Lcn/egame/terminal/sdk/log/as;->b:Lcn/egame/terminal/sdk/log/as;

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    aget-object v3, v1, v0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    sget-object v0, Lcn/egame/terminal/sdk/log/as;->c:Lcn/egame/terminal/sdk/log/as;

    goto :goto_0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcn/egame/terminal/sdk/log/as;->e:I

    return v0
.end method
