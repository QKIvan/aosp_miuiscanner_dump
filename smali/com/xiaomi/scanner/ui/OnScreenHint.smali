.class public Lcom/xiaomi/scanner/ui/OnScreenHint;
.super Ljava/lang/Object;
.source "OnScreenHint.java"


# static fields
.field static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field mView:Landroid/view/View;

.field private final mWM:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "OnScreenHint"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/ui/OnScreenHint;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "window"

    .line 46
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mWM:Landroid/view/WindowManager;

    const/4 p1, -0x2

    .line 48
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 49
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 p1, 0x18

    .line 50
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p1, -0x3

    .line 52
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const p1, 0x7f110010

    .line 53
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 p1, 0x3e8

    .line 54
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string p1, "OnScreenHint"

    .line 55
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private declared-synchronized handleHide()V
    .locals 2

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleShow()V
    .locals 3

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mNextView:Landroid/view/View;

    if-eq v0, v1, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/OnScreenHint;->handleHide()V

    .line 122
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mNextView:Landroid/view/View;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;

    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/xiaomi/scanner/ui/OnScreenHint;
    .locals 3

    .line 87
    new-instance v0, Lcom/xiaomi/scanner/ui/OnScreenHint;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/ui/OnScreenHint;-><init>(Landroid/app/Activity;)V

    const-string v1, "layout_inflater"

    .line 89
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d00aa

    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v1, 0x7f0a00f0

    .line 92
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iput-object p0, v0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mNextView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/OnScreenHint;->handleHide()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mNextView:Landroid/view/View;

    const-string v1, "This OnScreenHint was not created with OnScreenHint.makeText()"

    if-eqz v0, :cond_1

    const v2, 0x7f0a00f0

    .line 110
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public show()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/OnScreenHint;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/OnScreenHint;->handleShow()V

    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
