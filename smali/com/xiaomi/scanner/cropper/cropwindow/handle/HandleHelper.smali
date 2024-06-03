.class abstract Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;
.super Ljava/lang/Object;
.source "HandleHelper.java"


# static fields
.field private static final UNFIXED_ASPECT_RATIO_CONSTANT:F = 1.0f


# instance fields
.field private mActiveEdges:Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;

.field private mHorizontalEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

.field private mVerticalEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    .line 50
    iput-object p2, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    .line 51
    new-instance v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;-><init>(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;

    return-void
.end method

.method private getAspectRatio(FF)F
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    if-ne v0, v1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    sget-object v2, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    if-ne v1, v2, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 152
    :goto_1
    iget-object v2, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    sget-object v3, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    .line 153
    :goto_2
    iget-object v2, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    sget-object v3, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    if-ne v2, v3, :cond_3

    goto :goto_3

    :cond_3
    sget-object p2, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p2}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    .line 155
    :goto_3
    invoke-static {v0, v1, p1, p2}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateAspectRatio(FFFF)F

    move-result p1

    return p1
.end method


# virtual methods
.method getActiveEdges()Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;

    return-object v0
.end method

.method getActiveEdges(FFF)Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->getAspectRatio(FF)F

    move-result p1

    cmpl-float p1, p1, p3

    if-lez p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;

    iget-object p2, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    iput-object p2, p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;->primary:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    .line 128
    iget-object p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;

    iget-object p2, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    iput-object p2, p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;

    iget-object p2, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    iput-object p2, p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;->primary:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    .line 131
    iget-object p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;

    iget-object p2, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    iput-object p2, p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    .line 133
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;

    return-object p1
.end method

.method abstract updateCropWindow(FFFLandroid/graphics/RectF;F)V
.end method

.method updateCropWindow(FFLandroid/graphics/RectF;F)V
    .locals 8

    .line 70
    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->getActiveEdges()Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;

    move-result-object v0

    .line 71
    iget-object v1, v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;->primary:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    .line 72
    iget-object v0, v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    if-eqz v1, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 75
    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/RectF;FF)V

    :cond_0
    if-eqz v0, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    .line 78
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/RectF;FF)V

    :cond_1
    return-void
.end method
