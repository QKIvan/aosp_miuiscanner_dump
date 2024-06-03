.class public Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;
.super Ljava/lang/Object;
.source "AllCanPayListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;
.implements Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private dialog:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->requestPreviewFrame()V

    return-void
.end method

.method private getWechatIntent()Landroid/content/Intent;
    .locals 4

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "LauncherUI.From.Scaner.Shortcut"

    const/4 v2, 0x1

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private requestPreviewFrame()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v1, :cond_0

    .line 123
    check-cast v0, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->requestPreviewFrame()V

    :cond_0
    return-void
.end method

.method private showChooseDialog(Ljava/lang/String;Z)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->dialog:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->dismiss()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener$1;-><init>(Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;)V

    invoke-static {v0, p1, p0, v1, p2}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->showChoosePayDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->dialog:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;

    return-void
.end method

.method private toChooseOnePay(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "preferencePaySelect"

    const/4 v1, 0x2

    .line 42
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    const-string v4, "com.tencent.mm"

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/xiaomi/scanner/util/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->checkAliPayInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->toWechat(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/xiaomi/scanner/util/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->checkAliPayInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startAlipay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/xiaomi/scanner/util/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->checkAliPayInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    invoke-direct {p0, p1, v3}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->showChooseDialog(Ljava/lang/String;Z)V

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/xiaomi/scanner/util/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->checkAliPayInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    invoke-direct {p0, p1, v2}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->showChooseDialog(Ljava/lang/String;Z)V

    goto :goto_0

    .line 49
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->toWechat(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 51
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {p1, v4}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startAppStore(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 46
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startAlipay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    :cond_6
    :goto_1
    return v2
.end method

.method private toWechat(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->getWechatIntent()Landroid/content/Intent;

    move-result-object p2

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    return v1
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 0

    .line 34
    sget-object p2, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {p2, p1}, Lcom/xiaomi/scanner/config/ConfigModel;->isAllCanPayRule(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->toChooseOnePay(Ljava/lang/String;)Z

    move-result p2

    :cond_0
    return p2
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onCodeModuleDestroy()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->dialog:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->dialog:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onToPayClick(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 111
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    const-string v0, "com.tencent.mm"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/util/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->toWechat(Landroid/app/Activity;Ljava/lang/String;)Z

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startAppStore(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startAlipay(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method
