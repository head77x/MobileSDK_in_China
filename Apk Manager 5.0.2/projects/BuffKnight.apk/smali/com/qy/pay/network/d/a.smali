.class public Lcom/qy/pay/network/d/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/reflect/Field;)Lcom/qy/pay/network/d/b;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    aget-object v0, v2, v1

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/qy/pay/network/d/b;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v0, Lcom/qy/pay/network/d/b;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;)Lcom/qy/pay/network/d/i;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/qy/pay/network/d/i;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    aget-object v0, v2, v1

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/qy/pay/network/d/i;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v0, Lcom/qy/pay/network/d/i;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Lcom/qy/pay/network/d/i;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/network/d/a;->a(Ljava/lang/Class;)Lcom/qy/pay/network/d/i;

    move-result-object v0

    return-object v0
.end method
