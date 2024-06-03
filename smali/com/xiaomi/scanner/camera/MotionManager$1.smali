.class Lcom/xiaomi/scanner/camera/MotionManager$1;
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

    .line 97
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

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

    .line 100
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-static {v2}, Lcom/xiaomi/scanner/camera/MotionManager;->access$000(Lcom/xiaomi/scanner/camera/MotionManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5f5e100

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6

    .line 101
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/camera/MotionManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-static {v2}, Lcom/xiaomi/scanner/camera/MotionManager;->access$000(Lcom/xiaomi/scanner/camera/MotionManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    const-wide/32 v2, 0x3b9aca00

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float v0, v0, v1

    .line 111
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v3, v2

    mul-float v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 114
    iget-object v3, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v3, v4, v5}, Lcom/xiaomi/scanner/camera/MotionManager;->access$002(Lcom/xiaomi/scanner/camera/MotionManager;J)J

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    cmpl-double p1, v1, v3

    if-lez p1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-static {p1}, Lcom/xiaomi/scanner/camera/MotionManager;->access$100(Lcom/xiaomi/scanner/camera/MotionManager;)V

    return-void

    :cond_2
    const-wide v3, 0x3fa99999a0000000L    # 0.05000000074505806

    cmpg-double p1, v1, v3

    if-gez p1, :cond_3

    return-void

    .line 124
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-static {p1, v1, v2}, Lcom/xiaomi/scanner/camera/MotionManager;->access$218(Lcom/xiaomi/scanner/camera/MotionManager;D)D

    .line 125
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-static {p1}, Lcom/xiaomi/scanner/camera/MotionManager;->access$200(Lcom/xiaomi/scanner/camera/MotionManager;)D

    move-result-wide v0

    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    cmpl-double p1, v0, v2

    if-lez p1, :cond_4

    .line 127
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/xiaomi/scanner/camera/MotionManager;->access$202(Lcom/xiaomi/scanner/camera/MotionManager;D)D

    .line 128
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-static {p1}, Lcom/xiaomi/scanner/camera/MotionManager;->access$100(Lcom/xiaomi/scanner/camera/MotionManager;)V

    :cond_4
    return-void

    .line 106
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/camera/MotionManager;->access$002(Lcom/xiaomi/scanner/camera/MotionManager;J)J

    :cond_6
    :goto_1
    return-void
.end method
