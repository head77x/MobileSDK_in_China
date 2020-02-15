.class public Lcn/egame/terminal/sdk/log/ao;
.super Ljava/lang/Object;


# static fields
.field public static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x100

    sput-wide v0, Lcn/egame/terminal/sdk/log/ao;->a:J

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 4

    array-length v0, p0

    int-to-long v0, v0

    sget-wide v2, Lcn/egame/terminal/sdk/log/ao;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x6

    const/4 v0, 0x1

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ak;->g(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int v2, v4, v2

    sub-int v1, v5, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    if-gt v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 9

    const/4 v8, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ar;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ak;->h(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v2, v5, v2

    sub-int v3, v6, v3

    const/4 v4, 0x3

    if-ge v2, v4, :cond_3

    if-le v3, v1, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
