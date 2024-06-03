.class public abstract Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
.super Ljava/lang/Object;
.source "CameraAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CameraProxy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 2

    .line 655
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$10;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$10;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;[B)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 664
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public abstract applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z
.end method

.method protected applySettingsHelper(Lcom/android/ex/camera2/portability/CameraSettings;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 853
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraAgent;->access$200()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object p1

    const-string p2, "null argument in applySettings()"

    invoke-static {p1, p2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 856
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 857
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraAgent;->access$200()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object p1

    const-string p2, "Unsupported settings in applySettings()"

    invoke-static {p1, p2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 861
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->copy()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object p1

    .line 863
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$15;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$15;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;ILcom/android/ex/camera2/portability/CameraSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 876
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V
.end method

.method public cancelAutoFocus()V
    .locals 3

    .line 687
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    .line 688
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 687
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 689
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x131

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public abstract dumpDeviceSettings()Ljava/lang/String;
.end method

.method public enableShutterSound(Z)V
    .locals 2

    .line 916
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$17;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$17;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 924
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public abstract getAgent()Lcom/android/ex/camera2/portability/CameraAgent;
.end method

.method public abstract getCamera()Landroid/hardware/Camera;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCameraHandler()Landroid/os/Handler;
.end method

.method public abstract getCameraId()I
.end method

.method public abstract getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;
.end method

.method public abstract getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;
.end method

.method public abstract getCharacteristics()Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
.end method

.method public abstract getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;
.end method

.method public abstract getParameters()Landroid/hardware/Camera$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSettings()Lcom/android/ex/camera2/portability/CameraSettings;
.end method

.method public lock()V
    .locals 2

    .line 463
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$3;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$3;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 469
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public reconnect(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    .locals 2

    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$1;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 429
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public refreshSettings()V
    .locals 2

    .line 898
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$16;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$16;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 904
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public abstract setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V
.end method

.method public setDisplayOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    .line 728
    invoke-virtual {p0, p1, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(IZ)V

    return-void
.end method

.method public setDisplayOrientation(IZ)V
    .locals 2

    .line 743
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$11;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 752
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public abstract setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V
.end method

.method public setJpegOrientation(I)V
    .locals 2

    .line 758
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$12;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$12;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;I)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 766
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public abstract setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
.end method

.method public abstract setParameters(Landroid/hardware/Camera$Parameters;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setPreviewDataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
.end method

.method public abstract setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 549
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$6;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$6;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/view/SurfaceHolder;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 557
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 496
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$4;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$4;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 504
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public setPreviewTextureSync(Landroid/graphics/SurfaceTexture;)V
    .locals 7

    .line 524
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 527
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;-><init>()V

    .line 529
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$5;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/graphics/SurfaceTexture;Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;)V

    iget-object v3, v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0xdac

    const-string v6, "set preview texture"

    invoke-virtual/range {v1 .. v6}, Lcom/android/ex/camera2/portability/DispatchThread;->runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 538
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public abstract setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
.end method

.method public startFaceDetection()V
    .locals 2

    .line 791
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$13;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$13;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 797
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public startPreview()V
    .locals 2

    .line 566
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$7;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$7;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 573
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V
    .locals 2

    .line 583
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$8;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 591
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    .line 806
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$14;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$14;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 812
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public stopPreview()V
    .locals 7

    .line 602
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 605
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;-><init>()V

    .line 607
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$9;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$9;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;)V

    iget-object v3, v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0xdac

    const-string v6, "stop preview"

    invoke-virtual/range {v1 .. v6}, Lcom/android/ex/camera2/portability/DispatchThread;->runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 614
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public abstract takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V
.end method

.method public unlock()V
    .locals 7

    .line 440
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 443
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;-><init>()V

    .line 445
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$2;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$2;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;)V

    iget-object v3, v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0xdac

    const-string v6, "camera unlock"

    invoke-virtual/range {v1 .. v6}, Lcom/android/ex/camera2/portability/DispatchThread;->runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 453
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getAgent()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method
