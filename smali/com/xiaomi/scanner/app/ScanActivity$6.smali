.class Lcom/xiaomi/scanner/app/ScanActivity$6;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/app/ScanActivity;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/app/ScanActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0

    .line 887
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$6;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 889
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$6;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    return-void
.end method
