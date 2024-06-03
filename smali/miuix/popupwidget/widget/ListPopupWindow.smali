.class public Lmiuix/popupwidget/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;,
        Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;,
        Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;,
        Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;,
        Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;,
        Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x10102ff

    .line 164
    invoke-direct {p0, p1, v0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10102ff

    .line 175
    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    .line 105
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v0, p0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTouchInterceptor:Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 107
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v0, p0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mScrollListener:Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

    .line 109
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v0, p0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHideSelector:Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;

    const v0, 0x7fffffff

    .line 111
    iput v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mListItemExpandMaximum:I

    const/4 v0, -0x2

    .line 121
    iput v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHeight:I

    .line 123
    iput v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 133
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 137
    iput v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptPosition:I

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 187
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 188
    new-instance v0, Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-direct {v0, p1, p2, p3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    return-void
.end method

.method static synthetic access$1000(Lmiuix/popupwidget/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;
    .locals 0

    .line 38
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ArrowPopupWindow;
    .locals 0

    .line 38
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 0

    .line 38
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    return-object p0
.end method

.method private buildDropDown()I
    .locals 12

    .line 888
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_5

    .line 889
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 897
    new-instance v5, Lmiuix/popupwidget/widget/ListPopupWindow$1;

    invoke-direct {v5, p0}, Lmiuix/popupwidget/widget/ListPopupWindow$1;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    iput-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 907
    new-instance v5, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    iget-boolean v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mModal:Z

    xor-int/2addr v6, v4

    invoke-direct {v5, v0, v6}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 908
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 909
    invoke-virtual {v5, v6}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 911
    :cond_0
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 912
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 913
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v5, v4}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 914
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v5, v4}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 915
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    new-instance v6, Lmiuix/popupwidget/widget/ListPopupWindow$2;

    invoke-direct {v6, p0}, Lmiuix/popupwidget/widget/ListPopupWindow$2;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    invoke-virtual {v5, v6}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 931
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mScrollListener:Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v5, v6}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 933
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_1

    .line 934
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v6, v5}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 937
    :cond_1
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 939
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 943
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 944
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 946
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 948
    iget v8, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptPosition:I

    if-eqz v8, :cond_3

    if-eq v8, v4, :cond_2

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hint position "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ListPopupWindow"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 950
    :cond_2
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 951
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 955
    :cond_3
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 956
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 966
    :goto_0
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 968
    invoke-virtual {v6, v0, v3}, Landroid/view/View;->measure(II)V

    .line 970
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 971
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    move v0, v5

    move-object v5, v7

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 977
    :goto_1
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v6, v5}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_2

    .line 979
    :cond_5
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 982
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 983
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 991
    :goto_2
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v5}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 993
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 994
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    .line 998
    iget-boolean v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v6, :cond_8

    .line 999
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    iput v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_3

    .line 1002
    :cond_7
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v5, 0x0

    .line 1006
    :cond_8
    :goto_3
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 1007
    invoke-virtual {v6}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getInputMethodMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    const/4 v3, 0x1

    .line 1009
    :cond_9
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    iget v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1008
    invoke-virtual {p0, v4, v6, v3}, Lmiuix/popupwidget/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v3

    .line 1011
    iget-boolean v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v4, :cond_e

    iget v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v4, v2, :cond_a

    goto :goto_5

    .line 1016
    :cond_a
    iget v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v6, -0x2

    if-eq v4, v6, :cond_c

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v4, v2, :cond_b

    .line 1030
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    .line 1024
    :cond_b
    iget-object v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1025
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v6

    sub-int/2addr v2, v4

    .line 1024
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    .line 1018
    :cond_c
    iget-object v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1019
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v6

    sub-int/2addr v2, v4

    .line 1018
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_4
    move v7, v1

    .line 1034
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    const/4 v8, 0x0

    const/4 v9, -0x1

    sub-int v10, v3, v0

    const/4 v11, -0x1

    invoke-virtual/range {v6 .. v11}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildrenCompact(IIIII)I

    move-result v1

    if-lez v1, :cond_d

    add-int/2addr v0, v5

    :cond_d
    add-int/2addr v1, v0

    return v1

    :cond_e
    :goto_5
    add-int/2addr v3, v5

    return v3
.end method

