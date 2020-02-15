.class Lcom/anysdk/framework/AdsDebug$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/anysdk/framework/AdsDebug;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/AdsDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/AdsDebug$2;->this$0:Lcom/anysdk/framework/AdsDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/anysdk/framework/AdsDebug;->access$100()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anysdk/framework/AdsDebug;->access$100()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-static {v5}, Lcom/anysdk/framework/AdsDebug;->access$102(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    :cond_0
    invoke-static {}, Lcom/anysdk/framework/AdsDebug;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ui_ad"

    const-string v2, "drawable"

    invoke-static {v1, v2}, Lcom/anysdk/framework/AdsDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/anysdk/framework/AdsDebug;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "plugin_ads"

    const-string v3, "layout"

    invoke-static {v2, v3}, Lcom/anysdk/framework/AdsDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {v2, v1, v3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v2}, Lcom/anysdk/framework/AdsDebug;->access$102(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/anysdk/framework/AdsDebug;->access$100()Landroid/widget/PopupWindow;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const-string v0, "image_close"

    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/anysdk/framework/AdsDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/anysdk/framework/AdsDebug$2$1;

    invoke-direct {v1, p0}, Lcom/anysdk/framework/AdsDebug$2$1;-><init>(Lcom/anysdk/framework/AdsDebug$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
