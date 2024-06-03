.class public Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;
.super Ljava/lang/Object;
.source "WeChatPayListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final WECHAT:Ljava/util/regex/Pattern;

.field private static final WECHAT_PAY:Ljava/util/regex/Pattern;


# instance fields
.field private activity:Landroid/app/Activity;

.field private mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private toInstallDialog:Lcom/xiaomi/scanner/dialog/ToInstallDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "WeChatPayListener"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "(http:\\/\\/weixin.qq.com\\/.*|weixin:\\/\\/.*)"

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->WECHAT:Ljava/util/regex/Pattern;

    const-string v0, "(https:\\/\\/wx\\.tenpay\\.com\\/f2f.*)"

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->WECHAT_PAY:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->activity:Landroid/app/Activity;

    return-void
.end method

.method private checkWeChatInstalled()Z
    .locals 5

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->activity:Landroid/app/Activity;

    const-string v2, "com.tencent.mm"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/util/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startWeChart(Landroid/content/Context;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 104
    :cond_1
    new-instance v1, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1001ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->toInstallDialog:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {v1}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->dismiss()V

    .line 112
    :cond_2
    new-instance v1, Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->toInstallDialog:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    .line 113
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->setExtOndismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->toInstallDialog:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->show()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private requestPreviewFrame()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v1, :cond_0

    .line 70
    check-cast v0, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->requestPreviewFrame()V

    :cond_0
    return-void
.end method

.method private toWechat(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3

    .line 49
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "LauncherUI.From.Scaner.Shortcut"

    const/4 v1, 0x1

    .line 51
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    .line 52
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    .line 53
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->checkWeChatInstalled()Z

    move-result p1

    return p1

    .line 59
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 61
    sget-object p2, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "start open wechat error "

    invoke-static {p2, v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->requestPreviewFrame()V

    :goto_0
    return v1
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 2

    .line 76
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WEB_URL:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->TEXT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-eq p2, v0, :cond_0

    return v1

    .line 79
    :cond_0
    sget-object p2, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->WECHAT:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->WECHAT_PAY:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {p2, p1}, Lcom/xiaomi/scanner/config/ConfigModel;->isWechatRule(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 81
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->activity:Landroid/app/Activity;

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->toWechat(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public onCodeModuleDestroy()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->toInstallDialog:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->toInstallDialog:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setOnDismessListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method
