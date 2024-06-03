.class public Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FunctionSortAdapter.java"

# interfaces
.implements Lcom/xiaomi/scanner/ui/helper/ItemTouchHelperViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public final handleView:Landroid/widget/ImageView;

.field public final itemView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field public final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    .line 117
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a018e

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x7f0a0103

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;->handleView:Landroid/widget/ImageView;

    .line 120
    iput-object p1, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    .line 121
    iput-object p2, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onItemClear()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public onItemSelected()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
