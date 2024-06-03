.class public abstract Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
.super Ljava/lang/Object;
.source "CameraDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Characteristics"
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamDvcInfChar"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static orientationIsValid(I)Z
    .locals 2

    .line 199
    rem-int/lit8 v0, p0, 0x5a

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 200
    sget-object p0, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v0, "Provided display orientation is not divisible by 90"

    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    if-ltz p0, :cond_2

    const/16 v0, 0x10e

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 204
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v0, "Provided display orientation is outside expected range"

    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public abstract canDisableShutterSound()Z
.end method

.method public getJpegOrientation(I)I
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getRelativeImageOrientation(IZ)I

    move-result p1

    return p1
.end method

.method public getPreviewOrientation(I)I
    .locals 1

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getRelativeImageOrientation(IZ)I

    move-result p1

    return p1
.end method

.method public getPreviewTransform(ILandroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 1

    .line 158
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewTransform(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public getPreviewTransform(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 1

    .line 183
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->orientationIsValid(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 184
    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 189
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    return-object p1

    .line 185
    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    return-object p1
.end method

.method protected getRelativeImageOrientation(IZ)I
    .locals 2

    .line 125
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->orientationIsValid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit16 v1, v0, 0x168

    if-eqz p2, :cond_3

    rsub-int p1, v1, 0x168

    .line 133
    rem-int/lit16 v1, p1, 0x168

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingBack()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 136
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result p2

    sub-int/2addr p2, p1

    add-int/lit16 p2, p2, 0x168

    rem-int/lit16 v1, p2, 0x168

    goto :goto_0

    .line 138
    :cond_2
    sget-object p1, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string p2, "Camera is facing unhandled direction"

    invoke-static {p1, p2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public abstract getSensorOrientation()I
.end method

.method public abstract isFacingBack()Z
.end method

.method public abstract isFacingFront()Z
.end method
