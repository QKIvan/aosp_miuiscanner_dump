.class public final synthetic Lcom/xiaomi/scanner/settings/SettingsManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/scanner/settings/SettingsManager;

.field public final synthetic f$1:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/scanner/settings/SettingsManager;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/scanner/settings/SettingsManager$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/scanner/settings/SettingsManager;

    iput-object p2, p0, Lcom/xiaomi/scanner/settings/SettingsManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/scanner/settings/SettingsManager;

    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaomi/scanner/settings/SettingsManager;->lambda$getSharedPreferenceListener$0$com-xiaomi-scanner-settings-SettingsManager(Ljava/lang/ref/WeakReference;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
