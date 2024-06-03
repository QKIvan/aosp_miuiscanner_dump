.class public Lcom/xiaomi/scanner/module/code/utils/AlipayListener;
.super Ljava/lang/Object;
.source "AlipayListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;


# static fields
.field private static final NUMBER:Ljava/util/regex/Pattern;

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "AlipayListener"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/AlipayListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "[0-9]*"

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/AlipayListener;->NUMBER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/AlipayListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static isAlipayNumber(Ljava/lang/String;)Z
    .locals 3

    const-string v0, " "

    const-string v1, ""

    .line 51
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 53
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "28"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/AlipayListener;->NUMBER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method private static isAlipayUrl(Ljava/lang/String;)Z
    .locals 3

    .line 28
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "qr.alipay.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/scanner/module/code/utils/AlipayListener;->isAlipayNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/xiaomi/scanner/module/code/utils/AlipayListener;->isCanAlipayFromConfig(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method private static isCanAlipayFromConfig(Ljava/lang/String;)Z
    .locals 3

    .line 37
    sget-object v0, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/config/ConfigModel;->getPaymentRuleList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 38
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 43
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1

    .line 39
    :cond_3
    :goto_0
    sget-object p0, Lcom/xiaomi/scanner/module/code/utils/AlipayListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "no config rules"

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 0

    .line 62
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/AlipayListener;->isAlipayUrl(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 64
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/utils/AlipayListener;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startAlipay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    :cond_0
    return p2
.end method

.method public onCodeModuleDestroy()V
    .locals 2

    .line 71
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/AlipayListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onCodeModuleDestroy"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
