.class public Lcom/qy/pay/network/b/f;
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

.field private c:I
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x2
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x3
    .end annotation
.end field

.field private e:B
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x4
    .end annotation
.end field

.field private f:I
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x5
    .end annotation
.end field

.field private g:I
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x6
    .end annotation
.end field

.field private h:B
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x7
    .end annotation
.end field

.field private i:Lcom/qy/pay/network/b/i;
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x8
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qy/pay/network/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0xa
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Lcom/qy/pay/network/d/b;
        a = 0xb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/qy/pay/network/b/i;

    invoke-direct {v0}, Lcom/qy/pay/network/b/i;-><init>()V

    iput-object v0, p0, Lcom/qy/pay/network/b/f;->i:Lcom/qy/pay/network/b/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qy/pay/network/b/f;->j:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/network/b/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(B)V
    .locals 0

    iput-byte p1, p0, Lcom/qy/pay/network/b/f;->e:B

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/qy/pay/network/b/f;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/network/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/qy/pay/network/b/f;->f:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/network/b/f;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/network/b/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/qy/pay/network/b/i;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/network/b/f;->i:Lcom/qy/pay/network/b/i;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/qy/pay/network/b/f;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/qy/pay/network/b/f;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/qy/pay/network/b/f;->b:I

    return v0
.end method

.method public h()B
    .locals 1

    iget-byte v0, p0, Lcom/qy/pay/network/b/f;->e:B

    return v0
.end method

.method public i()B
    .locals 1

    iget-byte v0, p0, Lcom/qy/pay/network/b/f;->h:B

    return v0
.end method

.method public j()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qy/pay/network/b/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qy/pay/network/b/f;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PayCodeInfo [code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/network/b/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qy/pay/network/b/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qy/pay/network/b/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/network/b/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/qy/pay/network/b/f;->e:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qy/pay/network/b/f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qy/pay/network/b/f;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ploy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/qy/pay/network/b/f;->h:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verifyInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/network/b/f;->i:Lcom/qy/pay/network/b/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interceptInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/network/b/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cpId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/network/b/f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reserved2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/network/b/f;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
