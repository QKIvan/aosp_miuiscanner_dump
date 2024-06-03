.class public Lmiuix/internal/widget/PopupMenuWindow;
.super Lmiuix/internal/widget/ListPopup;
.source "PopupMenuWindow.java"


# instance fields
.field private mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

.field private mLastAnchor:Landroid/view/View;

.field private mLastParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Lmiuix/internal/widget/PopupMenuAdapter;

    invoke-direct {v0, p1}, Lmiuix/internal/widget/PopupMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/internal/widget/PopupMenuWindow;->mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

    .line 24
    invoke-virtual {p0, v0}, Lmiuix/internal/widget/PopupMenuWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    new-instance p1, Lmiuix/internal/widget/PopupMenuWindow$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lmiuix/internal/widget/PopupMenuWindow$$ExternalSyntheticLambda0;-><init>(Lmiuix/internal/widget/PopupMenuWindow;)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 39
    new-instance p1, Lmiuix/internal/widget/PopupMenuWindow$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lmiuix/internal/widget/PopupMenuWindow$$ExternalSyntheticLambda1;-><init>(Lmiuix/internal/widget/PopupMenuWindow;)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$1$miuix-internal-widget-PopupMenuWindow(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 26
    iget-object p1, p0, Lmiuix/internal/widget/PopupMenuWindow;->mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

    invoke-virtual {p1, p3}, Lmiuix/internal/widget/PopupMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 27
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 28
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    .line 29
    new-instance p2, Lmiuix/internal/widget/PopupMenuWindow$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lmiuix/internal/widget/PopupMenuWindow$$ExternalSyntheticLambda2;-><init>(Lmiuix/internal/widget/PopupMenuWindow;Landroid/view/SubMenu;)V

    invoke-virtual {p0, p2}, Lmiuix/internal/widget/PopupMenuWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuWindow;->onMenuItemClick(Landroid/view/MenuItem;)V

    .line 37
    :goto_0
    invoke-virtual {p0}, Lmiuix/internal/widget/PopupMenuWindow;->dismiss()V

    return-void
.end method

.method synthetic lambda$null$0$miuix-internal-widget-PopupMenuWindow(Landroid/view/SubMenu;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lmiuix/internal/widget/PopupMenuWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 31
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuWindow;->update(Landroid/view/Menu;)V

    .line 32
    iget-object p1, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastAnchor:Landroid/view/View;

    iget-object v0, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lmiuix/internal/widget/PopupMenuWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onDismiss()V
    .locals 0

    return-void
.end method

.method protected onMenuItemClick(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastAnchor:Landroid/view/View;

    .line 49
    iput-object p2, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastParent:Landroid/view/ViewGroup;

    .line 50
    invoke-super {p0, p1, p2}, Lmiuix/internal/widget/ListPopup;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lmiuix/internal/widget/PopupMenuWindow;->mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/PopupMenuAdapter;->update(Landroid/view/Menu;)V

    return-void
.end method
