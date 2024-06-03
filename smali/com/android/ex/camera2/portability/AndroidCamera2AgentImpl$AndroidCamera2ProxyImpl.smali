.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;
.super Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidCamera2ProxyImpl"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/camera2/CameraDevice;

.field private final mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

.field private final mCameraIndex:I

.field private final mCapabilities:Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

.field private final mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

.field private mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

.field private mShutterSoundEnabled:Z

.field final synthetic this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;ILandroid/hardware/camera2/CameraDevice;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;-><init>()V

    .line 1147
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .line 1148
    iput p3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraIndex:I

    .line 1149
    iput-object p4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCamera:Landroid/hardware/camera2/CameraDevice;

    .line 1150
    iput-object p5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    .line 1151
    new-instance p1, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

    invoke-direct {p1, p6}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

    const/4 p1, 0x0

    .line 1152
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 p1, 0x1

    .line 1153
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mShutterSoundEnabled:Z

    return-void
.end method

.method static synthetic access$3000(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;)Z
    .locals 0

    .line 1132
    iget-boolean p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mShutterSoundEnabled:Z

    return p0
.end method

.method private getSpecializedCapabilities()Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

    return-object v0
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 0

    return-void
.end method

.method public applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1407
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object p1

    const-string v1, "null parameters in applySettings()"

    invoke-static {p1, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 1410
    :cond_0
    instance-of v1, p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;

    if-nez v1, :cond_1

    .line 1411
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object p1

    const-string v1, "Provided settings not compatible with the backing framework API"

    invoke-static {p1, v1}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v1, -0x2

    .line 1416
    invoke-virtual {p0, p1, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->applySettingsHelper(Lcom/android/ex/camera2/portability/CameraSettings;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1417
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V
    .locals 2

    .line 1237
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2800(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$2;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1263
    iget-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public dumpDeviceSettings()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public enableShutterSound(Z)V
    .locals 0

    .line 1425
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mShutterSoundEnabled:Z

    return-void
.end method

.method public getAgent()Lcom/android/ex/camera2/portability/CameraAgent;
    .locals 1

    .line 1178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    return-object v0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraHandler()Landroid/os/Handler;
    .locals 1

    .line 1436
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getCameraId()I
    .locals 1

    .line 1164
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraIndex:I

    return v0
.end method

.method public getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 1

    .line 1446
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

    return-object v0
.end method

.method public getCharacteristics()Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    return-object v0
.end method

.method public getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 1

    .line 1441
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettings()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 2

    .line 1398
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2700(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->buildSettings(Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;)Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    return-object v0
.end method

.method public setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V
    .locals 2

    .line 1271
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2800(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1295
    iget-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V
    .locals 0

    return-void
.end method

.method public setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 1

    .line 1213
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2800(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object p1

    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    return-void
.end method

.method public setPreviewDataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 0

    return-void
.end method

.method public setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 0

    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1191
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setSizesLocked(Z)V

    .line 1192
    invoke-super {p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public setPreviewTextureSync(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1201
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setSizesLocked(Z)V

    .line 1202
    invoke-super {p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0

    return-void
.end method

.method public startFaceDetection()V
    .locals 0

    return-void
.end method

.method public stopFaceDetection()V
    .locals 0

    return-void
.end method

.method public takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V
    .locals 0

    .line 1309
    new-instance p3, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$4;

    invoke-direct {p3, p0, p2, p1, p5}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$4;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    .line 1350
    :try_start_0
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2800(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object p1

    new-instance p2, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$5;

    invoke-direct {p2, p0, p3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$5;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;)V

    invoke-virtual {p1, p2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1361
    iget-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method
