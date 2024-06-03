.class public Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;
.super Landroid/widget/FrameLayout;
.source "FullScreenPanelRoot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;
    }
.end annotation


# instance fields
.field private visibleChangeListener:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;->getVisibility()I

    move-result v0

    .line 37
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eq v0, p1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;->visibleChangeListener:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;->visibleChange(Z)V

    :cond_1
    return-void
.end method

.method public setVisibleChangeListener(Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;->visibleChangeListener:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;

    return-void
.end method
