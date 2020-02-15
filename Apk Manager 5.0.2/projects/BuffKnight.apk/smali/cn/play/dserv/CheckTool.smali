.class public Lcn/play/dserv/CheckTool;
.super Ljava/lang/Object;


# static fields
.field private static A:I = 0x3f

.field public static final ACT_FEE_CANCEL:I = 0x22

.field public static final ACT_FEE_FAIL:I = 0x21

.field public static final ACT_FEE_INIT:I = 0x1f

.field public static final ACT_FEE_OK:I = 0x20

.field private static B:I = 0x47

.field private static C:I = 0x48

.field private static D:I = 0x50

.field private static E:I = 0x5a

.field private static F:I = 0x64

.field private static G:I = 0x65

.field private static H:Lcn/play/dserv/CheckTool; = null

.field private static final a:Ljava/lang/String; = "dserv-CheckTool"

.field private static c:I = 0x0

.field private static d:I = 0x1

.field private static e:I = 0x2

.field private static f:I = 0x3

.field private static g:I = 0x4

.field private static h:Ljava/lang/String; = "cn.play.dservice"

.field private static i:I = 0x0

.field private static j:I = 0x1

.field private static k:I = 0x2

.field private static l:I = 0x3

.field private static m:I = 0x4

.field private static n:I = 0xb

.field private static o:I = 0xc

.field private static p:I = 0x15

.field private static q:I = 0x16

.field private static r:I = 0x17

.field private static s:I = 0x18

.field private static t:I = 0x29

.field private static u:I = 0x2a

.field private static v:I = 0x33

.field private static w:I = 0x34

.field private static x:I = 0x35

.field private static y:I = 0x3d

.field private static z:I = 0x3e


# instance fields
.field private I:Landroid/app/PendingIntent;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Landroid/view/View;

.field private M:Landroid/app/AlertDialog;

.field private N:Z

.field private O:Landroid/widget/Button;

.field private P:Landroid/widget/Button;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "dserv"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/play/dserv/CheckTool;->b:Z

    const-string v0, "0"

    iput-object v0, p0, Lcn/play/dserv/CheckTool;->J:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcn/play/dserv/CheckTool;->K:Ljava/lang/String;

    return-void
.end method

