.class Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "BottomModuleRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;Landroid/content/Context;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger$1;->this$1:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 0

    sub-int/2addr p3, p1

    .line 158
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger$1;->this$1:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;

    iget-object p1, p1, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;->this$0:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;

    invoke-static {p1}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->access$200(Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;)Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->getOffsetWidth()I

    move-result p1

    add-int/2addr p3, p1

    return p3
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger$1;->this$1:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;->access$100(Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;)F

    move-result v0

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger$1;->this$1:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;

    .line 147
    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
