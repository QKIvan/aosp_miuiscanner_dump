.class Lcom/xiaomi/scanner/camera/MotionManager$2;
.super Ljava/lang/Object;
.source "MotionManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/MotionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/camera/MotionManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/camera/MotionManager;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/MotionManager$2;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 141
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/MotionManager$2;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-static {v2}, Lcom/xiaomi/scanner/camera/MotionManager;->access$300(Lcom/xiaomi/scanner/camera/MotionManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5f5e100

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    .line 142
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/MotionManager$2;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/camera/MotionManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/MotionManager$2;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-static {v2}, Lcom/xiaomi/scanner/camera/MotionManager;->access$300(Lcom/xiaomi/scanner/camera/MotionManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const-wide/32 v2, 0x3b9aca00

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v1

    mul-float v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v3, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v3, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 153
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/MotionManager$2;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v2, v3, v4}, Lcom/xiaomi/scanner/camera/MotionManager;->access$302(Lcom/xiaomi/scanner/camera/MotionManager;J)J

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_2

    .line 155
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/MotionManager$2;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-static {p1}, Lcom/xiaomi/scanner/camera/MotionManager;->access$100(Lcom/xiaomi/scanner/camera/MotionManager;)V

    :cond_2
    return-void

    .line 147
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/MotionManager$2;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/camera/MotionManager;->access$302(Lcom/xiaomi/scanner/camera/MotionManager;J)J

    :cond_4
    :goto_1
    return-void
.end method
