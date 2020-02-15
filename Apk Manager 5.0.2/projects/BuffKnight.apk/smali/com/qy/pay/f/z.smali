.class Lcom/qy/pay/f/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/y;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/qy/pay/f/y;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/z;->a:Lcom/qy/pay/f/y;

    iput-object p2, p0, Lcom/qy/pay/f/z;->b:Ljava/lang/String;

    iput p3, p0, Lcom/qy/pay/f/z;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/qy/pay/f/z;->a:Lcom/qy/pay/f/y;

    invoke-static {v0}, Lcom/qy/pay/f/y;->a(Lcom/qy/pay/f/y;)Lcom/qy/pay/f/i;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/f/z;->b:Ljava/lang/String;

    iget v2, p0, Lcom/qy/pay/f/z;->c:I

    invoke-static {v0, v1, v2}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/f/i;Ljava/lang/String;I)V

    return-void
.end method
