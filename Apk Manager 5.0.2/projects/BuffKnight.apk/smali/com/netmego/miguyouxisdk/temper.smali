.class public Lcom/netmego/miguyouxisdk/temper;
.super Landroid/app/Activity;
.source "temper.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector:[I = null

.field private static final opANYSDK:I = 0x10

.field private static final opCMCC_GC:I = 0x1

.field private static final opCMCC_MM:I = 0x8

.field private static final opMISMATCHES:I = 0x0

.field private static final opSP:I = 0x20

.field private static final opTELECOM:I = 0x4

.field private static final opUNICOM:I = 0x2


# direct methods
.method static synthetic $SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/netmego/miguyouxisdk/temper;->$SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->values()[Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMGD:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMMM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_DIANXIN:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_OTHER:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_SP:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_UNICOM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_UNKNOWN:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-virtual {v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/netmego/miguyouxisdk/temper;->$SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobileOperator()Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;
    .locals 8

    .prologue
    .line 57
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/netmego/miguyouxisdk/temper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 58
    .local v4, telManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, operator:Ljava/lang/String;
    const/4 v2, 0x0

    .line 63
    .local v2, metaData:Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Lcom/netmego/miguyouxisdk/temper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/netmego/miguyouxisdk/temper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    const-string v5, "BTypeValue"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    .local v0, BillType:I
    const-string v5, "BTypeValue: "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 76
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMGD:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    .line 134
    :goto_1
    return-object v5

    .line 65
    .end local v0           #BillType:I
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #BillType:I
    :cond_0
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    .line 78
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_UNICOM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 79
    :cond_1
    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    .line 80
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_DIANXIN:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 81
    :cond_2
    const/16 v5, 0x8

    if-ne v0, v5, :cond_3

    .line 82
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMMM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 83
    :cond_3
    const/16 v5, 0x10

    if-ne v0, v5, :cond_4

    .line 84
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_OTHER:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 85
    :cond_4
    const/16 v5, 0x20

    if-ne v0, v5, :cond_5

    .line 86
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_SP:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 90
    :cond_5
    if-eqz v3, :cond_d

    .line 92
    const-string v5, "46000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "46002"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 94
    :cond_6
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_7

    .line 96
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Brandon : CMCC_MM!!!! :"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMMM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 99
    :cond_7
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_8

    .line 101
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Brandon : CMCC_GC!!!! :"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMGD:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 105
    :cond_8
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMGD:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 108
    :cond_9
    const-string v5, "46001"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_a

    .line 110
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Brandon : UNICOM!!!! :"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_UNICOM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto :goto_1

    .line 115
    :cond_a
    const-string v5, "46003"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_b

    .line 117
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Brandon : CTE!!!! :"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_DIANXIN:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto/16 :goto_1

    .line 122
    :cond_b
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_c

    .line 124
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Brandon : SP!!!! :"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_SP:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto/16 :goto_1

    .line 129
    :cond_c
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Brandon : Cannot check !! :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    :goto_2
    sget-object v5, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_OTHER:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    goto/16 :goto_1

    .line 132
    :cond_d
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Brandon : operator null !!"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/high16 v4, 0x1000

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {}, Lcom/netmego/miguyouxisdk/temper;->$SWITCH_TABLE$com$netmego$miguyouxisdk$MiguSDKFactory$SDKSelector()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/netmego/miguyouxisdk/temper;->getMobileOperator()Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 46
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/netmego/miguyouxisdk/MegoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v1}, Lcom/netmego/miguyouxisdk/temper;->startActivity(Landroid/content/Intent;)V

    .line 52
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/netmego/miguyouxisdk/temper;->finish()V

    .line 53
    return-void

    .line 36
    :pswitch_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/cmgame/billing/api/GameOpenActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v1}, Lcom/netmego/miguyouxisdk/temper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
