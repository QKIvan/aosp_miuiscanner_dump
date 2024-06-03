.class Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$1;
.super Ljava/lang/Object;
.source "FunctionSortAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->onBindViewHolder(Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;

.field final synthetic val$holder:Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$1;->this$0:Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;

    iput-object p2, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$1;->val$holder:Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 81
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result p1

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$1;->this$0:Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;

    invoke-static {p1}, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->access$000(Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;)Lcom/xiaomi/scanner/ui/helper/OnStartDragListener;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$1;->val$holder:Lcom/xiaomi/scanner/adapter/FunctionSortAdapter$ItemViewHolder;

    invoke-interface {p1, p2}, Lcom/xiaomi/scanner/ui/helper/OnStartDragListener;->onStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
