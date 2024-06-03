.class public Lcom/xiaomi/scanner/app/MiPayInDialogActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "MiPayInDialogActivity.java"


# instance fields
.field private miPayInDialog:Lcom/xiaomi/scanner/dialog/MiPayInDialog;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/xiaomi/scanner/app/ScanContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0045

    .line 32
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/app/MiPayInDialogActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/MiPayInDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 35
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/MiPayInDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/app/MiPayInDialogActivity;->result:Ljava/lang/String;

    .line 37
    iget-object p1, p0, Lcom/xiaomi/scanner/app/MiPayInDialogActivity;->miPayInDialog:Lcom/xiaomi/scanner/dialog/MiPayInDialog;

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->dismiss()V

    .line 41
    :cond_0
    new-instance p1, Lcom/xiaomi/scanner/dialog/MiPayInDialog;

    iget-object v0, p0, Lcom/xiaomi/scanner/app/MiPayInDialogActivity;->result:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/scanner/app/MiPayInDialogActivity;->miPayInDialog:Lcom/xiaomi/scanner/dialog/MiPayInDialog;

    .line 42
    invoke-virtual {p1}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->show()V

    .line 44
    iget-object p1, p0, Lcom/xiaomi/scanner/app/MiPayInDialogActivity;->miPayInDialog:Lcom/xiaomi/scanner/dialog/MiPayInDialog;

    new-instance v0, Lcom/xiaomi/scanner/app/MiPayInDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/MiPayInDialogActivity$1;-><init>(Lcom/xiaomi/scanner/app/MiPayInDialogActivity;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
