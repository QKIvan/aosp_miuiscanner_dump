.class public Lmiuix/miuixbasewidget/widget/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;,
        Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;
    }
.end annotation


# static fields
.field private static final PRESSED_MASK_COLOR:I = 0xd000000

.field private static final SHADOW_ALPHA:I = 0x19

.field private static final SHADOW_RADIUS:F = 5.45f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 5.45f


# instance fields
.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private mEmptyHolder:Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;

.field private mFabColor:I

.field private mHasFabColor:Z

.field private final mIsShadowEnabled:Z

.field private final mShadowRadius:I

.field private final mShadowXOffset:I

.field private final mShadowYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 73
    iput v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowXOffset:I

    const v1, 0x40ae6666    # 5.45f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 74
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowYOffset:I

    .line 75
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowRadius:I

    .line 77
    sget-object v0, Lmiuix/miuixbasewidget/R$styleable;->FloatingActionButton:[I

    sget v1, Lmiuix/miuixbasewidget/R$style;->Widget_FloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 81
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FloatingActionButton_fabShadowEnabled:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mIsShadowEnabled:Z

    .line 82
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FloatingActionButton_fabColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 83
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FloatingActionButton_fabColor:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_fab_color_light:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 83
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    .line 85
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    new-instance p1, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;

    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/miuixbasewidget/R$drawable;->miuix_appcompat_fab_empty_holder:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;-><init>(Lmiuix/miuixbasewidget/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mEmptyHolder:Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;

    .line 88
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->initBackground()V

    .line 89
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->updatePadding()V

    new-array p1, v0, [Landroid/view/View;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 91
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    invoke-interface {p1, p2}, Lmiuix/animation/ITouchStyle;->setTint(I)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private computeShadowColor(I)I
    .locals 3

    .line 183
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 184
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 185
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v2, 0x19

    .line 186
    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private createFabBackground()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 144
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;

    invoke-direct {v1, p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 145
    iget-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mIsShadowEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    .line 146
    iget v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->computeShadowColor(I)I

    move-result v1

    .line 147
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    .line 149
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 150
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget v5, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowRadius:I

    int-to-float v5, v5

    iget v6, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowXOffset:I

    int-to-float v6, v6

    iget v7, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowYOffset:I

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 154
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v4, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mEmptyHolder:Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;

    aput-object v0, v4, v2

    invoke-direct {v1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 157
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;

    invoke-direct {v4, p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 158
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    const/high16 v6, 0xd000000

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v3, v5

    aput-object v0, v3, v2

    invoke-direct {v4, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 161
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 162
    sget-object v2, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 163
    sget-object v2, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 164
    sget-object v2, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private getDefaultBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 134
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_fab_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 137
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->createFabBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 140
    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private initBackground()V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 107
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->createFabBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    :goto_0
    return-void
.end method

.method private initEmptyHolder()V
    .locals 5

    .line 118
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getPaddingLeft()I

    move-result v0

    .line 119
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getPaddingTop()I

    move-result v1

    .line 120
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getPaddingRight()I

    move-result v2

    .line 121
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    .line 123
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mEmptyHolder:Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;

    mul-int/lit8 v3, v3, 0x2

    add-int v4, v0, v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v0, v1, v4, v3}, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->setBounds(IIII)V

    return-void
.end method

.method private updatePadding()V
    .locals 6

    .line 169
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mIsShadowEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    if-eqz v0, :cond_0

    .line 170
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowRadius:I

    iget v2, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowXOffset:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 171
    iget v2, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowRadius:I

    iget v3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowYOffset:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 172
    iget v3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowRadius:I

    iget v4, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowXOffset:I

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 173
    iget v4, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowRadius:I

    iget v5, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowYOffset:I

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 175
    invoke-virtual {p0, v0, v2, v3, v1}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->setPadding(IIII)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p0, v1, v1, v1, v1}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->setPadding(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->initEmptyHolder()V

    .line 130
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 254
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 255
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    if-nez p1, :cond_0

    .line 194
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 197
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->updatePadding()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 214
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    if-eq v0, p1, :cond_1

    .line 215
    :cond_0
    iput p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    .line 216
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->createFabBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 217
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->updatePadding()V

    :cond_1
    const/4 p1, 0x1

    .line 219
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    if-nez p1, :cond_0

    .line 205
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 209
    :goto_0
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->updatePadding()V

    return-void
.end method
