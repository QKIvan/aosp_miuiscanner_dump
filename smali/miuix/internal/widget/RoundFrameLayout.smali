.class public Lmiuix/internal/widget/RoundFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RoundFrameLayout.java"


# instance fields
.field private mAreaRegion:Landroid/graphics/Region;

.field private mClipOutPath:Landroid/graphics/Path;

.field private mClipPath:Landroid/graphics/Path;

.field private mLayer:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadii:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lmiuix/internal/widget/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lmiuix/internal/widget/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lmiuix/internal/widget/RoundFrameLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 45
    invoke-virtual {p0}, Lmiuix/internal/widget/RoundFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_immersion_menu_background_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v3, 0x2

    aput v0, v1, v3

    const/4 v3, 0x3

    aput v0, v1, v3

    const/4 v3, 0x4

    aput v0, v1, v3

    const/4 v3, 0x5

    aput v0, v1, v3

    const/4 v3, 0x6

    aput v0, v1, v3

    const/4 v3, 0x7

    aput v0, v1, v3

    .line 46
    iput-object v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipOutPath:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mAreaRegion:Landroid/graphics/Region;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private refreshRegion()V
    .locals 7

    .line 72
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    .line 77
    iget-object v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    .line 78
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 83
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 84
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 85
    new-instance v0, Landroid/graphics/Region;

    iget v1, v2, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v3, v2, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/graphics/Region;-><init>(IIII)V

    .line 87
    iget-object v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mAreaRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 89
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipOutPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 90
    iget-object v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipOutPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    int-to-float v5, v0

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 91
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipOutPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    .line 66
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/RoundFrameLayout;->onClipDraw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onClipDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 95
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 101
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipOutPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 59
    iget-object p3, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 60
    invoke-direct {p0}, Lmiuix/internal/widget/RoundFrameLayout;->refreshRegion()V

    return-void
.end method
