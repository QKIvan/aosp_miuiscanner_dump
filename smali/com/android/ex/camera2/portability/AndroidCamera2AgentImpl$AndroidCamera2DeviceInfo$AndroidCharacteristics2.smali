.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;
.super Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidCharacteristics2"
.end annotation


# instance fields
.field private mCameraInfo:Landroid/hardware/camera2/CameraCharacteristics;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0

    .line 1558
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;-><init>()V

    .line 1559
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->mCameraInfo:Landroid/hardware/camera2/CameraCharacteristics;

    return-void
.end method

.method private static convertRectToPoly(Landroid/graphics/RectF;)[F
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 1608
    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x6

    aput v1, v0, v2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    const/4 v1, 0x7

    aput p0, v0, v1

    return-object v0
.end method

.method private static rotate([FI)[F
    .locals 4

    if-gez p1, :cond_0

    .line 1614
    array-length v0, p0

    rem-int/2addr p1, v0

    array-length v0, p0

    add-int/2addr p1, v0

    .line 1617
    :cond_0
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1618
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    add-int v2, p1, v1

    .line 1619
    array-length v3, p0

    rem-int/2addr v2, v3

    aget v2, p0, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public canDisableShutterSound()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPreviewTransform(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 6

    .line 1583
    invoke-static {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->orientationIsValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1584
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    return-object p1

    .line 1591
    :cond_0
    invoke-static {p2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->convertRectToPoly(Landroid/graphics/RectF;)[F

    move-result-object p2

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x5a

    invoke-static {p2, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->rotate([FI)[F

    move-result-object v1

    .line 1593
    invoke-static {p3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->convertRectToPoly(Landroid/graphics/RectF;)[F

    move-result-object v3

    .line 1595
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p1

    .line 1598
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    return-object p1
.end method

.method public getSensorOrientation()I
    .locals 2

    .line 1576
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->mCameraInfo:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isFacingBack()Z
    .locals 2

    .line 1564
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->mCameraInfo:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 1565
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFacingFront()Z
    .locals 2

    .line 1570
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo$AndroidCharacteristics2;->mCameraInfo:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 1571
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
