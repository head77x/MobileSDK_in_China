.class final Lsafiap/framework/d;
.super Lsafiap/framework/sdk/ISAFFramework$Stub;
.source "SourceFile"


# instance fields
.field private synthetic a:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method constructor <init>(Lsafiap/framework/SafFrameworkManager;)V
    .locals 0
    .parameter

    .prologue
    .line 952
    iput-object p1, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-direct {p0}, Lsafiap/framework/sdk/ISAFFramework$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1086
    iget-object v0, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0, p1}, Lsafiap/framework/SafFrameworkManager;->b(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final cancelAll()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1095
    iget-object v0, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->d(Lsafiap/framework/SafFrameworkManager;)Z

    move-result v0

    return v0
.end method

.method public final checkIAPinstallation()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1136
    const/4 v0, 0x0

    return v0
.end method

.method public final checkServiceVersion()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1191
    iget-object v0, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsafiap/framework/sdk/b/d;->b(Landroid/content/Context;)Z

    move-result v0

    .line 1193
    return v0
.end method

.method public final downloadPlugin(Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1061
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1062
    const-string v1, "name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    iget-object v0, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager;->b:Lsafiap/framework/b;

    if-eqz v0, :cond_1

    .line 1066
    iget-object v0, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager;->b:Lsafiap/framework/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lsafiap/framework/b;->a(Ljava/lang/String;Z)Z

    move-result v5

    .line 1069
    :goto_0
    if-nez v5, :cond_0

    .line 1070
    if-eqz p2, :cond_0

    sget-object v0, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->e(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/b$a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, p2, v1, v2}, Lsafiap/framework/b$a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1075
    :cond_0
    iget-object v0, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;IZZ)V

    .line 1077
    return-void

    :cond_1
    move v5, v3

    goto :goto_0
.end method

.method public final getFrameworkVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1115
    iget-object v0, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final getIAPDedicateActionName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1154
    .line 1158
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1159
    sget-object v3, Lsafiap/framework/util/Constants;->SAF_COMPONENT_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    iget-object v3, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v3}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1162
    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1163
    if-nez v4, :cond_0

    .line 1185
    :goto_0
    return-object v1

    .line 1166
    :cond_0
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "checking appsInfos.size():("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    move v3, v0

    move v2, v0

    .line 1167
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 1168
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1170
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checking signature RIGHT!!!activeInfo: ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")  and  Package Name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and P: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1173
    iget v5, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v5, v2, :cond_2

    .line 1174
    iget v1, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1175
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1176
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Updating : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1167
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move-object v1, v0

    goto :goto_1

    .line 1181
    :cond_1
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getIAPDedicateActionName : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    move v1, v2

    goto :goto_2
.end method

.method public final getPluginInfo(Ljava/lang/String;)I
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 959
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    :goto_0
    return v0

    .line 965
    :cond_0
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getPluginInfo...start, actionName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 969
    sget-object v1, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 970
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    const-string v2, "getPluginInfo().Framework service: QUERY NOT IAP_COMPONENT_SERVICE_ACTION"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 974
    :cond_1
    iget-object v1, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lsafiap/framework/sdk/b/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 976
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    const-string v1, "ServiceVersion in the Minifest is error!"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    move v0, v3

    .line 977
    goto :goto_0

    .line 981
    :cond_2
    iget-object v1, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1, p1}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)I

    move-result v1

    .line 982
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getPluginInfo().syncVersionInfo.actionName:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",syncResult:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 983
    if-ne v1, v0, :cond_3

    .line 984
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    const-string v2, "getPluginInfo().Framework service:RESULT_CODE_PLUGIN_NOT_EXIST"

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    move v0, v1

    .line 985
    goto :goto_0

    .line 989
    :cond_3
    iget-object v1, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->f(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/a/c;

    move-result-object v1

    if-nez v1, :cond_4

    .line 990
    iget-object v1, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    iget-object v4, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v4}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lsafiap/framework/a/c;->a(Landroid/content/Context;)Lsafiap/framework/a/c;

    move-result-object v4

    invoke-static {v1, v4}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/a/c;)Lsafiap/framework/a/c;

    .line 993
    :cond_4
    iget-object v1, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->f(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/a/c;

    move-result-object v1

    sget-object v4, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lsafiap/framework/a/c;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 995
    const/16 v0, -0x1f4

    move v1, v2

    .line 998
    :goto_1
    iget-object v4, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v4}, Lsafiap/framework/SafFrameworkManager;->f(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/a/c;

    move-result-object v4

    sget-object v5, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lsafiap/framework/a/c;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1000
    const/16 v0, -0x12c

    move v4, v2

    .line 1004
    :goto_2
    iget-object v5, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v5}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {v5, v6}, Lsafiap/framework/sdk/b/d;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 1005
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " current highest iap version: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1007
    iget-object v6, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v6}, Lsafiap/framework/SafFrameworkManager;->f(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/a/c;

    move-result-object v6

    sget-object v7, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsafiap/framework/a/c;->a(Ljava/lang/String;)I

    move-result v6

    .line 1008
    if-lez v6, :cond_6

    if-le v6, v5, :cond_6

    move v5, v2

    .line 1009
    :goto_3
    if-eqz v5, :cond_5

    move v4, v3

    move v1, v3

    .line 1014
    :cond_5
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getPluginInfo().in database,server highest version,plugin:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1020
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IAPPluginHasDownloadFile"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1021
    if-eqz v5, :cond_7

    .line 1022
    iget-object v1, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-virtual {v1, v5}, Lsafiap/framework/SafFrameworkManager;->a(Z)V

    goto/16 :goto_0

    :cond_6
    move v5, v3

    .line 1008
    goto :goto_3

    .line 1026
    :cond_7
    sget-boolean v6, Lsafiap/framework/util/Constants;->sIsIAPtestVersion:Z

    if-eqz v6, :cond_8

    .line 1027
    if-nez v5, :cond_8

    if-nez v4, :cond_8

    if-nez v1, :cond_8

    move v0, v3

    .line 1032
    :cond_8
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getPluginInfo().pulginMustUpdate:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IAPPluginHasUpdate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1033
    invoke-static {v4}, Lsafiap/framework/SafFrameworkManager;->b(Z)Z

    .line 1034
    if-nez v4, :cond_9

    if-eqz v1, :cond_c

    .line 1035
    :cond_9
    iget-object v5, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    if-nez v4, :cond_a

    if-eqz v1, :cond_b

    :cond_a
    move v3, v2

    :cond_b
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->c()Z

    move-result v1

    invoke-virtual {v5, v3, v1}, Lsafiap/framework/SafFrameworkManager;->a(ZZ)V

    goto/16 :goto_0

    .line 1040
    :cond_c
    if-nez v4, :cond_d

    if-nez v1, :cond_d

    move v0, v3

    .line 1044
    :cond_d
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPluginInfo().checkResult:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    move v4, v3

    goto/16 :goto_2

    :cond_f
    move v1, v3

    goto/16 :goto_1
.end method

.method public final hasUpdate()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1105
    const/4 v0, 0x0

    return v0
.end method

.method public final startCheckUpdate(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1127
    iget-object v0, p0, Lsafiap/framework/d;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0, p1}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method public final startIAPInstall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1145
    return-void
.end method
