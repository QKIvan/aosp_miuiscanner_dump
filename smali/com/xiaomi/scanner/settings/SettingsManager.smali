.class public Lcom/xiaomi/scanner/settings/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;
    }
.end annotation


# static fields
.field public static final CAMERA_SCOPE_PREFIX:Ljava/lang/String; = "_preferences_camera_"

.field public static final MODULE_SCOPE_PREFIX:Ljava/lang/String; = "_preferences_module_"

.field public static final SCOPE_GLOBAL:Ljava/lang/String; = "default_scope"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCustomPreferences:Landroid/content/SharedPreferences;

.field private final mDefaultPreferences:Landroid/content/SharedPreferences;

.field private final mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mSharedPreferenceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "SettingsManager"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/settings/SettingsManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-direct {v0}, Lcom/xiaomi/scanner/settings/DefaultsStore;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mPackageName:Ljava/lang/String;

    .line 89
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static convert(I)Ljava/lang/String;
    .locals 0

    .line 512
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static convert(J)Ljava/lang/String;
    .locals 0

    .line 523
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static convert(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method public static getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_preferences_camera_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_preferences_module_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    const-string v0, "default_scope"

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object p1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    return-object p1

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->closePreferences(Landroid/content/SharedPreferences;)V

    .line 252
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method private getSharedPreferenceListener(Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 1

    .line 155
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 156
    new-instance p1, Lcom/xiaomi/scanner/settings/SettingsManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/scanner/settings/SettingsManager$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/scanner/settings/SettingsManager;Ljava/lang/ref/WeakReference;)V

    return-object p1
.end method


# virtual methods
.method public addListener(Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 175
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;->getSharedPreferenceListener(Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 185
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 186
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 189
    :cond_1
    sget-object p1, Lcom/xiaomi/scanner/settings/SettingsManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 172
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OnSettingChangedListener cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected closePreferences(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 130
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 379
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/settings/SettingsManager;->getBooleanDefault(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p3, :cond_0

    const-string p3, "1"

    goto :goto_0

    :cond_0
    const-string p3, "0"

    .line 370
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public getBooleanDefault(Ljava/lang/String;)Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/settings/DefaultsStore;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getDefaultPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 394
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {v0, p2}, Lcom/xiaomi/scanner/settings/DefaultsStore;->getPossibleValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, " key="

    if-eqz v0, :cond_2

    .line 395
    array-length v2, v0

    if-eqz v2, :cond_2

    .line 400
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 401
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 402
    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 406
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current value for scope="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in list of possible values"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No possible values for scope="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 346
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/settings/SettingsManager;->getIntegerDefault(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 336
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    .line 337
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getIntegerDefault(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/settings/DefaultsStore;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 3

    .line 354
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 357
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 359
    sget-object v0, Lcom/xiaomi/scanner/settings/SettingsManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLong error, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 328
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 320
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringDefault(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/settings/DefaultsStore;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDefault(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 491
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 483
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$getSharedPreferenceListener$0$com-xiaomi-scanner-settings-SettingsManager(Ljava/lang/ref/WeakReference;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;

    if-eqz p1, :cond_1

    .line 161
    invoke-interface {p1, p0, p3}, Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;->onSettingChanged(Lcom/xiaomi/scanner/settings/SettingsManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 112
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 500
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 501
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public removeAllListeners()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 226
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 228
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 229
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeListener(Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 201
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 206
    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 208
    iget-object p1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    .line 209
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 210
    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 214
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 215
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_1
    return-void

    .line 198
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 424
    invoke-static {p3}, Lcom/xiaomi/scanner/settings/SettingsManager;->convert(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 432
    invoke-static {p3, p4}, Lcom/xiaomi/scanner/settings/SettingsManager;->convert(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 415
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 416
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 441
    invoke-static {p3}, Lcom/xiaomi/scanner/settings/SettingsManager;->convert(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaults(Ljava/lang/String;I[I)V
    .locals 3

    .line 271
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 272
    array-length v0, p3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 273
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 274
    aget v2, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    :cond_0
    iget-object p3, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {p3, p1, p2, v0}, Lcom/xiaomi/scanner/settings/DefaultsStore;->storeDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/scanner/settings/DefaultsStore;->storeDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setDefaults(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "1"

    const-string v1, "0"

    if-eqz p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 286
    :goto_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {v1, p1, p2, v0}, Lcom/xiaomi/scanner/settings/DefaultsStore;->storeDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setToDefault(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 448
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValueByIndex(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {v0, p2}, Lcom/xiaomi/scanner/settings/DefaultsStore;->getPossibleValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 465
    array-length v1, v0

    const-string v2, " key="

    if-eqz v1, :cond_1

    if-ltz p3, :cond_0

    .line 470
    array-length v1, v0

    if-ge p3, v1, :cond_0

    .line 471
    aget-object p3, v0, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 473
    :cond_0
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "For possible values of scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 466
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No possible values for scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
