.class public abstract Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lmiuix/appcompat/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# instance fields
.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

.field private mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setBaselineAligned(Z)V

    .line 38
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 119
    instance-of p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected computeAlpha(FZZ)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    if-eqz p2, :cond_1

    sub-float/2addr v0, p1

    mul-float v0, v0, v1

    float-to-int p1, v0

    :goto_0
    int-to-float p1, p1

    div-float v0, p1, v1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    mul-float p1, p1, v1

    float-to-int p1, p1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method protected computeTranslationY(FZZ)F
    .locals 6

    .line 225
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    float-to-double p2, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/high16 v4, 0x40000000    # 2.0f

    cmpg-double v5, p2, v2

    if-gez v5, :cond_0

    mul-float p1, p1, v4

    goto :goto_0

    :cond_0
    sub-float/2addr v1, p1

    mul-float p1, v1, v4

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    sub-float p1, v1, p1

    :cond_2
    :goto_0
    mul-float p1, p1, v0

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public filterLeftoverView(I)Z
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 92
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->removeView(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .locals 2

    .line 98
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .locals 2

    .line 105
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .locals 1

    .line 110
    instance-of v0, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;)V

    return-object v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .locals 2

    .line 123
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 124
    iput-boolean v1, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object v0
.end method

.method public abstract getCollapsedHeight()I
.end method

.method public getPresenter()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
    .locals 1

    .line 47
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasBackgroundView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasBlurBackgroundView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4

    add-int/lit8 v0, p1, -0x1

    .line 143
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 144
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_0

    instance-of v2, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    if-eqz v2, :cond_0

    .line 147
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v0

    or-int/2addr v3, v0

    :cond_0
    if-lez p1, :cond_1

    .line 149
    instance-of p1, v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    if-eqz p1, :cond_1

    .line 150
    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    invoke-interface {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result p1

    or-int/2addr v3, p1

    :cond_1
    return v3
.end method

.method public initialize(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 129
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView(Z)V

    .line 57
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 59
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 77
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    .line 256
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p0, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->computeAlpha(FZZ)F

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setAlpha(F)V

    .line 260
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->computeTranslationY(FZZ)F

    move-result p1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 261
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getTranslationY()F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_2

    .line 262
    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setTranslationY(F)V

    .line 264
    :cond_2
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->setTranslationY(F)V

    return-void
.end method

.method public playCloseAnimator()V
    .locals 1

    .line 220
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->close()V

    return-void
.end method

.method public playOpenAnimator()V
    .locals 1

    .line 216
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->open()V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPresenter(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    return-void
.end method
