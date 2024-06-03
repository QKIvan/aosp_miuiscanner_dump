.class public Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;
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
    name = "SettingPreferenceFragment"
.end annotation


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private defaultListPreference:Lmiuix/preference/DropDownPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "SettingPreferenceFragment"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 70
    sget-object v0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method private getDefaultEntries()[Ljava/lang/String;
    .locals 6

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleInfoListByWeight()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 124
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 125
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 126
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->getResources()Landroid/content/res/Resources;

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

    .line 128
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1001ad

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    return-object v2
.end method

.method private getDefaultEntryValues()[Ljava/lang/String;
    .locals 6

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleInfoListByWeight()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 143
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 144
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 145
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

    .line 147
    aput-object v0, v2, v1

    return-object v2
.end method

.method private initData()V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->updateDefaultPreference()V

    return-void
.end method

.method public static initialize()Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;
    .locals 1

    .line 77
    new-instance v0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;

    invoke-direct {v0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;-><init>()V

    return-object v0
.end method

.method private updateDefaultPreference()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->defaultListPreference:Lmiuix/preference/DropDownPreference;

    invoke-direct {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->getDefaultEntries()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->defaultListPreference:Lmiuix/preference/DropDownPreference;

    invoke-direct {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->getDefaultEntryValues()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 101
    sget-object v0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localDefaultValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->defaultListPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v2}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->defaultListPreference:Lmiuix/preference/DropDownPreference;

    new-instance v1, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment$1;-><init>(Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "defaultFunctionSelect"

    const/4 v1, -0x1

    .line 112
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->defaultListPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->defaultListPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->defaultListPreference:Lmiuix/preference/DropDownPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f130003

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "setting_preference_default"

    .line 87
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->defaultListPreference:Lmiuix/preference/DropDownPreference;

    const-string p1, "function_sort"

    .line 88
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "privacy_policy"

    .line 89
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "about"

    .line 90
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    invoke-direct {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->initData()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 157
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

    .line 159
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/scanner/app/FunctionSortActivity;->showFunctionSort(Landroid/content/Context;)V

    goto :goto_1

    .line 162
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->showPrivacy(Landroid/app/Activity;)V

    goto :goto_1

    .line 165
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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
