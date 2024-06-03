.class Lcom/xiaomi/scanner/cropper/cropwindow/handle/CornerHandleHelper;
.super Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;
.source "CornerHandleHelper.java"


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;-><init>(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;)V

    return-void
.end method


# virtual methods
.method updateCropWindow(FFFLandroid/graphics/RectF;F)V
    .locals 8

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/CornerHandleHelper;->getActiveEdges(FFF)Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;

    move-result-object v0

    .line 46
    iget-object v7, v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;->primary:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    .line 47
    iget-object v0, v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move-object v4, p4

    move v5, p5

    move v6, p3

    .line 49
    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/RectF;FF)V

    .line 50
    invoke-virtual {v0, p3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    .line 52
    invoke-virtual {v0, p4, p5}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/RectF;F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {v0, p4}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/RectF;)F

    .line 54
    invoke-virtual {v7, p3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    :cond_0
    return-void
.end method
