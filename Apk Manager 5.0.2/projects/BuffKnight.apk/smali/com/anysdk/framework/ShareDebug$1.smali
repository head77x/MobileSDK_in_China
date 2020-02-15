.class Lcom/anysdk/framework/ShareDebug$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/anysdk/framework/ShareDebug;

.field final synthetic val$cpInfo:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/ShareDebug;Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/ShareDebug$1;->this$0:Lcom/anysdk/framework/ShareDebug;

    iput-object p2, p0, Lcom/anysdk/framework/ShareDebug$1;->val$cpInfo:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/anysdk/framework/ShareDebug;->access$000()Landroid/content/Context;

    move-result-object v0

    const-string v1, "success to share"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/anysdk/framework/ShareDebug$1;->val$cpInfo:Ljava/util/Hashtable;

    const-string v1, "SharedText"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/anysdk/framework/ShareDebug;->shareResult(ILjava/lang/String;)V

    return-void
.end method
