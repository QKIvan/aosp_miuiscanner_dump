.class public Lcom/xiaomi/scanner/module/code/utils/MiAccountListener;
.super Ljava/lang/Object;
.source "MiAccountListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;


# static fields
.field private static final PATTERN_URL_MI_ACCOUNT_LOGIN:Ljava/lang/String; = "https://.*\\.account\\.xiaomi\\.com/longPolling/login\\?.*"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "AccountListener"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiAccountListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiAccountListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static isMiAccountUrl(Ljava/lang/String;)Z
    .locals 1

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://.*\\.account\\.xiaomi\\.com/longPolling/login\\?.*"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startMiAccountLogin(Ljava/lang/String;)V
    .locals 3

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.account"

    const-string v2, "com.xiaomi.account.ui.AccountWebActivity"

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 49
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiAccountListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 1

    .line 32
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/MiAccountListener;->isMiAccountUrl(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 36
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/MiAccountListener;->startMiAccountLogin(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 39
    sget-object p2, Lcom/xiaomi/scanner/module/code/utils/MiAccountListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public onCodeModuleDestroy()V
    .locals 2

    .line 54
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiAccountListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onCodeModuleDestroy"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
