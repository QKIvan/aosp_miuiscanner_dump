.class public Lcom/xiaomi/scanner/ui/ZoomImageView;
.super Landroid/widget/ImageView;
.source "ZoomImageView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;,
        Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;,
        Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;,
        Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;,
        Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;,
        Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_SCALE:F = 3.0f

.field public static final DEFAULT_MID_SCALE:F = 1.75f

.field public static final DEFAULT_MIN_SCALE:F = 1.0f

.field private static final EDGE_BOTH:I = 0x2

.field private static final EDGE_LEFT:I = 0x0

.field private static final EDGE_NONE:I = -0x1

.field private static final EDGE_RIGHT:I = 0x1


# instance fields
.field private allowParentInterceptOnEdge:Z

.field private final baseMatrix:Landroid/graphics/Matrix;

.field private currentFlingRunnable:Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

.field private final displayRect:Landroid/graphics/RectF;

.field private final drawMatrix:Landroid/graphics/Matrix;

.field private isZoomEnabled:Z

.field private longClickListener:Landroid/view/View$OnLongClickListener;

.field private mBottom:I

.field private mLeft:I

.field private mRight:I

.field private mTop:I

.field private final matrixValues:[F

.field private maxScale:F

.field private midScale:F

.field private minScale:F

.field private multiGestureDetector:Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;

.field private photoTapListener:Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;

.field private scaleType:Landroid/widget/ImageView$ScaleType;

.field private scrollEdge:I

.field private final suppMatrix:Landroid/graphics/Matrix;

.field private viewTapListener:Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 407
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 411
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 415
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 379
    iput p2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    const/high16 p2, 0x3fe00000    # 1.75f

    .line 380
    iput p2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->midScale:F

    const/high16 p2, 0x40400000    # 3.0f

    .line 381
    iput p2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->maxScale:F

    const/4 p2, 0x1

    .line 383
    iput-boolean p2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->allowParentInterceptOnEdge:Z

    .line 388
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    .line 389
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->drawMatrix:Landroid/graphics/Matrix;

    .line 390
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    .line 391
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->displayRect:Landroid/graphics/RectF;

    const/16 p3, 0x9

    new-array p3, p3, [F

    .line 392
    iput-object p3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->matrixValues:[F

    const/4 p3, 0x2

    .line 401
    iput p3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scrollEdge:I

    .line 404
    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 417
    sget-object p3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 419
    new-instance p3, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;

    invoke-direct {p3, p0, p1}, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;-><init>(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->multiGestureDetector:Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;

    .line 421
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setIsZoomEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/ui/ZoomImageView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->viewTapListener:Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->longClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/ui/ZoomImageView;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->allowParentInterceptOnEdge:Z

    return p0
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->multiGestureDetector:Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/ui/ZoomImageView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scrollEdge:I

    return p0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->currentFlingRunnable:Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    return-object p0
.end method

.method static synthetic access$502(Lcom/xiaomi/scanner/ui/ZoomImageView;Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;)Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->currentFlingRunnable:Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xiaomi/scanner/ui/ZoomImageView;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->maxScale:F

    return p0
.end method

.method static synthetic access$700(Lcom/xiaomi/scanner/ui/ZoomImageView;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->midScale:F

    return p0
.end method

.method static synthetic access$800(Lcom/xiaomi/scanner/ui/ZoomImageView;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    return p0
.end method

.method static synthetic access$900(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->photoTapListener:Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;

    return-object p0
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .line 719
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->checkMatrixBounds()V

    .line 720
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private checkMatrixBounds()V
    .locals 10

    .line 724
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 729
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 732
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmpg-float v8, v1, v3

    if-gtz v8, :cond_3

    .line 734
    sget-object v8, Lcom/xiaomi/scanner/ui/ZoomImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v6, :cond_2

    if-eq v8, v5, :cond_1

    sub-float/2addr v3, v1

    div-float/2addr v3, v4

    .line 742
    iget v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_1
    sub-float/2addr v3, v1

    .line 739
    iget v1, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v3, v1

    goto :goto_2

    .line 736
    :cond_2
    iget v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 745
    :cond_3
    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_4

    .line 746
    iget v1, v0, Landroid/graphics/RectF;->top:F

    :goto_1
    neg-float v3, v1

    goto :goto_2

    .line 747
    :cond_4
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    .line 748
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .line 751
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v8, v2, v1

    if-gtz v8, :cond_8

    .line 753
    sget-object v7, Lcom/xiaomi/scanner/ui/ZoomImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v6, :cond_7

    if-eq v7, v5, :cond_6

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    .line 761
    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_6
    sub-float/2addr v1, v2

    .line 758
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_3
    sub-float/2addr v1, v0

    move v7, v1

    goto :goto_4

    .line 755
    :cond_7
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v7, v0

    .line 764
    :goto_4
    iput v5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scrollEdge:I

    goto :goto_5

    .line 765
    :cond_8
    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_9

    const/4 v1, 0x0

    .line 766
    iput v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scrollEdge:I

    .line 767
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v7, v0

    goto :goto_5

    .line 768
    :cond_9
    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_a

    .line 769
    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v7, v1, v0

    .line 770
    iput v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scrollEdge:I

    goto :goto_5

    :cond_a
    const/4 v0, -0x1

    .line 772
    iput v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scrollEdge:I

    .line 776
    :goto_5
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private checkZoomLevels(FFF)V
    .locals 0

    cmpl-float p1, p1, p2

    if-gez p1, :cond_1

    cmpl-float p1, p2, p3

    if-gez p1, :cond_0

    return-void

    .line 883
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MidZoom should be less than MaxZoom"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 881
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MinZoom should be less than MidZoom"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 786
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->displayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 789
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->displayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 790
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->displayRect:Landroid/graphics/RectF;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 872
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 873
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x10

    .line 875
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private resetMatrix()V
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 801
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 802
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->checkMatrixBounds()V

    return-void
.end method

.method private final update()V
    .locals 1

    .line 707
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->isZoomEnabled:Z

    if-eqz v0, :cond_0

    .line 708
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 709
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 711
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->resetMatrix()V

    :goto_0
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 815
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 816
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 817
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 818
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 820
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    .line 825
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    .line 826
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 829
    :cond_1
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    .line 830
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 831
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 832
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 835
    :cond_2
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 836
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 837
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 838
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 842
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 843
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 845
    sget-object v0, Lcom/xiaomi/scanner/ui/ZoomImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 859
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 847
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 855
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 851
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 867
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->resetMatrix()V

    return-void
.end method


# virtual methods
.method protected getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->drawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 698
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->drawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 699
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->drawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 432
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->checkMatrixBounds()V

    .line 433
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .line 475
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->maxScale:F

    return v0
.end method

.method public getMidScale()F
    .locals 1

    .line 458
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->midScale:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .line 441
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    return v0
.end method

.method public final getScale()F
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->matrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 494
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->matrixValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final isZoomEnabled()Z
    .locals 1

    .line 531
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->isZoomEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 683
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 685
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 691
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 693
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final onGlobalLayout()V
    .locals 5

    .line 610
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->isZoomEnabled:Z

    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getTop()I

    move-result v0

    .line 612
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getRight()I

    move-result v1

    .line 613
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getBottom()I

    move-result v2

    .line 614
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getLeft()I

    move-result v3

    .line 623
    iget v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mTop:I

    if-ne v0, v4, :cond_0

    iget v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mBottom:I

    if-ne v2, v4, :cond_0

    iget v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mLeft:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mRight:I

    if-eq v1, v4, :cond_1

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/xiaomi/scanner/ui/ZoomImageView;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 629
    iput v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mTop:I

    .line 630
    iput v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mRight:I

    .line 631
    iput v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mBottom:I

    .line 632
    iput v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mLeft:I

    :cond_1
    return-void
.end method

.method public onTouchFromParent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 640
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->isZoomEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 641
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 661
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getScale()F

    move-result v0

    iget v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 662
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 664
    new-instance v2, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getScale()F

    move-result v5

    iget v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    .line 665
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;-><init>(Lcom/xiaomi/scanner/ui/ZoomImageView;FFFF)V

    .line 664
    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x1

    goto :goto_0

    .line 645
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 646
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 651
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->currentFlingRunnable:Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    if-eqz p1, :cond_3

    .line 652
    invoke-virtual {p1}, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->cancelFling()V

    const/4 p1, 0x0

    .line 653
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->currentFlingRunnable:Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    .line 673
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->multiGestureDetector:Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public resetImageMatrix()V
    .locals 0

    .line 703
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->update()V

    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0

    .line 550
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->allowParentInterceptOnEdge:Z

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 555
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 556
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->update()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 561
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 567
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 568
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->update()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 573
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 574
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->update()V

    return-void
.end method

.method public final setIsZoomEnabled(Z)V
    .locals 0

    .line 541
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->isZoomEnabled:Z

    .line 542
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->update()V

    return-void
.end method

.method public setMaxScale(F)V
    .locals 2

    .line 483
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    iget v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->midScale:F

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->checkZoomLevels(FFF)V

    .line 484
    iput p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->maxScale:F

    return-void
.end method

.method public setMidScale(F)V
    .locals 2

    .line 466
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    iget v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->maxScale:F

    invoke-direct {p0, v0, p1, v1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->checkZoomLevels(FFF)V

    .line 467
    iput p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->midScale:F

    return-void
.end method

.method public setMinScale(F)V
    .locals 2

    .line 449
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->midScale:F

    iget v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->maxScale:F

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->checkZoomLevels(FFF)V

    .line 450
    iput p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->longClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public final setOnPhotoTapListener(Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->photoTapListener:Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;

    return-void
.end method

.method public final setOnViewTapListener(Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->viewTapListener:Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;

    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 514
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 520
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 521
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->update()V

    :cond_0
    return-void

    .line 515
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported in ZoomImageView"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
