.class Lcom/xiaomi/scanner/app/MiPayInDialogActivity$1;
.super Ljava/lang/Object;
.source "MiPayInDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/app/MiPayInDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/app/MiPayInDialogActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/MiPayInDialogActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/xiaomi/scanner/app/MiPayInDialogActivity$1;->this$0:Lcom/xiaomi/scanner/app/MiPayInDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/xiaomi/scanner/app/MiPayInDialogActivity$1;->this$0:Lcom/xiaomi/scanner/app/MiPayInDialogActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/MiPayInDialogActivity;->finish()V

    return-void
.end method
