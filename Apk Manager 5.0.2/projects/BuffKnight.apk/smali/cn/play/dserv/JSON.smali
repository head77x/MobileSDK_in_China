.class public Lcn/play/dserv/JSON;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static final b:Ljava/util/HashMap;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;

.field private static final e:Ljava/lang/Object;

.field private static final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x5c

    const/16 v3, 0x2f

    const/16 v2, 0x22

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/play/dserv/JSON;->a:[C

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/play/dserv/JSON;->b:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/play/dserv/JSON;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/play/dserv/JSON;->b:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/play/dserv/JSON;->b:Ljava/util/HashMap;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/play/dserv/JSON;->b:Ljava/util/HashMap;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/play/dserv/JSON;->b:Ljava/util/HashMap;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/play/dserv/JSON;->b:Ljava/util/HashMap;

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/play/dserv/JSON;->b:Ljava/util/HashMap;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/play/dserv/JSON;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/play/dserv/JSON;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/play/dserv/JSON;->e:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/play/dserv/JSON;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Ljava/text/CharacterIterator;)C
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    int-to-char v0, v0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x30

    goto :goto_1

    :sswitch_1
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x6b

    goto :goto_1

    :sswitch_2
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x4b

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x45 -> :sswitch_2
        0x46 -> :sswitch_2
        0x61 -> :sswitch_1
        0x62 -> :sswitch_1
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private static final a(Ljava/lang/StringBuilder;III)I
    .locals 1

    if-ge p2, p3, :cond_3

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p1, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_0
    :goto_0
    invoke-static {p0, p2}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;I)V

    :cond_1
    :goto_1
    return p2

    :cond_2
    if-gez p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    if-ne p2, p3, :cond_5

    if-lez p1, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    if-gez p1, :cond_1

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, p2}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;I)V

    goto :goto_1

    :cond_5
    if-gez p1, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private static final a(Ljava/lang/StringBuilder;Ljava/lang/Object;II)I
    .locals 7

    const/16 v6, 0x2c

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return p2

    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->jsonString(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/util/Map;

    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1, p2, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;III)I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, v5, v1, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;III)I

    move-result p2

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4, v1, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;II)I

    move-result v1

    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0, v1, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;II)I

    move-result v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v2, v0, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;III)I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_4
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "true"

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string v0, "false"

    goto :goto_2

    :cond_6
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;II)I

    move-result p2

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1, p2, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;III)I

    move-result v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    move v1, v2

    :goto_3
    if-lt v1, v3, :cond_8

    invoke-static {p0, v5, v0, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;III)I

    move-result p2

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4, v0, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;II)I

    move-result v0

    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_9

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v2, v0, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;III)I

    move-result v0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/Iterator;

    invoke-static {p0, p1, p2, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;II)I

    move-result p2

    goto/16 :goto_0

    :cond_b
    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->jsonString(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    move v1, v0

    goto/16 :goto_1
.end method

.method private static final a(Ljava/lang/StringBuilder;Ljava/util/Iterator;II)I
    .locals 2

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-static {p0, v0, p2, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;III)I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-static {p0, v1, v0, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;III)I

    move-result v0

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1, v0, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;II)I

    move-result v0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;III)I

    move-result v0

    goto :goto_0
.end method

