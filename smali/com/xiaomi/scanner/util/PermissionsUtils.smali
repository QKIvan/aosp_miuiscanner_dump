.class public Lcom/xiaomi/scanner/util/PermissionsUtils;
.super Ljava/lang/Object;
.source "PermissionsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/util/PermissionsUtils$IPermissionsResult;
    }
.end annotation


# static fields
.field private static final FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final TAG:Ljava/lang/String; = "PermissionsUtils"

.field private static permissionsUtils:Lcom/xiaomi/scanner/util/PermissionsUtils;


# instance fields
.field private mPermissionsResult:Lcom/xiaomi/scanner/util/PermissionsUtils$IPermissionsResult;

.field private mRequestCode:I

.field private permissionRationale:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/xiaomi/scanner/util/PermissionsUtils;->mRequestCode:I

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/scanner/util/PermissionsUtils;
    .locals 1

    .line 24
    sget-object v0, Lcom/xiaomi/scanner/util/PermissionsUtils;->permissionsUtils:Lcom/xiaomi/scanner/util/PermissionsUtils;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/xiaomi/scanner/util/PermissionsUtils;

    invoke-direct {v0}, Lcom/xiaomi/scanner/util/PermissionsUtils;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/util/PermissionsUtils;->permissionsUtils:Lcom/xiaomi/scanner/util/PermissionsUtils;

    .line 27
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/util/PermissionsUtils;->permissionsUtils:Lcom/xiaomi/scanner/util/PermissionsUtils;

    return-object v0
.end method


# virtual methods
.method public checkPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/xiaomi/scanner/util/PermissionsUtils$IPermissionsResult;I)V
    .locals 6

    .line 37
    iput-object p3, p0, Lcom/xiaomi/scanner/util/PermissionsUtils;->mPermissionsResult:Lcom/xiaomi/scanner/util/PermissionsUtils$IPermissionsResult;

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 39
    invoke-interface {p3}, Lcom/xiaomi/scanner/util/PermissionsUtils$IPermissionsResult;->onPassAllPermissions()V

    .line 40
    iput-object v1, p0, Lcom/xiaomi/scanner/util/PermissionsUtils;->mPermissionsResult:Lcom/xiaomi/scanner/util/PermissionsUtils$IPermissionsResult;

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 44
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_2

    .line 46
    aget-object v4, p2, v3

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, p2, v3

    const-string v5, "android.permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    aget-object v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 53
    :goto_1
    array-length p3, p2

    if-ge v2, p3, :cond_3

    .line 54
    aget-object p3, p2, v2

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 56
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 57
    invoke-static {p1, p2, p4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 58
    iput p4, p0, Lcom/xiaomi/scanner/util/PermissionsUtils;->mRequestCode:I

    return-void

    .line 61
    :cond_4
    invoke-interface {p3}, Lcom/xiaomi/scanner/util/PermissionsUtils$IPermissionsResult;->onPassAllPermissions()V

    .line 62
    iput-object v1, p0, Lcom/xiaomi/scanner/util/PermissionsUtils;->mPermissionsResult:Lcom/xiaomi/scanner/util/PermissionsUtils$IPermissionsResult;

    return-void
.end method

.method public cutLink()V
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaomi/scanner/util/PermissionsUtils;->permissionsUtils:Lcom/xiaomi/scanner/util/PermissionsUtils;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/xiaomi/scanner/util/PermissionsUtils;->permissionsUtils:Lcom/xiaomi/scanner/util/PermissionsUtils;

    :cond_0
    return-void
.end method

.method public hasPermission(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 78
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 80
    aget-object v2, p2, v1

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 4

    .line 89
    iget v0, p0, Lcom/xiaomi/scanner/util/PermissionsUtils;->mRequestCode:I

    const/4 v1, 0x0

    if-ne v0, p2, :cond_1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 90
    :goto_0
    array-length v2, p4

    if-ge p2, v2, :cond_2

    .line 91
    aget v2, p4, p2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_4

    .line 99
    :goto_1
    array-length p2, p3

    if-ge v1, p2, :cond_3

    .line 100
    aget-object p2, p3, v1

    invoke-static {p1, p2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/xiaomi/scanner/util/PermissionsUtils;->permissionRationale:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    :cond_3
    iget-boolean p1, p0, Lcom/xiaomi/scanner/util/PermissionsUtils;->permissionRationale:Z

    if-nez p1, :cond_6

    const p1, 0x7f1000bd

    .line 103
    invoke-static {p1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    goto :goto_2

    .line 107
    :cond_4
    iget-object p1, p0, Lcom/xiaomi/scanner/util/PermissionsUtils;->mPermissionsResult:Lcom/xiaomi/scanner/util/PermissionsUtils$IPermissionsResult;

    if-nez p1, :cond_5

    return-void

    .line 111
    :cond_5
    invoke-interface {p1}, Lcom/xiaomi/scanner/util/PermissionsUtils$IPermissionsResult;->onPassAllPermissions()V

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/xiaomi/scanner/util/PermissionsUtils;->mPermissionsResult:Lcom/xiaomi/scanner/util/PermissionsUtils$IPermissionsResult;

    :cond_6
    :goto_2
    return-void
.end method
