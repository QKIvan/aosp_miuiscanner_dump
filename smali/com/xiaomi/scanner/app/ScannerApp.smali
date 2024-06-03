.class public Lcom/xiaomi/scanner/app/ScannerApp;
.super Landroid/app/Application;
.source "ScannerApp.java"


# static fields
.field private static scannerApp:Lcom/xiaomi/scanner/app/ScannerApp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/app/ScannerApp;
    .locals 1

    .line 14
    sget-object v0, Lcom/xiaomi/scanner/app/ScannerApp;->scannerApp:Lcom/xiaomi/scanner/app/ScannerApp;

    return-object v0
.end method

.method public static getAndroidContext()Landroid/content/Context;
    .locals 1

    .line 19
    sget-object v0, Lcom/xiaomi/scanner/app/ScannerApp;->scannerApp:Lcom/xiaomi/scanner/app/ScannerApp;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScannerApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 24
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 26
    sput-object p0, Lcom/xiaomi/scanner/app/ScannerApp;->scannerApp:Lcom/xiaomi/scanner/app/ScannerApp;

    .line 28
    new-instance v0, Lcom/xiaomi/scanner/app/ScannerApp$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScannerApp$1;-><init>(Lcom/xiaomi/scanner/app/ScannerApp;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScannerApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScreenUtils;->isPad(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x64

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "save_module_tab"

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
