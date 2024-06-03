.class public Lcom/xiaomi/scanner/setting/SettingXActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SettingXActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;,
        Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;
    }
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "SettingFragment"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "SettingActivity"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/setting/SettingXActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getMiuiVersionCode()I
    .locals 2

    const-string v0, "ro.miui.ui.version.code"

    const/4 v1, 0x0

    .line 66
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static showSetting(Landroid/content/Context;)V
    .locals 2

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/scanner/setting/SettingXActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-static {p1}, Lcom/xiaomi/scanner/app/ScanContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 46
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0021

    .line 47
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingXActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "SettingFragment"

    .line 51
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/setting/SettingXActivity;->fragment:Landroidx/fragment/app/Fragment;

    if-nez v2, :cond_1

    .line 53
    sget-object v2, Lcom/xiaomi/scanner/setting/SettingXActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMiuiVersionCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity;->getMiuiVersionCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/xiaomi/scanner/setting/SettingXActivity;->getMiuiVersionCode()I

    move-result v2

    const/16 v3, 0x9

    if-gt v2, v3, :cond_0

    .line 55
    invoke-static {}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->initialize()Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/setting/SettingXActivity;->fragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;->initialize()Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/setting/SettingXActivity;->fragment:Landroidx/fragment/app/Fragment;

    :goto_0
    const v2, 0x1020002

    .line 59
    iget-object v3, p0, Lcom/xiaomi/scanner/setting/SettingXActivity;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 61
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 62
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method
