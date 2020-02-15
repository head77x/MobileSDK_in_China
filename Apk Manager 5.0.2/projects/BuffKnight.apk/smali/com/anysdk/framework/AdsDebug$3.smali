.class Lcom/anysdk/framework/AdsDebug$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/anysdk/framework/AdsDebug;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/AdsDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/AdsDebug$3;->this$0:Lcom/anysdk/framework/AdsDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/anysdk/framework/AdsDebug;->access$100()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anysdk/framework/AdsDebug;->access$100()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/anysdk/framework/AdsDebug;->access$102(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method
