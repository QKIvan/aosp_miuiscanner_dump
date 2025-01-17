.class public Lmiuix/springback/view/SpringBackLayout;
.super Landroid/view/ViewGroup;
.source "SpringBackLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingChild3;
.implements Lmiuix/core/view/NestedCurrentFling;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/springback/view/SpringBackLayout$OnScrollListener;,
        Lmiuix/springback/view/SpringBackLayout$OnSpringListener;
    }
.end annotation


# static fields
.field public static final ANGLE:I = 0x4

.field public static final HORIZONTAL:I = 0x1

.field private static final INVALID_ID:I = -0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_FLING_CONSUME_COUNTER:I = 0x4

.field public static final SPRING_BACK_BOTTOM:I = 0x2

.field public static final SPRING_BACK_TOP:I = 0x1

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpringBackLayout"

.field public static final UNCHECK_ORIENTATION:I = 0x0

.field private static final VELOCITY_THRADHOLD:I = 0x7d0

.field public static final VERTICAL:I = 0x2


# instance fields
.field private consumeNestFlingCounter:I

.field private mActivePointerId:I

.field private mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

.field private mInitialDownX:F

.field private mInitialDownY:F

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mNestedFlingInProgress:Z

.field private mNestedScrollAxes:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private final mNestedScrollingV2ConsumedCompat:[I

.field private mOnScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/springback/view/SpringBackLayout$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

.field private mOriginScrollOrientation:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field private final mScreenHeight:I

.field private final mScreenWith:I

.field private mScrollByFling:Z

.field private mScrollOrientation:I

.field private mScrollState:I

.field private mSpringBackEnable:Z

.field private mSpringBackMode:I

.field private mSpringScroller:Lmiuix/springback/view/SpringScroller;

.field private mTarget:Landroid/view/View;

.field private mTargetId:I

.field private mTotalFlingUnconsumed:F

.field private mTotalScrollBottomUnconsumed:F

.field private mTotalScrollTopUnconsumed:F

.field private mTouchSlop:I

.field private mVelocityX:F

.field private mVelocityY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    const/4 v1, 0x0

    .line 75
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 78
    iput-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mParentScrollConsumed:[I

    new-array v3, v2, [I

    .line 79
    iput-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mParentOffsetInWindow:[I

    new-array v3, v2, [I

    .line 80
    iput-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingV2ConsumedCompat:[I

    const/4 v3, 0x1

    .line 114
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    .line 1438
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollListeners:Ljava/util/List;

    .line 1440
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 122
    new-instance v4, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v4, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 123
    invoke-static {p0}, Lmiuix/core/view/NestedScrollingChildHelper;->obtain(Landroid/view/View;)Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v4

    iput-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 124
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    .line 125
    sget-object v4, Lmiuix/springback/R$styleable;->SpringBackLayout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 126
    sget v4, Lmiuix/springback/R$styleable;->SpringBackLayout_scrollableView:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTargetId:I

    .line 127
    sget v0, Lmiuix/springback/R$styleable;->SpringBackLayout_scrollOrientation:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 128
    sget v0, Lmiuix/springback/R$styleable;->SpringBackLayout_springBackMode:I

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    .line 129
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    new-instance p2, Lmiuix/springback/view/SpringScroller;

    invoke-direct {p2}, Lmiuix/springback/view/SpringScroller;-><init>()V

    iput-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 131
    new-instance p2, Lmiuix/springback/view/SpringBackLayoutHelper;

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    invoke-direct {p2, p0, v0}, Lmiuix/springback/view/SpringBackLayoutHelper;-><init>(Landroid/view/ViewGroup;I)V

    iput-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    .line 132
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->setNestedScrollingEnabled(Z)V

    .line 133
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 135
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 136
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWith:I

    .line 137
    iget p1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    .line 138
    sget-boolean p1, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    .line 139
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    :cond_0
    return-void
.end method

.method private checkHorizontalScrollStart(I)V
    .locals 3

    .line 753
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollX()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 755
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 756
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    .line 757
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollX()I

    move-result v0

    if-gez v0, :cond_1

    .line 758
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    goto :goto_1

    .line 760
    :cond_1
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    add-float/2addr v0, p1

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 762
    :goto_1
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    goto :goto_2

    .line 764
    :cond_2
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    :goto_2
    return-void
.end method

.method private checkOrientation(Landroid/view/MotionEvent;)V
    .locals 5

    .line 371
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    invoke-virtual {v0, p1}, Lmiuix/springback/view/SpringBackLayoutHelper;->checkOrientation(Landroid/view/MotionEvent;)V

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 400
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 394
    :cond_1
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    if-nez p1, :cond_8

    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    iget p1, p1, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    if-eqz p1, :cond_8

    .line 396
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    iget p1, p1, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    goto :goto_1

    .line 404
    :cond_2
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->disallowParentInterceptTouchEvent(Z)V

    .line 406
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 407
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    goto :goto_1

    .line 409
    :cond_3
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    goto :goto_1

    .line 375
    :cond_4
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    iget p1, p1, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownY:F

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 376
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    iget p1, p1, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownX:F

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 377
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    iget p1, p1, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 378
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_5

    .line 379
    iput v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 380
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    goto :goto_0

    .line 381
    :cond_5
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollX()I

    move-result p1

    if-eqz p1, :cond_6

    .line 382
    iput v3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 383
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    goto :goto_0

    .line 385
    :cond_6
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 387
    :goto_0
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_7

    .line 388
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    goto :goto_1

    .line 390
    :cond_7
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method private checkScrollStart(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 743
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->checkVerticalScrollStart(I)V

    goto :goto_0

    .line 745
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->checkHorizontalScrollStart(I)V

    :goto_0
    return-void
.end method

.method private checkVerticalScrollStart(I)V
    .locals 3

    .line 726
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 728
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 729
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    .line 730
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result v0

    if-gez v0, :cond_1

    .line 731
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    goto :goto_1

    .line 733
    :cond_1
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    add-float/2addr v0, p1

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 735
    :goto_1
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_2

    .line 737
    :cond_2
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    :goto_2
    return-void
.end method

.method private consumeDelta(I[II)V
    .locals 1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    .line 1303
    aput p1, p2, p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1305
    aput p1, p2, p3

    :goto_0
    return-void
.end method

.method private disallowParentInterceptTouchEvent(Z)V
    .locals 1

    .line 364
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private dispatchScrollState(I)V
    .locals 4

    .line 1429
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    if-eq v0, p1, :cond_0

    .line 1431
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 1432
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/springback/view/SpringBackLayout$OnScrollListener;

    .line 1433
    iget-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v3}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result v3

    invoke-interface {v2, v0, p1, v3}, Lmiuix/springback/view/SpringBackLayout$OnScrollListener;->onStateChanged(IIZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureTarget()V
    .locals 2

    .line 194
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_1

    .line 195
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTargetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 198
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    goto :goto_0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid target Id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 204
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v1, v0, Landroidx/core/view/NestedScrollingChild3;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 208
    :cond_2
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 209
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_3
    return-void

    .line 201
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fail to get target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isHorizontalTargetScrollToTop()Z
    .locals 2

    .line 272
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isTargetScrollOrientation(I)Z
    .locals 1

    .line 276
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isTargetScrollToBottom(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 292
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 293
    check-cast p1, Landroid/widget/ListView;

    invoke-static {p1, v0}, Landroidx/core/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 295
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 297
    :cond_1
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method private isTargetScrollToTop(I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 281
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 282
    check-cast p1, Landroid/widget/ListView;

    invoke-static {p1, v0}, Landroidx/core/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 284
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 286
    :cond_1
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isVerticalTargetScrollToTop()Z
    .locals 3

    .line 265
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ListView;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 266
    check-cast v0, Landroid/widget/ListView;

    invoke-static {v0, v2}, Landroidx/core/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 268
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private moveTarget(FI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    neg-float p1, p1

    float-to-int p1, p1

    .line 864
    invoke-virtual {p0, v0, p1}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    goto :goto_0

    :cond_0
    neg-float p1, p1

    float-to-int p1, p1

    .line 866
    invoke-virtual {p0, p1, v0}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method private obtainDampingDistance(FI)F
    .locals 6

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1008
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWith:I

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1009
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 1010
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v4, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v0

    double-to-float p1, v4

    int-to-float p2, p2

    mul-float p1, p1, p2

    return p1
.end method

.method private obtainMaxSpringBackDistance(I)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1004
    invoke-direct {p0, v0, p1}, Lmiuix/springback/view/SpringBackLayout;->obtainDampingDistance(FI)F

    move-result p1

    return p1
.end method

.method private obtainSpringBackDistance(FI)F
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 998
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWith:I

    .line 999
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1000
    invoke-direct {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainDampingDistance(FI)F

    move-result p1

    return p1
.end method

.method private obtainTouchDistance(FFI)F
    .locals 6

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 1017
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWith:I

    .line 1018
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    int-to-double v0, p3

    const-wide v2, 0x3fe5555555555555L    # 0.6666666666666666

    .line 1019
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-float p2, p3

    const/high16 p3, 0x40400000    # 3.0f

    mul-float p1, p1, p3

    sub-float/2addr p2, p1

    float-to-double p1, p2

    const-wide v4, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    mul-double v2, v2, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method private onHorizontalInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x1

    .line 486
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 489
    :cond_0
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportTopSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 492
    :cond_1
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportBottomSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 495
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v3, -0x1

    if-eq v1, v0, :cond_b

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_b

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3

    goto/16 :goto_0

    .line 543
    :cond_3
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 513
    :cond_4
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    const-string v4, "SpringBackLayout"

    if-ne v1, v3, :cond_5

    const-string p1, "Got ACTION_MOVE event but don\'t have an active pointer id."

    .line 514
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 517
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 519
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 523
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 525
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    :cond_7
    if-nez v2, :cond_8

    .line 526
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    if-eqz v2, :cond_a

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_a

    .line 527
    :cond_9
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float v1, p1, v1

    .line 528
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v1, :cond_f

    .line 529
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 530
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 531
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    goto :goto_0

    .line 534
    :cond_a
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr v1, p1

    .line 535
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v1, :cond_f

    .line 536
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 537
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 538
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    goto :goto_0

    .line 547
    :cond_b
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 548
    iput v3, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    goto :goto_0

    .line 499
    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 500
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_d

    return v2

    .line 504
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 505
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollX()I

    move-result p1

    if-eqz p1, :cond_e

    .line 506
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 507
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    goto :goto_0

    .line 509
    :cond_e
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 551
    :cond_f
    :goto_0
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    return p1
.end method

.method private onHorizontalTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 604
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    .line 605
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 608
    :cond_0
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 609
    invoke-direct {p0, p1, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->onScrollEvent(Landroid/view/MotionEvent;II)Z

    move-result p1

    return p1

    .line 610
    :cond_1
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 611
    invoke-direct {p0, p1, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->onScrollUpEvent(Landroid/view/MotionEvent;II)Z

    move-result p1

    return p1

    .line 613
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->onScrollDownEvent(Landroid/view/MotionEvent;II)Z

    move-result p1

    return p1
.end method

.method private onNestedPreScroll(I[II)V
    .locals 7

    .line 1211
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 1213
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollX()I

    move-result v0

    .line 1214
    :goto_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v5, 0x0

    if-nez p3, :cond_6

    if-lez p1, :cond_4

    .line 1216
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float v0, p3, v5

    if-lez v0, :cond_4

    int-to-float v0, p1

    cmpl-float v1, v0, p3

    if-lez v1, :cond_3

    float-to-int p1, p3

    .line 1218
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 1219
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    goto :goto_3

    :cond_3
    sub-float/2addr p3, v0

    .line 1221
    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 1222
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 1224
    :goto_3
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 1225
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-direct {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    invoke-direct {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto/16 :goto_a

    :cond_4
    if-gez p1, :cond_13

    .line 1226
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    neg-float v0, p3

    cmpg-float v0, v0, v5

    if-gez v0, :cond_13

    int-to-float v0, p1

    neg-float v1, p3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    float-to-int p1, p3

    .line 1228
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 1229
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_4

    :cond_5
    add-float/2addr p3, v0

    .line 1231
    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 1232
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 1234
    :goto_4
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 1235
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-direct {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    neg-float p1, p1

    invoke-direct {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto/16 :goto_a

    :cond_6
    if-ne v4, v2, :cond_7

    .line 1238
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    goto :goto_5

    :cond_7
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    :goto_5
    if-lez p1, :cond_c

    .line 1239
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float v6, v2, v5

    if-lez v6, :cond_c

    const/high16 v6, 0x44fa0000    # 2000.0f

    cmpl-float v6, p3, v6

    if-lez v6, :cond_9

    .line 1241
    invoke-direct {p0, v2, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p3

    int-to-float v0, p1

    cmpl-float v1, v0, p3

    if-lez v1, :cond_8

    float-to-int p1, p3

    .line 1243
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 1245
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    goto :goto_6

    .line 1247
    :cond_8
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    sub-float v5, p3, v0

    .line 1250
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p1, p1, p2

    .line 1249
    invoke-direct {p0, v5, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 1252
    :goto_6
    invoke-direct {p0, v5, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 1253
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto/16 :goto_a

    .line 1255
    :cond_9
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-nez v2, :cond_a

    .line 1256
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    .line 1257
    invoke-direct {p0, p3, v4, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(FIZ)V

    .line 1259
    :cond_a
    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p3}, Lmiuix/springback/view/SpringScroller;->computeScrollOffset()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 1260
    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p3}, Lmiuix/springback/view/SpringScroller;->getCurrX()I

    move-result p3

    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, p3, v1}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    int-to-float p3, v0

    .line 1261
    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p3, v0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p3

    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    goto :goto_7

    .line 1263
    :cond_b
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 1265
    :goto_7
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    goto/16 :goto_a

    :cond_c
    if-gez p1, :cond_11

    .line 1267
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    neg-float v6, v2

    cmpg-float v6, v6, v5

    if-gez v6, :cond_11

    const/high16 v6, -0x3b060000    # -2000.0f

    cmpg-float v6, p3, v6

    if-gez v6, :cond_e

    .line 1269
    invoke-direct {p0, v2, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p3

    int-to-float v0, p1

    neg-float v1, p3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_d

    float-to-int p1, p3

    .line 1271
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 1273
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_8

    .line 1275
    :cond_d
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    add-float v5, p3, v0

    .line 1278
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p1, p1, p2

    .line 1277
    invoke-direct {p0, v5, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 1280
    :goto_8
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    neg-float p1, v5

    .line 1281
    invoke-direct {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto :goto_a

    .line 1283
    :cond_e
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-nez v2, :cond_f

    .line 1284
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    .line 1285
    invoke-direct {p0, p3, v4, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(FIZ)V

    .line 1287
    :cond_f
    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p3}, Lmiuix/springback/view/SpringScroller;->computeScrollOffset()Z

    move-result p3

    if-eqz p3, :cond_10

    .line 1288
    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p3}, Lmiuix/springback/view/SpringScroller;->getCurrX()I

    move-result p3

    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, p3, v1}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    int-to-float p3, v0

    .line 1289
    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p3, v0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p3

    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_9

    .line 1291
    :cond_10
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 1293
    :goto_9
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    goto :goto_a

    :cond_11
    if-eqz p1, :cond_13

    .line 1295
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    cmpl-float p3, p3, v5

    if-eqz p3, :cond_12

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float p3, p3, v5

    if-nez p3, :cond_13

    :cond_12
    iget-boolean p3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz p3, :cond_13

    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result p3

    if-nez p3, :cond_13

    .line 1296
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    :cond_13
    :goto_a
    return-void
.end method

.method private onScrollDownEvent(Landroid/view/MotionEvent;II)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_d

    const-string v2, "SpringBackLayout"

    if-eq p2, v0, :cond_a

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6

    const/4 v4, 0x3

    if-eq p2, v4, :cond_a

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1

    const/4 p3, 0x6

    if-eq p2, p3, :cond_0

    goto/16 :goto_2

    .line 841
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 804
    :cond_1
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_2

    const-string p1, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    .line 806
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p3, v3, :cond_4

    .line 811
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 812
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr p2, p3

    .line 813
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_3

    .line 815
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 819
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v1, p2

    .line 820
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 821
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_0

    .line 823
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    .line 824
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr p2, p3

    .line 825
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_5

    .line 827
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 832
    :cond_5
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v1, p2

    .line 833
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 834
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 836
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    goto :goto_2

    .line 776
    :cond_6
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_7

    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 778
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 782
    :cond_7
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_e

    if-ne p3, v3, :cond_8

    .line 785
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 786
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr p1, v2

    invoke-direct {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    goto :goto_1

    .line 788
    :cond_8
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 789
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr p1, v2

    invoke-direct {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    :goto_1
    mul-float p2, p2, p1

    const/4 p1, 0x0

    cmpl-float v2, p2, p1

    if-lez v2, :cond_9

    .line 794
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    .line 795
    invoke-direct {p0, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto :goto_2

    .line 797
    :cond_9
    invoke-direct {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    return v1

    .line 845
    :cond_a
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_b

    const-string p1, "Got ACTION_UP event but don\'t have an active pointer id."

    .line 847
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 850
    :cond_b
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_c

    .line 851
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 852
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    :cond_c
    const/4 p1, -0x1

    .line 854
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    return v1

    .line 772
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 773
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    :cond_e
    :goto_2
    return v0
.end method

.method private onScrollEvent(Landroid/view/MotionEvent;II)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_d

    const-string v2, "SpringBackLayout"

    if-eq p2, v0, :cond_a

    const/4 v3, 0x2

    if-eq p2, v3, :cond_7

    const/4 v4, 0x3

    if-eq p2, v4, :cond_6

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1

    const/4 p3, 0x6

    if-eq p2, p3, :cond_0

    goto/16 :goto_2

    .line 700
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 663
    :cond_1
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_2

    const-string p1, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    .line 665
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p3, v3, :cond_4

    .line 670
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 671
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr p2, p3

    .line 672
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_3

    .line 674
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 678
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v1, p2

    .line 679
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 680
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_0

    .line 682
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    .line 683
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr p2, p3

    .line 684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_5

    .line 686
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 691
    :cond_5
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v1, p2

    .line 692
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 693
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 695
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    goto :goto_2

    :cond_6
    return v1

    .line 640
    :cond_7
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_8

    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 642
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 646
    :cond_8
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_e

    if-ne p3, v3, :cond_9

    .line 649
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 650
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr p1, v1

    invoke-direct {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    goto :goto_1

    .line 652
    :cond_9
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 653
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr p1, v1

    invoke-direct {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    :goto_1
    mul-float p2, p2, p1

    .line 657
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    .line 658
    invoke-direct {p0, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto :goto_2

    .line 703
    :cond_a
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_b

    const-string p1, "Got ACTION_UP event but don\'t have an active pointer id."

    .line 705
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 708
    :cond_b
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_c

    .line 709
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 710
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    :cond_c
    const/4 p1, -0x1

    .line 712
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    return v1

    .line 635
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 636
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    :cond_e
    :goto_2
    return v0
.end method

.method private onScrollUpEvent(Landroid/view/MotionEvent;II)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_d

    const-string v2, "SpringBackLayout"

    if-eq p2, v0, :cond_a

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6

    const/4 v4, 0x3

    if-eq p2, v4, :cond_a

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1

    const/4 p3, 0x6

    if-eq p2, p3, :cond_0

    goto/16 :goto_2

    .line 966
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 929
    :cond_1
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_2

    const-string p1, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    .line 931
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p3, v3, :cond_4

    .line 936
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 937
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr p2, p3

    .line 938
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_3

    .line 940
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 944
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v1, p2

    .line 945
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 946
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_0

    .line 948
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    .line 949
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr p2, p3

    .line 950
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_5

    .line 952
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 957
    :cond_5
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v1, p2

    .line 958
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 959
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 961
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    goto :goto_2

    .line 900
    :cond_6
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_7

    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 902
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 906
    :cond_7
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_e

    if-ne p3, v3, :cond_8

    .line 909
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 910
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr v2, p1

    invoke-direct {p0, v2, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    goto :goto_1

    .line 912
    :cond_8
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 913
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr v2, p1

    invoke-direct {p0, v2, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    :goto_1
    mul-float p2, p2, p1

    const/4 p1, 0x0

    cmpl-float v2, p2, p1

    if-lez v2, :cond_9

    .line 919
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    neg-float p1, p2

    .line 920
    invoke-direct {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto :goto_2

    .line 922
    :cond_9
    invoke-direct {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    return v1

    .line 970
    :cond_a
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_b

    const-string p1, "Got ACTION_UP event but don\'t have an active pointer id."

    .line 972
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 975
    :cond_b
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_c

    .line 976
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 977
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    :cond_c
    const/4 p1, -0x1

    .line 979
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    return v1

    .line 896
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 897
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    :cond_e
    :goto_2
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 987
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 988
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 989
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 993
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    :cond_1
    return-void
.end method

.method private onVerticalInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x2

    .line 416
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 419
    :cond_0
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportTopSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 422
    :cond_1
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportBottomSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 425
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    const/4 v4, -0x1

    if-eq v1, v3, :cond_b

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_b

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3

    goto/16 :goto_0

    .line 473
    :cond_3
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 443
    :cond_4
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    const-string v5, "SpringBackLayout"

    if-ne v1, v4, :cond_5

    const-string p1, "Got ACTION_MOVE event but don\'t have an active pointer id."

    .line 444
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 447
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 449
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 452
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 454
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    :cond_7
    if-nez v2, :cond_8

    .line 455
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    if-eqz v2, :cond_a

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_a

    .line 456
    :cond_9
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float v0, p1, v0

    .line 457
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_f

    .line 458
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 459
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 460
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_0

    .line 463
    :cond_a
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr v0, p1

    .line 464
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_f

    .line 465
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 466
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 467
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_0

    .line 478
    :cond_b
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 479
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    goto :goto_0

    .line 429
    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 430
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_d

    return v2

    .line 434
    :cond_d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 435
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_e

    .line 436
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 437
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_0

    .line 439
    :cond_e
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 482
    :cond_f
    :goto_0
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    return p1
.end method

.method private onVerticalTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 618
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    .line 619
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 622
    :cond_0
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 623
    invoke-direct {p0, p1, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->onScrollEvent(Landroid/view/MotionEvent;II)Z

    move-result p1

    return p1

    .line 624
    :cond_1
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 625
    invoke-direct {p0, p1, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->onScrollUpEvent(Landroid/view/MotionEvent;II)Z

    move-result p1

    return p1

    .line 627
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->onScrollDownEvent(Landroid/view/MotionEvent;II)Z

    move-result p1

    return p1
.end method

.method private springBack(FIZ)V
    .locals 10

    .line 875
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiuix/springback/view/SpringBackLayout$OnSpringListener;->onSpringBack()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 878
    :cond_0
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->forceStop()V

    .line 879
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollX()I

    move-result v0

    .line 880
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result v1

    .line 881
    iget-object v2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    int-to-float v3, v0

    const/4 v4, 0x0

    int-to-float v5, v1

    const/4 v6, 0x0

    const/4 v9, 0x0

    move v7, p1

    move v8, p2

    invoke-virtual/range {v2 .. v9}, Lmiuix/springback/view/SpringScroller;->scrollByFling(FFFFFIZ)V

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 883
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 885
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    :goto_0
    if-eqz p3, :cond_2

    .line 888
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private springBack(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 871
    invoke-direct {p0, v0, p1, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(FIZ)V

    return-void
.end method

.method private supportBottomSpringBackMode()Z
    .locals 1

    .line 181
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private supportTopSpringBackMode()Z
    .locals 2

    .line 177
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public addOnScrollListener(Lmiuix/springback/view/SpringBackLayout$OnScrollListener;)V
    .locals 1

    .line 1443
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 245
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 246
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    .line 248
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1410
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1405
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 1415
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    .line 1400
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 8

    .line 1369
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7

    .line 1395
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 304
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    invoke-virtual {v0, p1}, Lmiuix/springback/view/SpringBackLayoutHelper;->isTouchInTarget(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 309
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 312
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    .line 313
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    :cond_1
    return v0
.end method

.method public getSpringBackMode()I
    .locals 1

    .line 161
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1

    .line 1390
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result p1

    return p1
.end method

.method public hasSpringListener()Z
    .locals 1

    .line 1455
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public internalRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 565
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1316
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 321
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 325
    :cond_0
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 328
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 332
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 333
    iget-object v2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v2}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    .line 334
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->forceStop()V

    .line 337
    :cond_3
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportTopSpringBackMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportBottomSpringBackMode()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 341
    :cond_4
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    .line 342
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->checkOrientation(Landroid/view/MotionEvent;)V

    .line 343
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_5

    .line 344
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    return v1

    .line 346
    :cond_5
    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    .line 347
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    return v1

    .line 349
    :cond_6
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 350
    :cond_7
    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->disallowParentInterceptTouchEvent(Z)V

    goto :goto_0

    .line 353
    :cond_8
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 355
    :cond_9
    :goto_0
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 356
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onVerticalInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 357
    :cond_a
    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 358
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onHorizontalInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_b
    :goto_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 215
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredWidth()I

    move-result p1

    .line 216
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredHeight()I

    move-result p2

    .line 217
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getPaddingLeft()I

    move-result p3

    .line 218
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getPaddingTop()I

    move-result p4

    .line 219
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getPaddingLeft()I

    move-result p5

    sub-int/2addr p1, p5

    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getPaddingRight()I

    move-result p5

    sub-int/2addr p1, p5

    .line 220
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getPaddingTop()I

    move-result p5

    sub-int/2addr p2, p5

    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p2, p5

    .line 221
    iget-object p5, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    add-int/2addr p1, p3

    add-int/2addr p2, p4

    invoke-virtual {p5, p3, p4, p1, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 226
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->ensureTarget()V

    .line 227
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 228
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 229
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 230
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 231
    iget-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v4, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->measureChild(Landroid/view/View;II)V

    .line 232
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-le v2, p1, :cond_0

    .line 233
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 235
    :cond_0
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-le v3, p1, :cond_1

    .line 236
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    :cond_1
    const/high16 p1, 0x40000000    # 2.0f

    if-ne v0, p1, :cond_2

    goto :goto_0

    .line 238
    :cond_2
    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 239
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_0
    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 238
    :goto_1
    invoke-virtual {p0, v2, v3}, Lmiuix/springback/view/SpringBackLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNestedCurrentFling(FF)Z
    .locals 0

    .line 1460
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    .line 1461
    iput p2, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    const/4 p1, 0x1

    return p1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1359
    invoke-virtual {p0, p2, p3, p4}, Lmiuix/springback/view/SpringBackLayout;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1364
    invoke-virtual {p0, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 7

    .line 1196
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz p1, :cond_1

    .line 1197
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1198
    invoke-direct {p0, p3, p4, p5}, Lmiuix/springback/view/SpringBackLayout;->onNestedPreScroll(I[II)V

    goto :goto_0

    .line 1200
    :cond_0
    invoke-direct {p0, p2, p4, p5}, Lmiuix/springback/view/SpringBackLayout;->onNestedPreScroll(I[II)V

    .line 1203
    :cond_1
    :goto_0
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mParentScrollConsumed:[I

    const/4 v0, 0x0

    .line 1204
    aget v1, p4, v0

    sub-int v2, p2, v1

    const/4 p2, 0x1

    aget v1, p4, p2

    sub-int v3, p3, v1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lmiuix/springback/view/SpringBackLayout;->dispatchNestedPreScroll(II[I[II)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1205
    aget p3, p4, v0

    aget p5, p1, v0

    add-int/2addr p3, p5

    aput p3, p4, v0

    .line 1206
    aget p3, p4, p2

    aget p1, p1, p2

    add-int/2addr p3, p1

    aput p3, p4, p2

    :cond_2
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 8

    .line 1120
    iget-object v7, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingV2ConsumedCompat:[I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lmiuix/springback/view/SpringBackLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 8

    .line 1114
    iget-object v7, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lmiuix/springback/view/SpringBackLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 15

    move-object v8, p0

    .line 1024
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v0, v10, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_1

    move/from16 v13, p3

    goto :goto_1

    :cond_1
    move/from16 v13, p2

    :goto_1
    if-eqz v12, :cond_2

    .line 1026
    aget v0, p7, v11

    goto :goto_2

    :cond_2
    aget v0, p7, v9

    :goto_2
    move v14, v0

    .line 1027
    iget-object v5, v8, Lmiuix/springback/view/SpringBackLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lmiuix/springback/view/SpringBackLayout;->dispatchNestedScroll(IIII[II[I)V

    .line 1029
    iget-boolean v0, v8, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    if-eqz v12, :cond_4

    .line 1032
    aget v0, p7, v11

    goto :goto_3

    :cond_4
    aget v0, p7, v9

    :goto_3
    sub-int/2addr v0, v14

    if-eqz v12, :cond_5

    sub-int v0, p5, v0

    goto :goto_4

    :cond_5
    sub-int v0, p4, v0

    :goto_4
    if-eqz v0, :cond_6

    move v9, v0

    :cond_6
    if-eqz v12, :cond_7

    const/4 v1, 0x2

    goto :goto_5

    :cond_7
    const/4 v1, 0x1

    :goto_5
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-gez v9, :cond_e

    .line 1039
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1040
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportTopSpringBackMode()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz p6, :cond_d

    .line 1042
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v4

    .line 1043
    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    cmpl-float v5, v5, v3

    if-nez v5, :cond_b

    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_8

    goto :goto_7

    .line 1050
    :cond_8
    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_9

    return-void

    .line 1053
    :cond_9
    iget v3, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    sub-float/2addr v4, v3

    .line 1054
    iget v3, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    if-ge v3, v2, :cond_15

    .line 1055
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_a

    .line 1056
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    add-float/2addr v0, v4

    iput v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 1057
    aget v0, p7, v11

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    aput v0, p7, v11

    goto :goto_6

    .line 1059
    :cond_a
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 1060
    aget v2, p7, v11

    add-int/2addr v2, v0

    aput v2, p7, v11

    .line 1062
    :goto_6
    invoke-direct {p0, v10}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 1063
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-direct {p0, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v0

    invoke-direct {p0, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 1064
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    add-int/2addr v0, v11

    iput v0, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    goto/16 :goto_a

    .line 1044
    :cond_b
    :goto_7
    iput-boolean v11, v8, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz v13, :cond_c

    neg-int v0, v9

    int-to-float v0, v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_c

    .line 1046
    iget-object v0, v8, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0, v9}, Lmiuix/springback/view/SpringScroller;->setFirstStep(I)V

    .line 1048
    :cond_c
    invoke-direct {p0, v10}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto/16 :goto_a

    .line 1068
    :cond_d
    iget-object v2, v8, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v2}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1069
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 1070
    invoke-direct {p0, v11}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 1071
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-direct {p0, v2, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v2

    invoke-direct {p0, v2, v1}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 1072
    aget v1, p7, v11

    add-int/2addr v1, v0

    aput v1, p7, v11

    goto/16 :goto_a

    :cond_e
    if-lez v9, :cond_15

    .line 1075
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1076
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportBottomSpringBackMode()Z

    move-result v4

    if-eqz v4, :cond_15

    if-eqz p6, :cond_14

    .line 1078
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v4

    .line 1079
    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    cmpl-float v5, v5, v3

    if-nez v5, :cond_12

    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_f

    goto :goto_9

    .line 1086
    :cond_f
    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_10

    return-void

    .line 1089
    :cond_10
    iget v3, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    sub-float/2addr v4, v3

    .line 1090
    iget v3, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    if-ge v3, v2, :cond_15

    .line 1091
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_11

    .line 1092
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    add-float/2addr v0, v4

    iput v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 1093
    aget v0, p7, v11

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    aput v0, p7, v11

    goto :goto_8

    .line 1095
    :cond_11
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 1096
    aget v2, p7, v11

    add-int/2addr v2, v0

    aput v2, p7, v11

    .line 1098
    :goto_8
    invoke-direct {p0, v10}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 1099
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-direct {p0, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v0

    neg-float v0, v0

    invoke-direct {p0, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 1100
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    add-int/2addr v0, v11

    iput v0, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    goto :goto_a

    .line 1080
    :cond_12
    :goto_9
    iput-boolean v11, v8, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz v13, :cond_13

    int-to-float v0, v9

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_13

    .line 1082
    iget-object v0, v8, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0, v9}, Lmiuix/springback/view/SpringScroller;->setFirstStep(I)V

    .line 1084
    :cond_13
    invoke-direct {p0, v10}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto :goto_a

    .line 1103
    :cond_14
    iget-object v2, v8, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v2}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1104
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 1105
    invoke-direct {p0, v11}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 1106
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-direct {p0, v2, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v2

    neg-float v2, v2

    invoke-direct {p0, v2, v1}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 1107
    aget v1, p7, v11

    add-int/2addr v1, v0

    aput v1, p7, v11

    :cond_15
    :goto_a
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 1190
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 p1, p3, 0x2

    .line 1191
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->startNestedScroll(I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 5

    .line 1155
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz v0, :cond_7

    .line 1156
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 1158
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollX()I

    move-result v0

    :goto_2
    int-to-float v0, v0

    const/4 v4, 0x0

    if-eqz p4, :cond_4

    cmpl-float p4, v0, v4

    if-nez p4, :cond_3

    .line 1161
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    goto :goto_3

    .line 1163
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p4, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p4

    iput p4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 1165
    :goto_3
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 1166
    iput v2, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    goto :goto_5

    :cond_4
    cmpl-float p4, v0, v4

    if-nez p4, :cond_5

    .line 1169
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 1170
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_4

    :cond_5
    cmpg-float p4, v0, v4

    if-gez p4, :cond_6

    .line 1172
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p4, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p4

    iput p4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 1173
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_4

    .line 1175
    :cond_6
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 1176
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p4, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p4

    iput p4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 1178
    :goto_4
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    .line 1180
    :goto_5
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    .line 1181
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    .line 1182
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    .line 1183
    iget-object p4, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p4}, Lmiuix/springback/view/SpringScroller;->forceStop()V

    .line 1185
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 4

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 259
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/springback/view/SpringBackLayout$OnScrollListener;

    sub-int v2, p1, p3

    sub-int v3, p2, p4

    .line 260
    invoke-interface {v1, p0, v2, v3}, Lmiuix/springback/view/SpringBackLayout$OnScrollListener;->onScrolled(Lmiuix/springback/view/SpringBackLayout;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 1150
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->isEnabled()Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 4

    .line 1126
    iget-boolean p2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    .line 1127
    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 p2, 0x2

    const/4 v1, 0x0

    if-ne p3, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    .line 1130
    :goto_1
    iget v3, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr p2, v3

    if-nez p2, :cond_2

    return v1

    .line 1133
    :cond_2
    invoke-virtual {p0, p1, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    if-eqz v2, :cond_4

    .line 1136
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result p1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollX()I

    move-result p1

    :goto_2
    int-to-float p1, p1

    if-eqz p4, :cond_5

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_5

    .line 1137
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of p1, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_5

    return v1

    .line 1141
    :cond_5
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 3

    .line 1321
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1322
    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->stopNestedScroll(I)V

    .line 1323
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-nez p1, :cond_0

    return-void

    .line 1326
    :cond_0
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 p2, 0x2

    .line 1328
    :cond_2
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    if-eqz v2, :cond_5

    .line 1329
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    if-eqz p1, :cond_3

    .line 1330
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollX()I

    move-result p1

    :goto_1
    int-to-float p1, p1

    .line 1331
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    const/4 v2, 0x0

    if-nez v0, :cond_4

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_4

    .line 1332
    invoke-direct {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    goto :goto_3

    :cond_4
    cmpl-float p1, p1, v2

    if-eqz p1, :cond_9

    .line 1334
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto :goto_3

    .line 1336
    :cond_5
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    if-eqz p1, :cond_9

    .line 1337
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 1338
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz p1, :cond_8

    .line 1339
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_7

    if-ne p2, v1, :cond_6

    .line 1340
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    goto :goto_2

    :cond_6
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    .line 1341
    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/springback/view/SpringBackLayout;->springBack(FIZ)V

    .line 1344
    :cond_7
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->postInvalidateOnAnimation()V

    goto :goto_3

    .line 1346
    :cond_8
    invoke-direct {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 583
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 591
    :cond_1
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 592
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->forceStop()V

    :cond_2
    const/4 v0, 0x2

    .line 595
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 596
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onVerticalTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    const/4 v0, 0x1

    .line 597
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 598
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onHorizontalTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v2
.end method

.method public removeOnScrollListener(Lmiuix/springback/view/SpringBackLayout$OnScrollListener;)V
    .locals 1

    .line 1447
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 559
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-nez v0, :cond_1

    .line 560
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return-void
.end method

.method public requestDisallowParentInterceptTouchEvent(Z)V
    .locals 2

    .line 569
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 570
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    if-eqz v0, :cond_1

    .line 572
    instance-of v1, v0, Lmiuix/springback/view/SpringBackLayout;

    if-eqz v1, :cond_0

    .line 573
    move-object v1, v0

    check-cast v1, Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v1, p1}, Lmiuix/springback/view/SpringBackLayout;->internalRequestDisallowInterceptTouchEvent(Z)V

    .line 575
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 166
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v0, v0, Landroidx/core/view/NestedScrollingChild3;

    if-eqz v0, :cond_0

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 170
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1311
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnSpringListener(Lmiuix/springback/view/SpringBackLayout$OnSpringListener;)V
    .locals 0

    .line 1451
    iput-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

    return-void
.end method

.method public setScrollOrientation(I)V
    .locals 1

    .line 152
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 153
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    iput p1, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTargetScrollOrientation:I

    return-void
.end method

.method public setSpringBackEnable(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    return-void
.end method

.method public setSpringBackMode(I)V
    .locals 0

    .line 157
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 1

    .line 185
    iput-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 186
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 187
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v0, p1, Landroidx/core/view/NestedScrollingChild3;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 188
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public smoothScrollTo(II)V
    .locals 9

    .line 1419
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result v0

    sub-int v0, p2, v0

    if-eqz v0, :cond_1

    .line 1420
    :cond_0
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->forceStop()V

    .line 1421
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollX()I

    move-result v0

    int-to-float v2, v0

    int-to-float v3, p1

    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result p1

    int-to-float v4, p1

    int-to-float v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lmiuix/springback/view/SpringScroller;->scrollByFling(FFFFFIZ)V

    const/4 p1, 0x2

    .line 1423
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 1424
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method public springBackEnable()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    return v0
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1380
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .locals 1

    .line 1375
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1354
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1

    .line 1385
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method
