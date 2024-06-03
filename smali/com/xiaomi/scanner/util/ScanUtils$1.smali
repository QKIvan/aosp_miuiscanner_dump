.class Lcom/xiaomi/scanner/util/ScanUtils$1;
.super Ljava/lang/Object;
.source "ScanUtils.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/util/ScanUtils;->processWebUrl(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/util/ScanUtils;

.field final synthetic val$netWorkRuleText:Ljava/lang/String;

.field final synthetic val$type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/util/ScanUtils;Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils$1;->this$0:Lcom/xiaomi/scanner/util/ScanUtils;

    iput-object p2, p0, Lcom/xiaomi/scanner/util/ScanUtils$1;->val$netWorkRuleText:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/scanner/util/ScanUtils$1;->val$type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspected(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 250
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils$1;->this$0:Lcom/xiaomi/scanner/util/ScanUtils;

    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils$1;->val$netWorkRuleText:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/util/ScanUtils;->access$000(Lcom/xiaomi/scanner/util/ScanUtils;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils$1;->this$0:Lcom/xiaomi/scanner/util/ScanUtils;

    invoke-static {p1}, Lcom/xiaomi/scanner/util/ScanUtils;->access$100(Lcom/xiaomi/scanner/util/ScanUtils;)V

    return-void

    .line 254
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/util/ScanUtils;->access$200()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p1

    const-string v0, "launchQRResultActivity"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils$1;->this$0:Lcom/xiaomi/scanner/util/ScanUtils;

    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScanUtils$1;->val$netWorkRuleText:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScanUtils$1;->val$type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/scanner/util/ScanUtils;->access$300(Lcom/xiaomi/scanner/util/ScanUtils;Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V

    .line 256
    iget-object p1, p0, Lcom/xiaomi/scanner/util/ScanUtils$1;->this$0:Lcom/xiaomi/scanner/util/ScanUtils;

    invoke-static {p1}, Lcom/xiaomi/scanner/util/ScanUtils;->access$100(Lcom/xiaomi/scanner/util/ScanUtils;)V

    return-void
.end method
