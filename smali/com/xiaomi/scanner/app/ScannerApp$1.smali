.class Lcom/xiaomi/scanner/app/ScannerApp$1;
.super Ljava/lang/Object;
.source "ScannerApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/app/ScannerApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/app/ScannerApp;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/ScannerApp;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScannerApp$1;->this$0:Lcom/xiaomi/scanner/app/ScannerApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->access$000()Lcom/xiaomi/scanner/app/ScannerApp;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/scanner/util/Util;->initialize(Landroid/content/Context;)V

    .line 32
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->checkDeviceHasNavigationBar()Z

    .line 33
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDefaultDisplaySize()Landroid/graphics/Point;

    return-void
.end method
