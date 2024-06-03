.class Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog$2;
.super Ljava/lang/Object;
.source "ChooseOpenCodeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;

    invoke-static {v0}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->access$200(Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;

    invoke-static {v0}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->access$300(Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->extOnDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
