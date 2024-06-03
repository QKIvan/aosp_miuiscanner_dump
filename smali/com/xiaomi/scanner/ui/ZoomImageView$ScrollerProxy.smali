.class Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;
.super Ljava/lang/Object;
.source "ZoomImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/ui/ZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollerProxy"
.end annotation


# instance fields
.field private isOld:Z

.field private scroller:Ljava/lang/Object;

.field final synthetic this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/content/Context;)V
    .locals 1

    .line 326
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    .line 328
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->isOld:Z

    .line 329
    new-instance p1, Landroid/widget/Scroller;

    invoke-direct {p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 331
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->isOld:Z

    .line 332
    new-instance p1, Landroid/widget/OverScroller;

    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->isOld:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public fling(IIIIIIIIII)V
    .locals 13

    move-object v0, p0

    .line 344
    iget-boolean v1, v0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->isOld:Z

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, v0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/widget/Scroller;

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object v1, v0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/widget/OverScroller;

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    :goto_0
    return-void
.end method

.method public forceFinished(Z)V
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->isOld:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :goto_0
    return-void
.end method

.method public getCurrX()I
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->isOld:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrY()I
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->isOld:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    :goto_0
    return v0
.end method
