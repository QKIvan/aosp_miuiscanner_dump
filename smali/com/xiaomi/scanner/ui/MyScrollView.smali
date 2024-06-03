.class public Lcom/xiaomi/scanner/ui/MyScrollView;
.super Landroid/widget/ScrollView;
.source "MyScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/MyScrollView$OnScrollListener;
    }
.end annotation


# instance fields
.field private onScrollListener:Lcom/xiaomi/scanner/ui/MyScrollView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected computeVerticalScrollRange()I
    .locals 1

    .line 29
    invoke-super {p0}, Landroid/widget/ScrollView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 35
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/MyScrollView;->onScrollListener:Lcom/xiaomi/scanner/ui/MyScrollView$OnScrollListener;

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1, p2}, Lcom/xiaomi/scanner/ui/MyScrollView$OnScrollListener;->onScroll(I)V

    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/xiaomi/scanner/ui/MyScrollView$OnScrollListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/MyScrollView;->onScrollListener:Lcom/xiaomi/scanner/ui/MyScrollView$OnScrollListener;

    return-void
.end method
