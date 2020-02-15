.class final Lcom/anysdk/framework/AdsWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$curCode:I

.field final synthetic val$curMsg:Ljava/lang/String;

.field final synthetic val$curObj:Lcom/anysdk/framework/InterfaceAds;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/InterfaceAds;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/AdsWrapper$1;->val$curObj:Lcom/anysdk/framework/InterfaceAds;

    iput p2, p0, Lcom/anysdk/framework/AdsWrapper$1;->val$curCode:I

    iput-object p3, p0, Lcom/anysdk/framework/AdsWrapper$1;->val$curMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anysdk/framework/AdsWrapper$1;->val$curObj:Lcom/anysdk/framework/InterfaceAds;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anysdk/framework/AdsWrapper$1;->val$curObj:Lcom/anysdk/framework/InterfaceAds;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/anysdk/framework/AdsWrapper$1;->val$curCode:I

    iget-object v2, p0, Lcom/anysdk/framework/AdsWrapper$1;->val$curMsg:Ljava/lang/String;

    #calls: Lcom/anysdk/framework/AdsWrapper;->nativeOnAdsResult(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/anysdk/framework/AdsWrapper;->access$000(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
