.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraDeviceInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidCameraDeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;
    }
.end annotation


# instance fields
.field private final mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

.field private final mFirstBackCameraId:I

.field private final mFirstFrontCameraId:I

.field private final mNumberOfCameras:I


# direct methods
.method private constructor <init>([Landroid/hardware/Camera$CameraInfo;III)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    .line 140
    iput p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mNumberOfCameras:I

    .line 141
    iput p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstBackCameraId:I

    .line 142
    iput p4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstFrontCameraId:I

    return-void
.end method

.method public static create()Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;
    .locals 7

    .line 149
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 150
    new-array v1, v0, [Landroid/hardware/Camera$CameraInfo;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 152
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v1, v2

    .line 153
    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 164
    aget-object v5, v1, v2

    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_1

    move v3, v2

    goto :goto_2

    .line 167
    :cond_1
    aget-object v5, v1, v2

    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    move v4, v2

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 173
    :cond_3
    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;-><init>([Landroid/hardware/Camera$CameraInfo;III)V

    return-object v2

    :catch_0
    move-exception v0

    .line 156
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Exception while creating CameraDeviceInfo"

    invoke-static {v1, v2, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 180
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;

    invoke-direct {v0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;-><init>(Landroid/hardware/Camera$CameraInfo;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFirstBackCameraId()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstBackCameraId:I

    return v0
.end method

.method public getFirstFrontCameraId()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mNumberOfCameras:I

    return v0
.end method
