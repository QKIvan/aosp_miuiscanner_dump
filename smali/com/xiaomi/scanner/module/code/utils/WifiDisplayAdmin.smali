.class public Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;
.super Ljava/lang/Object;
.source "WifiDisplayAdmin.java"


# static fields
.field public static final ACTION_MIRACAST_SETTINGS:Ljava/lang/String; = "com.nvidia.settings.MIRACAST_SETTINGS"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "WifiDisplayAdmin"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public static isWifiDisplayOn()Z
    .locals 4

    const/4 v0, 0x0

    .line 100
    :try_start_0
    const-class v1, Landroid/provider/Settings$Global;

    const-string v2, "WIFI_DISPLAY_ON"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/util/ReflectUtil;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaomi/scanner/util/AppUtil;->getGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 103
    sget-object v2, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "isWifiDisplayOn error"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public checkAndConnectDisplay(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v1, :cond_0

    .line 61
    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "null manager"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v2, "getWifiDisplayStatus"

    .line 64
    invoke-static {v1, v2}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getDisplays"

    .line 65
    invoke-static {v1, v2}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_2

    .line 67
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 68
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 74
    sget-object v2, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "check Display error"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :cond_2
    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no display fit this p2pMac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public connectWifiDisplay(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v1, :cond_0

    .line 88
    sget-object p1, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "null manager"

    invoke-static {p1, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v2, "connectWifiDisplay"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 91
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-static {v1, v2, v4, v5}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    .line 93
    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "connectWifiDisplay error"

    invoke-static {v1, v2, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public startWifiDisplayScan()Z
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "null manager"

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "startWifiDisplayScan"

    .line 34
    invoke-static {v0, v2}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public stopWifiDisplayScan()Z
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "null manager"

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "stopWifiDisplayScan"

    .line 50
    invoke-static {v0, v2}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