.method private static final a(Ljava/lang/StringBuilder;Ljava/util/Map;II)I
    .locals 4

    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-static {p0, v0, p2, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;III)I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-static {p0, v0, v1, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;III)I

    move-result v0

    const-string v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3, v1, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;II)I

    move-result v1

    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0, v1, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;II)I

    move-result v0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;III)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private static final a(Ljava/text/CharacterIterator;CLjava/lang/StringBuilder;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    return v0

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static final a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/text/CharacterIterator;->first()C

    invoke-static {v0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final a(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v5, 0x2d

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_7

    sparse-switch v0, :sswitch_data_0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-ne v0, v5, :cond_6

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    :cond_1
    invoke-static {p0, v0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;CLjava/lang/StringBuilder;)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_11

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    invoke-static {p0, v0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;CLjava/lang/StringBuilder;)I

    move-result v3

    add-int/2addr v2, v3

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_1
    const/16 v4, 0x65

    if-eq v2, v4, :cond_2

    const/16 v4, 0x45

    if-ne v2, v4, :cond_5

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_3

    if-ne v0, v5, :cond_4

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    :cond_4
    invoke-static {p0, v0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;CLjava/lang/StringBuilder;)I

    move v0, v1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    if-ge v3, v0, :cond_e

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    :goto_2
    move-object v2, v0

    :cond_6
    return-object v2

    :cond_7
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    :goto_3
    const/16 v1, 0x22

    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_b

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v1

    const/16 v0, 0x75

    if-ne v1, v0, :cond_a

    move v0, v3

    move v1, v3

    :goto_4
    const/4 v2, 0x4

    if-lt v1, v2, :cond_9

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_3

    :cond_9
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :sswitch_1
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x30

    goto :goto_5

    :sswitch_2
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x6b

    goto :goto_5

    :sswitch_3
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x4b

    goto :goto_5

    :cond_a
    sget-object v0, Lcn/play/dserv/JSON;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_3

    :cond_b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_3

    :sswitch_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v0

    :cond_c
    :goto_6
    sget-object v2, Lcn/play/dserv/JSON;->d:Ljava/lang/Object;

    if-ne v0, v2, :cond_d

    move-object v0, v1

    goto :goto_2

    :cond_d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcn/play/dserv/JSON;->f:Ljava/lang/Object;

    if-ne v0, v2, :cond_c

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :sswitch_5
    sget-object v0, Lcn/play/dserv/JSON;->d:Ljava/lang/Object;

    goto/16 :goto_2

    :sswitch_6
    sget-object v0, Lcn/play/dserv/JSON;->f:Ljava/lang/Object;

    goto/16 :goto_2

    :sswitch_7
    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->d(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_8
    sget-object v0, Lcn/play/dserv/JSON;->c:Ljava/lang/Object;

    goto/16 :goto_2

    :sswitch_9
    sget-object v0, Lcn/play/dserv/JSON;->e:Ljava/lang/Object;

    goto/16 :goto_2

    :sswitch_a
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_2

    :sswitch_b
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    :sswitch_c
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-object v0, v2

    goto/16 :goto_2

    :cond_e
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const/16 v0, 0x13

    if-ge v3, v0, :cond_10

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_2

    :cond_10
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    move v6, v0

    move v0, v3

    move v3, v2

    move v2, v6

    goto/16 :goto_1

    :cond_12
    move v0, v1

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2c -> :sswitch_6
        0x3a -> :sswitch_9
        0x5b -> :sswitch_4
        0x5d -> :sswitch_5
        0x66 -> :sswitch_b
        0x6e -> :sswitch_c
        0x74 -> :sswitch_a
        0x7b -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x41 -> :sswitch_3
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x44 -> :sswitch_3
        0x45 -> :sswitch_3
        0x46 -> :sswitch_3
        0x61 -> :sswitch_2
        0x62 -> :sswitch_2
        0x63 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
    .end sparse-switch
.end method

.method private static final a(Ljava/lang/StringBuilder;C)V
    .locals 3

    const-string v0, "\\u"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const v1, 0xf000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0xc

    sget-object v2, Lcn/play/dserv/JSON;->a:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shl-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static final a(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    const-string v1, "\t"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static final a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 4

    const/16 v3, 0x2c

    if-nez p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_b

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/util/Map;

    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "true"

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string v0, "false"

    goto :goto_2

    :cond_6
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_3
    if-lt v0, v1, :cond_8

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_9

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/Iterator;

    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->jsonString(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private static final a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V
    .locals 1

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static final a(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 3

    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static final b(Ljava/lang/StringBuilder;Ljava/lang/Object;II)I
    .locals 5

    const/4 v2, 0x0

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-static {p0, v0, p2, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;III)I

    move-result v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    const/4 v1, -0x1

    invoke-static {p0, v1, v0, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;III)I

    move-result v0

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0

    :cond_0
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4, v0, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;II)I

    move-result v0

    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_1

    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v2, v0, p3}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;III)I

    move-result v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static final b(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    :goto_0
    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_3

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v1

    const/16 v0, 0x75

    if-ne v1, v0, :cond_2

    move v1, v2

    move v0, v2

    :goto_1
    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_0
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x30

    goto :goto_2

    :sswitch_1
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x6b

    goto :goto_2

    :sswitch_2
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x4b

    goto :goto_2

    :cond_2
    sget-object v0, Lcn/play/dserv/JSON;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x45 -> :sswitch_2
        0x46 -> :sswitch_2
        0x61 -> :sswitch_1
        0x62 -> :sswitch_1
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private static final b(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static final c(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    :goto_0
    sget-object v2, Lcn/play/dserv/JSON;->d:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcn/play/dserv/JSON;->f:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static final checkMapKeys(Ljava/util/Map;[Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v2, p1, v0

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final checkMapTypes(Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v2, p2, v0

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, p1, v0

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p1, v0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static final d(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;
    .locals 4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    :cond_0
    :goto_0
    sget-object v3, Lcn/play/dserv/JSON;->c:Ljava/lang/Object;

    if-ne v0, v3, :cond_1

    return-object v2

    :cond_1
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcn/play/dserv/JSON;->c:Ljava/lang/Object;

    if-eq v0, v3, :cond_0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcn/play/dserv/JSON;->f:Ljava/lang/Object;

    if-ne v0, v3, :cond_0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-static {p0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method private static final e(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;
    .locals 7

    const/16 v5, 0x2d

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    :cond_0
    invoke-static {p0, v0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;CLjava/lang/StringBuilder;)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    invoke-static {p0, v0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;CLjava/lang/StringBuilder;)I

    move-result v2

    add-int/2addr v2, v3

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    const/16 v4, 0x65

    if-eq v2, v4, :cond_1

    const/16 v4, 0x45

    if-ne v2, v4, :cond_4

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_2

    if-ne v0, v5, :cond_3

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    :cond_3
    invoke-static {p0, v0, p1}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;CLjava/lang/StringBuilder;)I

    move v0, v1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_6

    const/16 v0, 0x11

    if-ge v3, v0, :cond_5

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_5
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/16 v0, 0x13

    if-ge v3, v0, :cond_7

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move v6, v0

    move v0, v2

    move v2, v6

    goto :goto_0
.end method

.method public static final findJsonNode(Ljava/util/HashMap;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    move-object p0, v2

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    if-nez p0, :cond_3

    move-object p0, v2

    goto :goto_0

    :cond_3
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    add-int/lit8 v1, v1, 0x1

    move-object p0, v0

    goto :goto_1
.end method

.method public static final jsonString(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 4

    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/StringCharacterIterator;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    :goto_0
    const v2, 0xffff

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    if-ne v0, v3, :cond_1

    const-string v0, "\\\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_2

    const-string v0, "\\\\"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_3

    const-string v0, "\\/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    const-string v0, "\\b"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v2, 0xc

    if-ne v0, v2, :cond_5

    const-string v0, "\\f"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v2, 0xa

    if-ne v0, v2, :cond_6

    const-string v0, "\\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/16 v2, 0xd

    if-ne v0, v2, :cond_7

    const-string v0, "\\r"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const/16 v2, 0x9

    if-ne v0, v2, :cond_8

    const-string v0, "\\t"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p0, v0}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;C)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    const-string v0, "{\"abc\":[{\"mm\":{}},{\"nn\":\"kk\"}],\"eee\":\"fff\"\t\t\r\n }  "

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/play/dserv/JSON;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static final read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/StringCharacterIterator;

    invoke-direct {v1, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/text/CharacterIterator;->first()C

    invoke-static {v1, v0}, Lcn/play/dserv/JSON;->a(Ljava/text/CharacterIterator;Ljava/lang/StringBuilder;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final writeFormat(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcn/play/dserv/JSON;->writeFormat(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final writeFormat(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcn/play/dserv/JSON;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;II)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
