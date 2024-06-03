.class public final synthetic Lcom/xiaomi/scanner/camera/CaptureModule$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/scanner/camera/CaptureModule;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$$ExternalSyntheticLambda1;->f$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$$ExternalSyntheticLambda1;->f$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->lambda$checkDisplayRotation$1$com-xiaomi-scanner-camera-CaptureModule()V

    return-void
.end method
