.class public Lcom/xiaomi/scanner/util/ExceptionHandler;
.super Lcom/android/ex/camera2/portability/CameraExceptionHandler;
.source "ExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/util/ExceptionHandler$ExceptionCallback;
    }
.end annotation


# instance fields
.field private handle:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;Landroid/os/Handler;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;-><init>(Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;Landroid/os/Handler;)V

    .line 17
    iput-object p2, p0, Lcom/xiaomi/scanner/util/ExceptionHandler;->handle:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCameraError(I)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ExceptionHandler;->handle:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-super {p0, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraError(I)V

    return-void
.end method

.method public onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ExceptionHandler;->handle:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V

    return-void
.end method

.method public onDispatchThreadException(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ExceptionHandler;->handle:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-super {p0, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    return-void
.end method
