.class Lcom/xiaomi/scanner/module/CodeModule$2;
.super Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;
.source "CodeModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/CodeModule;->getNetWorkRule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/CodeModule;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/CodeModule;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule$2;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-direct {p0}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Object;
    .locals 2

    const-string v0, "keyNetworkRule"

    const-string v1, ""

    .line 173
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onMainResult(Ljava/lang/Object;)V
    .locals 3

    .line 178
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;->onMainResult(Ljava/lang/Object;)V

    const-string v0, ""

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule$2;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    invoke-static {v1, p1}, Lcom/xiaomi/scanner/module/CodeModule;->access$302(Lcom/xiaomi/scanner/module/CodeModule;Lcom/xiaomi/scanner/bean/NetWorkRuleBean;)Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    :cond_0
    return-void
.end method
