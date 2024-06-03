.class public Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;
.super Landroidx/appcompat/app/ActionBar$Tab;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInternalCallback:Landroidx/appcompat/app/ActionBar$TabListener;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field public mWithAnim:Z

.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .locals 0

    .line 1617
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar$Tab;-><init>()V

    const/4 p1, -0x1

    .line 1631
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    const/4 p1, 0x1

    .line 1635
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mWithAnim:Z

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;
    .locals 0

    .line 1617
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mInternalCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;
    .locals 0

    .line 1617
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    return-object p0
.end method


# virtual methods
.method public getCallback()Landroidx/appcompat/app/ActionBar$TabListener;
    .locals 1

    .line 1649
    invoke-static {}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$300()Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1766
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1665
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1687
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1692
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1639
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1701
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .line 1742
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    return-void
.end method

.method public setContentDescription(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 1747
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 1748
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1747
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 1753
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 1755
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    .line 1756
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1757
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1758
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1759
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 2

    .line 1681
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 1682
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1681
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setCustomView(Landroid/view/View;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setCustomView(Landroid/view/View;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 1670
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    .line 1671
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setExpandState(I)V

    .line 1672
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setResizable(Z)V

    .line 1673
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    .line 1674
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public setIcon(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 1719
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 1706
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1708
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    .line 1709
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1710
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1711
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1712
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public setInternalTabListener(Landroidx/appcompat/app/ActionBar$TabListener;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 0

    .line 1659
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mInternalCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    return-object p0
.end method

.method public setPosition(I)V
    .locals 0

    .line 1696
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    return-void
.end method

.method public setTabListener(Landroidx/appcompat/app/ActionBar$TabListener;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 0

    .line 1654
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 0

    .line 1644
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 1737
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 1724
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 1726
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    .line 1727
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1728
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1729
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1730
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method
