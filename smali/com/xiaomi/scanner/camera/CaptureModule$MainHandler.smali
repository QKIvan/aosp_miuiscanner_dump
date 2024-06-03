.class Lcom/xiaomi/scanner/camera/CaptureModule$MainHandler;
.super Landroid/os/Handler;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/scanner/camera/CaptureModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 1

    .line 1345
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1346
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1351
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/camera/CaptureModule;

    if-nez v0, :cond_0

    return-void

    .line 1355
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 1366
    :cond_1
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1200(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    goto :goto_0

    .line 1363
    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->autoFocus()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 1360
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1100(Lcom/xiaomi/scanner/camera/CaptureModule;I)V

    goto :goto_0

    .line 1357
    :cond_4
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1000(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    :goto_0
    return-void
.end method
