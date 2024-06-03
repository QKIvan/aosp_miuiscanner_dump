.class Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity$1;
.super Ljava/lang/Object;
.source "ShowCTADialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 45
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity$1;->this$0:Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 48
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 49
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity$1;->this$0:Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 50
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 51
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity$1;->this$0:Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;->finish()V

    return-void
.end method
