.class public Lcom/xiaomi/scanner/module/code/utils/MatterCodeListener;
.super Ljava/lang/Object;
.source "MatterCodeListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;


# static fields
.field public static final GOOGLE_GSM:Ljava/lang/String; = "com.google.android.gms"

.field public static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mAct:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "MatterCodeListener"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MatterCodeListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MatterCodeListener;->mAct:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 2

    .line 23
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MATTER:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-virtual {v0, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 27
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.google.android.gms"

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 31
    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/utils/MatterCodeListener;->mAct:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 34
    sget-object p2, Lcom/xiaomi/scanner/module/code/utils/MatterCodeListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public onCodeModuleDestroy()V
    .locals 0

    return-void
.end method
