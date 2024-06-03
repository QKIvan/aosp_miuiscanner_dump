.class Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "ZoomImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/ui/ZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# static fields
.field static final ANIMATION_SCALE_PER_ITERATION_IN:F = 1.07f

.field static final ANIMATION_SCALE_PER_ITERATION_OUT:F = 0.93f


# instance fields
.field private final deltaScale:F

.field private final focalX:F

.field private final focalY:F

.field private final targetZoom:F

.field final synthetic this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/ui/ZoomImageView;FFFF)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    iput p3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->targetZoom:F

    .line 899
    iput p4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->focalX:F

    .line 900
    iput p5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->focalY:F

    cmpg-float p1, p2, p3

    if-gez p1, :cond_0

    const p1, 0x3f88f5c3    # 1.07f

    .line 903
    iput p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->deltaScale:F

    goto :goto_0

    :cond_0
    const p1, 0x3f6e147b    # 0.93f

    .line 905
    iput p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->deltaScale:F

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 910
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->deltaScale:F

    iget v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->focalX:F

    iget v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->focalY:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 911
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$100(Lcom/xiaomi/scanner/ui/ZoomImageView;)V

    .line 913
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getScale()F

    move-result v0

    .line 915
    iget v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->deltaScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    iget v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->targetZoom:F

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_1

    :cond_0
    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->targetZoom:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    .line 919
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v0, v0, p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$1200(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 924
    :cond_2
    iget v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->targetZoom:F

    div-float/2addr v1, v0

    .line 925
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->focalX:F

    iget v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->focalY:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 926
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$100(Lcom/xiaomi/scanner/ui/ZoomImageView;)V

    :goto_0
    return-void
.end method
