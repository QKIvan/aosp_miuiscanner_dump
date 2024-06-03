.class Lcom/xiaomi/scanner/app/ScanActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "ScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/app/ScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/app/ScanActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0

    .line 1746
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$10;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1749
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 1750
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1751
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$10;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$800(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1752
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$10;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$800(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->onConnectivityChanged()V

    goto :goto_0

    :cond_0
    const-string p2, "notifyFunctionSortRefresh"

    .line 1754
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1755
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$10;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1400(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/app/AppUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/AppUI;->refreshFunctionSort()V

    :cond_1
    :goto_0
    return-void
.end method
