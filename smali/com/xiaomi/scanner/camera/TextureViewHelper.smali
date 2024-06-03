.class public Lcom/xiaomi/scanner/camera/TextureViewHelper;
.super Ljava/lang/Object;
.source "TextureViewHelper.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field public static final MATCH_SCREEN:F = 0.0f

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final UNSET:I = -0x1


# instance fields
.field private mAspectRatio:F

.field private final mAspectRatioChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoAdjustTransform:Z

.field private mCameraProvider:Lcom/xiaomi/scanner/camera/CameraProvider;

.field private mHeight:I

.field private mMatrixPreview:Landroid/graphics/Matrix;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOrientation:I

.field private mPreview:Landroid/view/TextureView;

.field private mPreviewArea:Landroid/graphics/RectF;

.field private mPreviewDisplayHeight:I

.field private mPreviewDisplayWidth:I

.field private final mPreviewSizeChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "TextureView"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;Lcom/xiaomi/scanner/camera/CameraProvider;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    .line 37
    iput v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatio:F

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAutoAdjustTransform:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatioChangedListeners:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOrientation:I

    .line 60
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    .line 61
    iput-object p2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mCameraProvider:Lcom/xiaomi/scanner/camera/CameraProvider;

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/TextureView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 63
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private getPreviewScale(Landroid/graphics/PointF;Lcom/android/ex/camera2/portability/Size;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    .line 266
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    if-eq v1, v2, :cond_0

    int-to-float v1, v2

    mul-float v1, v1, v0

    .line 267
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 269
    :goto_0
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v2

    iget v3, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    if-eq v2, v3, :cond_2

    int-to-float v2, v3

    mul-float v2, v2, v0

    .line 270
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v2, p2

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    cmpl-float p2, v1, v2

    if-nez p2, :cond_3

    :goto_2
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_3
    cmpg-float p2, v1, v0

    if-gez p2, :cond_5

    cmpg-float p2, v2, v0

    if-gez p2, :cond_5

    cmpl-float p2, v1, v2

    if-lez p2, :cond_4

    div-float p2, v0, v2

    mul-float p2, p2, v1

    goto :goto_3

    :cond_4
    cmpg-float p2, v1, v2

    if-gez p2, :cond_7

    div-float p2, v0, v1

    mul-float p2, p2, v2

    goto :goto_4

    :cond_5
    cmpl-float p2, v1, v2

    if-lez p2, :cond_6

    div-float p2, v0, v2

    mul-float p2, p2, v1

    goto :goto_4

    :cond_6
    cmpg-float p2, v1, v2

    if-gez p2, :cond_7

    div-float p2, v0, v1

    mul-float p2, p2, v2

    :goto_3
    move v0, p2

    goto :goto_2

    :cond_7
    move v0, v1

    move p2, v2

    .line 292
    :goto_4
    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private getPreviewSize(Lcom/android/ex/camera2/portability/Size;I)Lcom/android/ex/camera2/portability/Size;
    .locals 1

    if-eqz p2, :cond_1

    const/16 v0, 0xb4

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    new-instance p2, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result p1

    invoke-direct {p2, v0, p1}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    return-object p2

    :cond_1
    :goto_0
    return-object p1
.end method

.method private onAspectRatioChanged()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatioChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;

    .line 137
    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatio:F

    invoke-interface {v1, v2}, Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;->onPreviewAspectRatioChanged(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 3

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 302
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    new-instance v2, Lcom/xiaomi/scanner/camera/TextureViewHelper$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper$1;-><init>(Lcom/xiaomi/scanner/camera/TextureViewHelper;Ljava/util/List;Landroid/graphics/RectF;)V

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setAspectRatio(F)V
    .locals 5

    .line 126
    iget v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatio:F

    .line 128
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "aspectRatio: [%.2f -> %.2f] "

    .line 127
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    iput p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatio:F

    .line 130
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->onAspectRatioChanged()V

    :cond_0
    return-void
.end method

.method private updatePreviewArea(Landroid/graphics/Matrix;)V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 179
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 180
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    return-void
.end method

.method private updateTransform()Z
    .locals 9

    .line 206
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScreenUtils;->isPad(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 209
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTransform: autoAdjust="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAutoAdjustTransform:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " orientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    iget-boolean v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAutoAdjustTransform:Z

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return v0

    .line 214
    :cond_1
    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatio:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_8

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_8

    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 218
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mCameraProvider:Lcom/xiaomi/scanner/camera/CameraProvider;

    if-nez v2, :cond_3

    return v1

    .line 223
    :cond_3
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mMatrixPreview:Landroid/graphics/Matrix;

    .line 224
    invoke-interface {v2}, Lcom/xiaomi/scanner/camera/CameraProvider;->getCurrentCameraId()I

    move-result v4

    if-ltz v4, :cond_7

    .line 228
    invoke-interface {v2, v4}, Lcom/xiaomi/scanner/camera/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v4

    .line 229
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 230
    invoke-interface {v2}, Lcom/xiaomi/scanner/camera/CameraProvider;->getCameraDevice()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 233
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v2

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDisplayRotation()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v6

    goto :goto_0

    :cond_4
    const/16 v6, 0x5a

    :goto_0
    invoke-direct {p0, v2, v6}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->getPreviewSize(Lcom/android/ex/camera2/portability/Size;I)Lcom/android/ex/camera2/portability/Size;

    move-result-object v2

    .line 234
    invoke-direct {p0, v5, v2}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->getPreviewScale(Landroid/graphics/PointF;Lcom/android/ex/camera2/portability/Size;)V

    .line 236
    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    int-to-float v2, v2

    iget v6, v5, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewDisplayWidth:I

    .line 237
    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    int-to-float v2, v2

    iget v6, v5, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewDisplayHeight:I

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v4, :cond_6

    .line 240
    iget v6, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOrientation:I

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v3, v3, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v3, v8, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v6, v7, v2}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewTransform(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mMatrixPreview:Landroid/graphics/Matrix;

    goto :goto_1

    .line 243
    :cond_6
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mMatrixPreview:Landroid/graphics/Matrix;

    .line 244
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v3, v3, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v3, v7, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v4, v6, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 247
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTransform: matrix="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mMatrixPreview:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 249
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mMatrixPreview:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 250
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mMatrixPreview:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->updatePreviewArea(Landroid/graphics/Matrix;)V

    :cond_8
    :goto_2
    return v1
.end method


# virtual methods
.method public addAspectRatioChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatioChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatioChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 360
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {p1, v0}, Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 363
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, v0}, Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public clearTransform()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 107
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 108
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 109
    invoke-direct {p0, v3}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setAspectRatio(F)V

    return-void
.end method

.method public getPreviewArea()Landroid/graphics/RectF;
    .locals 2

    .line 317
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 426
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 427
    iget v4, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewDisplayWidth:I

    iget v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    if-ne v4, v0, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewDisplayHeight:I

    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 428
    iget v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewDisplayHeight:I

    iget-object v6, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mMatrixPreview:Landroid/graphics/Matrix;

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getPreviewBitmap(I)Landroid/graphics/Bitmap;
    .locals 9

    .line 336
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->getTextureArea()Landroid/graphics/RectF;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    div-int v5, v1, p1

    .line 338
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    div-int v6, v0, p1

    .line 339
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {p1, v5, v6}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 340
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getPreviewHeight()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    return v0
.end method

.method public getTextureArea()Landroid/graphics/RectF;
    .locals 5

    .line 326
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    return-object v0

    .line 329
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 330
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 331
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 11

    move-object v0, p0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    .line 82
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    .line 83
    sget-object v4, Lcom/xiaomi/scanner/camera/TextureViewHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    .line 85
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v6, v8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x6

    aput-object v7, v6, v8

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x8

    aput-object v7, v6, v8

    const-string v7, "onLayoutChange: [%d %d %d %d]->[%d %d %d %d], orientation=%d"

    .line 83
    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    iget v4, v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    if-ne v4, v1, :cond_0

    iget v4, v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    if-ne v4, v2, :cond_0

    iget v4, v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOrientation:I

    if-eq v4, v3, :cond_1

    .line 87
    :cond_0
    iput v1, v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    .line 88
    iput v2, v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    .line 89
    iput v3, v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOrientation:I

    .line 90
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->updateTransform()Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->clearTransform()V

    .line 94
    :cond_1
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 95
    invoke-interface/range {v1 .. v10}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    :cond_2
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 385
    iget v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    if-eqz v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->updateTransform()Z

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_1

    .line 390
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 405
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 397
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 413
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public removePreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setAutoAdjustTransform(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAutoAdjustTransform:Z

    return-void
.end method

.method public setCameraProviderIfEmpty(Lcom/xiaomi/scanner/camera/CameraProvider;)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mCameraProvider:Lcom/xiaomi/scanner/camera/CameraProvider;

    if-nez v0, :cond_0

    .line 435
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mCameraProvider:Lcom/xiaomi/scanner/camera/CameraProvider;

    :cond_0
    return-void
.end method

.method public setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-void
.end method

.method public updateAspectRatio(F)V
    .locals 3

    .line 113
    sget-object v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAspectRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid aspect ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    div-float p1, v0, p1

    .line 121
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setAspectRatio(F)V

    .line 122
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->updateTransform()Z

    return-void
.end method

.method public updateTransform(Landroid/graphics/Matrix;)V
    .locals 5

    .line 149
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 150
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 152
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 153
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_3

    cmpl-float v4, v1, v3

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v2

    if-gez v4, :cond_1

    div-float v1, v2, v1

    .line 160
    :cond_1
    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatio:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    .line 161
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setAspectRatio(F)V

    .line 164
    :cond_2
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    int-to-float v2, v2

    iget v4, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    int-to-float v4, v4

    invoke-direct {v1, v3, v3, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 165
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 166
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v0, v1, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 168
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 169
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->updatePreviewArea(Landroid/graphics/Matrix;)V

    return-void

    .line 155
    :cond_3
    :goto_0
    sget-object p1, Lcom/xiaomi/scanner/camera/TextureViewHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid preview size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
