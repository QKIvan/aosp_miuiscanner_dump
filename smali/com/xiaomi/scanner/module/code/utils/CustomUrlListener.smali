.class public Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;
.super Ljava/lang/Object;
.source "CustomUrlListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;


# static fields
.field private static final HYBRID_PACKAGE:Ljava/lang/String; = "com.miui.hybrid"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CustomUrlListener"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static checkUrl(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 75
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "http"

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "upi"

    .line 92
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v3

    .line 80
    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 81
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 82
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 83
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 86
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    const-string v2, "com.miui.hybrid"

    .line 87
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    return v3

    :cond_5
    :goto_1
    return v0

    :catch_0
    move-exception p0

    .line 99
    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "checkUrl error"

    invoke-static {v1, v2, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return v0
.end method

.method private startActivity(Ljava/lang/String;)Z
    .locals 3

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 37
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "android.intent.category.BROWSABLE"

    .line 40
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 41
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 45
    :catch_0
    sget-object p1, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "no activity handle this action"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private startActivitySendMessages(Ljava/lang/String;)Z
    .locals 3

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 59
    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->effectiveNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "sms_body"

    .line 62
    sget-object v2, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->smsBody:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.BROWSABLE"

    .line 63
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 64
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 68
    :catch_0
    sget-object p1, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "no activity handle this action"

    invoke-static {p1, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;)Z
    .locals 3

    .line 120
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->checkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBarcode filter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    sget-boolean v0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->isSmsto:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->smsBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->startActivitySendMessages(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->startActivity(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 2

    .line 106
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->checkUrl(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 107
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 108
    sget-object p2, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBarcode filter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    sget-boolean p2, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->isSmsto:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->smsBody:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->startActivitySendMessages(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 113
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->startActivity(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onCodeModuleDestroy()V
    .locals 2

    .line 135
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onCodeModuleDestroy"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
