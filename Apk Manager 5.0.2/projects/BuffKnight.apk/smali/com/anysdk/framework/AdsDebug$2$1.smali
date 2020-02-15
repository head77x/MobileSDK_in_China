.class Lcom/anysdk/framework/AdsDebug$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/anysdk/framework/AdsDebug$2;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/AdsDebug$2;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/AdsDebug$2$1;->this$1:Lcom/anysdk/framework/AdsDebug$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
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
