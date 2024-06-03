.class Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity$1;
.super Ljava/lang/Object;
.source "BarCodeScannerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity$1;->this$0:Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity$1;->this$0:Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/app/BarCodeScannerActivity;->finish()V

    return-void
.end method
