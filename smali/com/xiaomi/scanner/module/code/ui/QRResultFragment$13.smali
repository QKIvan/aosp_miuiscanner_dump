.class Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$13;
.super Landroid/content/BroadcastReceiver;
.source "QRResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0

    .line 1156
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$13;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1160
    invoke-static {}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$300()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivee "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$13;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$2800(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x7b

    const-string v0, "supplicantError"

    .line 1162
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1164
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$13;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$2000(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$13;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$2000(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10021a

    new-array v2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$13;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v4}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$2900(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
