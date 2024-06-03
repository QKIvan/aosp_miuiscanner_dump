.class Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow$1;
.super Ljava/lang/Object;
.source "SettingXActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->updateDefaultPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow$1;->this$0:Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 210
    check-cast p2, Ljava/lang/String;

    .line 211
    invoke-static {}, Lcom/xiaomi/scanner/setting/SettingXActivity$SettingPreferenceFragmentLow;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newDefaultValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 212
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "defaultFunctionSelect"

    invoke-static {p2, p1}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
