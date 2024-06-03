.class Lcom/xiaomi/scanner/camera/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/scanner/camera/FocusManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/camera/FocusManager;Landroid/os/Looper;)V
    .locals 0

    .line 100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaomi/scanner/camera/FocusManager$MainHandler;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager$MainHandler;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/camera/FocusManager;

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/xiaomi/scanner/camera/FocusManager;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/camera/FocusManager;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p1

    const-string v1, "force reset auto focus"

    invoke-static {p1, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->access$100(Lcom/xiaomi/scanner/camera/FocusManager;)V

    .line 119
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->access$200(Lcom/xiaomi/scanner/camera/FocusManager;)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->access$100(Lcom/xiaomi/scanner/camera/FocusManager;)V

    :goto_0
    return-void
.end method
