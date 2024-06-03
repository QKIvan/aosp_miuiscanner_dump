.class public abstract Lcom/android/ex/camera2/portability/CameraAgent;
.super Ljava/lang/Object;
.source "CameraAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraErrorCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;
    }
.end annotation


# static fields
.field public static final CAMERA_OPERATION_TIMEOUT_MS:J = 0xdacL

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamAgnt"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgent;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .line 45
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgent;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V
    .locals 6

    if-eqz p2, :cond_1

    .line 311
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 314
    :cond_0
    new-instance p1, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    invoke-direct {p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;-><init>()V

    .line 316
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$2;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$2;-><init>(Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;)V

    iget-object v2, p1, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v3, 0xdac

    const-string v5, "camera release"

    invoke-virtual/range {v0 .. v5}, Lcom/android/ex/camera2/portability/DispatchThread;->runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object p1

    new-instance p2, Lcom/android/ex/camera2/portability/CameraAgent$3;

    invoke-direct {p2, p0}, Lcom/android/ex/camera2/portability/CameraAgent$3;-><init>(Lcom/android/ex/camera2/portability/CameraAgent;)V

    invoke-virtual {p1, p2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 331
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public abstract getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;
.end method

.method protected abstract getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;
.end method

.method protected abstract getCameraHandler()Landroid/os/Handler;
.end method

.method protected abstract getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;
.end method

.method protected abstract getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;
.end method

.method public openCamera(Landroid/os/Handler;ILcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    .locals 2

    .line 289
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/ex/camera2/portability/CameraAgent$1;-><init>(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 297
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public abstract recycle()V
.end method

.method public abstract setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
.end method
