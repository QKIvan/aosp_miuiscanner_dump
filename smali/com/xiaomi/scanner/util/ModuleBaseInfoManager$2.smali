.class Lcom/xiaomi/scanner/util/ModuleBaseInfoManager$2;
.super Ljava/lang/Object;
.source "ModuleBaseInfoManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleInfoListByWeight()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager$2;->this$0:Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;)I
    .locals 0

    .line 92
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getWeight()I

    move-result p1

    invoke-interface {p2}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getWeight()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 89
    check-cast p1, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    check-cast p2, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager$2;->compare(Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;)I

    move-result p1

    return p1
.end method
