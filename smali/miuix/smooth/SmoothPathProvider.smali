.class public Lmiuix/smooth/SmoothPathProvider;
.super Ljava/lang/Object;
.source "SmoothPathProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/smooth/SmoothPathProvider$SmoothData;,
        Lmiuix/smooth/SmoothPathProvider$CornerData;
    }
.end annotation


# static fields
.field private static final DEFAULT_KSI:F = 0.46f

.field private static final DEFAULT_SMOOTH:F = 0.8f


# instance fields
.field private mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

.field private mKsi:F

.field private mSmooth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f4ccccd    # 0.8f

    .line 17
    iput v0, p0, Lmiuix/smooth/SmoothPathProvider;->mSmooth:F

    const v0, 0x3eeb851f    # 0.46f

    .line 18
    iput v0, p0, Lmiuix/smooth/SmoothPathProvider;->mKsi:F

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    return-void
.end method

.method static synthetic access$000(FFDF)D
    .locals 0

    .line 9
    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothPathProvider;->smoothForWidth(FFDF)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100(FFDF)D
    .locals 0

    .line 9
    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothPathProvider;->smoothForHeight(FFDF)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1000(DD)D
    .locals 0

    .line 9
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider;->yForWidth(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1100(DD)D
    .locals 0

    .line 9
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider;->kForHeight(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1200(FD)D
    .locals 0

    .line 9
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->mForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1300(FD)D
    .locals 0

    .line 9
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->nForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1400(FD)D
    .locals 0

    .line 9
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->pForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1500(FD)D
    .locals 0

    .line 9
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->xForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1600(DD)D
    .locals 0

    .line 9
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider;->yForHeight(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$200(D)D
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothPathProvider;->thetaForWidth(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(D)D
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothPathProvider;->thetaForHeight(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(D)D
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500(DD)D
    .locals 0

    .line 9
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider;->kForWidth(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(FD)D
    .locals 0

    .line 9
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->mForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$700(FD)D
    .locals 0

    .line 9
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->nForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$800(FD)D
    .locals 0

    .line 9
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->pForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$900(FD)D
    .locals 0

    .line 9
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->xForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method private ensureFourCornerData()V
    .locals 2

    .line 102
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    new-instance v1, Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lmiuix/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    .line 105
    :cond_0
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    new-instance v1, Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lmiuix/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    .line 108
    :cond_1
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    new-instance v1, Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lmiuix/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    .line 111
    :cond_2
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-nez v0, :cond_3

    .line 112
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    new-instance v1, Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lmiuix/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    :cond_3
    return-void
.end method

.method private isFourCornerDataValid()Z
    .locals 1

    .line 392
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isHeightCollapsed(FFFDF)Z
    .locals 4

    float-to-double v0, p0

    add-float/2addr p1, p2

    float-to-double p0, p1

    float-to-double v2, p5

    .line 404
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, v2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, p3

    cmpg-double p2, v0, p0

    if-gtz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWidthCollapsed(FFFDF)Z
    .locals 4

    float-to-double v0, p0

    add-float/2addr p1, p2

    float-to-double p0, p1

    float-to-double v2, p5

    .line 400
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, v2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, p3

    cmpg-double p2, v0, p0

    if-gtz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static kForHeight(DD)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide v0, 0x3fdd70a3e0000000L    # 0.46000000834465027

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p2, v0

    .line 483
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    add-double/2addr p0, v4

    mul-double p0, p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v0

    mul-double p0, p0, p2

    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double v2, v2, p2

    div-double/2addr p0, v2

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method private static kForWidth(DD)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide v0, 0x3fdd70a3e0000000L    # 0.46000000834465027

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p2, v0

    .line 475
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    add-double/2addr p0, v4

    mul-double p0, p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v0

    mul-double p0, p0, p2

    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double v2, v2, p2

    div-double/2addr p0, v2

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method private static mForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    .line 432
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method private static mForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    .line 440
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method private static nForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    .line 436
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method private static nForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    .line 444
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method private static pForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v2

    .line 452
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method private static pForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v2

    .line 448
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method private static radToAngle(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p0, p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static smoothForHeight(FFDF)D
    .locals 6

    move v0, p0

    move v1, p1

    move v2, p1

    move-wide v3, p2

    move v5, p4

    .line 416
    invoke-static/range {v0 .. v5}, Lmiuix/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    div-float/2addr p0, p4

    .line 417
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method private static smoothForWidth(FFDF)D
    .locals 6

    move v0, p0

    move v1, p1

    move v2, p1

    move-wide v3, p2

    move v5, p4

    .line 408
    invoke-static/range {v0 .. v5}, Lmiuix/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    div-float/2addr p0, p4

    .line 409
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method private static thetaForHeight(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static thetaForWidth(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static xForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 460
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v2

    div-double/2addr v0, p0

    return-wide v0
.end method

.method private static xForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 456
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v2

    div-double/2addr v0, p0

    return-wide v0
.end method

.method private static yForHeight(DD)D
    .locals 0

    mul-double p0, p0, p2

    return-wide p0
.end method

.method private static yForWidth(DD)D
    .locals 0

    mul-double p0, p0, p2

    return-wide p0
.end method


# virtual methods
.method public buildSmoothData(Landroid/graphics/RectF;F)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, p2, v0, v0}, Lmiuix/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method public buildSmoothData(Landroid/graphics/RectF;FFF)V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p2, v0, v1

    const/4 v1, 0x5

    aput p2, v0, v1

    const/4 v1, 0x6

    aput p2, v0, v1

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 45
    invoke-virtual {p0, p1, v0, p3, p4}, Lmiuix/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;[FFF)V

    return-void
.end method

.method public buildSmoothData(Landroid/graphics/RectF;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, p2, v0, v0}, Lmiuix/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;[FFF)V

    return-void
.end method

.method public buildSmoothData(Landroid/graphics/RectF;[FFF)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 55
    invoke-virtual/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider;->getKsi()F

    move-result v10

    .line 56
    invoke-virtual/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider;->getSmooth()F

    move-result v2

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v8

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v9

    .line 59
    new-instance v11, Lmiuix/smooth/SmoothPathProvider$SmoothData;

    float-to-double v12, v2

    move-object v2, v11

    move v3, v8

    move v4, v9

    move-wide v5, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lmiuix/smooth/SmoothPathProvider$SmoothData;-><init>(FFDF)V

    iput-object v11, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x8

    new-array v3, v2, [F

    .line 63
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 64
    :goto_0
    array-length v6, v1

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 65
    aget v6, v1, v5

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_1

    .line 66
    aget v6, v1, v5

    aput v6, v3, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    aget v1, v3, v4

    const/4 v2, 0x1

    aget v2, v3, v2

    const/4 v4, 0x2

    aget v4, v3, v4

    const/4 v5, 0x3

    aget v5, v3, v5

    const/4 v6, 0x4

    aget v6, v3, v6

    const/4 v7, 0x5

    aget v7, v3, v7

    const/4 v11, 0x6

    aget v11, v3, v11

    const/4 v14, 0x7

    aget v3, v3, v14

    add-float v14, v1, v4

    cmpl-float v14, v14, v8

    if-lez v14, :cond_3

    mul-float v14, v8, v1

    add-float v15, v1, v4

    div-float/2addr v14, v15

    mul-float v15, v8, v4

    add-float/2addr v1, v4

    div-float v4, v15, v1

    move v1, v14

    :cond_3
    move v14, v4

    add-float v4, v5, v7

    cmpl-float v4, v4, v9

    if-lez v4, :cond_4

    mul-float v4, v9, v5

    add-float v15, v5, v7

    div-float/2addr v4, v15

    mul-float v15, v9, v7

    add-float/2addr v5, v7

    div-float v7, v15, v5

    move v15, v4

    goto :goto_1

    :cond_4
    move v15, v5

    :goto_1
    add-float v4, v6, v11

    cmpl-float v4, v4, v8

    if-lez v4, :cond_5

    mul-float v4, v8, v6

    add-float v5, v6, v11

    div-float/2addr v4, v5

    mul-float v8, v8, v11

    add-float/2addr v6, v11

    div-float v11, v8, v6

    move v8, v11

    move v11, v4

    goto :goto_2

    :cond_5
    move v8, v11

    move v11, v6

    :goto_2
    add-float v4, v3, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_6

    mul-float v4, v9, v3

    add-float v5, v3, v2

    div-float/2addr v4, v5

    mul-float v9, v9, v2

    add-float/2addr v3, v2

    div-float v2, v9, v3

    move v9, v4

    goto :goto_3

    :cond_6
    move v9, v3

    .line 94
    :goto_3
    invoke-direct/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider;->ensureFourCornerData()V

    .line 95
    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/16 v16, 0x0

    move-object v1, v3

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v17, v7

    move-wide v6, v12

    move/from16 v18, v8

    move v8, v10

    move/from16 v19, v9

    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    .line 96
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    .line 97
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    move/from16 v7, v17

    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v9, 0x2

    move-wide v6, v12

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    .line 98
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    move/from16 v11, v18

    move/from16 v3, v19

    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v9, 0x3

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public drawPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    .line 117
    invoke-direct/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider;->isFourCornerDataValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    .line 123
    :cond_0
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    .line 125
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    add-double/2addr v5, v3

    .line 127
    invoke-static {v5, v6}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 126
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 129
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    const/4 v12, 0x0

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 130
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 132
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    const-wide/16 v13, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x3

    cmpl-double v3, v1, v13

    if-eqz v3, :cond_1

    .line 133
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 134
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 135
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v4, v4, v15

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v5, v5, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v5, v5, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v5, v5, v15

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v15, v15, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v15, v15, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v15

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 138
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 140
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 141
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 144
    :cond_1
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-wide/from16 v21, v4

    move/from16 v23, v6

    invoke-static/range {v18 .. v23}, Lmiuix/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 149
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 150
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 153
    :cond_2
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v3, v1, v13

    if-eqz v3, :cond_3

    .line 154
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 155
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 156
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v6, v6, v5

    iget v5, v6, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v15, v15, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v15, v15, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v15

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 159
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 161
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 162
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 165
    :cond_3
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x4012d97c7f3321d2L    # 4.71238898038469

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v5, v3

    .line 167
    invoke-static {v5, v6}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 166
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 169
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 170
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 172
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v3, v1, v13

    if-eqz v3, :cond_4

    .line 173
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 174
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 175
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v6, v6, v5

    iget v5, v6, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v15, v15, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v15, v15, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v15

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 178
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 180
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 181
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 184
    :cond_4
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-wide/from16 v21, v4

    move/from16 v23, v6

    invoke-static/range {v18 .. v23}, Lmiuix/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_5

    .line 185
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 189
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 190
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 193
    :cond_5
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v3, v1, v13

    if-eqz v3, :cond_6

    .line 194
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 195
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 196
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v6, v6, v5

    iget v5, v6, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v15, v15, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v15, v15, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v15

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 199
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 201
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 202
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 205
    :cond_6
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    .line 207
    invoke-static {v3, v4}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 206
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 209
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 210
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 212
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v3, v1, v13

    if-eqz v3, :cond_7

    .line 213
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 214
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 215
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v6, v6, v5

    iget v5, v6, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v15, v15, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v15, v15, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v15

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 218
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 220
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 221
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 224
    :cond_7
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-wide/from16 v21, v4

    move/from16 v23, v6

    invoke-static/range {v18 .. v23}, Lmiuix/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_8

    .line 225
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 229
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 230
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 233
    :cond_8
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v3, v1, v13

    if-eqz v3, :cond_9

    .line 234
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 235
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 236
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v6, v6, v5

    iget v5, v6, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v15, v15, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v15, v15, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v15

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 239
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 241
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 242
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 245
    :cond_9
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v5, v3

    .line 247
    invoke-static {v5, v6}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 246
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 249
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 250
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 252
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v3, v1, v13

    if-eqz v3, :cond_a

    .line 253
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 254
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 255
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v6, v6, v5

    iget v5, v6, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v9, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v9, v9, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v9, v9, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v9, v9, v17

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v9

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 258
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 260
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 261
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 264
    :cond_a
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-wide/from16 v21, v4

    move/from16 v23, v6

    invoke-static/range {v18 .. v23}, Lmiuix/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_b

    .line 265
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 269
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 270
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 273
    :cond_b
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v3, v1, v13

    if-eqz v3, :cond_c

    .line 274
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 275
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 276
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v5, v6, v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v9, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v9, v9, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v9, v9, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v9, v9, v17

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v9

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 279
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 281
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 282
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_c
    return-void
.end method

.method getKsi()F
    .locals 1

    .line 37
    iget v0, p0, Lmiuix/smooth/SmoothPathProvider;->mKsi:F

    return v0
.end method

.method getSmooth()F
    .locals 1

    .line 29
    iget v0, p0, Lmiuix/smooth/SmoothPathProvider;->mSmooth:F

    return v0
.end method

.method public getSmoothPath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 14

    if-nez p1, :cond_0

    .line 288
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 291
    invoke-direct {p0}, Lmiuix/smooth/SmoothPathProvider;->isFourCornerDataValid()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v2, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object p1

    .line 296
    :cond_1
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v8, 0x0

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    iget-object v3, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    add-double/2addr v3, v1

    .line 298
    invoke-static {v3, v4}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    .line 297
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 304
    :goto_0
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    const-wide/16 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    cmpl-double v2, v0, v9

    if-eqz v2, :cond_3

    .line 305
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 310
    :cond_3
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v6, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v1 .. v6}, Lmiuix/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_4

    .line 311
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 314
    :cond_4
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v2, v0, v9

    if-eqz v2, :cond_5

    .line 315
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 320
    :cond_5
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_6

    .line 321
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v1, 0x4012d97c7f3321d2L    # 4.71238898038469

    iget-object v3, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v3, v1

    .line 322
    invoke-static {v3, v4}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    .line 321
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 326
    :cond_6
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v2, v0, v9

    if-eqz v2, :cond_7

    .line 327
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 332
    :cond_7
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v6, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v1 .. v6}, Lmiuix/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_8

    .line 333
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 336
    :cond_8
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v2, v0, v9

    if-eqz v2, :cond_9

    .line 337
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 342
    :cond_9
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_a

    .line 343
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    .line 344
    invoke-static {v1, v2}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    .line 343
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 348
    :cond_a
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v2, v0, v9

    if-eqz v2, :cond_b

    .line 349
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 354
    :cond_b
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v6, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v1 .. v6}, Lmiuix/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_c

    .line 355
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 358
    :cond_c
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v2, v0, v9

    if-eqz v2, :cond_d

    .line 359
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 364
    :cond_d
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_e

    .line 365
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    iget-object v3, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v3, v1

    .line 366
    invoke-static {v3, v4}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    .line 365
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 370
    :cond_e
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v2, v0, v9

    if-eqz v2, :cond_f

    .line 371
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 376
    :cond_f
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v6, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v1 .. v6}, Lmiuix/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_10

    .line 377
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 380
    :cond_10
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v2, v0, v9

    if-eqz v2, :cond_11

    .line 381
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 386
    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-object p1
.end method

.method setKsi(F)V
    .locals 0

    .line 33
    iput p1, p0, Lmiuix/smooth/SmoothPathProvider;->mKsi:F

    return-void
.end method

.method setSmooth(F)V
    .locals 0

    .line 25
    iput p1, p0, Lmiuix/smooth/SmoothPathProvider;->mSmooth:F

    return-void
.end method
