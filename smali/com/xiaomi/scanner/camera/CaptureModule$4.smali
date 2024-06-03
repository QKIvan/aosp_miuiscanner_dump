.class Lcom/xiaomi/scanner/camera/CaptureModule$4;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/camera/CaptureModule;->lambda$requestPreviewFrame$0(Ljava/lang/ref/WeakReference;[BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

.field final synthetic val$camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field final synthetic val$data:[B

.field final synthetic val$weakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;Ljava/lang/ref/WeakReference;[BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$4;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    iput-object p2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$4;->val$weakReference:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/xiaomi/scanner/camera/CaptureModule$4;->val$data:[B

    iput-object p4, p0, Lcom/xiaomi/scanner/camera/CaptureModule$4;->val$camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$4;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$4;->val$data:[B

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$4;->val$camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/scanner/module/ModuleController;->onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z

    .line 318
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/debug/LogHelper;->instance()Lcom/xiaomi/scanner/debug/LogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/debug/LogHelper;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$4;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$4;->val$data:[B

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$4;->val$camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2800(Lcom/xiaomi/scanner/camera/CaptureModule;[BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    :cond_1
    return-void
.end method
