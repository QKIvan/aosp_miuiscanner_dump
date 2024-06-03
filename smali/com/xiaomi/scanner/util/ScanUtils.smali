.class public Lcom/xiaomi/scanner/util/ScanUtils;
.super Ljava/lang/Object;
.source "ScanUtils.java"

# interfaces
.implements Lcom/xiaomi/scanner/app/ScanActivity$onActivityRestart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/util/ScanUtils$CheckToFinishActivityListen;
    }
.end annotation


# static fields
.field private static final BROWSER_PKG_ARRAY:[Ljava/lang/String;

.field private static final DATA_MATRIX:Ljava/lang/String; = "DATA_MATRIX"

.field private static final QR_CODE:Ljava/lang/String; = "QR_CODE"

.field public static final RESULT_EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final RESULT_EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private checkToFinishActivity:Lcom/xiaomi/scanner/util/ScanUtils$CheckToFinishActivityListen;

.field private chooseOpenCodeDialog:Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;

.field private context:Landroid/app/Activity;

.field private lastJumpText:Ljava/lang/String;

.field private mCallingApp:Ljava/lang/String;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;",
            ">;"
        }
    .end annotation
.end field

.field private netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

.field private text:Ljava/lang/String;

.field private toInstallDialog:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

.field private type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CodeModule"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/ScanUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "com.mi.globalbrowser"

    const-string v1, "com.android.browser"

    .line 297
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/util/ScanUtils;->BROWSER_PKG_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/xiaomi/scanner/bean/NetWorkRuleBean;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;",
            ">;",
            "Lcom/xiaomi/scanner/bean/NetWorkRuleBean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 64
    iput-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->lastJumpText:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    .line 86
    iput-object p2, p0, Lcom/xiaomi/scanner/util/ScanUtils;->mListeners:Ljava/util/ArrayList;

    .line 87
    iput-object p3, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    .line 88
    iput-object p4, p0, Lcom/xiaomi/scanner/util/ScanUtils;->mCallingApp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;Ljava/util/ArrayList;Lcom/xiaomi/scanner/bean/NetWorkRuleBean;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/scanner/app/ScanActivity;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;",
            ">;",
            "Lcom/xiaomi/scanner/bean/NetWorkRuleBean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 64
    iput-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->lastJumpText:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    .line 78
    iput-object p2, p0, Lcom/xiaomi/scanner/util/ScanUtils;->mListeners:Ljava/util/ArrayList;

    .line 79
    iput-object p3, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    .line 80
    iput-object p4, p0, Lcom/xiaomi/scanner/util/ScanUtils;->mCallingApp:Ljava/lang/String;

    .line 81
    invoke-virtual {p1, p0}, Lcom/xiaomi/scanner/app/ScanActivity;->setOnActivityRestart(Lcom/xiaomi/scanner/app/ScanActivity$onActivityRestart;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/util/ScanUtils;Landroid/net/Uri;)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/util/ScanUtils;->launchActionView(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/util/ScanUtils;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/xiaomi/scanner/util/ScanUtils;->checkFinishActivity()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 41
    sget-object v0, Lcom/xiaomi/scanner/util/ScanUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/util/ScanUtils;Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/util/ScanUtils;->launchQRResultActivity(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V

    return-void
.end method

.method private checkAppType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.tencent.mm"

    .line 436
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-static {p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startWeChart(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.eg.android.AlipayGphone"

    .line 440
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startAli(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string p2, "com.sankuai.meituan"

    .line 444
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 446
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-static {p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startMeiTuan(Landroid/content/Context;)Z

    goto :goto_0

    .line 450
    :cond_2
    iget-object p2, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startOtherApp(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private checkFinishActivity()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->checkToFinishActivity:Lcom/xiaomi/scanner/util/ScanUtils$CheckToFinishActivityListen;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Lcom/xiaomi/scanner/util/ScanUtils$CheckToFinishActivityListen;->onCheckToFinishActivityListener()V

    :cond_0
    return-void
.end method

.method private checkInstalled(Lcom/xiaomi/scanner/bean/NetWorkRuleBean;I)V
    .locals 4

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 354
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/util/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sankuai.meituan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-static {p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startMeiTuan(Landroid/content/Context;)Z

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startOtherApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_1
    new-instance v1, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/util/ScanUtils;->showToInstallDialog(Landroid/content/Context;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private checkWeChatInstalled(Lcom/xiaomi/scanner/bean/NetWorkRuleBean;I)V
    .locals 4

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    const-string v2, "com.tencent.mm"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/util/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-static {p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startWeChart(Landroid/content/Context;)V

    goto :goto_0

    .line 383
    :cond_0
    new-instance v1, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/util/ScanUtils;->showToInstallDialog(Landroid/content/Context;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private getCodeType(Lcom/google/zxing/Result;)I
    .locals 2

    .line 330
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    .line 333
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DATA_MATRIX"

    .line 335
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const-string v0, "QR_CODE"

    .line 337
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private launchActionMiBrowser(Landroid/content/Intent;)Z
    .locals 5

    const/4 v0, 0x0

    .line 303
    :try_start_0
    sget-object v1, Lcom/xiaomi/scanner/util/ScanUtils;->BROWSER_PKG_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 304
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    iget-object v4, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-static {v4, p1}, Lcom/xiaomi/scanner/util/AppUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    const/4 v1, 0x0

    .line 311
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 313
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_2
    const/high16 v1, 0x10000000

    .line 317
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 318
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 322
    sget-object v1, Lcom/xiaomi/scanner/util/ScanUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchActionMiBrowser e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private launchActionView(Landroid/net/Uri;)Z
    .locals 2

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 289
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 293
    :catch_0
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/util/ScanUtils;->launchActionMiBrowser(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method private launchQRResultActivity(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V
    .locals 2

    .line 276
    iput-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->lastJumpText:Ljava/lang/String;

    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result"

    .line 278
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->ordinal()I

    move-result p1

    const-string p2, "type"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->mCallingApp:Ljava/lang/String;

    const-string p2, "fromApp"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    const-class p2, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 282
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 283
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private netWorkRuleProcess(Lcom/xiaomi/scanner/bean/NetWorkRuleBean;ILjava/lang/String;)Z
    .locals 5

    .line 184
    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getValidator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 188
    sget-object v0, Lcom/xiaomi/scanner/util/ScanUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "----- netWorkRuleText ------ Success"

    invoke-static {v0, v3}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getType()I

    move-result v3

    if-eqz v3, :cond_4

    if-eq v3, v2, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    const/4 p1, 0x4

    if-eq v3, p1, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/scanner/util/ScanUtils;->processPriority(ILjava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/scanner/util/ScanUtils;->processMultipleApps(Lcom/xiaomi/scanner/bean/NetWorkRuleBean;ILjava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v3, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-static {v3, p3}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startAli(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 211
    new-instance p3, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getAppName()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v3, p1}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/util/ScanUtils;->showToInstallDialog(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 203
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/util/ScanUtils;->checkWeChatInstalled(Lcom/xiaomi/scanner/bean/NetWorkRuleBean;I)V

    goto :goto_0

    .line 196
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/util/ScanUtils;->checkInstalled(Lcom/xiaomi/scanner/bean/NetWorkRuleBean;I)V

    :cond_5
    :goto_0
    const/4 v1, 0x1

    :cond_6
    :goto_1
    return v1
.end method

.method private processMultipleApps(Lcom/xiaomi/scanner/bean/NetWorkRuleBean;ILjava/lang/String;)V
    .locals 7

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYOPENAPP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/util/SPUtils;->getLocalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-direct {p0, v1, p3, p2}, Lcom/xiaomi/scanner/util/ScanUtils;->rememberOperation(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 400
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 403
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 404
    iget-object v4, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v5}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v5}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/util/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 405
    new-instance v4, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v5}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v5}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getAppName()Ljava/lang/String;

    move-result-object v5

    .line 406
    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v6}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v6}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 411
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 413
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/xiaomi/scanner/util/ScanUtils;->checkAppType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 415
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 417
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->chooseOpenCodeDialog:Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;

    if-eqz v0, :cond_4

    .line 418
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->dismiss()V

    .line 421
    :cond_4
    new-instance v0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;

    iget-object v2, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, v1, p1, p3}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->chooseOpenCodeDialog:Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;

    .line 422
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->show()V

    goto :goto_2

    .line 425
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {p3}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_6

    .line 426
    new-instance p3, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v1, v3}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 430
    :cond_6
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/util/ScanUtils;->showToInstallDialog(Landroid/content/Context;Ljava/util/List;)V

    :goto_2
    return-void
.end method

.method private processPriority(ILjava/lang/String;)V
    .locals 8

    .line 475
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 477
    :goto_0
    iget-object v3, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 478
    iget-object v3, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    iget-object v4, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/util/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    new-instance v3, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    iget-object v4, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getAppName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    .line 480
    invoke-virtual {v5}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v5}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v5}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 485
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/util/ScanUtils;->checkAppType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 486
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_b

    const/4 v1, 0x0

    .line 488
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 489
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->getAppName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {v5}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v5}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v5}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 495
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEYOPENAPP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {v6}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v6}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-static {v4, v6}, Lcom/xiaomi/scanner/util/SPUtils;->getLocalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 498
    invoke-direct {p0, v4}, Lcom/xiaomi/scanner/util/ScanUtils;->remeberOperationType(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_9

    if-eq v7, v3, :cond_7

    const/4 v3, 0x2

    if-eq v7, v3, :cond_5

    goto/16 :goto_4

    .line 516
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_6

    .line 518
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/util/ScanUtils;->showCHooseOpenDialog(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 520
    :cond_6
    iget-object p2, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startOtherApp(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    if-nez v1, :cond_8

    .line 510
    invoke-direct {p0, v4, p2}, Lcom/xiaomi/scanner/util/ScanUtils;->checkAppType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 512
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/util/ScanUtils;->showCHooseOpenDialog(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_9
    if-nez v1, :cond_a

    .line 503
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/util/ScanUtils;->showCHooseOpenDialog(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 505
    :cond_a
    iget-object p2, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startOtherApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 528
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_d

    .line 530
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 532
    :goto_3
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 533
    new-instance v1, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    iget-object v2, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getAppName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    .line 534
    invoke-virtual {v3}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 537
    :cond_c
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/util/ScanUtils;->showToInstallDialog(Landroid/content/Context;Ljava/util/List;)V

    :cond_d
    :goto_4
    return-void
.end method

.method private processResult(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 165
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRuleProcess(Lcom/xiaomi/scanner/bean/NetWorkRuleBean;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v1, v0

    :cond_2
    if-eqz v1, :cond_3

    return-void

    .line 177
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/util/ScanUtils;->processWebUrl(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V

    return-void
.end method

.method private processWebUrl(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V
    .locals 2

    .line 244
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WEB_URL:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p2, v0, :cond_0

    .line 245
    new-instance v0, Lcom/xiaomi/scanner/module/code/utils/URLInspector;

    invoke-direct {v0}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;-><init>()V

    .line 247
    new-instance v1, Lcom/xiaomi/scanner/util/ScanUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/scanner/util/ScanUtils$1;-><init>(Lcom/xiaomi/scanner/util/ScanUtils;Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->setOnReceivedDataListener(Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    .line 259
    invoke-virtual {v0, p2}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 263
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/util/ScanUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "no listener catch,launch QRResultActivity"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/util/ScanUtils;->launchQRResultActivity(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V

    .line 265
    invoke-direct {p0}, Lcom/xiaomi/scanner/util/ScanUtils;->checkFinishActivity()V

    return-void
.end method

.method private remeberOperationType(Ljava/lang/String;)I
    .locals 1

    const-string v0, ""

    .line 544
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method private rememberOperation(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    const-string v0, ""

    .line 457
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->context:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/xiaomi/scanner/util/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/util/ScanUtils;->checkAppType(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 468
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "KEYOPENAPP"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/scanner/util/ScanUtils;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {p2}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;

    invoke-virtual {p2}, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    return v2
.end method

.method private showCHooseOpenDialog(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->chooseOpenCodeDialog:Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->dismiss()V

    .line 569
    :cond_0
    new-instance v0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->chooseOpenCodeDialog:Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;

    .line 570
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->show()V

    return-void
.end method

.method private showToInstallDialog(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;",
            ">;)V"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->toInstallDialog:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->dismiss()V

    .line 561
    :cond_0
    new-instance v0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->toInstallDialog:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    .line 562
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->show()V

    return-void
.end method


# virtual methods
.method public dealWithCode(Lcom/google/zxing/Result;)V
    .locals 3

    .line 102
    sget-object v0, Lcom/xiaomi/scanner/util/ScanUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "dealWithCode"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    .line 106
    iget-object v2, p0, Lcom/xiaomi/scanner/util/ScanUtils;->lastJumpText:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 107
    iput-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->lastJumpText:Ljava/lang/String;

    .line 110
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---> (1\u4e00\u7ef4\u7801\u3001  2\u3001\u4e8c\u7ef4\u7801    3\u3001\u5176\u4ed6\u7801) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/util/ScanUtils;->getCodeType(Lcom/google/zxing/Result;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->match(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 113
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-eq p1, v0, :cond_1

    .line 114
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/scanner/util/Util;->decodeTwo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-eq p1, v0, :cond_3

    const/4 p1, 0x0

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;

    .line 119
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/scanner/util/ScanUtils;->type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;->handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    sget-object p1, Lcom/xiaomi/scanner/util/ScanUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealWithCode listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/xiaomi/scanner/util/ScanUtils;->checkFinishActivity()V

    return-void

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 127
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/util/ScanUtils;->processResult(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V

    return-void
.end method

.method public dealWithCode(Ljava/lang/String;)V
    .locals 3

    .line 131
    sget-object v0, Lcom/xiaomi/scanner/util/ScanUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "dealWithCode"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->lastJumpText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    .line 136
    iput-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->lastJumpText:Ljava/lang/String;

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->match(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 139
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-eq p1, v0, :cond_1

    .line 140
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/scanner/util/Util;->decodeTwo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-eq p1, v0, :cond_3

    const/4 p1, 0x0

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;

    .line 145
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/scanner/util/ScanUtils;->type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;->handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    invoke-direct {p0}, Lcom/xiaomi/scanner/util/ScanUtils;->checkFinishActivity()V

    return-void

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 152
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/util/ScanUtils;->processResult(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V

    return-void
.end method

.method public dissmissAllDialog()V
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->toInstallDialog:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->toInstallDialog:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->dismiss()V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->chooseOpenCodeDialog:Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->chooseOpenCodeDialog:Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->lastJumpText:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/util/ScanUtils;->launchQRResultActivity(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->text:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils;->type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    :cond_0
    return-void
.end method

.method public setCheckToFinishActivity(Lcom/xiaomi/scanner/util/ScanUtils$CheckToFinishActivityListen;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils;->checkToFinishActivity:Lcom/xiaomi/scanner/util/ScanUtils$CheckToFinishActivityListen;

    return-void
.end method
