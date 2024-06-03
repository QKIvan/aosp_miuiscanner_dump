.class public Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation


# instance fields
.field private mBadgeView:Landroid/widget/ImageView;

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mTab:Landroidx/appcompat/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 547
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;)Landroid/widget/ImageView;
    .locals 0

    .line 532
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;
    .locals 0

    .line 532
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method attach(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .locals 0

    .line 551
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 552
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    if-eqz p3, :cond_0

    const p1, 0x800013

    .line 555
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 558
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method

.method public bindTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    .line 563
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method

.method public getTab()Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 646
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 650
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public update()V
    .locals 11

    .line 567
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    .line 568
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 570
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0, v1, v2, v3}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateCustomTabView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    goto/16 :goto_2

    .line 572
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 573
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 574
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 577
    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 578
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 579
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, -0x2

    if-eqz v3, :cond_3

    .line 582
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v9, :cond_2

    .line 583
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 584
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 586
    iput v5, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 587
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    invoke-virtual {p0, v9, v6}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 589
    iput-object v9, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 591
    :cond_2
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 592
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 593
    :cond_3
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 594
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 595
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    if-eqz v4, :cond_7

    .line 599
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v3, :cond_5

    .line 600
    new-instance v3, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;

    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 601
    invoke-virtual {v9}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getTabTextStyle()I

    move-result v9

    invoke-direct {v3, v1, v2, v9}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 602
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 603
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 605
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 606
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 608
    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 610
    :cond_5
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;

    if-nez v2, :cond_8

    .line 614
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 615
    sget v3, Lmiuix/appcompat/R$attr;->actionBarTabBadgeIcon:I

    invoke-static {v1, v3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 616
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x30

    .line 620
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 621
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 623
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 624
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    if-le v3, v4, :cond_6

    sub-int/2addr v3, v4

    .line 626
    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 630
    :cond_6
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 632
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;

    goto :goto_1

    .line 634
    :cond_7
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 635
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 636
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    :cond_8
    :goto_1
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    .line 640
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_2
    return-void
.end method