.method public static native Ca(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native Cb(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native Cc(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native Cd(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native Ce(Ljava/lang/String;Landroid/content/Context;)Z
.end method

.method public static native Cf(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native Cg(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native Ch(Landroid/content/Context;)Lcn/play/dserv/DServ;
.end method

.method public static native Ci(Landroid/content/Context;ILjava/lang/String;)Lcn/play/dserv/PLTask;
.end method

.method public static native Cj()Ljava/lang/String;
.end method

.method public static native Ck(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native Cl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native Cm(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZZZ)Ljava/lang/Object;
.end method

.method static synthetic a(Lcn/play/dserv/CheckTool;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcn/play/dserv/CheckTool;->M:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;)Lcn/play/dserv/CheckTool;
    .locals 1

    invoke-static {p0}, Lcn/play/dserv/CheckTool;->b(Landroid/content/Context;)Lcn/play/dserv/CheckTool;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcn/play/dserv/ExitCallBack;)V
    .locals 3

    const-string v1, "dserv-CheckTool"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, " exv is null:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/play/dserv/CheckTool;->L:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/play/dserv/CheckTool;->c(Landroid/content/Context;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/play/dserv/CheckTool;->M:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcn/play/dserv/CheckTool;->M:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcn/play/dserv/CheckTool;->M:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcn/play/dserv/CheckTool;->L:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/play/dserv/CheckTool;->O:Landroid/widget/Button;

    new-instance v1, Lcn/play/dserv/b;

    invoke-direct {v1, p0, p1, p2}, Lcn/play/dserv/b;-><init>(Lcn/play/dserv/CheckTool;Landroid/content/Context;Lcn/play/dserv/ExitCallBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/play/dserv/CheckTool;->P:Landroid/widget/Button;

    new-instance v1, Lcn/play/dserv/c;

    invoke-direct {v1, p0, p2}, Lcn/play/dserv/c;-><init>(Lcn/play/dserv/CheckTool;Lcn/play/dserv/ExitCallBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcn/play/dserv/CheckTool;Landroid/app/AlertDialog;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/play/dserv/CheckTool;->M:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcn/play/dserv/CheckTool;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/play/dserv/CheckTool;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcn/play/dserv/CheckTool;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/play/dserv/CheckTool;->L:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcn/play/dserv/CheckTool;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/play/dserv/CheckTool;->J:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/play/dserv/CheckTool;Z)V
    .locals 0

    return-void
.end method

.method private static final b(Landroid/content/Context;)Lcn/play/dserv/CheckTool;
    .locals 3

    sget-object v0, Lcn/play/dserv/CheckTool;->H:Lcn/play/dserv/CheckTool;

    if-nez v0, :cond_1

    new-instance v0, Lcn/play/dserv/CheckTool;

    invoke-direct {v0}, Lcn/play/dserv/CheckTool;-><init>()V

    sput-object v0, Lcn/play/dserv/CheckTool;->H:Lcn/play/dserv/CheckTool;

    const-string v1, "checktool_gid"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcn/play/dserv/CheckTool;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/play/dserv/CheckTool;->J:Ljava/lang/String;

    sget-object v0, Lcn/play/dserv/CheckTool;->H:Lcn/play/dserv/CheckTool;

    const-string v1, "checktool_cid"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcn/play/dserv/CheckTool;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/play/dserv/CheckTool;->K:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/ds.debug"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/play/dserv/CheckTool;->H:Lcn/play/dserv/CheckTool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/play/dserv/CheckTool;->b:Z

    :cond_0
    sget-object v0, Lcn/play/dserv/CheckTool;->H:Lcn/play/dserv/CheckTool;

    :cond_1
    sget-object v0, Lcn/play/dserv/CheckTool;->H:Lcn/play/dserv/CheckTool;

    return-object v0
.end method

.method private static b(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcn/play/dserv/CheckTool;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/play/dserv/CheckTool;->K:Ljava/lang/String;

    return-void
.end method

.method private final c(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/.dserver/update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    const-string v0, "update/exv"

    const-string v1, "cn.play.dserv.ExitView"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcn/play/dserv/CheckTool;->Cm(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/play/dserv/ExitInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/play/dserv/ExitInterface;->getExitView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/play/dserv/CheckTool;->L:Landroid/view/View;

    invoke-interface {v0}, Lcn/play/dserv/ExitInterface;->getBT1()Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcn/play/dserv/CheckTool;->O:Landroid/widget/Button;

    invoke-interface {v0}, Lcn/play/dserv/ExitInterface;->getBT2()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/play/dserv/CheckTool;->P:Landroid/widget/Button;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcn/play/dserv/CheckTool;->d(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/play/dserv/CheckTool;->L:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, p1}, Lcn/play/dserv/CheckTool;->d(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/play/dserv/CheckTool;->L:Landroid/view/View;

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    const/16 v13, 0x11

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v9, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcn/play/dserv/CheckTool;->pd2px(FI)I

    move-result v1

    invoke-static {v0, v9}, Lcn/play/dserv/CheckTool;->pd2px(FI)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lcn/play/dserv/CheckTool;->pd2px(FI)I

    move-result v3

    const/16 v4, 0xf

    invoke-static {v0, v4}, Lcn/play/dserv/CheckTool;->pd2px(FI)I

    move-result v4

    const/16 v5, 0x6e

    invoke-static {v0, v5}, Lcn/play/dserv/CheckTool;->pd2px(FI)I

    move-result v5

    const-string v6, "dserv-CheckTool"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pxScale:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " pd5:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " pd2:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v6, v0}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v6, -0x100

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v7, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x64

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setId(I)V

    const-string v8, "\u786e\u8ba4\u9000\u51fa?"

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41a0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v8, -0x100

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcn/play/dserv/CheckTool;->O:Landroid/widget/Button;

    iget-object v7, p0, Lcn/play/dserv/CheckTool;->O:Landroid/widget/Button;

    const/16 v8, 0x65

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setId(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcn/play/dserv/CheckTool;->O:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcn/play/dserv/CheckTool;->O:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcn/play/dserv/CheckTool;->O:Landroid/widget/Button;

    const-string v5, "\u9000\u51fa"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/play/dserv/CheckTool;->O:Landroid/widget/Button;

    const v5, -0x777778

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/play/dserv/CheckTool;->P:Landroid/widget/Button;

    iget-object v1, p0, Lcn/play/dserv/CheckTool;->P:Landroid/widget/Button;

    const/16 v5, 0x66

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setId(I)V

    iget-object v1, p0, Lcn/play/dserv/CheckTool;->P:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcn/play/dserv/CheckTool;->P:Landroid/widget/Button;

    const-string v5, "\u8fd4\u56de"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/play/dserv/CheckTool;->P:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcn/play/dserv/CheckTool;->P:Landroid/widget/Button;

    const v5, -0x777778

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/play/dserv/CheckTool;->O:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcn/play/dserv/CheckTool;->P:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x96

    const/16 v5, 0xff

    const/16 v6, 0xff

    const/16 v7, 0xff

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static final e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    invoke-static {p0}, Lcn/play/dserv/CheckTool;->b(Landroid/content/Context;)Lcn/play/dserv/CheckTool;

    move-result-object v0

    iget-boolean v1, v0, Lcn/play/dserv/CheckTool;->b:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>>>>>["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/play/dserv/CheckTool;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static final exit(Landroid/content/Context;Lcn/play/dserv/ExitCallBack;)V
    .locals 4

    const-string v0, "dserv-CheckTool"

    const-string v1, "exit"

    invoke-static {p0, v0, v1}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcn/play/dserv/CheckTool;->sLog(Landroid/content/Context;I)V

    :try_start_0
    invoke-static {p0}, Lcn/play/dserv/CheckTool;->b(Landroid/content/Context;)Lcn/play/dserv/CheckTool;

    move-result-object v1

    const-string v2, "dserv-CheckTool"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, " exv is null:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcn/play/dserv/CheckTool;->L:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p0}, Lcn/play/dserv/CheckTool;->c(Landroid/content/Context;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcn/play/dserv/CheckTool;->M:Landroid/app/AlertDialog;

    iget-object v0, v1, Lcn/play/dserv/CheckTool;->M:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, v1, Lcn/play/dserv/CheckTool;->M:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v2, v1, Lcn/play/dserv/CheckTool;->L:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    iget-object v0, v1, Lcn/play/dserv/CheckTool;->O:Landroid/widget/Button;

    new-instance v2, Lcn/play/dserv/b;

    invoke-direct {v2, v1, p0, p1}, Lcn/play/dserv/b;-><init>(Lcn/play/dserv/CheckTool;Landroid/content/Context;Lcn/play/dserv/ExitCallBack;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcn/play/dserv/CheckTool;->P:Landroid/widget/Button;

    new-instance v2, Lcn/play/dserv/c;

    invoke-direct {v2, v1, p1}, Lcn/play/dserv/c;-><init>(Lcn/play/dserv/CheckTool;Lcn/play/dserv/ExitCallBack;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "dserv-CheckTool"

    const-string v1, "Activity is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/play/dserv/a;

    invoke-direct {v1, p0, p1, p2}, Lcn/play/dserv/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_0
.end method

.method public static isInit(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcn/play/dserv/CheckTool;->b(Landroid/content/Context;)Lcn/play/dserv/CheckTool;

    move-result-object v0

    iget-object v0, v0, Lcn/play/dserv/CheckTool;->J:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNetOk(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static final log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcn/play/dserv/CheckTool;->b(Landroid/content/Context;)Lcn/play/dserv/CheckTool;

    move-result-object v0

    iget-boolean v1, v0, Lcn/play/dserv/CheckTool;->b:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>>>>>["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/play/dserv/CheckTool;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static final more(Landroid/content/Context;)V
    .locals 2

    const-string v0, "dserv-CheckTool"

    const-string v1, "more"

    invoke-static {p0, v0, v1}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcn/play/dserv/CheckTool;->sLog(Landroid/content/Context;I)V

    return-void
.end method

.method public static final pd2px(FI)I
    .locals 2

    int-to-float v0, p1

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static sLog(Landroid/content/Context;I)V
    .locals 4

    invoke-static {p0}, Lcn/play/dserv/CheckTool;->b(Landroid/content/Context;)Lcn/play/dserv/CheckTool;

    move-result-object v0

    invoke-virtual {v0}, Lcn/play/dserv/CheckTool;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dserv-sLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "act:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/play/dserv/CheckTool;->Cd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, v0}, Lcn/play/dserv/CheckTool;->Cb(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sLog(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    invoke-static {p0}, Lcn/play/dserv/CheckTool;->b(Landroid/content/Context;)Lcn/play/dserv/CheckTool;

    move-result-object v0

    invoke-virtual {v0}, Lcn/play/dserv/CheckTool;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "dserv-sLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "act:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcn/play/dserv/CheckTool;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/play/dserv/CheckTool;->Cd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, v0}, Lcn/play/dserv/CheckTool;->Cb(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcn/play/dserv/CheckTool;->b(Landroid/content/Context;)Lcn/play/dserv/CheckTool;

    move-result-object v1

    invoke-virtual {v1}, Lcn/play/dserv/CheckTool;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/play/dserv/CheckTool;->J:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/play/dserv/CheckTool;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
