.class Lcom/xiaomi/scanner/camera/CaptureModule$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$3;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$3;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->onSingleTapUp(Landroid/view/View;II)V

    const/4 p1, 0x1

    return p1
.end method
