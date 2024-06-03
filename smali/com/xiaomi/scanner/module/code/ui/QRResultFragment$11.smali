.class Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$11;
.super Ljava/lang/Object;
.source "QRResultFragment.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;
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

    .line 1044
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$11;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspected(I)V
    .locals 4

    .line 1047
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$11;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x1000000

    const v1, 0x7f100184

    const/high16 v2, -0x10000

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v1, 0x7f100087

    const p1, 0x7f10020e

    goto :goto_1

    :cond_1
    const p1, 0x7f10020f

    goto :goto_0

    :cond_2
    const p1, 0x7f10020c

    :goto_0
    const/high16 v0, -0x10000

    goto :goto_1

    :cond_3
    const v1, 0x7f100086

    const p1, 0x7f10020d

    .line 1076
    :goto_1
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$11;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$2300(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1077
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$11;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$2400(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(I)V

    .line 1078
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$11;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$2500(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1079
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$11;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$2500(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
