.class public Lcom/xiaomi/scanner/module/code/utils/MiPayListener;
.super Ljava/lang/Object;
.source "MiPayListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;


# static fields
.field private static final MI_BI:Ljava/lang/String; = "https://([a-zA-Z]+\\.)?m\\.mibi\\.(xiao)?mi\\.com/qrpay/[0-9a-zA-Z]{20}"

.field private static final MI_BI_WITHHOLD:Ljava/lang/String; = "https://([a-zA-Z]+\\.)?m\\.mibi\\.(xiao)?mi\\.com/dsqr/[0-9a-zA-Z]{20}"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "MiPayListener"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkUrl(Ljava/lang/String;)Z
    .locals 3

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://([a-zA-Z]+\\.)?m\\.mibi\\.(xiao)?mi\\.com/qrpay/[0-9a-zA-Z]{20}"

    .line 33
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/config/ConfigModel;->isMiBiPayRule(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "https://([a-zA-Z]+\\.)?m\\.mibi\\.(xiao)?mi\\.com/dsqr/[0-9a-zA-Z]{20}"

    .line 44
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayListener;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/Util;->startUriWithBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 35
    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.payment"

    const-string v2, "com.xiaomi.payment.QrEntryActivity"

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 42
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "start payment false"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/MiPayListener;->checkUrl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onCodeModuleDestroy()V
    .locals 2

    .line 58
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onCodeModuleDestroy"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
