.class public Lcom/xiaomi/scanner/camera/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
.implements Lcom/xiaomi/scanner/camera/CameraProvider;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_CAMERA_ID:I = -0x1

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static cameraLock:Ljava/lang/Object;


# instance fields
.field private cameraOpened:Z

.field private final mCallbackHandler:Landroid/os/Handler;

.field private mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

.field private mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private mCurrentCameraId:I

.field private mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

.field private mRequestingCameraId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CameraController"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/camera/CameraController;->cameraLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->cameraOpened:Z

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    .line 29
    iput v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCurrentCameraId:I

    .line 42
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 43
    iput-object p2, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackHandler:Landroid/os/Handler;

    .line 44
    iput-object p3, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 45
    invoke-virtual {p3}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz p1, :cond_0

    const-string p2, "GETTING_CAMERA_INFO"

    .line 47
    invoke-interface {p1, v0, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static checkAndOpenCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    .locals 3

    .line 259
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->cameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    sget-object v1, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "checkAndOpenCamera"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :try_start_1
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->throwIfCameraDisabled()V

    .line 263
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/ex/camera2/portability/CameraAgent;->openCamera(Landroid/os/Handler;ILcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    :try_end_1
    .catch Lcom/xiaomi/scanner/camera/CameraDisabledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    :catch_0
    :try_start_2
    new-instance p0, Lcom/xiaomi/scanner/camera/CameraController$1;

    invoke-direct {p0, p3, p1}, Lcom/xiaomi/scanner/camera/CameraController$1;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;I)V

    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public closeCamera()V
    .locals 4

    .line 244
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->cameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->cameraOpened:Z

    if-eqz v1, :cond_0

    .line 246
    sget-object v1, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "closing camera"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    const/4 v1, 0x0

    .line 248
    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v1, -0x1

    .line 249
    iput v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    .line 250
    iput v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCurrentCameraId:I

    .line 251
    iput-boolean v3, p0, Lcom/xiaomi/scanner/camera/CameraController;->cameraOpened:Z

    .line 253
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCameraDevice()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method public getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 62
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 64
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCharacteristics error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method public getCurrentCameraId()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCurrentCameraId:I

    return v0
.end method

.method public getFirstBackCameraId()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 92
    :cond_0
    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getFirstBackCameraId()I

    move-result v0

    return v0
.end method

.method public getFirstFrontCameraId()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 100
    :cond_0
    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getFirstFrontCameraId()I

    move-result v0

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 84
    :cond_0
    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public isBackFacingCamera(I)Z
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 120
    :cond_0
    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getNumberOfCameras()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingBack()Z

    move-result p1

    return p1

    .line 121
    :cond_2
    :goto_0
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera info not available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public isFrontFacingCamera(I)Z
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 108
    :cond_0
    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getNumberOfCameras()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result p1

    return p1

    .line 109
    :cond_2
    :goto_0
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera info not available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public onCameraDisabled(I)V
    .locals 2

    .line 143
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onCameraDisabled: "

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraDisabled(I)V

    :cond_0
    return-void
.end method

.method public onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 3

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->cameraOpened:Z

    .line 130
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOpened: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    iget v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v0, -0x1

    .line 135
    iput v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    .line 136
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_1

    .line 137
    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    :cond_1
    return-void
.end method

.method public onDeviceOpenFailure(ILjava/lang/String;)V
    .locals 2

    .line 151
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onDeviceOpenFailure: "

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCurrentCameraId:I

    .line 154
    iput v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    .line 158
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDeviceOpenedAlready(ILjava/lang/String;)V
    .locals 2

    .line 165
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onDeviceOpenedAlready: "

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenedAlready(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V
    .locals 2

    .line 173
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onReconnectionFailure: "

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public releaseCamera(I)V
    .locals 6

    .line 211
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 212
    iget v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    if-ne v0, v1, :cond_0

    .line 214
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to release the camera before requesting. cameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    :cond_0
    iput v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    return-void

    .line 220
    :cond_1
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 222
    iget v2, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    const-string v3, ":"

    if-ne v2, p1, :cond_2

    .line 223
    sget-object v2, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Releasing camera which was requested but not yet opened (current:requested): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to release a camera neither openednor requested (current:requested:for-release): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_3
    :goto_0
    iput v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCurrentCameraId:I

    .line 233
    iput v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    return-void
.end method

.method public removeCallbackReceiver()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    return-void
.end method

.method public requestCamera(I)V
    .locals 3

    .line 181
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCamera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    iget v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v1, :cond_1

    const-string p1, "null info"

    .line 194
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 197
    :cond_1
    iput p1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    .line 198
    iput p1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCurrentCameraId:I

    .line 201
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackHandler:Landroid/os/Handler;

    invoke-static {v0, p1, v1, p0}, Lcom/xiaomi/scanner/camera/CameraController;->checkAndOpenCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V

    return-void
.end method

.method public setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    return-void
.end method

.method public waitingForCamera()Z
    .locals 2

    .line 206
    iget v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
