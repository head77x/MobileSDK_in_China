.class final Lmm/purchasesdk/core/ui/ViewItemInfo$ViewItemInfoCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmm/purchasesdk/core/ui/ViewItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewItemInfoCreator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lmm/purchasesdk/core/ui/ViewItemInfo$ViewItemInfoCreator;->createFromParcel(Landroid/os/Parcel;)Lmm/purchasesdk/core/ui/ViewItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmm/purchasesdk/core/ui/ViewItemInfo;
    .locals 2

    new-instance v0, Lmm/purchasesdk/core/ui/ViewItemInfo;

    invoke-direct {v0}, Lmm/purchasesdk/core/ui/ViewItemInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/core/ui/ViewItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/core/ui/ViewItemInfo;->mValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/core/ui/ViewItemInfo;->mID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lmm/purchasesdk/core/ui/ViewItemInfo;->mKeyColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lmm/purchasesdk/core/ui/ViewItemInfo;->mValueColor:I

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lmm/purchasesdk/core/ui/ViewItemInfo$ViewItemInfoCreator;->newArray(I)[Lmm/purchasesdk/core/ui/ViewItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmm/purchasesdk/core/ui/ViewItemInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
