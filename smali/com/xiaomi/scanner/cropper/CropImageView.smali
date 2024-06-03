.class public Lcom/xiaomi/scanner/cropper/CropImageView;
.super Landroid/widget/ImageView;
.source "CropImageView.java"


# static fields
.field public static final GUIDELINES_OFF:I = 0x0

.field public static final GUIDELINES_ON:I = 0x2

.field public static final GUIDELINES_ON_TOUCH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "com.xiaomi.scanner.cropper.CropImageView"


# instance fields
.field private mAspectRatioX:I

.field private mAspectRatioY:I

.field private mBitmapRect:Landroid/graphics/RectF;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderThickness:F

.field private mCornerLength:F

.field private mCornerPaint:Landroid/graphics/Paint;

.field private mCornerThickness:F

.field private mFixAspectRatio:Z

.field private mGuidelinePaint:Landroid/graphics/Paint;

.field private mGuidelinesMode:I

.field private mHandleRadius:F

.field private mPressedHandle:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

.field private mSnapRadius:F

.field private mSurroundingAreaOverlayPaint:Landroid/graphics/Paint;

.field private mTouchOffset:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 116
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mBitmapRect:Landroid/graphics/RectF;

    .line 97
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mTouchOffset:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 107
    iput v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mAspectRatioX:I

    .line 108
    iput v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mAspectRatioY:I

    .line 111
    iput v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mGuidelinesMode:I

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/cropper/CropImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mBitmapRect:Landroid/graphics/RectF;

    .line 97
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mTouchOffset:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 107
    iput v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mAspectRatioX:I

    .line 108
    iput v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mAspectRatioY:I

    .line 111
    iput v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mGuidelinesMode:I

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/cropper/CropImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mBitmapRect:Landroid/graphics/RectF;

    .line 97
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mTouchOffset:Landroid/graphics/PointF;

    const/4 p3, 0x1

    .line 107
    iput p3, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mAspectRatioX:I

    .line 108
    iput p3, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mAspectRatioY:I

    .line 111
    iput p3, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mGuidelinesMode:I

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/cropper/CropImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 7

    .line 452
    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    .line 453
    invoke-virtual {v0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    .line 454
    invoke-virtual {v0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    .line 455
    invoke-virtual {v0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v5

    iget-object v6, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 452
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCorners(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v0, p0

    .line 461
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 462
    sget-object v2, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 463
    sget-object v3, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 464
    sget-object v4, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    .line 467
    iget v5, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerThickness:F

    iget v6, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mBorderThickness:F

    sub-float v7, v5, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    sub-float v6, v1, v7

    sub-float v14, v2, v5

    .line 472
    iget v8, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerLength:F

    add-float v12, v2, v8

    iget-object v13, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v6

    move v10, v14

    move v11, v6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v21, v1, v5

    sub-float v22, v2, v7

    .line 474
    iget v8, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerLength:F

    add-float v18, v1, v8

    iget-object v8, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v19, v22

    move-object/from16 v20, v8

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v26, v3, v7

    .line 477
    iget v8, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerLength:F

    add-float v12, v2, v8

    iget-object v13, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move/from16 v9, v26

    move/from16 v11, v26

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v2, v3, v5

    .line 479
    iget v8, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerLength:F

    sub-float v11, v3, v8

    iget-object v13, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v2

    move/from16 v10, v22

    move/from16 v12, v22

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v25, v4, v5

    .line 482
    iget v5, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerLength:F

    sub-float v12, v4, v5

    iget-object v13, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move v9, v6

    move/from16 v10, v25

    move v11, v6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v5, v4, v7

    .line 484
    iget v6, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerLength:F

    add-float v18, v1, v6

    iget-object v1, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move/from16 v17, v5

    move/from16 v19, v5

    move-object/from16 v20, v1

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 487
    iget v1, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerLength:F

    sub-float v27, v4, v1

    iget-object v1, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v23, p1

    move/from16 v24, v26

    move-object/from16 v28, v1

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 489
    iget v1, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerLength:F

    sub-float v18, v3, v1

    iget-object v1, v0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move/from16 v16, v2

    move-object/from16 v20, v1

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawDarkenedSurroundingArea(Landroid/graphics/Canvas;)V
    .locals 14

    .line 394
    iget-object v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mBitmapRect:Landroid/graphics/RectF;

    .line 396
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v5

    .line 397
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 398
    sget-object v2, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v12

    .line 399
    sget-object v2, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v13

    .line 416
    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget v8, v0, Landroid/graphics/RectF;->top:F

    iget v9, v0, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mSurroundingAreaOverlayPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v10, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 417
    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget v9, v0, Landroid/graphics/RectF;->right:F

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mSurroundingAreaOverlayPaint:Landroid/graphics/Paint;

    move v8, v13

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 418
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mSurroundingAreaOverlayPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    move v6, v13

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 419
    iget v9, v0, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mSurroundingAreaOverlayPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v12

    move v8, v1

    move v10, v13

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawGuidelines(Landroid/graphics/Canvas;)V
    .locals 12

    .line 424
    invoke-direct {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->shouldGuidelinesBeShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 428
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 429
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 430
    sget-object v2, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 431
    sget-object v2, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v9

    .line 434
    invoke-static {}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v2

    const/high16 v10, 0x40400000    # 3.0f

    div-float v11, v2, v10

    add-float v5, v0, v11

    .line 437
    iget-object v7, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    move v4, v1

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v5, v8, v11

    .line 439
    iget-object v7, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mGuidelinePaint:Landroid/graphics/Paint;

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 442
    invoke-static {}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v2

    div-float v7, v2, v10

    add-float v5, v1, v7

    .line 445
    iget-object v6, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v0

    move v3, v5

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v5, v9, v7

    .line 447
    iget-object v6, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mGuidelinePaint:Landroid/graphics/Paint;

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getBitmapRect()Landroid/graphics/RectF;
    .locals 6

    .line 309
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    return-object v0

    :cond_0
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 316
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x4

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x5

    aget v1, v1, v5

    .line 325
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 326
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v5, v5

    mul-float v5, v5, v2

    .line 329
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, v0

    mul-float v0, v0, v3

    .line 330
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v3, 0x0

    .line 333
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 334
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v2, v2

    add-float/2addr v2, v4

    .line 335
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v0, v0

    add-float/2addr v0, v1

    .line 336
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 338
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v1, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method private getTargetAspectRatio()F
    .locals 2

    .line 498
    iget v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mAspectRatioX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mAspectRatioY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 132
    sget-object v0, Lcom/xiaomi/scanner/R$styleable;->CropImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x3

    const/4 v2, 0x1

    .line 133
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mGuidelinesMode:I

    const/4 v0, 0x2

    .line 134
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mFixAspectRatio:Z

    .line 135
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mAspectRatioX:I

    .line 136
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mAspectRatioY:I

    .line 137
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 141
    invoke-static {p1}, Lcom/xiaomi/scanner/cropper/util/PaintUtil;->newBorderPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 142
    invoke-static {p1}, Lcom/xiaomi/scanner/cropper/util/PaintUtil;->newGuidelinePaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mGuidelinePaint:Landroid/graphics/Paint;

    .line 143
    invoke-static {p1}, Lcom/xiaomi/scanner/cropper/util/PaintUtil;->newSurroundingAreaOverlayPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mSurroundingAreaOverlayPaint:Landroid/graphics/Paint;

    .line 144
    invoke-static {p1}, Lcom/xiaomi/scanner/cropper/util/PaintUtil;->newCornerPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    const p2, 0x7f07029e

    .line 146
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mHandleRadius:F

    const p2, 0x7f07029a

    .line 147
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mSnapRadius:F

    const p2, 0x7f070052

    .line 148
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mBorderThickness:F

    const p2, 0x7f07005f

    .line 149
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerThickness:F

    const p2, 0x7f07005e

    .line 150
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mCornerLength:F

    return-void
.end method

.method private initCropWindow(Landroid/graphics/RectF;)V
    .locals 4

    .line 350
    iget-boolean v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mFixAspectRatio:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/cropper/CropImageView;->initCropWindowWithFixedAspectRatio(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v1

    .line 359
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, v1

    .line 361
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 362
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 363
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 364
    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    :goto_0
    return-void
.end method

.method private initCropWindowWithFixedAspectRatio(Landroid/graphics/RectF;)V
    .locals 4

    .line 372
    invoke-static {p1}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateAspectRatio(Landroid/graphics/RectF;)F

    move-result v0

    invoke-direct {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->getTargetAspectRatio()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 374
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->getTargetAspectRatio()F

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateWidth(FF)F

    move-result v0

    .line 376
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    div-float/2addr v0, v2

    sub-float/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 377
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 378
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 379
    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-direct {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->getTargetAspectRatio()F

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateHeight(FF)F

    move-result v0

    .line 385
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 386
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    div-float/2addr v0, v2

    sub-float/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 387
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 388
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    add-float/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    :goto_0
    return-void
.end method

.method private onActionDown(FF)V
    .locals 12

    .line 509
    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 510
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 511
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v9

    .line 512
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v10

    .line 514
    iget v7, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mHandleRadius:F

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/scanner/cropper/util/HandleUtil;->getPressedHandle(FFFFFFF)Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mPressedHandle:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    if-eqz v1, :cond_0

    .line 519
    iget-object v11, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mTouchOffset:Landroid/graphics/PointF;

    move v2, p1

    move v3, p2

    move v4, v0

    move v5, v8

    move v6, v9

    move v7, v10

    move-object v8, v11

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/scanner/cropper/util/HandleUtil;->getOffset(Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;FFFFFFLandroid/graphics/PointF;)V

    .line 520
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method private onActionMove(FF)V
    .locals 7

    .line 542
    iget-object v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mPressedHandle:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    if-nez v0, :cond_0

    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mTouchOffset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float v2, p1, v0

    .line 549
    iget-object p1, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mTouchOffset:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float v3, p2, p1

    .line 552
    iget-boolean p1, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mFixAspectRatio:Z

    if-eqz p1, :cond_1

    .line 553
    iget-object v1, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mPressedHandle:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    invoke-direct {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->getTargetAspectRatio()F

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mBitmapRect:Landroid/graphics/RectF;

    iget v6, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mSnapRadius:F

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->updateCropWindow(FFFLandroid/graphics/RectF;F)V

    goto :goto_0

    .line 555
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mPressedHandle:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    iget-object p2, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mBitmapRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mSnapRadius:F

    invoke-virtual {p1, v2, v3, p2, v0}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->updateCropWindow(FFLandroid/graphics/RectF;F)V

    .line 557
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->invalidate()V

    return-void
.end method

.method private onActionUp()V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mPressedHandle:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 529
    iput-object v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mPressedHandle:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    .line 530
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method private shouldGuidelinesBeShown()Z
    .locals 3

    .line 493
    iget v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mGuidelinesMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mPressedHandle:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public getCroppedImage()Landroid/graphics/Bitmap;
    .locals 7

    .line 263
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 264
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 270
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x4

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x5

    aget v1, v1, v5

    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    .line 279
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    cmpg-float v6, v1, v5

    if-gez v6, :cond_2

    .line 280
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 283
    :cond_2
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 286
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    add-float/2addr v4, v1

    div-float/2addr v4, v2

    .line 287
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    add-float/2addr v5, v1

    div-float/2addr v5, v3

    .line 291
    invoke-static {}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v1

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 292
    invoke-static {}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v3, v4

    float-to-int v4, v5

    float-to-int v1, v1

    float-to-int v2, v2

    .line 295
    invoke-static {v0, v3, v4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 167
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/cropper/CropImageView;->drawDarkenedSurroundingArea(Landroid/graphics/Canvas;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/cropper/CropImageView;->drawGuidelines(Landroid/graphics/Canvas;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/cropper/CropImageView;->drawBorder(Landroid/graphics/Canvas;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/cropper/CropImageView;->drawCorners(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 158
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 160
    invoke-direct {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mBitmapRect:Landroid/graphics/RectF;

    .line 161
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/cropper/CropImageView;->initCropWindow(Landroid/graphics/RectF;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 179
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    return v1

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/scanner/cropper/CropImageView;->onActionMove(FF)V

    .line 197
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 192
    invoke-direct {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->onActionUp()V

    return v2

    .line 186
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/scanner/cropper/CropImageView;->onActionDown(FF)V

    return v2
.end method

.method public setAspectRatio(II)V
    .locals 0

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 246
    iput p1, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mAspectRatioX:I

    .line 247
    iput p2, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mAspectRatioY:I

    .line 249
    iget-boolean p1, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mFixAspectRatio:Z

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->requestLayout()V

    :cond_0
    return-void

    .line 244
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFixedAspectRatio(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mFixAspectRatio:Z

    .line 229
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->requestLayout()V

    return-void
.end method

.method public setGuidelines(I)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/xiaomi/scanner/cropper/CropImageView;->mGuidelinesMode:I

    .line 216
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/CropImageView;->invalidate()V

    return-void
.end method
