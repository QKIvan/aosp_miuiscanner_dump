.class Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;
.super Ljava/lang/Object;
.source "QRResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->initUI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 504
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$600(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$OnQueryClick;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 505
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$600(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$OnQueryClick;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$OnQueryClick;->onQueryClickListener()V

    :cond_0
    return-void
.end method
