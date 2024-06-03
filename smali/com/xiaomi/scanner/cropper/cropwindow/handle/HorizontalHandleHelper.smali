.class Lcom/xiaomi/scanner/cropper/cropwindow/handle/HorizontalHandleHelper;
.super Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;
.source "HorizontalHandleHelper.java"


# instance fields
.field private mEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;-><init>(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;)V

    .line 37
    iput-object p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    return-void
.end method


# virtual methods
.method updateCropWindow(FFFLandroid/graphics/RectF;F)V
    .locals 6

    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    move v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/RectF;FF)V

    .line 52
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    .line 53
    sget-object p2, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p2}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    .line 56
    invoke-static {}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v0

    invoke-static {v0, p3}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateWidth(FF)F

    move-result v0

    .line 60
    invoke-static {}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    add-float/2addr p2, v0

    .line 65
    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 66
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p2}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 69
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p4, p5}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/RectF;F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    sget-object p2, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    .line 70
    invoke-virtual {p1, p2, p4, p3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->isNewRectangleOutOfBounds(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;Landroid/graphics/RectF;F)Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p4}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/RectF;)F

    move-result p1

    .line 73
    sget-object p2, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    neg-float p1, p1

    invoke-virtual {p2, p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 74
    iget-object p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    .line 77
    :cond_0
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p4, p5}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/RectF;F)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    sget-object p2, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    .line 78
    invoke-virtual {p1, p2, p4, p3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->isNewRectangleOutOfBounds(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;Landroid/graphics/RectF;F)Z

    move-result p1

    if-nez p1, :cond_1

    .line 80
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p4}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/RectF;)F

    move-result p1

    .line 81
    sget-object p2, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    neg-float p1, p1

    invoke-virtual {p2, p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 82
    iget-object p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    :cond_1
    return-void
.end method
