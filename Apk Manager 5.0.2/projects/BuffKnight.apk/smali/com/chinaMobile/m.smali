.class public final Lcom/chinaMobile/m;
.super Landroid/app/AlertDialog;


# instance fields
.field a:Landroid/widget/EditText;

.field b:Landroid/widget/Spinner;

.field c:Landroid/widget/Spinner;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v2, 0x5

    const/4 v7, -0x2

    const/high16 v6, 0x3f80

    const/4 v5, -0x1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const-string v0, "\u53cd\u9988\u610f\u89c1"

    invoke-virtual {p0, v0}, Lcom/chinaMobile/m;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/chinaMobile/g;->g(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    mul-int/lit16 v0, v0, 0xc8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chinaMobile/m;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/chinaMobile/m;->a:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v0, p0, Lcom/chinaMobile/m;->a:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v0, p0, Lcom/chinaMobile/m;->a:Landroid/widget/EditText;

    const-string v2, "\u8bf7\u8f93\u5165\u60a8\u7684\u53cd\u9988\u610f\u89c1"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/chinaMobile/m;->a:Landroid/widget/EditText;

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/chinaMobile/m;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/Spinner;

    invoke-direct {v2, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chinaMobile/m;->c:Landroid/widget/Spinner;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "\u6027\u522b"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "\u7537"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "\u5973"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/chinaMobile/e;

    invoke-direct {v3, p1, v2}, Lcom/chinaMobile/e;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/chinaMobile/m;->c:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, p0, Lcom/chinaMobile/m;->c:Landroid/widget/Spinner;

    new-instance v3, Lcom/chinaMobile/n;

    invoke-direct {v3}, Lcom/chinaMobile/n;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "\u5e74\u9f84"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "18\u5c81\u4ee5\u4e0b"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "18-24\u5c81"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "25-30\u5c81"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "31-35\u5c81"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "36-40\u5c81"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "41-50\u5c81"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "50-59\u5c81"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "60\u5c81\u53ca\u4ee5\u4e0a"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/widget/Spinner;

    invoke-direct {v4, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/chinaMobile/m;->b:Landroid/widget/Spinner;

    new-instance v4, Lcom/chinaMobile/e;

    invoke-direct {v4, p1, v3}, Lcom/chinaMobile/e;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/chinaMobile/m;->b:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v3, p0, Lcom/chinaMobile/m;->b:Landroid/widget/Spinner;

    new-instance v4, Lcom/chinaMobile/l;

    invoke-direct {v4}, Lcom/chinaMobile/l;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v3, p0, Lcom/chinaMobile/m;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/chinaMobile/m;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/chinaMobile/m;->setView(Landroid/view/View;)V

    const-string v0, "\u63d0\u4ea4"

    new-instance v1, Lcom/chinaMobile/a;

    invoke-direct {v1, p0, p1}, Lcom/chinaMobile/a;-><init>(Lcom/chinaMobile/m;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/chinaMobile/m;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v0, "\u53d6\u6d88"

    new-instance v1, Lcom/chinaMobile/c;

    invoke-direct {v1, p0}, Lcom/chinaMobile/c;-><init>(Lcom/chinaMobile/m;)V

    invoke-virtual {p0, v0, v1}, Lcom/chinaMobile/m;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final setView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method
