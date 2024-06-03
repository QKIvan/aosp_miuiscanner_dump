.class Lcom/xiaomi/scanner/ui/CodeModuleUI$1;
.super Ljava/lang/Object;
.source "CodeModuleUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/CodeModuleUI;->showThirdAppUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/CodeModuleUI;

.field final synthetic val$subTitleLinkAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/CodeModuleUI;Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI$1;->this$0:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    iput-object p2, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI$1;->val$subTitleLinkAction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 103
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI$1;->val$subTitleLinkAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI$1;->this$0:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->access$000(Lcom/xiaomi/scanner/ui/CodeModuleUI;)Lcom/xiaomi/scanner/app/ScanActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    invoke-static {}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "ActivityNotFoundException"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
