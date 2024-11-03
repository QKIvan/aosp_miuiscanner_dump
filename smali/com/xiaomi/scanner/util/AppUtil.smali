.class public Lcom/xiaomi/scanner/util/AppUtil;
.super Ljava/lang/Object;
.source "AppUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;
    }
.end annotation


# static fields
.field public static final DELAY_TIME:J = 0xc8L

.field public static final EXTRA_INTENT_BUSINESS_CARD:Ljava/lang/String; = "miui.intent.action.scanbusinesscard"

.field public static final EXTRA_INTENT_CLASSES_SCAN:Ljava/lang/String; = "miui.intent.action.scanclassesmodule"

.field public static final EXTRA_INTENT_IS_BACKTO_GALLERY:Ljava/lang/String; = "isBackToGallery"

.field public static final EXTRA_INTENT_IS_BACKTO_THIRDAPP:Ljava/lang/String; = "isBackToThirdApp"

.field public static final EXTRA_INTENT_MODULE_ACTION:Ljava/lang/String; = "miui.intent.action.scanner"

.field public static final EXTRA_INTENT_MODULE_APP:Ljava/lang/String; = "miref"

.field public static final EXTRA_INTENT_MODULE_IMAGE_PATH:Ljava/lang/String; = "imagePath"

.field public static final EXTRA_INTENT_MODULE_IMAGE_URI:Ljava/lang/String; = "imageUri"

.field public static final EXTRA_INTENT_MODULE_INDEX:Ljava/lang/String; = "extra_intent_module_index"

.field public static final EXTRA_INTENT_MODULE_MIUI_ACTION:Ljava/lang/String; = "miui.intent.action.scanner"

.field public static final EXTRA_INTENT_MODULE_PACKAGE_NAME:Ljava/lang/String; = "fromApp"

.field private static final INSTALL_PRELOADED_APP_FLAG_NEED_CONFIRM:I = 0x1

.field private static final INSTALL_PRELOADED_APP_FLAG_SHOW_TOAST:I = 0x2

.field public static final INTENT_ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static final MIUI_VERSION_LOWEST_NUMBER:I = 0x8

.field public static final OPEN_MODE_CAMERA:Ljava/lang/String; = "com.android.camera"

.field public static final OPEN_PACKGENAME_SECURITYCORE:Ljava/lang/String; = "com.miui.securitycore"

.field public static final PACKAGENAEM_GALLERY:Ljava/lang/String; = "com.miui.gallery"

.field public static final SCAN_BARCODE_ACTION:Ljava/lang/String; = "miui.intent.action.scanbarcode"

.field public static final SCAN_BARCODE_MIUI_ACTION:Ljava/lang/String; = "miui.intent.action.scanbarcode"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field public static final TAOKE_ID:Ljava/lang/String; = "mm_113567256_12244709_53870994"

.field public static final XIAOAI_PACKAGENAME:Ljava/lang/String; = "com.miui.voiceassist"

.field public static final XIAOMI:Ljava/lang/String; = "xiaomi"

.field private static isShoppingMenuShown:Z

.field private static sNavigationBarType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "AppUtil"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const/4 v0, -0x1

    .line 124
    sput v0, Lcom/xiaomi/scanner/util/AppUtil;->sNavigationBarType:I

    const/4 v0, 0x0

    .line 153
    sput-boolean v0, Lcom/xiaomi/scanner/util/AppUtil;->isShoppingMenuShown:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method public static checkDeviceHasNavigationBar()Z
    .locals 4

    .line 394
    sget v0, Lcom/xiaomi/scanner/util/AppUtil;->sNavigationBarType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v3, v0, :cond_1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x52

    .line 397
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 398
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 399
    :cond_3
    sput v1, Lcom/xiaomi/scanner/util/AppUtil;->sNavigationBarType:I

    return v1
.end method

