.class Lcom/xiaomi/scanner/app/ScanActivity$4;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/app/ScanActivity;->onCreateTasks(Landroid/os/Bundle;)V
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

    .line 820
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$4;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$4;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$900(Lcom/xiaomi/scanner/app/ScanActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/scanner/util/CameraUtil;->updateCountryIso(Landroid/content/Context;)V

    .line 824
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$4;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1000(Lcom/xiaomi/scanner/app/ScanActivity;)V

    return-void
.end method
