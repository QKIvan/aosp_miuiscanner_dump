.class public Lcom/xiaomi/scanner/module/code/utils/EmailScanListener;
.super Ljava/lang/Object;
.source "EmailScanListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;


# instance fields
.field private mAct:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/EmailScanListener;->mAct:Landroid/app/Activity;

    return-void
.end method

.method private parse(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;
    .locals 5

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x7

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 56
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_2

    .line 58
    :cond_1
    new-instance v0, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;

    invoke-direct {v0}, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;-><init>()V

    .line 59
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    const-string v4, "TO:"

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;->setRecipient(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v4, "SUB:"

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;->setSubject(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v4, "BODY:"

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;->setContent(Ljava/lang/String;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    :goto_2
    return-object v1
.end method

.method private sendEmail(Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;)V
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;->getRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 37
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 38
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;->getCc()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.CC"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;->getSubject()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;->getContent()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/EmailScanListener;->mAct:Landroid/app/Activity;

    const-string v0, "Choose a email app!"

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 1

    .line 21
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MATMSG:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-virtual {v0, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/EmailScanListener;->parse(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;

    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/EmailScanListener;->sendEmail(Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCodeModuleDestroy()V
    .locals 0

    return-void
.end method
