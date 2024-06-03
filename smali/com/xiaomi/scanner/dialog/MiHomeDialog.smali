.class public Lcom/xiaomi/scanner/dialog/MiHomeDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "MiHomeDialog.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private btn_update:Landroid/widget/Button;

.field private buttonContent:I

.field private context:Landroid/content/Context;

.field private message:I

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private title:I

.field private tv_message:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "MiHomeDialog"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->context:Landroid/content/Context;

    return-void
.end method

.method private requestPreviewFrame()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->context:Landroid/content/Context;

    instance-of v1, v0, Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v1, :cond_0

    .line 81
    check-cast v0, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->requestPreviewFrame()V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-xiaomi-scanner-dialog-MiHomeDialog(Landroid/view/View;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->btn_update:Landroid/widget/Button;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->dismiss()V

    .line 73
    sget-object p1, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "update click"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$1$com-xiaomi-scanner-dialog-MiHomeDialog(Landroid/content/DialogInterface;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->requestPreviewFrame()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0043

    .line 60
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->setContentView(I)V

    const p1, 0x7f0a0067

    .line 61
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->btn_update:Landroid/widget/Button;

    const p1, 0x7f0a01be

    .line 62
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->tv_message:Landroid/widget/TextView;

    const p1, 0x7f0a01c0

    .line 63
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->tv_title:Landroid/widget/TextView;

    .line 65
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->tv_message:Landroid/widget/TextView;

    iget v0, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->message:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 66
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->tv_title:Landroid/widget/TextView;

    iget v0, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->title:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->btn_update:Landroid/widget/Button;

    iget v0, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->buttonContent:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 69
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->btn_update:Landroid/widget/Button;

    new-instance v0, Lcom/xiaomi/scanner/dialog/MiHomeDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/dialog/MiHomeDialog$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/scanner/dialog/MiHomeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance p1, Lcom/xiaomi/scanner/dialog/MiHomeDialog$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/xiaomi/scanner/dialog/MiHomeDialog$$ExternalSyntheticLambda1;-><init>(Lcom/xiaomi/scanner/dialog/MiHomeDialog;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public setButton(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->buttonContent:I

    return-void
.end method

.method public setMessage(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->message:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->title:I

    return-void
.end method
