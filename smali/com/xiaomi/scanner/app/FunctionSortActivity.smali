.class public Lcom/xiaomi/scanner/app/FunctionSortActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "FunctionSortActivity.java"

# interfaces
.implements Lcom/xiaomi/scanner/ui/helper/OnStartDragListener;


# static fields
.field public static final NOTIFY_FUNCTION_SORT_REFRESH:Ljava/lang/String; = "notifyFunctionSortRefresh"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private functionSortAdapter:Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;

.field private functionSortRecycleview:Lmiuix/recyclerview/widget/RecyclerView;

.field private isDrag:Z

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "FunctionSortActivity"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->isDrag:Z

    return-void
.end method

.method private initData()V
    .locals 2

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleListBySortId()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 61
    :cond_0
    new-instance v1, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;

    invoke-direct {v1, p0, p0, v0}, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;-><init>(Landroid/content/Context;Lcom/xiaomi/scanner/ui/helper/OnStartDragListener;Ljava/util/List;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->functionSortAdapter:Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;

    .line 62
    iget-object v0, p0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->functionSortRecycleview:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lmiuix/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    iget-object v0, p0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->functionSortRecycleview:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 64
    iget-object v0, p0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->functionSortRecycleview:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->functionSortAdapter:Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;

    invoke-virtual {v0, v1}, Lmiuix/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    new-instance v0, Lcom/xiaomi/scanner/ui/helper/SimpleItemTouchHelperCallback;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->functionSortAdapter:Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/ui/helper/SimpleItemTouchHelperCallback;-><init>(Lcom/xiaomi/scanner/ui/helper/ItemTouchHelperAdapter;)V

    .line 66
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 67
    iget-object v0, p0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->functionSortRecycleview:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private refreshSortSetting()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->functionSortAdapter:Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/adapter/FunctionSortAdapter;->getmItems()Ljava/util/List;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 77
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    invoke-interface {v3}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getTitleResourceId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&"

    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "functionSortInfor"

    invoke-static {v2, v0}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "notifyFunctionSortRefresh"

    .line 83
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/app/FunctionSortActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    sget-object v0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672c\u5730\u5b58\u50a8\u6392\u5e8f\u4fe1\u606f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static showFunctionSort(Landroid/content/Context;)V
    .locals 2

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/scanner/app/FunctionSortActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-static {p1}, Lcom/xiaomi/scanner/app/ScanContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001e

    .line 51
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/app/FunctionSortActivity;->setContentView(I)V

    const p1, 0x7f0a0139

    .line 52
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/app/FunctionSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->functionSortRecycleview:Lmiuix/recyclerview/widget/RecyclerView;

    .line 53
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/FunctionSortActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 107
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 98
    sget-object v0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->isDrag:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/FunctionSortActivity;->refreshSortSetting()V

    .line 102
    :cond_0
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 91
    sget-object v0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStartDrag"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/xiaomi/scanner/app/FunctionSortActivity;->isDrag:Z

    return-void
.end method
