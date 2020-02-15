.class public Lcom/unicom/dcLoader/MyDexClassLoader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDexClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DexClassLoader;
    .locals 1

    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v0
.end method