.method private removePromptView()V
    .locals 2

    .line 592
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 594
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 595
    check-cast v0, Landroid/view/ViewGroup;

    .line 596
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .line 645
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 648
    invoke-static {v0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->access$502(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 650
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x1

    .line 569
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->dismiss(Z)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 1

    .line 576
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 577
    invoke-direct {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->removePromptView()V

    const/4 p1, 0x0

    .line 578
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 579
    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .line 367
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .line 349
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 331
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 453
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 384
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .line 607
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 740
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 4

    .line 1061
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1062
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1065
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1067
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_0

    .line 1069
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 1070
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget v2, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    const/4 p3, 0x1

    aget v3, v1, p3

    .line 1072
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    aget p1, v1, p3

    .line 1073
    iget p3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 1076
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1077
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p2}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1078
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p2}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p3, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1079
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p3

    sub-int/2addr p1, p2

    :cond_1
    return p1
.end method

.method public getPopupWindow()Lmiuix/popupwidget/widget/ArrowPopupWindow;
    .locals 1

    .line 195
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .line 226
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .line 693
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 696
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 717
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 720
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 705
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 708
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .line 729
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 732
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSoftInputMode()I
    .locals 1

    .line 303
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 400
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 403
    :cond_0
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 420
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .line 666
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isModal()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 658
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11

    .line 764
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_a

    .line 770
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 771
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    const/16 v2, 0x17

    const/16 v3, 0x42

    if-gez v0, :cond_0

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_a

    .line 774
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 777
    iget-object v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->isAboveAnchor()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 779
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    if-eqz v6, :cond_3

    .line 786
    invoke-interface {v6}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    .line 787
    :cond_1
    iget-object v8, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 788
    invoke-static {v8, v1, v5}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->access$600(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v8

    :goto_0
    if-eqz v7, :cond_2

    .line 789
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v5

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 790
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-static {v7, v6, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->access$600(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v6

    :goto_1
    move v7, v8

    move v8, v6

    :cond_3
    const/16 v6, 0x13

    if-eqz v4, :cond_4

    if-ne p1, v6, :cond_4

    if-le v0, v7, :cond_5

    :cond_4
    const/16 v9, 0x14

    if-nez v4, :cond_6

    if-ne p1, v9, :cond_6

    if-lt v0, v8, :cond_6

    .line 797
    :cond_5
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->clearListSelection()V

    .line 798
    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p1, v5}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 799
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->show()V

    return v5

    .line 804
    :cond_6
    iget-object v10, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-static {v10, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->access$502(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 807
    iget-object v10, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v10, p1, p2}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 815
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 820
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {p2}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 821
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->show()V

    if-eq p1, v6, :cond_7

    if-eq p1, v9, :cond_7

    if-eq p1, v2, :cond_7

    if-eq p1, v3, :cond_7

    goto :goto_2

    :cond_7
    return v5

    :cond_8
    if-eqz v4, :cond_9

    if-ne p1, v9, :cond_9

    if-ne v0, v8, :cond_a

    return v5

    :cond_9
    if-nez v4, :cond_a

    if-ne p1, v6, :cond_a

    if-ne v0, v7, :cond_a

    return v5

    :cond_a
    :goto_2
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 860
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_2

    .line 861
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, p1, p2}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 869
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow;->dismiss(Z)V

    :cond_1
    :goto_0
    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public performItemClick(I)Z
    .locals 7

    .line 677
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 679
    iget-object v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 680
    invoke-virtual {v2}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v2, v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 681
    invoke-virtual {v2}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 682
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public postShow()V
    .locals 2

    .line 506
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 207
    :cond_0
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 208
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 210
    :cond_1
    :goto_0
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    .line 212
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 215
    :cond_2
    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    if-eqz p1, :cond_3

    .line 216
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1

    .line 358
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentWidth(I)V
    .locals 2

    .line 440
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 443
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow;->setWidth(I)V

    :goto_0
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0

    .line 293
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 462
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHeight:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .line 393
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1

    .line 622
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0

    .line 750
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mListItemExpandMaximum:I

    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setModal(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mModal:Z

    .line 260
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .line 588
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0

    .line 238
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptPosition:I

    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1

    .line 492
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-direct {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->removePromptView()V

    .line 496
    :cond_0
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 498
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->show()V

    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2

    .line 631
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 632
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 633
    invoke-static {v0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->access$502(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 634
    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 635
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 636
    invoke-virtual {v0, p1, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1

    .line 315
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setSoftInputMode(I)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    .line 412
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    const/4 p1, 0x1

    .line 413
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 430
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    return-void
.end method

.method public show()V
    .locals 6

    .line 514
    invoke-direct {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->buildDropDown()I

    move-result v5

    .line 519
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 523
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentWidth(I)V

    goto :goto_0

    .line 525
    :cond_1
    iget-object v3, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v3, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentWidth(I)V

    .line 529
    :goto_0
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    .line 533
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, v5}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentHeight(I)V

    goto :goto_1

    .line 535
    :cond_3
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v1, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentHeight(I)V

    .line 539
    :goto_1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setFocusable(Z)V

    .line 540
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->isShowing()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 541
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    iget-boolean v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setOutsideTouchable(Z)V

    .line 543
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-virtual/range {v0 .. v5}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_4

    .line 546
    :cond_5
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, v2, v2}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setWindowLayoutMode(II)V

    .line 550
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    iget-boolean v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setOutsideTouchable(Z)V

    .line 551
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTouchInterceptor:Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 552
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v3, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v3, v4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    .line 554
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v2}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 556
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 557
    :cond_7
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->clearListSelection()V

    .line 559
    :cond_8
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_9

    .line 560
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHideSelector:Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_4
    return-void
.end method
