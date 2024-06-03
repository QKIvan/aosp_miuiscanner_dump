.class public Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "BottomModuleRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollSpeedLinearLayoutManger"
.end annotation


# instance fields
.field private MILLISECONDS_PER_INCH:F

.field private contxt:Landroid/content/Context;

.field final synthetic this$0:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;Landroid/content/Context;IZ)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;->this$0:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;

    .line 135
    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const p1, 0x3cf5c28f    # 0.03f

    .line 131
    iput p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;->MILLISECONDS_PER_INCH:F

    .line 136
    iput-object p2, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;->contxt:Landroid/content/Context;

    const p1, 0x3e99999a    # 0.3f

    .line 137
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;->setSpeedSlow(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;)F
    .locals 0

    .line 130
    iget p0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;->MILLISECONDS_PER_INCH:F

    return p0
.end method


# virtual methods
.method public setSpeedSlow(F)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;->contxt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;->MILLISECONDS_PER_INCH:F

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 142
    new-instance p2, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger$1;

    .line 143
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger$1;-><init>(Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;Landroid/content/Context;)V

    .line 161
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 162
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
