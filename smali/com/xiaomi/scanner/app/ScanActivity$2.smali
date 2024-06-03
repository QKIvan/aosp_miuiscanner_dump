.class Lcom/xiaomi/scanner/app/ScanActivity$2;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 232
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$2;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 235
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "ResumeTaskSync doInBackground"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$2;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$300(Lcom/xiaomi/scanner/app/ScanActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "drop operation, mPaused= true"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$2;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$400(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/SoundPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$2;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    new-instance v1, Lcom/xiaomi/scanner/camera/SoundPlayer;

    invoke-direct {v1}, Lcom/xiaomi/scanner/camera/SoundPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$402(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/camera/SoundPlayer;)Lcom/xiaomi/scanner/camera/SoundPlayer;

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$2;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$400(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/SoundPlayer;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/SoundPlayer;->loadSound(I)V

    .line 244
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$2;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$400(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/SoundPlayer;->loadSound(I)V

    .line 245
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$2;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$500(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$2;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    new-instance v1, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity$2;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->access$600(Lcom/xiaomi/scanner/app/ScanActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/scanner/app/ScanActivity$2;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;)V

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$502(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/camera/OrientationManagerImpl;)Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$2;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$500(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->resume()V

    return-void
.end method
