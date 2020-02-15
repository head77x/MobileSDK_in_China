.class public final Lsafiap/framework/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field private static b:I

.field private static c:Lsafiap/framework/util/MyLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x2760

    sput v0, Lsafiap/framework/util/a;->a:I

    .line 18
    const/16 v0, 0x5a0

    sput v0, Lsafiap/framework/util/a;->b:I

    .line 136
    const-string v0, "UpdateAlarm"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/util/a;->c:Lsafiap/framework/util/MyLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 103
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 106
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lsafiap/framework/CheckUpdateReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 113
    const-string v0, "safiap.framework_preferences"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    const-string v1, "timer"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    return-void
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0xea60

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 61
    sget-object v0, Lsafiap/framework/util/a;->c:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setAlarmByHours...start, context.getPackageName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", minutes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 63
    if-gtz p1, :cond_0

    move v1, v7

    .line 97
    :goto_0
    return v1

    .line 68
    :cond_0
    invoke-static {p0}, Lsafiap/framework/util/a;->a(Landroid/content/Context;)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v2, "safiap.framework.ACTION_SET_TIMER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    sget-object v2, Lsafiap/framework/CheckUpdateReceiver;->b:Ljava/lang/String;

    const/16 v3, -0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    sget-object v2, Lsafiap/framework/CheckUpdateReceiver;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const/high16 v2, 0x800

    invoke-static {p0, v7, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 79
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 83
    if-lez p1, :cond_1

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int v4, p1, v8

    int-to-long v4, v4

    add-long/2addr v2, v4

    mul-int v4, p1, v8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 87
    const-string v0, "safiap.framework_preferences"

    invoke-virtual {p0, v0, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    const-string v2, "timer"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_1
    move v1, v7

    .line 97
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 122
    const-string v1, "safiap.framework_preferences"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 125
    const-string v2, "timer"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 127
    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static b(Landroid/content/Context;I)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/32 v8, 0x240c8400

    const-wide/32 v4, 0x5265c00

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 23
    invoke-static {p0}, Lsafiap/framework/util/a;->a(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lsafiap/framework/CheckUpdateReceiver;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 30
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 33
    packed-switch p1, :pswitch_data_0

    .line 49
    :pswitch_0
    if-lez p1, :cond_0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 55
    :goto_0
    :pswitch_1
    return v1

    .line 35
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 40
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v8

    move-wide v4, v8

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    move v1, v2

    .line 55
    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 131
    sget-object v0, Lsafiap/framework/util/a;->c:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initTimer...start, context.package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 133
    sget v0, Lsafiap/framework/util/a;->b:I

    invoke-static {p0, v0}, Lsafiap/framework/util/a;->a(Landroid/content/Context;I)Z

    .line 134
    return-void
.end method
