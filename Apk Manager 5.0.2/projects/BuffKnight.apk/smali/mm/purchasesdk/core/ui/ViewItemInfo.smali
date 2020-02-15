.class public Lmm/purchasesdk/core/ui/ViewItemInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmm/purchasesdk/core/ui/ViewItemInfo$ViewItemInfoCreator;
    }
.end annotation


# static fields
.field public static final APPNAME:Ljava/lang/String; = "appname"

.field public static final COUNT:Ljava/lang/String; = "itemcount"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field public static final ITEM_PRICE:Ljava/lang/String; = "itemprice"

.field public static final KEY_COLOR:I = -0x7e7e7f

.field public static final PRODUCT:Ljava/lang/String; = "itemname"

.field public static final PROVIDER:Ljava/lang/String; = "provider"

.field public static final TOTAL_PRICE:Ljava/lang/String; = "totalprice"

.field public static final VALUE_BLACK:I = -0x1000000

.field public static final VALUE_BLUE:I = -0xffff01

.field public static final VALUE_GRAY:I = -0x7e7e7f

.field public static final VALUE_ORAGNE:I = -0x9a00


# instance fields
.field public mID:Ljava/lang/String;

.field public mKey:Ljava/lang/String;

.field public mKeyColor:I

.field public mValue:Ljava/lang/String;

.field public mValueColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmm/purchasesdk/core/ui/ViewItemInfo$ViewItemInfoCreator;

    invoke-direct {v0}, Lmm/purchasesdk/core/ui/ViewItemInfo$ViewItemInfoCreator;-><init>()V

    sput-object v0, Lmm/purchasesdk/core/ui/ViewItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x7e7e7f

    iput v0, p0, Lmm/purchasesdk/core/ui/ViewItemInfo;->mKeyColor:I

    const/high16 v0, -0x100

    iput v0, p0, Lmm/purchasesdk/core/ui/ViewItemInfo;->mValueColor:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ViewItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ViewItemInfo;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ViewItemInfo;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmm/purchasesdk/core/ui/ViewItemInfo;->mKeyColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmm/purchasesdk/core/ui/ViewItemInfo;->mValueColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
