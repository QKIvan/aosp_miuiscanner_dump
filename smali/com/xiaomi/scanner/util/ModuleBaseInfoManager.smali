.class public Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;
.super Ljava/lang/Object;
.source "ModuleBaseInfoManager.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static instance:Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;


# instance fields
.field private mModuleInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ModuleBaseInfor"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;
    .locals 2

    .line 31
    sget-object v0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->instance:Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->instance:Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    invoke-direct {v1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;-><init>()V

    sput-object v1, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->instance:Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->instance:Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    return-object v0
.end method

.method private getLocalSortSetting()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "functionSortInfor"

    const-string v1, ""

    .line 107
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleInfoList()Ljava/util/List;

    move-result-object v2

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 115
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getTitleResourceId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "&"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 122
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_2

    .line 123
    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    :cond_2
    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const/4 v5, 0x0

    .line 127
    :goto_2
    array-length v6, v0

    if-ge v5, v6, :cond_3

    .line 128
    aget-object v6, v0, v5

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 131
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 134
    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 135
    sget-object v0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "final==="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    invoke-interface {v4}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getTitleResourceId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-object v3
.end method

.method private getModuleName(I)Ljava/lang/String;
    .locals 1

    .line 141
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addModuleBase(Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 46
    invoke-interface {v1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v1

    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v2

    if-ne v1, v2, :cond_1

    return-void

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getModuleBaseInfo(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 64
    invoke-interface {v1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 69
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getModuleInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getModuleInfoListByWeight()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    new-instance v1, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager$2;-><init>(Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getModuleListBySortId()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "functionSortInfor"

    const-string v1, ""

    .line 75
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getLocalSortSetting()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    new-instance v1, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager$1;-><init>(Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public removeModuleBase(I)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 55
    invoke-interface {v1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
