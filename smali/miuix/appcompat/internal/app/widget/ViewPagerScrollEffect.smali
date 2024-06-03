.class Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"

# interfaces
.implements Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;


# instance fields
.field mBaseItem:I

.field mBaseItemUpdated:Z

.field mIncomingPosition:I

.field mListView:Landroid/view/ViewGroup;

.field mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

.field mScrollBasePosition:I

.field mViewPager:Lmiuix/viewpager/widget/ViewPager;

.field sList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field sRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lmiuix/viewpager/widget/ViewPager;Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;)V
    .locals 2

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sRect:Landroid/graphics/Rect;

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 608
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItem:I

    const/4 v1, 0x1

    .line 609
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 613
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mScrollBasePosition:I

    .line 616
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mIncomingPosition:I

    const/4 v0, 0x0

    .line 619
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    .line 626
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 627
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    return-void
.end method


# virtual methods
.method clearTranslation(Landroid/view/ViewGroup;)V
    .locals 2

    .line 732
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->fillList(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 733
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 734
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    .line 735
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method clearTranslation(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 722
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 723
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 724
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 725
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method computOffset(IIIF)I
    .locals 1

    if-ge p1, p3, :cond_0

    mul-int p1, p1, p2

    .line 761
    div-int/2addr p1, p3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    mul-float p4, p4, p4

    int-to-float p1, p1

    const p3, 0x3dcccccd    # 0.1f

    const v0, 0x3f666666    # 0.9f

    div-float/2addr p4, v0

    sub-float/2addr p3, p4

    int-to-float p2, p2

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_1

    float-to-int p1, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method fillList(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 704
    invoke-virtual {p0, p2, p1}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->clearTranslation(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    .line 705
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 707
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sRect:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lmiuix/internal/util/ViewUtils;->getContentRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 708
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 712
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 714
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 715
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_2

    .line 716
    :cond_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 693
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lmiuix/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItem:I

    const/4 p1, 0x1

    .line 694
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 696
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 697
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->clearTranslation(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 7

    const/4 p3, 0x0

    const/4 p4, 0x1

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    .line 634
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItem:I

    .line 635
    iput-boolean p4, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 637
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->clearTranslation(Landroid/view/ViewGroup;)V

    .line 642
    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mScrollBasePosition:I

    if-eq v0, p1, :cond_3

    .line 643
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItem:I

    if-ge v0, p1, :cond_1

    .line 644
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItem:I

    goto :goto_0

    :cond_1
    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_2

    .line 646
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItem:I

    .line 648
    :cond_2
    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mScrollBasePosition:I

    .line 649
    iput-boolean p4, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 651
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 652
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->clearTranslation(Landroid/view/ViewGroup;)V

    :cond_3
    cmpl-float p3, p2, p3

    if-lez p3, :cond_8

    .line 658
    iget-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 659
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 660
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItem:I

    if-ne p3, p1, :cond_4

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getCount()I

    move-result p3

    sub-int/2addr p3, p4

    if-ge p1, p3, :cond_4

    add-int/lit8 p3, p1, 0x1

    .line 661
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mIncomingPosition:I

    goto :goto_1

    .line 663
    :cond_4
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mIncomingPosition:I

    .line 665
    :goto_1
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mIncomingPosition:I

    invoke-virtual {p3, v1, v0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroidx/fragment/app/Fragment;

    move-result-object p3

    const/4 v1, 0x0

    .line 666
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    if-eqz p3, :cond_5

    .line 667
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 668
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p3

    const v1, 0x102000a

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 669
    instance-of v1, p3, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 670
    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    .line 675
    :cond_5
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mIncomingPosition:I

    if-ne p3, p1, :cond_6

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float p2, p3, p2

    :cond_6
    move v5, p2

    .line 679
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    .line 681
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mIncomingPosition:I

    if-eq p2, p1, :cond_7

    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :goto_2
    move-object v1, p0

    .line 680
    invoke-virtual/range {v1 .. v6}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->translateView(Landroid/view/ViewGroup;IIFZ)V

    :cond_8
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method translateView(Landroid/view/ViewGroup;IIFZ)V
    .locals 6

    .line 741
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->fillList(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 742
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 743
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    const v1, 0x7fffffff

    .line 746
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 747
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 748
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v1, v0, p1

    .line 749
    invoke-virtual {p0, v1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->computOffset(IIIF)I

    move-result v1

    if-eqz p5, :cond_0

    goto :goto_1

    :cond_0
    neg-int v1, v1

    :goto_1
    move v5, v1

    move v1, v0

    move v0, v5

    :cond_1
    int-to-float v4, v0

    .line 753
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_2
    return-void
.end method
