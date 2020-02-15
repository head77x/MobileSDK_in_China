.class public Lsafiap/framework/ui/UpdateHintActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/ui/UpdateHintActivity$a;
    }
.end annotation


# static fields
.field private static d:Lsafiap/framework/util/MyLogger; = null

.field private static final r:I = -0x1

.field private static final s:I = 0x2710

.field private static final t:I = 0x4e20


# instance fields
.field private a:Lsafiap/framework/ui/res/LayoutUpdateHintActivity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private e:Lsafiap/framework/ui/res/d;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:I

.field private m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lsafiap/framework/sdk/ISAFFramework;

.field private u:Landroid/content/ServiceConnection;

.field private final v:Landroid/os/Handler;

.field private w:Lsafiap/framework/sdk/ISAFFrameworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "UpdateHintActivity"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->b:Ljava/lang/String;

    .line 44
    const-string v0, "[SAF_FRAMEWORK_IAP]"

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->c:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    .line 48
    iput v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->l:I

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->m:Ljava/util/Queue;

    .line 59
    iput-boolean v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->n:Z

    .line 60
    iput-boolean v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->o:Z

    .line 61
    iput-boolean v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->p:Z

    .line 63
    iput-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->q:Lsafiap/framework/sdk/ISAFFramework;

    .line 531
    new-instance v0, Lsafiap/framework/ui/b;

    invoke-direct {v0, p0}, Lsafiap/framework/ui/b;-><init>(Lsafiap/framework/ui/UpdateHintActivity;)V

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->u:Landroid/content/ServiceConnection;

    .line 560
    new-instance v0, Lsafiap/framework/ui/c;

    invoke-direct {v0, p0}, Lsafiap/framework/ui/c;-><init>(Lsafiap/framework/ui/UpdateHintActivity;)V

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->v:Landroid/os/Handler;

    .line 646
    new-instance v0, Lsafiap/framework/ui/UpdateHintActivity$a;

    invoke-direct {v0, p0}, Lsafiap/framework/ui/UpdateHintActivity$a;-><init>(Lsafiap/framework/ui/UpdateHintActivity;)V

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->w:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    return-void
.end method

.method static synthetic a(Lsafiap/framework/ui/UpdateHintActivity;Lsafiap/framework/sdk/ISAFFramework;)Lsafiap/framework/sdk/ISAFFramework;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lsafiap/framework/ui/UpdateHintActivity;->q:Lsafiap/framework/sdk/ISAFFramework;

    return-object p1
.end method

