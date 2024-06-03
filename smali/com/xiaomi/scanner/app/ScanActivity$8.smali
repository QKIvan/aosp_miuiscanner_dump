.class Lcom/xiaomi/scanner/app/ScanActivity$8;
.super Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;
.source "ScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/app/ScanActivity;->updateStorageSpaceAndHint(Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/app/ScanActivity;

.field final synthetic val$callback:Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;)V
    .locals 0

    .line 1516
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$8;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    iput-object p2, p0, Lcom/xiaomi/scanner/app/ScanActivity$8;->val$callback:Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;

    invoke-direct {p0}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Long;
    .locals 4

    .line 1519
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$8;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1500(Lcom/xiaomi/scanner/app/ScanActivity;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1520
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity$8;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {}, Lcom/xiaomi/scanner/util/Storage;->getAvailableSpace()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1602(Lcom/xiaomi/scanner/app/ScanActivity;J)J

    .line 1521
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity$8;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1600(Lcom/xiaomi/scanner/app/ScanActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1522
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1

    .line 1516
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity$8;->onBackground()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public onMainResult(Ljava/lang/Long;)V
    .locals 3

    .line 1527
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$8;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/app/ScanActivity;->updateStorageHint(J)V

    .line 1530
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$8;->val$callback:Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$8;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$300(Lcom/xiaomi/scanner/app/ScanActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$8;->val$callback:Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;->onStorageUpdateDone(J)V

    goto :goto_0

    .line 1533
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p1

    const-string v0, "ignoring storage callback after activity onPause"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onMainResult(Ljava/lang/Object;)V
    .locals 0

    .line 1516
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity$8;->onMainResult(Ljava/lang/Long;)V

    return-void
.end method
