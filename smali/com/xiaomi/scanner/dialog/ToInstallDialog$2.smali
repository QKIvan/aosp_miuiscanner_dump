.class Lcom/xiaomi/scanner/dialog/ToInstallDialog$2;
.super Ljava/lang/Object;
.source "ToInstallDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 79
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 83
    :goto_0
    iget-object p4, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    invoke-static {p4}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->access$100(Lcom/xiaomi/scanner/dialog/ToInstallDialog;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_1

    if-ne p2, p3, :cond_0

    .line 85
    iget-object p4, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    invoke-static {p4}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->access$100(Lcom/xiaomi/scanner/dialog/ToInstallDialog;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    const/4 p5, 0x1

    invoke-virtual {p4, p5}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->setChecked(Z)V

    goto :goto_1

    .line 87
    :cond_0
    iget-object p4, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    invoke-static {p4}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->access$100(Lcom/xiaomi/scanner/dialog/ToInstallDialog;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {p4, p1}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->setChecked(Z)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog$2;->this$0:Lcom/xiaomi/scanner/dialog/ToInstallDialog;

    invoke-static {p1}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->access$200(Lcom/xiaomi/scanner/dialog/ToInstallDialog;)Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;->notifyDataSetChanged()V

    return-void
.end method
