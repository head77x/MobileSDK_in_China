.class Lcom/anysdk/framework/SocialDebug$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/anysdk/framework/SocialDebug;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/SocialDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/SocialDebug$6;->this$0:Lcom/anysdk/framework/SocialDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/anysdk/framework/SocialDebug;->access$500()Landroid/content/Context;

    move-result-object v0

    const-string v1, "success to submit"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
