.class public Lcom/xiaomi/scanner/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Z)V
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/xiaomi/scanner/util/ToastUtils;->showToast(Ljava/lang/String;Z)V

    return-void
.end method

.method private static hideToast()V
    .locals 1

    .line 40
    sget-object v0, Lcom/xiaomi/scanner/util/ToastUtils;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/xiaomi/scanner/util/ToastUtils;->toast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public static showBottomToast(I)V
    .locals 1

    .line 47
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/util/ToastUtils;->showToast(Ljava/lang/String;Z)V

    return-void
.end method

.method public static showCenterToast(I)V
    .locals 1

    .line 17
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(Ljava/lang/String;)V

    return-void
.end method

.method public static showCenterToast(Ljava/lang/String;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/xiaomi/scanner/util/ToastUtils$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/util/ToastUtils$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static showToast(Ljava/lang/String;Z)V
    .locals 2

    .line 31
    invoke-static {}, Lcom/xiaomi/scanner/util/ToastUtils;->hideToast()V

    .line 32
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/scanner/util/ToastUtils;->toast:Landroid/widget/Toast;

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    .line 34
    invoke-virtual {p0, p1, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 36
    :cond_0
    sget-object p0, Lcom/xiaomi/scanner/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
