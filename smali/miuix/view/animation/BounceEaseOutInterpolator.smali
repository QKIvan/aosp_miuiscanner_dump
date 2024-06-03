.class public Lmiuix/view/animation/BounceEaseOutInterpolator;
.super Ljava/lang/Object;
.source "BounceEaseOutInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    float-to-double v0, p1

    const/high16 v2, 0x40f20000    # 7.5625f

    const-wide v3, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    return v2

    :cond_0
    const-wide v3, 0x3fe745d1745d1746L    # 0.7272727272727273

    cmpg-double p1, v0, v3

    if-gez p1, :cond_1

    const-wide v3, 0x3fe1745d1745d174L    # 0.5454545454545454

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v3

    double-to-float p1, v0

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    const/high16 p1, 0x3f400000    # 0.75f

    add-float/2addr v2, p1

    return v2

    :cond_1
    const-wide v3, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double p1, v0, v3

    if-gez p1, :cond_2

    const-wide v3, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v3

    double-to-float p1, v0

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    const/high16 p1, 0x3f700000    # 0.9375f

    add-float/2addr v2, p1

    return v2

    :cond_2
    const-wide v3, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v3

    double-to-float p1, v0

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    const/high16 p1, 0x3f7c0000    # 0.984375f

    add-float/2addr v2, p1

    return v2
.end method
