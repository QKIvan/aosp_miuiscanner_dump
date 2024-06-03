.class Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ZoomImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/ui/ZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiGestureDetector"
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;

.field private isDragging:Z

.field private lastPointerCount:F

.field private lastTouchX:F

.field private lastTouchY:F

.field private final scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final scaledMinimumFlingVelocity:F

.field private final scaledTouchSlop:F

.field final synthetic this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/content/Context;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 87
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-direct {p1, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 89
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    .line 90
    invoke-virtual {p1, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 92
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->scaledMinimumFlingVelocity:F

    .line 94
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->scaledTouchSlop:F

    return-void
.end method


# virtual methods
.method public isScaling()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getScale()F

    move-result v3

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 260
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {p1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$700(Lcom/xiaomi/scanner/ui/ZoomImageView;)F

    move-result p1

    cmpg-float p1, v3, p1

    if-gez p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    new-instance v0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$700(Lcom/xiaomi/scanner/ui/ZoomImageView;)F

    move-result v4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;-><init>(Lcom/xiaomi/scanner/ui/ZoomImageView;FFFF)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {p1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$700(Lcom/xiaomi/scanner/ui/ZoomImageView;)F

    move-result p1

    cmpl-float p1, v3, p1

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {p1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$600(Lcom/xiaomi/scanner/ui/ZoomImageView;)F

    move-result p1

    cmpg-float p1, v3, p1

    if-gez p1, :cond_1

    .line 263
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    new-instance v0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$600(Lcom/xiaomi/scanner/ui/ZoomImageView;)F

    move-result v4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;-><init>(Lcom/xiaomi/scanner/ui/ZoomImageView;FFFF)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 265
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    new-instance v0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$800(Lcom/xiaomi/scanner/ui/ZoomImageView;)F

    move-result v4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;-><init>(Lcom/xiaomi/scanner/ui/ZoomImageView;FFFF)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 308
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {p1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$1100(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 309
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {p1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$1100(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8

    .line 233
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getScale()F

    move-result v0

    .line 234
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 236
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$600(Lcom/xiaomi/scanner/ui/ZoomImageView;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    cmpl-float v2, v1, v3

    if-gtz v2, :cond_2

    :cond_0
    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_1

    cmpg-float v0, v1, v3

    if-ltz v0, :cond_2

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 238
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {p1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$100(Lcom/xiaomi/scanner/ui/ZoomImageView;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 282
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$900(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 289
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    iget p1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v2, p1

    .line 292
    iget p1, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v3, p1

    .line 294
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {p1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$900(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-interface {p1, v0, v2, v3}, Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;->onPhotoTap(Landroid/view/View;FF)V

    return v1

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$1000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$1000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v2, v3, p1}, Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    :cond_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 102
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 114
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v5, v7

    .line 115
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    div-float/2addr v5, v0

    div-float/2addr v6, v0

    .line 123
    iget v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastPointerCount:F

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_3

    .line 124
    iput-boolean v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->isDragging:Z

    .line 125
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2

    .line 126
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 128
    :cond_2
    iput v5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchX:F

    .line 129
    iput v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchY:F

    .line 131
    :cond_3
    iput v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastPointerCount:F

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto/16 :goto_3

    .line 220
    :cond_4
    iput v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastPointerCount:F

    .line 221
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_e

    .line 222
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 223
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_3

    .line 148
    :cond_5
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchX:F

    sub-float v0, v5, v0

    iget v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchY:F

    sub-float v2, v6, v2

    .line 150
    iget-boolean v7, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->isDragging:Z

    if-nez v7, :cond_7

    mul-float v7, v0, v0

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    float-to-double v7, v7

    .line 153
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iget v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->scaledTouchSlop:F

    float-to-double v9, v9

    cmpl-double v11, v7, v9

    if-ltz v11, :cond_6

    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->isDragging:Z

    .line 156
    :cond_7
    iget-boolean v7, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->isDragging:Z

    if-eqz v7, :cond_e

    .line 157
    iget-object v7, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v7}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 158
    iget-object v7, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v7}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 159
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$100(Lcom/xiaomi/scanner/ui/ZoomImageView;)V

    .line 172
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$200(Lcom/xiaomi/scanner/ui/ZoomImageView;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$300(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->isScaling()Z

    move-result v2

    if-nez v2, :cond_a

    .line 173
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$400(Lcom/xiaomi/scanner/ui/ZoomImageView;)I

    move-result v2

    if-eq v2, v4, :cond_9

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    .line 174
    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$400(Lcom/xiaomi/scanner/ui/ZoomImageView;)I

    move-result v2

    if-nez v2, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-gez v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    .line 175
    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$400(Lcom/xiaomi/scanner/ui/ZoomImageView;)I

    move-result v2

    if-ne v2, v1, :cond_a

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_a

    .line 177
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 178
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 184
    :cond_a
    iput v5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchX:F

    .line 185
    iput v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchY:F

    .line 187
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_e

    .line 188
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 194
    :cond_b
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->isDragging:Z

    if-eqz v0, :cond_e

    .line 195
    iput v5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchX:F

    .line 196
    iput v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchY:F

    .line 199
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_e

    .line 200
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 201
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 203
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    .line 204
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 208
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->scaledMinimumFlingVelocity:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_e

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    .line 209
    invoke-virtual {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 210
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    new-instance v3, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;-><init>(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$502(Lcom/xiaomi/scanner/ui/ZoomImageView;Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;)Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    .line 211
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$500(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getHeight()I

    move-result v4

    neg-float p1, p1

    float-to-int p1, p1

    neg-float v0, v0

    float-to-int v0, v0

    invoke-virtual {v2, v3, v4, p1, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->fling(IIII)V

    .line 213
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {p1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$500(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 135
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_d

    .line 136
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2

    .line 138
    :cond_d
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 140
    :goto_2
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 142
    iput v5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchX:F

    .line 143
    iput v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchY:F

    .line 144
    iput-boolean v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->isDragging:Z

    :cond_e
    :goto_3
    return v1
.end method
