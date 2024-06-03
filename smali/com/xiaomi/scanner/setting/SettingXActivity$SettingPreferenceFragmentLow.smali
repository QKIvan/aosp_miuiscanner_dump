.class public Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;
.super Lmiuix/preference/PreferenceFragment;
.source "SettingXActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/setting/SettingXActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingPreferenceFragmentLow"
.end annotation


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private defaultListPreference:Lcom/xiaomi/scanner/setting/ValueListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 177
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "SettingPreferenceFragment"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 175
    sget-object v0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method private getDefaultEntries()[Ljava/lang/String;
    .locals 6

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleInfoListByWeight()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 225
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 228
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 229
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 230
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 231
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-interface {v4}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getTitleResourceId()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 233
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1001ad

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    return-object v2
.end method

.method private getDefaultEntryValues()[Ljava/lang/String;
    .locals 6

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleInfoListByWeight()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 243
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 244
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 245
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    const-string v0, "-100"

    .line 248
    aput-object v0, v2, v1

    return-object v2
.end method

.method private initData()V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->updateDefaultPreference()V

    return-void
.end method

.method public static initialize()Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;
    .locals 1

    .line 182
    new-instance v0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;

    invoke-direct {v0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;-><init>()V

    return-object v0
.end method

.method private updateDefaultPreference()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->defaultListPreference:Lcom/xiaomi/scanner/setting/ValueListPreference;

    invoke-direct {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->getDefaultEntries()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/setting/ValueListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->defaultListPreference:Lcom/xiaomi/scanner/setting/ValueListPreference;

    invoke-direct {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->getDefaultEntryValues()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/setting/ValueListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 206
    sget-object v0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localDefaultValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->defaultListPreference:Lcom/xiaomi/scanner/setting/ValueListPreference;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/setting/ValueListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->defaultListPreference:Lcom/xiaomi/scanner/setting/ValueListPreference;

    new-instance v1, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow$1;-><init>(Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/setting/ValueListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "defaultFunctionSelect"

    const/4 v1, -0x1

    .line 217
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->defaultListPreference:Lcom/xiaomi/scanner/setting/ValueListPreference;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/setting/ValueListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->defaultListPreference:Lcom/xiaomi/scanner/setting/ValueListPreference;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/setting/ValueListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->defaultListPreference:Lcom/xiaomi/scanner/setting/ValueListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/setting/ValueListPreference;->setValueIndex(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f130004

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "setting_preference_default"

    .line 192
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/setting/ValueListPreference;

    iput-object p1, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->defaultListPreference:Lcom/xiaomi/scanner/setting/ValueListPreference;

    const-string p1, "function_sort"

    .line 193
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "privacy_policy"

    .line 194
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "about"

    .line 195
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 196
    invoke-direct {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->initData()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 254
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "function_sort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "privacy_policy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "about"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 256
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/scanner/app/FunctionSortActivity;->showFunctionSort(Landroid/content/Context;)V

    goto :goto_1

    .line 259
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->showPrivacy(Landroid/app/Activity;)V

    goto :goto_1

    .line 262
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/scanner/setting/AboutActivity;->showAbout(Landroid/content/Context;)V

    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x585238d -> :sswitch_2
        0x373ef5c9 -> :sswitch_1
        0x7a67e1a5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
