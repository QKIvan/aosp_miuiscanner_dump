.class public Lmiuix/view/animation/CubicEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "CubicEaseInOutInterpolator.java"

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
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    mul-float v1, v1, p1

    mul-float v1, v1, p1

    mul-float v1, v1, p1

    return v1

    :cond_0
    sub-float/2addr p1, v0

    mul-float v2, p1, p1

    mul-float v2, v2, p1

    add-float/2addr v2, v0

    mul-float v2, v2, v1

    return v2
.end method
