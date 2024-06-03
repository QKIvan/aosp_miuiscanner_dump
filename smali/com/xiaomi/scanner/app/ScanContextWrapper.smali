.class public Lcom/xiaomi/scanner/app/ScanContextWrapper;
.super Landroid/content/ContextWrapper;
.source "ScanContextWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;
    .locals 4

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 20
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 21
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 22
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 24
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 25
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v2, v3, :cond_0

    .line 26
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 30
    :goto_0
    new-instance v0, Lcom/xiaomi/scanner/app/ScanContextWrapper;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScanContextWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
