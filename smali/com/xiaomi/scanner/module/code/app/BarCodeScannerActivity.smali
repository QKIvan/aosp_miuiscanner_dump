.class public Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;
.super Landroid/app/Activity;
.source "BarCodeScannerActivity.java"

# interfaces
.implements Lcom/xiaomi/scanner/util/ScanUtils$CheckToFinishActivityListen;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final REQUESTPERMISSION:I = 0x1a

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

.field private scanUtil:Lcom/xiaomi/scanner/util/ScanUtils;

.field private waitFinish:Z

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "BarCodeActivity"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->waitFinish:Z

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private handleQrCode(Ljava/lang/String;)V
    .locals 3

    .line 153
    sget-object v0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "handleQrCode"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->scanUtil:Lcom/xiaomi/scanner/util/ScanUtils;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/xiaomi/scanner/util/ScanUtils;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->mListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/xiaomi/scanner/util/ScanUtils;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/xiaomi/scanner/bean/NetWorkRuleBean;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->scanUtil:Lcom/xiaomi/scanner/util/ScanUtils;

    .line 156
    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/util/ScanUtils;->setCheckToFinishActivity(Lcom/xiaomi/scanner/util/ScanUtils$CheckToFinishActivityListen;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->scanUtil:Lcom/xiaomi/scanner/util/ScanUtils;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/util/ScanUtils;->dealWithCode(Ljava/lang/String;)V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 142
    sget-object v0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "initListener"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->mListeners:Ljava/util/ArrayList;

    .line 144
    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/MiAccountListener;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/code/utils/MiAccountListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/MatterCodeListener;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/code/utils/MatterCodeListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/EmailScanListener;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/code/utils/EmailScanListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private showConfirmDialog()V
    .locals 4

    .line 78
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isRightVersion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity$1;-><init>(Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;)V

    const/4 v1, 0x0

    const v2, 0x7f100127

    .line 84
    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f100103

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {p0, v0, v1, v2, v3}, Lcom/xiaomi/scanner/util/DialogUtil;->createConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/scanner/util/CtaManager;->requestCtaDialog(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string p3, "result"

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 122
    invoke-static {v0}, Lcom/xiaomi/scanner/util/AppUtil;->saveUserAgreeToRun(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->handleQrCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->finish()V

    :cond_1
    :goto_0
    const/16 v1, 0x22

    if-ne p1, v1, :cond_3

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 132
    invoke-static {v0}, Lcom/xiaomi/scanner/util/AppUtil;->saveUserAgreeToRun(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->handleQrCode(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-ne p2, v0, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCheckToFinishActivityListener()V
    .locals 2

    .line 163
    sget-object v0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onCheckToFinishActivityListener"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    sget-object v0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->initListener()V

    const p1, 0x7f0d001d

    .line 66
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->setContentView(I)V

    .line 67
    sget-object p1, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/config/ConfigModel;->initCacheData()V

    .line 68
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isUserAgreeToRun()Z

    move-result p1

    if-nez p1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->showConfirmDialog()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "result"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->handleQrCode(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 113
    sget-object v0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 168
    sget-object p1, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "dialog onDismiss"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 106
    sget-object v0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->waitFinish:Z

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    sget-object v0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume waitFinish:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->waitFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->waitFinish:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->finish()V

    :cond_0
    return-void
.end method
