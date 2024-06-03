.class public Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;
.super Ljava/lang/Object;
.source "CustomUrlFilterUtil.java"


# static fields
.field private static final PHONE_CHARS:Ljava/lang/String; = "0123456789+. -#*()"

.field public static final SEND_MESSAGE_KEY:Ljava/lang/String; = "smsto:"

.field public static final SEND_MESSAGE_KEY_TWO:Ljava/lang/String; = "sms:"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field public static effectiveNumber:Ljava/lang/String;

.field public static isSmsto:Z

.field public static smsBody:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CustomUrl"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->isSmsto:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->isSmsto:Z

    const-string v0, ""

    .line 24
    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->effectiveNumber:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->smsBody:Ljava/lang/String;

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 31
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "smsto:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 32
    sput-boolean v2, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->isSmsto:Z

    const/4 v0, 0x6

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->getEffectiveNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    return-object v1

    .line 41
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sms:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    sput-boolean v2, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->isSmsto:Z

    const/4 v0, 0x4

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->getEffectiveNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p0

    :cond_3
    return-object v1

    :cond_4
    return-object p0
.end method

.method private static getEffectiveNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/scanner/util/StringUtils;->isStartWithNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    sget-object p0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "getEffectiveNumber str Does not start with a number"

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v0, ":"

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 68
    array-length v0, p0

    if-eqz v0, :cond_4

    .line 69
    aget-object v0, p0, v3

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->effectiveNumber:Ljava/lang/String;

    const/4 v0, 0x0

    .line 71
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    if-eqz v0, :cond_2

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->smsBody:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->smsBody:Ljava/lang/String;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_3
    sput-object p0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->effectiveNumber:Ljava/lang/String;

    .line 81
    :cond_4
    sget-object p0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEffectiveNumber smsBody:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->smsBody:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   ,effectiveNumber"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->effectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    sget-object p0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->effectiveNumber:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_6

    .line 84
    sget-object v2, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->effectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v4, "0123456789+. -#*()"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    return-object v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    :try_start_0
    const-string p0, "miui.telephony.PhoneNumberUtils$PhoneNumber"

    .line 89
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "parse"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Class;

    .line 90
    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v4, v3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->effectiveNumber:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-static {p0, v0, v4, v2}, Lcom/xiaomi/scanner/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getEffectiveNumber"

    .line 91
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "recycle"

    .line 92
    invoke-static {p0, v2}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    sget-object p0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEffectiveNumber number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 97
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "call method error"

    invoke-static {v0, v2, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
