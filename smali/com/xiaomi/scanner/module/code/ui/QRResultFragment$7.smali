.class Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;
.super Ljava/lang/Object;
.source "QRResultFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectMiracast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

.field final synthetic val$p2pMac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Ljava/lang/String;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->val$p2pMac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    .line 590
    iput p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 594
    new-instance v0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;

    invoke-direct {v0}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;-><init>()V

    .line 595
    invoke-static {}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$300()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    const-string v2, "use Scanner Miracast"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 596
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->val$p2pMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->checkAndConnectDisplay(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    invoke-static {}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$300()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    const-string v2, "check true"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 598
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->val$p2pMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->connectWifiDisplay(Ljava/lang/String;)Z

    goto :goto_0

    .line 599
    :cond_0
    iget v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->count:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 600
    iput v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->count:I

    .line 601
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$900(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    const/16 v1, 0x1002

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$800(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;I)V

    :goto_0
    return-void
.end method
