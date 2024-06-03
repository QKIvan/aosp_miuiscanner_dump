.class public Lcom/xiaomi/scanner/ui/ShutterButton;
.super Landroid/widget/ImageView;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private final MIN_CLICK_DELAY_TIME_TAKEPHOTO:I

.field private lastClickTackPhotoTime:J

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOldPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x3e8

    .line 13
    iput p1, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->MIN_CLICK_DELAY_TIME_TAKEPHOTO:I

    const-wide/16 p1, 0x0

    .line 14
    iput-wide p1, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->lastClickTackPhotoTime:J

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/ui/ShutterButton;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;

    .line 102
    invoke-interface {v1, p1}, Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnShutterButtonListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 62
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 63
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ShutterButton;->isPressed()Z

    move-result v0

    .line 64
    iget-boolean v1, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 87
    new-instance v1, Lcom/xiaomi/scanner/ui/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/scanner/ui/ShutterButton$1;-><init>(Lcom/xiaomi/scanner/ui/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/ui/ShutterButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 94
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/ShutterButton;->callShutterButtonFocus(Z)V

    .line 96
    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mOldPressed:Z

    :cond_1
    return-void
.end method

.method public performClick()Z
    .locals 8

    .line 110
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 112
    iget-wide v3, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->lastClickTackPhotoTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ShutterButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;

    .line 114
    invoke-interface {v4}, Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonClick()V

    goto :goto_0

    .line 118
    :cond_0
    iput-wide v1, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->lastClickTackPhotoTime:J

    return v0
.end method

.method public removeOnShutterButtonListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    .line 126
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/ui/ShutterButton;->setAlpha(F)V

    return-void
.end method
