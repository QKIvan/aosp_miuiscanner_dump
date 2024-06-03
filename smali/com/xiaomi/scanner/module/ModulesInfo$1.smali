.class Lcom/xiaomi/scanner/module/ModulesInfo$1;
.super Ljava/lang/Object;
.source "ModulesInfo.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/ModulesInfo;->registerModule(Lcom/xiaomi/scanner/module/ModuleManager;IIIILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$iconResId:I

.field final synthetic val$iconResSortId:I

.field final synthetic val$moduleId:I

.field final synthetic val$namespace:Ljava/lang/String;

.field final synthetic val$sortId:I

.field final synthetic val$titleResId:I

.field final synthetic val$weight:I


# direct methods
.method constructor <init>(IIIIIILjava/lang/String;)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$weight:I

    iput p2, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$sortId:I

    iput p3, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    iput p4, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$iconResId:I

    iput p5, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$iconResSortId:I

    iput p6, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$titleResId:I

    iput-object p7, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$namespace:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createModule(Landroid/content/Context;Lcom/xiaomi/scanner/app/AppController;)Lcom/xiaomi/scanner/module/ModuleController;
    .locals 1

    .line 93
    new-instance p1, Lcom/xiaomi/scanner/module/CodeModule;

    iget v0, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-direct {p1, p2, v0}, Lcom/xiaomi/scanner/module/CodeModule;-><init>(Lcom/xiaomi/scanner/app/AppController;I)V

    return-object p1
.end method

.method public createModuleBaseInfo()Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    .locals 1

    .line 53
    new-instance v0, Lcom/xiaomi/scanner/module/ModulesInfo$1$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/ModulesInfo$1$1;-><init>(Lcom/xiaomi/scanner/module/ModulesInfo$1;)V

    return-object v0
.end method
