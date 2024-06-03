.class public Lcom/xiaomi/scanner/module/code/app/BarCodeScannerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BarCodeScannerReceiver.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static isFromCamera:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "BarCodeReceiver"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerReceiver;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerReceiver;->isFromCamera:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static isIsFromCamera()Z
    .locals 1

    .line 22
    sget-boolean v0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerReceiver;->isFromCamera:Z

    return v0
.end method

.method public static setIsFromCamera(Z)V
    .locals 0

    .line 26
    sput-boolean p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerReceiver;->isFromCamera:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 31
    sget-object v0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerReceiver;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "BarCodeScannerReceiver onReceive"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 34
    invoke-static {v2, v1, v3}, Lcom/xiaomi/scanner/util/AppUtil;->openScanApp(Landroid/app/Activity;IZ)V

    if-eqz p2, :cond_0

    const-string v1, "result"

    .line 36
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BarCodeScannerReceiver onReceive startBarCodeScanActivity"

    .line 39
    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 40
    sput-boolean v3, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerReceiver;->isFromCamera:Z

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    const-class v2, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 44
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x10008000

    .line 45
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
