.class public Lcom/xiaomi/scanner/config/ConfigModel;
.super Ljava/lang/Object;
.source "ConfigModel.java"


# static fields
.field private static final CACHE_NAME:Ljava/lang/String; = "configCache"

.field private static final KEY_CACHE:Ljava/lang/String; = "Config_Scan"

.field private static final KEY_CONFIG_CLOUD_CONTROL:Ljava/lang/String; = "Config_Cloud_Control"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field public static instance:Lcom/xiaomi/scanner/config/ConfigModel;


# instance fields
.field private cloudControlConfigResult:Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;

.field private mAlipayRulePatternList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mAllCanPayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mMiBiPayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mMipayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mWechatRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ConfigModel"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/config/ConfigModel;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 34
    new-instance v0, Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-direct {v0}, Lcom/xiaomi/scanner/config/ConfigModel;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private getDataFromCache(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 222
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "configCache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    .line 223
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 224
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 226
    sget-object p2, Lcom/xiaomi/scanner/config/ConfigModel;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "saveDataToLocal"

    invoke-static {p2, v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static getDataFromCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 200
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "configCache"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 201
    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 204
    sget-object v1, Lcom/xiaomi/scanner/config/ConfigModel;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "getDataFromCache(String key)"

    invoke-static {v1, v2, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static saveDataToLocal(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 211
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "configCache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 214
    invoke-static {}, Lcom/xiaomi/scanner/module/CodeModule;->setTipView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 216
    sget-object p1, Lcom/xiaomi/scanner/config/ConfigModel;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "saveDataToLocal"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static saveDataToLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 190
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "configCache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 194
    sget-object p1, Lcom/xiaomi/scanner/config/ConfigModel;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "saveDataToLocal(String key, String data)"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearAllCacheData()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    .line 63
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAlipayRulePatternList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/config/ConfigModel;->clearData(Ljava/util/List;)V

    .line 64
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mWechatRuleList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/config/ConfigModel;->clearData(Ljava/util/List;)V

    .line 65
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMiBiPayList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/config/ConfigModel;->clearData(Ljava/util/List;)V

    .line 66
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMipayList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/config/ConfigModel;->clearData(Ljava/util/List;)V

    .line 67
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAllCanPayList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/config/ConfigModel;->clearData(Ljava/util/List;)V

    return-void
.end method

.method public getCloudControlConfigResult()Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->cloudControlConfigResult:Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;

    return-object v0
.end method

.method public getPaymentRuleList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanAlipayRules:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v0, v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanAlipayRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAlipayRulePatternList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAlipayRulePatternList:Ljava/util/List;

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v1, v1, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanAlipayRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAlipayRulePatternList:Ljava/util/List;

    return-object v0

    .line 91
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAlipayRulePatternList:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v0, v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanAlipayRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    iget-object v2, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAlipayRulePatternList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAlipayRulePatternList:Ljava/util/List;

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQrScanTip(Lcom/xiaomi/scanner/app/ScanActivity;)Ljava/lang/String;
    .locals 4

    .line 117
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isSimpleChinese()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "zh_tw"

    .line 121
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v1

    const v2, 0x7f100191

    if-eqz v1, :cond_2

    .line 122
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanTipMap:Ljava/util/Map;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v1, v1, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanTipMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getIntentAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.miui.securitycore"

    .line 128
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 131
    :cond_4
    iget-object p1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object p1, p1, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanTipMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public initCacheCloudControlConfigData()V
    .locals 2

    .line 58
    const-class v0, Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;

    const-string v1, "Config_Cloud_Control"

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/scanner/config/ConfigModel;->getDataFromCache(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;

    iput-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->cloudControlConfigResult:Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;

    return-void
.end method

.method public initCacheData()V
    .locals 2

    .line 51
    const-class v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    const-string v1, "Config_Scan"

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/scanner/config/ConfigModel;->getDataFromCache(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iput-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    return-void
.end method

.method public isAllCanPayRule(Ljava/lang/String;)Z
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->allCanPayRules:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v0, v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->allCanPayRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAllCanPayList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAllCanPayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v2, v2, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->allCanPayRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 139
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAllCanPayList:Ljava/util/List;

    .line 140
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v0, v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->allCanPayRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAllCanPayList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAllCanPayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 145
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public isMiBiPayRule(Ljava/lang/String;)Z
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMiBiPayRules:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v0, v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMiBiPayRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMiBiPayList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMiBiPayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v2, v2, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMiBiPayRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 175
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMiBiPayList:Ljava/util/List;

    .line 176
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v0, v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMiBiPayRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMiBiPayList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMiBiPayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 181
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public isMipayRule(Ljava/lang/String;)Z
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMipayRules:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v0, v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMipayRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMipayList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMipayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v2, v2, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMipayRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 157
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMipayList:Ljava/util/List;

    .line 158
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v0, v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMipayRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMipayList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMipayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 163
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public isWechatRule(Ljava/lang/String;)Z
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->wechatJumpRules:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v0, v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->wechatJumpRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mWechatRuleList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mWechatRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v2, v2, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->wechatJumpRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 103
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mWechatRuleList:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v0, v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->wechatJumpRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mWechatRuleList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mWechatRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 109
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public queryScanRuleConfig()V
    .locals 0

    .line 77
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    return-void
.end method
