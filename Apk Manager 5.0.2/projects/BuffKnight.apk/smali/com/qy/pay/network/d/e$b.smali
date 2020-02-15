.class Lcom/qy/pay/network/d/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qy/pay/network/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/qy/pay/network/d/e;


# direct methods
.method constructor <init>(Lcom/qy/pay/network/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/network/d/e$b;->a:Lcom/qy/pay/network/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/qy/pay/network/d/e$a;

    check-cast p2, Lcom/qy/pay/network/d/e$a;

    iget-object v0, p1, Lcom/qy/pay/network/d/e$a;->a:Lcom/qy/pay/network/d/b;

    invoke-interface {v0}, Lcom/qy/pay/network/d/b;->a()I

    move-result v0

    iget-object v1, p2, Lcom/qy/pay/network/d/e$a;->a:Lcom/qy/pay/network/d/b;

    invoke-interface {v1}, Lcom/qy/pay/network/d/b;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
