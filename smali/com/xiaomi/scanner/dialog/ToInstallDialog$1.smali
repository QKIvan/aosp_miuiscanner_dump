.class Lcom/xiaomi/scanner/dialog/ToInstallDialog$1;
.super Ljava/lang/Object;
.source "ToInstallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/dialog/ToInstallDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/dialog/ToInstallDialog;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/dialog/ToInstallDialog;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog$1;->this$0:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog$1;->this$0:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->extOnDismiss(Landroid/content/DialogInterface;)V

    .line 59
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog$1;->this$0:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    invoke-static {p1}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->access$000(Lcom/xiaomi/scanner/dialog/ToInstallDialog;)V

    return-void
.end method
