.class public Lcom/qy/pay/f/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    :goto_1
    add-int/lit8 v2, p0, -0xa

    if-lez v2, :cond_1

    add-int/lit8 p0, p0, -0xa

    const/16 v2, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/qy/pay/f/g;->a(Ljava/util/Random;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/qy/pay/f/g;->a(Ljava/util/Random;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/Random;I)Ljava/lang/String;
    .locals 6

    const-wide/high16 v4, 0x4024

    int-to-double v0, p1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, p1, -0x1

    int-to-double v2, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    rem-int v0, v3, v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
