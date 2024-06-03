.class Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$9;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "QRResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectWifiAndroidQ(Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

.field final synthetic val$wifiAdmin:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;)V
    .locals 0

    .line 912
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$9;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$9;->val$wifiAdmin:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 915
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 916
    invoke-static {}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$300()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect wifi android Q onAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 917
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 918
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 919
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$9;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 924
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 925
    invoke-static {}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$300()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "connect wifi android Q onUnavailable "

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$9;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1000(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$9;->val$wifiAdmin:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;

    if-eqz v0, :cond_0

    .line 927
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$9;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1000(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->unRegisterQequestCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method
