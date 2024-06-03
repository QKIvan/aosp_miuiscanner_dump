.class public Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;
.super Ljava/lang/Object;
.source "CameraCoordinateTransformer.java"


# static fields
.field private static final CAMERA_DRIVER_RECT:Landroid/graphics/RectF;


# instance fields
.field private final mCameraToPreviewTransform:Landroid/graphics/Matrix;

.field private final mPreviewToCameraTransform:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x3b860000    # -1000.0f

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;->CAMERA_DRIVER_RECT:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(ZILandroid/graphics/RectF;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-direct {p0, p3}, Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;->hasNonZeroArea(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;->cameraToPreviewTransform(ZILandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;->mCameraToPreviewTransform:Landroid/graphics/Matrix;

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;->inverse(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;->mPreviewToCameraTransform:Landroid/graphics/Matrix;

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "previewRect"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private cameraToPreviewTransform(ZILandroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 2

    .line 63
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 66
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float p1, p2

    .line 70
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 73
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 74
    sget-object p2, Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;->CAMERA_DRIVER_RECT:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, p2, p3, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 79
    invoke-virtual {v0, p1, v0}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method private hasNonZeroArea(Landroid/graphics/RectF;)Z
    .locals 2

    .line 91
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private inverse(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 86
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v0
.end method


# virtual methods
.method public toCameraSpace(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;->mPreviewToCameraTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public toPreviewSpace(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;->mCameraToPreviewTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method
