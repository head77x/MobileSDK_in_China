.class public final Lcn/play/dserv/StringUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final findUrl(Ljava/lang/StringBuilder;)Ljava/lang/StringBuffer;
    .locals 5

    const-string v0, "(http://|https://){1}[\\w\\.\\-/:]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-object v1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<a href=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</a>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0
.end method

.method public static final getFormatDateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getFormatDateString(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getFormatDateString(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isDigits(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_2
    if-lt v0, v4, :cond_3

    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static final isDigits(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_3

    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final isStringWithLen(Ljava/lang/Object;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isStringWithLen(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    const-string v1, "23,234234,2342,21341234,22"

    const-string v0, "23,32,342,3,,"

    const-string v2, ","

    invoke-static {v0, v2}, Lcn/play/dserv/StringUtil;->stringToIntArray(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "(\\d+,)*(\\d+)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final objToNonNegativeInt(Ljava/lang/Object;)I
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final objToStrNotNull(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final replaceKeyWords(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-object p0

    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_1
    if-gtz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v1, v3, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public static final stringToIntArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v1, v3

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v4, v3

    if-lt v2, v4, :cond_1

    move-object v0, v1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    aget-object v4, v3, v2

    invoke-static {v4}, Lcn/play/dserv/StringUtil;->isDigits(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static final toStrNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
