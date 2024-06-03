.class public Lmiuix/view/animation/ExponentialEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "ExponentialEaseInOutInterpolator.java"

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

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-float v4, p1, v0

    if-gez v4, :cond_2

    const/high16 v4, 0x41200000    # 10.0f

    sub-float/2addr p1, v0

    mul-float p1, p1, v4

    float-to-double v4, p1

    .line 24
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p1, v2

    :goto_0
    mul-float p1, p1, v1

    return p1

    :cond_2
    sub-float/2addr p1, v0

    const/high16 v0, -0x3ee00000    # -10.0f

    mul-float p1, p1, v0

    float-to-double v4, p1

    .line 28
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, v2

    double-to-float p1, v4

    goto :goto_0
.end method
