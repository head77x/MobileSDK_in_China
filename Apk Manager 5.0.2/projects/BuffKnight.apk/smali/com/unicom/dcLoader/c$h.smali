.class public final Lcom/unicom/dcLoader/c$h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/dcLoader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static AppBaseTheme:I

.field public static AppTheme:I

.field public static Theme_billing_dialog:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f050001

    sput v0, Lcom/unicom/dcLoader/c$h;->AppBaseTheme:I

    const v0, 0x7f050002

    sput v0, Lcom/unicom/dcLoader/c$h;->AppTheme:I

    const/high16 v0, 0x7f05

    sput v0, Lcom/unicom/dcLoader/c$h;->Theme_billing_dialog:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
