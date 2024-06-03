.class Lcom/xiaomi/scanner/util/DialogUtil$3;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/util/DialogUtil;->showCTADialog(Landroid/content/Context;Lcom/xiaomi/scanner/util/DialogUtil$CTAClick;)Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/xiaomi/scanner/util/DialogUtil$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 157
    invoke-static {}, Lcom/xiaomi/scanner/util/DialogUtil;->access$000()Lcom/xiaomi/scanner/util/DialogUtil$CTAClick;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 158
    invoke-static {}, Lcom/xiaomi/scanner/util/DialogUtil;->access$000()Lcom/xiaomi/scanner/util/DialogUtil$CTAClick;

    move-result-object p2

    invoke-interface {p2}, Lcom/xiaomi/scanner/util/DialogUtil$CTAClick;->onReject()V

    .line 161
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/util/DialogUtil;->access$000()Lcom/xiaomi/scanner/util/DialogUtil$CTAClick;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/xiaomi/scanner/util/DialogUtil$3;->val$context:Landroid/content/Context;

    instance-of v0, p2, Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 162
    invoke-static {}, Lcom/xiaomi/scanner/util/DialogUtil;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p2

    const-string v0, "DialogUtil  setNegativeButton scanActivity.finish()"

    invoke-static {p2, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/xiaomi/scanner/util/DialogUtil$3;->val$context:Landroid/content/Context;

    check-cast p2, Lcom/xiaomi/scanner/app/ScanActivity;

    .line 164
    invoke-virtual {p2}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    .line 167
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
