.class public Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;
.super Ljava/lang/Object;
.source "QRCodeMatcher.java"


# static fields
.field private static final CARD:Ljava/util/regex/Pattern;

.field private static final CARDHEAD:Ljava/util/regex/Pattern;

.field private static final ESIM:Ljava/util/regex/Pattern;

.field public static final INTENT_CARD_KEY_BIRTH:Ljava/lang/String; = "birth"

.field public static final INTENT_INSERT_WEBSITE:Ljava/lang/String; = "website"

.field private static final MARKET:Ljava/util/regex/Pattern;

.field private static final MATMSG:Ljava/util/regex/Pattern;

.field private static final MATTER:Ljava/util/regex/Pattern;

.field private static final MECARD:Ljava/util/regex/Pattern;

.field private static final MECARDHEAD:Ljava/util/regex/Pattern;

.field private static final MECARDSPLIT:Ljava/util/regex/Pattern;

.field private static final MIRACAST_BOX:Ljava/util/regex/Pattern;

.field public static final MIRACAST_PARAM_MAC:Ljava/lang/String; = "miracast_tvmac"

.field public static final MIRACAST_PARAM_NAME:Ljava/lang/String; = "miracast_tvname"

.field private static final MIRACAST_TV:Ljava/util/regex/Pattern;

.field private static final NUMBER:Ljava/util/regex/Pattern;

.field private static final PAYTM_ALPHANUMERIC:Ljava/util/regex/Pattern;

.field private static final PAYTM_DIGIT:Ljava/util/regex/Pattern;

.field private static final PHONE:Ljava/util/regex/Pattern;

.field private static final VCARD:Ljava/util/regex/Pattern;

.field private static final VCARDPARSER:Lcom/google/zxing/client/result/VCardResultParser;

.field private static final WEB_URL:Ljava/util/regex/Pattern;

.field private static final WIFI:Ljava/util/regex/Pattern;

.field private static final WIFIHEAD:Ljava/util/regex/Pattern;

.field private static final WIFISPLIT:Ljava/util/regex/Pattern;


