.class public Lcom/xiaomi/scanner/module/ModuleManagerImpl;
.super Ljava/lang/Object;
.source "ModuleManagerImpl.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/ModuleManager;


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mDefaultModuleId:I

.field private mModuleControllerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaomi/scanner/module/ModuleController;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisteredModuleAgents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ModuleManagerImpl"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mDefaultModuleId:I

    .line 12
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mModuleControllerMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getModule(ILcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/module/ModuleController;
    .locals 3

    .line 63
    sget-object v0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getModule moduleId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mModuleControllerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleController;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->getModuleAgent(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    invoke-interface {v1, p2, p2}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;->createModule(Landroid/content/Context;Lcom/xiaomi/scanner/app/AppController;)Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v0

    .line 69
    iget-object p2, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mModuleControllerMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getModuleAgent(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;
    .locals 3

    .line 49
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleBaseInfo(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    sget-object v0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModuleAgent baseInfo.getSortId()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getSortId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getSortId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    iget v0, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mDefaultModuleId:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;

    .line 57
    :cond_1
    sget-object v0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModuleAgent  moduleAgent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public registerModule(Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 20
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;->createModuleBaseInfo()Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getSortId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 24
    iget-object v1, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getSortId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    sget-object p1, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sort ID is registered already:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getSortId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->addModuleBase(Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;)V

    .line 29
    iget-object v1, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getSortId()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ModuleManager: The module ID can not be -1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Registering a null ModuleAgent."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterModule(I)Z
    .locals 2

    .line 34
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleBaseInfo(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 38
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->removeModuleBase(I)V

    .line 39
    iget-object v1, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getSortId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 40
    iget v0, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mDefaultModuleId:I

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mDefaultModuleId:I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
