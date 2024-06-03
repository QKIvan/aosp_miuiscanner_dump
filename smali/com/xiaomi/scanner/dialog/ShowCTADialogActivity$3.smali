.class Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity$3;
.super Ljava/lang/Object;
.source "ShowCTADialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;->showCTADialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity$3;->this$0:Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 66
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_0

    .line 67
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 68
    iget-object p3, p0, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity$3;->this$0:Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;

    invoke-virtual {p3, p1, p2}, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;->setResult(ILandroid/content/Intent;)V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method
