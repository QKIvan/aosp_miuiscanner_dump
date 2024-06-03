.class Lcom/xiaomi/scanner/app/ScanActivity$MainHandler;
.super Landroid/os/Handler;
.source "ScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/app/ScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/scanner/app/ScanActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;Landroid/os/Looper;)V
    .locals 0

    .line 424
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 425
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaomi/scanner/app/ScanActivity$MainHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$MainHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/app/ScanActivity;

    if-nez v0, :cond_0

    return-void

    .line 435
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 442
    :cond_1
    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$300(Lcom/xiaomi/scanner/app/ScanActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 443
    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 437
    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result p1

    if-nez p1, :cond_3

    .line 438
    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->openCamera()V

    :cond_3
    :goto_0
    return-void
.end method
