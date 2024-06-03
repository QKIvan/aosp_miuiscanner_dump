.class public final synthetic Lcom/xiaomi/scanner/camera/CaptureModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/scanner/camera/CaptureModule;

.field public final synthetic f$1:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    iput-object p2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaomi/scanner/camera/CaptureModule;->lambda$requestPreviewFrame$0$com-xiaomi-scanner-camera-CaptureModule(Ljava/lang/ref/WeakReference;[BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    return-void
.end method
