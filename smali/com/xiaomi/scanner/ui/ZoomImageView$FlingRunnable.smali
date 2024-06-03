.class Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;
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
    name = "FlingRunnable"
.end annotation


# instance fields
.field private currentX:I

.field private currentY:I

.field private final scroller:Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

.field final synthetic this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/content/Context;)V
    .locals 1

    .line 935
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    new-instance v0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;-><init>(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->scroller:Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->scroller:Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->forceFinished(Z)V

    return-void
.end method

.method public fling(IIII)V
    .locals 14

    move-object v0, p0

    .line 944
    iget-object v1, v0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 949
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v2, p1

    int-to-float v2, v2

    .line 952
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v5, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 954
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v9, v2

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    move v8, v4

    move v9, v8

    .line 959
    :goto_0
    iget v2, v1, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move/from16 v3, p2

    int-to-float v3, v3

    .line 960
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_2

    .line 962
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v11, v1

    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    move v10, v2

    move v11, v10

    .line 967
    :goto_1
    iput v4, v0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->currentX:I

    .line 968
    iput v2, v0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->currentY:I

    if-ne v4, v9, :cond_3

    if-eq v2, v11, :cond_4

    .line 972
    :cond_3
    iget-object v3, v0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->scroller:Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v5, v2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v13}, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->fling(IIIIIIIIII)V

    :cond_4
    return-void
.end method

.method public run()V
    .locals 5

    .line 978
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->scroller:Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->scroller:Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->getCurrX()I

    move-result v0

    .line 980
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->scroller:Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->getCurrY()I

    move-result v1

    .line 982
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->currentX:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->currentY:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 983
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 985
    iput v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->currentX:I

    .line 986
    iput v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->currentY:I

    .line 989
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v0, v0, p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$1200(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