.method static synthetic a(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/d;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    return-object v0
.end method

.method static synthetic a()Lsafiap/framework/util/MyLogger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    return-object v0
.end method

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    const/16 v1, 0x7532

    if-ne p1, v1, :cond_2

    .line 226
    sget-object v1, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->c:Ljava/lang/String;

    monitor-enter v2

    .line 233
    :try_start_0
    iget-object v3, p0, Lsafiap/framework/ui/UpdateHintActivity;->q:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v3, :cond_1

    .line 234
    invoke-direct {p0, v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 237
    :cond_1
    :try_start_1
    sget-object v3, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    const-string v4, "service is not connect..."

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lsafiap/framework/ui/UpdateHintActivity;->m:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 240
    iget-object v3, p0, Lsafiap/framework/ui/UpdateHintActivity;->m:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 245
    :cond_2
    return-void
.end method

.method private a(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x14

    const/4 v0, 0x1

    .line 282
    invoke-direct {p0, v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Z)V

    .line 284
    iput-boolean v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->p:Z

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x7532

    if-ne p2, v1, :cond_2

    sget-object v1, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->c:Ljava/lang/String;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lsafiap/framework/ui/UpdateHintActivity;->q:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    sget-object v3, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    const-string v4, "service is not connect..."

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lsafiap/framework/ui/UpdateHintActivity;->m:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lsafiap/framework/ui/UpdateHintActivity;->m:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 287
    :cond_2
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0, v5, p1}, Lsafiap/framework/ui/res/d;->a(II)V

    .line 324
    :goto_2
    return-void

    .line 290
    :cond_3
    new-instance v0, Lsafiap/framework/ui/res/d;

    const v1, 0x1030010

    invoke-direct {v0, p0, v1, v5, p1}, Lsafiap/framework/ui/res/d;-><init>(Landroid/app/Activity;III)V

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    .line 292
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    new-instance v1, Lsafiap/framework/ui/a;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/a;-><init>(Lsafiap/framework/ui/UpdateHintActivity;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/d;->a(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    .line 302
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    new-instance v1, Lsafiap/framework/ui/d;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/d;-><init>(Lsafiap/framework/ui/UpdateHintActivity;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/d;->b(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    .line 320
    invoke-direct {p0}, Lsafiap/framework/ui/UpdateHintActivity;->b()V

    .line 321
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->show()V

    goto :goto_2
.end method

.method private a(III)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x11

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 328
    sget-object v0, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createUpdateDialog()...componentType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iapVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 330
    invoke-direct {p0, v3}, Lsafiap/framework/ui/UpdateHintActivity;->a(Z)V

    .line 333
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0, v6, p3}, Lsafiap/framework/ui/res/d;->a(II)V

    .line 339
    :goto_0
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->a()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5347\u7ea7\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->h()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u60a8\u624b\u673a\u4e0a\u7684\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u6709\u65b0\u7248\u672c\uff08\u5927\u5c0f\uff1a%sKB\uff09\u53ef\u4f9b\u5347\u7ea7\u3002"

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lsafiap/framework/ui/UpdateHintActivity;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-boolean v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->n:Z

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->b()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u7701\u6d41\u91cf\u5347\u7ea7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :goto_1
    iget-boolean v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->o:Z

    if-eqz v0, :cond_3

    .line 355
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->e()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    :goto_2
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    new-instance v1, Lsafiap/framework/ui/e;

    invoke-direct {v1, p0, p3, p1}, Lsafiap/framework/ui/e;-><init>(Lsafiap/framework/ui/UpdateHintActivity;II)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/d;->a(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    .line 376
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    new-instance v1, Lsafiap/framework/ui/f;

    invoke-direct {v1, p0, p1, p2}, Lsafiap/framework/ui/f;-><init>(Lsafiap/framework/ui/UpdateHintActivity;II)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/d;->b(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    .line 398
    invoke-direct {p0}, Lsafiap/framework/ui/UpdateHintActivity;->b()V

    .line 400
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->show()V

    .line 403
    :cond_0
    return-void

    .line 336
    :cond_1
    new-instance v0, Lsafiap/framework/ui/res/d;

    const v1, 0x1030010

    invoke-direct {v0, p0, v1, v6, p3}, Lsafiap/framework/ui/res/d;-><init>(Landroid/app/Activity;III)V

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    goto/16 :goto_0

    .line 351
    :cond_2
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->b()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u7acb\u5373\u5347\u7ea7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 360
    :cond_3
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialog;->e()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2
.end method

.method private a(IZI)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x12

    .line 460
    sget-object v0, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createDownloadErrorDialog()...componentType is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; isMandatoryUpdate is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 461
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Z)V

    .line 463
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0, v3, p3}, Lsafiap/framework/ui/res/d;->a(II)V

    .line 469
    :goto_0
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    new-instance v1, Lsafiap/framework/ui/i;

    invoke-direct {v1, p0, p3, p1}, Lsafiap/framework/ui/i;-><init>(Lsafiap/framework/ui/UpdateHintActivity;II)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/d;->a(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    .line 479
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    new-instance v1, Lsafiap/framework/ui/j;

    invoke-direct {v1, p0, p2}, Lsafiap/framework/ui/j;-><init>(Lsafiap/framework/ui/UpdateHintActivity;Z)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/d;->b(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    .line 493
    invoke-direct {p0}, Lsafiap/framework/ui/UpdateHintActivity;->b()V

    .line 494
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->show()V

    .line 495
    return-void

    .line 466
    :cond_0
    new-instance v0, Lsafiap/framework/ui/res/d;

    const v1, 0x1030010

    invoke-direct {v0, p0, v1, v3, p3}, Lsafiap/framework/ui/res/d;-><init>(Landroid/app/Activity;III)V

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    goto :goto_0
.end method

.method private a(Landroid/content/res/Configuration;)V
    .locals 13
    .parameter

    .prologue
    const/16 v12, 0x11

    const/16 v11, 0x8

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 69
    const/16 v0, 0x21

    .line 70
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 71
    const/16 v0, 0x22

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lsafiap/framework/ui/UpdateHintActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 79
    sget-object v3, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UpdateHintActivity.....IntentAciton is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 81
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    .line 82
    :cond_1
    invoke-virtual {p0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    .line 85
    :cond_2
    sget-object v3, Lsafiap/framework/util/Constants;->ACTION_TO_UPDATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 88
    const-string v2, "appUpdateType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    const-string v3, "iapIsDownloading"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 91
    const-string v4, "iapApkSize"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    const-string v5, "iapApkVersion"

    invoke-virtual {v1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 94
    const-string v6, "isMandatoryUpdate"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lsafiap/framework/ui/UpdateHintActivity;->o:Z

    .line 96
    iget v6, p0, Lsafiap/framework/ui/UpdateHintActivity;->l:I

    if-nez v6, :cond_3

    .line 97
    if-eqz v4, :cond_3

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lsafiap/framework/ui/UpdateHintActivity;->l:I

    .line 103
    :cond_3
    iget v4, p0, Lsafiap/framework/ui/UpdateHintActivity;->l:I

    if-gtz v4, :cond_4

    .line 104
    iput v9, p0, Lsafiap/framework/ui/UpdateHintActivity;->l:I

    .line 107
    :cond_4
    sget-object v4, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mDownloadFilesize is:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lsafiap/framework/ui/UpdateHintActivity;->l:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 110
    const-string v4, "patch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 111
    iput-boolean v9, p0, Lsafiap/framework/ui/UpdateHintActivity;->n:Z

    .line 113
    :cond_5
    sget-object v2, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "UpdateHintActivity.isMandatoryUpdate is:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lsafiap/framework/ui/UpdateHintActivity;->o:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", mUpdateHint"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lsafiap/framework/ui/UpdateHintActivity;->n:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 123
    const-string v2, "UpdateType"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 125
    sget-object v2, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "download UI ...., type:  "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 127
    iget-boolean v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->p:Z

    if-eqz v2, :cond_8

    .line 129
    invoke-direct {p0, v0, v1}, Lsafiap/framework/ui/UpdateHintActivity;->a(II)V

    .line 176
    :cond_6
    :goto_1
    return-void

    .line 72
    :cond_7
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v9, :cond_0

    .line 73
    const/16 v0, 0x21

    goto/16 :goto_0

    .line 133
    :cond_8
    if-eq v1, v10, :cond_d

    .line 134
    if-eqz v3, :cond_9

    .line 135
    invoke-direct {p0, v0, v1}, Lsafiap/framework/ui/UpdateHintActivity;->a(II)V

    goto :goto_1

    .line 137
    :cond_9
    sget-object v2, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createUpdateDialog()...componentType: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", iapVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lsafiap/framework/ui/UpdateHintActivity;->a(Z)V

    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v2}, Lsafiap/framework/ui/res/d;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v2, v12, v0}, Lsafiap/framework/ui/res/d;->a(II)V

    :goto_2
    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v2}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v2

    invoke-virtual {v2}, Lsafiap/framework/ui/res/LayoutDialog;->a()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u5347\u7ea7\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v2}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v2

    invoke-virtual {v2}, Lsafiap/framework/ui/res/LayoutDialog;->h()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u60a8\u624b\u673a\u4e0a\u7684\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u6709\u65b0\u7248\u672c\uff08\u5927\u5c0f\uff1a%sKB\uff09\u53ef\u4f9b\u5347\u7ea7\u3002"

    new-array v4, v9, [Ljava/lang/Object;

    iget v6, p0, Lsafiap/framework/ui/UpdateHintActivity;->l:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->n:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v2}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v2

    invoke-virtual {v2}, Lsafiap/framework/ui/res/LayoutDialog;->b()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u7701\u6d41\u91cf\u5347\u7ea7"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-boolean v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->o:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v2}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v2

    invoke-virtual {v2}, Lsafiap/framework/ui/res/LayoutDialog;->e()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v2}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v2

    invoke-virtual {v2}, Lsafiap/framework/ui/res/LayoutDialog;->f()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    new-instance v3, Lsafiap/framework/ui/e;

    invoke-direct {v3, p0, v0, v1}, Lsafiap/framework/ui/e;-><init>(Lsafiap/framework/ui/UpdateHintActivity;II)V

    invoke-virtual {v2, v3}, Lsafiap/framework/ui/res/d;->a(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    new-instance v2, Lsafiap/framework/ui/f;

    invoke-direct {v2, p0, v1, v5}, Lsafiap/framework/ui/f;-><init>(Lsafiap/framework/ui/UpdateHintActivity;II)V

    invoke-virtual {v0, v2}, Lsafiap/framework/ui/res/d;->b(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    invoke-direct {p0}, Lsafiap/framework/ui/UpdateHintActivity;->b()V

    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->show()V

    goto/16 :goto_1

    :cond_a
    new-instance v2, Lsafiap/framework/ui/res/d;

    const v3, 0x1030010

    invoke-direct {v2, p0, v3, v12, v0}, Lsafiap/framework/ui/res/d;-><init>(Landroid/app/Activity;III)V

    iput-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    goto/16 :goto_2

    :cond_b
    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v2}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v2

    invoke-virtual {v2}, Lsafiap/framework/ui/res/LayoutDialog;->b()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u7acb\u5373\u5347\u7ea7"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_c
    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v2}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v2

    invoke-virtual {v2}, Lsafiap/framework/ui/res/LayoutDialog;->f()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v2}, Lsafiap/framework/ui/res/d;->a()Lsafiap/framework/ui/res/LayoutDialog;

    move-result-object v2

    invoke-virtual {v2}, Lsafiap/framework/ui/res/LayoutDialog;->e()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_4

    .line 140
    :cond_d
    invoke-virtual {p0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    goto/16 :goto_1

    .line 144
    :cond_e
    sget-object v3, Lsafiap/framework/util/Constants;->ACTION_TO_INSTALL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 147
    const-string v2, "actionName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    const-string v3, "iapFileName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->b:Ljava/lang/String;

    .line 150
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 152
    invoke-virtual {p0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    goto/16 :goto_1

    .line 155
    :cond_f
    invoke-direct {p0, v2, v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 158
    :cond_10
    sget-object v3, Lsafiap/framework/util/Constants;->ACTION_TO_INSTALL_IAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 160
    sget-object v2, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "install UI in IAP.... "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "iapFileName"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 161
    const-string v2, "actionName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    const-string v3, "iapFileName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->b:Ljava/lang/String;

    .line 164
    sget-object v1, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IAPFilepath in UpdateUI: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lsafiap/framework/ui/UpdateHintActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, v2, v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 166
    :cond_11
    sget-object v3, Lsafiap/framework/util/Constants;->ACTION_NETWORK_ERROR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 168
    const-string v2, "UpdateType"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 169
    const-string v3, "isMandatoryUpdate"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->o:Z

    .line 170
    iget-boolean v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->o:Z

    sget-object v3, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "createDownloadErrorDialog()...componentType is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; isMandatoryUpdate is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lsafiap/framework/ui/UpdateHintActivity;->a(Z)V

    iget-object v3, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v3}, Lsafiap/framework/ui/res/d;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v0}, Lsafiap/framework/ui/res/d;->a(II)V

    :goto_5
    iget-object v3, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    new-instance v4, Lsafiap/framework/ui/i;

    invoke-direct {v4, p0, v0, v2}, Lsafiap/framework/ui/i;-><init>(Lsafiap/framework/ui/UpdateHintActivity;II)V

    invoke-virtual {v3, v4}, Lsafiap/framework/ui/res/d;->a(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    new-instance v2, Lsafiap/framework/ui/j;

    invoke-direct {v2, p0, v1}, Lsafiap/framework/ui/j;-><init>(Lsafiap/framework/ui/UpdateHintActivity;Z)V

    invoke-virtual {v0, v2}, Lsafiap/framework/ui/res/d;->b(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    invoke-direct {p0}, Lsafiap/framework/ui/UpdateHintActivity;->b()V

    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->show()V

    goto/16 :goto_1

    :cond_12
    new-instance v3, Lsafiap/framework/ui/res/d;

    const v4, 0x1030010

    const/16 v5, 0x12

    invoke-direct {v3, p0, v4, v5, v0}, Lsafiap/framework/ui/res/d;-><init>(Landroid/app/Activity;III)V

    iput-object v3, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    goto :goto_5

    .line 173
    :cond_13
    invoke-virtual {p0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 248
    sget-object v0, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadApkbyAction, action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    sget-object v0, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->w:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    .line 259
    :try_start_0
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->q:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v1, v0, p1}, Lsafiap/framework/sdk/ISAFFramework;->downloadPlugin(Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x13

    .line 408
    sget-object v0, Lsafiap/framework/ui/UpdateHintActivity;->d:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createInstallDialog()...actionName is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Z)V

    .line 412
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0, v3, p2}, Lsafiap/framework/ui/res/d;->a(II)V

    .line 418
    :goto_0
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    new-instance v1, Lsafiap/framework/ui/g;

    invoke-direct {v1, p0, p1}, Lsafiap/framework/ui/g;-><init>(Lsafiap/framework/ui/UpdateHintActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/d;->a(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    .line 444
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    new-instance v1, Lsafiap/framework/ui/h;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/h;-><init>(Lsafiap/framework/ui/UpdateHintActivity;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/d;->b(Lsafiap/framework/ui/res/LayoutDialog$a;)V

    .line 454
    invoke-direct {p0}, Lsafiap/framework/ui/UpdateHintActivity;->b()V

    .line 455
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->show()V

    .line 456
    return-void

    .line 415
    :cond_0
    new-instance v0, Lsafiap/framework/ui/res/d;

    const v1, 0x1030010

    invoke-direct {v0, p0, v1, v3, p2}, Lsafiap/framework/ui/res/d;-><init>(Landroid/app/Activity;III)V

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    goto :goto_0
.end method

.method static synthetic a(Lsafiap/framework/ui/UpdateHintActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lsafiap/framework/ui/UpdateHintActivity;->a(II)V

    return-void
.end method

.method static synthetic a(Lsafiap/framework/ui/UpdateHintActivity;Landroid/content/res/Configuration;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lsafiap/framework/ui/UpdateHintActivity;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic a(Lsafiap/framework/ui/UpdateHintActivity;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x4e20

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->v:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 513
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lsafiap/framework/SafFrameworkManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    const-string v1, "safiap.framework.ACTION_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string v1, "safiap.framework.KEY_FOREGROUND"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 516
    invoke-virtual {p0, v0}, Lsafiap/framework/ui/UpdateHintActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 517
    return-void
.end method

.method static synthetic b(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/sdk/ISAFFramework;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->q:Lsafiap/framework/sdk/ISAFFramework;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    new-instance v1, Lsafiap/framework/ui/res/d$a;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/res/d$a;-><init>(Lsafiap/framework/ui/UpdateHintActivity;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/d;->a(Lsafiap/framework/ui/res/d$a;)V

    .line 510
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 555
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 556
    const/16 v1, 0x4e20

    iput v1, v0, Landroid/os/Message;->what:I

    .line 557
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->v:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 558
    return-void
.end method

.method static synthetic b(Lsafiap/framework/ui/UpdateHintActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lsafiap/framework/ui/UpdateHintActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 520
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->u:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lsafiap/framework/ui/UpdateHintActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 522
    return-void
.end method

.method static synthetic c(Lsafiap/framework/ui/UpdateHintActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->o:Z

    return v0
.end method

.method static synthetic d(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->q:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->u:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lsafiap/framework/ui/UpdateHintActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->q:Lsafiap/framework/sdk/ISAFFramework;

    .line 529
    :cond_0
    return-void
.end method

.method static synthetic e(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/util/Queue;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->m:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic g(Lsafiap/framework/ui/UpdateHintActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->v:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 182
    invoke-direct {p0, p1}, Lsafiap/framework/ui/UpdateHintActivity;->a(Landroid/content/res/Configuration;)V

    .line 183
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 189
    new-instance v0, Lsafiap/framework/ui/res/LayoutUpdateHintActivity;

    invoke-virtual {p0}, Lsafiap/framework/ui/UpdateHintActivity;->getWindowManager()Landroid/view/WindowManager;

    invoke-direct {v0, p0}, Lsafiap/framework/ui/res/LayoutUpdateHintActivity;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->a:Lsafiap/framework/ui/res/LayoutUpdateHintActivity;

    .line 191
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->a:Lsafiap/framework/ui/res/LayoutUpdateHintActivity;

    invoke-virtual {p0, v0}, Lsafiap/framework/ui/UpdateHintActivity;->setContentView(Landroid/view/View;)V

    .line 193
    invoke-virtual {p0}, Lsafiap/framework/ui/UpdateHintActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 195
    invoke-direct {p0, v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Landroid/content/res/Configuration;)V

    .line 197
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->u:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lsafiap/framework/ui/UpdateHintActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 198
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 217
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->q:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->u:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lsafiap/framework/ui/UpdateHintActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->q:Lsafiap/framework/sdk/ISAFFramework;

    .line 218
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 203
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    .line 206
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 270
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->e:Lsafiap/framework/ui/res/d;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/d;->dismiss()V

    .line 273
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsafiap/framework/ui/UpdateHintActivity;->a(Z)V

    .line 274
    invoke-virtual {p0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    .line 275
    return-void
.end method
