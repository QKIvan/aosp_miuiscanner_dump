.class Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;
.super Ljava/lang/Object;
.source "QRResultFragment.java"

# interfaces
.implements Lcom/milink/api/v1/MiLinkClientMiracastConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectMirecastByMiLink()V
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

    .line 531
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFail(Ljava/lang/String;)V
    .locals 3

    .line 540
    invoke-static {}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$300()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "milink  onConnectFail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 541
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$000(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 542
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    const/16 v0, 0x1002

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$800(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;I)V

    .line 544
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$002(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Z)Z

    return-void
.end method

.method public onConnectSuccess(Ljava/lang/String;)V
    .locals 3

    .line 534
    invoke-static {}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$300()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "milink  onConnectSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 535
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$002(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Z)Z

    return-void
.end method

.method public onConnecting(Ljava/lang/String;)V
    .locals 3

    .line 549
    invoke-static {}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$300()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 554
    invoke-static {}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$300()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " s1 "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
