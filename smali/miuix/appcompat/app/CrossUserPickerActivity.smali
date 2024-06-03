.class public Lmiuix/appcompat/app/CrossUserPickerActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "CrossUserPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/CrossUserPickerActivity$CrossUserContextWrapper;
    }
.end annotation


# static fields
.field private static final EXTRA_PICKED_USER_ID:Ljava/lang/String; = "android.intent.extra.picked_user_id"

.field private static final TAG:Ljava/lang/String; = "CrossUserPickerActivity"

.field public static final USER_ID_INVALID:I = -0x1


# instance fields
.field private volatile mCrossUserContentResolver:Landroid/content/ContentResolver;

.field private volatile mCrossUserContextWrapper:Landroid/content/ContextWrapper;

.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    return-void
.end method

.method private validateCallingPackage()Z
    .locals 2

    .line 118
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/securityspace/CrossUserUtils;->checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private validateCrossUser()I
    .locals 3

    .line 106
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.picked_user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 110
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCallingPackage()Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 4

    .line 48
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmiuix/core/util/PackageHelper;->isMiuiSystem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lmiuix/appcompat/app/CrossUserPickerActivity$CrossUserContextWrapper;

    .line 53
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    move-result v3

    invoke-static {v3}, Lmiuix/core/compat/UserHandleCompat;->createNew(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lmiuix/appcompat/app/CrossUserPickerActivity$CrossUserContextWrapper;-><init>(Lmiuix/appcompat/app/CrossUserPickerActivity;Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object v1, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getApplicationContext: WrapperedApplication"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    return-object v0

    :cond_2
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getApplicationContext: NormalApplication"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .line 30
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmiuix/core/util/PackageHelper;->isMiuiSystem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    .line 32
    iget-object v0, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_0

    .line 35
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    move-result v1

    invoke-static {v1}, Lmiuix/core/compat/UserHandleCompat;->createNew(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p0, v1}, Lmiuix/core/compat/ContextCompat;->getContentResolverForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getContentResolver: CrossUserContentResolver"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    return-object v0

    :cond_2
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getContentResolver: NormalContentResolver"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public isCrossUserPick()Z
    .locals 2

    .line 126
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    :cond_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    :cond_0
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/appcompat/app/AppCompatActivity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
