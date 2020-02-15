.class public Lmm/purchasesdk/core/billing/ProductInfo;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_FOREVER:I = 0x0

.field public static final TYPE_LEASE:I = 0x1

.field public static final TYPE_REITERATION:I = 0x2


# instance fields
.field private mInfo:Landroid/os/Bundle;

.field private mInfoKey:Ljava/util/ArrayList;

.field private mMobilePhone:Ljava/lang/String;

.field private mOldInfo:Ljava/util/HashMap;

.field private mProductType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addKey(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mInfoKey:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mInfoKey:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mInfoKey:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addValue(Ljava/lang/String;Lmm/purchasesdk/core/ui/ViewItemInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mInfo:Landroid/os/Bundle;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mInfo:Landroid/os/Bundle;

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mInfo:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mOldInfo:Ljava/util/HashMap;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mOldInfo:Ljava/util/HashMap;

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mOldInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getInfo()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInfoKey()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mInfoKey:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMobilePhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mMobilePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getOldInfo()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mOldInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getProductType()I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mProductType:I

    return v0
.end method

.method public getValue(Ljava/lang/String;)Lmm/purchasesdk/core/ui/ViewItemInfo;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mInfo:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/ui/ViewItemInfo;

    goto :goto_0
.end method

.method public setInfo(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mInfo:Landroid/os/Bundle;

    return-void
.end method

.method public setMobilePhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mMobilePhone:Ljava/lang/String;

    return-void
.end method

.method public setOldInfo(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mOldInfo:Ljava/util/HashMap;

    return-void
.end method

.method public setProductType(I)V
    .locals 0

    iput p1, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mProductType:I

    return-void
.end method

.method public setmInfoKey(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/billing/ProductInfo;->mInfoKey:Ljava/util/ArrayList;

    return-void
.end method
