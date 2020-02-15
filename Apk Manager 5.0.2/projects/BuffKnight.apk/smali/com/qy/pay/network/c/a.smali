.class public Lcom/qy/pay/network/c/a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/qy/pay/network/d/i;
    c = 0x18a8a
.end annotation


# instance fields
.field private a:Lcom/qy/pay/network/b/h;
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x0
    .end annotation
.end field

.field private b:Lcom/qy/pay/network/b/a;
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x1
    .end annotation
.end field

.field private c:Lcom/qy/pay/network/b/c;
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x2
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x3
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qy/pay/network/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/network/c/a;->b:Lcom/qy/pay/network/b/a;

    return-void
.end method

.method public a(Lcom/qy/pay/network/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/network/c/a;->c:Lcom/qy/pay/network/b/c;

    return-void
.end method

.method public a(Lcom/qy/pay/network/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/network/c/a;->a:Lcom/qy/pay/network/b/h;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetInitReq [terminalInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/network/c/a;->a:Lcom/qy/pay/network/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cpInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/network/c/a;->b:Lcom/qy/pay/network/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/network/c/a;->c:Lcom/qy/pay/network/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reserved1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/network/c/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reserved2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/network/c/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
