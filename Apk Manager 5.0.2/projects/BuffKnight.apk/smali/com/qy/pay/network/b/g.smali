.class public Lcom/qy/pay/network/b/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x0
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x1
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x2
    .end annotation
.end field

.field private d:B
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x3
    .end annotation
.end field

.field private e:B
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x4
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qy/pay/network/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x6
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/network/b/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(B)V
    .locals 0

    iput-byte p1, p0, Lcom/qy/pay/network/b/g;->e:B

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/network/b/g;->g:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/network/b/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()B
    .locals 1

    iget-byte v0, p0, Lcom/qy/pay/network/b/g;->d:B

    return v0
.end method

.method public d()B
    .locals 1

    iget-byte v0, p0, Lcom/qy/pay/network/b/g;->e:B

    return v0
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qy/pay/network/b/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qy/pay/network/b/g;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/qy/pay/network/b/g;->b:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/network/b/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PayInfo [pointNum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/network/b/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qy/pay/network/b/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/network/b/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/qy/pay/network/b/g;->d:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/qy/pay/network/b/g;->e:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payCodeInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/network/b/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/network/b/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reserved2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/network/b/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
