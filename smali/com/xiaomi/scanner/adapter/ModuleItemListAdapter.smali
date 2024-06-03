.class public Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ModuleItemListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$OnItemClickListener;,
        Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_INTERNATIONAL_SHOW_PAGE:I = 0x5

.field private static final MAX_SHOW_PAGE:I = 0x6


# instance fields
.field private context:Landroid/content/Context;

.field private focusIndex:I

.field private itemWidth:I

.field private mModuleDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private offsetWidth:I

.field private onItemClickListener:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->mModuleDataList:Ljava/util/List;

    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->itemWidth:I

    .line 30
    iput v1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->offsetWidth:I

    .line 31
    iput v1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->focusIndex:I

    .line 38
    iput-object p1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->context:Landroid/content/Context;

    .line 39
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    invoke-direct {p0, p2}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->addNullFirstAndListData(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;II)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->mModuleDataList:Ljava/util/List;

    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->itemWidth:I

    .line 30
    iput v1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->offsetWidth:I

    .line 31
    iput v1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->focusIndex:I

    .line 44
    iput-object p1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->context:Landroid/content/Context;

    .line 45
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    iput p4, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->offsetWidth:I

    .line 47
    iput p3, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->itemWidth:I

    .line 48
    invoke-direct {p0, p2}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->addNullFirstAndListData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;)Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$OnItemClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->onItemClickListener:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$OnItemClickListener;

    return-object p0
.end method

.method private addNullFirstAndListData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 60
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->mModuleDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-eqz p1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->mModuleDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getOffsetWidth()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->offsetWidth:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->onBindViewHolder(Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;I)V
    .locals 5

    .line 108
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    iget-object p2, p1, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;->textView:Landroid/widget/CheckedTextView;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p2, p1, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;->textView:Landroid/widget/CheckedTextView;

    invoke-virtual {p2, v1}, Landroid/widget/CheckedTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p1, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;->textView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->mModuleDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 115
    iget-object v2, p1, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;->textView:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getTitleResourceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v2, p1, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;->textView:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getTitleResourceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v2, p1, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;->textView:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getIconResourceId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v0, p1, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;->textView:Landroid/widget/CheckedTextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    .line 119
    iget v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->focusIndex:I

    if-ne v0, p2, :cond_1

    .line 120
    iget-object v0, p1, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;->textView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p1, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;->textView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 124
    :goto_0
    iget-object p1, p1, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;->textView:Landroid/widget/CheckedTextView;

    new-instance v0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$1;-><init>(Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;
    .locals 3

    .line 86
    iget v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->itemWidth:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->offsetWidth:I

    if-nez v0, :cond_1

    .line 87
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v0

    const v1, 0x7f070294

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->itemWidth:I

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->itemWidth:I

    .line 92
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->itemWidth:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->offsetWidth:I

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d003f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    if-nez p2, :cond_2

    .line 98
    iget p2, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->offsetWidth:I

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setWidth(I)V

    goto :goto_1

    .line 100
    :cond_2
    iget p2, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->itemWidth:I

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setWidth(I)V

    .line 102
    :goto_1
    new-instance p2, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;

    invoke-direct {p2, p1}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->mModuleDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->mModuleDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    iget-object p1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->mModuleDataList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->addNullFirstAndListData(Ljava/util/List;)V

    .line 55
    invoke-virtual {p0}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCurrentFoces(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 72
    iput p1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->focusIndex:I

    .line 73
    invoke-virtual {p0}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$OnItemClickListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->onItemClickListener:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$OnItemClickListener;

    return-void
.end method
