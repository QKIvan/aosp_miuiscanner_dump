.class public Lcom/xiaomi/scanner/ui/FlashButton;
.super Landroid/widget/FrameLayout;
.source "FlashButton.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;
    }
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private onTurnFlashListener:Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;

.field private toggleButton:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 32
    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/ui/FlashButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/ui/FlashButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0042

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a01a2

    .line 42
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/ui/FlashButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/xiaomi/scanner/ui/FlashButton;->toggleButton:Landroid/widget/ToggleButton;

    const p1, 0x7f0a00c1

    .line 43
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/ui/FlashButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/xiaomi/scanner/ui/FlashButton;->imageView:Landroid/widget/ImageView;

    .line 45
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/FlashButton;->toggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {p1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/ui/FlashButton;->setEnabled(Z)V

    .line 73
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/FlashButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 74
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/FlashButton;->onTurnFlashListener:Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;

    if-eqz p1, :cond_0

    .line 75
    invoke-interface {p1, p2}, Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;->onTurnFlash(Z)V

    :cond_0
    return-void
.end method

.method public resetFlashView()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/FlashButton;->toggleButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/FlashButton;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public setFlashViewWhetherToCheck(Ljava/lang/Boolean;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/FlashButton;->toggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/FlashButton;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public setOnTurnFlashListener(Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/FlashButton;->onTurnFlashListener:Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;

    return-void
.end method
