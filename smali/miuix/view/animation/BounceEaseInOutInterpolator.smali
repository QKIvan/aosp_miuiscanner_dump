.class public Lmiuix/view/animation/BounceEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "BounceEaseInOutInterpolator.java"

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

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    .line 16
    new-instance v2, Lmiuix/view/animation/BounceEaseInInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/BounceEaseInInterpolator;-><init>()V

    mul-float p1, p1, v0

    invoke-virtual {v2, p1}, Lmiuix/view/animation/BounceEaseInInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float p1, p1, v1

    return p1

    .line 18
    :cond_0
    new-instance v2, Lmiuix/view/animation/BounceEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/BounceEaseOutInterpolator;-><init>()V

    mul-float p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    invoke-virtual {v2, p1}, Lmiuix/view/animation/BounceEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float p1, p1, v1

    add-float/2addr p1, v1

    return p1
.end method
