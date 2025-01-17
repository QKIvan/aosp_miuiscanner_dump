.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# static fields
.field private static final CORR:I = 0x1

.field private static final INIT_SIZE:I = 0xa


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0xa

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 59
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 60
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    .line 61
    div-int/lit8 p2, p2, 0x2

    sub-int v1, p3, p2

    .line 62
    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    add-int/2addr p3, p2

    .line 63
    iput p3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    sub-int v2, p4, p2

    .line 64
    iput v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    add-int/2addr p4, p2

    .line 65
    iput p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    if-ge p4, v0, :cond_0

    if-ge p3, p1, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 11

    .line 290
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    .line 291
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    .line 292
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    .line 293
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p2

    .line 294
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    .line 295
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p3

    .line 296
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    .line 297
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p4

    .line 299
    iget v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    new-array v4, v9, [Lcom/google/zxing/ResultPoint;

    .line 301
    new-instance v9, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v3, v10

    add-float/2addr p4, v10

    invoke-direct {v9, v3, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v4, v8

    .line 302
    new-instance p4, Lcom/google/zxing/ResultPoint;

    add-float/2addr v1, v10

    add-float/2addr p2, v10

    invoke-direct {p4, v1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p4, v4, v7

    .line 303
    new-instance p2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v2, v10

    sub-float/2addr p3, v10

    invoke-direct {p2, v2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v6

    .line 304
    new-instance p2, Lcom/google/zxing/ResultPoint;

    add-float/2addr v0, v10

    sub-float/2addr p1, v10

    invoke-direct {p2, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v5

    return-object v4

    :cond_0
    new-array v4, v9, [Lcom/google/zxing/ResultPoint;

    .line 307
    new-instance v9, Lcom/google/zxing/ResultPoint;

    add-float/2addr v3, v10

    add-float/2addr p4, v10

    invoke-direct {v9, v3, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v4, v8

    .line 308
    new-instance p4, Lcom/google/zxing/ResultPoint;

    add-float/2addr v1, v10

    sub-float/2addr p2, v10

    invoke-direct {p4, v1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p4, v4, v7

    .line 309
    new-instance p2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v2, v10

    add-float/2addr p3, v10

    invoke-direct {p2, v2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v6

    .line 310
    new-instance p2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v0, v10

    sub-float/2addr p1, v10

    invoke-direct {p2, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v5

    return-object v4
.end method

.method private containsBlackPoint(IIIZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p4, :cond_2

    :goto_0
    if-le p1, p2, :cond_0

    goto :goto_2

    .line 327
    :cond_0
    iget-object p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4, p1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-le p1, p2, :cond_3

    :goto_2
    const/4 p1, 0x0

    return p1

    .line 333
    :cond_3
    iget-object p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4, p3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_4

    return v0

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .locals 5

    .line 253
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    sub-float/2addr p3, p1

    int-to-float v1, v0

    div-float/2addr p3, v1

    sub-float/2addr p4, p2

    div-float/2addr p4, v1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    int-to-float v2, v1

    mul-float v3, v2, p3

    add-float/2addr v3, p1

    .line 258
    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v3

    mul-float v2, v2, p4

    add-float/2addr v2, p2

    .line 259
    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 260
    iget-object v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    new-instance p1, Lcom/google/zxing/ResultPoint;

    int-to-float p2, v3

    int-to-float p3, v2

    invoke-direct {p1, p2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 87
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 88
    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 89
    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 90
    iget v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_0
    :goto_0
    if-nez v6, :cond_1

    goto :goto_6

    :cond_1
    const/4 v6, 0x1

    const/4 v12, 0x0

    :cond_2
    :goto_1
    if-nez v6, :cond_3

    if-nez v7, :cond_4

    .line 108
    :cond_3
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v1, v6, :cond_25

    .line 119
    :cond_4
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v1, v6, :cond_5

    :goto_2
    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v6, 0x1

    :cond_6
    :goto_3
    if-nez v6, :cond_7

    if-nez v8, :cond_8

    .line 128
    :cond_7
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-lt v3, v6, :cond_23

    .line 139
    :cond_8
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-lt v3, v6, :cond_9

    goto :goto_2

    :cond_9
    const/4 v6, 0x1

    :cond_a
    :goto_4
    if-nez v6, :cond_b

    if-nez v9, :cond_c

    :cond_b
    if-gez v0, :cond_21

    :cond_c
    if-gez v0, :cond_d

    goto :goto_2

    :cond_d
    move v6, v12

    const/4 v12, 0x1

    :cond_e
    :goto_5
    if-nez v12, :cond_f

    if-nez v11, :cond_10

    :cond_f
    if-gez v2, :cond_1f

    :cond_10
    if-gez v2, :cond_1e

    goto :goto_2

    :goto_6
    if-nez v4, :cond_1d

    if-eqz v10, :cond_1d

    sub-int v4, v1, v0

    const/4 v6, 0x0

    move-object v8, v6

    const/4 v7, 0x1

    :goto_7
    if-lt v7, v4, :cond_11

    goto :goto_8

    :cond_11
    int-to-float v8, v0

    sub-int v9, v3, v7

    int-to-float v9, v9

    add-int v10, v0, v7

    int-to-float v10, v10

    int-to-float v11, v3

    .line 196
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v8

    if-eqz v8, :cond_1c

    :goto_8
    if-eqz v8, :cond_1b

    move-object v9, v6

    const/4 v7, 0x1

    :goto_9
    if-lt v7, v4, :cond_12

    goto :goto_a

    :cond_12
    int-to-float v9, v0

    add-int v10, v2, v7

    int-to-float v10, v10

    add-int v11, v0, v7

    int-to-float v11, v11

    int-to-float v12, v2

    .line 209
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v9

    if-eqz v9, :cond_1a

    :goto_a
    if-eqz v9, :cond_19

    move-object v7, v6

    const/4 v0, 0x1

    :goto_b
    if-lt v0, v4, :cond_13

    goto :goto_c

    :cond_13
    int-to-float v7, v1

    add-int v10, v2, v0

    int-to-float v10, v10

    sub-int v11, v1, v0

    int-to-float v11, v11

    int-to-float v12, v2

    .line 222
    invoke-direct {p0, v7, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v7

    if-eqz v7, :cond_18

    :goto_c
    if-eqz v7, :cond_17

    :goto_d
    if-lt v5, v4, :cond_14

    goto :goto_e

    :cond_14
    int-to-float v0, v1

    sub-int v2, v3, v5

    int-to-float v2, v2

    sub-int v6, v1, v5

    int-to-float v6, v6

    int-to-float v10, v3

    .line 235
    invoke-direct {p0, v0, v2, v6, v10}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v6

    if-eqz v6, :cond_16

    :goto_e
    if-eqz v6, :cond_15

    .line 245
    invoke-direct {p0, v6, v8, v7, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0

    .line 242
    :cond_15
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 229
    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 216
    :cond_19
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 203
    :cond_1b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 248
    :cond_1d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1e
    if-eqz v6, :cond_0

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 169
    :cond_1f
    invoke-direct {p0, v0, v1, v2, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v12

    if-eqz v12, :cond_20

    add-int/lit8 v2, v2, -0x1

    const/4 v6, 0x1

    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_20
    if-nez v11, :cond_e

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_5

    .line 149
    :cond_21
    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_22

    add-int/lit8 v0, v0, -0x1

    const/4 v9, 0x1

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_22
    if-nez v9, :cond_a

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_4

    .line 129
    :cond_23
    invoke-direct {p0, v0, v1, v3, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_24

    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x1

    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_24
    if-nez v8, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 109
    :cond_25
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_26

    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x1

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_26
    if-nez v7, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method
