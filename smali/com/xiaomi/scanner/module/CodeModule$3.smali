.class Lcom/xiaomi/scanner/module/CodeModule$3;
.super Ljava/lang/Object;
.source "CodeModule.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/BaseModule$isDarkEnvCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/CodeModule;->onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
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

    .line 425
    iput-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule$3;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDarkEnv(Ljava/lang/Boolean;)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$3;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    iget-object v0, v0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$3;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$400(Lcom/xiaomi/scanner/module/CodeModule;)Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$3;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$400(Lcom/xiaomi/scanner/module/CodeModule;)Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/AppUI;->setIvFlashlightShowStatus(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
