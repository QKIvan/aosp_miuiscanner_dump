.class public Lcom/xiaomi/scanner/util/CtaManager;
.super Ljava/lang/Object;
.source "CtaManager.java"


# static fields
.field public static final CTA_AGREE:I = 0x2

.field public static final CTA_NO_AGREE:I = 0x1

.field public static final CTA_REQUEST_CODE:I = 0x22

.field public static final DIALOG_REQUEST_CODE:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestCtaDialog(Landroid/app/Activity;)V
    .locals 5

    .line 20
    invoke-static {}, Lcom/xiaomi/scanner/util/AppJumpUtils;->getPolicyUrl()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 23
    new-instance v3, Landroid/content/Intent;

    const-string v4, "miui.intent.action.PRIVACY_DECLARE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "purpose"

    .line 24
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "style"

    const/4 v4, 0x2

    .line 25
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v2, 0x7f10002a

    .line 26
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "title"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "show_locked"

    const/4 v4, 0x0

    .line 27
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "privacy_policy"

    .line 28
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "mandatory"

    const/4 v2, 0x1

    .line 29
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.miui.securitycenter"

    .line 30
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x22

    .line 32
    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x11

    .line 35
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
