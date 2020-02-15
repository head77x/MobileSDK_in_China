.class public Lcom/estore/ui/CTEStoreSDKActivity;
.super Landroid/app/Activity;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:Ljava/lang/String;

.field private M:Ljava/util/Timer;

.field private N:Lcom/estore/lsms/tools/MyDialog;

.field private O:Lcom/estore/lsms/tools/MyDialog;

.field private P:Lcom/estore/lsms/tools/ApConfig;

.field private Q:Landroid/view/ViewGroup;

.field private R:Landroid/view/ViewGroup;

.field a:Z

.field b:Lcom/estore/lsms/tools/Person;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field public handler:Landroid/os/Handler;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field public resultCode:I

.field private s:Landroid/content/BroadcastReceiver;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "sms-sdk"

    iput-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->g:Ljava/lang/String;

    iput v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->l:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->m:I

    iput-boolean v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->a:Z

    iput-boolean v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->n:Z

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->o:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->p:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->resultCode:I

    const-string v0, "SENT_SMS_ACTION_CTETY"

    iput-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->q:Ljava/lang/String;

    const-string v0, "DELIVERED_SMS_ACTION_CTETY"

    iput-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->s:Landroid/content/BroadcastReceiver;

    iput v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->t:I

    const/16 v0, 0x168

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->u:I

    const/16 v0, 0x3c0

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->v:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->w:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->x:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->y:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->z:I

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->L:Ljava/lang/String;

    new-instance v0, Lcom/estore/ui/a;

    invoke-direct {v0, p0}, Lcom/estore/ui/a;-><init>(Lcom/estore/ui/CTEStoreSDKActivity;)V

    iput-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->N:Lcom/estore/lsms/tools/MyDialog;

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->O:Lcom/estore/lsms/tools/MyDialog;

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->P:Lcom/estore/lsms/tools/ApConfig;

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->Q:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->R:Landroid/view/ViewGroup;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->t:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_large"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/estore/ui/CTEStoreSDKActivity;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_1
    return-object v0

    :cond_2
    iget v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->t:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_small"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 4

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/estore/ui/CTEStoreSDKActivity;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget v3, p0, Lcom/estore/ui/CTEStoreSDKActivity;->y:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/estore/lsms/tools/OfflineSmsTool;->toBase94(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0x10

    invoke-direct {v2, p1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/estore/lsms/tools/OfflineSmsTool;->toBase94(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/estore/lsms/tools/OfflineSmsTool;->getCurTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0xa

    invoke-direct {v2, p2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/estore/lsms/tools/OfflineSmsTool;->toBase94(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/estore/lsms/tools/OfflineSmsTool;->toBase94(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0xa

    invoke-direct {v2, p5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/estore/lsms/tools/OfflineSmsTool;->toBase94(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, p0}, Lcom/estore/lsms/tools/OfflineSmsTool;->sig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_3
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->M:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->M:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->N:Lcom/estore/lsms/tools/MyDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->N:Lcom/estore/lsms/tools/MyDialog;

    invoke-virtual {v0}, Lcom/estore/lsms/tools/MyDialog;->stopMyDialog()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->N:Lcom/estore/lsms/tools/MyDialog;

    :cond_1
    return-void
.end method

.method private static a(Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    iput p2, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/estore/ui/CTEStoreSDKActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estore/ui/CTEStoreSDKActivity;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->m:I

    return-void
.end method

.method static synthetic a(Lcom/estore/ui/CTEStoreSDKActivity;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Landroid/os/Handler;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/estore/ui/CTEStoreSDKActivity;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->O:Lcom/estore/lsms/tools/MyDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->O:Lcom/estore/lsms/tools/MyDialog;

    invoke-virtual {v0}, Lcom/estore/lsms/tools/MyDialog;->stopShowDialog()V

    :cond_0
    new-instance v0, Lcom/estore/lsms/tools/MyDialog;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    const-string v2, "ctestore_tstitle"

    invoke-direct {p0, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/estore/lsms/tools/MyDialog;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->O:Lcom/estore/lsms/tools/MyDialog;

    return-void
.end method

.method static synthetic a(Lcom/estore/ui/CTEStoreSDKActivity;Ljava/lang/String;I)V
    .locals 6

    const v0, 0xea60

    invoke-direct {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->a()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->M:Ljava/util/Timer;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->M:Ljava/util/Timer;

    new-instance v2, Lcom/estore/ui/b;

    invoke-direct {v2, p0}, Lcom/estore/ui/b;-><init>(Lcom/estore/ui/CTEStoreSDKActivity;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    new-instance v0, Lcom/estore/lsms/tools/MyDialog;

    invoke-direct {v0, p0, p1}, Lcom/estore/lsms/tools/MyDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->N:Lcom/estore/lsms/tools/MyDialog;

    return-void
.end method

.method static synthetic a(Lcom/estore/ui/CTEStoreSDKActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/estore/ui/CTEStoreSDKActivity;->q:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/estore/ui/CTEStoreSDKActivity;->r:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x46

    if-le v1, v3, :cond_0

    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estore/ui/CTEStoreSDKActivity;Z)V
    .locals 12

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->R:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->R:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->R:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->R:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "ctesotore_titlebg1"

    invoke-direct {p0, v1}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/estore/ui/CTEStoreSDKActivity;->A:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xa

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v3, "ctestore_titlelog"

    invoke-direct {p0, v3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/estore/ui/CTEStoreSDKActivity;->C:I

    iget v5, p0, Lcom/estore/ui/CTEStoreSDKActivity;->B:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xf

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xa

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v2, "ctestore_waizbg.9"

    invoke-direct {p0, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->getNinePatchDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v3, "ctestore_blog"

    invoke-direct {p0, v3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/estore/ui/CTEStoreSDKActivity;->I:I

    iget v5, p0, Lcom/estore/ui/CTEStoreSDKActivity;->H:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xe

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xc

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xa

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setId(I)V

    const-string v6, "ctestore_neizbg.9"

    invoke-direct {p0, v6}, Lcom/estore/ui/CTEStoreSDKActivity;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/estore/ui/CTEStoreSDKActivity;->getNinePatchDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xb

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v7, 0xa

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    const/16 v7, 0x12

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v7, 0x12

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v7, 0xa

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xa

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v8, 0xe

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v8, 0x5

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setId(I)V

    if-eqz p1, :cond_3

    const-string v9, "ctestore_success"

    invoke-direct {p0, v9}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v9}, Lcom/estore/lsms/tools/Person;->getCtestoreTsPaysuccess()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->K:I

    iget v11, p0, Lcom/estore/ui/CTEStoreSDKActivity;->J:I

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xf

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v10, 0x9

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v10, 0x5

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v10, 0x5

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xf

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v10, 0x1

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->z:I

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setId(I)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, p0, Lcom/estore/ui/CTEStoreSDKActivity;->G:I

    iget v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->F:I

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xe

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v9, 0x5

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const-string v9, "ctestore_fanhui"

    invoke-direct {p0, v9}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Lcom/estore/ui/f;

    invoke-direct {v9, p0}, Lcom/estore/ui/f;-><init>(Lcom/estore/ui/CTEStoreSDKActivity;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, 0x5

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x3

    const/4 v11, 0x6

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v8, 0x3

    const/4 v9, 0x5

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v8, 0x5

    const/4 v9, 0x5

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v8, 0x7

    const/4 v9, 0x5

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/estore/ui/CTEStoreSDKActivity;->o:Ljava/lang/String;

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v9}, Lcom/estore/lsms/tools/Person;->getCtestoreWelcome()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/estore/ui/CTEStoreSDKActivity;->o:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v8, p0, Lcom/estore/ui/CTEStoreSDKActivity;->x:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-boolean v7, p0, Lcom/estore/ui/CTEStoreSDKActivity;->a:Z

    if-eqz v7, :cond_2

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v8, "\u5f53\u524d\u4e3a\u6d4b\u8bd5\u6a21\u5f0f"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v8, 0xff

    const/16 v9, 0x45

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->R:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->R:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->R:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/estore/ui/CTEStoreSDKActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->b()V

    return-void

    :cond_3
    const-string v9, "ctestore_failed"

    invoke-direct {p0, v9}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v9}, Lcom/estore/lsms/tools/Person;->getCtestoreTsPayfaild()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    array-length v1, v1

    if-le v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/estore/lsms/tools/Tools;->isDorL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/estore/ui/CTEStoreSDKActivity;)I
    .locals 1

    iget v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->m:I

    return v0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ctestore/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    const-string v2, "GCSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get file err :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estore/lsms/tools/Tools;->MLogE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private b()V
    .locals 8

    const/4 v3, 0x2

    const-wide v6, 0x3feccccccccccccdL

    const-wide v4, 0x3fe999999999999aL

    invoke-virtual {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-boolean v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->n:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->t:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v6

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    const/high16 v0, 0x3f80

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/high16 v0, 0x3f00

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->t:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->t:I

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v6

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->t:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v6

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/estore/ui/CTEStoreSDKActivity;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->p:Z

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/estore/ui/CTEStoreSDKActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "get imsi err"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/estore/ui/CTEStoreSDKActivity;)V
    .locals 3

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->s:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estore/ui/c;

    invoke-direct {v0, p0}, Lcom/estore/ui/c;-><init>(Lcom/estore/ui/CTEStoreSDKActivity;)V

    iput-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->s:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->s:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->s:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->q:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/estore/ui/CTEStoreSDKActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Lcom/estore/lsms/tools/Person;

    invoke-direct {v1}, Lcom/estore/lsms/tools/Person;-><init>()V

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ctestore/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-static {v1, v2}, Lcom/estore/lsms/tools/ReadXmlByPullService;->ReadXmlByPull(Ljava/io/InputStream;Lcom/estore/lsms/tools/Person;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic d(Lcom/estore/ui/CTEStoreSDKActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->L:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->P:Lcom/estore/lsms/tools/ApConfig;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Lcom/estore/lsms/tools/ApConfig;

    invoke-direct {v1}, Lcom/estore/lsms/tools/ApConfig;-><init>()V

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->P:Lcom/estore/lsms/tools/ApConfig;

    invoke-virtual {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ctestore/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->P:Lcom/estore/lsms/tools/ApConfig;

    invoke-static {v1, v2}, Lcom/estore/lsms/tools/ReadXmlByPullService;->ReadXmlByPull(Ljava/io/InputStream;Lcom/estore/lsms/tools/ApConfig;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->P:Lcom/estore/lsms/tools/ApConfig;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    const-string v2, "loading config err"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Landroid/os/Handler;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/estore/ui/CTEStoreSDKActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->p:Z

    return v0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v1, 0xff

    const/16 v6, 0xfe

    invoke-virtual {v3, v7, v1, v6, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v1, -0xbdbdbe

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v0, p1, p1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v3, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public getNinePatchDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, p1, v2, v3, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "GCSDK"

    const-string v1, "\u5b9e\u4f53\u952e\u76d8\u5904\u4e8e\u63a8\u51fa\u72b6\u6001"

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->MLogV(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_1

    const-string v0, "GCSDK"

    const-string v1, "\u5b9e\u4f53\u952e\u76d8\u5904\u4e8e\u5408\u4e0a\u72b6\u6001"

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->MLogV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "/mnt/sdcard/localpaylog.txt"

    const-string v1, "***SDK\u5f00\u59cb\u542f\u52a8......"

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->writePayLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v2, v1, v0

    if-lez v2, :cond_15

    :goto_0
    iget v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->v:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->w:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->t:I

    :goto_1
    iget v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->t:I

    if-nez v0, :cond_4

    const/16 v0, 0xc

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->x:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->y:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->z:I

    const/16 v0, 0x35

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->A:I

    const/16 v0, 0x24

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->B:I

    const/16 v0, 0xfb

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->C:I

    const/16 v0, 0x2a

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->D:I

    const/16 v0, 0x2a

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->E:I

    const/16 v0, 0x30

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->F:I

    const/16 v0, 0xa6

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->G:I

    const/16 v0, 0x42

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->H:I

    const/16 v0, 0x14c

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->I:I

    const/16 v0, 0x55

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->J:I

    const/16 v0, 0x43

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->K:I

    :goto_2
    const-string v0, "ctestore_strings.xml"

    invoke-direct {p0, v0}, Lcom/estore/ui/CTEStoreSDKActivity;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->c:Ljava/lang/String;

    const-string v1, "get string xml err"

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->MLogE(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v1}, Lcom/estore/lsms/tools/Person;->getCtestoreErrInit()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Landroid/os/Handler;Ljava/lang/String;I)V

    :cond_0
    const-string v0, "ctestore_apconfig.xml"

    invoke-direct {p0, v0}, Lcom/estore/ui/CTEStoreSDKActivity;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->c:Ljava/lang/String;

    const-string v1, "get config xml err"

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->MLogE(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v1}, Lcom/estore/lsms/tools/Person;->getCtestoreErrInit()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Landroid/os/Handler;Ljava/lang/String;I)V

    :cond_1
    const/4 v0, 0x7

    invoke-static {}, Lcom/estore/lsms/tools/Tools;->getSDKVersionNumber()I

    move-result v1

    if-le v0, v1, :cond_6

    const-string v0, "GCSDK"

    const-string v1, "user-sdk is lower than  android sdk 2.1 "

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->MLogE(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v1}, Lcom/estore/lsms/tools/Person;->getCtestoreErrInit()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Landroid/os/Handler;Ljava/lang/String;I)V

    :goto_3
    return-void

    :cond_2
    iget v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->u:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->t:I

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->t:I

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x1

    iget v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->t:I

    if-ne v0, v1, :cond_5

    const/16 v0, 0xe

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->y:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->x:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->z:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->A:I

    const/16 v0, 0x4c

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->B:I

    const/16 v0, 0x1a0

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->C:I

    const/16 v0, 0x3f

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->D:I

    const/16 v0, 0x3f

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->E:I

    const/16 v0, 0x48

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->F:I

    const/16 v0, 0xf9

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->G:I

    const/16 v0, 0x6c

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->H:I

    const/16 v0, 0x20b

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->I:I

    const/16 v0, 0x93

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->J:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->K:I

    goto/16 :goto_2

    :cond_5
    const/16 v0, 0xc

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->x:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->y:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->z:I

    const/16 v0, 0x1b

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->A:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->B:I

    const/16 v0, 0x7e

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->C:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->D:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->E:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->F:I

    const/16 v0, 0x53

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->G:I

    const/16 v0, 0x21

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->H:I

    const/16 v0, 0xa1

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->I:I

    const/16 v0, 0x2a

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->J:I

    const/16 v0, 0x22

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->K:I

    goto/16 :goto_2

    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "46005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v1}, Lcom/estore/lsms/tools/Person;->getCtestoreErrPhonenum()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Landroid/os/Handler;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    const-string v1, "GCSDK"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estore/lsms/tools/Tools;->MLogE(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v1}, Lcom/estore/lsms/tools/Person;->getCtestoreErrInit()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Landroid/os/Handler;Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_9
    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->P:Lcom/estore/lsms/tools/ApConfig;

    invoke-virtual {v1}, Lcom/estore/lsms/tools/ApConfig;->getApsecret()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->d:Ljava/lang/String;

    if-nez v1, :cond_a

    const-string v0, "GCSDK"

    const-string v1, "APSECRET is null"

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->MLogE(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v1}, Lcom/estore/lsms/tools/Person;->getCtestoreErrInit()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Landroid/os/Handler;Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_a
    const-string v1, "appcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->e:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "GCSDK"

    const-string v2, "APPCHARGEID  is err"

    invoke-static {v1, v2}, Lcom/estore/lsms/tools/Tools;->MLogE(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v2}, Lcom/estore/lsms/tools/Person;->getCtestoreErrInit()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Landroid/os/Handler;Ljava/lang/String;I)V

    :cond_b
    const-string v1, "channelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->f:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v0, "GCSDK"

    const-string v1, "CHANNELID is err "

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->MLogE(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v1}, Lcom/estore/lsms/tools/Person;->getCtestoreErrInit()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Landroid/os/Handler;Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_c
    const-string v1, "requestId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->g:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v0, "GCSDK"

    const-string v1, "REQUESTID is err"

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->MLogE(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v1}, Lcom/estore/lsms/tools/Person;->getCtestoreErrInit()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Landroid/os/Handler;Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_d
    const-string v1, "validCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->P:Lcom/estore/lsms/tools/ApConfig;

    invoke-virtual {v1}, Lcom/estore/lsms/tools/ApConfig;->getTestFlag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->a:Z

    :cond_e
    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->P:Lcom/estore/lsms/tools/ApConfig;

    invoke-virtual {v1}, Lcom/estore/lsms/tools/ApConfig;->getApPhoneNum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->o:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_10

    :cond_f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->o:Ljava/lang/String;

    :cond_10
    const-string v1, "ScreenHorizontal"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->n:Z

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->P:Lcom/estore/lsms/tools/ApConfig;

    invoke-virtual {v1}, Lcom/estore/lsms/tools/ApConfig;->getApName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->P:Lcom/estore/lsms/tools/ApConfig;

    invoke-virtual {v1}, Lcom/estore/lsms/tools/ApConfig;->getAppName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->j:Ljava/lang/String;

    const-string v1, "chargeName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->k:Ljava/lang/String;

    const-string v1, "price"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->l:Ljava/lang/String;

    const-string v1, "priceType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->h:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estore/ui/CTEStoreSDKActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->m:I

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->Q:Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->Q:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_11
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->Q:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->Q:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "ctesotore_titlebg1"

    invoke-direct {p0, v1}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/estore/ui/CTEStoreSDKActivity;->A:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xa

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v3, "ctestore_titlelog"

    invoke-direct {p0, v3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/estore/ui/CTEStoreSDKActivity;->C:I

    iget v5, p0, Lcom/estore/ui/CTEStoreSDKActivity;->B:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xf

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xa

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "ctestore_close"

    invoke-direct {p0, v5}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lcom/estore/ui/d;

    invoke-direct {v5, p0}, Lcom/estore/ui/d;-><init>(Lcom/estore/ui/CTEStoreSDKActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/estore/ui/CTEStoreSDKActivity;->E:I

    iget v7, p0, Lcom/estore/ui/CTEStoreSDKActivity;->D:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xb

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v6, 0xf

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v6, 0xa

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v2, "ctestore_waizbg.9"

    invoke-direct {p0, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->getNinePatchDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v3, "ctestore_blog"

    invoke-direct {p0, v3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/estore/ui/CTEStoreSDKActivity;->I:I

    iget v5, p0, Lcom/estore/ui/CTEStoreSDKActivity;->H:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xe

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xc

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xa

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setId(I)V

    const-string v6, "ctestore_neizbg.9"

    invoke-direct {p0, v6}, Lcom/estore/ui/CTEStoreSDKActivity;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/estore/ui/CTEStoreSDKActivity;->getNinePatchDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xb

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v7, 0xa

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    const/16 v7, 0x12

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v7, 0x12

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v7, 0xa

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v10}, Lcom/estore/lsms/tools/Person;->getCtestoreUser()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setId(I)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x9

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v10, 0xa

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v10, 0x5

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v10, 0x5

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->y:I

    int-to-float v10, v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v9, p0, Lcom/estore/ui/CTEStoreSDKActivity;->h:I

    if-nez v9, :cond_14

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v10}, Lcom/estore/lsms/tools/Person;->getCtestoreUpay()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->k:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v10}, Lcom/estore/lsms/tools/Person;->getCtestoreUhuafei()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->l:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v10}, Lcom/estore/lsms/tools/Person;->getCtestoreCi()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setId(I)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x9

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v10, 0x3

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v10, 0x5

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->z:I

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v10, 0xff

    const/16 v11, 0x45

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setId(I)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->G:I

    iget v11, p0, Lcom/estore/ui/CTEStoreSDKActivity;->F:I

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xe

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v10, 0x3

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v10, 0x5

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const-string v10, "ctestore_sure"

    invoke-direct {p0, v10}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Lcom/estore/ui/e;

    invoke-direct {v10, p0}, Lcom/estore/ui/e;-><init>(Lcom/estore/ui/CTEStoreSDKActivity;)V

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, 0x5

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v11, 0x3

    const/4 v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v8, 0x3

    const/4 v9, 0x5

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v8, 0x5

    const/4 v9, 0x5

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v8, 0x7

    const/4 v9, 0x5

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x9b

    const/16 v10, 0xba

    const/16 v11, 0xbf

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v9}, Lcom/estore/lsms/tools/Person;->getCtestoreSmsinfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v9, p0, Lcom/estore/ui/CTEStoreSDKActivity;->x:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->o:Ljava/lang/String;

    if-eqz v10, :cond_12

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v11}, Lcom/estore/lsms/tools/Person;->getCtestoreWelcome()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/estore/ui/CTEStoreSDKActivity;->o:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->x:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_12
    iget-object v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v10}, Lcom/estore/lsms/tools/Person;->getCtestoreAppname()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/estore/ui/CTEStoreSDKActivity;->j:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v10

    iget-object v11, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v11}, Lcom/estore/lsms/tools/Person;->getCtestoreApname()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/estore/ui/CTEStoreSDKActivity;->i:Ljava/lang/String;

    invoke-direct {p0, v11, v12}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-boolean v7, p0, Lcom/estore/ui/CTEStoreSDKActivity;->a:Z

    if-eqz v7, :cond_13

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v8, "\u5f53\u524d\u4e3a\u6d4b\u8bd5\u6a21\u5f0f"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v8, 0xff

    const/16 v9, 0x45

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_13
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->Q:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->Q:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->Q:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/estore/ui/CTEStoreSDKActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->b()V

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/estore/ui/CTEStoreSDKActivity;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/estore/ui/CTEStoreSDKActivity;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/estore/ui/CTEStoreSDKActivity;->f:Ljava/lang/String;

    const-string v4, "2"

    invoke-direct {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->L:Ljava/lang/String;

    const-string v0, "/mnt/sdcard/localpaylog.txt"

    const-string v1, "***\u542f\u52a8\u5b8c\u6210......"

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->writePayLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_14
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v10}, Lcom/estore/lsms/tools/Person;->getCtestoreUpay()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->k:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v10}, Lcom/estore/lsms/tools/Person;->getCtestoreUhuafei()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->l:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v10}, Lcom/estore/lsms/tools/Person;->getCtestoreYue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_15
    move v13, v1

    move v1, v0

    move v0, v13

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->s:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estore/ui/CTEStoreSDKActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public replyCalculation()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "resultCode"

    iget v3, p0, Lcom/estore/ui/CTEStoreSDKActivity;->resultCode:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "requestId"

    iget-object v3, p0, Lcom/estore/ui/CTEStoreSDKActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/estore/ui/CTEStoreSDKActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->O:Lcom/estore/lsms/tools/MyDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estore/ui/CTEStoreSDKActivity;->O:Lcom/estore/lsms/tools/MyDialog;

    invoke-virtual {v0}, Lcom/estore/lsms/tools/MyDialog;->stopShowDialog()V

    :cond_0
    const-string v0, "/mnt/sdcard/localpaylog.txt"

    const-string v1, "***sdk----finish()\r\n"

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->writePayLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estore/ui/CTEStoreSDKActivity;->finish()V

    return-void
.end method