# instance fields
.field private mCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/scanner/module/code/zxing/VCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:(?:((http|https|rtsp)):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:(?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:\u03b4\u03bf\u03ba\u03b9\u03bc\u03ae|\u0438\u0441\u043f\u044b\u0442\u0430\u043d\u0438\u0435|\u0440\u0444|\u0441\u0440\u0431|\u05d8\u05e2\u05e1\u05d8|\u0622\u0632\u0645\u0627\u06cc\u0634\u06cc|\u0625\u062e\u062a\u0628\u0627\u0631|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u092a\u0930\u0940\u0915\u094d\u0937\u093e|\u092d\u093e\u0930\u0924|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0baa\u0bb0\u0bbf\u0b9f\u0bcd\u0b9a\u0bc8|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u30c6\u30b9\u30c8|\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u65b0\u52a0\u5761|\u6d4b\u8bd5|\u6e2c\u8a66|\u9999\u6e2f|\ud14c\uc2a4\ud2b8|\ud55c\uad6d|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(?:\\/(?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WEB_URL:Ljava/util/regex/Pattern;

    .line 46
    new-instance v0, Lcom/google/zxing/client/result/VCardResultParser;

    invoke-direct {v0}, Lcom/google/zxing/client/result/VCardResultParser;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->VCARDPARSER:Lcom/google/zxing/client/result/VCardResultParser;

    const-string v0, "(market\\s*:\\/\\/.*)"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MARKET:Ljava/util/regex/Pattern;

    const-string v0, "(?:https?:\\/\\/qmirror\\.sys\\.tv\\.mi\\.com\\/\\?(?:.*&)?miracast_tvmac=.*)|(?:https?:\\/\\/weixin\\.qq\\.com\\/r\\/N3Xv96DE_-2EreSU9yAl(\\/info)?\\?miracast_tvmac.*)"

    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MIRACAST_TV:Ljava/util/regex/Pattern;

    const-string v0, "(http:\\/\\/weixin.qq.com\\/r\\/P3XO1lDE8w2MrRS19yAt\\/info\\?miracast_tvmac.*)"

    .line 57
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MIRACAST_BOX:Ljava/util/regex/Pattern;

    const-string v0, "(card\\s*:.*)"

    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->CARD:Ljava/util/regex/Pattern;

    const-string v0, "(mecard\\s*:.*)"

    .line 60
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MECARD:Ljava/util/regex/Pattern;

    const-string v0, "\\s*(CARD|mecard)\\s*:\\s*"

    .line 61
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->CARDHEAD:Ljava/util/regex/Pattern;

    const-string v0, "^BEGIN:VCARD(.|\n)*END:VCARD$"

    .line 62
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->VCARD:Ljava/util/regex/Pattern;

    const-string v0, "([a-zA-Z]{1,6}\\s*:[^;]+);"

    .line 64
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MECARDSPLIT:Ljava/util/regex/Pattern;

    const-string v0, "\\s*(MECARD|mecard)\\s*:\\s*"

    .line 65
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MECARDHEAD:Ljava/util/regex/Pattern;

    const-string v0, "(WIFI\\s*:.*)"

    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WIFI:Ljava/util/regex/Pattern;

    const-string v0, "([a-zA-Z]{1,2}\\s*:[^;]+);"

    .line 68
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WIFISPLIT:Ljava/util/regex/Pattern;

    const-string v0, "WIFI\\s*:\\s*"

    .line 69
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WIFIHEAD:Ljava/util/regex/Pattern;

    const-string v0, "^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$"

    .line 70
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->PHONE:Ljava/util/regex/Pattern;

    const-string v0, "^[0-9]*$"

    .line 72
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->NUMBER:Ljava/util/regex/Pattern;

    const-string v0, "^LPA:.*"

    .line 73
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->ESIM:Ljava/util/regex/Pattern;

    const-string v0, "^MATMSG:.*;;$"

    .line 74
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MATMSG:Ljava/util/regex/Pattern;

    const-string v0, "^MT:[A-Z0-9.-]{19,}"

    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MATTER:Ljava/util/regex/Pattern;

    const-string v0, "^\\p{Alnum}{24}$"

    .line 80
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->PAYTM_ALPHANUMERIC:Ljava/util/regex/Pattern;

    const-string v0, "^\\d{6}"

    .line 81
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->PAYTM_DIGIT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    return-void
.end method

.method private findVCardBykey(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/zxing/VCard;
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {v1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private findVcardValue(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/scanner/module/code/zxing/VCard;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 212
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 213
    aget-object v1, p2, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1, p3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->getNameByKey(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    return-object p1
.end method

.method private getNameByKey(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;
    .locals 2

    const-string v0, "N"

    .line 278
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string v0, "NAME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "NICKNAME"

    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f10017e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 285
    new-instance p3, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    const-string v0, "data1"

    invoke-direct {p3, v0, p1, p2, v1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3

    :cond_1
    const-string v0, "TEL"

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->parsePhone(Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "EMAIL"

    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "EM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v0, "URL"

    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "DIV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v0, "ADR"

    .line 294
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 295
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f10001f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 297
    new-instance p3, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    const-string v0, "postal"

    invoke-direct {p3, v0, p1, p2, v1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3

    :cond_5
    const-string v0, "ORG"

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 299
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f100082

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 301
    new-instance p3, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    const-string v0, "company"

    invoke-direct {p3, v0, p1, p2, v1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3

    :cond_6
    const-string v0, "TIL"

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "TITLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    const-string v0, "BDAY"

    .line 306
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 307
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f100030

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 309
    new-instance p3, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    const-string v0, "birth"

    invoke-direct {p3, v0, p1, p2, v1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3

    :cond_8
    const-string v0, "NOTE"

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 311
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f100186

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 313
    new-instance p3, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    const-string v0, "notes"

    invoke-direct {p3, v0, p1, p2, v1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3

    :cond_9
    const/4 p1, 0x0

    return-object p1

    .line 303
    :cond_a
    :goto_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f1001fe

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 305
    new-instance p3, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    const-string v0, "job_title"

    invoke-direct {p3, v0, p1, p2, v1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3

    .line 291
    :cond_b
    :goto_1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f100214

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 293
    new-instance p3, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    const-string v0, "website"

    invoke-direct {p3, v0, p1, p2, v1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3

    .line 289
    :cond_c
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->parseEmail(Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object p1

    return-object p1

    .line 279
    :cond_d
    :goto_3
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f10017d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 281
    new-instance p3, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    const-string v0, "name"

    invoke-direct {p3, v0, p1, p2, v1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 1

    .line 161
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->NUMBER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static isPhoneNumber(Ljava/lang/String;)Z
    .locals 1

    .line 346
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 347
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static match(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;
    .locals 3

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MATTER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MATTER:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object p0

    .line 96
    :cond_0
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MATMSG:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MATMSG:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object p0

    .line 99
    :cond_1
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->ESIM:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->ESIM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object p0

    .line 102
    :cond_2
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->VCARD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->VCARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object p0

    .line 106
    :cond_3
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MIRACAST_BOX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MIRACAST_TV:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_0

    .line 110
    :cond_4
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 111
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WEB_URL:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object p0

    .line 114
    :cond_5
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MARKET:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-nez v1, :cond_6

    .line 116
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MARKET:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object p0

    .line 119
    :cond_6
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MECARD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-nez v1, :cond_7

    .line 121
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MECARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object p0

    .line 124
    :cond_7
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->CARD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    if-nez v0, :cond_8

    .line 126
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->CARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object p0

    .line 129
    :cond_8
    new-instance v0, Lcom/google/zxing/Result;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 130
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->VCARDPARSER:Lcom/google/zxing/client/result/VCardResultParser;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 131
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->VCARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object p0

    .line 134
    :cond_9
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WIFI:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    if-nez v0, :cond_a

    .line 136
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object p0

    .line 139
    :cond_a
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->PAYTM_ALPHANUMERIC:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/xiaomi/scanner/settings/FeatureManager;->isPaytmAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 141
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->PAYTM_DIGIT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 142
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 143
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->PAYTM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object p0

    .line 147
    :cond_b
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->TEXT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object p0

    .line 107
    :cond_c
    :goto_0
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MIRACAST:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object p0
.end method

.method private meCardSpliter(Lcom/xiaomi/scanner/module/code/codec/QRCodeType;Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/scanner/module/code/codec/QRCodeType;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/scanner/module/code/zxing/VCard;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    .line 231
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MECARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MECARDHEAD:Ljava/util/regex/Pattern;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->CARDHEAD:Ljava/util/regex/Pattern;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 235
    sget-object p2, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MECARDSPLIT:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 236
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 237
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x3a

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 240
    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-direct {p0, p2, v0, p3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->getNameByKey(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object p2

    .line 243
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 249
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    return-object p1
.end method

.method private parseEmail(Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;
    .locals 3

    .line 265
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1000b4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "email"

    .line 268
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVCardBykey(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v1, p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->addValue(Ljava/lang/String;)V

    return-object v1

    .line 273
    :cond_0
    new-instance v1, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, p1, v2}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method

.method private parsePhone(Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;
    .locals 3

    .line 253
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100190

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "phone"

    .line 255
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVCardBykey(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v1, p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->addValue(Ljava/lang/String;)V

    return-object v1

    .line 260
    :cond_0
    new-instance v1, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v1, v0, p2, p1, v2}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method

.method private vCardSpliter(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/scanner/module/code/zxing/VCard;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/google/zxing/Result;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 167
    sget-object p1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->VCARDPARSER:Lcom/google/zxing/client/result/VCardResultParser;

    invoke-virtual {p1, v0}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 169
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-direct {p0, v1, v0, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVcardValue(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNicknames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNicknames()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "NICKNAME"

    invoke-direct {p0, v1, v0, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVcardValue(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    .line 175
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEL"

    invoke-direct {p0, v1, v0, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVcardValue(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    .line 178
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 179
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMAIL"

    invoke-direct {p0, v1, v0, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVcardValue(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    .line 181
    :cond_3
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getURLs()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 182
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getURLs()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "URL"

    invoke-direct {p0, v1, v0, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVcardValue(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    .line 184
    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 185
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADR"

    invoke-direct {p0, v1, v0, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVcardValue(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    .line 188
    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 189
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORG"

    invoke-direct {p0, v1, v0, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->getNameByKey(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_6
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 194
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TIL"

    invoke-direct {p0, v1, v0, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->getNameByKey(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_7
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getBirthday()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 199
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getBirthday()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BDAY"

    invoke-direct {p0, v1, v0, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->getNameByKey(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_8
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 204
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNote()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NOTE"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->getNameByKey(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object p1

    .line 205
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_9
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static wifiSpliter(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 329
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WIFIHEAD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 330
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 332
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WIFISPLIT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 333
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 334
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x3a

    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 337
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    .line 338
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/zxing/WiFiUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public contactsCardSpliter(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/scanner/module/code/codec/QRCodeType;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/scanner/module/code/zxing/VCard;",
            ">;"
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MECARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->CARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->VCARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p2, v0, :cond_1

    .line 154
    invoke-direct {p0, p1, p3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->vCardSpliter(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 152
    :cond_2
    :goto_0
    invoke-direct {p0, p2, p1, p3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->meCardSpliter(Lcom/xiaomi/scanner/module/code/codec/QRCodeType;Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
