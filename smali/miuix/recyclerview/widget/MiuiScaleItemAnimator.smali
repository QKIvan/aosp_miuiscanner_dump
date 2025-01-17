.class public Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;
.super Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;
.source "MiuiScaleItemAnimator.java"


# static fields
.field private static final DEFAULT_SCALE:F = 0.8f

.field private static final SCALE_DIS:I = 0x14


# instance fields
.field private mScaleDist:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->mScaleDist:F

    return-void
.end method

.method private getFlomeScale(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 3

    .line 93
    iget v0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->mScaleDist:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/high16 v1, 0x41a00000    # 20.0f

    .line 94
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->mScaleDist:F

    .line 97
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 98
    iget v0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->mScaleDist:F

    sub-float v0, p1, v0

    div-float/2addr v0, p1

    const p1, 0x3f4ccccd    # 0.8f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method


# virtual methods
.method animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 11

    .line 47
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->notifyAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 48
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v4, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 49
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v0

    sget-object v5, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const/4 v6, 0x2

    aput-object v5, v2, v6

    const/4 v5, 0x3

    aput-object v4, v2, v5

    sget-object v7, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    const/4 v8, 0x4

    aput-object v7, v2, v8

    const/4 v7, 0x5

    aput-object v4, v2, v7

    sget-object v9, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->sSpeedConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v10, 0x6

    aput-object v9, v2, v10

    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array v1, v0, [Landroid/view/View;

    .line 50
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    sget-object v9, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v9, v2, v3

    aput-object v4, v2, v0

    .line 51
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    aput-object v0, v2, v6

    aput-object v4, v2, v5

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    aput-object v0, v2, v8

    aput-object v4, v2, v7

    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->predictDuration([Ljava/lang/Object;)J

    move-result-wide v0

    .line 52
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;

    invoke-direct {v3, p0, p1}, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;-><init>(Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 12

    .line 62
    invoke-direct {p0, p1}, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->getFlomeScale(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result v0

    .line 63
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->notifyRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 64
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v2, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->sAttachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    .line 65
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v5, v3, v4

    const/4 v5, 0x0

    .line 66
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v1

    sget-object v6, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const/4 v7, 0x2

    aput-object v6, v3, v7

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v3, v8

    sget-object v6, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    const/4 v9, 0x4

    aput-object v6, v3, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v10, 0x5

    aput-object v6, v3, v10

    sget-object v6, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->sSpeedConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v11, 0x6

    aput-object v6, v3, v11

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array v2, v1, [Landroid/view/View;

    .line 67
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    sget-object v6, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v6, v3, v4

    aput-object v5, v3, v1

    .line 68
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    aput-object v1, v3, v7

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v8

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    aput-object v1, v3, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->predictDuration([Ljava/lang/Object;)J

    move-result-wide v0

    .line 69
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;

    invoke-direct {v3, p0, p1}, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;-><init>(Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method prepareAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->prepareAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 40
    invoke-direct {p0, p1}, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->getFlomeScale(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result v0

    .line 41
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 42
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 79
    invoke-super {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 81
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    aput-object v4, v2, v3

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    aput-object v3, v2, v0

    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->end([Ljava/lang/Object;)V

    .line 84
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 85
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method
