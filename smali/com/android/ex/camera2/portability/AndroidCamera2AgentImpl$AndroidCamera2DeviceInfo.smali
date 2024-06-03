.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;
.super Ljava/lang/Object;
.source "AndroidCamera2AgentImpl.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraDeviceInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidCamera2DeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;
    }
.end annotation


# instance fields
.field private final mCameraIds:[Ljava/lang/String;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mFirstBackCameraId:I

.field private final mFirstFrontCameraId:I

.field private final mNumberOfCameras:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;I)V
    .locals 7

    .line 1502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1503
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 1504
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mCameraIds:[Ljava/lang/String;

    .line 1505
    iput p3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mNumberOfCameras:I

    const/4 p3, -0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 1509
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 1511
    :try_start_0
    aget-object v3, p2, v0

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1512
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p3, :cond_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v0

    :cond_0
    if-ne v2, p3, :cond_1

    if-nez v3, :cond_1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1522
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t get characteristics of camera \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1525
    :cond_2
    iput v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mFirstBackCameraId:I

    .line 1526
    iput v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mFirstFrontCameraId:I

    return-void
.end method


# virtual methods
.method public getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 1

    .line 1531
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mCameraIds:[Ljava/lang/String;

    aget-object p1, v0, p1

    .line 1533
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    .line 1534
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;

    invoke-direct {v0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFirstBackCameraId()I
    .locals 1

    .line 1547
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mFirstBackCameraId:I

    return v0
.end method

.method public getFirstFrontCameraId()I
    .locals 1

    .line 1552
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mFirstFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .line 1542
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;->mNumberOfCameras:I

    return v0
.end method
