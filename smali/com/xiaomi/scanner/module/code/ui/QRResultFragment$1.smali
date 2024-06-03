.class Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$1;
.super Landroid/os/Handler;
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

    .line 135
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$1;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1001

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1002

    if-eq v0, v1, :cond_0

    .line 148
    invoke-static {}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$300()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$1;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    const v0, 0x7f100134

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$100(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;I)V

    .line 145
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$1;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$200(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$1;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$000(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$1;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    const v0, 0x7f100135

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$100(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;I)V

    :cond_2
    :goto_0
    return-void
.end method