.method public static checkPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, ""

    .line 441
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x2000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static getBottomBarHeight(Landroid/content/Context;)I
    .locals 2

    if-nez p0, :cond_0

    .line 378
    sget-object p0, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "getBottomBarHeight error, null context"

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 381
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 382
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->checkDeviceHasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    invoke-static {p0}, Lcom/xiaomi/scanner/util/AppUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public static getBrowserList(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 566
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 567
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.BROWSABLE"

    .line 568
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "http://"

    .line 569
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 570
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 571
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 572
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 573
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 574
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 575
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 576
    iget v3, v0, Landroid/content/pm/ResolveInfo;->priority:I

    iget v4, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v3, v4, :cond_1

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v2, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v3, v2, :cond_0

    .line 577
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static getEdgeSize(Landroid/content/Context;I)I
    .locals 4

    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "edge_suppression_size"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 500
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static getGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLauncherClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 182
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/util/AndroidServices;->instance()Lcom/xiaomi/scanner/util/AndroidServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/util/AndroidServices;->providePackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 183
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 184
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    .line 186
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 188
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 189
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    iget-object p0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 361
    sget-object p0, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "getBottomBarHeight error, null context"

    invoke-static {p0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 366
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 367
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 368
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 370
    sget-object v1, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "getNavigationBarHeight error"

    invoke-static {v1, v2, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    :goto_0
    sget-object p0, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Navi height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public static getPhoneType()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewYpoint(Landroid/view/View;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 424
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    aget p0, v1, p0

    return p0

    :catch_0
    move-exception p0

    .line 426
    sget-object v1, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "getViewYpoint error"

    invoke-static {v1, v2, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static getXiaoAiAppVersionName(Landroid/content/Context;)I
    .locals 4

    .line 526
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 528
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 530
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 532
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.miui.voiceassist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static guessCallAppSource(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5

    .line 453
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x16

    if-lt v0, v2, :cond_0

    .line 455
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 457
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "activity"

    .line 462
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 463
    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 467
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 p0, 0x0

    .line 468
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    goto :goto_0

    .line 469
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 470
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 471
    iget-object v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 472
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 480
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static hideNavigationLayout(Landroid/app/Activity;)V
    .locals 2

    .line 404
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x8000000

    .line 408
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 409
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 411
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public static installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;Ljava/lang/Object;)V
    .locals 10

    if-eqz p0, :cond_2

    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 320
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1c

    const-string v2, "installPackage result="

    const-string v3, "installPreloadedDataApp"

    const-string v4, "miui.content.pm.PreloadedAppPolicy"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-ge v0, v1, :cond_1

    .line 321
    :try_start_1
    new-instance v0, Lcom/xiaomi/scanner/util/AppUtil$1;

    invoke-direct {v0, p2, p3}, Lcom/xiaomi/scanner/util/AppUtil$1;-><init>(Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;Ljava/lang/Object;)V

    .line 332
    invoke-static {v4}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->getClass(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object p2

    new-array p3, v8, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, p3, v7

    const-class v1, Ljava/lang/String;

    aput-object v1, p3, v9

    const-class v1, Landroid/content/pm/IPackageInstallObserver;

    aput-object v1, p3, v6

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p3, v5

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p0, v1, v7

    aput-object p1, v1, v9

    aput-object v0, v1, v6

    .line 334
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    .line 333
    invoke-virtual {p2, v3, p3, v1}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object p0

    .line 335
    invoke-virtual {p0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->booleanResult()Z

    move-result p0

    .line 336
    sget-object p1, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_1
    new-instance v0, Lcom/xiaomi/scanner/util/AppUtil$2;

    invoke-direct {v0, p2, p3}, Lcom/xiaomi/scanner/util/AppUtil$2;-><init>(Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;Ljava/lang/Object;)V

    .line 348
    invoke-static {v4}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->getClass(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object p2

    new-array p3, v8, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, p3, v7

    const-class v1, Ljava/lang/String;

    aput-object v1, p3, v9

    const-class v1, Landroid/content/pm/IPackageInstallObserver2;

    aput-object v1, p3, v6

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p3, v5

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p0, v1, v7

    aput-object p1, v1, v9

    aput-object v0, v1, v6

    .line 350
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    .line 349
    invoke-virtual {p2, v3, p3, v1}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object p0

    .line 351
    invoke-virtual {p0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->booleanResult()Z

    move-result p0

    .line 352
    sget-object p1, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 355
    sget-object p1, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "installPackage error"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 316
    :cond_2
    :goto_1
    sget-object p0, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "null context or null pkgName="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static isExternalStorageAvailable()Z
    .locals 2

    .line 160
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInLowMemoryState(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 236
    sget-object p0, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "isInLowMemoryState error null context"

    invoke-static {p0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 240
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 241
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 244
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/4 v3, 0x1

    new-array v4, v3, [I

    .line 245
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    aput v5, v4, v0

    .line 246
    invoke-virtual {p0, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p0

    aget-object p0, p0, v0

    .line 247
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p0

    .line 249
    sget-object v4, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInLowMemoryState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", pss="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", memSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 251
    iget-boolean v1, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-nez v1, :cond_1

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    mul-int/lit16 v2, v2, 0x400

    if-le p0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 507
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x20

    .line 509
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 510
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 514
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isKoreaPermissionShowed()Z
    .locals 2

    const-string v0, "koreaPermissionShow"

    const/4 v1, 0x0

    .line 307
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocalBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 549
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 556
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 558
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 166
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 168
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 169
    sget-object p0, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "isPackageAvailable - getPackageName.equalsIgnoreCase(packageName) - true"

    invoke-static {p0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 173
    sget-object v1, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to query for Package - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with error "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static isRightVersion()Z
    .locals 8

    const/4 v0, 0x1

    return v0
.end method

.method public static isRtlLayout()Z
    .locals 2

    .line 262
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isRtlLayout(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isUserAgreeToRun()Z
    .locals 4

    .line 302
    invoke-static {}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->instance()Lcom/xiaomi/scanner/camera/CameraServicesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_user_agree_to_run"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/scanner/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static openScanApp(Landroid/app/Activity;IZ)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p0, :cond_0

    .line 489
    invoke-static {p0}, Lcom/xiaomi/scanner/util/AppUtil;->guessCallAppSource(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    .line 490
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_0
    return-void
.end method

.method public static saveKoreaPermissionShowed()V
    .locals 2

    const/4 v0, 0x1

    .line 311
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "koreaPermissionShow"

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static saveUserAgreeToRun(Z)V
    .locals 3

    .line 293
    invoke-static {}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->instance()Lcom/xiaomi/scanner/camera/CameraServicesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_user_agree_to_run"

    invoke-virtual {v0, v1, v2, p0}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAAFeatureShown(Z)V
    .locals 0

    .line 433
    sput-boolean p0, Lcom/xiaomi/scanner/util/AppUtil;->isShoppingMenuShown:Z

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    sget-object v1, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/high16 v2, 0x10000000

    .line 204
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 205
    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p2

    .line 210
    sget-object v5, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    :try_start_1
    new-instance p2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {p2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.LAUNCHER"

    .line 213
    invoke-virtual {p2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-static {p1}, Lcom/xiaomi/scanner/util/AppUtil;->getLauncherClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    move-exception p0

    .line 221
    sget-object p1, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    .line 199
    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p1, "invalid param!"

    invoke-static {p0, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method
