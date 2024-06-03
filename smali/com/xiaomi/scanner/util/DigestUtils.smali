.class public Lcom/xiaomi/scanner/util/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 13
    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaomi/scanner/util/DigestUtils;->DIGITS_LOWER:[C

    new-array v0, v0, [C

    .line 20
    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/scanner/util/DigestUtils;->DIGITS_UPPER:[C

    .line 24
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "DigestUtils"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/DigestUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5_32(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/scanner/util/DigestUtils;->getBytesMD5([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static byte2Hex(B)Ljava/lang/String;
    .locals 2

    and-int/lit8 v0, p0, 0x7f

    if-gez p0, :cond_0

    const/16 p0, 0x80

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const-string v1, "0"

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static digest([BLjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 44
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 45
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 46
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0, p2}, Lcom/xiaomi/scanner/util/DigestUtils;->toHexString([BZ)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 48
    sget-object p1, Lcom/xiaomi/scanner/util/DigestUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static digestMD5Hex([B)Ljava/lang/String;
    .locals 2

    const-string v0, "MD5"

    const/4 v1, 0x1

    .line 35
    invoke-static {p0, v0, v1}, Lcom/xiaomi/scanner/util/DigestUtils;->digest([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static digestSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v0, "SHA1"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/scanner/util/DigestUtils;->digest([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static digestSHA1([B)Ljava/lang/String;
    .locals 2

    const-string v0, "SHA1"

    const/4 v1, 0x0

    .line 31
    invoke-static {p0, v0, v1}, Lcom/xiaomi/scanner/util/DigestUtils;->digest([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBytesMD5([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 75
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v1, "MD5"

    .line 80
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 86
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_1

    .line 89
    aget-byte v1, p0, v2

    invoke-static {v1}, Lcom/xiaomi/scanner/util/DigestUtils;->byte2Hex(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static toHexString([BZ)Ljava/lang/String;
    .locals 4

    .line 55
    array-length v0, p0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p1, :cond_0

    .line 58
    sget-object p1, Lcom/xiaomi/scanner/util/DigestUtils;->DIGITS_UPPER:[C

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaomi/scanner/util/DigestUtils;->DIGITS_LOWER:[C

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 61
    aget-byte v3, p0, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
