.class public Lmiuix/view/animation/BackEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "BackEaseInOutInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mOvershot:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lmiuix/view/animation/BackEaseInOutInterpolator;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lmiuix/view/animation/BackEaseInOutInterpolator;->mOvershot:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8

    .line 32
    iget v0, p0, Lmiuix/view/animation/BackEaseInOutInterpolator;->mOvershot:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const v0, 0x3fd9cd60

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    mul-float p1, p1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    const-wide v3, 0x3ff8666666666666L    # 1.525

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, p1, v5

    if-gez v6, :cond_1

    float-to-double v0, v0

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-float v0, v0

    mul-float v1, p1, p1

    add-float/2addr v5, v0

    mul-float v5, v5, p1

    sub-float/2addr v5, v0

    mul-float v1, v1, v5

    mul-float v1, v1, v2

    return v1

    :cond_1
    sub-float/2addr p1, v1

    float-to-double v6, v0

    .line 41
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v3

    double-to-float v0, v6

    mul-float v3, p1, p1

    add-float/2addr v5, v0

    mul-float v5, v5, p1

    add-float/2addr v5, v0

    mul-float v3, v3, v5

    add-float/2addr v3, v1

    mul-float v3, v3, v2

    return v3
.end method
