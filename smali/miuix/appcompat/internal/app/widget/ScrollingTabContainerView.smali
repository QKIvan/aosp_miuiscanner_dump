.class public abstract Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabClickListener;,
        Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;,
        Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field public static final MODE_COLLAPSE:I = 0x0

.field public static final MODE_MOVABLE:I = 0x1

.field public static final MODE_SECONDARY:I = 0x2


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLastSelectedPosition:I

.field mMaxTabWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabIndicatorBitmap:Landroid/graphics/Bitmap;

.field private mTabIndicatorPosition:F

.field protected mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field private mTranslucentIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;

    .line 84
    invoke-static {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 86
    sget-object v2, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    const/4 v3, 0x0

    const v4, 0x10102ce

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 89
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_tabIndicator:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 90
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_translucentTabIndicator:I

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTranslucentIndicator:Z

    .line 91
    invoke-direct {p0, v2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getTabIndicatorBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 92
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTranslucentIndicator:Z

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 98
    :cond_0
    invoke-virtual {p0, v5}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 100
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 102
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getTabBarLayoutRes()I

    move-result p1

    invoke-virtual {v0, p1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 103
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Landroidx/appcompat/app/ActionBar$Tab;Z)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->createTabView(Landroidx/appcompat/app/ActionBar$Tab;Z)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    move-result-object p0

    return-object p0
.end method

.method private createTabView(Landroidx/appcompat/app/ActionBar$Tab;Z)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;
    .locals 4

    .line 367
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getTabViewLayoutRes()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 369
    invoke-virtual {v0, p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->attach(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Landroidx/appcompat/app/ActionBar$Tab;Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 372
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 373
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {p1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 376
    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 378
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabClickListener:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabClickListener;

    if-nez p2, :cond_1

    .line 379
    new-instance p2, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {p2, p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$1;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabClickListener:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabClickListener;

    .line 381
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabClickListener:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_2

    .line 384
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 385
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getTabViewMarginHorizontal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_2
    return-object v0
.end method

.method private getTabIndicatorBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTranslucentIndicator:Z

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private isCollapsed()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private performExpand()Z
    .locals 4

    .line 273
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 277
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabSelected(I)V

    return v1
.end method


# virtual methods
.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 406
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->createTabView(Landroidx/appcompat/app/ActionBar$Tab;Z)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    move-result-object p1

    .line 407
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 408
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz p2, :cond_0

    .line 409
    invoke-virtual {p2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 412
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 413
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    .line 415
    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz p1, :cond_2

    .line 416
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 391
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->createTabView(Landroidx/appcompat/app/ActionBar$Tab;Z)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    move-result-object p1

    .line 392
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 397
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 398
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    .line 400
    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz p1, :cond_2

    .line 401
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 1

    .line 335
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 336
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 339
    :cond_0
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$1;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$1;-><init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 346
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 139
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 140
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 141
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorPosition:F

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public abstract getTabBarLayoutRes()I
.end method

.method public getTabIndicatorPosition()F
    .locals 1

    .line 208
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorPosition:F

    return v0
.end method

.method public abstract getTabTextStyle()I
.end method

.method public abstract getTabViewLayoutRes()I
.end method

.method public abstract getTabViewMarginHorizontal()I
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 351
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 352
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 321
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 325
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 360
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 361
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 487
    check-cast p2, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 488
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$Tab;->select()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 148
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 150
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 152
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabIndicatorPosition(I)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 158
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 160
    :goto_0
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 162
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-le v4, v1, :cond_3

    if-eq v0, v2, :cond_1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x2

    if-le v4, v0, :cond_2

    .line 166
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 168
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 170
    :goto_1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 175
    :goto_2
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mContentHeight:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    .line 176
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 194
    :cond_4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v0

    .line 195
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 196
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result p1

    if-eqz v3, :cond_5

    if-eq v0, p1, :cond_5

    .line 200
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabSelected(I)V

    :cond_5
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    .line 493
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabIndicatorPosition(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 498
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 500
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->sendAccessibilityEvent(I)V

    .line 502
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabIndicatorPosition(I)V

    .line 504
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    sub-int/2addr v1, p1

    .line 505
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 506
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 507
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;

    .line 508
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 512
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 513
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    if-ge p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 515
    :cond_2
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    if-le p1, v3, :cond_1

    .line 517
    :goto_0
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->startScrollAnimation(Z)V

    .line 518
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->startScrollAnimation(Z)V

    .line 521
    :cond_3
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .line 476
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 477
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 480
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 481
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1

    .line 466
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 467
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz p1, :cond_0

    .line 468
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 470
    :cond_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz p1, :cond_1

    .line 471
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public scrollToTab(I)V
    .locals 2

    .line 329
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 p1, 0x0

    .line 331
    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->scrollTo(II)V

    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    .line 248
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    return-void
.end method

.method public setBadgeVisibility(IZ)V
    .locals 1

    .line 431
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->access$100(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 437
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    .line 439
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 306
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 307
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->requestLayout()V

    return-void
.end method

.method public setEmbeded(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 115
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setHorizontalFadingEdgeEnabled(Z)V

    return-void
.end method

.method public setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->access$200(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 450
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 451
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setTabIndicatorPosition(I)V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabIndicatorPosition(IF)V

    return-void
.end method

.method public setTabIndicatorPosition(IF)V
    .locals 3

    .line 227
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    .line 232
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    int-to-float v0, v1

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorPosition:F

    .line 234
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTabSelected(I)V
    .locals 1

    const/4 v0, 0x1

    .line 285
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabSelected(IZ)V

    return-void
.end method

.method public setTabSelected(IZ)V
    .locals 5

    .line 289
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 290
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 292
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 294
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_2

    if-eqz p2, :cond_1

    .line 297
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->animateToTab(I)V

    goto :goto_2

    .line 299
    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->scrollToTab(I)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setTextAppearance(II)V
    .locals 1

    if-ltz p1, :cond_1

    .line 456
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->access$200(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 461
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateCustomTabView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public updateTab(I)V
    .locals 1

    .line 421
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->update()V

    .line 422
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz p1, :cond_0

    .line 423
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 425
    :cond_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz p1, :cond_1

    .line 426
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_1
    return-void
.end method
