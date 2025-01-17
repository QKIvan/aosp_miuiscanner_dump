.class public Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;
.super Lmiuix/internal/widget/ListPopup;
.source "ImmersionMenuPopupWindowImpl.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;


# instance fields
.field private mActionBarDelegate:Lmiuix/appcompat/app/ActionBarDelegateImpl;

.field private mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

.field private mLastAnchor:Landroid/view/View;

.field private mLastParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;Landroid/view/Menu;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mActionBarDelegate:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    .line 33
    new-instance p1, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    invoke-direct {p1, v0, p2}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    .line 34
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    new-instance p1, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;-><init>(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;
    .locals 0

    .line 21
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/View;
    .locals 0

    .line 21
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 21
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lmiuix/appcompat/app/ActionBarDelegateImpl;
    .locals 0

    .line 21
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mActionBarDelegate:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    return-object p0
.end method

.method private adjustOffset(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    if-nez p2, :cond_0

    const-string p1, "ImmersionMenu"

    const-string p2, "ImmersionMenuPopupWindow offset can\'t be adjusted without parent"

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 75
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    new-array v0, v0, [I

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    aget v3, v0, v2

    aget v2, v1, v2

    sub-int/2addr v3, v2

    .line 78
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->getOffsetFromStatusBar()I

    move-result v2

    sub-int/2addr v3, v2

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v3

    neg-int v2, v2

    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->setVerticalOffset(I)V

    .line 82
    invoke-static {p2}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->getMinMarginScreen()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    aget v0, v0, v2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v0, p1

    .line 87
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->getMinMarginScreen()I

    move-result p2

    sub-int/2addr p1, p2

    .line 89
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->setHorizontalOffset(I)V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->dismiss()V

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    .line 64
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    .line 65
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->adjustOffset(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 66
    invoke-super {p0, p1, p2}, Lmiuix/internal/widget/ListPopup;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->update(Landroid/view/Menu;)V

    return-void
.end method
