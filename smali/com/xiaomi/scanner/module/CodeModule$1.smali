.class Lcom/xiaomi/scanner/module/CodeModule$1;
.super Landroid/os/Handler;
.source "CodeModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/CodeModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/CodeModule;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/CodeModule;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule$1;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$1;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$000(Lcom/xiaomi/scanner/module/CodeModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/xiaomi/scanner/module/CodeModule;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 102
    invoke-static {}, Lcom/xiaomi/scanner/module/CodeModule;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

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

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule$1;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/CodeModule;->requestPreviewFrame()V

    goto :goto_0

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule$1;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/CodeModule;->access$200(Lcom/xiaomi/scanner/module/CodeModule;)V

    :goto_0
    return-void
.end method
