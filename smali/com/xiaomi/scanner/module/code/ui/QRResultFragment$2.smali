.class Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$2;
.super Ljava/lang/Object;
.source "QRResultFragment.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->showQRResult(Lcom/xiaomi/scanner/module/code/codec/QRCodeType;Ljava/lang/String;Ljava/lang/String;Z)V
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

    .line 240
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$2;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmsClick()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$2;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$400(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$2;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$400(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$2;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$500(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
