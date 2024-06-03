.class public Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ModuleItemListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public textView:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 142
    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;->textView:Landroid/widget/CheckedTextView;

    return-void
.end method
