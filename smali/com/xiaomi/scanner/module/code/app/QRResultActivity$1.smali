.class Lcom/xiaomi/scanner/module/code/app/QRResultActivity$1;
.super Ljava/lang/Object;
.source "QRResultActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->showCTAConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/app/QRResultActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/app/QRResultActivity;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity$1;->this$0:Lcom/xiaomi/scanner/module/code/app/QRResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity$1;->this$0:Lcom/xiaomi/scanner/module/code/app/QRResultActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->finish()V

    return-void
.end method
