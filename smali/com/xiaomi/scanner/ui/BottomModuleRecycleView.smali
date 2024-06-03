.class public Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "BottomModuleRecycleView.java"

# interfaces
.implements Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;,
        Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ModuleSelectListener;
    }
.end annotation


# static fields
.field private static final MAX_INTERNATIONAL_SHOW_PAGE:I = 0x5

.field private static final MAX_SHOW_PAGE:I = 0x6

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private adapter:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;

.field private canScrollByTakePic:Z

.field private currentIndex:I

.field private mLayoutManager:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;

.field private mModuleDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mModuleSelectListener:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ModuleSelectListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "BottomModuleRecycleView"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->canScrollByTakePic:Z

    .line 51
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->scrollToSelectPosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;)Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->adapter:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mModuleDataList:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mModuleDataList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->adapter:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;

    .line 57
    new-instance v0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;-><init>(Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mLayoutManager:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;

    .line 58
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->adapter:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->setOnItemClickListener(Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$OnItemClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mLayoutManager:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->adapter:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private scrollToSelectPosition()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->adapter:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;

    iget v1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->setCurrentFoces(I)V

    .line 111
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mModuleSelectListener:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ModuleSelectListener;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mModuleDataList:Ljava/util/List;

    iget v2, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->currentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    invoke-interface {v1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ModuleSelectListener;->onModuleSelect(I)V

    .line 112
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mLayoutManager:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;

    iget v1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->adapter:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->getOffsetWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ScrollSpeedLinearLayoutManger;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private smoothScrollToSelectPosition()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->adapter:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;

    iget v1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->setCurrentFoces(I)V

    .line 105
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mModuleSelectListener:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ModuleSelectListener;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mModuleDataList:Ljava/util/List;

    iget v2, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->currentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    invoke-interface {v1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ModuleSelectListener;->onModuleSelect(I)V

    .line 106
    iget v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->smoothScrollToPosition(I)V

    return-void
.end method


# virtual methods
.method public addModuleItemList(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;I)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mModuleDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mModuleDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->adapter:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mModuleDataList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->refreshData(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mModuleDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mModuleDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 70
    iput p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->currentIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 76
    :cond_1
    :goto_1
    new-instance p1, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$1;-><init>(Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 0

    .line 118
    iget-boolean p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->canScrollByTakePic:Z

    if-nez p1, :cond_0

    return-void

    .line 120
    :cond_0
    iput p2, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->currentIndex:I

    .line 121
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->smoothScrollToSelectPosition()V

    return-void
.end method

.method public scrollLeftOrRight(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 93
    iget v1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->currentIndex:I

    if-eqz v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 94
    iput v1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->currentIndex:I

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 95
    iget p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->currentIndex:I

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mModuleDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_1

    .line 96
    iget p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->currentIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->currentIndex:I

    .line 99
    :goto_0
    sget-object p1, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update selected index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->smoothScrollToSelectPosition()V

    :cond_1
    return-void
.end method

.method public setCanScrollByTakePic(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->canScrollByTakePic:Z

    return-void
.end method

.method public setmModuleSelectListener(Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ModuleSelectListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->mModuleSelectListener:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ModuleSelectListener;

    return-void
.end method
