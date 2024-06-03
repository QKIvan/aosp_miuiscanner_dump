.class public final enum Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;
.super Ljava/lang/Enum;
.source "Edge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

.field public static final enum BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

.field public static final enum LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

.field public static final MIN_CROP_LENGTH_PX:I = 0x28

.field public static final enum RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

.field public static final enum TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;


# instance fields
.field private mCoordinate:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 27
    new-instance v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    .line 28
    new-instance v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    .line 29
    new-instance v3, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    .line 30
    new-instance v5, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    const-string v7, "BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 25
    sput-object v7, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->$VALUES:[Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static adjustBottom(FLandroid/graphics/RectF;FF)F
    .locals 3

    .line 479
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    .line 481
    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 490
    :cond_0
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    const/high16 v0, 0x42200000    # 40.0f

    add-float/2addr p2, v0

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpg-float p2, p0, p2

    if-gtz p2, :cond_1

    .line 491
    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    add-float/2addr p2, v0

    goto :goto_0

    :cond_1
    const/high16 p2, -0x800000    # Float.NEGATIVE_INFINITY

    .line 494
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sub-float v2, p0, v2

    mul-float v2, v2, p3

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2

    .line 495
    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    div-float/2addr v0, p3

    add-float v1, p1, v0

    .line 497
    :cond_2
    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :goto_1
    return p0
.end method

.method private static adjustLeft(FLandroid/graphics/RectF;FF)F
    .locals 3

    .line 367
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, p0, v0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    .line 369
    iget p0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 378
    :cond_0
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    const/high16 v0, 0x42200000    # 40.0f

    sub-float/2addr p2, v0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float p2, p0, p2

    if-ltz p2, :cond_1

    .line 379
    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    sub-float/2addr p2, v0

    goto :goto_0

    :cond_1
    const/high16 p2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 382
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sub-float/2addr v2, p0

    div-float/2addr v2, p3

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2

    .line 383
    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    mul-float p3, p3, v0

    sub-float v1, p1, p3

    .line 385
    :cond_2
    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    :goto_1
    return p0
.end method

.method private static adjustRight(FLandroid/graphics/RectF;FF)F
    .locals 3

    .line 405
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    .line 407
    iget p0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 416
    :cond_0
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    const/high16 v0, 0x42200000    # 40.0f

    add-float/2addr p2, v0

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpg-float p2, p0, p2

    if-gtz p2, :cond_1

    .line 417
    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    add-float/2addr p2, v0

    goto :goto_0

    :cond_1
    const/high16 p2, -0x800000    # Float.NEGATIVE_INFINITY

    .line 420
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sub-float v2, p0, v2

    div-float/2addr v2, p3

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2

    .line 421
    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    mul-float p3, p3, v0

    add-float v1, p1, p3

    .line 423
    :cond_2
    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :goto_1
    return p0
.end method

.method private static adjustTop(FLandroid/graphics/RectF;FF)F
    .locals 3

    .line 442
    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v0, p0, v0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    .line 444
    iget p0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 453
    :cond_0
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    const/high16 v0, 0x42200000    # 40.0f

    sub-float/2addr p2, v0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float p2, p0, p2

    if-ltz p2, :cond_1

    .line 454
    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    sub-float/2addr p2, v0

    goto :goto_0

    :cond_1
    const/high16 p2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 457
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sub-float/2addr v2, p0

    mul-float v2, v2, p3

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2

    .line 458
    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    div-float/2addr v0, p3

    sub-float v1, p1, v0

    .line 460
    :cond_2
    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    :goto_1
    return p0
.end method

.method public static getHeight()F
    .locals 2

    .line 322
    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static getWidth()F
    .locals 2

    .line 315
    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private isOutOfBounds(FFFFLandroid/graphics/RectF;)Z
    .locals 1

    .line 247
    iget v0, p5, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_1

    iget p1, p5, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_1

    iget p1, p5, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_1

    iget p1, p5, Landroid/graphics/RectF;->right:F

    cmpl-float p1, p4, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;
    .locals 1

    .line 25
    const-class v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;
    .locals 1

    .line 25
    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->$VALUES:[Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, [Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    return-object v0
.end method


# virtual methods
.method public adjustCoordinate(F)V
    .locals 6

    .line 110
    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 111
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 112
    sget-object v2, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 113
    sget-object v3, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 115
    sget-object v4, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$xiaomi$scanner$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v3, 0x4

    if-eq v4, v3, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {v0, v1, v2, p1}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateBottom(FFFF)F

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {v0, v1, v3, p1}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateRight(FFFF)F

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 120
    :cond_2
    invoke-static {v0, v2, v3, p1}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateTop(FFFF)F

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 117
    :cond_3
    invoke-static {v1, v2, v3, p1}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateLeft(FFFF)F

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    :goto_0
    return-void
.end method

.method public adjustCoordinate(FFLandroid/graphics/RectF;FF)V
    .locals 2

    .line 86
    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$xiaomi$scanner$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {p2, p3, p4, p5}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->adjustBottom(FLandroid/graphics/RectF;FF)F

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p1, p3, p4, p5}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->adjustRight(FLandroid/graphics/RectF;FF)F

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {p2, p3, p4, p5}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->adjustTop(FLandroid/graphics/RectF;FF)F

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 88
    :cond_3
    invoke-static {p1, p3, p4, p5}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->adjustLeft(FLandroid/graphics/RectF;FF)F

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    :goto_0
    return-void
.end method

.method public getCoordinate()F
    .locals 1

    .line 72
    iget v0, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    return v0
.end method

.method public isNewRectangleOutOfBounds(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;Landroid/graphics/RectF;F)Z
    .locals 10

    .line 143
    invoke-virtual {p1, p2}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->snapOffset(Landroid/graphics/RectF;)F

    move-result v0

    .line 145
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$xiaomi$scanner$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto/16 :goto_0

    .line 215
    :cond_0
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    iget v6, p2, Landroid/graphics/RectF;->left:F

    .line 218
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v8, p1, v0

    .line 219
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v5

    .line 220
    invoke-static {v6, v5, v8, p3}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateBottom(FFFF)F

    move-result v7

    move-object v4, p0

    move-object v9, p2

    .line 222
    invoke-direct/range {v4 .. v9}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result p1

    return p1

    .line 224
    :cond_1
    sget-object v3, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 226
    iget v7, p2, Landroid/graphics/RectF;->right:F

    .line 227
    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v5, p1, v0

    .line 228
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    .line 229
    invoke-static {v5, v4, v7, p3}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateBottom(FFFF)F

    move-result v6

    move-object v3, p0

    move-object v8, p2

    .line 231
    invoke-direct/range {v3 .. v8}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result p1

    return p1

    .line 193
    :cond_2
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    iget v5, p2, Landroid/graphics/RectF;->top:F

    .line 196
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v7, p1, v0

    .line 197
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v6

    .line 198
    invoke-static {v6, v5, v7, p3}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateRight(FFFF)F

    move-result v8

    move-object v4, p0

    move-object v9, p2

    .line 200
    invoke-direct/range {v4 .. v9}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result p1

    return p1

    .line 202
    :cond_3
    sget-object v3, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 204
    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    .line 205
    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v4, p1, v0

    .line 206
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v5

    .line 207
    invoke-static {v5, v4, v6, p3}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateRight(FFFF)F

    move-result v7

    move-object v3, p0

    move-object v8, p2

    .line 209
    invoke-direct/range {v3 .. v8}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result p1

    return p1

    .line 171
    :cond_4
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 173
    iget v6, p2, Landroid/graphics/RectF;->left:F

    .line 174
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v8, p1, v0

    .line 175
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v7

    .line 176
    invoke-static {v6, v8, v7, p3}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateTop(FFFF)F

    move-result v5

    move-object v4, p0

    move-object v9, p2

    .line 178
    invoke-direct/range {v4 .. v9}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result p1

    return p1

    .line 180
    :cond_5
    sget-object v3, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 182
    iget v7, p2, Landroid/graphics/RectF;->right:F

    .line 183
    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v5, p1, v0

    .line 184
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v6

    .line 185
    invoke-static {v5, v7, v6, p3}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateTop(FFFF)F

    move-result v4

    move-object v3, p0

    move-object v8, p2

    .line 187
    invoke-direct/range {v3 .. v8}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result p1

    return p1

    .line 149
    :cond_6
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 151
    iget v5, p2, Landroid/graphics/RectF;->top:F

    .line 152
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v7, p1, v0

    .line 153
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 154
    invoke-static {v5, v8, v7, p3}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateLeft(FFFF)F

    move-result v6

    move-object v4, p0

    move-object v9, p2

    .line 156
    invoke-direct/range {v4 .. v9}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result p1

    return p1

    .line 158
    :cond_7
    sget-object v3, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v3}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 160
    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    .line 161
    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v4, p1, v0

    .line 162
    sget-object p1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v7

    .line 163
    invoke-static {v4, v7, v6, p3}, Lcom/xiaomi/scanner/cropper/util/AspectRatioUtil;->calculateLeft(FFFF)F

    move-result v5

    move-object v3, p0

    move-object v8, p2

    .line 165
    invoke-direct/range {v3 .. v8}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result p1

    return p1

    :cond_8
    :goto_0
    return v2
.end method

.method public isOutsideMargin(Landroid/graphics/RectF;F)Z
    .locals 4

    .line 334
    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$xiaomi$scanner$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 345
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr p1, v0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 342
    :cond_0
    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr p1, v0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    goto :goto_0

    .line 339
    :cond_1
    iget v0, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    cmpg-float p1, v0, p2

    if-gez p1, :cond_3

    goto :goto_0

    .line 336
    :cond_2
    iget v0, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    cmpg-float p1, v0, p2

    if-gez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public offset(F)V
    .locals 1

    .line 62
    iget v0, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    return-void
.end method

.method public setCoordinate(F)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    return-void
.end method

.method public snapOffset(Landroid/graphics/RectF;)F
    .locals 3

    .line 290
    iget v0, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 293
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$xiaomi$scanner$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 304
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 301
    :cond_0
    iget p1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 298
    :cond_1
    iget p1, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 295
    :cond_2
    iget p1, p1, Landroid/graphics/RectF;->left:F

    :goto_0
    sub-float/2addr p1, v0

    return p1
.end method

.method public snapToRect(Landroid/graphics/RectF;)F
    .locals 3

    .line 260
    iget v0, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 262
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$xiaomi$scanner$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iput p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 270
    :cond_1
    iget p1, p1, Landroid/graphics/RectF;->right:F

    iput p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 267
    :cond_2
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iput p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 264
    :cond_3
    iget p1, p1, Landroid/graphics/RectF;->left:F

    iput p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 277
    :goto_0
    iget p1, p0, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr p1, v0

    return p1
.end method
