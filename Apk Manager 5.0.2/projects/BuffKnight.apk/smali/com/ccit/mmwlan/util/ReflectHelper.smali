.class public Lcom/ccit/mmwlan/util/ReflectHelper;
.super Ljava/lang/Object;
.source "ReflectHelper.java"


# static fields
.field private static final MMCLIENT_SDK:Ljava/lang/String; = "ReflectHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "obj"
    .parameter "methodname"
    .parameter "types"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 53
    .local v0, classz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 55
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 59
    .local v3, retValue:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 61
    invoke-virtual {v2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 69
    .end local v3           #retValue:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 63
    .restart local v3       #retValue:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 64
    .local v1, ex:Ljava/lang/NoSuchMethodException;
    const-string v4, "ReflectHelper"

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    .end local v1           #ex:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 66
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "ReflectHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter "methodname"
    .parameter "types"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, classz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 95
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 99
    .local v2, retValue:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 101
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 103
    const/4 v3, 0x0

    invoke-virtual {v1, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 115
    .end local v2           #retValue:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 105
    .restart local v2       #retValue:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 107
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    const-string v3, "ReflectHelper"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v0           #ex:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "ReflectHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "className"
    .parameter "methodname"
    .parameter "types"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, classz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p2, p3}, Lcom/ccit/mmwlan/util/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 153
    .end local v0           #classz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 147
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "ReflectHelper"

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v2, 0x0

    goto :goto_0
.end method
