.class Lcom/xiaomi/scanner/dialog/MiPayInDialog$1;
.super Ljava/lang/Object;
.source "MiPayInDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/dialog/MiPayInDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/dialog/MiPayInDialog;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/dialog/MiPayInDialog;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog$1;->this$0:Lcom/xiaomi/scanner/dialog/MiPayInDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog$1;->this$0:Lcom/xiaomi/scanner/dialog/MiPayInDialog;

    invoke-static {p1}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->access$000(Lcom/xiaomi/scanner/dialog/MiPayInDialog;)V

    return-void
.end method
