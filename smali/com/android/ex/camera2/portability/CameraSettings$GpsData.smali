.class public Lcom/android/ex/camera2/portability/CameraSettings$GpsData;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpsData"
.end annotation


# instance fields
.field public final altitude:D

.field public final latitude:D

.field public final longitude:D

.field public final processingMethod:Ljava/lang/String;

.field public final timeStamp:J


# direct methods
.method public constructor <init>(DDDJLjava/lang/String;)V
    .locals 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p9, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    cmpl-double v2, p5, v0

    if-eqz v2, :cond_1

    .line 89
    :cond_0
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraSettings;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "GpsData\'s nonzero data will be ignored due to null processingMethod"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    :cond_1
    iput-wide p1, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->latitude:D

    .line 92
    iput-wide p3, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->longitude:D

    .line 93
    iput-wide p5, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->altitude:D

    .line 94
    iput-wide p7, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->timeStamp:J

    .line 95
    iput-object p9, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraSettings$GpsData;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->latitude:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->latitude:D

    .line 101
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->longitude:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->longitude:D

    .line 102
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->altitude:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->altitude:D

    .line 103
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->timeStamp:J

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->timeStamp:J

    .line 104
    iget-object p1, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    return-void
.end method
