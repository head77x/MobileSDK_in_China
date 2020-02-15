.class public final Lsafiap/framework/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static ic_action_search:I

.field public static ic_launcher:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/high16 v0, 0x7f02

    sput v0, Lsafiap/framework/b$b;->ic_action_search:I

    .line 15
    const v0, 0x7f020001

    sput v0, Lsafiap/framework/b$b;->ic_launcher:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
