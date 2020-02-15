.class public final Lsafiap/framework/sdk/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lsafiap/framework/util/MyLogger; = null

.field private static final b:Ljava/lang/String; = "saf_framework"

.field private static final c:Ljava/lang/String; = "imei"

.field private static final d:Ljava/lang/String; = "mac"

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# instance fields
.field private e:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "DeviceInfo"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/sdk/b/c;->a:Lsafiap/framework/util/MyLogger;

    .line 20
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lsafiap/framework/sdk/b/c;->f:Ljava/lang/String;

    .line 21
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lsafiap/framework/sdk/b/c;->g:Ljava/lang/String;

    .line 22
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lsafiap/framework/sdk/b/c;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    sget-object v0, Lsafiap/framework/sdk/b/c;->a:Lsafiap/framework/util/MyLogger;

    const-string v1, "Incoming Context is null!"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    iput-object p1, p0, Lsafiap/framework/sdk/b/c;->i:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lsafiap/framework/sdk/b/c;->i:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lsafiap/framework/sdk/b/c;->j:Landroid/telephony/TelephonyManager;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 54
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    iget-object v1, p0, Lsafiap/framework/sdk/b/c;->i:Landroid/content/Context;

    const-string v2, "saf_framework"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    const-string v1, "imei"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 105
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    iget-object v1, p0, Lsafiap/framework/sdk/b/c;->i:Landroid/content/Context;

    const-string v2, "saf_framework"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    const-string v1, "mac"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lsafiap/framework/sdk/b/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lsafiap/framework/sdk/b/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lsafiap/framework/sdk/b/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lsafiap/framework/sdk/b/c;->j:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 47
    iget-object v0, p0, Lsafiap/framework/sdk/b/c;->j:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_0
    sget-object v1, Lsafiap/framework/sdk/b/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IMEI="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 50
    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lsafiap/framework/sdk/b/c;->i:Landroid/content/Context;

    const-string v1, "saf_framework"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    const-string v1, "imei"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lsafiap/framework/sdk/b/c;->i:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 93
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 94
    const/4 v0, 0x0

    .line 95
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lsafiap/framework/sdk/b/c;->i:Landroid/content/Context;

    const-string v1, "saf_framework"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    const-string v1, "mac"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 36
    iget-object v0, p0, Lsafiap/framework/sdk/b/c;->i:Landroid/content/Context;

    const-string v1, "saf_framework"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "imei"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    const/4 v0, 0x0

    iget-object v1, p0, Lsafiap/framework/sdk/b/c;->j:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lsafiap/framework/sdk/b/c;->j:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lsafiap/framework/sdk/b/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IMEI="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 39
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2

    .line 41
    :cond_1
    :goto_0
    return-object v0

    .line 39
    :cond_2
    iget-object v1, p0, Lsafiap/framework/sdk/b/c;->i:Landroid/content/Context;

    const-string v2, "saf_framework"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "imei"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lsafiap/framework/sdk/b/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lsafiap/framework/sdk/b/c;->e:Ljava/lang/String;

    .line 79
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lsafiap/framework/sdk/b/c;->j:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lsafiap/framework/sdk/b/c;->j:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/sdk/b/c;->e:Ljava/lang/String;

    .line 77
    :cond_1
    sget-object v0, Lsafiap/framework/sdk/b/c;->a:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mIMSINumber get from card = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsafiap/framework/sdk/b/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lsafiap/framework/sdk/b/c;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v0, p0, Lsafiap/framework/sdk/b/c;->i:Landroid/content/Context;

    const-string v1, "saf_framework"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mac"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v0, p0, Lsafiap/framework/sdk/b/c;->i:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    .line 88
    :cond_1
    :goto_0
    return-object v0

    .line 86
    :cond_2
    iget-object v1, p0, Lsafiap/framework/sdk/b/c;->i:Landroid/content/Context;

    const-string v2, "saf_framework"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mac"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lsafiap/framework/sdk/b/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lsafiap/framework/sdk/b/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lsafiap/framework/sdk/b/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    .line 127
    const-string v0, ""

    .line 131
    :cond_0
    invoke-static {v0}, Lsafiap/framework/sdk/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
