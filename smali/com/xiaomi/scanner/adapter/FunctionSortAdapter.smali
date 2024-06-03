.class public Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FunctionSortAdapter.java"

# interfaces
.implements Lcom/xiaomi/scanner/ui/helper/ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;",
        ">;",
        "Lcom/xiaomi/scanner/ui/helper/ItemTouchHelperAdapter;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final mDragStartListener:Lcom/xiaomi/scanner/ui/helper/OnStartDragListener;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/scanner/ui/helper/OnStartDragListener;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/scanner/ui/helper/OnStartDragListener;",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->mDragStartListener:Lcom/xiaomi/scanner/ui/helper/OnStartDragListener;

    .line 55
    iput-object p1, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->context:Landroid/content/Context;

    .line 56
    iput-object p3, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;)Lcom/xiaomi/scanner/ui/helper/OnStartDragListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->mDragStartListener:Lcom/xiaomi/scanner/ui/helper/OnStartDragListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getmItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 43
    check-cast p1, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->onBindViewHolder(Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;I)V
    .locals 3

    .line 74
    iget-object v0, p1, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    invoke-interface {v2}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getTitleResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p1, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;->handleView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    invoke-interface {p2}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getIconResourceSortId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object p2, p1, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$1;-><init>(Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;
    .locals 2

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d003d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;

    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p1, v0}, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-object p2
.end method

.method public onItemDismiss(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public onItemMove(II)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->mItems:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->notifyItemMoved(II)V

    const/4 p1, 0x1

    return p1
.end method
