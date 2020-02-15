.class public Lcn/egame/terminal/sdk/log/aq;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/telephony/SignalStrength;)I
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    if-le v1, v0, :cond_0

    const/16 v2, 0x63

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string v1, "SignalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGsmLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/egame/terminal/sdk/log/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/16 v2, 0xc

    if-lt v1, v2, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    if-lt v1, v2, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/telephony/SignalStrength;)I
    .locals 9

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v6

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v7

    const/16 v0, -0x4b

    if-lt v6, v0, :cond_0

    move v0, v1

    :goto_0
    const/16 v8, -0x5a

    if-lt v7, v8, :cond_4

    :goto_1
    if-ge v0, v1, :cond_8

    :goto_2
    const-string v1, "SignalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCdmaLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",cdmaDbm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",cdmaEcio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/egame/terminal/sdk/log/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/16 v0, -0x55

    if-lt v6, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, -0x5f

    if-lt v6, v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/16 v0, -0x64

    if-lt v6, v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    const/16 v1, -0x6e

    if-lt v7, v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    const/16 v1, -0x82

    if-lt v7, v1, :cond_6

    move v1, v3

    goto :goto_1

    :cond_6
    const/16 v1, -0x96

    if-lt v7, v1, :cond_7

    move v1, v4

    goto :goto_1

    :cond_7
    move v1, v5

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_2
.end method
