.class final Lcom/anysdk/framework/AdsWrapper$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$curAdapter:Lcom/anysdk/framework/InterfaceAds;

.field final synthetic val$curPoints:I


# direct methods
.method constructor <init>(Lcom/anysdk/framework/InterfaceAds;I)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/AdsWrapper$2;->val$curAdapter:Lcom/anysdk/framework/InterfaceAds;

    iput p2, p0, Lcom/anysdk/framework/AdsWrapper$2;->val$curPoints:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anysdk/framework/AdsWrapper$2;->val$curAdapter:Lcom/anysdk/framework/InterfaceAds;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anysdk/framework/AdsWrapper$2;->val$curAdapter:Lcom/anysdk/framework/InterfaceAds;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/anysdk/framework/AdsWrapper$2;->val$curPoints:I

    #calls: Lcom/anysdk/framework/AdsWrapper;->nativeOnPlayerGetPoints(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcom/anysdk/framework/AdsWrapper;->access$100(Ljava/lang/String;I)V

    return-void
.end method
